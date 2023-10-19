-- Created by Matthias Meyer
-- 16/12/2022

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.ctrl_pkg.all;

entity ctrl is
--generic();            -- Data width of a register
Port ( 
    o_busy                      : in std_logic;                             -- spi is receiving data if '1' ==> i_data_from_spi is not stable
    --o_data_to_spi               : out  std_logic_vector(c_DW-1 downto 0);     -- register which is sent to spi
    --i_data_from_spi             : in std_logic_vector(c_DW-1 downto 0);       -- register received from spi
    o_data_to_spi               : out  std_logic_vector(7 downto 0);     -- register which is sent to spi
    i_data_from_spi             : in std_logic_vector(7 downto 0);       -- register received from spi
    clk                         : in std_logic;                             -- clk for module
    rst                         : in std_logic;                              -- reset signal for module
    --o_register                  : out std_logic_vector(2**c_AW*c_DW-1 downto 0)      --output register
    o_register                  : out std_logic_vector(55 downto 0);      --output register
    i_register                  : in std_logic_vector(7 downto 0)      --input register
  );
end ctrl;

architecture rtl of ctrl is
    type state is (S0, S1, S2, S3);
    signal c_st, n_st : state;
    --define ctrl_reg
    signal ctrl_reg_ps : t_register;
    signal ctrl_reg_ns : t_register;
    signal slv56 : std_logic_vector(55 downto 0);
begin
    --
    slv56 <=  ctrl_reg_ps(7)(7 downto 0) & ctrl_reg_ps(6)(7 downto 0) & ctrl_reg_ps(5)(7 downto 0) & ctrl_reg_ps(4)(7 downto 0) & ctrl_reg_ps(3)(7 downto 0) & ctrl_reg_ps(2)(7 downto 0) & ctrl_reg_ps(0)(7 downto 0);
    o_register <= slv56;
    
    -- memorizing process
    p_seq: process (rst, clk)
    begin
        if rst = '1' then
            c_st <= S0;
            ctrl_reg_ps <= (others=> (others=>'0'));
            --ctrl_reg_ns <= (others=> (others=>'0'));
--            ctrl_reg <= (others=> (others=>'0'));
        elsif rising_edge(clk) then
            c_st <= n_st;
            ctrl_reg_ps <= ctrl_reg_ns;
        end if;
    end process;
    -- memoryless process
    p_com: process (o_busy,i_data_from_spi, ctrl_reg_ps, c_st, i_register)
    begin
    ctrl_reg_ns <= ctrl_reg_ps;
    ctrl_reg_ns(1) <= i_register;
    -- default assignments
    n_st <= c_st; -- remain in current state
    --data to spi is value of the register with the address stored in register zero
    o_data_to_spi <= ctrl_reg_ps(to_integer(unsigned(ctrl_reg_ps(0)(3 downto 1))));
    -- specific assignments
    case c_st is
        when S0 =>
            if o_busy = '1' then n_st <= S1;
            end if;
            --if write is set to one and register address is larger than one then write register.
            if ctrl_reg_ps(0)(0) = '1' and unsigned(ctrl_reg_ps(0)(3 downto 1)) > to_unsigned(1,3) then
                ctrl_reg_ns(to_integer(unsigned(ctrl_reg_ps(0)(3 downto 1)))) <= i_data_from_spi;
            end if;
        when S1 =>
            if o_busy = '0' then
                n_st <= S2;
            end if;
        when S2 =>
            if o_busy = '1' then n_st <= S3;
            end if;
            ctrl_reg_ns(0) <= i_data_from_spi;
        when S3 =>
            if o_busy = '0' then n_st <= S0;
            end if;
    end case;
    end process;
end rtl;


    