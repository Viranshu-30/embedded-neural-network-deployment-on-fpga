----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Viranshu Paruparla (204484351)
-- 
-- Create Date: 27.04.2025 14:25:19
-- Design Name: 
-- Module Name: image_bram_controller - Behavioral
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

entity image_bram_controller is
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
end image_bram_controller;

architecture Behavioral of image_bram_controller is
    -- Component declaration for BRAM IP
    component image_bram_ip is
        port (
            -- Port A - Write port (UART, 125 MHz)
            clka  : in  STD_LOGIC;
            ena   : in  STD_LOGIC;
            wea   : in  STD_LOGIC_VECTOR(0 downto 0);
            addra : in  STD_LOGIC_VECTOR(9 downto 0);
            dina  : in  STD_LOGIC_VECTOR(7 downto 0);
            douta : out STD_LOGIC_VECTOR(7 downto 0);
            
            -- Port B - Read port (Neural Network, 36 MHz)
            clkb  : in  STD_LOGIC;
            enb   : in  STD_LOGIC;
            web   : in  STD_LOGIC_VECTOR(0 downto 0);
            addrb : in  STD_LOGIC_VECTOR(9 downto 0);
            dinb  : in  STD_LOGIC_VECTOR(7 downto 0);
            doutb : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    -- Signals for BRAM port A (125 MHz write)
    signal bram_write_enable : STD_LOGIC_VECTOR(0 downto 0) := "0";
    
    -- Signals for BRAM port B (36 MHz read)
    signal bram_read_addr    : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
    signal bram_read_data    : STD_LOGIC_VECTOR(7 downto 0);
    signal bram_read_enable  : STD_LOGIC := '0';
    
    -- Simple read state machine
    type read_state_type is (IDLE, READING, DONE, VALID);
    signal read_state : read_state_type := IDLE;
    
    -- Synchronization signals
    signal read_ready_sync1  : STD_LOGIC := '0';
    signal read_ready_sync2  : STD_LOGIC := '0';
    
    -- Internal signals
    signal pixel_counter     : integer range 0 to 784 := 0;
    signal image_data_buffer : pixel_array_t := (others => (others => '0'));
    signal read_complete     : STD_LOGIC := '0';
    signal data_valid_internal : STD_LOGIC := '0';
    
    -- Simple write completion flag
    signal all_pixels_received : STD_LOGIC := '0';
    
begin
    -- Instantiate BRAM IP
    image_bram : image_bram_ip
        port map (
            -- Port A - Write port (125 MHz)
            clka  => clk_125mhz,
            ena   => '1',
            wea   => bram_write_enable,
            addra => write_addr,
            dina  => pixel_data,
            douta => open,  -- Not used
            
            -- Port B - Read port (36 MHz)
            clkb  => clk_36mhz,
            enb   => bram_read_enable,
            web   => "0",
            addrb => bram_read_addr,
            dinb  => (others => '0'),
            doutb => bram_read_data
        );
    
    -- Write process - pass through from top-level
    process(clk_125mhz)
    begin
        if rising_edge(clk_125mhz) then
            if reset = '1' then
                bram_write_enable <= "0";
                all_pixels_received <= '0';
                write_done <= '0';
            else
                -- Enable BRAM write when write_enable is active
                bram_write_enable <= (0 => write_enable);
                
                -- Check if we've received the full image (last pixel at address 783)
                if write_enable = '1' and unsigned(write_addr) = 783 then
                    all_pixels_received <= '1';
                    write_done <= '1';
                elsif write_enable = '1' and unsigned(write_addr) = 0 then
                    -- Reset when starting a new image
                    all_pixels_received <= '0';
                    write_done <= '0';
                end if;
            end if;
        end if;
    end process;
    
    -- Synchronize read_ready signal from 125MHz to 36MHz domain
    process(clk_36mhz)
    begin
        if rising_edge(clk_36mhz) then
            if reset = '1' then
                read_ready_sync1 <= '0';
                read_ready_sync2 <= '0';
            else
                read_ready_sync1 <= nn_read_ready;
                read_ready_sync2 <= read_ready_sync1;
            end if;
        end if;
    end process;
    
    -- Read state machine - simplified for clarity
    process(clk_36mhz)
    begin
        if rising_edge(clk_36mhz) then
            if reset = '1' then
                read_state <= IDLE;
                bram_read_enable <= '0';
                bram_read_addr <= (others => '0');
                pixel_counter <= 0;
                read_complete <= '0';
                data_valid_internal <= '0';
                
                -- Clear image buffer
                for i in 0 to 783 loop
                    image_data_buffer(i) <= (others => '0');
                end loop;
                
            else
                -- Default values
                data_valid_internal <= '0';
                
                case read_state is
                    when IDLE =>
                        -- Init for new read
                        bram_read_addr <= (others => '0');
                        pixel_counter <= 0;
                        
                        -- Start reading when neural network signals ready
                        if read_ready_sync2 = '1' and read_complete = '0' then
                            bram_read_enable <= '1';
                            read_state <= READING;
                        end if;
                    
                    when READING =>
                        -- Store BRAM data into buffer
                        image_data_buffer(pixel_counter) <= unsigned(bram_read_data);
                        
                        -- Go to next pixel
                        if pixel_counter < 783 then
                            pixel_counter <= pixel_counter + 1;
                            bram_read_addr <= std_logic_vector(unsigned(bram_read_addr) + 1);
                        else
                            -- All pixels read
                            bram_read_enable <= '0';
                            read_state <= DONE;
                        end if;
                    
                    when DONE =>
                        -- Set completion flag
                        read_complete <= '1';
                        -- Transition to VALID state
                        read_state <= VALID;
                    
                    when VALID =>
                        -- Assert data valid signal for one clock cycle
                        data_valid_internal <= '1';
                        
                        -- Reset state machine when neural network is done
                        if read_ready_sync2 = '0' then
                            read_state <= IDLE;
                            read_complete <= '0';
                        end if;
                end case;
            end if;
        end if;
    end process;
    
    -- Connect outputs
    nn_image_data <= image_data_buffer;
    nn_data_valid <= data_valid_internal;
    
end Behavioral;