library ieee;
use ieee.std_logic_1164.all;

entity johns is
	port( clrn, e, clkn : in std_logic;
		student_id : out std_logic_vector (3 downto 0);
		q : out std_logic_vector (0 to 2));
end johns;

architecture behave of johns is
signal qreg : std_logic_vector (0 to 2);
begin
	process (clrn, clkn)
	begin
		if (clrn = '0') then
			qreg <= "000";
		elsif (clkn'event AND clkn = '0') then
			if e = '1' then
				qreg(1) <= qreg(0);
				qreg(2) <= qreg(1);
				qreg(0) <= not qreg(2);
			else
				qreg <= qreg;
			end if;
		end if;
		
		case qreg is
			when "000" => student_id <= "0000";
			when "100" => student_id <= "0010";
			when "110" => student_id <= "0110";
			when "111" => student_id <= "0111";
			when "011" => student_id <= "0011";
			when "001" => student_id <= "0010";
			when others => student_id <= "----";
		end case;
	end process;
q <= qreg;
end behave;