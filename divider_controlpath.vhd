library ieee;
use ieee.std_logic_1164.all;

entity divider_controlpath is
	port(GClock, reset: in std_logic;
		 A_3, B_3, AxorB, rltz, incEq5: in std_logic;
		 loadR, loadD, loadQ, selA, selB, selop1, selop2_0, selop2_1, sub, incI, shiftD, shiftQ: out std_logic --control signals
		 );
end divider_controlpath;

architecture struc of divider_controlpath is
signal state_input, s : std_logic_vector(9 downto 0);
signal reset_b : std_logic;

component enardFF_2 
	port(i_resetBar	: IN	STD_LOGIC;
		i_d		: IN	STD_LOGIC;
		i_enable	: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		o_q, o_qBar	: OUT	STD_LOGIC);
end component;

begin

	state0: enardFF_2
		port map(i_resetBar => '1', 
				 i_d => state_input(0), 
				 i_enable => '1', 
				 i_clock => GClock, 
				 o_q => s(0), 
				 o_qBar => open);
	states1to9:
	for i in 1 to 9 generate
		state_i: enardFF_2 
		port map(i_resetBar => reset_b, 
				 i_d => state_input(i), 
				 i_enable => '1', 
				 i_clock => GClock, 
				 o_q => s(i), 
				 o_qBar => open);
	end generate;

-- State inputs
state_input(0) <= reset;
state_input(1) <= s(0) AND A_3;
state_input(2) <= s(0) AND not(A_3);
state_input(3) <= (s(1) OR s(2)) AND B_3;
state_input(4) <= (s(1) OR s(2)) AND not(B_3);
state_input(5) <= (s(3) OR s(4) OR s(8)) AND not(incEq5);
state_input(6) <= s(5) AND not(rltz);
state_input(7) <= s(5) AND rltz;
state_input(8) <= s(6) OR s(7);
state_input(9) <= s(8) AND AxorB AND incEq5;

reset_b <= not(reset);

---- OUTPUT (control signals) ----

--register controls
loadR <= s(1) OR s(2) OR s(5) OR s(7);
loadD <= s(3) OR s(4);
loadQ <= s(6) OR s(9);
shiftD <= s(8);
shiftQ <= s(7) OR s(6);

--mux controls
selA <= s(2);
selB <= s(4);
selop1 <= s(1) OR s(3) OR s(9);
selop2_0 <= s(1) OR s(9);
selop2_1 <= s(1) OR s(3);

--adder subtractor operation control
sub <= s(1) OR s(3) OR s(5) OR s(9);

--counter control
incI <= s(5);

end struc;