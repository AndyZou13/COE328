LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY sseg7 IS
PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
n : IN STD_LOGIC;
leds : OUT STD_LOGIC_VECTOR(1 TO 7);
neg : OUT STD_LOGIC_VECTOR(1 TO 7)) ;
END sseg7;

ARCHITECTURE Behavior OF sseg7 IS
BEGIN
	PROCESS (bcd)
	BEGIN	
		if (n = '1') THEN
			neg <= "0000001";
			else
			neg <= "0000000";
		end if;
		CASE bcd IS
			WHEN "0000" => leds <= "0010101";
			WHEN "0001" => leds <= "0110011";
			WHEN others => leds <= "0000000";
		END CASE;
	END PROCESS;
END Behavior;
		