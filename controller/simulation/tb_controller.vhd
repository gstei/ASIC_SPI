library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.ctrl_pkg.all;


entity tb_controller is
--  Port ( );
end tb_controller;

architecture rtl of tb_controller is
    signal rst    : std_logic := '0';
    signal clk    : std_logic := '0';
    signal i_sclk : std_logic := '0';
    signal i_ss   : std_logic := '1';
    signal i_mosi : std_logic := '0';
    signal o_miso : std_logic := '0';
    signal o_register : std_logic_vector(2**c_AW*c_DW-1 downto 0) := (others=>'0');
    signal o_analog_p : STD_LOGIC_VECTOR(31 DOWNTO 0);
    constant clk_period : time := 10 ns;
    component top
      Port ( 
        clk                         : in std_logic;
        rst                         : in std_logic;
        i_sclk                      : in  std_logic;
        i_ss                        : in  std_logic;
        i_mosi                      : in  std_logic;
        o_miso                      : out std_logic;
        o_register                  : out std_logic_vector(2**c_AW*c_DW-1 downto 0);
        o_analog_p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
      );
    end component;
    component tb_signal_gen
    Port ( 
        i_ss         : out std_logic;
        i_sclk       : out std_logic;
        i_mosi       : out std_logic;
        rst          : out std_logic                              -- reset signal for module
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
            o_miso		=> o_miso,
            o_register	=> o_register,
            o_analog_p  => o_analog_p
    );
    SIGNAL_GEN : tb_signal_gen
        port map(
            i_ss         => i_ss,
            i_sclk       => i_sclk,
            i_mosi       => i_mosi,
            rst          => rst                           -- reset signal for module
    );
    
    -- Clock process definitions( clock with 50% duty cycle is generated here.
   clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;  --for 0.5 ns signal is '0'.
        clk <= '1';
        wait for clk_period/2;  --for next 0.5 ns signal is '1'.
   end process;
   
    

end rtl;