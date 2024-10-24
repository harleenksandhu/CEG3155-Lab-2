library ieee;
use ieee.std_logic_1164.all;

entity divider_top is

	port(GClock, GReset: in std_logic;
			OperandA, OperandB: in std_logic_vector(3 downto 0);
			QuotientOut, RemainderOut: out std_logic_vector(3 downto 0);
			Zero, Overflow: out std_logic);

end divider_top;


architecture struc of divider_top is
signal int_loadR, int_loadD, int_loadQ, int_shiftD, int_shiftQ: std_logic;
signal int_selA, int_selB, int_selop1, int_selop2_0, int_selop2_1, int_sub, int_incI: std_logic;
signal int_A_3, int_B_3, int_rltz, int_incEq5, int_AxorB, int_z, int_v: std_logic;
signal int_remainderOut, int_quotientOut: std_logic_vector(7 downto 0);


component divider_datapath
	port(INA, INB : in std_logic_vector(3 downto 0);
		 GReset, GClock: in std_logic;
		 loadR, loadD, loadQ, selA, selB, selop1, selop2_0, selop2_1, sub, incI, shiftD, shiftQ: in std_logic;
		 A_3, B_3, AxorB, rltz, incEq5, z, v: out std_logic;
		 rmd_out, Q_out : out std_logic_vector(7 downto 0));
end component;

component divider_controlpath
	port(GClock, reset: in std_logic;
		 A_3, B_3, AxorB, rltz, incEq5: in std_logic;
		 loadR, loadD, loadQ, selA, selB, selop1, selop2_0, selop2_1, sub, incI, shiftD, shiftQ: out std_logic);
end component;

begin
	dp: divider_datapath
	port map(INA => OperandA, INB => OperandB, 
			 GReset => GReset, GClock => GClock, 
			 loadR => int_loadR, 
			 loadD => int_loadD, 
			 loadQ => int_loadQ, 
			 selA => int_selA, 
			 selB => int_selB, 
			 selop1 => int_selop1, 
			 selop2_0 => int_selop2_0, 
			 selop2_1 => int_selop2_1, 
			 sub => int_sub,
			 incI => int_incI, 
			 shiftD => int_shiftD, 
			 shiftQ => int_shiftQ,
			 A_3 => int_A_3, 
			 B_3 => int_B_3, 
			 AxorB => int_AxorB, 
			 rltz => int_rltz, 
			 incEq5 => int_incEq5, 
			 z => int_z, v => int_v, 
			 rmd_out => int_remainderOut, 
			 Q_out => int_quotientOut);
	
	cp: divider_controlpath
	port map(GClock => GClock, reset => GReset, 
			 A_3 => int_A_3, 
			 B_3 => int_B_3, 
			 AxorB => int_AxorB, 
			 rltz => int_rltz, 
			 incEq5 => int_incEq5, 
			 loadR => int_loadR, 
			 loadD => int_loadD, 
			 loadQ => int_loadQ, 
			 selA => int_selA, 
			 selB => int_selB, 
			 selop1 => int_selop1, 
			 selop2_0 => int_selop2_0, 
			 selop2_1 => int_selop2_1, 
			 sub => int_sub,
			 incI => int_incI, 
			 shiftD => int_shiftD, 
			 shiftQ => int_shiftQ);

	--OUTPUTs
	RemainderOut <= int_remainderOut(3 downto 0);
	QuotientOut <= int_quotientOut(3 downto 0);
	Zero <= int_z;
	Overflow <= int_v;
end struc;