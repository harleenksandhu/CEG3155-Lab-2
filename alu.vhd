library ieee;
use ieee.std_logic_1164.all;

entity alu is
	port(GClock, GReset: in std_logic;
			OperationSelect: in std_logic_vector(1 downto 0);
			OperandA, OperandB: in std_logic_vector(3 downto 0);
			MuxOut: out std_logic_vector(7 downto 0);
			CarryOut, ZeroOut, OverflowOut: out std_logic);
end alu;


architecture struc of alu is
signal int_4bitsumordiff: std_logic_vector(3 downto 0);
signal int_8bitsumordiff, int_quotandrem, int_product: std_logic_vector(7 downto 0);
signal int_adder_z, int_adder_c, int_divider_v, int_divider_z, int_product_z, int_product_v: std_logic;

component nbit4to1mux
	generic(n: integer);
	port(i_0, i_1, i_2, i_3: IN std_logic_vector( n-1 downto 0);
		 sel1, sel2 : IN std_logic;
		 o : OUT std_logic_vector( n-1 downto 0));
end component;

component divider_top 
	port(GClock, GReset: in std_logic;
			OperandA, OperandB: in std_logic_vector(3 downto 0);
			QuotientOut, RemainderOut: out std_logic_vector(3 downto 0);
			Zero, Overflow: out std_logic);
end component;

component nbitaddersubtractor
	generic(n: integer);
	port(x : in STD_LOGIC_VECTOR(n-1 downto 0); 
        y : in STD_LOGIC_VECTOR(n-1 downto 0); 
        cin : in STD_LOGIC;		
        sum : out STD_LOGIC_VECTOR(n-1 downto 0);  
        cout : out STD_LOGIC;
		  z: out STD_LOGIC);		
end component;


component multiplier_top
	port(GClock, GReset: in std_logic;
			OperandA, OperandB: in std_logic_vector(3 downto 0);
			ProductOut: out std_logic_vector(7 downto 0);
			Zero, Overflow: out std_logic);
end component;

begin
	addsub: nbitaddersubtractor
	generic map(n => 4)
	port map(x => OperandA, y => OperandB, cin => OperationSelect(0), 
				sum => int_4bitsumordiff, cout=> int_adder_c, z => int_adder_z);
	
	int_8bitsumordiff <= "0000"&int_4bitsumordiff;
	
	divider: divider_top
	port map(GClock => GClock, GReset => GReset, OperandA => OperandA, OperandB => OperandB, 
				QuotientOut => int_quotandrem(3 downto 0), RemainderOut => int_quotandrem(7 downto 4), 
				Zero => int_divider_z, Overflow => int_divider_v);
	
	multiplier: multiplier_top
	port map(GClock => GClock, GReset => GReset, OperandA => OperandA, OperandB => OperandB,
				ProductOut => int_product, Zero => int_product_z, Overflow => int_product_v);
				
				
	mux: nbit4to1mux
	generic map(n => 8)
	port map(i_0 => int_8bitsumordiff, i_1 => int_8bitsumordiff, 
				i_2 => "00000000", i_3 => int_quotandrem, --just a random value for i_2 temporarily
				sel1 => OperationSelect(0), sel2 => OperationSelect(1), 
				o => MuxOut);
	
	ZeroOut <= (int_adder_z AND NOT OperationSelect(1)) OR (int_divider_z AND OperationSelect(1) AND OperationSelect(0)) OR (int_product_z AND OperationSelect(1) AND NOT OperationSelect(0));
	OverflowOut <= (int_divider_v AND OperationSelect(1) AND OperationSelect(0)) OR (int_product_v AND OperationSelect(1) AND NOT OperationSelect(0));
	CarryOut <= int_adder_c AND NOT OperationSelect(1);
	
end struc;
	
	
	
	
	
	
	
	
	
	
	