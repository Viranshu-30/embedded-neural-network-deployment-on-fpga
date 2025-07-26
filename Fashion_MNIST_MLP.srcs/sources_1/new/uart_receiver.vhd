----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Viranshu Paruparla (204484351)
-- 
-- Create Date: 20.03.2025 22:00:20
-- Design Name: 
-- Module Name: uart_receiver - Behavioral
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

entity uart_receiver is
    Generic (
        CLK_FREQ      : integer := 125000000; -- 125 MHz system clock
        BAUD_RATE     : integer := 9600       -- UART baud rate
    );
    Port (
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        rx            : in  STD_LOGIC;        -- UART RX input
        rx_data       : out STD_LOGIC_VECTOR(7 downto 0); -- Received byte
        rx_valid      : out STD_LOGIC         -- Data valid pulse
    );
end uart_receiver;

architecture Behavioral of uart_receiver is
    -- Calculate constants for UART timing
    constant BIT_PERIOD : integer := CLK_FREQ / BAUD_RATE;
    
    -- UART receiver state machine
    type state_type is (IDLE, START, DATA, STOP);
    signal state : state_type := IDLE;
    
    -- Internal signals
    signal bit_timer : integer range 0 to BIT_PERIOD-1 := 0;
    signal bit_count : integer range 0 to 7 := 0;
    signal shift_reg : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal rx_sync   : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');
begin
    -- Synchronize RX input to prevent metastability
    process(clk)
    begin
        if rising_edge(clk) then
            rx_sync <= rx_sync(0) & rx;
        end if;
    end process;

    -- UART receiver state machine
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= IDLE;
                bit_timer <= 0;
                bit_count <= 0;
                shift_reg <= (others => '0');
                rx_valid <= '0';
                rx_data <= (others => '0');
            else
                -- Default value for rx_valid
                rx_valid <= '0';
                
                case state is
                    when IDLE =>
                        if rx_sync(1) = '0' then  -- Start bit detected
                            state <= START;
                            bit_timer <= BIT_PERIOD/2 - 1;  -- Sample in middle of bit
                        end if;
                        
                    when START =>
                        if bit_timer = 0 then
                            -- Verify start bit is still low
                            if rx_sync(1) = '0' then
                                state <= DATA;
                                bit_timer <= BIT_PERIOD - 1;
                                bit_count <= 0;
                            else
                                -- False start bit, return to IDLE
                                state <= IDLE;
                            end if;
                        else
                            bit_timer <= bit_timer - 1;
                        end if;
                        
                    when DATA =>
                        if bit_timer = 0 then
                            bit_timer <= BIT_PERIOD - 1;
                            shift_reg <= rx_sync(1) & shift_reg(7 downto 1);  -- LSB first
                            
                            if bit_count = 7 then
                                state <= STOP;
                            else
                                bit_count <= bit_count + 1;
                            end if;
                        else
                            bit_timer <= bit_timer - 1;
                        end if;
                        
                    when STOP =>
                        if bit_timer = 0 then
                            -- Check for valid stop bit (high)
                            if rx_sync(1) = '1' then
                                state <= IDLE;
                                rx_data <= shift_reg;
                                rx_valid <= '1';  -- Signal valid data
                            else
                                -- Invalid stop bit, return to IDLE but don't set rx_valid
                                state <= IDLE;
                            end if;
                        else
                            bit_timer <= bit_timer - 1;
                        end if;
                end case;
            end if;
        end if;
    end process;
end Behavioral;