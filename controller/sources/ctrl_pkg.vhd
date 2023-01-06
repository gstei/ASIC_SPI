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
function reverse_any_vector (a: in std_logic_vector) return std_logic_vector;
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
end ctrl_pkg;