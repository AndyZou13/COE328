library ieee;
use ieee.std_logic_1164.all;

entity decod is
	port( w : in std_logic_vector (1 downto 0);
		En : in std_logic;
		y : out std_logic_vector (0 to 3));
end decod;

architecture behavior of decod is
	signal Enw : std_logic_vector (2 downto 0);
begin
	Enw <= En & w;
	with Enw select
		y <= "1000" when "100",
			"0100" when "101",
			"0010" when "110",
			"0001" when "111",
			"0000" when others;
end behavior;