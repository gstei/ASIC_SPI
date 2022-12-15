library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
generic(
    AW							: integer := 3; 
    DW							: integer := 8);
Port ( 
    o_busy                      : in std_logic;  -- receiving data if '1'
    o_data_to_spi               : out  std_logic_vector(DW-1 downto 0);  -- data received from spi
    i_data_from_spi             : in std_logic_vector(DW-1 downto 0);  -- data to send to spi
    clk 				        : in std_logic;
    we                          : out std_logic;
    addr                        : out std_logic_vector(AW-1 downto 0);
    d_ram_to_ctrl               : in std_logic_vector(DW-1 downto 0);
    d_ctrl_to_ram               : out std_logic_vector(DW-1 downto 0);
    rst                         : in std_logic
  );
end controller;

architecture rtl of controller is
    type state is (S0, S1, S2, S3, S4, S5, S6, S7);
    signal c_st, n_st : state;
    signal r_data_to_spi : std_logic_vector(DW-1 downto 0);
    signal r_address_for_ram : std_logic_vector(2 downto 0);
begin
    -- memorizing process
    p_seq: process (rst, clk)
    begin
        if rst = '1' then
            c_st <= S0;
        elsif rising_edge(clk) then
            c_st <= n_st;
        end if;
    end process;
    -- memoryless process
    p_com: process (o_busy,i_data_from_spi, c_st)
    begin
    -- default assignments
    n_st <= c_st; -- remain in current state
    we <= '0'; -- most frequent value
    o_data_to_spi <= d_ram_to_ctrl;
    addr <= (others => '0');
    d_ctrl_to_ram <= (others => '0');
    
    -- specific assignments
    case c_st is
        when S0 =>
            if o_busy = '1' then n_st <= S1;
            end if;
        when S1 =>
            if o_busy = '0' then
                if i_data_from_spi(0) = '0' then
                    n_st <= S2;
                else
                    n_st <= S5;
                end if;
            end if;
        when S2 =>
            if o_busy = '1' then n_st <= S3;
            end if;
            r_address_for_ram <= i_data_from_spi(3 downto 1);
            addr<=r_address_for_ram;
        when S3 =>
            if o_busy = '0' then n_st <= S4;
            end if;
            addr<=r_address_for_ram;
        when S4 =>
            n_st <= S0;
            addr <= r_address_for_ram;
            we <= '1';
            d_ctrl_to_ram <= i_data_from_spi;
        when S5 =>
            n_st <= S6;
            addr <= i_data_from_spi(3 downto 1);
        when S6 =>
            if o_busy = '1' then n_st <= S7;
            end if;
            addr <= i_data_from_spi(3 downto 1);
            r_data_to_spi <= d_ram_to_ctrl;
            o_data_to_spi <= r_data_to_spi;
        when S7 =>
            if o_busy = '0' then n_st <= S0;
            end if;
            o_data_to_spi <= r_data_to_spi;
        when others =>
            n_st <= S0; -- handle parasitic states
    end case;
    end process;
end rtl;


