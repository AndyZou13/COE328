LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab2_vhdl IS
PORT (
a,b,c,d : IN STD_LOGIC ;
f : OUT STD_LOGIC );
end lab2_vhdl;

ARCHITECTURE Behavior OF lab2_vhdl IS
BEGIN
f <= (a AND NOT c) OR (a AND b) OR (NOT a AND NOT b AND c AND d);
END Behavior;