library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library controller_pkg;
use controller_pkg.all;


entity tb_controller is
--  Port ( );
end tb_controller;

architecture Behavioral of tb_controller is
    signal rst    : std_logic := '0';
    signal clk    : std_logic := '0';
    signal i_sclk : std_logic := '0';
    signal i_ss   : std_logic := '1';
    signal i_mosi : std_logic := '0';
    signal o_miso : std_logic := '0';
    constant clk_period : time := 10 ns;
    component top
      Port ( 
        clk                         : in std_logic;
        rst                         : in std_logic;
        i_sclk                      : in  std_logic;
        i_ss                        : in  std_logic;
        i_mosi                      : in  std_logic;
        o_miso                      : out std_logic
      );
    end component;
begin
    DUT : top
        port map(
            clk   		=> clk,
            rst         => rst,
            i_sclk		=> i_sclk,	
            i_ss  		=> i_ss,  	
            i_mosi		=> i_mosi,	
            o_miso		=> o_miso	
    );
    
    -- Clock process definitions( clock with 50% duty cycle is generated here.
   clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;  --for 0.5 ns signal is '0'.
        clk <= '1';
        wait for clk_period/2;  --for next 0.5 ns signal is '1'.
   end process;
   
    stimuli :process
    begin
        i_ss <= '1';
        i_sclk <= '0';
        i_mosi <= '0';
        o_miso <= '0';
        wait for 100 ns;
        
        --write zero to register zero
        i_ss <= '0';
        wait for 200 ns;
        
        i_sclk <= '1';       --clk1
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk3
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk5
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk7
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        

        
        i_ss <= '1';
        wait for 400 ns;
        i_ss <= '0';
        wait for 200 ns;
        
        i_sclk <= '1';       --clk1
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk3
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk5
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk7
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        

        
        i_ss <= '1';
        wait for 400 ns;
        
        
        
        
        
        
        --write one to register one
        i_ss <= '0';
        
        wait for 200 ns;
        
        i_sclk <= '1';       --clk1
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        
        
        i_sclk <= '1';       --clk3
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk5
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_mosi <= '1';
        i_sclk <= '1';       --clk7
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        i_mosi <= '0';
        
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        

        
        i_ss <= '1';
        wait for 400 ns;
        i_ss <= '0';
        wait for 200 ns;
        
        i_sclk <= '1';       --clk1
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk3
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk5
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';       --clk7
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        
        i_sclk <= '1';
        wait for 100 ns;
        i_sclk <= '0';
        wait for 100 ns;
        

        
        i_ss <= '1';
        wait for 400 ns;
        
        
        
        
        
        
        wait;
    end process;

end Behavioral;