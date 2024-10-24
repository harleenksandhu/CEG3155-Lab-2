library ieee;
use ieee.std_logic_1164.all;

entity multiplier_controlpath is
	port(GClock, reset: in std_logic;
		 AxorB, z, v, zeroB, A_3, B_3, B_0: in std_logic;
		 loadMR, loadMD, loadP,shiftMD, shiftMR: out std_logic --control signals
		 );
end multiplier_controlpath;

architecture struc of multiplier_controlpath is
signal state_input, s : std_logic_vector(10 downto 0);
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
state_input(1) <= s(0) AND not(A_3);
state_input(2) <= s(0) AND A_3;
state_input(3) <= (s(1) OR s(2)) AND not(B_3);
state_input(4) <= (s(1) OR s(2)) AND B_3;
state_input(5) <= (s(3) OR s(4)) AND B_0;
state_input(6) <= s(5) OR B_0;
state_input(7) <= s(6);
state_input(8) <= zeroB AND z AND s(7);
state_input(9) <= (s(8) OR not(z)) AND s(7);
state_input(10) <= (not(AxorB) OR s(9)) AND v;

reset_b <= not(reset);

---- OUTPUT (control signals) ----

--register controls
loadMR <= s(3) OR s(4);
loadMD <= s(1) OR s(2);
loadP <= s(5) OR s(9);
shiftMR <= s(7);
shiftMD <= s(6);


end struc;




