library ieee;
use ieee.std_logic_1164.all;

entity divider_datapath is
	port(INA, INB : in std_logic_vector(3 downto 0);
		 GReset, GClock: in std_logic;
		 loadR, loadD, loadQ, selA, selB, selop1, selop2_0, selop2_1, sub, incI, shiftD, shiftQ: in std_logic;
		 A_3, B_3, AxorB, rltz, incEq5, z, v: out std_logic;
		 rmd_out, Q_out : out std_logic_vector(7 downto 0)
		 );
end divider_datapath;


architecture struc of divider_datapath is
	signal int_count: std_logic_vector(2 downto 0);
	signal result, rem_reg_out, div_reg_out, op1, op2, rem_mux_out: std_logic_vector(7 downto 0);
	signal sign_extended_INA, sign_extended_Q, shiftedINB, int_qout, div_mux_out: std_logic_vector(7 downto 0);
	signal greset_b, int_v, quotient_serialinput : std_logic;

component nbitreg
	generic(n: integer);
	port(reset_b: in std_logic;
		 din : in std_logic_vector(n-1 downto 0);
		 load, clk: in std_logic;
		 dout, dout_b : out std_logic_vector(n-1 downto 0));
end component;

component nbitshiftreg
	generic(n: integer);
	port(d_in : in std_logic_vector(n-1 downto 0);
		shift_in, clk, load, shiftl, shiftr, reset_b: in std_logic;
		d_out, dout_b: out std_logic_vector(n-1 downto 0));
end component;

component nbit2to1mux 
	generic(n: integer);
	port(i_0, i_1 : IN std_logic_vector( n-1 downto 0);
		 sel1 : IN std_logic;
		 o : OUT std_logic_vector( n-1 downto 0));
end component;

component nbit4to1mux
	generic(n: integer);
	port(i_0, i_1, i_2, i_3: IN std_logic_vector( n-1 downto 0);
		 sel1, sel2 : IN std_logic;
		 o : OUT std_logic_vector( n-1 downto 0));
end component;

component threebitcounter
	port(inc_i, greset, clk: in std_logic;
		 count : out std_logic_vector(2 downto 0));

end component;

component nbitaddersubtractor
	generic(n: integer);
	port(x : in STD_LOGIC_VECTOR(n-1 downto 0); 
        y : in STD_LOGIC_VECTOR(n-1 downto 0); 
        cin : in STD_LOGIC;		
        sum : out STD_LOGIC_VECTOR(n-1 downto 0);  
        cout : out STD_LOGIC);		
end component;

begin
	greset_b <= not(GReset);
	sign_extended_INA <= INA(3) & INA(3) & INA(3) & INA(3) & INA;

	--remainder
	muxA: nbit2to1mux
	generic map(n => 8)
	port map(i_0 => result, 
			 i_1 => sign_extended_INA, 
			 sel1 => selA, 
			 o => rem_mux_out);
	
	remainder_reg: nbitreg
	generic map(n => 8)
	port map(reset_b => greset_b,
			 din => rem_mux_out,
			 load => loadR, 
			 clk => GClock,
			 dout => rem_reg_out,
			 dout_b => open);
	
	
	--divisor
	shiftedINB <= INB & "0000";
	muxB: nbit2to1mux
	generic map(n => 8)
	port map(i_0 => result, 
			 i_1 => shiftedINB, 
			 sel1 => selB, 
			 o => div_mux_out );

	divisor_shiftreg: nbitshiftreg
	generic map(n => 8)
	port map(d_in => div_mux_out,
			 shift_in => '0',
			 clk => GClock,
			 load => loadD,
			 shiftl => '0',
			 shiftr => shiftD,
			 reset_b => greset_b,
			 d_out => div_reg_out,
			 dout_b => open);

	--adder/subtractor
	muxop1: nbit2to1mux
	generic map(n => 8)
	port map(i_0 => rem_reg_out, 
			 i_1 => "00000000", 
			 sel1 => selop1, 
			 o => op1);	
	muxop2: nbit4to1mux
	generic map(n => 8)
	port map(i_0 => div_reg_out, 
			 i_1 => int_qout, 
			 i_2 => shiftedINB, 
			 i_3 => sign_extended_INA,
			 sel1 => selop2_0, 
			 sel2 => selop2_1,
			 o => op2);	
	
	adder_subtractor: nbitaddersubtractor
	generic map(n => 8)
	port map(x => op1, y => op2, 
			 cin => sub, 
			 sum => result, 
			 cout => int_v);

	--quotient
	quotient_serialinput <= '1' when loadQ = '1' else '0'; --IF THIS CAUSES PROBLEMS, JUST MAKE SERIAL INPUT A CONTROL SIGNAL
	quotient_shiftreg: nbitshiftreg
	generic map(n => 8)
	port map(d_in => result,
			 shift_in => quotient_serialinput,
			 clk => GClock,
			 load => loadQ,
			 shiftl => shiftQ,
			 shiftr => '0',
			 reset_b => greset_b,
			 d_out => int_qout,
			 dout_b => open);
	--i
	counter: threebitcounter 
	port map(inc_i => incI,  
			 greset => GReset, 
			 clk => GClock,
			 count => int_count);
	
A_3 <= INA(3);
B_3 <= INB(3);
rltz <= result(7); -- 1 if result is less than zero
incEq5 <= int_count(2) AND not(int_count(1)) AND int_count(0);
AxorB <= INA(3) XOR INB(3); --to determine sign of quotient
Q_out <= int_qout(7 downto 0);
rmd_out <= rem_reg_out(7 downto 0);

z <= not(int_qout(3) OR int_qout(2) OR int_qout(1) OR int_qout(0)); --zero flag
v <= int_v; --overflow flag

end struc;