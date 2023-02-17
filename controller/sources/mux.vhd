-- by Matthias Meyer
-- 16/12/2022


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
    Port ( input : in std_logic_vector(7 downto 0);
           output : out std_logic_vector(255 downto 0));
end mux;

architecture rtl of mux is
begin
    process(input)
        variable bit_position : integer range 0 to 255;
    begin
        bit_position := to_integer(unsigned(input));  -- convert input to integer
        output <= (others => '1');  -- set all bits to 1
        output(bit_position) <= '0';  -- set specified bit to 0, so that one can add pmos to this module
    end process;
end rtl;
