LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nbitshiftreg IS 
    GENERIC(n: integer:= 8);
    port(d_in : in std_logic_vector(n-1 downto 0);
         shift_in, clk, load, shiftr, shiftl, reset_b: in std_logic;
         d_out, dout_b: out std_logic_vector(n-1 downto 0));
END nbitshiftreg;

architecture struc of nbitshiftreg is  
signal mux_out: std_logic_vector(n-1 downto 0);
signal int_dout: std_logic_vector(n-1 downto 0);

component onebit4to1mux
    port(i_0, i_1, i_2, i_3: IN std_logic;
         sel1, sel2 : IN std_logic;
         o : OUT std_logic);
end component;

component enardFF_2
    port(
		i_resetBar	: IN	STD_LOGIC;
		i_d		: IN	STD_LOGIC;
		i_enable	: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		o_q, o_qBar	: OUT	STD_LOGIC);
end component;

begin 

mux0: onebit4to1mux
    port map(i_0 => d_in(0), 
             i_1 => shift_in, 
             i_2 => int_dout(1), 
             i_3 => '0', --default value
             sel1 => shiftl, 
             sel2 => shiftr,
             o => mux_out(0));
				 
muxn_1: onebit4to1mux
    port map(i_0 => d_in(n-1), 
            i_1 => int_dout(n-2), 
            i_2 => shift_in, 
            i_3 => '0', --default value
            sel1 => shiftl, 
            sel2 => shiftr,
            o => mux_out(n-1));
				
muxes: for i in n-2 downto 1 generate
    muxi: onebit4to1mux
        port map(i_0 => d_in(i), 
                 i_1 => int_dout(i-1), 
                 i_2 => int_dout(i+1),
					  i_3 => '0', --default value 
                 sel1 => shiftl, 
                 sel2 => shiftr, 
                 o => mux_out(i));
	end generate;

dffs: for i in n-1 downto 0 generate
    biti: enARdFF_2  
        PORT MAP(i_resetBar => reset_b, 
                i_d => mux_out(i), 
                i_enable => load, 
                i_clock => clk, 
                o_q => int_dout(i),
                o_qBar => dout_b(i));
    end generate;

	 d_out <= int_dout;

end struc;