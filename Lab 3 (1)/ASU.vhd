LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY asu IS 
	PORT ( 
	Cin : IN STD_LOGIC;
	A, B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	neg, Cout: OUT STD_LOGIC);
END asu;

ARCHITECTURE bh of asu IS
signal C1, C2, C3, C4: STD_LOGIC;
BEGIN
	O(0) <= A(0) XOR B(0) XOR Cin;
	C1 <= (((A(0) XOR B(0)) AND Cin) OR (A(0) AND B(0)));
	
	O(1) <= A(1) XOR B(1) XOR Cin;
	C2 <= (((A(1) XOR B(1)) AND C1) OR (A(1) AND B(1)));
	
	O(2) <= A(2) XOR B(2) XOR Cin;
	C3 <= (((A(2) XOR B(2)) AND C2) OR (A(2) AND B(2)));
	
	O(3) <= A(3) XOR B(3) XOR Cin;
	C4 <= (((A(3) XOR B(3)) AND C3) OR (A(3) AND B(3)));
	Cout <= C4;
	
	neg <= A(3) XOR B(3) XOR Cin;
END bh;


