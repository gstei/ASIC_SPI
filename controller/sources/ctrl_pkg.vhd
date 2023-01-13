-- Created by Matthias Meyer
-- 16/12/2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


package ctrl_pkg is
constant c_AW               : integer := 3;     --Number of Registers = 2**AW
constant c_DW               : integer := 8;     --Data width of a Register
constant c_MSB_LSB          : std_logic := '0';   --MSB first(0) or LSB(1) first
type t_register is array (0 to 2**c_AW-1) of
    std_logic_vector(c_DW-1 downto 0);
function reverse_any_vector (a: in std_logic_vector) return std_logic_vector;
function to_slv(slvv : t_register) return STD_LOGIC_VECTOR;

end ctrl_pkg;
-- Package Implementation -------------------
package body ctrl_pkg is
--Function is from https://stackoverflow.com/questions/13584307/reverse-bit-order-on-vhdl
function reverse_any_vector (a: in std_logic_vector) 
    return std_logic_vector is
 		variable result: std_logic_vector(a'RANGE);
 		alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
    begin
      for i in aa'RANGE loop
        result(i) := aa(i);
      end loop;
      return result;
  end; -- function reverse_any_vector
  
subtype T_SLV_32  is STD_LOGIC_VECTOR(31 downto 0);


function to_slv(slvv : t_register) return STD_LOGIC_VECTOR is
  variable slv : STD_LOGIC_VECTOR((slvv'length * 8) - 1 downto 0);
begin
  for i in slvv'range loop
    slv((i * 8) + 7 downto (i * 8))      := slvv(i);
  end loop;
  return slv;
end function;
end ctrl_pkg;