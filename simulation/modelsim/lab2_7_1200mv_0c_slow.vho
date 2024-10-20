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

-- DATE "10/19/2024 22:17:42"

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

ENTITY 	divider_top IS
    PORT (
	GClock : IN std_logic;
	GReset : IN std_logic;
	OperandA : IN std_logic_vector(3 DOWNTO 0);
	OperandB : IN std_logic_vector(3 DOWNTO 0);
	QuotientOut : BUFFER std_logic_vector(7 DOWNTO 0);
	RemainderOut : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END divider_top;

-- Design Ports Information
-- QuotientOut[0]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QuotientOut[1]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QuotientOut[2]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QuotientOut[3]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QuotientOut[4]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QuotientOut[5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QuotientOut[6]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QuotientOut[7]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RemainderOut[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RemainderOut[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RemainderOut[2]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RemainderOut[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RemainderOut[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RemainderOut[5]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RemainderOut[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RemainderOut[7]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[3]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[0]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[2]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF divider_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GClock : std_logic;
SIGNAL ww_GReset : std_logic;
SIGNAL ww_OperandA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OperandB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_QuotientOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RemainderOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \GReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \QuotientOut[0]~output_o\ : std_logic;
SIGNAL \QuotientOut[1]~output_o\ : std_logic;
SIGNAL \QuotientOut[2]~output_o\ : std_logic;
SIGNAL \QuotientOut[3]~output_o\ : std_logic;
SIGNAL \QuotientOut[4]~output_o\ : std_logic;
SIGNAL \QuotientOut[5]~output_o\ : std_logic;
SIGNAL \QuotientOut[6]~output_o\ : std_logic;
SIGNAL \QuotientOut[7]~output_o\ : std_logic;
SIGNAL \RemainderOut[0]~output_o\ : std_logic;
SIGNAL \RemainderOut[1]~output_o\ : std_logic;
SIGNAL \RemainderOut[2]~output_o\ : std_logic;
SIGNAL \RemainderOut[3]~output_o\ : std_logic;
SIGNAL \RemainderOut[4]~output_o\ : std_logic;
SIGNAL \RemainderOut[5]~output_o\ : std_logic;
SIGNAL \RemainderOut[6]~output_o\ : std_logic;
SIGNAL \RemainderOut[7]~output_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \OperandB[3]~input_o\ : std_logic;
SIGNAL \OperandA[3]~input_o\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \cp|state0|int_q~q\ : std_logic;
SIGNAL \GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cp|states1to9:2:state_i|int_q~q\ : std_logic;
SIGNAL \cp|states1to9:1:state_i|int_q~q\ : std_logic;
SIGNAL \cp|state_input[3]~0_combout\ : std_logic;
SIGNAL \cp|states1to9:3:state_i|int_q~q\ : std_logic;
SIGNAL \cp|state_input[4]~6_combout\ : std_logic;
SIGNAL \cp|states1to9:4:state_i|int_q~q\ : std_logic;
SIGNAL \dp|muxA|o[7]~7_combout\ : std_logic;
SIGNAL \cp|loadR~0_combout\ : std_logic;
SIGNAL \dp|remainder_reg|reg:7:biti|int_q~q\ : std_logic;
SIGNAL \dp|muxop1|o[7]~0_combout\ : std_logic;
SIGNAL \cp|sub~combout\ : std_logic;
SIGNAL \cp|state_input[7]~4_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxn_1|o~0_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|dffs:7:biti|int_q~q\ : std_logic;
SIGNAL \OperandB[2]~input_o\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxes:6:muxi|o~1_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|dffs:6:biti|int_q~q\ : std_logic;
SIGNAL \cp|selop2_0~0_combout\ : std_logic;
SIGNAL \dp|muxop2|o[0]~9_combout\ : std_logic;
SIGNAL \dp|muxop2|o[6]~12_combout\ : std_logic;
SIGNAL \cp|selop1~0_combout\ : std_logic;
SIGNAL \OperandB[1]~input_o\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxes:5:muxi|o~1_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|dffs:5:biti|int_q~q\ : std_logic;
SIGNAL \OperandB[0]~input_o\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxes:4:muxi|o~1_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|dffs:4:biti|int_q~q\ : std_logic;
SIGNAL \dp|muxA|o[3]~3_combout\ : std_logic;
SIGNAL \dp|remainder_reg|reg:3:biti|int_q~q\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxes:3:muxi|o~0_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|dffs:3:biti|int_q~q\ : std_logic;
SIGNAL \dp|muxop2|o~5_combout\ : std_logic;
SIGNAL \dp|muxop2|o[3]~8_combout\ : std_logic;
SIGNAL \OperandA[2]~input_o\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxes:2:muxi|o~0_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|dffs:2:biti|int_q~q\ : std_logic;
SIGNAL \dp|divisor_shiftreg|muxes:1:muxi|o~0_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|dffs:1:biti|int_q~q\ : std_logic;
SIGNAL \dp|divisor_shiftreg|mux0|o~0_combout\ : std_logic;
SIGNAL \dp|divisor_shiftreg|dffs:0:biti|int_q~q\ : std_logic;
SIGNAL \dp|muxop2|o[0]~3_combout\ : std_logic;
SIGNAL \OperandA[0]~input_o\ : std_logic;
SIGNAL \dp|muxop2|o[0]~2_combout\ : std_logic;
SIGNAL \dp|muxop2|o[0]~4_combout\ : std_logic;
SIGNAL \dp|adder_subtractor|FA0|sum~0_combout\ : std_logic;
SIGNAL \dp|muxA|o[0]~0_combout\ : std_logic;
SIGNAL \dp|remainder_reg|reg:0:biti|int_q~q\ : std_logic;
SIGNAL \dp|adder_subtractor|FA0|cout~0_combout\ : std_logic;
SIGNAL \OperandA[1]~input_o\ : std_logic;
SIGNAL \dp|quotient_shiftreg|muxes:1:muxi|o~2_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|int_en~combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|dffs:1:biti|int_q~q\ : std_logic;
SIGNAL \dp|muxop2|o[1]~6_combout\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:1:FAi|sum~combout\ : std_logic;
SIGNAL \dp|muxA|o[1]~1_combout\ : std_logic;
SIGNAL \dp|remainder_reg|reg:1:biti|int_q~q\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|muxes:2:muxi|o~2_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|dffs:2:biti|int_q~q\ : std_logic;
SIGNAL \dp|muxop2|o[2]~7_combout\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\ : std_logic;
SIGNAL \dp|muxA|o[2]~2_combout\ : std_logic;
SIGNAL \dp|remainder_reg|reg:2:biti|int_q~q\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|muxes:3:muxi|o~2_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|dffs:3:biti|int_q~q\ : std_logic;
SIGNAL \dp|quotient_shiftreg|muxes:4:muxi|o~2_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|dffs:4:biti|int_q~q\ : std_logic;
SIGNAL \dp|muxop2|o[4]~10_combout\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:4:FAi|sum~combout\ : std_logic;
SIGNAL \dp|muxA|o[4]~4_combout\ : std_logic;
SIGNAL \dp|remainder_reg|reg:4:biti|int_q~q\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|muxes:5:muxi|o~2_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|dffs:5:biti|int_q~q\ : std_logic;
SIGNAL \dp|muxop2|o[5]~11_combout\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:5:FAi|sum~combout\ : std_logic;
SIGNAL \dp|muxA|o[5]~5_combout\ : std_logic;
SIGNAL \dp|remainder_reg|reg:5:biti|int_q~q\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:6:FAi|sum~combout\ : std_logic;
SIGNAL \dp|muxA|o[6]~6_combout\ : std_logic;
SIGNAL \dp|remainder_reg|reg:6:biti|int_q~q\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\ : std_logic;
SIGNAL \cp|states1to9:7:state_i|int_q~q\ : std_logic;
SIGNAL \dp|quotient_shiftreg|muxes:6:muxi|o~2_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|dffs:6:biti|int_q~q\ : std_logic;
SIGNAL \dp|quotient_shiftreg|muxn_1|o~2_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|dffs:7:biti|int_q~q\ : std_logic;
SIGNAL \dp|muxop2|o[7]~13_combout\ : std_logic;
SIGNAL \dp|muxop2|o[7]~14_combout\ : std_logic;
SIGNAL \dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\ : std_logic;
SIGNAL \cp|states1to9:6:state_i|int_q~q\ : std_logic;
SIGNAL \cp|shiftQ~0_combout\ : std_logic;
SIGNAL \cp|states1to9:8:state_i|int_q~q\ : std_logic;
SIGNAL \cp|state_input~3_combout\ : std_logic;
SIGNAL \dp|counter|reg|reg:2:biti|int_q~0_combout\ : std_logic;
SIGNAL \dp|counter|reg|reg:2:biti|int_q~q\ : std_logic;
SIGNAL \cp|state_input[5]~5_combout\ : std_logic;
SIGNAL \cp|states1to9:5:state_i|int_q~q\ : std_logic;
SIGNAL \dp|counter|reg|reg:0:biti|int_q~0_combout\ : std_logic;
SIGNAL \dp|counter|reg|reg:0:biti|int_q~q\ : std_logic;
SIGNAL \dp|counter|reg|reg:1:biti|int_q~0_combout\ : std_logic;
SIGNAL \dp|counter|reg|reg:1:biti|int_q~q\ : std_logic;
SIGNAL \cp|state_input[9]~1_combout\ : std_logic;
SIGNAL \cp|state_input[9]~2_combout\ : std_logic;
SIGNAL \cp|states1to9:9:state_i|int_q~q\ : std_logic;
SIGNAL \dp|quotient_shiftreg|mux0|o~2_combout\ : std_logic;
SIGNAL \dp|quotient_shiftreg|dffs:0:biti|int_q~q\ : std_logic;
SIGNAL \dp|adder_subtractor|yxor\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cp|state_input\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_GReset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_GClock <= GClock;
ww_GReset <= GReset;
ww_OperandA <= OperandA;
ww_OperandB <= OperandB;
QuotientOut <= ww_QuotientOut;
RemainderOut <= ww_RemainderOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GReset~input_o\);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);
\ALT_INV_GReset~inputclkctrl_outclk\ <= NOT \GReset~inputclkctrl_outclk\;

-- Location: IOOBUF_X67_Y0_N9
\QuotientOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|quotient_shiftreg|dffs:0:biti|int_q~q\,
	devoe => ww_devoe,
	o => \QuotientOut[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\QuotientOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|quotient_shiftreg|dffs:1:biti|int_q~q\,
	devoe => ww_devoe,
	o => \QuotientOut[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\QuotientOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|quotient_shiftreg|dffs:2:biti|int_q~q\,
	devoe => ww_devoe,
	o => \QuotientOut[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\QuotientOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|quotient_shiftreg|dffs:3:biti|int_q~q\,
	devoe => ww_devoe,
	o => \QuotientOut[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\QuotientOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|quotient_shiftreg|dffs:4:biti|int_q~q\,
	devoe => ww_devoe,
	o => \QuotientOut[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\QuotientOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|quotient_shiftreg|dffs:5:biti|int_q~q\,
	devoe => ww_devoe,
	o => \QuotientOut[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\QuotientOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|quotient_shiftreg|dffs:6:biti|int_q~q\,
	devoe => ww_devoe,
	o => \QuotientOut[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\QuotientOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|quotient_shiftreg|dffs:7:biti|int_q~q\,
	devoe => ww_devoe,
	o => \QuotientOut[7]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\RemainderOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|remainder_reg|reg:0:biti|int_q~q\,
	devoe => ww_devoe,
	o => \RemainderOut[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\RemainderOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|remainder_reg|reg:1:biti|int_q~q\,
	devoe => ww_devoe,
	o => \RemainderOut[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\RemainderOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|remainder_reg|reg:2:biti|int_q~q\,
	devoe => ww_devoe,
	o => \RemainderOut[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\RemainderOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|remainder_reg|reg:3:biti|int_q~q\,
	devoe => ww_devoe,
	o => \RemainderOut[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\RemainderOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|remainder_reg|reg:4:biti|int_q~q\,
	devoe => ww_devoe,
	o => \RemainderOut[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\RemainderOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|remainder_reg|reg:5:biti|int_q~q\,
	devoe => ww_devoe,
	o => \RemainderOut[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\RemainderOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|remainder_reg|reg:6:biti|int_q~q\,
	devoe => ww_devoe,
	o => \RemainderOut[6]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\RemainderOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|remainder_reg|reg:7:biti|int_q~q\,
	devoe => ww_devoe,
	o => \RemainderOut[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G2
\GClock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GClock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GClock~inputclkctrl_outclk\);

-- Location: IOIBUF_X72_Y0_N1
\OperandB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(3),
	o => \OperandB[3]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\OperandA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(3),
	o => \OperandA[3]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: FF_X66_Y21_N31
\cp|state0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \GReset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state0|int_q~q\);

-- Location: LCCOMB_X66_Y21_N22
\cp|state_input[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input\(2) = (\cp|state0|int_q~q\ & !\OperandA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp|state0|int_q~q\,
	datad => \OperandA[3]~input_o\,
	combout => \cp|state_input\(2));

-- Location: CLKCTRL_G4
\GReset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GReset~inputclkctrl_outclk\);

-- Location: FF_X66_Y21_N23
\cp|states1to9:2:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \cp|state_input\(2),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|states1to9:2:state_i|int_q~q\);

-- Location: LCCOMB_X69_Y21_N4
\cp|state_input[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input\(1) = (\OperandA[3]~input_o\ & \cp|state0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandA[3]~input_o\,
	datad => \cp|state0|int_q~q\,
	combout => \cp|state_input\(1));

-- Location: FF_X68_Y21_N1
\cp|states1to9:1:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \cp|state_input\(1),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|states1to9:1:state_i|int_q~q\);

-- Location: LCCOMB_X70_Y21_N10
\cp|state_input[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input[3]~0_combout\ = (\OperandB[3]~input_o\ & ((\cp|states1to9:2:state_i|int_q~q\) # (\cp|states1to9:1:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:2:state_i|int_q~q\,
	datab => \OperandB[3]~input_o\,
	datad => \cp|states1to9:1:state_i|int_q~q\,
	combout => \cp|state_input[3]~0_combout\);

-- Location: FF_X68_Y21_N15
\cp|states1to9:3:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \cp|state_input[3]~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|states1to9:3:state_i|int_q~q\);

-- Location: LCCOMB_X70_Y21_N30
\cp|state_input[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input[4]~6_combout\ = (!\OperandB[3]~input_o\ & ((\cp|states1to9:2:state_i|int_q~q\) # (\cp|states1to9:1:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:2:state_i|int_q~q\,
	datab => \OperandB[3]~input_o\,
	datad => \cp|states1to9:1:state_i|int_q~q\,
	combout => \cp|state_input[4]~6_combout\);

-- Location: FF_X69_Y21_N5
\cp|states1to9:4:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \cp|state_input[4]~6_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|states1to9:4:state_i|int_q~q\);

-- Location: LCCOMB_X66_Y21_N28
\dp|muxA|o[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxA|o[7]~7_combout\ = (\cp|states1to9:2:state_i|int_q~q\ & (\OperandA[3]~input_o\)) # (!\cp|states1to9:2:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandA[3]~input_o\,
	datac => \cp|states1to9:2:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\,
	combout => \dp|muxA|o[7]~7_combout\);

-- Location: LCCOMB_X70_Y21_N24
\cp|loadR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|loadR~0_combout\ = (\cp|states1to9:2:state_i|int_q~q\) # ((\cp|states1to9:5:state_i|int_q~q\) # ((\cp|states1to9:7:state_i|int_q~q\) # (\cp|states1to9:1:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:2:state_i|int_q~q\,
	datab => \cp|states1to9:5:state_i|int_q~q\,
	datac => \cp|states1to9:7:state_i|int_q~q\,
	datad => \cp|states1to9:1:state_i|int_q~q\,
	combout => \cp|loadR~0_combout\);

-- Location: FF_X66_Y21_N29
\dp|remainder_reg|reg:7:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|muxA|o[7]~7_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|remainder_reg|reg:7:biti|int_q~q\);

-- Location: LCCOMB_X66_Y21_N4
\dp|muxop1|o[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop1|o[7]~0_combout\ = (!\cp|states1to9:1:state_i|int_q~q\ & (!\cp|states1to9:9:state_i|int_q~q\ & (!\cp|states1to9:3:state_i|int_q~q\ & \dp|remainder_reg|reg:7:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:1:state_i|int_q~q\,
	datab => \cp|states1to9:9:state_i|int_q~q\,
	datac => \cp|states1to9:3:state_i|int_q~q\,
	datad => \dp|remainder_reg|reg:7:biti|int_q~q\,
	combout => \dp|muxop1|o[7]~0_combout\);

-- Location: LCCOMB_X68_Y21_N0
\cp|sub\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|sub~combout\ = (\cp|states1to9:5:state_i|int_q~q\) # ((\cp|states1to9:3:state_i|int_q~q\) # ((\cp|states1to9:1:state_i|int_q~q\) # (\cp|states1to9:9:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:5:state_i|int_q~q\,
	datab => \cp|states1to9:3:state_i|int_q~q\,
	datac => \cp|states1to9:1:state_i|int_q~q\,
	datad => \cp|states1to9:9:state_i|int_q~q\,
	combout => \cp|sub~combout\);

-- Location: LCCOMB_X66_Y21_N24
\cp|state_input[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input[7]~4_combout\ = \dp|muxop1|o[7]~0_combout\ $ (\cp|sub~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|muxop1|o[7]~0_combout\,
	datad => \cp|sub~combout\,
	combout => \cp|state_input[7]~4_combout\);

-- Location: LCCOMB_X68_Y21_N26
\dp|divisor_shiftreg|muxn_1|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxn_1|o~0_combout\ = (!\cp|states1to9:8:state_i|int_q~q\ & ((\cp|states1to9:4:state_i|int_q~q\ & (\OperandB[3]~input_o\)) # (!\cp|states1to9:4:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datab => \cp|states1to9:4:state_i|int_q~q\,
	datac => \cp|states1to9:8:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\,
	combout => \dp|divisor_shiftreg|muxn_1|o~0_combout\);

-- Location: FF_X68_Y21_N27
\dp|divisor_shiftreg|dffs:7:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|divisor_shiftreg|muxn_1|o~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|divisor_shiftreg|dffs:7:biti|int_q~q\);

-- Location: IOIBUF_X74_Y0_N22
\OperandB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(2),
	o => \OperandB[2]~input_o\);

-- Location: LCCOMB_X70_Y21_N26
\dp|divisor_shiftreg|muxes:6:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\ = (\cp|states1to9:8:state_i|int_q~q\ & (((\dp|divisor_shiftreg|dffs:7:biti|int_q~q\)))) # (!\cp|states1to9:8:state_i|int_q~q\ & (\cp|states1to9:4:state_i|int_q~q\ & ((\OperandB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:8:state_i|int_q~q\,
	datab => \cp|states1to9:4:state_i|int_q~q\,
	datac => \dp|divisor_shiftreg|dffs:7:biti|int_q~q\,
	datad => \OperandB[2]~input_o\,
	combout => \dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\);

-- Location: LCCOMB_X68_Y21_N4
\dp|divisor_shiftreg|muxes:6:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxes:6:muxi|o~1_combout\ = (\dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\) # ((!\cp|states1to9:4:state_i|int_q~q\ & (!\cp|states1to9:8:state_i|int_q~q\ & \dp|adder_subtractor|addersubtractor:6:FAi|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\,
	datab => \cp|states1to9:4:state_i|int_q~q\,
	datac => \cp|states1to9:8:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:6:FAi|sum~combout\,
	combout => \dp|divisor_shiftreg|muxes:6:muxi|o~1_combout\);

-- Location: FF_X68_Y21_N5
\dp|divisor_shiftreg|dffs:6:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|divisor_shiftreg|muxes:6:muxi|o~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|divisor_shiftreg|dffs:6:biti|int_q~q\);

-- Location: LCCOMB_X68_Y21_N18
\cp|selop2_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|selop2_0~0_combout\ = (!\cp|states1to9:9:state_i|int_q~q\ & !\cp|states1to9:1:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:9:state_i|int_q~q\,
	datad => \cp|states1to9:1:state_i|int_q~q\,
	combout => \cp|selop2_0~0_combout\);

-- Location: LCCOMB_X68_Y21_N14
\dp|muxop2|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[0]~9_combout\ = (\cp|states1to9:1:state_i|int_q~q\) # ((\cp|states1to9:3:state_i|int_q~q\ & \cp|states1to9:9:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|states1to9:1:state_i|int_q~q\,
	datac => \cp|states1to9:3:state_i|int_q~q\,
	datad => \cp|states1to9:9:state_i|int_q~q\,
	combout => \dp|muxop2|o[0]~9_combout\);

-- Location: LCCOMB_X69_Y21_N22
\dp|muxop2|o[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[6]~12_combout\ = (!\cp|selop2_0~0_combout\ & ((\dp|muxop2|o[0]~9_combout\ & ((\OperandA[3]~input_o\))) # (!\dp|muxop2|o[0]~9_combout\ & (\dp|quotient_shiftreg|dffs:6:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|quotient_shiftreg|dffs:6:biti|int_q~q\,
	datab => \cp|selop2_0~0_combout\,
	datac => \OperandA[3]~input_o\,
	datad => \dp|muxop2|o[0]~9_combout\,
	combout => \dp|muxop2|o[6]~12_combout\);

-- Location: LCCOMB_X69_Y21_N20
\dp|adder_subtractor|yxor[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|yxor\(6) = \cp|sub~combout\ $ (((\dp|muxop2|o[6]~12_combout\) # ((\dp|divisor_shiftreg|dffs:6:biti|int_q~q\ & \cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|sub~combout\,
	datab => \dp|divisor_shiftreg|dffs:6:biti|int_q~q\,
	datac => \dp|muxop2|o[6]~12_combout\,
	datad => \cp|selop2_0~0_combout\,
	combout => \dp|adder_subtractor|yxor\(6));

-- Location: LCCOMB_X68_Y21_N12
\cp|selop1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|selop1~0_combout\ = (!\cp|states1to9:1:state_i|int_q~q\ & (!\cp|states1to9:9:state_i|int_q~q\ & !\cp|states1to9:3:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|states1to9:1:state_i|int_q~q\,
	datac => \cp|states1to9:9:state_i|int_q~q\,
	datad => \cp|states1to9:3:state_i|int_q~q\,
	combout => \cp|selop1~0_combout\);

-- Location: IOIBUF_X74_Y0_N15
\OperandB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(1),
	o => \OperandB[1]~input_o\);

-- Location: LCCOMB_X70_Y21_N16
\dp|divisor_shiftreg|muxes:5:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\ = (\cp|states1to9:8:state_i|int_q~q\ & (\dp|divisor_shiftreg|dffs:6:biti|int_q~q\)) # (!\cp|states1to9:8:state_i|int_q~q\ & (((\cp|states1to9:4:state_i|int_q~q\ & \OperandB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|divisor_shiftreg|dffs:6:biti|int_q~q\,
	datab => \cp|states1to9:8:state_i|int_q~q\,
	datac => \cp|states1to9:4:state_i|int_q~q\,
	datad => \OperandB[1]~input_o\,
	combout => \dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\);

-- Location: LCCOMB_X70_Y21_N4
\dp|divisor_shiftreg|muxes:5:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxes:5:muxi|o~1_combout\ = (\dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\) # ((!\cp|states1to9:8:state_i|int_q~q\ & (!\cp|states1to9:4:state_i|int_q~q\ & \dp|adder_subtractor|addersubtractor:5:FAi|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:8:state_i|int_q~q\,
	datab => \dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\,
	datac => \cp|states1to9:4:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:5:FAi|sum~combout\,
	combout => \dp|divisor_shiftreg|muxes:5:muxi|o~1_combout\);

-- Location: FF_X70_Y21_N5
\dp|divisor_shiftreg|dffs:5:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|divisor_shiftreg|muxes:5:muxi|o~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|divisor_shiftreg|dffs:5:biti|int_q~q\);

-- Location: IOIBUF_X115_Y21_N15
\OperandB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(0),
	o => \OperandB[0]~input_o\);

-- Location: LCCOMB_X70_Y21_N6
\dp|divisor_shiftreg|muxes:4:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\ = (!\cp|states1to9:8:state_i|int_q~q\ & ((\cp|states1to9:4:state_i|int_q~q\ & (\OperandB[0]~input_o\)) # (!\cp|states1to9:4:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:4:FAi|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[0]~input_o\,
	datab => \cp|states1to9:4:state_i|int_q~q\,
	datac => \cp|states1to9:8:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:4:FAi|sum~combout\,
	combout => \dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\);

-- Location: LCCOMB_X70_Y21_N22
\dp|divisor_shiftreg|muxes:4:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxes:4:muxi|o~1_combout\ = (\dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\) # ((\dp|divisor_shiftreg|dffs:5:biti|int_q~q\ & \cp|states1to9:8:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|divisor_shiftreg|dffs:5:biti|int_q~q\,
	datac => \cp|states1to9:8:state_i|int_q~q\,
	datad => \dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\,
	combout => \dp|divisor_shiftreg|muxes:4:muxi|o~1_combout\);

-- Location: FF_X70_Y21_N23
\dp|divisor_shiftreg|dffs:4:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|divisor_shiftreg|muxes:4:muxi|o~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|divisor_shiftreg|dffs:4:biti|int_q~q\);

-- Location: LCCOMB_X66_Y21_N14
\dp|muxA|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxA|o[3]~3_combout\ = (\cp|states1to9:2:state_i|int_q~q\ & (\OperandA[3]~input_o\)) # (!\cp|states1to9:2:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandA[3]~input_o\,
	datac => \cp|states1to9:2:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\,
	combout => \dp|muxA|o[3]~3_combout\);

-- Location: FF_X66_Y21_N15
\dp|remainder_reg|reg:3:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|muxA|o[3]~3_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|remainder_reg|reg:3:biti|int_q~q\);

-- Location: LCCOMB_X70_Y21_N28
\dp|divisor_shiftreg|muxes:3:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxes:3:muxi|o~0_combout\ = (\cp|states1to9:8:state_i|int_q~q\ & (\dp|divisor_shiftreg|dffs:4:biti|int_q~q\)) # (!\cp|states1to9:8:state_i|int_q~q\ & (((!\cp|states1to9:4:state_i|int_q~q\ & 
-- \dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:8:state_i|int_q~q\,
	datab => \dp|divisor_shiftreg|dffs:4:biti|int_q~q\,
	datac => \cp|states1to9:4:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\,
	combout => \dp|divisor_shiftreg|muxes:3:muxi|o~0_combout\);

-- Location: FF_X70_Y21_N29
\dp|divisor_shiftreg|dffs:3:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|divisor_shiftreg|muxes:3:muxi|o~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|divisor_shiftreg|dffs:3:biti|int_q~q\);

-- Location: LCCOMB_X68_Y21_N30
\dp|muxop2|o~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o~5_combout\ = ((\cp|states1to9:1:state_i|int_q~q\) # (\cp|states1to9:3:state_i|int_q~q\)) # (!\cp|states1to9:9:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:9:state_i|int_q~q\,
	datab => \cp|states1to9:1:state_i|int_q~q\,
	datac => \cp|states1to9:3:state_i|int_q~q\,
	combout => \dp|muxop2|o~5_combout\);

-- Location: LCCOMB_X68_Y21_N6
\dp|muxop2|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[3]~8_combout\ = (!\cp|selop2_0~0_combout\ & ((\dp|muxop2|o~5_combout\ & (\OperandA[3]~input_o\)) # (!\dp|muxop2|o~5_combout\ & ((\dp|quotient_shiftreg|dffs:3:biti|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|muxop2|o~5_combout\,
	datab => \cp|selop2_0~0_combout\,
	datac => \OperandA[3]~input_o\,
	datad => \dp|quotient_shiftreg|dffs:3:biti|int_q~q\,
	combout => \dp|muxop2|o[3]~8_combout\);

-- Location: LCCOMB_X67_Y21_N8
\dp|adder_subtractor|yxor[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|yxor\(3) = \cp|sub~combout\ $ (((\dp|muxop2|o[3]~8_combout\) # ((\dp|divisor_shiftreg|dffs:3:biti|int_q~q\ & \cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|divisor_shiftreg|dffs:3:biti|int_q~q\,
	datab => \cp|selop2_0~0_combout\,
	datac => \cp|sub~combout\,
	datad => \dp|muxop2|o[3]~8_combout\,
	combout => \dp|adder_subtractor|yxor\(3));

-- Location: IOIBUF_X60_Y0_N15
\OperandA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(2),
	o => \OperandA[2]~input_o\);

-- Location: LCCOMB_X70_Y21_N2
\dp|divisor_shiftreg|muxes:2:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxes:2:muxi|o~0_combout\ = (\cp|states1to9:8:state_i|int_q~q\ & (((\dp|divisor_shiftreg|dffs:3:biti|int_q~q\)))) # (!\cp|states1to9:8:state_i|int_q~q\ & (!\cp|states1to9:4:state_i|int_q~q\ & 
-- (\dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:8:state_i|int_q~q\,
	datab => \cp|states1to9:4:state_i|int_q~q\,
	datac => \dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\,
	datad => \dp|divisor_shiftreg|dffs:3:biti|int_q~q\,
	combout => \dp|divisor_shiftreg|muxes:2:muxi|o~0_combout\);

-- Location: FF_X70_Y21_N3
\dp|divisor_shiftreg|dffs:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|divisor_shiftreg|muxes:2:muxi|o~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|divisor_shiftreg|dffs:2:biti|int_q~q\);

-- Location: LCCOMB_X68_Y21_N20
\dp|divisor_shiftreg|muxes:1:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|muxes:1:muxi|o~0_combout\ = (\cp|states1to9:8:state_i|int_q~q\ & (((\dp|divisor_shiftreg|dffs:2:biti|int_q~q\)))) # (!\cp|states1to9:8:state_i|int_q~q\ & (!\cp|states1to9:4:state_i|int_q~q\ & 
-- ((\dp|adder_subtractor|addersubtractor:1:FAi|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:8:state_i|int_q~q\,
	datab => \cp|states1to9:4:state_i|int_q~q\,
	datac => \dp|divisor_shiftreg|dffs:2:biti|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:1:FAi|sum~combout\,
	combout => \dp|divisor_shiftreg|muxes:1:muxi|o~0_combout\);

-- Location: FF_X68_Y21_N21
\dp|divisor_shiftreg|dffs:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|divisor_shiftreg|muxes:1:muxi|o~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|divisor_shiftreg|dffs:1:biti|int_q~q\);

-- Location: LCCOMB_X68_Y21_N8
\dp|divisor_shiftreg|mux0|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|divisor_shiftreg|mux0|o~0_combout\ = (\cp|states1to9:8:state_i|int_q~q\ & (((\dp|divisor_shiftreg|dffs:1:biti|int_q~q\)))) # (!\cp|states1to9:8:state_i|int_q~q\ & (\dp|adder_subtractor|FA0|sum~0_combout\ & (!\cp|states1to9:4:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:8:state_i|int_q~q\,
	datab => \dp|adder_subtractor|FA0|sum~0_combout\,
	datac => \cp|states1to9:4:state_i|int_q~q\,
	datad => \dp|divisor_shiftreg|dffs:1:biti|int_q~q\,
	combout => \dp|divisor_shiftreg|mux0|o~0_combout\);

-- Location: FF_X68_Y21_N9
\dp|divisor_shiftreg|dffs:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|divisor_shiftreg|mux0|o~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|divisor_shiftreg|dffs:0:biti|int_q~q\);

-- Location: LCCOMB_X68_Y21_N16
\dp|muxop2|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[0]~3_combout\ = (\cp|states1to9:9:state_i|int_q~q\ & (!\cp|states1to9:1:state_i|int_q~q\ & (!\cp|states1to9:3:state_i|int_q~q\ & \dp|quotient_shiftreg|dffs:0:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:9:state_i|int_q~q\,
	datab => \cp|states1to9:1:state_i|int_q~q\,
	datac => \cp|states1to9:3:state_i|int_q~q\,
	datad => \dp|quotient_shiftreg|dffs:0:biti|int_q~q\,
	combout => \dp|muxop2|o[0]~3_combout\);

-- Location: IOIBUF_X60_Y0_N22
\OperandA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(0),
	o => \OperandA[0]~input_o\);

-- Location: LCCOMB_X68_Y21_N22
\dp|muxop2|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[0]~2_combout\ = (\OperandA[0]~input_o\ & ((\cp|states1to9:1:state_i|int_q~q\) # ((\cp|states1to9:3:state_i|int_q~q\ & \cp|states1to9:9:state_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[0]~input_o\,
	datab => \cp|states1to9:1:state_i|int_q~q\,
	datac => \cp|states1to9:3:state_i|int_q~q\,
	datad => \cp|states1to9:9:state_i|int_q~q\,
	combout => \dp|muxop2|o[0]~2_combout\);

-- Location: LCCOMB_X68_Y21_N2
\dp|muxop2|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[0]~4_combout\ = (\dp|muxop2|o[0]~3_combout\) # ((\dp|muxop2|o[0]~2_combout\) # ((\dp|divisor_shiftreg|dffs:0:biti|int_q~q\ & \cp|selop2_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|divisor_shiftreg|dffs:0:biti|int_q~q\,
	datab => \dp|muxop2|o[0]~3_combout\,
	datac => \dp|muxop2|o[0]~2_combout\,
	datad => \cp|selop2_0~0_combout\,
	combout => \dp|muxop2|o[0]~4_combout\);

-- Location: LCCOMB_X66_Y21_N30
\dp|adder_subtractor|FA0|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|FA0|sum~0_combout\ = \dp|muxop2|o[0]~4_combout\ $ (((\dp|remainder_reg|reg:0:biti|int_q~q\ & \cp|selop1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:0:biti|int_q~q\,
	datab => \cp|selop1~0_combout\,
	datad => \dp|muxop2|o[0]~4_combout\,
	combout => \dp|adder_subtractor|FA0|sum~0_combout\);

-- Location: LCCOMB_X66_Y21_N12
\dp|muxA|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxA|o[0]~0_combout\ = (\cp|states1to9:2:state_i|int_q~q\ & ((\OperandA[0]~input_o\))) # (!\cp|states1to9:2:state_i|int_q~q\ & (\dp|adder_subtractor|FA0|sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:2:state_i|int_q~q\,
	datab => \dp|adder_subtractor|FA0|sum~0_combout\,
	datad => \OperandA[0]~input_o\,
	combout => \dp|muxA|o[0]~0_combout\);

-- Location: FF_X66_Y21_N13
\dp|remainder_reg|reg:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|muxA|o[0]~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|remainder_reg|reg:0:biti|int_q~q\);

-- Location: LCCOMB_X67_Y21_N2
\dp|adder_subtractor|FA0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|FA0|cout~0_combout\ = (\dp|muxop2|o[0]~4_combout\ & (\dp|remainder_reg|reg:0:biti|int_q~q\ & (\cp|selop1~0_combout\))) # (!\dp|muxop2|o[0]~4_combout\ & (((\cp|sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:0:biti|int_q~q\,
	datab => \cp|selop1~0_combout\,
	datac => \cp|sub~combout\,
	datad => \dp|muxop2|o[0]~4_combout\,
	combout => \dp|adder_subtractor|FA0|cout~0_combout\);

-- Location: IOIBUF_X67_Y0_N22
\OperandA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(1),
	o => \OperandA[1]~input_o\);

-- Location: LCCOMB_X69_Y21_N10
\dp|quotient_shiftreg|muxes:1:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|quotient_shiftreg|muxes:1:muxi|o~2_combout\ = (\cp|states1to9:7:state_i|int_q~q\ & (((\dp|quotient_shiftreg|dffs:0:biti|int_q~q\)))) # (!\cp|states1to9:7:state_i|int_q~q\ & ((\cp|states1to9:6:state_i|int_q~q\ & 
-- ((\dp|quotient_shiftreg|dffs:0:biti|int_q~q\))) # (!\cp|states1to9:6:state_i|int_q~q\ & (\dp|adder_subtractor|addersubtractor:1:FAi|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:7:state_i|int_q~q\,
	datab => \cp|states1to9:6:state_i|int_q~q\,
	datac => \dp|adder_subtractor|addersubtractor:1:FAi|sum~combout\,
	datad => \dp|quotient_shiftreg|dffs:0:biti|int_q~q\,
	combout => \dp|quotient_shiftreg|muxes:1:muxi|o~2_combout\);

-- Location: LCCOMB_X65_Y21_N14
\dp|quotient_shiftreg|int_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|quotient_shiftreg|int_en~combout\ = (\cp|states1to9:6:state_i|int_q~q\) # ((\cp|states1to9:9:state_i|int_q~q\) # (\cp|states1to9:7:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|states1to9:6:state_i|int_q~q\,
	datac => \cp|states1to9:9:state_i|int_q~q\,
	datad => \cp|states1to9:7:state_i|int_q~q\,
	combout => \dp|quotient_shiftreg|int_en~combout\);

-- Location: FF_X69_Y21_N11
\dp|quotient_shiftreg|dffs:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|quotient_shiftreg|muxes:1:muxi|o~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|quotient_shiftreg|dffs:1:biti|int_q~q\);

-- Location: LCCOMB_X67_Y21_N24
\dp|muxop2|o[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[1]~6_combout\ = (!\cp|selop2_0~0_combout\ & ((\dp|muxop2|o~5_combout\ & (\OperandA[1]~input_o\)) # (!\dp|muxop2|o~5_combout\ & ((\dp|quotient_shiftreg|dffs:1:biti|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[1]~input_o\,
	datab => \dp|quotient_shiftreg|dffs:1:biti|int_q~q\,
	datac => \dp|muxop2|o~5_combout\,
	datad => \cp|selop2_0~0_combout\,
	combout => \dp|muxop2|o[1]~6_combout\);

-- Location: LCCOMB_X67_Y21_N26
\dp|adder_subtractor|yxor[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|yxor\(1) = \cp|sub~combout\ $ (((\dp|muxop2|o[1]~6_combout\) # ((\dp|divisor_shiftreg|dffs:1:biti|int_q~q\ & \cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|divisor_shiftreg|dffs:1:biti|int_q~q\,
	datab => \cp|selop2_0~0_combout\,
	datac => \cp|sub~combout\,
	datad => \dp|muxop2|o[1]~6_combout\,
	combout => \dp|adder_subtractor|yxor\(1));

-- Location: LCCOMB_X66_Y21_N8
\dp|adder_subtractor|addersubtractor:1:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:1:FAi|sum~combout\ = \dp|adder_subtractor|FA0|cout~0_combout\ $ (\dp|adder_subtractor|yxor\(1) $ (((\dp|remainder_reg|reg:1:biti|int_q~q\ & \cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:1:biti|int_q~q\,
	datab => \dp|adder_subtractor|FA0|cout~0_combout\,
	datac => \cp|selop1~0_combout\,
	datad => \dp|adder_subtractor|yxor\(1),
	combout => \dp|adder_subtractor|addersubtractor:1:FAi|sum~combout\);

-- Location: LCCOMB_X66_Y21_N26
\dp|muxA|o[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxA|o[1]~1_combout\ = (\cp|states1to9:2:state_i|int_q~q\ & ((\OperandA[1]~input_o\))) # (!\cp|states1to9:2:state_i|int_q~q\ & (\dp|adder_subtractor|addersubtractor:1:FAi|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:2:state_i|int_q~q\,
	datac => \dp|adder_subtractor|addersubtractor:1:FAi|sum~combout\,
	datad => \OperandA[1]~input_o\,
	combout => \dp|muxA|o[1]~1_combout\);

-- Location: FF_X66_Y21_N27
\dp|remainder_reg|reg:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|muxA|o[1]~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|remainder_reg|reg:1:biti|int_q~q\);

-- Location: LCCOMB_X67_Y21_N10
\dp|adder_subtractor|addersubtractor:1:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\ = (\dp|adder_subtractor|yxor\(1) & ((\dp|adder_subtractor|FA0|cout~0_combout\) # ((\dp|remainder_reg|reg:1:biti|int_q~q\ & \cp|selop1~0_combout\)))) # (!\dp|adder_subtractor|yxor\(1) & 
-- (\dp|remainder_reg|reg:1:biti|int_q~q\ & (\cp|selop1~0_combout\ & \dp|adder_subtractor|FA0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:1:biti|int_q~q\,
	datab => \cp|selop1~0_combout\,
	datac => \dp|adder_subtractor|yxor\(1),
	datad => \dp|adder_subtractor|FA0|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\);

-- Location: LCCOMB_X69_Y21_N12
\dp|quotient_shiftreg|muxes:2:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|quotient_shiftreg|muxes:2:muxi|o~2_combout\ = (\cp|states1to9:7:state_i|int_q~q\ & (((\dp|quotient_shiftreg|dffs:1:biti|int_q~q\)))) # (!\cp|states1to9:7:state_i|int_q~q\ & ((\cp|states1to9:6:state_i|int_q~q\ & 
-- ((\dp|quotient_shiftreg|dffs:1:biti|int_q~q\))) # (!\cp|states1to9:6:state_i|int_q~q\ & (\dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:7:state_i|int_q~q\,
	datab => \cp|states1to9:6:state_i|int_q~q\,
	datac => \dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\,
	datad => \dp|quotient_shiftreg|dffs:1:biti|int_q~q\,
	combout => \dp|quotient_shiftreg|muxes:2:muxi|o~2_combout\);

-- Location: FF_X69_Y21_N13
\dp|quotient_shiftreg|dffs:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|quotient_shiftreg|muxes:2:muxi|o~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|quotient_shiftreg|dffs:2:biti|int_q~q\);

-- Location: LCCOMB_X68_Y21_N28
\dp|muxop2|o[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[2]~7_combout\ = (!\cp|selop2_0~0_combout\ & ((\dp|muxop2|o~5_combout\ & (\OperandA[2]~input_o\)) # (!\dp|muxop2|o~5_combout\ & ((\dp|quotient_shiftreg|dffs:2:biti|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \cp|selop2_0~0_combout\,
	datac => \dp|quotient_shiftreg|dffs:2:biti|int_q~q\,
	datad => \dp|muxop2|o~5_combout\,
	combout => \dp|muxop2|o[2]~7_combout\);

-- Location: LCCOMB_X67_Y21_N4
\dp|adder_subtractor|yxor[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|yxor\(2) = \cp|sub~combout\ $ (((\dp|muxop2|o[2]~7_combout\) # ((\dp|divisor_shiftreg|dffs:2:biti|int_q~q\ & \cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|divisor_shiftreg|dffs:2:biti|int_q~q\,
	datab => \cp|selop2_0~0_combout\,
	datac => \cp|sub~combout\,
	datad => \dp|muxop2|o[2]~7_combout\,
	combout => \dp|adder_subtractor|yxor\(2));

-- Location: LCCOMB_X66_Y21_N2
\dp|adder_subtractor|addersubtractor:2:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\ = \dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\ $ (\dp|adder_subtractor|yxor\(2) $ (((\cp|selop1~0_combout\ & \dp|remainder_reg|reg:2:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|selop1~0_combout\,
	datab => \dp|remainder_reg|reg:2:biti|int_q~q\,
	datac => \dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\,
	datad => \dp|adder_subtractor|yxor\(2),
	combout => \dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\);

-- Location: LCCOMB_X66_Y21_N16
\dp|muxA|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxA|o[2]~2_combout\ = (\cp|states1to9:2:state_i|int_q~q\ & (\OperandA[2]~input_o\)) # (!\cp|states1to9:2:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:2:state_i|int_q~q\,
	datac => \OperandA[2]~input_o\,
	datad => \dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\,
	combout => \dp|muxA|o[2]~2_combout\);

-- Location: FF_X66_Y21_N17
\dp|remainder_reg|reg:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|muxA|o[2]~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|remainder_reg|reg:2:biti|int_q~q\);

-- Location: LCCOMB_X67_Y21_N6
\dp|adder_subtractor|addersubtractor:2:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\ = (\dp|adder_subtractor|yxor\(2) & ((\dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\) # ((\dp|remainder_reg|reg:2:biti|int_q~q\ & \cp|selop1~0_combout\)))) # 
-- (!\dp|adder_subtractor|yxor\(2) & (\dp|remainder_reg|reg:2:biti|int_q~q\ & (\cp|selop1~0_combout\ & \dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:2:biti|int_q~q\,
	datab => \cp|selop1~0_combout\,
	datac => \dp|adder_subtractor|yxor\(2),
	datad => \dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\);

-- Location: LCCOMB_X66_Y21_N20
\dp|adder_subtractor|addersubtractor:3:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\ = \dp|adder_subtractor|yxor\(3) $ (\dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\ $ (((\cp|selop1~0_combout\ & \dp|remainder_reg|reg:3:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|selop1~0_combout\,
	datab => \dp|remainder_reg|reg:3:biti|int_q~q\,
	datac => \dp|adder_subtractor|yxor\(3),
	datad => \dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\);

-- Location: LCCOMB_X69_Y21_N18
\dp|quotient_shiftreg|muxes:3:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|quotient_shiftreg|muxes:3:muxi|o~2_combout\ = (\cp|states1to9:7:state_i|int_q~q\ & (((\dp|quotient_shiftreg|dffs:2:biti|int_q~q\)))) # (!\cp|states1to9:7:state_i|int_q~q\ & ((\cp|states1to9:6:state_i|int_q~q\ & 
-- ((\dp|quotient_shiftreg|dffs:2:biti|int_q~q\))) # (!\cp|states1to9:6:state_i|int_q~q\ & (\dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:7:state_i|int_q~q\,
	datab => \dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\,
	datac => \dp|quotient_shiftreg|dffs:2:biti|int_q~q\,
	datad => \cp|states1to9:6:state_i|int_q~q\,
	combout => \dp|quotient_shiftreg|muxes:3:muxi|o~2_combout\);

-- Location: FF_X69_Y21_N19
\dp|quotient_shiftreg|dffs:3:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|quotient_shiftreg|muxes:3:muxi|o~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|quotient_shiftreg|dffs:3:biti|int_q~q\);

-- Location: LCCOMB_X65_Y21_N0
\dp|quotient_shiftreg|muxes:4:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|quotient_shiftreg|muxes:4:muxi|o~2_combout\ = (\cp|states1to9:7:state_i|int_q~q\ & (((\dp|quotient_shiftreg|dffs:3:biti|int_q~q\)))) # (!\cp|states1to9:7:state_i|int_q~q\ & ((\cp|states1to9:6:state_i|int_q~q\ & 
-- (\dp|quotient_shiftreg|dffs:3:biti|int_q~q\)) # (!\cp|states1to9:6:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:4:FAi|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:7:state_i|int_q~q\,
	datab => \cp|states1to9:6:state_i|int_q~q\,
	datac => \dp|quotient_shiftreg|dffs:3:biti|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:4:FAi|sum~combout\,
	combout => \dp|quotient_shiftreg|muxes:4:muxi|o~2_combout\);

-- Location: FF_X65_Y21_N1
\dp|quotient_shiftreg|dffs:4:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|quotient_shiftreg|muxes:4:muxi|o~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|quotient_shiftreg|dffs:4:biti|int_q~q\);

-- Location: LCCOMB_X68_Y21_N24
\dp|muxop2|o[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[4]~10_combout\ = (!\cp|selop2_0~0_combout\ & ((\dp|muxop2|o[0]~9_combout\ & ((\OperandA[3]~input_o\))) # (!\dp|muxop2|o[0]~9_combout\ & (\dp|quotient_shiftreg|dffs:4:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|quotient_shiftreg|dffs:4:biti|int_q~q\,
	datab => \cp|selop2_0~0_combout\,
	datac => \dp|muxop2|o[0]~9_combout\,
	datad => \OperandA[3]~input_o\,
	combout => \dp|muxop2|o[4]~10_combout\);

-- Location: LCCOMB_X68_Y21_N10
\dp|adder_subtractor|yxor[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|yxor\(4) = \cp|sub~combout\ $ (((\dp|muxop2|o[4]~10_combout\) # ((\dp|divisor_shiftreg|dffs:4:biti|int_q~q\ & \cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|sub~combout\,
	datab => \dp|divisor_shiftreg|dffs:4:biti|int_q~q\,
	datac => \cp|selop2_0~0_combout\,
	datad => \dp|muxop2|o[4]~10_combout\,
	combout => \dp|adder_subtractor|yxor\(4));

-- Location: LCCOMB_X67_Y21_N16
\dp|adder_subtractor|addersubtractor:3:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\ = (\dp|adder_subtractor|yxor\(3) & ((\dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\) # ((\dp|remainder_reg|reg:3:biti|int_q~q\ & \cp|selop1~0_combout\)))) # 
-- (!\dp|adder_subtractor|yxor\(3) & (\dp|remainder_reg|reg:3:biti|int_q~q\ & (\cp|selop1~0_combout\ & \dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:3:biti|int_q~q\,
	datab => \cp|selop1~0_combout\,
	datac => \dp|adder_subtractor|yxor\(3),
	datad => \dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\);

-- Location: LCCOMB_X66_Y21_N6
\dp|adder_subtractor|addersubtractor:4:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:4:FAi|sum~combout\ = \dp|adder_subtractor|yxor\(4) $ (\dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\ $ (((\dp|remainder_reg|reg:4:biti|int_q~q\ & \cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|adder_subtractor|yxor\(4),
	datab => \dp|remainder_reg|reg:4:biti|int_q~q\,
	datac => \cp|selop1~0_combout\,
	datad => \dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:4:FAi|sum~combout\);

-- Location: LCCOMB_X66_Y21_N0
\dp|muxA|o[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxA|o[4]~4_combout\ = (\cp|states1to9:2:state_i|int_q~q\ & (\OperandA[3]~input_o\)) # (!\cp|states1to9:2:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:4:FAi|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandA[3]~input_o\,
	datac => \cp|states1to9:2:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:4:FAi|sum~combout\,
	combout => \dp|muxA|o[4]~4_combout\);

-- Location: FF_X66_Y21_N1
\dp|remainder_reg|reg:4:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|muxA|o[4]~4_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|remainder_reg|reg:4:biti|int_q~q\);

-- Location: LCCOMB_X67_Y21_N18
\dp|adder_subtractor|addersubtractor:4:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\ = (\dp|adder_subtractor|yxor\(4) & ((\dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\) # ((\dp|remainder_reg|reg:4:biti|int_q~q\ & \cp|selop1~0_combout\)))) # 
-- (!\dp|adder_subtractor|yxor\(4) & (\dp|remainder_reg|reg:4:biti|int_q~q\ & (\cp|selop1~0_combout\ & \dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:4:biti|int_q~q\,
	datab => \cp|selop1~0_combout\,
	datac => \dp|adder_subtractor|yxor\(4),
	datad => \dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\);

-- Location: LCCOMB_X69_Y21_N0
\dp|quotient_shiftreg|muxes:5:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|quotient_shiftreg|muxes:5:muxi|o~2_combout\ = (\cp|states1to9:7:state_i|int_q~q\ & (((\dp|quotient_shiftreg|dffs:4:biti|int_q~q\)))) # (!\cp|states1to9:7:state_i|int_q~q\ & ((\cp|states1to9:6:state_i|int_q~q\ & 
-- (\dp|quotient_shiftreg|dffs:4:biti|int_q~q\)) # (!\cp|states1to9:6:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:5:FAi|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:7:state_i|int_q~q\,
	datab => \cp|states1to9:6:state_i|int_q~q\,
	datac => \dp|quotient_shiftreg|dffs:4:biti|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:5:FAi|sum~combout\,
	combout => \dp|quotient_shiftreg|muxes:5:muxi|o~2_combout\);

-- Location: FF_X69_Y21_N1
\dp|quotient_shiftreg|dffs:5:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|quotient_shiftreg|muxes:5:muxi|o~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|quotient_shiftreg|dffs:5:biti|int_q~q\);

-- Location: LCCOMB_X69_Y21_N14
\dp|muxop2|o[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[5]~11_combout\ = (!\cp|selop2_0~0_combout\ & ((\dp|muxop2|o[0]~9_combout\ & ((\OperandA[3]~input_o\))) # (!\dp|muxop2|o[0]~9_combout\ & (\dp|quotient_shiftreg|dffs:5:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|muxop2|o[0]~9_combout\,
	datab => \dp|quotient_shiftreg|dffs:5:biti|int_q~q\,
	datac => \OperandA[3]~input_o\,
	datad => \cp|selop2_0~0_combout\,
	combout => \dp|muxop2|o[5]~11_combout\);

-- Location: LCCOMB_X69_Y21_N8
\dp|adder_subtractor|yxor[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|yxor\(5) = \cp|sub~combout\ $ (((\dp|muxop2|o[5]~11_combout\) # ((\cp|selop2_0~0_combout\ & \dp|divisor_shiftreg|dffs:5:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|sub~combout\,
	datab => \cp|selop2_0~0_combout\,
	datac => \dp|muxop2|o[5]~11_combout\,
	datad => \dp|divisor_shiftreg|dffs:5:biti|int_q~q\,
	combout => \dp|adder_subtractor|yxor\(5));

-- Location: LCCOMB_X70_Y21_N18
\dp|adder_subtractor|addersubtractor:5:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:5:FAi|sum~combout\ = \dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\ $ (\dp|adder_subtractor|yxor\(5) $ (((\cp|selop1~0_combout\ & \dp|remainder_reg|reg:5:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|selop1~0_combout\,
	datab => \dp|remainder_reg|reg:5:biti|int_q~q\,
	datac => \dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\,
	datad => \dp|adder_subtractor|yxor\(5),
	combout => \dp|adder_subtractor|addersubtractor:5:FAi|sum~combout\);

-- Location: LCCOMB_X70_Y21_N8
\dp|muxA|o[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxA|o[5]~5_combout\ = (\cp|states1to9:2:state_i|int_q~q\ & (\OperandA[3]~input_o\)) # (!\cp|states1to9:2:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:5:FAi|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:2:state_i|int_q~q\,
	datac => \OperandA[3]~input_o\,
	datad => \dp|adder_subtractor|addersubtractor:5:FAi|sum~combout\,
	combout => \dp|muxA|o[5]~5_combout\);

-- Location: FF_X70_Y21_N9
\dp|remainder_reg|reg:5:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|muxA|o[5]~5_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|remainder_reg|reg:5:biti|int_q~q\);

-- Location: LCCOMB_X67_Y21_N20
\dp|adder_subtractor|addersubtractor:5:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\ = (\dp|adder_subtractor|yxor\(5) & ((\dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\) # ((\dp|remainder_reg|reg:5:biti|int_q~q\ & \cp|selop1~0_combout\)))) # 
-- (!\dp|adder_subtractor|yxor\(5) & (\dp|remainder_reg|reg:5:biti|int_q~q\ & (\cp|selop1~0_combout\ & \dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:5:biti|int_q~q\,
	datab => \cp|selop1~0_combout\,
	datac => \dp|adder_subtractor|yxor\(5),
	datad => \dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\);

-- Location: LCCOMB_X67_Y21_N14
\dp|adder_subtractor|addersubtractor:6:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:6:FAi|sum~combout\ = \dp|adder_subtractor|yxor\(6) $ (\dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\ $ (((\dp|remainder_reg|reg:6:biti|int_q~q\ & \cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:6:biti|int_q~q\,
	datab => \dp|adder_subtractor|yxor\(6),
	datac => \cp|selop1~0_combout\,
	datad => \dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:6:FAi|sum~combout\);

-- Location: LCCOMB_X66_Y21_N18
\dp|muxA|o[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxA|o[6]~6_combout\ = (\cp|states1to9:2:state_i|int_q~q\ & (\OperandA[3]~input_o\)) # (!\cp|states1to9:2:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:6:FAi|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:2:state_i|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datac => \dp|adder_subtractor|addersubtractor:6:FAi|sum~combout\,
	combout => \dp|muxA|o[6]~6_combout\);

-- Location: FF_X66_Y21_N19
\dp|remainder_reg|reg:6:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|muxA|o[6]~6_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|remainder_reg|reg:6:biti|int_q~q\);

-- Location: LCCOMB_X67_Y21_N28
\dp|adder_subtractor|addersubtractor:6:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\ = (\dp|adder_subtractor|yxor\(6) & ((\dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\) # ((\dp|remainder_reg|reg:6:biti|int_q~q\ & \cp|selop1~0_combout\)))) # 
-- (!\dp|adder_subtractor|yxor\(6) & (\dp|remainder_reg|reg:6:biti|int_q~q\ & (\cp|selop1~0_combout\ & \dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|remainder_reg|reg:6:biti|int_q~q\,
	datab => \dp|adder_subtractor|yxor\(6),
	datac => \cp|selop1~0_combout\,
	datad => \dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\);

-- Location: LCCOMB_X67_Y21_N12
\cp|state_input[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input\(7) = (\cp|states1to9:5:state_i|int_q~q\ & (\dp|muxop2|o[7]~14_combout\ $ (\cp|state_input[7]~4_combout\ $ (\dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|muxop2|o[7]~14_combout\,
	datab => \cp|state_input[7]~4_combout\,
	datac => \cp|states1to9:5:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\,
	combout => \cp|state_input\(7));

-- Location: FF_X67_Y21_N13
\cp|states1to9:7:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \cp|state_input\(7),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|states1to9:7:state_i|int_q~q\);

-- Location: LCCOMB_X69_Y21_N26
\dp|quotient_shiftreg|muxes:6:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|quotient_shiftreg|muxes:6:muxi|o~2_combout\ = (\cp|states1to9:7:state_i|int_q~q\ & (\dp|quotient_shiftreg|dffs:5:biti|int_q~q\)) # (!\cp|states1to9:7:state_i|int_q~q\ & ((\cp|states1to9:6:state_i|int_q~q\ & 
-- (\dp|quotient_shiftreg|dffs:5:biti|int_q~q\)) # (!\cp|states1to9:6:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:6:FAi|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:7:state_i|int_q~q\,
	datab => \dp|quotient_shiftreg|dffs:5:biti|int_q~q\,
	datac => \cp|states1to9:6:state_i|int_q~q\,
	datad => \dp|adder_subtractor|addersubtractor:6:FAi|sum~combout\,
	combout => \dp|quotient_shiftreg|muxes:6:muxi|o~2_combout\);

-- Location: FF_X69_Y21_N27
\dp|quotient_shiftreg|dffs:6:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|quotient_shiftreg|muxes:6:muxi|o~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|quotient_shiftreg|dffs:6:biti|int_q~q\);

-- Location: LCCOMB_X67_Y21_N0
\dp|quotient_shiftreg|muxn_1|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|quotient_shiftreg|muxn_1|o~2_combout\ = (\cp|states1to9:6:state_i|int_q~q\ & (\dp|quotient_shiftreg|dffs:6:biti|int_q~q\)) # (!\cp|states1to9:6:state_i|int_q~q\ & ((\cp|states1to9:7:state_i|int_q~q\ & (\dp|quotient_shiftreg|dffs:6:biti|int_q~q\)) # 
-- (!\cp|states1to9:7:state_i|int_q~q\ & ((\dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:6:state_i|int_q~q\,
	datab => \dp|quotient_shiftreg|dffs:6:biti|int_q~q\,
	datac => \dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\,
	datad => \cp|states1to9:7:state_i|int_q~q\,
	combout => \dp|quotient_shiftreg|muxn_1|o~2_combout\);

-- Location: FF_X67_Y21_N1
\dp|quotient_shiftreg|dffs:7:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|quotient_shiftreg|muxn_1|o~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|quotient_shiftreg|dffs:7:biti|int_q~q\);

-- Location: LCCOMB_X69_Y21_N2
\dp|muxop2|o[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[7]~13_combout\ = (!\cp|selop2_0~0_combout\ & ((\dp|muxop2|o[0]~9_combout\ & ((\OperandA[3]~input_o\))) # (!\dp|muxop2|o[0]~9_combout\ & (\dp|quotient_shiftreg|dffs:7:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|quotient_shiftreg|dffs:7:biti|int_q~q\,
	datab => \cp|selop2_0~0_combout\,
	datac => \OperandA[3]~input_o\,
	datad => \dp|muxop2|o[0]~9_combout\,
	combout => \dp|muxop2|o[7]~13_combout\);

-- Location: LCCOMB_X66_Y21_N10
\dp|muxop2|o[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|muxop2|o[7]~14_combout\ = (\dp|muxop2|o[7]~13_combout\) # ((!\cp|states1to9:1:state_i|int_q~q\ & (!\cp|states1to9:9:state_i|int_q~q\ & \dp|divisor_shiftreg|dffs:7:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:1:state_i|int_q~q\,
	datab => \cp|states1to9:9:state_i|int_q~q\,
	datac => \dp|muxop2|o[7]~13_combout\,
	datad => \dp|divisor_shiftreg|dffs:7:biti|int_q~q\,
	combout => \dp|muxop2|o[7]~14_combout\);

-- Location: LCCOMB_X67_Y21_N22
\dp|adder_subtractor|addersubtractor:7:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\ = \dp|muxop2|o[7]~14_combout\ $ (\dp|muxop1|o[7]~0_combout\ $ (\cp|sub~combout\ $ (\dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|muxop2|o[7]~14_combout\,
	datab => \dp|muxop1|o[7]~0_combout\,
	datac => \cp|sub~combout\,
	datad => \dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\,
	combout => \dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\);

-- Location: LCCOMB_X67_Y21_N30
\cp|state_input[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input\(6) = (\cp|states1to9:5:state_i|int_q~q\ & !\dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:5:state_i|int_q~q\,
	datac => \dp|adder_subtractor|addersubtractor:7:FAi|sum~combout\,
	combout => \cp|state_input\(6));

-- Location: FF_X67_Y21_N31
\cp|states1to9:6:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \cp|state_input\(6),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|states1to9:6:state_i|int_q~q\);

-- Location: LCCOMB_X69_Y21_N16
\cp|shiftQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|shiftQ~0_combout\ = (\cp|states1to9:6:state_i|int_q~q\) # (\cp|states1to9:7:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|states1to9:6:state_i|int_q~q\,
	datad => \cp|states1to9:7:state_i|int_q~q\,
	combout => \cp|shiftQ~0_combout\);

-- Location: FF_X69_Y21_N17
\cp|states1to9:8:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \cp|shiftQ~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|states1to9:8:state_i|int_q~q\);

-- Location: LCCOMB_X69_Y21_N6
\cp|state_input~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input~3_combout\ = (\cp|states1to9:3:state_i|int_q~q\) # ((\cp|states1to9:4:state_i|int_q~q\) # (\cp|states1to9:8:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:3:state_i|int_q~q\,
	datab => \cp|states1to9:4:state_i|int_q~q\,
	datad => \cp|states1to9:8:state_i|int_q~q\,
	combout => \cp|state_input~3_combout\);

-- Location: LCCOMB_X70_Y21_N12
\dp|counter|reg|reg:2:biti|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|counter|reg|reg:2:biti|int_q~0_combout\ = \dp|counter|reg|reg:2:biti|int_q~q\ $ (((\dp|counter|reg|reg:1:biti|int_q~q\ & (\dp|counter|reg|reg:0:biti|int_q~q\ & \cp|states1to9:5:state_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter|reg|reg:1:biti|int_q~q\,
	datab => \dp|counter|reg|reg:0:biti|int_q~q\,
	datac => \dp|counter|reg|reg:2:biti|int_q~q\,
	datad => \cp|states1to9:5:state_i|int_q~q\,
	combout => \dp|counter|reg|reg:2:biti|int_q~0_combout\);

-- Location: FF_X69_Y21_N7
\dp|counter|reg|reg:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dp|counter|reg|reg:2:biti|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|counter|reg|reg:2:biti|int_q~q\);

-- Location: LCCOMB_X69_Y21_N30
\cp|state_input[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input[5]~5_combout\ = (\cp|state_input~3_combout\ & (((\dp|counter|reg|reg:1:biti|int_q~q\) # (!\dp|counter|reg|reg:2:biti|int_q~q\)) # (!\dp|counter|reg|reg:0:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state_input~3_combout\,
	datab => \dp|counter|reg|reg:0:biti|int_q~q\,
	datac => \dp|counter|reg|reg:1:biti|int_q~q\,
	datad => \dp|counter|reg|reg:2:biti|int_q~q\,
	combout => \cp|state_input[5]~5_combout\);

-- Location: FF_X68_Y21_N19
\cp|states1to9:5:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \cp|state_input[5]~5_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|states1to9:5:state_i|int_q~q\);

-- Location: LCCOMB_X70_Y21_N14
\dp|counter|reg|reg:0:biti|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|counter|reg|reg:0:biti|int_q~0_combout\ = \cp|states1to9:5:state_i|int_q~q\ $ (\dp|counter|reg|reg:0:biti|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:5:state_i|int_q~q\,
	datad => \dp|counter|reg|reg:0:biti|int_q~q\,
	combout => \dp|counter|reg|reg:0:biti|int_q~0_combout\);

-- Location: FF_X69_Y21_N29
\dp|counter|reg|reg:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dp|counter|reg|reg:0:biti|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|counter|reg|reg:0:biti|int_q~q\);

-- Location: LCCOMB_X70_Y21_N20
\dp|counter|reg|reg:1:biti|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|counter|reg|reg:1:biti|int_q~0_combout\ = \dp|counter|reg|reg:1:biti|int_q~q\ $ (((\dp|counter|reg|reg:0:biti|int_q~q\ & \cp|states1to9:5:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|counter|reg|reg:0:biti|int_q~q\,
	datac => \dp|counter|reg|reg:1:biti|int_q~q\,
	datad => \cp|states1to9:5:state_i|int_q~q\,
	combout => \dp|counter|reg|reg:1:biti|int_q~0_combout\);

-- Location: FF_X69_Y21_N31
\dp|counter|reg|reg:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dp|counter|reg|reg:1:biti|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|counter|reg|reg:1:biti|int_q~q\);

-- Location: LCCOMB_X69_Y21_N28
\cp|state_input[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input[9]~1_combout\ = (!\dp|counter|reg|reg:1:biti|int_q~q\ & (\cp|states1to9:8:state_i|int_q~q\ & (\dp|counter|reg|reg:0:biti|int_q~q\ & \dp|counter|reg|reg:2:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|counter|reg|reg:1:biti|int_q~q\,
	datab => \cp|states1to9:8:state_i|int_q~q\,
	datac => \dp|counter|reg|reg:0:biti|int_q~q\,
	datad => \dp|counter|reg|reg:2:biti|int_q~q\,
	combout => \cp|state_input[9]~1_combout\);

-- Location: LCCOMB_X70_Y21_N0
\cp|state_input[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state_input[9]~2_combout\ = (\cp|state_input[9]~1_combout\ & (\OperandB[3]~input_o\ $ (\OperandA[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandB[3]~input_o\,
	datac => \OperandA[3]~input_o\,
	datad => \cp|state_input[9]~1_combout\,
	combout => \cp|state_input[9]~2_combout\);

-- Location: FF_X68_Y21_N13
\cp|states1to9:9:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \cp|state_input[9]~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|states1to9:9:state_i|int_q~q\);

-- Location: LCCOMB_X69_Y21_N24
\dp|quotient_shiftreg|mux0|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|quotient_shiftreg|mux0|o~2_combout\ = (\cp|states1to9:6:state_i|int_q~q\) # ((\cp|states1to9:7:state_i|int_q~q\ & (\cp|states1to9:9:state_i|int_q~q\)) # (!\cp|states1to9:7:state_i|int_q~q\ & ((\dp|adder_subtractor|FA0|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|states1to9:9:state_i|int_q~q\,
	datab => \cp|states1to9:6:state_i|int_q~q\,
	datac => \dp|adder_subtractor|FA0|sum~0_combout\,
	datad => \cp|states1to9:7:state_i|int_q~q\,
	combout => \dp|quotient_shiftreg|mux0|o~2_combout\);

-- Location: FF_X69_Y21_N25
\dp|quotient_shiftreg|dffs:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dp|quotient_shiftreg|mux0|o~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	ena => \dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|quotient_shiftreg|dffs:0:biti|int_q~q\);

ww_QuotientOut(0) <= \QuotientOut[0]~output_o\;

ww_QuotientOut(1) <= \QuotientOut[1]~output_o\;

ww_QuotientOut(2) <= \QuotientOut[2]~output_o\;

ww_QuotientOut(3) <= \QuotientOut[3]~output_o\;

ww_QuotientOut(4) <= \QuotientOut[4]~output_o\;

ww_QuotientOut(5) <= \QuotientOut[5]~output_o\;

ww_QuotientOut(6) <= \QuotientOut[6]~output_o\;

ww_QuotientOut(7) <= \QuotientOut[7]~output_o\;

ww_RemainderOut(0) <= \RemainderOut[0]~output_o\;

ww_RemainderOut(1) <= \RemainderOut[1]~output_o\;

ww_RemainderOut(2) <= \RemainderOut[2]~output_o\;

ww_RemainderOut(3) <= \RemainderOut[3]~output_o\;

ww_RemainderOut(4) <= \RemainderOut[4]~output_o\;

ww_RemainderOut(5) <= \RemainderOut[5]~output_o\;

ww_RemainderOut(6) <= \RemainderOut[6]~output_o\;

ww_RemainderOut(7) <= \RemainderOut[7]~output_o\;
END structure;


