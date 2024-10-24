LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity multiplier_datapath is
  port(INA, INB: in std_logic_vector(3 downto 0);
    GReset, GClock: in std_logic;
    loadP, loadMR, loadMD, shiftMD, shiftMR: in std_logic;
    AxorB, A_3, B_3, B_0, P_7, z, v, zeroB: out std_logic;
    P_out: out std_logic_vector(7 downto 0)
  );
end multiplier_datapath;

architecture struc of multiplier_datapath is
  signal int_v: std_logic;
  signal int_pout: std_logic_vector(7 downto 0);
  signal mul_mux_outB, mul_mux_outA, mr_reg_out, complementedINA, complementedINB: std_logic_vector(3 downto 0);
  signal int_din, mul_mux_outP, add_out_AP, md_reg_out, mux_out_A_or_0, complementedP: std_logic_vector(7 downto 0);
  
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

  component nbitaddersubtractor
	 generic(n: integer);
	 port(x : in STD_LOGIC_VECTOR(n-1 downto 0); 
        y : in STD_LOGIC_VECTOR(n-1 downto 0); 
        cin : in STD_LOGIC;		
        sum : out STD_LOGIC_VECTOR(n-1 downto 0);  
        cout : out STD_LOGIC);		
  end component;
  
  begin
    
 	--multiplier
  -- complement the Input B if negative
	adder_subtractorMR: nbitaddersubtractor
	generic map(n => 4)
	port map(x => INB, y => "0000", 
			 cin => '1', 
			 sum => complementedINB, 
			 cout => open);
		
	-- select between the complemented B or normal be based on MSB of B	 
	muxB: nbit2to1mux
	generic map(n => 4)
	port map(i_0 => INB, 
			 i_1 => complementedINB, 
			 sel1 => INB(3), 
			 o => mul_mux_outB );

  -- copy content to multiplicand shift reg
	multiplier_shiftreg: nbitshiftreg
	generic map(n => 4)
	port map(d_in => mul_mux_outB,
			 shift_in => '0',
			 clk => GClock,
			 load => loadMR,
			 shiftl => '0',
			 shiftr => shiftMR,
			 reset_b => greset,
			 d_out => mr_reg_out,
			 dout_b => open);



 	--multiplicand 	
 	-- compliment input A if neg
 	adder_subtractorMD: nbitaddersubtractor
	generic map(n => 4)
	port map(x => INA, y => "0000", 
			 cin => '1',    -- to subtract
			 sum => complementedINA, 
			 cout => open);
			
	-- select between complimented A and noraml A
	muxA: nbit2to1mux
	generic map(n => 4)
	port map(i_0 => INA, 
			 i_1 => complementedINA, 
			 sel1 => INA(3), 
			 o => mul_mux_outA );
			 
  int_din <= "0000"& mul_mux_outA;
	multiplicand_shiftreg: nbitshiftreg
	generic map(n => 8)
	port map(d_in => int_din,
			 shift_in => '0',
			 clk => GClock,
			 load => loadMD,
			 shiftl => shiftMD,
			 shiftr => '0',
			 reset_b => greset,
			 d_out => md_reg_out,
			 dout_b => open);



	--adder/subtractor
	muxA_or_0: nbit2to1mux
	generic map(n => 8)
	port map(i_0 => "00000000", 
			 i_1 => md_reg_out, 
			 sel1 => INB(0), 
			 o => mux_out_A_or_0);
			 	
	adder_subtractorAP: nbitaddersubtractor
	generic map(n => 8)
	port map(x => mux_out_A_or_0, y => mul_mux_outP, 
			 cin => '1', 
			 sum => add_out_AP, 
			 cout => int_v);
  
  
  
 	--product 	
 	adder_subtractorP: nbitaddersubtractor
	generic map(n => 8)
	port map(x => int_pout, y => "00000000", 
			 cin => '1', 
			 sum => complementedP, 
			 cout => open);
			 
	muxP: nbit2to1mux
	generic map(n => 8)
	port map(i_0 => add_out_AP, 
			 i_1 => complementedP, 
			 sel1 => int_pout(7), 
			 o => mul_mux_outP );
			 
	regP: nbitreg
	generic map(n => 8)
	port map(din => mul_mux_outP, 
			 load => loadP, 
			 reset_b => greset, 
			 clk => GClock,
			 dout => int_pout,
			 dout_b => open );
		
		
	A_3 <= INA(3);
	B_3 <= INB(3);	
	B_0 <= INB(0);	 
	P_7 <= int_pout(7);
  AxorB <= INA(3) XOR INB(3); --to determine sign of quotient
  P_out <= int_pout(7 downto 0);
  zeroB <= not(mul_mux_outB(3) AND mul_mux_outB(2) AND mul_mux_outB(1) AND mul_mux_outB(0)); 
  z <= not(int_pout(7) AND int_pout(6) AND int_pout(5) AND int_pout(4) AND int_pout(3) AND int_pout(2) AND int_pout(1) AND int_pout(0));
  v <= int_v; --overflow flag (takes the last carry output of the adder)
  
end struc;




