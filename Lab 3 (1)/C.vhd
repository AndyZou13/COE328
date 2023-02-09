LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY combinatorial IS
PORT ( inP: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END combinatorial;

ARCHITECTURE Behavior OF combinatorial IS
BEGIN
	O(3) <= inP(3) AND (inP(2) OR inP(1));
	O(2) <= (inP(3) AND inP(2)) OR (inP(2) AND inP(1)) OR (inP(3) AND inP(1));
	O(1) <= inP(3) OR (inP(2) AND (inP(1) OR inP(0)));
	O(0) <= ((NOT inP(2))AND(NOT inP(1))AND(NOT inP(0))) OR ((NOT inP(3))AND(NOT inP(2))AND(NOT inP(1))) OR ((NOT inP(3))AND(inP(1))AND(inP(0)));
END Behavior;
		