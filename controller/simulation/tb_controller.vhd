library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
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
    signal o_register : std_logic_vector(55 downto 0) := (others=>'0');
    signal i_register : std_logic_vector(7 downto 0) := (others=>'0');
    signal o_analog_p : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal o_miso_en : std_logic;
    
    component top
        port(
            clk        : IN  STD_LOGIC;
            rst        : IN  STD_LOGIC;
            i_sclk     : IN  STD_LOGIC;
            i_ss       : IN  STD_LOGIC;
            i_mosi     : IN  STD_LOGIC;
            o_miso     : OUT STD_LOGIC;
            o_miso_en  : OUT STD_LOGIC;
            o_register : OUT STD_LOGIC_VECTOR(55 DOWNTO 0);
            i_register : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_analog_p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    end component top;
    component tb_signal_gen
    Port ( 
        i_clk        : out std_logic;
        i_ss         : out std_logic;
        i_sclk       : out std_logic;
        i_mosi       : out std_logic;
        rst          : out std_logic; 
        o_miso       : in  std_logic;                             -- reset signal for module
        o_register   : in STD_LOGIC_VECTOR(55 downto 0);
        i_register   : out STD_LOGIC_VECTOR(7 downto 0)
    );
    end component;
begin
    DUT : top
        port map(
            clk           => clk,
            rst         => rst,
            i_sclk        => i_sclk,    
            i_ss          => i_ss,      
            i_mosi        => i_mosi,    
            o_miso        => o_miso,
            o_miso_en => o_miso_en,
            o_register    => o_register,
            i_register  => i_register,
            o_analog_p  => o_analog_p
    );
    SIGNAL_GEN : tb_signal_gen
        port map(
            i_clk        => clk,
            i_ss         => i_ss,
            i_sclk       => i_sclk,
            i_mosi       => i_mosi,
            rst          => rst,                           -- reset signal for module
            o_miso       => o_miso,
            o_register   => o_register,
            i_register   => i_register
    );
    
    
   
    

end rtl;