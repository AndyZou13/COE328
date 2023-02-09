library ieee;
use ieee.std_logic_1164.all;

entity comb is
	port( inp1 : in std_logic_vector(3 downto 0);
	inp2 : in std_logic_vector(3 downto 0);
	inp3 : in std_logic_vector(3 downto 0);
	inp4 : in std_logic_vector(3 downto 0);
	outp : out std_logic_vector(15 downto 0));
end comb;

architecture behavior of comb is
begin
	outp <= inp1 & inp2 & inp3 & inp4;
end behavior;