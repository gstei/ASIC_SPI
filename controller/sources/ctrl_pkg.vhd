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
constant SIMVECTOR_PATH     : string := "";
type t_register is array (0 to 2**c_AW-1) of
    std_logic_vector(c_DW-1 downto 0);
function reverse_any_vector (a: in std_logic_vector) return std_logic_vector;
function to_slv(slvv : t_register) return STD_LOGIC_VECTOR;
-- convert std_logic_vector into a string in hex format
function hstr(slv: std_logic_vector) return string;

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
--https://github.com/texane/vhdl/blob/master/src/sim/ghdlex_mein/txt_util.vhdl
function hstr(slv: std_logic_vector) return string is
    variable hexlen: integer;
    variable longslv : std_logic_vector(67 downto 0):=(others => '0');
    variable hex : string(1 to 16);
    variable fourbit : std_logic_vector(3 downto 0);
begin
    hexlen:=(slv'left+1)/4;
    if (slv'left+1) mod 4/=0 then
       hexlen := hexlen + 1;
    end if;
    longslv(slv'left downto 0) := slv;
    for i in (hexlen-1) downto 0 loop
        fourbit:=longslv(((i*4)+3) downto (i*4));
        case fourbit is
            when "0000" => hex(hexlen-I):='0';
            when "0001" => hex(hexlen-I):='1';
			when "0010" => hex(hexlen-I):='2';
			when "0011" => hex(hexlen-I):='3';
			when "0100" => hex(hexlen-I):='4';
			when "0101" => hex(hexlen-I):='5';
			when "0110" => hex(hexlen-I):='6';
			when "0111" => hex(hexlen-I):='7';
			when "1000" => hex(hexlen-I):='8';
			when "1001" => hex(hexlen-I):='9';
			when "1010" => hex(hexlen-I):='A';
			when "1011" => hex(hexlen-I):='B';
			when "1100" => hex(hexlen-I):='C';
			when "1101" => hex(hexlen-I):='D';
			when "1110" => hex(hexlen-I):='E';
			when "1111" => hex(hexlen-I):='F';
			when "ZZZZ" => hex(hexlen-I):='z';
			when "UUUU" => hex(hexlen-I):='u';
			when "XXXX" => hex(hexlen-I):='x';
			when others => hex(hexlen-I):='?';
        end case;
    end loop;
    return hex(1 to hexlen);
end function hstr;
end ctrl_pkg;