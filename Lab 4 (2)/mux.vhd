library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port (w0, w1, s: in std_logic;
		f : out std_logic);
end mux;

architecture behave of mux is
begin
	with s select
		f <= w0 when '0',
			w1 when others;
end behave;