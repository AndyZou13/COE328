library ieee;
use ieee.std_logic_1164.all;

entity fts is
	port( s : in std_logic_vector (3 downto 0);
		En : in std_logic;
		op : out std_logic_vector (15 downto 0));
end fts;

architecture behavior of fts is
begin
process (s, En)
begin
	if (En = '0') then
		op <= "0000000000000000";
	else
		case s is 
			when "0000" => op <= "0000000000000001";
			when "0001" => op <= "0000000000000010";
			when "0010" => op <= "0000000000000100";
			when "0011" => op <= "0000000000001000";
			when "0100" => op <= "0000000000010000";
			when "0101" => op <= "0000000000100000";
			when "0110" => op <= "0000000001000000";
			when "0111" => op <= "0000000010000000";
			when "1000" => op <= "0000000100000000";
			when "1001" => op <= "0000001000000000";
			when "1010" => op <= "0000010000000000";
			when "1011" => op <= "0000100000000000";
			when "1100" => op <= "0001000000000000";
			when "1101" => op <= "0010000000000000";
			when "1110" => op <= "0100000000000000";
			when "1111" => op <= "1000000000000000";
			when others => op <= "0000000000000000";
		end case;
	end if;
end process;
end behavior;