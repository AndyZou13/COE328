library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU is
port (Clock : in std_logic;
		A, B 	: in std_logic_vector(7 downto 0);
		student_id : in unsigned(3 downto 0);
		OP	 	: in unsigned(15 downto 0);
		neg 	: out std_logic;
		r1 	: out std_logic_vector(3 downto 0);
		r2 	: out std_logic_vector(3 downto 0));
end ALU;

architecture calc of ALU is
signal reg1, reg2, result : std_logic_vector(7 downto 0) := (others => '0');
signal reg4 : unsigned (0 to 7);
begin
reg1 <= A;
reg2 <= B;
process (Clock, OP)
begin
	if (rising_edge(Clock)) then
		case OP is
			when "0000000000000001" => result <= "01101001";
			when "0000000000000010" => result <= "00001100";
			when "0000000000000100" => result <= "00000110";
			when "0000000000001000" => result <= "00110010";
			when "0000000000010000" => result <= "11011001";
			when "0000000000100000" => result <= "01001100";
			when "0000000001000000" => result <= "01010101";
			when "0000000010000000" =>	result <= "10010101";
			when "0000000100000000" => result <= "11111111";
			when others => result <= "00000000";
		end case;
end if;
end process;
r1 <= result(3 downto 0);
r2 <= result(7 downto 4);
end calc;