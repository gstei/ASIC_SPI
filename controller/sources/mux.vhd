-- by Matthias Meyer
-- 16/12/2022

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
    Port (
        input_s : in std_logic_vector(4 downto 0);
        clk : in std_logic;
        output_s : out std_logic_vector(31 downto 0)
    );
end mux;

architecture rtl of mux is
    signal prev_input_s: std_logic_vector(4 downto 0);
    signal delay_line : std_logic_vector(7 downto 0) := (others => '0');
begin
    process(clk)
        variable bit_position: integer range 0 to 31;
    begin
        if rising_edge(clk) then
            if input_s /= prev_input_s then
                if delay_line < x"03" then
                    output_s <= (others => '1');
                    delay_line <= std_logic_vector(unsigned(delay_line) + 1);
                else
                    output_s <= (others => '1');
                    bit_position := to_integer(unsigned(input_s));
                    output_s(bit_position) <= '0';
                    prev_input_s <= input_s;
                    
                end if;
            else
                delay_line <= (others => '0');
                output_s <= (others => '1');
                bit_position := to_integer(unsigned(input_s));
                    output_s(bit_position) <= '0';
            end if;
        end if;
    end process;
end rtl; 