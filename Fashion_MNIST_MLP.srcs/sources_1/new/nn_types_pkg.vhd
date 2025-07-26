library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package nn_types_pkg is
    -- Fixed-point precision definitions
    constant FP_WIDTH : integer := 8;  -- 8-bit fixed point
    
    -- Image dimensions
    constant IMG_WIDTH  : integer := 28;
    constant IMG_HEIGHT : integer := 28;
    
    -- Network architecture constants
    constant INPUT_SIZE    : integer := 784;  -- 28x28 pixels flattened
    constant HIDDEN1_SIZE  : integer := 128;
    constant HIDDEN2_SIZE  : integer := 64;
    constant OUTPUT_SIZE   : integer := 10;   -- 10 classes
    
    -- Types for neural network layers
    subtype nn_data_t is signed(FP_WIDTH-1 downto 0);
    type pixel_array_t is array (0 to IMG_WIDTH*IMG_HEIGHT-1) of unsigned(7 downto 0);
    
    -- Types for intermediate feature maps
    type feature_map_t is array (natural range <>) of nn_data_t;
    
    -- Function to convert from unsigned pixel to fixed-point
    function to_fixed_point(pixel: unsigned(7 downto 0)) return nn_data_t;
    
    -- Function to find maximum value index
    function max_index(values: feature_map_t(0 to 9)) return integer;
end package nn_types_pkg;

package body nn_types_pkg is
    -- Convert 8-bit unsigned pixel to fixed-point representation
    -- Modified for improved handling of pixel values to avoid negative interpretation
    function to_fixed_point(pixel: unsigned(7 downto 0)) return nn_data_t is
    begin
        -- For pixel values below 128, direct conversion is safe
        if pixel < 128 then
            return signed(resize(pixel, FP_WIDTH));
        else
            -- For values >= 128, force MSB to 0 to ensure positive interpretation
            -- by preserving the 7 lower bits and setting the MSB to 0
            return signed('0' & pixel(6 downto 0));
        end if;
    end function;
    
    -- Find index of maximum value in an array
    function max_index(values: feature_map_t(0 to 9)) return integer is
        variable max_val : nn_data_t;
        variable max_idx : integer range 0 to 9;
    begin
        max_val := values(0);
        max_idx := 0;
        
        for i in 1 to 9 loop
            if values(i) > max_val then
                max_val := values(i);
                max_idx := i;
            end if;
        end loop;
        
        return max_idx;
    end function;
end package body nn_types_pkg;