-- Created by Matthias Meyer
-- 16/12/2022


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.ctrl_pkg.all;

entity top is
--generic();   --MSB first(0) or LSB(1) first
Port ( 
    clk                         : in std_logic;
    rst                         : in std_logic;
    --spi interface signals
    i_sclk                      : in  std_logic;
    i_ss                        : in  std_logic;
    i_mosi                      : in  std_logic;
    o_miso                      : out std_logic;
    --o_register                  : out std_logic_vector(2**c_AW*c_DW-1 downto 0)
    o_register                  : out std_logic_vector(63 downto 0)
  );
end top;




architecture rtl of top is
    signal busy             : std_logic := '0';                 --when 1 then data is transmitted over spi
    signal spi_to_controller: std_logic_vector(c_DW-1 downto 0);
    signal spi_to_controller_inverted: std_logic_vector(c_DW-1 downto 0);
    signal controller_to_spi: std_logic_vector(c_DW-1 downto 0);

    --declare components
    component ctrl is
    --generic();
    Port ( 
        o_busy                      : in std_logic;  -- receiving data if '1'
        o_data_to_spi               : out  std_logic_vector(c_DW-1 downto 0);  -- data received from spi
        i_data_from_spi             : in std_logic_vector(c_DW-1 downto 0);  -- data to send to spi
        clk                         : in std_logic;
        rst                         : in std_logic;
        o_register                  : out std_logic_vector(2**c_AW*c_DW-1 downto 0)
      );
    end component;
  
  
    component spi_slave is
    generic(
      N                     : integer := c_DW;      -- number of bit to serialize
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
    --instanciate components
    I1: spi_slave 
    generic map(
        N       =>  c_DW,
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
	
	spi_to_controller_inverted <=  spi_to_controller                       when c_MSB_LSB='0' else
	                               reverse_any_vector(spi_to_controller);
	
	I2: ctrl
	--generic map()
    port map(
	o_busy                      => busy,
	o_data_to_spi               => controller_to_spi,
	i_data_from_spi             => spi_to_controller_inverted,
	clk                         => clk,
	rst                         => rst,
    o_register                  => o_register);
end rtl;


