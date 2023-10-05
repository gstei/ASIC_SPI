-- Created by Matthias Meyer
-- 16/12/2022
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.ctrl_pkg.ALL;

ENTITY top IS
  --generic();   --MSB first(0) or LSB(1) first
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    --spi interface signals
    i_sclk : IN STD_LOGIC;
    i_ss : IN STD_LOGIC;
    i_mosi : IN STD_LOGIC;
    o_miso : OUT STD_LOGIC;
    o_miso_en : OUT STD_LOGIC;
    --o_register                  : out std_logic_vector(2**c_AW*c_DW-1 downto 0)
    o_register : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    o_analog_p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END top;
ARCHITECTURE rtl OF top IS
  SIGNAL busy : STD_LOGIC := '0'; --when 1 then data is transmitted over spi
  SIGNAL spi_to_controller : STD_LOGIC_VECTOR(c_DW - 1 DOWNTO 0);
  SIGNAL spi_to_controller_inverted : STD_LOGIC_VECTOR(c_DW - 1 DOWNTO 0);
  SIGNAL controller_to_spi : STD_LOGIC_VECTOR(c_DW - 1 DOWNTO 0);
  SIGNAL o_register_s : STD_LOGIC_VECTOR(63 DOWNTO 0);
  SIGNAL sclk_sync1, sclk_sync2 : STD_LOGIC := '0';
  SIGNAL ss_sync1, ss_sync2     : STD_LOGIC := '0';
  SIGNAL mosi_sync1, mosi_sync2 : STD_LOGIC := '0';

  --declare components
  COMPONENT ctrl IS
    --generic();
    PORT (
      o_busy : IN STD_LOGIC; -- receiving data if '1'
      o_data_to_spi : OUT STD_LOGIC_VECTOR(c_DW - 1 DOWNTO 0); -- data received from spi
      i_data_from_spi : IN STD_LOGIC_VECTOR(c_DW - 1 DOWNTO 0); -- data to send to spi
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      o_register : OUT STD_LOGIC_VECTOR(2 ** c_AW * c_DW - 1 DOWNTO 0)
    );
  END COMPONENT;
  COMPONENT spi_slave IS
    GENERIC (
      N : INTEGER := c_DW; -- number of bit to serialize
      CPOL : STD_LOGIC := '0'); -- clock polarity
    PORT (
      o_busy : OUT STD_LOGIC; -- receiving data if '1'
      i_data_parallel : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0); -- data to sent
      o_data_parallel : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0); -- received data
      i_sclk : IN STD_LOGIC;
      i_ss : IN STD_LOGIC;
      i_mosi : IN STD_LOGIC;
      o_miso : OUT STD_LOGIC;
      o_miso_en : OUT STD_LOGIC);
  END COMPONENT;

  component mux
      port(
          input_s  : in  std_logic_vector(4 downto 0);
          clk      : in  std_logic;
          output_s : out std_logic_vector(31 downto 0)
      );
  end component mux;

BEGIN
  -- First flip-flop stage for Serial Clock (i_sclk)
    process (clk, rst)
    begin
        if rst = '1' then
            sclk_sync1 <= '0';
        elsif rising_edge(clk) then
            sclk_sync1 <= i_sclk;
        end if;
    end process;

    -- Second flip-flop stage for Serial Clock (i_sclk)
    process (clk, rst)
    begin
        if rst = '1' then
            sclk_sync2 <= '0';
        elsif rising_edge(clk) then
            sclk_sync2 <= sclk_sync1;
        end if;
    end process;

    -- First flip-flop stage for Slave Select (i_ss)
    process (clk, rst)
    begin
        if rst = '1' then
            ss_sync1 <= '0';
        elsif rising_edge(clk) then
            ss_sync1 <= i_ss;
        end if;
    end process;

    -- Second flip-flop stage for Slave Select (i_ss)
    process (clk, rst)
    begin
        if rst = '1' then
            ss_sync2 <= '0';
        elsif rising_edge(clk) then
            ss_sync2 <= ss_sync1;
        end if;
    end process;

    -- First flip-flop stage for Master Out Slave In (i_mosi)
    process (clk, rst)
    begin
        if rst = '1' then
            mosi_sync1 <= '0';
        elsif rising_edge(clk) then
            mosi_sync1 <= i_mosi;
        end if;
    end process;

    -- Second flip-flop stage for Master Out Slave In (i_mosi)
    process (clk, rst)
    begin
        if rst = '1' then
            mosi_sync2 <= '0';
        elsif rising_edge(clk) then
            mosi_sync2 <= mosi_sync1;
        end if;
    end process;
  I1 : spi_slave
  GENERIC MAP(
    N => c_DW,
    CPOL => '0'
  )
  PORT MAP(
    o_busy => busy,
    i_data_parallel => controller_to_spi,
    o_data_parallel => spi_to_controller,
    i_sclk => sclk_sync2,
    i_ss => ss_sync2,
    i_mosi => mosi_sync2,
    o_miso => o_miso,
    o_miso_en => o_miso_en);

  spi_to_controller_inverted <= spi_to_controller WHEN c_MSB_LSB = '0' ELSE
    reverse_any_vector(spi_to_controller);
  o_register <= o_register_s;
  I2 : ctrl
  --generic map()
  PORT MAP(
    o_busy => busy,
    o_data_to_spi => controller_to_spi,
    i_data_from_spi => spi_to_controller_inverted,
    clk => clk,
    rst => rst,
    o_register => o_register_s);

  mux_inst : mux 
    port map (
        input_s    => o_register_s(20 downto 16),
        clk        => clk,
        output_s   => o_analog_p
    );


END rtl;