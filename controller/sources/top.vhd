-- Created by Matthias Meyer
-- 16/12/2022


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.ctrl_pkg.all;

entity top is
generic(
    AW                          : integer := 3;     --Number of Registers = 2**AW
    DW                          : integer := 8;     --Data width of a Register
    MSB_LSB                     : std_logic := '0');   --MSB first(0) or LSB(1) first
Port ( 
    clk                         : in std_logic;
    rst                         : in std_logic;
    --spi interface signals
    i_sclk                      : in  std_logic;
    i_ss                        : in  std_logic;
    i_mosi                      : in  std_logic;
    o_miso                      : out std_logic
  );
end top;




architecture rtl of top is
    signal busy             : std_logic := '0';                 --when 1 == data is transmitted over spie
    signal spi_to_controller: std_logic_vector(DW-1 downto 0);
    signal spi_to_controller_inverted: std_logic_vector(DW-1 downto 0);
    signal controller_to_spi: std_logic_vector(DW-1 downto 0);


    component ctrl is
    generic(
        AW                          : integer := 3; 
        DW                          : integer := 8);
    Port ( 
        o_busy                      : in std_logic;  -- receiving data if '1'
        o_data_to_spi               : out  std_logic_vector(DW-1 downto 0);  -- data received from spi
        i_data_from_spi             : in std_logic_vector(DW-1 downto 0);  -- data to send to spi
        clk                         : in std_logic;
        rst                         : in std_logic
      );
    end component;
  
  
    component spi_slave is
    generic(
      N                     : integer := 8;      -- number of bit to serialize
      CPOL                  : std_logic := '0' );  -- clock polarity
     port (
      o_busy                      : out std_logic;  -- receiving data if '1'
      i_data_parallel             : in  std_logic_vector(N-1 downto 0);  -- data to sent
      o_data_parallel             : out std_logic_vector(N-1 downto 0);  -- received data
      i_sclk                      : in  std_logic;
      i_ss                        : in  std_logic;
      i_mosi                      : in  std_logic;
      o_miso                      : out std_logic);
    end component;

begin
    I1: spi_slave 
    generic map(
        N       =>  DW,
        CPOL    =>  '0'
    )
    port map(
	o_busy                      => busy,
	i_data_parallel             => controller_to_spi,
	o_data_parallel             => spi_to_controller,
	i_sclk                      => i_sclk,
	i_ss                        => i_ss,
	i_mosi                      => i_mosi,
	o_miso                      => o_miso);
	
	spi_to_controller_inverted <=  spi_to_controller                       when MSB_LSB='0' else
	                               reverse_any_vector(spi_to_controller);
	
	I2: ctrl
	generic map(
        DW =>   DW,
        AW =>   AW
    )
    port map(
	o_busy                      => busy,
	o_data_to_spi               => controller_to_spi,
	i_data_from_spi             => spi_to_controller_inverted,
	clk                         => clk,
	rst                         => rst);
end rtl;


