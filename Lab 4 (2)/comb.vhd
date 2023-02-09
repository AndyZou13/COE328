library ieee;
use ieee.std_logic_1164.all;

entity comb is
	port( inp1 : in std_logic_vector(3 downto 0);
	inp2 : in std_logic_vector(3 downto 0);
	inp3 : in std_logic_vector(3 downto 0);
	inp4 : in std_logic_vector(3 downto 0);
	outp : out std_logic_vector(0 to 15));
end comb;

architecture behavior of comb is
begin
	outp <= inp4 & inp3 & inp2 & inp1;
end behavior;