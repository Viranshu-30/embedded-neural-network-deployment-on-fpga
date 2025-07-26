----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Viranshu Paruparla (204484351)
-- 
-- Create Date: 20.03.2025 22:00:20
-- Design Name: 
-- Module Name: fashion_mnist_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use work.nn_types_pkg.all;
 
entity fashion_mnist_top is
    Port (
        -- System signals
        clk          : in  STD_LOGIC;  -- 125 MHz system clock
        reset        : in  STD_LOGIC;
        
        -- UART signals
        uart_rx_pin  : in  STD_LOGIC;
        
        -- LED status output (4 status LEDs)
        led_out      : out STD_LOGIC_VECTOR(3 downto 0) := "0001";  -- Initialize to waiting state
        
        -- Seven Segment Display outputs
        ssd_segments : out STD_LOGIC_VECTOR(6 downto 0);  -- 7 segments (a-g)
        ssd_anode    : out STD_LOGIC                     -- Single digit enable
    );
end fashion_mnist_top;

architecture Behavioral of fashion_mnist_top is
    -- Component declarations
    component uart_receiver is
        Generic (
            CLK_FREQ    : integer := 125000000;  -- 125 MHz
            BAUD_RATE   : integer := 9600        -- 9600 baud
        );
        Port (
            clk         : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            rx          : in  STD_LOGIC;
            rx_data     : out STD_LOGIC_VECTOR(7 downto 0);
            rx_valid    : out STD_LOGIC
        );
    end component;
    
    component nn_top is
        Port (
            clk            : in  STD_LOGIC;  -- 36 MHz clock
            reset          : in  STD_LOGIC;
            start          : in  STD_LOGIC;
            image_in       : in  pixel_array_t;
            busy           : out STD_LOGIC;
            result_valid   : out STD_LOGIC;
            result_class   : out integer range 0 to 9
        );
    end component;
    
    component clock_gen is
        Port (
            -- Clock in ports
            clk_in1        : in  STD_LOGIC;  -- 125 MHz input clock
            -- Clock out ports
            clk_out1       : out STD_LOGIC;  -- 36 MHz output clock
            -- Status and control signals
            reset          : in  STD_LOGIC;
            locked         : out STD_LOGIC
        );
    end component;
    
    component image_bram_controller is
        Port (
            -- System signals
            clk_125mhz    : in  STD_LOGIC;  -- 125 MHz system clock
            clk_36mhz     : in  STD_LOGIC;  -- 36 MHz neural network clock
            reset         : in  STD_LOGIC;
            
            -- UART interface (125 MHz domain)
            pixel_data    : in  STD_LOGIC_VECTOR(7 downto 0);
            write_addr    : in  STD_LOGIC_VECTOR(9 downto 0);  -- 0-783 (10 bits)
            write_enable  : in  STD_LOGIC;
            write_done    : out STD_LOGIC;
            
            -- Neural network interface (36 MHz domain)
            nn_read_ready : in  STD_LOGIC;
            nn_image_data : out pixel_array_t;
            nn_data_valid : out STD_LOGIC
        );
    end component;
    
    -- ILA (Integrated Logic Analyzer) component for debugging
    component uart_ila is
        port (
            clk     : in std_logic;
            probe0  : in std_logic_vector(7 downto 0);  -- rx_data
            probe1  : in std_logic_vector(0 downto 0);  -- rx_valid
            probe2  : in std_logic_vector(9 downto 0);  -- bram_write_addr
            probe3  : in std_logic_vector(0 downto 0);  -- bram_write_en
            probe4  : in std_logic_vector(3 downto 0)   -- state encoding
        );
    end component;
    
    -- Reset synchronizer
    signal reset_sync1     : std_logic := '1';
    signal reset_sync2     : std_logic := '1';
    signal reset_internal  : std_logic := '1';
    
    -- Clock signals
    signal clk_36mhz       : std_logic := '0';
    signal clk_locked      : std_logic := '0';
    
    -- UART and BRAM signals
    signal rx_data         : STD_LOGIC_VECTOR(7 downto 0);
    signal rx_valid        : STD_LOGIC;
    signal rx_valid_d1     : STD_LOGIC := '0';  -- For edge detection
    signal pixel_count     : integer range 0 to 784 := 0;
    signal bram_write_addr : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
    signal bram_write_en   : STD_LOGIC := '0';
    signal bram_write_done : STD_LOGIC := '0';
    
    -- Neural network signals
    signal nn_image_data   : pixel_array_t;
    signal nn_data_valid   : STD_LOGIC;
    signal nn_read_ready   : STD_LOGIC := '0';
    signal start_nn        : STD_LOGIC := '0';
    signal nn_busy         : STD_LOGIC;
    signal nn_result_valid : STD_LOGIC;
    signal nn_result_class : integer range 0 to 9 := 0;
    
    -- State machine
    type state_type is (WAIT_IMAGE, RECEIVE_PIXELS, PROCESS_IMAGE, NN_PROCESSING, RESULT_READY);
    signal state : state_type := WAIT_IMAGE;
    signal state_encoding : std_logic_vector(3 downto 0) := "0001"; -- For ILA debug
    
    -- UART control signals
    signal uart_ready      : STD_LOGIC := '1';  -- Ready to receive next byte
    signal pixel_processed : STD_LOGIC := '1';  -- Current pixel has been processed
    signal wait_counter    : integer range 0 to 15 := 0;
    
    -- Seven segment display signals
    signal display_digit   : integer range 0 to 9 := 0;
    signal ssd_active      : std_logic := '0';  -- Enable display
    
    -- Clock divider for SSD refresh
    signal clk_div_counter : unsigned(24 downto 0) := (others => '0');
    signal ssd_blink       : std_logic := '0';
    
    -- Processing delay timer
    signal process_timer   : integer range 0 to 100 := 0;
    
    -- Debug signals for ILA
    signal rx_valid_vector : std_logic_vector(0 downto 0);
    signal bram_write_en_vector : std_logic_vector(0 downto 0);
    
begin
    -- Reset synchronizer for fast clock domain
    process(clk)
    begin
        if rising_edge(clk) then
            reset_sync1 <= reset;
            reset_sync2 <= reset_sync1;
            reset_internal <= reset_sync2 or not clk_locked; -- Use locked signal for reset
        end if;
    end process;
    
    -- Generate 36 MHz clock
    clock_generator: clock_gen
        port map (
            clk_in1      => clk,
            reset        => reset,
            clk_out1     => clk_36mhz,
            locked       => clk_locked
        );

    -- UART Receiver instantiation (125 MHz domain)
    uart_inst: uart_receiver
        generic map (
            CLK_FREQ    => 125000000,  -- 125MHz
            BAUD_RATE   => 9600        -- 9600 baud
        )
        port map (
            clk         => clk,
            reset       => reset_internal,
            rx          => uart_rx_pin,
            rx_data     => rx_data,
            rx_valid    => rx_valid
        );
    
    -- BRAM Controller instantiation
    bram_controller: image_bram_controller
        port map (
            -- System signals
            clk_125mhz    => clk,
            clk_36mhz     => clk_36mhz,
            reset         => reset_internal,
            
            -- UART interface (125 MHz domain)
            pixel_data    => rx_data,
            write_addr    => bram_write_addr,
            write_enable  => bram_write_en,
            write_done    => bram_write_done,
            
            -- Neural network interface (36 MHz domain)
            nn_read_ready => nn_read_ready,
            nn_image_data => nn_image_data,
            nn_data_valid => nn_data_valid
        );
    
    -- Neural Network instantiation (36 MHz domain)
    nn_inst: nn_top
        port map (
            clk          => clk_36mhz,
            reset        => reset_internal,
            start        => start_nn,
            image_in     => nn_image_data,
            busy         => nn_busy,
            result_valid => nn_result_valid,
            result_class => nn_result_class
        );
    
    -- Convert single-bit signals to vectors for ILA
    rx_valid_vector(0) <= rx_valid;
    bram_write_en_vector(0) <= bram_write_en;
    
    -- ILA for debugging UART and BRAM signals
    ila_inst: uart_ila
        port map (
            clk     => clk,
            probe0  => rx_data,                -- UART received data
            probe1  => rx_valid_vector,        -- UART data valid flag
            probe2  => bram_write_addr,        -- BRAM write address
            probe3  => bram_write_en_vector,   -- BRAM write enable
            probe4  => state_encoding          -- Current state
        );
    
    -- State encoding for ILA
    process(state)
    begin
        case state is
            when WAIT_IMAGE     => state_encoding <= "0001";
            when RECEIVE_PIXELS => state_encoding <= "0010";
            when PROCESS_IMAGE  => state_encoding <= "0100";
            when NN_PROCESSING  => state_encoding <= "1000";
            when RESULT_READY   => state_encoding <= "1111";
        end case;
    end process;
    
    -- Clock divider for blinking and timing
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_internal = '1' then
                clk_div_counter <= (others => '0');
                ssd_blink <= '0';
            else
                clk_div_counter <= clk_div_counter + 1;
                -- Toggle blink bit approximately every half second
                if clk_div_counter = 62500000 then  -- ~0.5s at 125MHz
                    clk_div_counter <= (others => '0');
                    ssd_blink <= not ssd_blink;
                end if;
            end if;
        end if;
    end process;
    
    -- Seven Segment Display decoder
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_internal = '1' then
                ssd_segments <= "0000000";  -- All segments off
                ssd_anode <= '0';           -- Display off
            else
                -- Only show result when in RESULT_READY state
                if state = RESULT_READY then
                    ssd_anode <= '1';  -- Enable display
                    
                    -- Decode the class number (0-9) to 7-segment pattern
                    -- Segment mapping: GFEDCBA (active high)
                    case nn_result_class is
                        when 0 => ssd_segments <= "0111111";  -- 0
                        when 1 => ssd_segments <= "0000110";  -- 1
                        when 2 => ssd_segments <= "1011011";  -- 2
                        when 3 => ssd_segments <= "1001111";  -- 3
                        when 4 => ssd_segments <= "1100110";  -- 4
                        when 5 => ssd_segments <= "1101101";  -- 5
                        when 6 => ssd_segments <= "1111101";  -- 6
                        when 7 => ssd_segments <= "0000111";  -- 7
                        when 8 => ssd_segments <= "1111111";  -- 8
                        when 9 => ssd_segments <= "1101111";  -- 9
                        when others => ssd_segments <= "0000000";  -- Off
                    end case;
                else
                    -- Display is off in other states or blinking during processing
                    if state = NN_PROCESSING and ssd_blink = '1' then
                        ssd_anode <= '1';       -- Blink on
                        ssd_segments <= "1000000";  -- Show dash (-) while processing
                    else
                        ssd_anode <= '0';       -- Off
                        ssd_segments <= "0000000";  -- All segments off
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    -- Edge detection for rx_valid
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_internal = '1' then
                rx_valid_d1 <= '0';
            else
                rx_valid_d1 <= rx_valid;
            end if;
        end if;
    end process;
    
    -- LED status display based on system state
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_internal = '1' then
                led_out <= "0001";  -- Waiting state (LED 0 on)
            else
                case state is
                    when WAIT_IMAGE =>
                        led_out <= "0001";  -- Waiting for image (LED 0 on)
                    when RECEIVE_PIXELS =>
                        led_out <= "0011";  -- Still receiving (LED 0,1 on)
                    when PROCESS_IMAGE =>
                        led_out <= "0011";  -- Processing image data (LED 0,1 on)
                    when NN_PROCESSING =>
                        led_out <= "0111";  -- Neural network busy (LED 0,1,2 on)
                    when RESULT_READY =>
                        led_out <= "1111";  -- Result ready (all LEDs on)
                end case;
            end if;
        end if;
    end process;
    
    -- Main state machine and data flow control (125 MHz domain)
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_internal = '1' then
                state <= WAIT_IMAGE;
                pixel_count <= 0;
                bram_write_addr <= (others => '0');
                bram_write_en <= '0';
                uart_ready <= '1';
                pixel_processed <= '1';
                wait_counter <= 0;
                process_timer <= 0;
                nn_read_ready <= '0';
            else
                -- Default values
                bram_write_en <= '0';
                
                case state is
                    when WAIT_IMAGE =>
                        pixel_count <= 0;
                        bram_write_addr <= (others => '0');
                        uart_ready <= '1';
                        pixel_processed <= '1';
                        process_timer <= 0;
                        nn_read_ready <= '0';
                        
                        -- Wait for first pixel
                        if rx_valid = '1' and rx_valid_d1 = '0' then
                            -- Store first pixel in BRAM
                            bram_write_en <= '1';
                            pixel_count <= 1;
                            uart_ready <= '0';    -- Not ready for next byte yet
                            pixel_processed <= '0'; -- Need to process this pixel
                            state <= RECEIVE_PIXELS;
                        end if;
                    
                    when RECEIVE_PIXELS =>
                        -- Process current pixel with a small delay
                        if pixel_processed = '0' then
                            if wait_counter < 5 then  -- Small delay to pace reception
                                wait_counter <= wait_counter + 1;
                            else
                                wait_counter <= 0;
                                pixel_processed <= '1';  -- Pixel has been processed
                                uart_ready <= '1';       -- Ready for next byte
                                -- Increment BRAM address for next pixel
                                bram_write_addr <= std_logic_vector(unsigned(bram_write_addr) + 1);
                            end if;
                        -- Ready to receive next pixel
                        elsif rx_valid = '1' and rx_valid_d1 = '0' and uart_ready = '1' then
                            -- Write pixel to BRAM
                            bram_write_en <= '1';
                            
                            -- Check if we've received all pixels
                            if pixel_count = 783 then
                                -- Last pixel received, move to processing
                                state <= PROCESS_IMAGE;
                                process_timer <= 0;
                            else
                                -- More pixels to receive
                                pixel_count <= pixel_count + 1;
                                uart_ready <= '0';     -- Wait before accepting next byte
                                pixel_processed <= '0';  -- Need to process this pixel
                            end if;
                        end if;
                    
                    when PROCESS_IMAGE =>
                        -- Wait a few cycles to ensure all BRAM writes are complete
                        if process_timer < 10 then
                            process_timer <= process_timer + 1;
                        else
                            -- Signal neural network to start processing
                            nn_read_ready <= '1';
                            state <= NN_PROCESSING;
                        end if;
                    
                    when NN_PROCESSING =>
                        -- Wait for neural network to complete
                        if nn_result_valid = '1' then
                            nn_read_ready <= '0';
                            state <= RESULT_READY;
                        end if;
                    
                    when RESULT_READY =>
                        -- Stay in this state until reset or new image
                        if rx_valid = '1' and rx_valid_d1 = '0' then
                            -- New image data - restart reception
                            pixel_count <= 0;
                            bram_write_addr <= (others => '0');
                            bram_write_en <= '1';
                            pixel_count <= 1;
                            uart_ready <= '0';
                            pixel_processed <= '0';
                            state <= RECEIVE_PIXELS;
                        end if;
                end case;
            end if;
        end if;
    end process;
    
    -- Neural network control process (36 MHz domain)
    process(clk_36mhz)
    begin
        if rising_edge(clk_36mhz) then
            if reset_internal = '1' then
                start_nn <= '0';
            else
                -- Default values
                start_nn <= '0';
                
                -- Start neural network when data is valid
                if nn_data_valid = '1' then
                    start_nn <= '1';
                end if;
            end if;
        end if;
    end process;
    
end Behavioral;