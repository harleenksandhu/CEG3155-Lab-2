-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/17/2024 22:41:16"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nbitshiftreg IS
    PORT (
	d_in : IN std_logic_vector(7 DOWNTO 0);
	shift_in : IN std_logic;
	clk : IN std_logic;
	load : IN std_logic;
	shiftr : IN std_logic;
	shiftl : IN std_logic;
	reset_b : IN std_logic;
	d_out : OUT std_logic_vector(7 DOWNTO 0);
	dout_b : OUT std_logic_vector(7 DOWNTO 0)
	);
END nbitshiftreg;

-- Design Ports Information
-- d_out[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[5]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[6]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_b[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_b[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_b[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_b[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_b[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_b[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_b[6]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_b[7]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_in	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shiftr	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shiftl	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_b	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nbitshiftreg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_shift_in : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_shiftr : std_logic;
SIGNAL ww_shiftl : std_logic;
SIGNAL ww_reset_b : std_logic;
SIGNAL ww_d_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dout_b : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset_b~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d_out[0]~output_o\ : std_logic;
SIGNAL \d_out[1]~output_o\ : std_logic;
SIGNAL \d_out[2]~output_o\ : std_logic;
SIGNAL \d_out[3]~output_o\ : std_logic;
SIGNAL \d_out[4]~output_o\ : std_logic;
SIGNAL \d_out[5]~output_o\ : std_logic;
SIGNAL \d_out[6]~output_o\ : std_logic;
SIGNAL \d_out[7]~output_o\ : std_logic;
SIGNAL \dout_b[0]~output_o\ : std_logic;
SIGNAL \dout_b[1]~output_o\ : std_logic;
SIGNAL \dout_b[2]~output_o\ : std_logic;
SIGNAL \dout_b[3]~output_o\ : std_logic;
SIGNAL \dout_b[4]~output_o\ : std_logic;
SIGNAL \dout_b[5]~output_o\ : std_logic;
SIGNAL \dout_b[6]~output_o\ : std_logic;
SIGNAL \dout_b[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \shiftr~input_o\ : std_logic;
SIGNAL \shiftl~input_o\ : std_logic;
SIGNAL \d_in[1]~input_o\ : std_logic;
SIGNAL \d_in[2]~input_o\ : std_logic;
SIGNAL \d_in[3]~input_o\ : std_logic;
SIGNAL \d_in[4]~input_o\ : std_logic;
SIGNAL \d_in[5]~input_o\ : std_logic;
SIGNAL \d_in[6]~input_o\ : std_logic;
SIGNAL \d_in[7]~input_o\ : std_logic;
SIGNAL \shift_in~input_o\ : std_logic;
SIGNAL \muxn_1|o~0_combout\ : std_logic;
SIGNAL \muxn_1|o~1_combout\ : std_logic;
SIGNAL \reset_b~input_o\ : std_logic;
SIGNAL \reset_b~inputclkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \dffs:7:biti|int_q~q\ : std_logic;
SIGNAL \muxes:6:muxi|o~0_combout\ : std_logic;
SIGNAL \muxes:6:muxi|o~1_combout\ : std_logic;
SIGNAL \dffs:6:biti|int_q~q\ : std_logic;
SIGNAL \muxes:5:muxi|o~0_combout\ : std_logic;
SIGNAL \muxes:5:muxi|o~1_combout\ : std_logic;
SIGNAL \dffs:5:biti|int_q~q\ : std_logic;
SIGNAL \muxes:4:muxi|o~0_combout\ : std_logic;
SIGNAL \muxes:4:muxi|o~1_combout\ : std_logic;
SIGNAL \dffs:4:biti|int_q~q\ : std_logic;
SIGNAL \muxes:3:muxi|o~0_combout\ : std_logic;
SIGNAL \muxes:3:muxi|o~1_combout\ : std_logic;
SIGNAL \dffs:3:biti|int_q~q\ : std_logic;
SIGNAL \muxes:2:muxi|o~0_combout\ : std_logic;
SIGNAL \muxes:2:muxi|o~1_combout\ : std_logic;
SIGNAL \dffs:2:biti|int_q~q\ : std_logic;
SIGNAL \muxes:1:muxi|o~0_combout\ : std_logic;
SIGNAL \muxes:1:muxi|o~1_combout\ : std_logic;
SIGNAL \dffs:1:biti|int_q~q\ : std_logic;
SIGNAL \d_in[0]~input_o\ : std_logic;
SIGNAL \mux0|o~0_combout\ : std_logic;
SIGNAL \mux0|o~1_combout\ : std_logic;
SIGNAL \dffs:0:biti|int_q~q\ : std_logic;
SIGNAL \dffs:7:biti|ALT_INV_int_q~q\ : std_logic;
SIGNAL \dffs:6:biti|ALT_INV_int_q~q\ : std_logic;
SIGNAL \dffs:5:biti|ALT_INV_int_q~q\ : std_logic;
SIGNAL \dffs:4:biti|ALT_INV_int_q~q\ : std_logic;
SIGNAL \dffs:3:biti|ALT_INV_int_q~q\ : std_logic;
SIGNAL \dffs:2:biti|ALT_INV_int_q~q\ : std_logic;
SIGNAL \dffs:1:biti|ALT_INV_int_q~q\ : std_logic;
SIGNAL \dffs:0:biti|ALT_INV_int_q~q\ : std_logic;

BEGIN

ww_d_in <= d_in;
ww_shift_in <= shift_in;
ww_clk <= clk;
ww_load <= load;
ww_shiftr <= shiftr;
ww_shiftl <= shiftl;
ww_reset_b <= reset_b;
d_out <= ww_d_out;
dout_b <= ww_dout_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_b~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_b~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\dffs:7:biti|ALT_INV_int_q~q\ <= NOT \dffs:7:biti|int_q~q\;
\dffs:6:biti|ALT_INV_int_q~q\ <= NOT \dffs:6:biti|int_q~q\;
\dffs:5:biti|ALT_INV_int_q~q\ <= NOT \dffs:5:biti|int_q~q\;
\dffs:4:biti|ALT_INV_int_q~q\ <= NOT \dffs:4:biti|int_q~q\;
\dffs:3:biti|ALT_INV_int_q~q\ <= NOT \dffs:3:biti|int_q~q\;
\dffs:2:biti|ALT_INV_int_q~q\ <= NOT \dffs:2:biti|int_q~q\;
\dffs:1:biti|ALT_INV_int_q~q\ <= NOT \dffs:1:biti|int_q~q\;
\dffs:0:biti|ALT_INV_int_q~q\ <= NOT \dffs:0:biti|int_q~q\;

-- Location: IOOBUF_X0_Y59_N16
\d_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:0:biti|int_q~q\,
	devoe => ww_devoe,
	o => \d_out[0]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\d_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:1:biti|int_q~q\,
	devoe => ww_devoe,
	o => \d_out[1]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\d_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:2:biti|int_q~q\,
	devoe => ww_devoe,
	o => \d_out[2]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\d_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:3:biti|int_q~q\,
	devoe => ww_devoe,
	o => \d_out[3]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\d_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:4:biti|int_q~q\,
	devoe => ww_devoe,
	o => \d_out[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\d_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:5:biti|int_q~q\,
	devoe => ww_devoe,
	o => \d_out[5]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\d_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:6:biti|int_q~q\,
	devoe => ww_devoe,
	o => \d_out[6]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\d_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:7:biti|int_q~q\,
	devoe => ww_devoe,
	o => \d_out[7]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\dout_b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:0:biti|ALT_INV_int_q~q\,
	devoe => ww_devoe,
	o => \dout_b[0]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\dout_b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:1:biti|ALT_INV_int_q~q\,
	devoe => ww_devoe,
	o => \dout_b[1]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\dout_b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:2:biti|ALT_INV_int_q~q\,
	devoe => ww_devoe,
	o => \dout_b[2]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\dout_b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:3:biti|ALT_INV_int_q~q\,
	devoe => ww_devoe,
	o => \dout_b[3]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\dout_b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:4:biti|ALT_INV_int_q~q\,
	devoe => ww_devoe,
	o => \dout_b[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\dout_b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:5:biti|ALT_INV_int_q~q\,
	devoe => ww_devoe,
	o => \dout_b[5]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\dout_b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:6:biti|ALT_INV_int_q~q\,
	devoe => ww_devoe,
	o => \dout_b[6]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\dout_b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dffs:7:biti|ALT_INV_int_q~q\,
	devoe => ww_devoe,
	o => \dout_b[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y60_N15
\shiftr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shiftr,
	o => \shiftr~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\shiftl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shiftl,
	o => \shiftl~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\d_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(1),
	o => \d_in[1]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\d_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(2),
	o => \d_in[2]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\d_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(3),
	o => \d_in[3]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\d_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(4),
	o => \d_in[4]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\d_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(5),
	o => \d_in[5]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\d_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(6),
	o => \d_in[6]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\d_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(7),
	o => \d_in[7]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\shift_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift_in,
	o => \shift_in~input_o\);

-- Location: LCCOMB_X1_Y55_N26
\muxn_1|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxn_1|o~0_combout\ = (!\shiftr~input_o\ & ((\shiftl~input_o\ & ((\shift_in~input_o\))) # (!\shiftl~input_o\ & (\d_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[7]~input_o\,
	datab => \shiftl~input_o\,
	datac => \shiftr~input_o\,
	datad => \shift_in~input_o\,
	combout => \muxn_1|o~0_combout\);

-- Location: LCCOMB_X1_Y55_N30
\muxn_1|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxn_1|o~1_combout\ = (\muxn_1|o~0_combout\) # ((!\shiftl~input_o\ & (\shiftr~input_o\ & \dffs:6:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxn_1|o~0_combout\,
	datab => \shiftl~input_o\,
	datac => \shiftr~input_o\,
	datad => \dffs:6:biti|int_q~q\,
	combout => \muxn_1|o~1_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset_b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_b,
	o => \reset_b~input_o\);

-- Location: CLKCTRL_G4
\reset_b~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_b~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_b~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y57_N15
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X1_Y55_N31
\dffs:7:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \muxn_1|o~1_combout\,
	clrn => \reset_b~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dffs:7:biti|int_q~q\);

-- Location: LCCOMB_X1_Y55_N0
\muxes:6:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:6:muxi|o~0_combout\ = (!\shiftr~input_o\ & ((\shiftl~input_o\ & ((\dffs:7:biti|int_q~q\))) # (!\shiftl~input_o\ & (\d_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[6]~input_o\,
	datab => \shiftl~input_o\,
	datac => \dffs:7:biti|int_q~q\,
	datad => \shiftr~input_o\,
	combout => \muxes:6:muxi|o~0_combout\);

-- Location: LCCOMB_X1_Y55_N20
\muxes:6:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:6:muxi|o~1_combout\ = (\muxes:6:muxi|o~0_combout\) # ((\dffs:5:biti|int_q~q\ & (!\shiftl~input_o\ & \shiftr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dffs:5:biti|int_q~q\,
	datab => \shiftl~input_o\,
	datac => \shiftr~input_o\,
	datad => \muxes:6:muxi|o~0_combout\,
	combout => \muxes:6:muxi|o~1_combout\);

-- Location: FF_X1_Y55_N21
\dffs:6:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \muxes:6:muxi|o~1_combout\,
	clrn => \reset_b~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dffs:6:biti|int_q~q\);

-- Location: LCCOMB_X1_Y55_N18
\muxes:5:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:5:muxi|o~0_combout\ = (!\shiftr~input_o\ & ((\shiftl~input_o\ & ((\dffs:6:biti|int_q~q\))) # (!\shiftl~input_o\ & (\d_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[5]~input_o\,
	datab => \shiftl~input_o\,
	datac => \shiftr~input_o\,
	datad => \dffs:6:biti|int_q~q\,
	combout => \muxes:5:muxi|o~0_combout\);

-- Location: LCCOMB_X1_Y55_N6
\muxes:5:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:5:muxi|o~1_combout\ = (\muxes:5:muxi|o~0_combout\) # ((\shiftr~input_o\ & (!\shiftl~input_o\ & \dffs:4:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~input_o\,
	datab => \shiftl~input_o\,
	datac => \dffs:4:biti|int_q~q\,
	datad => \muxes:5:muxi|o~0_combout\,
	combout => \muxes:5:muxi|o~1_combout\);

-- Location: FF_X1_Y55_N7
\dffs:5:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \muxes:5:muxi|o~1_combout\,
	clrn => \reset_b~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dffs:5:biti|int_q~q\);

-- Location: LCCOMB_X1_Y55_N24
\muxes:4:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:4:muxi|o~0_combout\ = (!\shiftr~input_o\ & ((\shiftl~input_o\ & ((\dffs:5:biti|int_q~q\))) # (!\shiftl~input_o\ & (\d_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[4]~input_o\,
	datab => \shiftl~input_o\,
	datac => \shiftr~input_o\,
	datad => \dffs:5:biti|int_q~q\,
	combout => \muxes:4:muxi|o~0_combout\);

-- Location: LCCOMB_X1_Y55_N28
\muxes:4:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:4:muxi|o~1_combout\ = (\muxes:4:muxi|o~0_combout\) # ((!\shiftl~input_o\ & (\dffs:3:biti|int_q~q\ & \shiftr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftl~input_o\,
	datab => \dffs:3:biti|int_q~q\,
	datac => \shiftr~input_o\,
	datad => \muxes:4:muxi|o~0_combout\,
	combout => \muxes:4:muxi|o~1_combout\);

-- Location: FF_X1_Y55_N29
\dffs:4:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \muxes:4:muxi|o~1_combout\,
	clrn => \reset_b~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dffs:4:biti|int_q~q\);

-- Location: LCCOMB_X1_Y55_N22
\muxes:3:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:3:muxi|o~0_combout\ = (!\shiftr~input_o\ & ((\shiftl~input_o\ & ((\dffs:4:biti|int_q~q\))) # (!\shiftl~input_o\ & (\d_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[3]~input_o\,
	datab => \shiftl~input_o\,
	datac => \shiftr~input_o\,
	datad => \dffs:4:biti|int_q~q\,
	combout => \muxes:3:muxi|o~0_combout\);

-- Location: LCCOMB_X1_Y55_N2
\muxes:3:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:3:muxi|o~1_combout\ = (\muxes:3:muxi|o~0_combout\) # ((\shiftr~input_o\ & (!\shiftl~input_o\ & \dffs:2:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~input_o\,
	datab => \shiftl~input_o\,
	datac => \muxes:3:muxi|o~0_combout\,
	datad => \dffs:2:biti|int_q~q\,
	combout => \muxes:3:muxi|o~1_combout\);

-- Location: FF_X1_Y55_N3
\dffs:3:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \muxes:3:muxi|o~1_combout\,
	clrn => \reset_b~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dffs:3:biti|int_q~q\);

-- Location: LCCOMB_X1_Y55_N16
\muxes:2:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:2:muxi|o~0_combout\ = (!\shiftr~input_o\ & ((\shiftl~input_o\ & ((\dffs:3:biti|int_q~q\))) # (!\shiftl~input_o\ & (\d_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[2]~input_o\,
	datab => \shiftl~input_o\,
	datac => \shiftr~input_o\,
	datad => \dffs:3:biti|int_q~q\,
	combout => \muxes:2:muxi|o~0_combout\);

-- Location: LCCOMB_X1_Y55_N12
\muxes:2:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:2:muxi|o~1_combout\ = (\muxes:2:muxi|o~0_combout\) # ((\shiftr~input_o\ & (!\shiftl~input_o\ & \dffs:1:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~input_o\,
	datab => \shiftl~input_o\,
	datac => \dffs:1:biti|int_q~q\,
	datad => \muxes:2:muxi|o~0_combout\,
	combout => \muxes:2:muxi|o~1_combout\);

-- Location: FF_X1_Y55_N13
\dffs:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \muxes:2:muxi|o~1_combout\,
	clrn => \reset_b~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dffs:2:biti|int_q~q\);

-- Location: LCCOMB_X1_Y55_N10
\muxes:1:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:1:muxi|o~0_combout\ = (!\shiftr~input_o\ & ((\shiftl~input_o\ & ((\dffs:2:biti|int_q~q\))) # (!\shiftl~input_o\ & (\d_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[1]~input_o\,
	datab => \shiftl~input_o\,
	datac => \shiftr~input_o\,
	datad => \dffs:2:biti|int_q~q\,
	combout => \muxes:1:muxi|o~0_combout\);

-- Location: LCCOMB_X1_Y55_N14
\muxes:1:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxes:1:muxi|o~1_combout\ = (\muxes:1:muxi|o~0_combout\) # ((\shiftr~input_o\ & (!\shiftl~input_o\ & \dffs:0:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~input_o\,
	datab => \shiftl~input_o\,
	datac => \dffs:0:biti|int_q~q\,
	datad => \muxes:1:muxi|o~0_combout\,
	combout => \muxes:1:muxi|o~1_combout\);

-- Location: FF_X1_Y55_N15
\dffs:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \muxes:1:muxi|o~1_combout\,
	clrn => \reset_b~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dffs:1:biti|int_q~q\);

-- Location: IOIBUF_X0_Y57_N22
\d_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(0),
	o => \d_in[0]~input_o\);

-- Location: LCCOMB_X1_Y55_N8
\mux0|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux0|o~0_combout\ = (!\shiftl~input_o\ & ((\shiftr~input_o\ & ((\shift_in~input_o\))) # (!\shiftr~input_o\ & (\d_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[0]~input_o\,
	datab => \shiftl~input_o\,
	datac => \shiftr~input_o\,
	datad => \shift_in~input_o\,
	combout => \mux0|o~0_combout\);

-- Location: LCCOMB_X1_Y55_N4
\mux0|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux0|o~1_combout\ = (\mux0|o~0_combout\) # ((!\shiftr~input_o\ & (\shiftl~input_o\ & \dffs:1:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~input_o\,
	datab => \shiftl~input_o\,
	datac => \dffs:1:biti|int_q~q\,
	datad => \mux0|o~0_combout\,
	combout => \mux0|o~1_combout\);

-- Location: FF_X1_Y55_N5
\dffs:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux0|o~1_combout\,
	clrn => \reset_b~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dffs:0:biti|int_q~q\);

ww_d_out(0) <= \d_out[0]~output_o\;

ww_d_out(1) <= \d_out[1]~output_o\;

ww_d_out(2) <= \d_out[2]~output_o\;

ww_d_out(3) <= \d_out[3]~output_o\;

ww_d_out(4) <= \d_out[4]~output_o\;

ww_d_out(5) <= \d_out[5]~output_o\;

ww_d_out(6) <= \d_out[6]~output_o\;

ww_d_out(7) <= \d_out[7]~output_o\;

ww_dout_b(0) <= \dout_b[0]~output_o\;

ww_dout_b(1) <= \dout_b[1]~output_o\;

ww_dout_b(2) <= \dout_b[2]~output_o\;

ww_dout_b(3) <= \dout_b[3]~output_o\;

ww_dout_b(4) <= \dout_b[4]~output_o\;

ww_dout_b(5) <= \dout_b[5]~output_o\;

ww_dout_b(6) <= \dout_b[6]~output_o\;

ww_dout_b(7) <= \dout_b[7]~output_o\;
END structure;


