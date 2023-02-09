library ieee;
use ieee.std_logic_1164.all;
entity machine is
	port 
	(	clk		: in std_logic;
		data_in	: in std_logic;
		reset 	: in std_logic;
		student_id : out std_logic_vector(3 downto 0);
		current_state: out std_logic_vector(3 downto 0));
end entity;

architecture fsm of machine is
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
	signal yfsm : state_type;
	begin
		process (clk, reset)
		begin
			if (reset = '1') then
				yfsm <= s0;
			elsif (clk'Event and clk = '1') then
				if (yfsm = s0) then
					yfsm <= s4;
				elsif (yfsm = s4) then
					yfsm <= s3;
				elsif (yfsm = s3) then
					yfsm <= s2;
				elsif (yfsm = s2) then
					yfsm <= s1;
				elsif (yfsm = s1) then
					yfsm <= s8;
				elsif (yfsm = s8) then
					yfsm <= s7;
				elsif (yfsm = s7) then
					yfsm <= s6;
				elsif (yfsm = s6) then
					yfsm <= s5;
				elsif (yfsm = s5) then
					yfsm <= s0;
				end if;
				case yfsm is
					when s0 => current_state <= "0001";
					when s4 => current_state <= "0010";
					when s3 => current_state <= "0011";
					when s2 => current_state <= "0100";
					when s1 => current_state <= "0101";
					when s8 => current_state <= "0110";
					when s7 => current_state <= "0111";
					when s6 => current_state <= "1000";
					when s5 => current_state <= "1001";
					when others => current_state <= "1111";
				end case;
			end if;
		end process;
		
		process (yfsm, data_in)
		begin
			case yfsm is
				when s0 => student_id <= "0101";
				when s4 => student_id <= "0000";
				when s3 => student_id <= "0001";
				when s2 => student_id <= "0000";
				when s1 => student_id <= "0010";
				when s8 => student_id <= "0110";
				when s7 => student_id <= "0111";
				when s6 => student_id <= "0011";
				when s5 => student_id <= "0010";
				when others => student_id <= "1111";
			end case;
		end process;
end fsm;