library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library controller_pkg;
use controller_pkg.all;


entity tb_controller is
--  Port ( );
end tb_controller;

architecture Behavioral of tb_controller is
    signal led : std_logic_vector (3 downto 0);
    signal btn : std_logic_vector (3 downto 0);
    component controller
      Port ( 
        led : out std_logic_vector (3 downto 0);
        btn : in std_logic_vector (3 downto 0)
      );
    end component;
begin
    DUT : controller
        port map(
            led => led,
            btn => btn
    );
    stimuli :process
    begin
        btn(0) <= '0';
        btn(1) <= '1';
        wait for 5 us;
        btn(0) <= '0';
        btn(1) <= '0';
        wait for 5 us;
        btn(0) <= '1';
        btn(1) <= '0';
        wait;
    end process;

end Behavioral;