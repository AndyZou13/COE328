LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mseg7 IS
PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
n : IN STD_LOGIC;
leds : OUT STD_LOGIC_VECTOR(1 TO 7);
neg : OUT STD_LOGIC_VECTOR(1 TO 7)) ;
END mseg7;

ARCHITECTURE Behavior OF mseg7 IS
BEGIN
	PROCESS (bcd)
	BEGIN	
	if (n = '1') THEN
		neg <= "0000001";
	END if;
		CASE bcd IS
			WHEN "0000" => leds <= "0110011";
			WHEN "0001" => leds <= "0010101";
			WHEN "0010" => leds <= "0110011";
			WHEN "0011" => leds <= "0010101";
			WHEN "0100" => leds <= "0110011";
			WHEN "0101" => leds <= "0010101";
			WHEN "0110" => leds <= "0110011";
			WHEN "0111" => leds <= "0010101";
			WHEN "1000" => leds <= "0110011";
			WHEN "1001" => leds <= "0010101";
			WHEN "1010" => leds <= "0110011";
			WHEN "1011" => leds <= "0010101";
			WHEN "1100" => leds <= "0110011";
			WHEN "1101" => leds <= "0010101";
			WHEN "1110" => leds <= "0110011";
			WHEN "1111" => leds <= "0010101";
			WHEN OTHERS => leds <= "0000000";
		END CASE;
	END PROCESS;
END Behavior;
		