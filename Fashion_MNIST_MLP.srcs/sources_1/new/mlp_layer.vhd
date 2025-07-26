----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Viranshu Paruparla (204484351)
-- 
-- Create Date: 20.03.2025 21:59:05
-- Design Name: 
-- Module Name: mlp_layer - Behavioral
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

entity mlp_layer is
    Generic (
        INPUT_SIZE     : integer := 784;  -- Default for input layer
        OUTPUT_SIZE    : integer := 128;  -- Default for first hidden layer
        LAYER_ID       : integer := 1;    -- Used to select weights
        APPLY_RELU     : boolean := true  -- Apply ReLU activation?
    );
    Port (
        clk            : in  STD_LOGIC;
        reset          : in  STD_LOGIC;
        enable         : in  STD_LOGIC;
        data_in        : in  feature_map_t(0 to INPUT_SIZE-1);
        busy           : out STD_LOGIC;
        data_out_valid : out STD_LOGIC;
        data_out       : out feature_map_t(0 to OUTPUT_SIZE-1)
    );
end mlp_layer;

architecture Behavioral of mlp_layer is
    -- State machine definition
    type state_type is (IDLE, INIT_COMPUTE, FETCH_WEIGHT, COMPUTE, BIAS_ADD, RELU, NEXT_NODE, DONE);
    signal state : state_type := IDLE;
    
    -- Internal signals
    signal node_counter : integer range 0 to OUTPUT_SIZE-1 := 0;
    signal input_counter : integer range 0 to INPUT_SIZE-1 := 0;
    signal acc : signed(2*FP_WIDTH-1 downto 0) := (others => '0');
    
    -- Layer 1 BRAM components
    component layer1_weights_bram is
        port (
            clka : in STD_LOGIC;
            ena : in STD_LOGIC;
            addra : in STD_LOGIC_VECTOR(16 downto 0); -- log2(784*128) = 17 bits
            douta : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    component layer1_biases_bram is
        port (
            clka : in STD_LOGIC;
            ena : in STD_LOGIC;
            addra : in STD_LOGIC_VECTOR(6 downto 0); -- log2(128) = 7 bits
            douta : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    -- Layer 2 BRAM components
    component layer2_weights_bram is
        port (
            clka : in STD_LOGIC;
            ena : in STD_LOGIC;
            addra : in STD_LOGIC_VECTOR(12 downto 0); -- log2(128*64) = 13 bits
            douta : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    component layer2_biases_bram is
        port (
            clka : in STD_LOGIC;
            ena : in STD_LOGIC;
            addra : in STD_LOGIC_VECTOR(5 downto 0); -- log2(64) = 6 bits
            douta : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    -- Layer 3 BRAM components
    component layer3_weights_bram is
        port (
            clka : in STD_LOGIC;
            ena : in STD_LOGIC;
            addra : in STD_LOGIC_VECTOR(9 downto 0); -- log2(64*10) = 10 bits
            douta : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    component layer3_biases_bram is
        port (
            clka : in STD_LOGIC;
            ena : in STD_LOGIC;
            addra : in STD_LOGIC_VECTOR(3 downto 0); -- log2(10) = 4 bits
            douta : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    -- BRAM interface signals
    signal l1w_addr : std_logic_vector(16 downto 0);
    signal l1w_en : std_logic := '0';
    signal l1w_data : std_logic_vector(7 downto 0);
    
    signal l1b_addr : std_logic_vector(6 downto 0);
    signal l1b_en : std_logic := '0';
    signal l1b_data : std_logic_vector(7 downto 0);
    
    signal l2w_addr : std_logic_vector(12 downto 0);
    signal l2w_en : std_logic := '0';
    signal l2w_data : std_logic_vector(7 downto 0);
    
    signal l2b_addr : std_logic_vector(5 downto 0);
    signal l2b_en : std_logic := '0';
    signal l2b_data : std_logic_vector(7 downto 0);
    
    signal l3w_addr : std_logic_vector(9 downto 0);
    signal l3w_en : std_logic := '0';
    signal l3w_data : std_logic_vector(7 downto 0);
    
    signal l3b_addr : std_logic_vector(3 downto 0);
    signal l3b_en : std_logic := '0';
    signal l3b_data : std_logic_vector(7 downto 0);
    
    -- Current weight and bias data
    signal weight_data : std_logic_vector(7 downto 0);
    signal bias_data : std_logic_vector(7 downto 0);
    
begin
    -- Instantiate the appropriate BRAMs based on LAYER_ID
    GEN_LAYER1: if LAYER_ID = 1 generate
        -- Layer 1 weight BRAM
        l1_weights: layer1_weights_bram
        port map (
            clka => clk,
            ena => l1w_en,
            addra => l1w_addr,
            douta => l1w_data
        );
        
        -- Layer 1 bias BRAM
        l1_biases: layer1_biases_bram
        port map (
            clka => clk,
            ena => l1b_en,
            addra => l1b_addr,
            douta => l1b_data
        );
    end generate;
    
    GEN_LAYER2: if LAYER_ID = 2 generate
        -- Layer 2 weight BRAM
        l2_weights: layer2_weights_bram
        port map (
            clka => clk,
            ena => l2w_en,
            addra => l2w_addr,
            douta => l2w_data
        );
        
        -- Layer 2 bias BRAM
        l2_biases: layer2_biases_bram
        port map (
            clka => clk,
            ena => l2b_en,
            addra => l2b_addr,
            douta => l2b_data
        );
    end generate;
    
    GEN_LAYER3: if LAYER_ID = 3 generate
        -- Layer 3 weight BRAM
        l3_weights: layer3_weights_bram
        port map (
            clka => clk,
            ena => l3w_en,
            addra => l3w_addr,
            douta => l3w_data
        );
        
        -- Layer 3 bias BRAM
        l3_biases: layer3_biases_bram
        port map (
            clka => clk,
            ena => l3b_en,
            addra => l3b_addr,
            douta => l3b_data
        );
    end generate;
    
    -- Select the appropriate data based on LAYER_ID
    weight_data <= l1w_data when LAYER_ID = 1 else
                   l2w_data when LAYER_ID = 2 else
                   l3w_data;
                   
    bias_data <= l1b_data when LAYER_ID = 1 else
                 l2b_data when LAYER_ID = 2 else
                 l3b_data;
    
    -- Main process for fully connected layer computation
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= IDLE;
                node_counter <= 0;
                input_counter <= 0;
                busy <= '0';
                data_out_valid <= '0';
                acc <= (others => '0');
                -- Reset all BRAM enables
                l1w_en <= '0';
                l1b_en <= '0';
                l2w_en <= '0';
                l2b_en <= '0';
                l3w_en <= '0';
                l3b_en <= '0';
            else
                -- Default values
                data_out_valid <= '0';
                
                case state is
                    when IDLE =>
                        if enable = '1' then
                            state <= INIT_COMPUTE;
                            busy <= '1';
                            node_counter <= 0;
                        else
                            busy <= '0';
                        end if;
                        
                    when INIT_COMPUTE =>
                        -- Initialize accumulator for new node
                        acc <= (others => '0');
                        input_counter <= 0;
                        state <= FETCH_WEIGHT;
                        
                    when FETCH_WEIGHT =>
                        -- Calculate weight address and enable the appropriate BRAM
                        -- Formula: weight_addr = input_counter * OUTPUT_SIZE + node_counter
                        
                        if LAYER_ID = 1 then
                            l1w_addr <= std_logic_vector(to_unsigned(input_counter * OUTPUT_SIZE + node_counter, 17));
                            l1w_en <= '1';
                        elsif LAYER_ID = 2 then
                            l2w_addr <= std_logic_vector(to_unsigned(input_counter * OUTPUT_SIZE + node_counter, 13));
                            l2w_en <= '1';
                        else -- LAYER_ID = 3
                            l3w_addr <= std_logic_vector(to_unsigned(input_counter * OUTPUT_SIZE + node_counter, 10));
                            l3w_en <= '1';
                        end if;
                        
                        state <= COMPUTE;
                        
                    when COMPUTE =>
                        -- Disable weight BRAMs
                        l1w_en <= '0';
                        l2w_en <= '0';
                        l3w_en <= '0';
                        
                        -- Multiply and accumulate one input with its weight
                        acc <= acc + (data_in(input_counter) * signed(weight_data));
                        
                        -- Move to next input or fetch bias when done
                        if input_counter = INPUT_SIZE-1 then
                            -- All inputs processed, fetch bias
                            if LAYER_ID = 1 then
                                l1b_addr <= std_logic_vector(to_unsigned(node_counter, 7));
                                l1b_en <= '1';
                            elsif LAYER_ID = 2 then
                                l2b_addr <= std_logic_vector(to_unsigned(node_counter, 6));
                                l2b_en <= '1';
                            else -- LAYER_ID = 3
                                l3b_addr <= std_logic_vector(to_unsigned(node_counter, 4));
                                l3b_en <= '1';
                            end if;
                            
                            state <= BIAS_ADD;
                        else
                            -- More inputs to process
                            input_counter <= input_counter + 1;
                            state <= FETCH_WEIGHT;
                        end if;
                        
                    when BIAS_ADD =>
                        -- Disable bias BRAMs
                        l1b_en <= '0';
                        l2b_en <= '0';
                        l3b_en <= '0';
                        
                        -- Add bias to accumulator
                        acc <= acc + (signed(bias_data) * to_signed(2**(FP_WIDTH-1), FP_WIDTH));
                        state <= RELU;
                        
                    when RELU =>
                        -- Apply ReLU if needed and store result
                        if APPLY_RELU and acc < 0 then
                            data_out(node_counter) <= (others => '0');  -- ReLU
                        else
                            data_out(node_counter) <= acc(2*FP_WIDTH-1 downto FP_WIDTH);
                        end if;
                        
                        state <= NEXT_NODE;
                        
                    when NEXT_NODE =>
                        -- Move to next output node or finish
                        if node_counter = OUTPUT_SIZE-1 then
                            state <= DONE;
                        else
                            node_counter <= node_counter + 1;
                            state <= INIT_COMPUTE;
                        end if;
                        
                    when DONE =>
                        data_out_valid <= '1';
                        busy <= '0';
                        state <= IDLE;
                        
                end case;
            end if;
        end if;
    end process;
end Behavioral;