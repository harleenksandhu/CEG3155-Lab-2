library ieee;
use ieee.std_logic_1164.all;

entity multiplier_top is

	port(GClock, GReset: in std_logic;
			OperandA, OperandB: in std_logic_vector(3 downto 0);
			ProductOut: out std_logic_vector(7 downto 0);
			Zero, Overflow: out std_logic);

end multiplier_top;


architecture struc of multiplier_top is
signal int_loadMD, int_loadMR, int_loadP, int_shiftMD, int_shiftMR: std_logic;
signal int_A_3, int_B_3, int_B_0, int_AxorB, int_z, int_v, int_zeroB: std_logic;
signal int_productOut: std_logic_vector(7 downto 0);


component multiplier_datapath
  port(INA, INB: in std_logic_vector(3 downto 0);
    GReset, GClock: in std_logic;
    loadP, loadMR, loadMD, shiftMD, shiftMR: in std_logic;
    AxorB, A_3, B_3, B_0, z, v, zeroB: out std_logic;
    P_out: out std_logic_vector(7 downto 0)
  );
end component;

component multiplier_controlpath
	port(GClock, reset: in std_logic;
		 AxorB, z, v, zeroB, A_3, B_3, B_0: in std_logic;
		 loadMR, loadMD, loadP, shiftMD, shiftMR: out std_logic --control signals
		 );
end component;

begin
	dp: multiplier_datapath
	port map(INA => OperandA, INB => OperandB, 
			 GReset => GReset, GClock => GClock, 
			 loadMR => int_loadMR, 
			 loadMD => int_loadMD, 
			 loadP => int_loadP, 
			 shiftMD => int_shiftMD, 
			 shiftMR => int_shiftMR,
			 A_3 => int_A_3, 
			 B_3 => int_B_3,
			 B_0 => int_B_0,
			 zeroB => int_zeroB, 
			 AxorB => int_AxorB, 
			 z => int_z, 
			 v => int_v, 
			 P_out => int_productOut
			);
	
	cp: multiplier_controlpath
	port map(GClock => GClock, reset => GReset, 
			 A_3 => int_A_3, 
			 B_3 => int_B_3,
			 B_0 => int_B_0, 
			 AxorB => int_AxorB, 
			 loadMR => int_loadMR, 
			 loadMD => int_loadMD, 
			 loadP => int_loadP, 
			 shiftMD => int_shiftMD, 
			 shiftMR => int_shiftMR,
			 z => int_z,
			 v => int_v,
			 zeroB => int_zeroB);

	--OUTPUTs
	ProductOut <= int_productOut(7 downto 0);
	Zero <= int_z;
	Overflow <= int_v;

end struc;
