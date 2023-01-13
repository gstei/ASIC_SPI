library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.ctrl_pkg.all;


entity tb_signal_gen is
Port ( 
    i_ss         : out std_logic;
    i_sclk       : out std_logic;
    i_mosi       : out std_logic;
    rst          : out std_logic                              -- reset signal for module
);
end tb_signal_gen;

architecture rtl of tb_signal_gen is
    constant clk_period : time := 10 ns;
begin

    stimuli :process
    begin
        if true then 
            i_ss <= '1';
            i_sclk <= '0';
            i_mosi <= '0';
            wait for 100 ns;
            
            --write 00101000 to register one, this should not work, since it is read only
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_sclk <= '1'; 
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
            
                  
            --clk7
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
    
            
            i_ss <= '1';
            wait for 400 ns;
            i_ss <= '0';
            wait for 200 ns;
            
            i_sclk <= '1';       --clk1
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';       --clk3
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
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
            wait for 1600 ns;
            
            
            
            
            
            
            --write 00100000 to register three, this should work
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            --clk3
            i_sclk <= '1';
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
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            --clk7
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
    
            
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
            
            --clk3
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
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
            wait for 1600 ns;
            
            
            
            
            
            
            
            
            --write 11111111 to register two, this should work
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            --clk3
            i_sclk <= '1';
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
            
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            --clk7
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
    
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_ss <= '1';
            wait for 400 ns;
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            --clk3
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            --clk 7
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
    
            
            i_ss <= '1';
            wait for 1600 ns;
            
            
            
            
            
            
            
            
            
            --write 10101010 to register four, this should work
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            --clk3
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk5
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk7
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
    
            
            i_ss <= '1';
            wait for 400 ns;
            i_ss <= '0';
            wait for 200 ns;
            
            
            
            --clk1
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk3
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk 7
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_ss <= '1';
            wait for 1600 ns;
            
            
            
            
            
            --read register four, this should work
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            --clk3
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk5
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk7
            i_sclk <= '1';
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
            
            
            
            --clk1
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk3
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk 7
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
    
            
            i_ss <= '1';
            wait for 1600 ns;
            
            
            --make a reset
            rst<= '1';
        else
            i_ss <= '1';
            i_sclk <= '0';
            i_mosi <= '0';
            wait for 100 ns;
            
            --write 00010100 to register one, this should not work, since it is read only
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
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
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';       --clk3
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
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
            wait for 1600 ns;
            
            
            
            
            
            
            --write 00000100 to register three, this should work
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            
            --clk3
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
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
            
            --clk7
            i_mosi <= '1';
            i_sclk <= '1';       
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
            
            --clk3
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
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
            wait for 1600 ns;
            
            
            
            
            
            
            
            
            --write 11111111 to register two, this should work
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            --clk3
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
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
            
            --clk7
            i_mosi <= '1';
            i_sclk <= '1';       
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
            
            
            
            --clk1
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            --clk3
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            --clk 7
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
    
            
            i_ss <= '1';
            wait for 1600 ns;
            
            
            
            
            
            
            
            
            
            --write 01010101 to register four, this should work
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            --clk3
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';       --clk5
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk7
            i_sclk <= '1';
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
            
            
            
            --clk1
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk3
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk 7
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_ss <= '1';
            wait for 1600 ns;
            
            
            
            
            
            --read register four, this should work
            i_ss <= '0';
            wait for 200 ns;
            
            --clk1
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            
            --clk3
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_mosi <= '1';
            i_sclk <= '1';       
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            i_mosi <= '0';
            
            i_sclk <= '1';       --clk5
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk7
            i_sclk <= '1';
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
            
            
            
            --clk1
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk3
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            --clk 7
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
            i_sclk <= '1';
            wait for 100 ns;
            i_sclk <= '0';
            wait for 100 ns;
            
    
            
            i_ss <= '1';
            wait for 1600 ns;
            
            
            --make a reset
            rst<= '1';
        end if;
        
        
        --get_value {/tb_signal_gen/DUT/I1/o_data_parallel} -quiet -radix bin
        
        report "Test: OK";
        
        wait;
    end process;

end rtl;