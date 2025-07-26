----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Viranshu Paruparla ( 204484351) 
-- 
-- Create Date: 20.03.2025 21:59:40
-- Design Name: 
-- Module Name: nn_top - Behavioral
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

entity nn_top is
    Port (
        clk            : in  STD_LOGIC;
        reset          : in  STD_LOGIC;
        start          : in  STD_LOGIC;
        image_in       : in  pixel_array_t;
        busy           : out STD_LOGIC;
        result_valid   : out STD_LOGIC;
        result_class   : out integer range 0 to 9 := 0  -- Initialize to 0
    );
end nn_top;

architecture Behavioral of nn_top is
    -- Component declarations
    component mlp_layer is
        Generic (
            INPUT_SIZE     : integer;
            OUTPUT_SIZE    : integer;
            LAYER_ID       : integer;
            APPLY_RELU     : boolean
        );
        Port (
            clk            : in  STD_LOGIC;
            reset          : in  STD_LOGIC;
            enable         : in  STD_LOGIC;
            data_in        : in  feature_map_t;
            busy           : out STD_LOGIC;
            data_out_valid : out STD_LOGIC;
            data_out       : out feature_map_t
        );
    end component;
    
    -- Feature maps 
    signal input_data       : feature_map_t(0 to INPUT_SIZE-1);
    signal hidden1_out      : feature_map_t(0 to HIDDEN1_SIZE-1);
    signal hidden2_out      : feature_map_t(0 to HIDDEN2_SIZE-1);
    signal output_data      : feature_map_t(0 to OUTPUT_SIZE-1);
    
    -- Layer control signals
    signal hidden1_enable   : STD_LOGIC := '0';
    signal hidden1_busy     : STD_LOGIC;
    signal hidden1_valid    : STD_LOGIC;
    signal hidden2_enable   : STD_LOGIC := '0';
    signal hidden2_busy     : STD_LOGIC;
    signal hidden2_valid    : STD_LOGIC;
    signal output_enable    : STD_LOGIC := '0';
    signal output_busy      : STD_LOGIC;
    signal output_valid     : STD_LOGIC;
    
    -- State machine
    type state_type is (IDLE, PROCESS_HIDDEN1, PROCESS_HIDDEN2, PROCESS_OUTPUT, FIND_MAX, DONE);
    signal state : state_type := IDLE;
    
    -- Internal result class signal to ensure proper default value
    signal internal_result_class : integer range 0 to 9 := 0;
    
begin
    -- Convert input image to feature map format
    process(image_in)
    begin
        for i in 0 to INPUT_SIZE-1 loop
            -- Convert 8-bit unsigned to signed
            input_data(i) <= to_fixed_point(image_in(i));
        end loop;
    end process;
    
    -- First hidden layer (784 -> 128)
    hidden1: mlp_layer
        generic map (
            INPUT_SIZE     => INPUT_SIZE,
            OUTPUT_SIZE    => HIDDEN1_SIZE,
            LAYER_ID       => 1,
            APPLY_RELU     => true
        )
        port map (
            clk            => clk,
            reset          => reset,
            enable         => hidden1_enable,
            data_in        => input_data,
            busy           => hidden1_busy, 
            data_out_valid => hidden1_valid,
            data_out       => hidden1_out
        );
    
    -- Second hidden layer (128 -> 64)
    hidden2: mlp_layer
        generic map (
            INPUT_SIZE     => HIDDEN1_SIZE,
            OUTPUT_SIZE    => HIDDEN2_SIZE,
            LAYER_ID       => 2,
            APPLY_RELU     => true
        )
        port map (
            clk            => clk,
            reset          => reset,
            enable         => hidden2_enable,
            data_in        => hidden1_out,
            busy           => hidden2_busy,
            data_out_valid => hidden2_valid,
            data_out       => hidden2_out
        );
    
    -- Output layer (64 -> 10)
    output_layer: mlp_layer
        generic map (
            INPUT_SIZE     => HIDDEN2_SIZE,
            OUTPUT_SIZE    => OUTPUT_SIZE,
            LAYER_ID       => 3,
            APPLY_RELU     => false
        )
        port map (
            clk            => clk,
            reset          => reset,
            enable         => output_enable,
            data_in        => hidden2_out,
            busy           => output_busy,
            data_out_valid => output_valid,
            data_out       => output_data
        );
    
    -- Assign internal result to output
    result_class <= internal_result_class;
    
    -- Main state machine
    process(clk)
        variable max_val : nn_data_t;
        variable max_idx : integer range 0 to 9 := 0;
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= IDLE;
                hidden1_enable <= '0';
                hidden2_enable <= '0';
                output_enable <= '0';
                busy <= '0';
                result_valid <= '0';
                internal_result_class <= 0;  -- Initialize to 0
            else
                case state is
                    when IDLE =>
                        result_valid <= '0';
                        if start = '1' then
                            busy <= '1';
                            hidden1_enable <= '1';
                            state <= PROCESS_HIDDEN1;
                        else
                            busy <= '0';
                        end if;
                    
                    when PROCESS_HIDDEN1 =>
                        hidden1_enable <= '0';
                        if hidden1_valid = '1' then
                            hidden2_enable <= '1';
                            state <= PROCESS_HIDDEN2;
                        end if;
                    
                    when PROCESS_HIDDEN2 =>
                        hidden2_enable <= '0';
                        if hidden2_valid = '1' then
                            output_enable <= '1';
                            state <= PROCESS_OUTPUT;
                        end if;
                    
                    when PROCESS_OUTPUT =>
                        output_enable <= '0';
                        if output_valid = '1' then
                            state <= FIND_MAX;
                        end if;
                    
                    when FIND_MAX =>
                        -- Find max value in output_data (argmax)
                        max_val := output_data(0);
                        max_idx := 0;
                        
                        for i in 1 to 9 loop
                            if output_data(i) > max_val then
                                max_val := output_data(i);
                                max_idx := i;
                            end if;
                        end loop;
                        
                        internal_result_class <= max_idx;
                        state <= DONE;
                    
                    when DONE =>
                        result_valid <= '1';
                        busy <= '0';
                        if start = '0' then
                            state <= IDLE;
                        end if;
                end case;
            end if;
        end if;
    end process;
end Behavioral;