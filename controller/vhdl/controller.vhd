library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity controller is
  Port ( 
    led : out std_logic_vector (3 downto 0);
    btn : in std_logic_vector (3 downto 0)
  );
end controller;

architecture rtl of controller is

begin
    led(0) <= btn(0);
    led(1) <= '0';
    led(2) <= '0';
    led(3) <= '0';

end rtl;