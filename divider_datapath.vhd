library ieee;
use ieee.std_logic_1164.all;

entity divider_datapath is
	port(INA, INB : in std_logic_vector(3 downto 0);
			Q : out std_logic_vector(3 downto 0));
end divider_datapath;


architecture struc of divider_datapath is

component nbitreg
	generic(n: integer);
	port(reset_b: in std_logic;
		 din : in std_logic_vector(n-1 downto 0);
		 load, clk: in std_logic;
		 dout, dout_b : out std_logic_vector(n-1 downto 0));
end component;

component


end struc;