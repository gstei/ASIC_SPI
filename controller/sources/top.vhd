library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity top is
generic(
    AW                          : integer := 3; 
    DW                          : integer := 8);
Port ( 
    clk                         : in std_logic;
    rst                         : in std_logic;
    i_sclk                      : in  std_logic;
    i_ss                        : in  std_logic;
    i_mosi                      : in  std_logic;
    o_miso                      : out std_logic
  );
end top;

architecture rtl of top is
    signal busy             : std_logic := '0';
    signal we               : std_logic := '0';
    signal spi_to_controller: std_logic_vector(DW-1 downto 0);
    signal controller_to_spi: std_logic_vector(DW-1 downto 0);
    signal addr             : std_logic_vector(AW-1 downto 0);
    signal d_ram_to_ctrl	: std_logic_vector(DW-1 downto 0);
    signal d_ctrl_to_ram	: std_logic_vector(DW-1 downto 0);
    component sram is
    generic(
        AW : integer := 3; DW : integer := 8);
    port (
        clk : in std_logic;
        we : in std_logic;
        addr : in std_logic_vector(AW-1 downto 0);
        Din : in std_logic_vector(DW-1 downto 0);
        Dout : out std_logic_vector(DW-1 downto 0)
    );
    end component;


    component controller is
    generic(
        AW                          : integer := 3; 
        DW                          : integer := 8);
    Port ( 
        o_busy                      : in std_logic;  -- receiving data if '1'
        o_data_to_spi               : out  std_logic_vector(DW-1 downto 0);  -- data received from spi
        i_data_from_spi             : in std_logic_vector(DW-1 downto 0);  -- data to send to spi
        clk                         : in std_logic;
        we                          : out std_logic;
        addr                        : out std_logic_vector(AW-1 downto 0);
        d_ram_to_ctrl               : in std_logic_vector(DW-1 downto 0);
        d_ctrl_to_ram               : out std_logic_vector(DW-1 downto 0);
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
    port map(
	o_busy                      => busy,
	i_data_parallel             => controller_to_spi,
	o_data_parallel             => spi_to_controller,
	i_sclk                      => i_sclk,
	i_ss                        => i_ss,
	i_mosi                      => i_mosi,
	o_miso                      => o_miso);
    I2: controller 
    port map(
	o_busy                      => busy,
	o_data_to_spi               => controller_to_spi,
	i_data_from_spi             => spi_to_controller,
	clk                         => clk,
	we                          => we,
	addr                        => addr,
	d_ram_to_ctrl               => d_ram_to_ctrl,
	d_ctrl_to_ram               => d_ctrl_to_ram,
	rst                         => rst);
	I3: sram 
    port map(
    clk                         => clk,
	we   						=> we,
	addr 						=> addr,
	Din  						=> d_ctrl_to_ram,
	Dout 						=> d_ram_to_ctrl);
end rtl;


