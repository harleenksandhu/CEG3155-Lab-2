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

-- DATE "10/24/2024 16:57:36"

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

ENTITY 	alu_top IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR17 : IN std_logic;
	LEDR16 : IN std_logic;
	LEDR15 : IN std_logic;
	LEDR14 : IN std_logic;
	LEDR13 : IN std_logic;
	LEDR12 : IN std_logic;
	LEDR11 : IN std_logic;
	LEDR10 : IN std_logic;
	LEDR1 : IN std_logic;
	LEDR0 : IN std_logic;
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 5)
	);
END alu_top;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR0	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR14	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR10	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR1	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR15	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR11	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR16	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR12	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR17	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR13	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR17 : std_logic;
SIGNAL ww_LEDR16 : std_logic;
SIGNAL ww_LEDR15 : std_logic;
SIGNAL ww_LEDR14 : std_logic;
SIGNAL ww_LEDR13 : std_logic;
SIGNAL ww_LEDR12 : std_logic;
SIGNAL ww_LEDR11 : std_logic;
SIGNAL ww_LEDR10 : std_logic;
SIGNAL ww_LEDR1 : std_logic;
SIGNAL ww_LEDR0 : std_logic;
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 5);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDR0~input_o\ : std_logic;
SIGNAL \LEDR1~input_o\ : std_logic;
SIGNAL \LEDR15~input_o\ : std_logic;
SIGNAL \LEDR11~input_o\ : std_logic;
SIGNAL \LEDR14~input_o\ : std_logic;
SIGNAL \LEDR10~input_o\ : std_logic;
SIGNAL \inst|addsub|FA0|cout~1_combout\ : std_logic;
SIGNAL \inst|addsub|FA0|cout~0_combout\ : std_logic;
SIGNAL \inst|addsub|addersubtractor:1:FAi|sum~combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst|divider|dp|counter|reg|reg:0:biti|int_q~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|counter|reg|reg:0:biti|int_q~feeder_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst|divider|dp|counter|reg|reg:0:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|counter|reg|reg:1:biti|int_q~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|counter|reg|reg:1:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|counter|reg|reg:2:biti|int_q~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|counter|reg|reg:2:biti|int_q~q\ : std_logic;
SIGNAL \LEDR17~input_o\ : std_logic;
SIGNAL \inst|divider|cp|state0|int_q~q\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:2:state_i|int_q~q\ : std_logic;
SIGNAL \LEDR13~input_o\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:1:state_i|int_q~q\ : std_logic;
SIGNAL \inst|divider|cp|state_input[4]~5_combout\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:4:state_i|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxn_1|o~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|dffs:7:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|cp|state_input[3]~0_combout\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:3:state_i|int_q~feeder_combout\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:3:state_i|int_q~q\ : std_logic;
SIGNAL \inst|divider|cp|selop2_1~combout\ : std_logic;
SIGNAL \inst|divider|cp|state_input[9]~1_combout\ : std_logic;
SIGNAL \inst|divider|cp|state_input[9]~2_combout\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:9:state_i|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[3]~9_combout\ : std_logic;
SIGNAL \LEDR16~input_o\ : std_logic;
SIGNAL \inst|divider|cp|sub~0_combout\ : std_logic;
SIGNAL \LEDR12~input_o\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxA|o[6]~5_combout\ : std_logic;
SIGNAL \inst|divider|cp|loadR~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|remainder_reg|reg:6:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|cp|selop1~0_combout\ : std_logic;
SIGNAL \inst|divider|cp|selop2_0~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[6]~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[6]~3_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[5]~4_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[5]~5_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[4]~6_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[4]~7_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[3]~8_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxA|o[2]~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxes:1:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|dffs:1:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[1]~11_combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|mux0|o~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|int_en~combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|mux0|o~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|dffs:0:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[0]~12_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[0]~13_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|FA0|sum~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxA|o[0]~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|FA0|cout~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxA|o[1]~1_combout\ : std_logic;
SIGNAL \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\ : std_logic;
SIGNAL \inst|divider|dp|muxA|o[3]~3_combout\ : std_logic;
SIGNAL \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxA|o[4]~7_combout\ : std_logic;
SIGNAL \inst|divider|dp|remainder_reg|reg:4:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxA|o[5]~6_combout\ : std_logic;
SIGNAL \inst|divider|dp|remainder_reg|reg:5:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~1_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|dffs:6:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~1_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|dffs:5:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~1_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|dffs:4:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxes:3:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|dffs:3:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|muxes:2:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|divisor_shiftreg|dffs:2:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[2]~10_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|muxes:2:muxi|o~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|muxes:3:muxi|o~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|muxes:4:muxi|o~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|dffs:4:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|muxes:5:muxi|o~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|dffs:5:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|muxes:6:muxi|o~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|dffs:6:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|muxn_1|o~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|dffs:7:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[7]~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxop2|o[7]~1_combout\ : std_logic;
SIGNAL \inst|divider|dp|muxA|o[7]~4_combout\ : std_logic;
SIGNAL \inst|divider|dp|remainder_reg|reg:7:biti|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:7:state_i|int_q~q\ : std_logic;
SIGNAL \inst|divider|cp|shiftQ~0_combout\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:8:state_i|int_q~q\ : std_logic;
SIGNAL \inst|divider|cp|state_input~3_combout\ : std_logic;
SIGNAL \inst|divider|cp|state_input[5]~4_combout\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:5:state_i|int_q~q\ : std_logic;
SIGNAL \inst|divider|cp|states1to9:6:state_i|int_q~q\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|muxes:1:muxi|o~2_combout\ : std_logic;
SIGNAL \inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\ : std_logic;
SIGNAL \inst|mux|o[1]~1_combout\ : std_logic;
SIGNAL \inst|addsub|addersubtractor:1:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|addsub|addersubtractor:2:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|mux|o[2]~2_combout\ : std_logic;
SIGNAL \inst|addsub|addersubtractor:2:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|addsub|addersubtractor:3:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|mux|o[3]~3_combout\ : std_logic;
SIGNAL \inst|addsub|FA0|sum~0_combout\ : std_logic;
SIGNAL \inst|mux|o[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~3_combout\ : std_logic;
SIGNAL \inst3|Mux6~6_combout\ : std_logic;
SIGNAL \inst3|Mux5~3_combout\ : std_logic;
SIGNAL \inst3|Mux5~6_combout\ : std_logic;
SIGNAL \inst3|Mux4~3_combout\ : std_logic;
SIGNAL \inst3|Mux4~6_combout\ : std_logic;
SIGNAL \inst3|Mux3~3_combout\ : std_logic;
SIGNAL \inst3|Mux3~6_combout\ : std_logic;
SIGNAL \inst3|Mux2~3_combout\ : std_logic;
SIGNAL \inst3|Mux2~6_combout\ : std_logic;
SIGNAL \inst3|Mux1~3_combout\ : std_logic;
SIGNAL \inst3|Mux1~6_combout\ : std_logic;
SIGNAL \inst3|Mux0~3_combout\ : std_logic;
SIGNAL \inst3|Mux0~6_combout\ : std_logic;
SIGNAL \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|multiplier|cp|state_input[5]~0_combout\ : std_logic;
SIGNAL \inst|multiplier|cp|states1to9:5:state_i|int_q~feeder_combout\ : std_logic;
SIGNAL \inst|multiplier|cp|states1to9:5:state_i|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|cp|states1to9:6:state_i|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|mux0|o~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|muxes:1:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|muxes:2:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|muxes:3:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|muxes:4:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|muxes:5:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|muxes:6:muxi|o~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|muxn_1|o~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|multiplicand_shiftreg|dffs:7:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|muxA_or_0|o[7]~1_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|regP|reg:5:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|regP|reg:3:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|regP|reg:1:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|regP|reg:0:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|muxA_or_0|o[0]~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|muxP|o[0]~8_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|muxP|o[1]~9_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|FA0|cout~combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|regP|reg:2:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|muxP|o[2]~10_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|muxP|o[3]~11_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|sum~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|regP|reg:4:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|muxP|o[4]~12_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|muxP|o[5]~13_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|muxP|o[6]~14_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|regP|reg:6:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|z~0_combout\ : std_logic;
SIGNAL \inst|multiplier|cp|state_input[8]~2_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|z~1_combout\ : std_logic;
SIGNAL \inst|multiplier|cp|states1to9:7:state_i|int_q~feeder_combout\ : std_logic;
SIGNAL \inst|multiplier|cp|states1to9:7:state_i|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|cp|state_input[8]~3_combout\ : std_logic;
SIGNAL \inst|multiplier|cp|states1to9:8:state_i|int_q~feeder_combout\ : std_logic;
SIGNAL \inst|multiplier|cp|states1to9:8:state_i|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|cp|state_input[9]~1_combout\ : std_logic;
SIGNAL \inst|multiplier|cp|states1to9:9:state_i|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|cp|loadP~combout\ : std_logic;
SIGNAL \inst|multiplier|dp|regP|reg:7:biti|int_q~q\ : std_logic;
SIGNAL \inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|multiplier|dp|muxP|o[7]~15_combout\ : std_logic;
SIGNAL \inst|OverflowOut~0_combout\ : std_logic;
SIGNAL \inst|OverflowOut~1_combout\ : std_logic;
SIGNAL \inst|ZeroOut~0_combout\ : std_logic;
SIGNAL \inst|ZeroOut~1_combout\ : std_logic;
SIGNAL \inst|ZeroOut~2_combout\ : std_logic;
SIGNAL \inst|ZeroOut~3_combout\ : std_logic;
SIGNAL \inst|addsub|addersubtractor:3:FAi|cout~0_combout\ : std_logic;
SIGNAL \inst|CarryOut~combout\ : std_logic;
SIGNAL \inst|addsub|yxor\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|divider|dp|adder_subtractor|yxor\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|divider|cp|state_input\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|multiplier|cp|state_input\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux6~6_combout\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_LEDR17 <= LEDR17;
ww_LEDR16 <= LEDR16;
ww_LEDR15 <= LEDR15;
ww_LEDR14 <= LEDR14;
ww_LEDR13 <= LEDR13;
ww_LEDR12 <= LEDR12;
ww_LEDR11 <= LEDR11;
ww_LEDR10 <= LEDR10;
ww_LEDR1 <= LEDR1;
ww_LEDR0 <= LEDR0;
HEX1 <= ww_HEX1;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\inst2|ALT_INV_Mux6~0_combout\ <= NOT \inst2|Mux6~0_combout\;
\inst3|ALT_INV_Mux6~6_combout\ <= NOT \inst3|Mux6~6_combout\;

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux6~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux5~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux4~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux0~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|OverflowOut~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ZeroOut~3_combout\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|CarryOut~combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOIBUF_X115_Y35_N22
\LEDR0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR0,
	o => \LEDR0~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\LEDR1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR1,
	o => \LEDR1~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\LEDR15~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR15,
	o => \LEDR15~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\LEDR11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR11,
	o => \LEDR11~input_o\);

-- Location: LCCOMB_X112_Y41_N20
\inst|addsub|yxor[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|yxor\(1) = \LEDR11~input_o\ $ (\LEDR0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDR11~input_o\,
	datac => \LEDR0~input_o\,
	combout => \inst|addsub|yxor\(1));

-- Location: IOIBUF_X115_Y36_N1
\LEDR14~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR14,
	o => \LEDR14~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\LEDR10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR10,
	o => \LEDR10~input_o\);

-- Location: LCCOMB_X112_Y41_N8
\inst|addsub|FA0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|FA0|cout~1_combout\ = (\LEDR14~input_o\ & ((\LEDR0~input_o\) # (\LEDR10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR0~input_o\,
	datab => \LEDR14~input_o\,
	datac => \LEDR10~input_o\,
	combout => \inst|addsub|FA0|cout~1_combout\);

-- Location: LCCOMB_X112_Y41_N10
\inst|addsub|FA0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|FA0|cout~0_combout\ = (!\LEDR10~input_o\ & \LEDR0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDR10~input_o\,
	datac => \LEDR0~input_o\,
	combout => \inst|addsub|FA0|cout~0_combout\);

-- Location: LCCOMB_X112_Y41_N22
\inst|addsub|addersubtractor:1:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|addersubtractor:1:FAi|sum~combout\ = \LEDR15~input_o\ $ (\inst|addsub|yxor\(1) $ (((\inst|addsub|FA0|cout~1_combout\) # (\inst|addsub|FA0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR15~input_o\,
	datab => \inst|addsub|yxor\(1),
	datac => \inst|addsub|FA0|cout~1_combout\,
	datad => \inst|addsub|FA0|cout~0_combout\,
	combout => \inst|addsub|addersubtractor:1:FAi|sum~combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X113_Y39_N20
\inst|divider|dp|counter|reg|reg:0:biti|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|counter|reg|reg:0:biti|int_q~0_combout\ = \inst|divider|cp|states1to9:5:state_i|int_q~q\ $ (\inst|divider|dp|counter|reg|reg:0:biti|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|divider|cp|states1to9:5:state_i|int_q~q\,
	datad => \inst|divider|dp|counter|reg|reg:0:biti|int_q~q\,
	combout => \inst|divider|dp|counter|reg|reg:0:biti|int_q~0_combout\);

-- Location: LCCOMB_X114_Y39_N26
\inst|divider|dp|counter|reg|reg:0:biti|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|counter|reg|reg:0:biti|int_q~feeder_combout\ = \inst|divider|dp|counter|reg|reg:0:biti|int_q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|divider|dp|counter|reg|reg:0:biti|int_q~0_combout\,
	combout => \inst|divider|dp|counter|reg|reg:0:biti|int_q~feeder_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X114_Y39_N27
\inst|divider|dp|counter|reg|reg:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|counter|reg|reg:0:biti|int_q~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|counter|reg|reg:0:biti|int_q~q\);

-- Location: LCCOMB_X114_Y39_N4
\inst|divider|dp|counter|reg|reg:1:biti|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|counter|reg|reg:1:biti|int_q~0_combout\ = \inst|divider|dp|counter|reg|reg:1:biti|int_q~q\ $ (((\inst|divider|dp|counter|reg|reg:0:biti|int_q~q\ & \inst|divider|cp|states1to9:5:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|counter|reg|reg:0:biti|int_q~q\,
	datac => \inst|divider|dp|counter|reg|reg:1:biti|int_q~q\,
	datad => \inst|divider|cp|states1to9:5:state_i|int_q~q\,
	combout => \inst|divider|dp|counter|reg|reg:1:biti|int_q~0_combout\);

-- Location: FF_X114_Y39_N5
\inst|divider|dp|counter|reg|reg:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|counter|reg|reg:1:biti|int_q~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|counter|reg|reg:1:biti|int_q~q\);

-- Location: LCCOMB_X114_Y39_N24
\inst|divider|dp|counter|reg|reg:2:biti|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|counter|reg|reg:2:biti|int_q~0_combout\ = \inst|divider|dp|counter|reg|reg:2:biti|int_q~q\ $ (((\inst|divider|dp|counter|reg|reg:0:biti|int_q~q\ & (\inst|divider|dp|counter|reg|reg:1:biti|int_q~q\ & 
-- \inst|divider|cp|states1to9:5:state_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|counter|reg|reg:0:biti|int_q~q\,
	datab => \inst|divider|dp|counter|reg|reg:1:biti|int_q~q\,
	datac => \inst|divider|dp|counter|reg|reg:2:biti|int_q~q\,
	datad => \inst|divider|cp|states1to9:5:state_i|int_q~q\,
	combout => \inst|divider|dp|counter|reg|reg:2:biti|int_q~0_combout\);

-- Location: FF_X114_Y39_N25
\inst|divider|dp|counter|reg|reg:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|counter|reg|reg:2:biti|int_q~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|counter|reg|reg:2:biti|int_q~q\);

-- Location: IOIBUF_X115_Y40_N1
\LEDR17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR17,
	o => \LEDR17~input_o\);

-- Location: FF_X114_Y40_N23
\inst|divider|cp|state0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|state0|int_q~q\);

-- Location: LCCOMB_X114_Y39_N28
\inst|divider|cp|state_input[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input\(2) = (!\LEDR17~input_o\ & \inst|divider|cp|state0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR17~input_o\,
	datad => \inst|divider|cp|state0|int_q~q\,
	combout => \inst|divider|cp|state_input\(2));

-- Location: FF_X114_Y39_N29
\inst|divider|cp|states1to9:2:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|cp|state_input\(2),
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|states1to9:2:state_i|int_q~q\);

-- Location: IOIBUF_X115_Y36_N15
\LEDR13~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR13,
	o => \LEDR13~input_o\);

-- Location: LCCOMB_X114_Y39_N30
\inst|divider|cp|state_input[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input\(1) = (\LEDR17~input_o\ & \inst|divider|cp|state0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR17~input_o\,
	datad => \inst|divider|cp|state0|int_q~q\,
	combout => \inst|divider|cp|state_input\(1));

-- Location: FF_X112_Y38_N29
\inst|divider|cp|states1to9:1:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \inst|divider|cp|state_input\(1),
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|states1to9:1:state_i|int_q~q\);

-- Location: LCCOMB_X114_Y38_N18
\inst|divider|cp|state_input[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input[4]~5_combout\ = (!\LEDR13~input_o\ & ((\inst|divider|cp|states1to9:2:state_i|int_q~q\) # (\inst|divider|cp|states1to9:1:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datab => \LEDR13~input_o\,
	datad => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	combout => \inst|divider|cp|state_input[4]~5_combout\);

-- Location: FF_X114_Y38_N19
\inst|divider|cp|states1to9:4:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|cp|state_input[4]~5_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|states1to9:4:state_i|int_q~q\);

-- Location: LCCOMB_X109_Y38_N26
\inst|divider|dp|divisor_shiftreg|muxn_1|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxn_1|o~0_combout\ = (!\inst|divider|cp|states1to9:8:state_i|int_q~q\ & ((\inst|divider|cp|states1to9:4:state_i|int_q~q\ & (\LEDR13~input_o\)) # (!\inst|divider|cp|states1to9:4:state_i|int_q~q\ & 
-- ((\inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	datab => \LEDR13~input_o\,
	datac => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\,
	combout => \inst|divider|dp|divisor_shiftreg|muxn_1|o~0_combout\);

-- Location: FF_X109_Y38_N27
\inst|divider|dp|divisor_shiftreg|dffs:7:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|divisor_shiftreg|muxn_1|o~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|divisor_shiftreg|dffs:7:biti|int_q~q\);

-- Location: LCCOMB_X111_Y38_N24
\inst|divider|cp|state_input[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input[3]~0_combout\ = (\LEDR13~input_o\ & ((\inst|divider|cp|states1to9:2:state_i|int_q~q\) # (\inst|divider|cp|states1to9:1:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datab => \LEDR13~input_o\,
	datac => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	combout => \inst|divider|cp|state_input[3]~0_combout\);

-- Location: LCCOMB_X112_Y38_N2
\inst|divider|cp|states1to9:3:state_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|states1to9:3:state_i|int_q~feeder_combout\ = \inst|divider|cp|state_input[3]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|divider|cp|state_input[3]~0_combout\,
	combout => \inst|divider|cp|states1to9:3:state_i|int_q~feeder_combout\);

-- Location: FF_X112_Y38_N3
\inst|divider|cp|states1to9:3:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|cp|states1to9:3:state_i|int_q~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|states1to9:3:state_i|int_q~q\);

-- Location: LCCOMB_X112_Y38_N20
\inst|divider|cp|selop2_1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|selop2_1~combout\ = (\inst|divider|cp|states1to9:1:state_i|int_q~q\) # (\inst|divider|cp|states1to9:3:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:3:state_i|int_q~q\,
	combout => \inst|divider|cp|selop2_1~combout\);

-- Location: LCCOMB_X112_Y39_N20
\inst|divider|cp|state_input[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input[9]~1_combout\ = (!\inst|divider|dp|counter|reg|reg:1:biti|int_q~q\ & (\inst|divider|dp|counter|reg|reg:0:biti|int_q~q\ & (\inst|divider|cp|states1to9:8:state_i|int_q~q\ & \inst|divider|dp|counter|reg|reg:2:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|counter|reg|reg:1:biti|int_q~q\,
	datab => \inst|divider|dp|counter|reg|reg:0:biti|int_q~q\,
	datac => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datad => \inst|divider|dp|counter|reg|reg:2:biti|int_q~q\,
	combout => \inst|divider|cp|state_input[9]~1_combout\);

-- Location: LCCOMB_X111_Y38_N26
\inst|divider|cp|state_input[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input[9]~2_combout\ = (\inst|divider|cp|state_input[9]~1_combout\ & (\LEDR17~input_o\ $ (\LEDR13~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR17~input_o\,
	datac => \LEDR13~input_o\,
	datad => \inst|divider|cp|state_input[9]~1_combout\,
	combout => \inst|divider|cp|state_input[9]~2_combout\);

-- Location: FF_X112_Y38_N17
\inst|divider|cp|states1to9:9:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \inst|divider|cp|state_input[9]~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|states1to9:9:state_i|int_q~q\);

-- Location: LCCOMB_X112_Y38_N22
\inst|divider|dp|muxop2|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[3]~9_combout\ = (\inst|divider|cp|states1to9:1:state_i|int_q~q\) # ((\inst|divider|cp|states1to9:9:state_i|int_q~q\ & \inst|divider|cp|states1to9:3:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|cp|states1to9:9:state_i|int_q~q\,
	datac => \inst|divider|cp|states1to9:3:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	combout => \inst|divider|dp|muxop2|o[3]~9_combout\);

-- Location: IOIBUF_X115_Y36_N8
\LEDR16~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR16,
	o => \LEDR16~input_o\);

-- Location: LCCOMB_X112_Y38_N16
\inst|divider|cp|sub~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|sub~0_combout\ = (!\inst|divider|cp|states1to9:5:state_i|int_q~q\ & (!\inst|divider|cp|states1to9:3:state_i|int_q~q\ & (!\inst|divider|cp|states1to9:9:state_i|int_q~q\ & !\inst|divider|cp|states1to9:1:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:5:state_i|int_q~q\,
	datab => \inst|divider|cp|states1to9:3:state_i|int_q~q\,
	datac => \inst|divider|cp|states1to9:9:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	combout => \inst|divider|cp|sub~0_combout\);

-- Location: IOIBUF_X115_Y44_N8
\LEDR12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEDR12,
	o => \LEDR12~input_o\);

-- Location: LCCOMB_X109_Y38_N8
\inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\ = (\inst|divider|cp|states1to9:8:state_i|int_q~q\ & (((\inst|divider|dp|divisor_shiftreg|dffs:7:biti|int_q~q\)))) # (!\inst|divider|cp|states1to9:8:state_i|int_q~q\ & 
-- (\inst|divider|cp|states1to9:4:state_i|int_q~q\ & ((\LEDR12~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	datab => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datac => \inst|divider|dp|divisor_shiftreg|dffs:7:biti|int_q~q\,
	datad => \LEDR12~input_o\,
	combout => \inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\);

-- Location: LCCOMB_X110_Y38_N30
\inst|divider|dp|muxA|o[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxA|o[6]~5_combout\ = (\inst|divider|cp|states1to9:2:state_i|int_q~q\ & (\LEDR17~input_o\)) # (!\inst|divider|cp|states1to9:2:state_i|int_q~q\ & ((\inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datab => \LEDR17~input_o\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0_combout\,
	combout => \inst|divider|dp|muxA|o[6]~5_combout\);

-- Location: LCCOMB_X111_Y38_N22
\inst|divider|cp|loadR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|loadR~0_combout\ = (\inst|divider|cp|states1to9:7:state_i|int_q~q\) # ((\inst|divider|cp|states1to9:1:state_i|int_q~q\) # ((\inst|divider|cp|states1to9:5:state_i|int_q~q\) # (\inst|divider|cp|states1to9:2:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datab => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	datac => \inst|divider|cp|states1to9:5:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	combout => \inst|divider|cp|loadR~0_combout\);

-- Location: FF_X110_Y38_N31
\inst|divider|dp|remainder_reg|reg:6:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|muxA|o[6]~5_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|remainder_reg|reg:6:biti|int_q~q\);

-- Location: LCCOMB_X113_Y38_N8
\inst|divider|cp|selop1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|selop1~0_combout\ = (!\inst|divider|cp|states1to9:1:state_i|int_q~q\ & (!\inst|divider|cp|states1to9:9:state_i|int_q~q\ & !\inst|divider|cp|states1to9:3:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	datac => \inst|divider|cp|states1to9:9:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:3:state_i|int_q~q\,
	combout => \inst|divider|cp|selop1~0_combout\);

-- Location: LCCOMB_X112_Y38_N14
\inst|divider|cp|selop2_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|selop2_0~0_combout\ = (\inst|divider|cp|states1to9:9:state_i|int_q~q\) # (\inst|divider|cp|states1to9:1:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|cp|states1to9:9:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	combout => \inst|divider|cp|selop2_0~0_combout\);

-- Location: LCCOMB_X111_Y38_N0
\inst|divider|dp|muxop2|o[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[6]~2_combout\ = (\inst|divider|cp|selop2_1~combout\ & ((\inst|divider|cp|selop2_0~0_combout\ & (\LEDR17~input_o\)) # (!\inst|divider|cp|selop2_0~0_combout\ & ((\LEDR12~input_o\))))) # (!\inst|divider|cp|selop2_1~combout\ & 
-- (((!\inst|divider|cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR17~input_o\,
	datab => \LEDR12~input_o\,
	datac => \inst|divider|cp|selop2_1~combout\,
	datad => \inst|divider|cp|selop2_0~0_combout\,
	combout => \inst|divider|dp|muxop2|o[6]~2_combout\);

-- Location: LCCOMB_X111_Y38_N14
\inst|divider|dp|muxop2|o[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[6]~3_combout\ = (\inst|divider|cp|selop2_1~combout\ & (((\inst|divider|dp|muxop2|o[6]~2_combout\)))) # (!\inst|divider|cp|selop2_1~combout\ & ((\inst|divider|dp|muxop2|o[6]~2_combout\ & 
-- (\inst|divider|dp|divisor_shiftreg|dffs:6:biti|int_q~q\)) # (!\inst|divider|dp|muxop2|o[6]~2_combout\ & ((\inst|divider|dp|quotient_shiftreg|dffs:6:biti|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|divisor_shiftreg|dffs:6:biti|int_q~q\,
	datab => \inst|divider|dp|quotient_shiftreg|dffs:6:biti|int_q~q\,
	datac => \inst|divider|cp|selop2_1~combout\,
	datad => \inst|divider|dp|muxop2|o[6]~2_combout\,
	combout => \inst|divider|dp|muxop2|o[6]~3_combout\);

-- Location: LCCOMB_X111_Y38_N20
\inst|divider|dp|adder_subtractor|yxor[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|yxor\(6) = \inst|divider|dp|muxop2|o[6]~3_combout\ $ (!\inst|divider|cp|sub~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|divider|dp|muxop2|o[6]~3_combout\,
	datad => \inst|divider|cp|sub~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|yxor\(6));

-- Location: LCCOMB_X109_Y38_N22
\inst|divider|dp|muxop2|o[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[5]~4_combout\ = (\inst|divider|cp|selop2_0~0_combout\ & ((\inst|divider|cp|selop2_1~combout\ & ((\LEDR17~input_o\))) # (!\inst|divider|cp|selop2_1~combout\ & (\inst|divider|dp|quotient_shiftreg|dffs:5:biti|int_q~q\)))) # 
-- (!\inst|divider|cp|selop2_0~0_combout\ & (((!\inst|divider|cp|selop2_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|selop2_0~0_combout\,
	datab => \inst|divider|dp|quotient_shiftreg|dffs:5:biti|int_q~q\,
	datac => \LEDR17~input_o\,
	datad => \inst|divider|cp|selop2_1~combout\,
	combout => \inst|divider|dp|muxop2|o[5]~4_combout\);

-- Location: LCCOMB_X109_Y38_N6
\inst|divider|dp|muxop2|o[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[5]~5_combout\ = (\inst|divider|dp|muxop2|o[5]~4_combout\ & (((\inst|divider|dp|divisor_shiftreg|dffs:5:biti|int_q~q\) # (\inst|divider|cp|selop2_0~0_combout\)))) # (!\inst|divider|dp|muxop2|o[5]~4_combout\ & (\LEDR11~input_o\ & 
-- ((!\inst|divider|cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR11~input_o\,
	datab => \inst|divider|dp|divisor_shiftreg|dffs:5:biti|int_q~q\,
	datac => \inst|divider|dp|muxop2|o[5]~4_combout\,
	datad => \inst|divider|cp|selop2_0~0_combout\,
	combout => \inst|divider|dp|muxop2|o[5]~5_combout\);

-- Location: LCCOMB_X109_Y38_N12
\inst|divider|dp|adder_subtractor|yxor[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|yxor\(5) = \inst|divider|dp|muxop2|o[5]~5_combout\ $ (!\inst|divider|cp|sub~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|muxop2|o[5]~5_combout\,
	datad => \inst|divider|cp|sub~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|yxor\(5));

-- Location: LCCOMB_X111_Y38_N2
\inst|divider|dp|muxop2|o[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[4]~6_combout\ = (\inst|divider|cp|selop2_1~combout\ & ((\inst|divider|cp|selop2_0~0_combout\ & (\LEDR17~input_o\)) # (!\inst|divider|cp|selop2_0~0_combout\ & ((\LEDR10~input_o\))))) # (!\inst|divider|cp|selop2_1~combout\ & 
-- (((!\inst|divider|cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR17~input_o\,
	datab => \LEDR10~input_o\,
	datac => \inst|divider|cp|selop2_1~combout\,
	datad => \inst|divider|cp|selop2_0~0_combout\,
	combout => \inst|divider|dp|muxop2|o[4]~6_combout\);

-- Location: LCCOMB_X111_Y38_N12
\inst|divider|dp|muxop2|o[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[4]~7_combout\ = (\inst|divider|cp|selop2_1~combout\ & (((\inst|divider|dp|muxop2|o[4]~6_combout\)))) # (!\inst|divider|cp|selop2_1~combout\ & ((\inst|divider|dp|muxop2|o[4]~6_combout\ & 
-- (\inst|divider|dp|divisor_shiftreg|dffs:4:biti|int_q~q\)) # (!\inst|divider|dp|muxop2|o[4]~6_combout\ & ((\inst|divider|dp|quotient_shiftreg|dffs:4:biti|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|divisor_shiftreg|dffs:4:biti|int_q~q\,
	datab => \inst|divider|dp|quotient_shiftreg|dffs:4:biti|int_q~q\,
	datac => \inst|divider|cp|selop2_1~combout\,
	datad => \inst|divider|dp|muxop2|o[4]~6_combout\,
	combout => \inst|divider|dp|muxop2|o[4]~7_combout\);

-- Location: LCCOMB_X111_Y38_N30
\inst|divider|dp|adder_subtractor|yxor[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|yxor\(4) = \inst|divider|cp|sub~0_combout\ $ (!\inst|divider|dp|muxop2|o[4]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|cp|sub~0_combout\,
	datad => \inst|divider|dp|muxop2|o[4]~7_combout\,
	combout => \inst|divider|dp|adder_subtractor|yxor\(4));

-- Location: LCCOMB_X111_Y38_N16
\inst|divider|dp|muxop2|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[3]~8_combout\ = (!\inst|divider|cp|selop2_1~combout\ & ((\inst|divider|cp|selop2_0~0_combout\ & ((\inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\))) # (!\inst|divider|cp|selop2_0~0_combout\ & 
-- (\inst|divider|dp|divisor_shiftreg|dffs:3:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|divisor_shiftreg|dffs:3:biti|int_q~q\,
	datab => \inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\,
	datac => \inst|divider|cp|selop2_1~combout\,
	datad => \inst|divider|cp|selop2_0~0_combout\,
	combout => \inst|divider|dp|muxop2|o[3]~8_combout\);

-- Location: LCCOMB_X111_Y38_N6
\inst|divider|dp|adder_subtractor|yxor[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|yxor\(3) = \inst|divider|cp|sub~0_combout\ $ (((!\inst|divider|dp|muxop2|o[3]~8_combout\ & ((!\inst|divider|dp|muxop2|o[3]~9_combout\) # (!\LEDR17~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR17~input_o\,
	datab => \inst|divider|cp|sub~0_combout\,
	datac => \inst|divider|dp|muxop2|o[3]~9_combout\,
	datad => \inst|divider|dp|muxop2|o[3]~8_combout\,
	combout => \inst|divider|dp|adder_subtractor|yxor\(3));

-- Location: LCCOMB_X113_Y38_N28
\inst|divider|dp|muxA|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxA|o[2]~2_combout\ = (\inst|divider|cp|states1to9:2:state_i|int_q~q\ & ((\LEDR16~input_o\))) # (!\inst|divider|cp|states1to9:2:state_i|int_q~q\ & (\inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datab => \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\,
	datad => \LEDR16~input_o\,
	combout => \inst|divider|dp|muxA|o[2]~2_combout\);

-- Location: FF_X113_Y38_N29
\inst|divider|dp|remainder_reg|reg:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|muxA|o[2]~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\);

-- Location: LCCOMB_X114_Y38_N20
\inst|divider|dp|divisor_shiftreg|muxes:1:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxes:1:muxi|o~0_combout\ = (\inst|divider|cp|states1to9:8:state_i|int_q~q\ & (\inst|divider|dp|divisor_shiftreg|dffs:2:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:8:state_i|int_q~q\ & 
-- (((\inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0_combout\ & !\inst|divider|cp|states1to9:4:state_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|divisor_shiftreg|dffs:2:biti|int_q~q\,
	datab => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0_combout\,
	datad => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	combout => \inst|divider|dp|divisor_shiftreg|muxes:1:muxi|o~0_combout\);

-- Location: FF_X114_Y38_N21
\inst|divider|dp|divisor_shiftreg|dffs:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|divisor_shiftreg|muxes:1:muxi|o~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|divisor_shiftreg|dffs:1:biti|int_q~q\);

-- Location: LCCOMB_X112_Y38_N4
\inst|divider|dp|muxop2|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[1]~11_combout\ = (!\inst|divider|cp|selop2_1~combout\ & ((\inst|divider|cp|selop2_0~0_combout\ & (\inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\)) # (!\inst|divider|cp|selop2_0~0_combout\ & 
-- ((\inst|divider|dp|divisor_shiftreg|dffs:1:biti|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\,
	datab => \inst|divider|dp|divisor_shiftreg|dffs:1:biti|int_q~q\,
	datac => \inst|divider|cp|selop2_0~0_combout\,
	datad => \inst|divider|cp|selop2_1~combout\,
	combout => \inst|divider|dp|muxop2|o[1]~11_combout\);

-- Location: LCCOMB_X112_Y38_N6
\inst|divider|dp|adder_subtractor|yxor[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|yxor\(1) = \inst|divider|cp|sub~0_combout\ $ (((!\inst|divider|dp|muxop2|o[1]~11_combout\ & ((!\LEDR15~input_o\) # (!\inst|divider|dp|muxop2|o[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|muxop2|o[3]~9_combout\,
	datab => \LEDR15~input_o\,
	datac => \inst|divider|cp|sub~0_combout\,
	datad => \inst|divider|dp|muxop2|o[1]~11_combout\,
	combout => \inst|divider|dp|adder_subtractor|yxor\(1));

-- Location: LCCOMB_X112_Y38_N12
\inst|divider|dp|quotient_shiftreg|mux0|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|quotient_shiftreg|mux0|o~2_combout\ = (\inst|divider|cp|states1to9:6:state_i|int_q~q\) # ((\inst|divider|cp|states1to9:7:state_i|int_q~q\ & ((\inst|divider|cp|states1to9:9:state_i|int_q~q\))) # 
-- (!\inst|divider|cp|states1to9:7:state_i|int_q~q\ & (!\inst|divider|dp|adder_subtractor|FA0|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|adder_subtractor|FA0|sum~0_combout\,
	datab => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datac => \inst|divider|cp|states1to9:9:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|divider|dp|quotient_shiftreg|mux0|o~2_combout\);

-- Location: LCCOMB_X112_Y38_N28
\inst|divider|dp|quotient_shiftreg|int_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|quotient_shiftreg|int_en~combout\ = (\inst|divider|cp|states1to9:9:state_i|int_q~q\) # ((\inst|divider|cp|states1to9:7:state_i|int_q~q\) # (\inst|divider|cp|states1to9:6:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:9:state_i|int_q~q\,
	datab => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|divider|dp|quotient_shiftreg|int_en~combout\);

-- Location: FF_X112_Y38_N13
\inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|quotient_shiftreg|mux0|o~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\);

-- Location: LCCOMB_X114_Y38_N14
\inst|divider|dp|divisor_shiftreg|mux0|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|mux0|o~0_combout\ = (\inst|divider|cp|states1to9:8:state_i|int_q~q\ & (\inst|divider|dp|divisor_shiftreg|dffs:1:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:8:state_i|int_q~q\ & 
-- (((!\inst|divider|dp|adder_subtractor|FA0|sum~0_combout\ & !\inst|divider|cp|states1to9:4:state_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|divisor_shiftreg|dffs:1:biti|int_q~q\,
	datab => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|FA0|sum~0_combout\,
	datad => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	combout => \inst|divider|dp|divisor_shiftreg|mux0|o~0_combout\);

-- Location: FF_X114_Y38_N15
\inst|divider|dp|divisor_shiftreg|dffs:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|divisor_shiftreg|mux0|o~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|divisor_shiftreg|dffs:0:biti|int_q~q\);

-- Location: LCCOMB_X112_Y38_N24
\inst|divider|dp|muxop2|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[0]~12_combout\ = (\inst|divider|cp|states1to9:9:state_i|int_q~q\ & (!\inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:9:state_i|int_q~q\ & ((\inst|divider|cp|states1to9:1:state_i|int_q~q\ 
-- & (!\inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:1:state_i|int_q~q\ & ((!\inst|divider|dp|divisor_shiftreg|dffs:0:biti|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\,
	datab => \inst|divider|cp|states1to9:9:state_i|int_q~q\,
	datac => \inst|divider|dp|divisor_shiftreg|dffs:0:biti|int_q~q\,
	datad => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	combout => \inst|divider|dp|muxop2|o[0]~12_combout\);

-- Location: LCCOMB_X112_Y38_N30
\inst|divider|dp|muxop2|o[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[0]~13_combout\ = (\inst|divider|cp|selop2_1~combout\ & (((!\inst|divider|cp|selop2_0~0_combout\)) # (!\LEDR14~input_o\))) # (!\inst|divider|cp|selop2_1~combout\ & (((\inst|divider|dp|muxop2|o[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR14~input_o\,
	datab => \inst|divider|cp|selop2_1~combout\,
	datac => \inst|divider|cp|selop2_0~0_combout\,
	datad => \inst|divider|dp|muxop2|o[0]~12_combout\,
	combout => \inst|divider|dp|muxop2|o[0]~13_combout\);

-- Location: LCCOMB_X113_Y38_N4
\inst|divider|dp|adder_subtractor|FA0|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|FA0|sum~0_combout\ = \inst|divider|dp|muxop2|o[0]~13_combout\ $ (((\inst|divider|cp|selop1~0_combout\ & \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|dp|muxop2|o[0]~13_combout\,
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\,
	combout => \inst|divider|dp|adder_subtractor|FA0|sum~0_combout\);

-- Location: LCCOMB_X113_Y38_N20
\inst|divider|dp|muxA|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxA|o[0]~0_combout\ = (\inst|divider|cp|states1to9:2:state_i|int_q~q\ & ((\LEDR14~input_o\))) # (!\inst|divider|cp|states1to9:2:state_i|int_q~q\ & (!\inst|divider|dp|adder_subtractor|FA0|sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|FA0|sum~0_combout\,
	datad => \LEDR14~input_o\,
	combout => \inst|divider|dp|muxA|o[0]~0_combout\);

-- Location: FF_X113_Y38_N21
\inst|divider|dp|remainder_reg|reg:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|muxA|o[0]~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\);

-- Location: LCCOMB_X113_Y38_N2
\inst|divider|dp|adder_subtractor|FA0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|FA0|cout~0_combout\ = (\inst|divider|dp|muxop2|o[0]~13_combout\ & (!\inst|divider|cp|sub~0_combout\)) # (!\inst|divider|dp|muxop2|o[0]~13_combout\ & (((\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|sub~0_combout\,
	datab => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\,
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|muxop2|o[0]~13_combout\,
	combout => \inst|divider|dp|adder_subtractor|FA0|cout~0_combout\);

-- Location: LCCOMB_X113_Y38_N26
\inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0_combout\ = \inst|divider|dp|adder_subtractor|yxor\(1) $ (\inst|divider|dp|adder_subtractor|FA0|cout~0_combout\ $ (((\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\,
	datab => \inst|divider|dp|adder_subtractor|yxor\(1),
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|FA0|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0_combout\);

-- Location: LCCOMB_X113_Y38_N6
\inst|divider|dp|muxA|o[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxA|o[1]~1_combout\ = (\inst|divider|cp|states1to9:2:state_i|int_q~q\ & ((\LEDR15~input_o\))) # (!\inst|divider|cp|states1to9:2:state_i|int_q~q\ & (\inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0_combout\,
	datad => \LEDR15~input_o\,
	combout => \inst|divider|dp|muxA|o[1]~1_combout\);

-- Location: FF_X113_Y38_N7
\inst|divider|dp|remainder_reg|reg:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|muxA|o[1]~1_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\);

-- Location: LCCOMB_X113_Y38_N0
\inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\ = (\inst|divider|dp|adder_subtractor|yxor\(1) & ((\inst|divider|dp|adder_subtractor|FA0|cout~0_combout\) # ((\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\)))) # (!\inst|divider|dp|adder_subtractor|yxor\(1) & (\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & (\inst|divider|cp|selop1~0_combout\ & \inst|divider|dp|adder_subtractor|FA0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\,
	datab => \inst|divider|cp|selop1~0_combout\,
	datac => \inst|divider|dp|adder_subtractor|yxor\(1),
	datad => \inst|divider|dp|adder_subtractor|FA0|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\);

-- Location: LCCOMB_X113_Y38_N30
\inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\ = (\inst|divider|dp|adder_subtractor|yxor\(2) & ((\inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\) # ((\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\)))) # (!\inst|divider|dp|adder_subtractor|yxor\(2) & (\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & (\inst|divider|cp|selop1~0_combout\ & \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|adder_subtractor|yxor\(2),
	datab => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\,
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\);

-- Location: LCCOMB_X113_Y38_N18
\inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\ = \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\ $ (\inst|divider|dp|adder_subtractor|yxor\(3) $ (((\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\,
	datab => \inst|divider|cp|selop1~0_combout\,
	datac => \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|yxor\(3),
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\);

-- Location: LCCOMB_X113_Y38_N22
\inst|divider|dp|muxA|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxA|o[3]~3_combout\ = (\inst|divider|cp|states1to9:2:state_i|int_q~q\ & ((\LEDR17~input_o\))) # (!\inst|divider|cp|states1to9:2:state_i|int_q~q\ & (\inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datab => \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\,
	datad => \LEDR17~input_o\,
	combout => \inst|divider|dp|muxA|o[3]~3_combout\);

-- Location: FF_X113_Y38_N23
\inst|divider|dp|remainder_reg|reg:3:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|muxA|o[3]~3_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\);

-- Location: LCCOMB_X110_Y38_N20
\inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\ = (\inst|divider|dp|adder_subtractor|yxor\(3) & ((\inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\) # ((\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\)))) # (!\inst|divider|dp|adder_subtractor|yxor\(3) & (\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & (\inst|divider|cp|selop1~0_combout\ & \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|adder_subtractor|yxor\(3),
	datab => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\,
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\);

-- Location: LCCOMB_X110_Y38_N8
\inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0_combout\ = \inst|divider|dp|adder_subtractor|yxor\(4) $ (\inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\ $ (((\inst|divider|dp|remainder_reg|reg:4:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:4:biti|int_q~q\,
	datab => \inst|divider|cp|selop1~0_combout\,
	datac => \inst|divider|dp|adder_subtractor|yxor\(4),
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0_combout\);

-- Location: LCCOMB_X110_Y38_N26
\inst|divider|dp|muxA|o[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxA|o[4]~7_combout\ = (\inst|divider|cp|states1to9:2:state_i|int_q~q\ & ((\LEDR17~input_o\))) # (!\inst|divider|cp|states1to9:2:state_i|int_q~q\ & (\inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0_combout\,
	datad => \LEDR17~input_o\,
	combout => \inst|divider|dp|muxA|o[4]~7_combout\);

-- Location: FF_X110_Y38_N27
\inst|divider|dp|remainder_reg|reg:4:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|muxA|o[4]~7_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|remainder_reg|reg:4:biti|int_q~q\);

-- Location: LCCOMB_X110_Y38_N2
\inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\ = (\inst|divider|dp|adder_subtractor|yxor\(4) & ((\inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\) # ((\inst|divider|dp|remainder_reg|reg:4:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\)))) # (!\inst|divider|dp|adder_subtractor|yxor\(4) & (\inst|divider|dp|remainder_reg|reg:4:biti|int_q~q\ & (\inst|divider|cp|selop1~0_combout\ & \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:4:biti|int_q~q\,
	datab => \inst|divider|cp|selop1~0_combout\,
	datac => \inst|divider|dp|adder_subtractor|yxor\(4),
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\);

-- Location: LCCOMB_X110_Y38_N22
\inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0_combout\ = \inst|divider|dp|adder_subtractor|yxor\(5) $ (\inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\ $ (((\inst|divider|dp|remainder_reg|reg:5:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|adder_subtractor|yxor\(5),
	datab => \inst|divider|dp|remainder_reg|reg:5:biti|int_q~q\,
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0_combout\);

-- Location: LCCOMB_X110_Y38_N4
\inst|divider|dp|muxA|o[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxA|o[5]~6_combout\ = (\inst|divider|cp|states1to9:2:state_i|int_q~q\ & ((\LEDR17~input_o\))) # (!\inst|divider|cp|states1to9:2:state_i|int_q~q\ & (\inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0_combout\,
	datad => \LEDR17~input_o\,
	combout => \inst|divider|dp|muxA|o[5]~6_combout\);

-- Location: FF_X110_Y38_N5
\inst|divider|dp|remainder_reg|reg:5:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|muxA|o[5]~6_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|remainder_reg|reg:5:biti|int_q~q\);

-- Location: LCCOMB_X110_Y38_N12
\inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\ = (\inst|divider|dp|adder_subtractor|yxor\(5) & ((\inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\) # ((\inst|divider|dp|remainder_reg|reg:5:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\)))) # (!\inst|divider|dp|adder_subtractor|yxor\(5) & (\inst|divider|dp|remainder_reg|reg:5:biti|int_q~q\ & (\inst|divider|cp|selop1~0_combout\ & \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|adder_subtractor|yxor\(5),
	datab => \inst|divider|dp|remainder_reg|reg:5:biti|int_q~q\,
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\);

-- Location: LCCOMB_X110_Y38_N28
\inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0_combout\ = \inst|divider|dp|adder_subtractor|yxor\(6) $ (\inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\ $ (((\inst|divider|dp|remainder_reg|reg:6:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:6:biti|int_q~q\,
	datab => \inst|divider|cp|selop1~0_combout\,
	datac => \inst|divider|dp|adder_subtractor|yxor\(6),
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0_combout\);

-- Location: LCCOMB_X109_Y38_N0
\inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~1_combout\ = (\inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\) # ((!\inst|divider|cp|states1to9:4:state_i|int_q~q\ & (!\inst|divider|cp|states1to9:8:state_i|int_q~q\ & 
-- \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	datab => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datac => \inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0_combout\,
	combout => \inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~1_combout\);

-- Location: FF_X109_Y38_N1
\inst|divider|dp|divisor_shiftreg|dffs:6:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|divisor_shiftreg|muxes:6:muxi|o~1_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|divisor_shiftreg|dffs:6:biti|int_q~q\);

-- Location: LCCOMB_X109_Y38_N18
\inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\ = (!\inst|divider|cp|states1to9:8:state_i|int_q~q\ & ((\inst|divider|cp|states1to9:4:state_i|int_q~q\ & (\LEDR11~input_o\)) # (!\inst|divider|cp|states1to9:4:state_i|int_q~q\ & 
-- ((\inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	datab => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datac => \LEDR11~input_o\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0_combout\,
	combout => \inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\);

-- Location: LCCOMB_X109_Y38_N16
\inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~1_combout\ = (\inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\) # ((\inst|divider|dp|divisor_shiftreg|dffs:6:biti|int_q~q\ & \inst|divider|cp|states1to9:8:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|dp|divisor_shiftreg|dffs:6:biti|int_q~q\,
	datac => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datad => \inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~0_combout\,
	combout => \inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~1_combout\);

-- Location: FF_X109_Y38_N17
\inst|divider|dp|divisor_shiftreg|dffs:5:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|divisor_shiftreg|muxes:5:muxi|o~1_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|divisor_shiftreg|dffs:5:biti|int_q~q\);

-- Location: LCCOMB_X110_Y38_N6
\inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\ = (!\inst|divider|cp|states1to9:8:state_i|int_q~q\ & ((\inst|divider|cp|states1to9:4:state_i|int_q~q\ & (\LEDR10~input_o\)) # (!\inst|divider|cp|states1to9:4:state_i|int_q~q\ & 
-- ((\inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR10~input_o\,
	datab => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0_combout\,
	datad => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	combout => \inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\);

-- Location: LCCOMB_X109_Y38_N14
\inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~1_combout\ = (\inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\) # ((\inst|divider|dp|divisor_shiftreg|dffs:5:biti|int_q~q\ & \inst|divider|cp|states1to9:8:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|dp|divisor_shiftreg|dffs:5:biti|int_q~q\,
	datac => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datad => \inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~0_combout\,
	combout => \inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~1_combout\);

-- Location: FF_X109_Y38_N15
\inst|divider|dp|divisor_shiftreg|dffs:4:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|divisor_shiftreg|muxes:4:muxi|o~1_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|divisor_shiftreg|dffs:4:biti|int_q~q\);

-- Location: LCCOMB_X114_Y38_N16
\inst|divider|dp|divisor_shiftreg|muxes:3:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxes:3:muxi|o~0_combout\ = (\inst|divider|cp|states1to9:8:state_i|int_q~q\ & (\inst|divider|dp|divisor_shiftreg|dffs:4:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:8:state_i|int_q~q\ & 
-- (((!\inst|divider|cp|states1to9:4:state_i|int_q~q\ & \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|divisor_shiftreg|dffs:4:biti|int_q~q\,
	datab => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\,
	datad => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	combout => \inst|divider|dp|divisor_shiftreg|muxes:3:muxi|o~0_combout\);

-- Location: FF_X114_Y38_N17
\inst|divider|dp|divisor_shiftreg|dffs:3:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|divisor_shiftreg|muxes:3:muxi|o~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|divisor_shiftreg|dffs:3:biti|int_q~q\);

-- Location: LCCOMB_X114_Y38_N26
\inst|divider|dp|divisor_shiftreg|muxes:2:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|divisor_shiftreg|muxes:2:muxi|o~0_combout\ = (\inst|divider|cp|states1to9:8:state_i|int_q~q\ & (\inst|divider|dp|divisor_shiftreg|dffs:3:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:8:state_i|int_q~q\ & 
-- (((\inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\ & !\inst|divider|cp|states1to9:4:state_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|divisor_shiftreg|dffs:3:biti|int_q~q\,
	datab => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\,
	datad => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	combout => \inst|divider|dp|divisor_shiftreg|muxes:2:muxi|o~0_combout\);

-- Location: FF_X114_Y38_N27
\inst|divider|dp|divisor_shiftreg|dffs:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|divisor_shiftreg|muxes:2:muxi|o~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|state_input~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|divisor_shiftreg|dffs:2:biti|int_q~q\);

-- Location: LCCOMB_X112_Y38_N0
\inst|divider|dp|muxop2|o[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[2]~10_combout\ = (!\inst|divider|cp|selop2_1~combout\ & ((\inst|divider|cp|selop2_0~0_combout\ & (\inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\)) # (!\inst|divider|cp|selop2_0~0_combout\ & 
-- ((\inst|divider|dp|divisor_shiftreg|dffs:2:biti|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\,
	datab => \inst|divider|dp|divisor_shiftreg|dffs:2:biti|int_q~q\,
	datac => \inst|divider|cp|selop2_0~0_combout\,
	datad => \inst|divider|cp|selop2_1~combout\,
	combout => \inst|divider|dp|muxop2|o[2]~10_combout\);

-- Location: LCCOMB_X112_Y38_N26
\inst|divider|dp|adder_subtractor|yxor[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|yxor\(2) = \inst|divider|cp|sub~0_combout\ $ (((!\inst|divider|dp|muxop2|o[2]~10_combout\ & ((!\LEDR16~input_o\) # (!\inst|divider|dp|muxop2|o[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|muxop2|o[3]~9_combout\,
	datab => \LEDR16~input_o\,
	datac => \inst|divider|cp|sub~0_combout\,
	datad => \inst|divider|dp|muxop2|o[2]~10_combout\,
	combout => \inst|divider|dp|adder_subtractor|yxor\(2));

-- Location: LCCOMB_X113_Y38_N16
\inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\ = \inst|divider|dp|adder_subtractor|yxor\(2) $ (\inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\ $ (((\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|adder_subtractor|yxor\(2),
	datab => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\,
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\);

-- Location: LCCOMB_X112_Y38_N8
\inst|divider|dp|quotient_shiftreg|muxes:2:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|quotient_shiftreg|muxes:2:muxi|o~2_combout\ = (\inst|divider|cp|states1to9:7:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:7:state_i|int_q~q\ & 
-- ((\inst|divider|cp|states1to9:6:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:6:state_i|int_q~q\ & ((\inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\,
	datab => \inst|divider|dp|adder_subtractor|addersubtractor:2:FAi|sum~combout\,
	datac => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|divider|dp|quotient_shiftreg|muxes:2:muxi|o~2_combout\);

-- Location: FF_X112_Y38_N9
\inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|quotient_shiftreg|muxes:2:muxi|o~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\);

-- Location: LCCOMB_X112_Y38_N18
\inst|divider|dp|quotient_shiftreg|muxes:3:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|quotient_shiftreg|muxes:3:muxi|o~2_combout\ = (\inst|divider|cp|states1to9:7:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:7:state_i|int_q~q\ & 
-- ((\inst|divider|cp|states1to9:6:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:6:state_i|int_q~q\ & ((\inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\,
	datab => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datac => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:3:FAi|sum~combout\,
	combout => \inst|divider|dp|quotient_shiftreg|muxes:3:muxi|o~2_combout\);

-- Location: FF_X112_Y38_N19
\inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|quotient_shiftreg|muxes:3:muxi|o~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\);

-- Location: LCCOMB_X111_Y38_N28
\inst|divider|dp|quotient_shiftreg|muxes:4:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|quotient_shiftreg|muxes:4:muxi|o~2_combout\ = (\inst|divider|cp|states1to9:6:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:6:state_i|int_q~q\ & 
-- ((\inst|divider|cp|states1to9:7:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:7:state_i|int_q~q\ & ((\inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	datab => \inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\,
	datac => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:4:FAi|sum~0_combout\,
	combout => \inst|divider|dp|quotient_shiftreg|muxes:4:muxi|o~2_combout\);

-- Location: FF_X111_Y38_N29
\inst|divider|dp|quotient_shiftreg|dffs:4:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|quotient_shiftreg|muxes:4:muxi|o~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|quotient_shiftreg|dffs:4:biti|int_q~q\);

-- Location: LCCOMB_X111_Y38_N10
\inst|divider|dp|quotient_shiftreg|muxes:5:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|quotient_shiftreg|muxes:5:muxi|o~2_combout\ = (\inst|divider|cp|states1to9:6:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:4:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:6:state_i|int_q~q\ & 
-- ((\inst|divider|cp|states1to9:7:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:4:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:7:state_i|int_q~q\ & ((\inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	datab => \inst|divider|dp|quotient_shiftreg|dffs:4:biti|int_q~q\,
	datac => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|sum~0_combout\,
	combout => \inst|divider|dp|quotient_shiftreg|muxes:5:muxi|o~2_combout\);

-- Location: FF_X111_Y38_N11
\inst|divider|dp|quotient_shiftreg|dffs:5:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|quotient_shiftreg|muxes:5:muxi|o~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|quotient_shiftreg|dffs:5:biti|int_q~q\);

-- Location: LCCOMB_X111_Y38_N18
\inst|divider|dp|quotient_shiftreg|muxes:6:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|quotient_shiftreg|muxes:6:muxi|o~2_combout\ = (\inst|divider|cp|states1to9:6:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:5:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:6:state_i|int_q~q\ & 
-- ((\inst|divider|cp|states1to9:7:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:5:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:7:state_i|int_q~q\ & ((\inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	datab => \inst|divider|dp|quotient_shiftreg|dffs:5:biti|int_q~q\,
	datac => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|sum~0_combout\,
	combout => \inst|divider|dp|quotient_shiftreg|muxes:6:muxi|o~2_combout\);

-- Location: FF_X111_Y38_N19
\inst|divider|dp|quotient_shiftreg|dffs:6:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|quotient_shiftreg|muxes:6:muxi|o~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|quotient_shiftreg|dffs:6:biti|int_q~q\);

-- Location: LCCOMB_X111_Y38_N4
\inst|divider|dp|quotient_shiftreg|muxn_1|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|quotient_shiftreg|muxn_1|o~2_combout\ = (\inst|divider|cp|states1to9:6:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:6:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:6:state_i|int_q~q\ & 
-- ((\inst|divider|cp|states1to9:7:state_i|int_q~q\ & (\inst|divider|dp|quotient_shiftreg|dffs:6:biti|int_q~q\)) # (!\inst|divider|cp|states1to9:7:state_i|int_q~q\ & ((\inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	datab => \inst|divider|dp|quotient_shiftreg|dffs:6:biti|int_q~q\,
	datac => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\,
	combout => \inst|divider|dp|quotient_shiftreg|muxn_1|o~2_combout\);

-- Location: FF_X111_Y38_N5
\inst|divider|dp|quotient_shiftreg|dffs:7:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|quotient_shiftreg|muxn_1|o~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|quotient_shiftreg|dffs:7:biti|int_q~q\);

-- Location: LCCOMB_X109_Y38_N28
\inst|divider|dp|muxop2|o[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[7]~0_combout\ = (\inst|divider|cp|selop2_1~combout\ & (\LEDR17~input_o\ & ((\inst|divider|cp|selop2_0~0_combout\)))) # (!\inst|divider|cp|selop2_1~combout\ & (((\inst|divider|dp|quotient_shiftreg|dffs:7:biti|int_q~q\) # 
-- (!\inst|divider|cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR17~input_o\,
	datab => \inst|divider|cp|selop2_1~combout\,
	datac => \inst|divider|dp|quotient_shiftreg|dffs:7:biti|int_q~q\,
	datad => \inst|divider|cp|selop2_0~0_combout\,
	combout => \inst|divider|dp|muxop2|o[7]~0_combout\);

-- Location: LCCOMB_X109_Y38_N4
\inst|divider|dp|muxop2|o[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxop2|o[7]~1_combout\ = (\inst|divider|dp|muxop2|o[7]~0_combout\ & ((\inst|divider|dp|divisor_shiftreg|dffs:7:biti|int_q~q\) # ((\inst|divider|cp|selop2_0~0_combout\)))) # (!\inst|divider|dp|muxop2|o[7]~0_combout\ & (((\LEDR13~input_o\ & 
-- !\inst|divider|cp|selop2_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|divisor_shiftreg|dffs:7:biti|int_q~q\,
	datab => \inst|divider|dp|muxop2|o[7]~0_combout\,
	datac => \LEDR13~input_o\,
	datad => \inst|divider|cp|selop2_0~0_combout\,
	combout => \inst|divider|dp|muxop2|o[7]~1_combout\);

-- Location: LCCOMB_X109_Y38_N10
\inst|divider|dp|adder_subtractor|yxor[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|yxor\(7) = \inst|divider|dp|muxop2|o[7]~1_combout\ $ (!\inst|divider|cp|sub~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|divider|dp|muxop2|o[7]~1_combout\,
	datad => \inst|divider|cp|sub~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|yxor\(7));

-- Location: LCCOMB_X110_Y38_N0
\inst|divider|dp|muxA|o[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|muxA|o[7]~4_combout\ = (\inst|divider|cp|states1to9:2:state_i|int_q~q\ & (\LEDR17~input_o\)) # (!\inst|divider|cp|states1to9:2:state_i|int_q~q\ & ((\inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datab => \LEDR17~input_o\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\,
	combout => \inst|divider|dp|muxA|o[7]~4_combout\);

-- Location: FF_X110_Y38_N1
\inst|divider|dp|remainder_reg|reg:7:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|muxA|o[7]~4_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|cp|loadR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|remainder_reg|reg:7:biti|int_q~q\);

-- Location: LCCOMB_X110_Y38_N10
\inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\ = (\inst|divider|dp|adder_subtractor|yxor\(6) & ((\inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\) # ((\inst|divider|dp|remainder_reg|reg:6:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\)))) # (!\inst|divider|dp|adder_subtractor|yxor\(6) & (\inst|divider|dp|remainder_reg|reg:6:biti|int_q~q\ & (\inst|divider|cp|selop1~0_combout\ & \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:6:biti|int_q~q\,
	datab => \inst|divider|cp|selop1~0_combout\,
	datac => \inst|divider|dp|adder_subtractor|yxor\(6),
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:5:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\);

-- Location: LCCOMB_X110_Y38_N18
\inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\ = \inst|divider|dp|adder_subtractor|yxor\(7) $ (\inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\ $ (((\inst|divider|dp|remainder_reg|reg:7:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|adder_subtractor|yxor\(7),
	datab => \inst|divider|dp|remainder_reg|reg:7:biti|int_q~q\,
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\,
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\);

-- Location: LCCOMB_X110_Y38_N24
\inst|divider|cp|state_input[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input\(7) = (\inst|divider|cp|states1to9:5:state_i|int_q~q\ & \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|divider|cp|states1to9:5:state_i|int_q~q\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\,
	combout => \inst|divider|cp|state_input\(7));

-- Location: FF_X110_Y38_N25
\inst|divider|cp|states1to9:7:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|cp|state_input\(7),
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|states1to9:7:state_i|int_q~q\);

-- Location: LCCOMB_X111_Y38_N8
\inst|divider|cp|shiftQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|shiftQ~0_combout\ = (\inst|divider|cp|states1to9:7:state_i|int_q~q\) # (\inst|divider|cp|states1to9:6:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|divider|cp|shiftQ~0_combout\);

-- Location: FF_X114_Y38_N1
\inst|divider|cp|states1to9:8:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \inst|divider|cp|shiftQ~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|states1to9:8:state_i|int_q~q\);

-- Location: LCCOMB_X114_Y38_N12
\inst|divider|cp|state_input~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input~3_combout\ = (\inst|divider|cp|states1to9:8:state_i|int_q~q\) # ((\inst|divider|cp|states1to9:3:state_i|int_q~q\) # (\inst|divider|cp|states1to9:4:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|cp|states1to9:8:state_i|int_q~q\,
	datac => \inst|divider|cp|states1to9:3:state_i|int_q~q\,
	datad => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	combout => \inst|divider|cp|state_input~3_combout\);

-- Location: LCCOMB_X112_Y39_N30
\inst|divider|cp|state_input[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input[5]~4_combout\ = (\inst|divider|cp|state_input~3_combout\ & ((\inst|divider|dp|counter|reg|reg:1:biti|int_q~q\) # ((!\inst|divider|dp|counter|reg|reg:0:biti|int_q~q\) # (!\inst|divider|dp|counter|reg|reg:2:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|counter|reg|reg:1:biti|int_q~q\,
	datab => \inst|divider|dp|counter|reg|reg:2:biti|int_q~q\,
	datac => \inst|divider|cp|state_input~3_combout\,
	datad => \inst|divider|dp|counter|reg|reg:0:biti|int_q~q\,
	combout => \inst|divider|cp|state_input[5]~4_combout\);

-- Location: FF_X112_Y38_N21
\inst|divider|cp|states1to9:5:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \inst|divider|cp|state_input[5]~4_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|states1to9:5:state_i|int_q~q\);

-- Location: LCCOMB_X110_Y38_N14
\inst|divider|cp|state_input[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|cp|state_input\(6) = (\inst|divider|cp|states1to9:5:state_i|int_q~q\ & !\inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|divider|cp|states1to9:5:state_i|int_q~q\,
	datad => \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|sum~0_combout\,
	combout => \inst|divider|cp|state_input\(6));

-- Location: FF_X110_Y38_N15
\inst|divider|cp|states1to9:6:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|cp|state_input\(6),
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|cp|states1to9:6:state_i|int_q~q\);

-- Location: LCCOMB_X112_Y38_N10
\inst|divider|dp|quotient_shiftreg|muxes:1:muxi|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|quotient_shiftreg|muxes:1:muxi|o~2_combout\ = (\inst|divider|cp|states1to9:6:state_i|int_q~q\ & (((\inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\)))) # (!\inst|divider|cp|states1to9:6:state_i|int_q~q\ & 
-- ((\inst|divider|cp|states1to9:7:state_i|int_q~q\ & ((\inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\))) # (!\inst|divider|cp|states1to9:7:state_i|int_q~q\ & (\inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:6:state_i|int_q~q\,
	datab => \inst|divider|cp|states1to9:7:state_i|int_q~q\,
	datac => \inst|divider|dp|adder_subtractor|addersubtractor:1:FAi|sum~0_combout\,
	datad => \inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\,
	combout => \inst|divider|dp|quotient_shiftreg|muxes:1:muxi|o~2_combout\);

-- Location: FF_X112_Y38_N11
\inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|divider|dp|quotient_shiftreg|muxes:1:muxi|o~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	ena => \inst|divider|dp|quotient_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\);

-- Location: LCCOMB_X112_Y41_N0
\inst|mux|o[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux|o[1]~1_combout\ = (\LEDR1~input_o\ & (\LEDR0~input_o\ & ((\inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\)))) # (!\LEDR1~input_o\ & (((\inst|addsub|addersubtractor:1:FAi|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR0~input_o\,
	datab => \LEDR1~input_o\,
	datac => \inst|addsub|addersubtractor:1:FAi|sum~combout\,
	datad => \inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\,
	combout => \inst|mux|o[1]~1_combout\);

-- Location: LCCOMB_X112_Y41_N26
\inst|addsub|addersubtractor:1:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|addersubtractor:1:FAi|cout~0_combout\ = (\LEDR15~input_o\ & ((\inst|addsub|yxor\(1)) # ((\inst|addsub|FA0|cout~1_combout\) # (\inst|addsub|FA0|cout~0_combout\)))) # (!\LEDR15~input_o\ & (\inst|addsub|yxor\(1) & 
-- ((\inst|addsub|FA0|cout~1_combout\) # (\inst|addsub|FA0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR15~input_o\,
	datab => \inst|addsub|yxor\(1),
	datac => \inst|addsub|FA0|cout~1_combout\,
	datad => \inst|addsub|FA0|cout~0_combout\,
	combout => \inst|addsub|addersubtractor:1:FAi|cout~0_combout\);

-- Location: LCCOMB_X112_Y41_N24
\inst|addsub|addersubtractor:2:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|addersubtractor:2:FAi|sum~0_combout\ = \LEDR0~input_o\ $ (\LEDR16~input_o\ $ (\inst|addsub|addersubtractor:1:FAi|cout~0_combout\ $ (\LEDR12~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR0~input_o\,
	datab => \LEDR16~input_o\,
	datac => \inst|addsub|addersubtractor:1:FAi|cout~0_combout\,
	datad => \LEDR12~input_o\,
	combout => \inst|addsub|addersubtractor:2:FAi|sum~0_combout\);

-- Location: LCCOMB_X112_Y41_N14
\inst|mux|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux|o[2]~2_combout\ = (\LEDR1~input_o\ & (\inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\ & (\LEDR0~input_o\))) # (!\LEDR1~input_o\ & (((\inst|addsub|addersubtractor:2:FAi|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\,
	datab => \LEDR1~input_o\,
	datac => \LEDR0~input_o\,
	datad => \inst|addsub|addersubtractor:2:FAi|sum~0_combout\,
	combout => \inst|mux|o[2]~2_combout\);

-- Location: LCCOMB_X112_Y41_N4
\inst|addsub|addersubtractor:2:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|addersubtractor:2:FAi|cout~0_combout\ = (\LEDR16~input_o\ & ((\inst|addsub|addersubtractor:1:FAi|cout~0_combout\) # (\LEDR0~input_o\ $ (\LEDR12~input_o\)))) # (!\LEDR16~input_o\ & (\inst|addsub|addersubtractor:1:FAi|cout~0_combout\ & 
-- (\LEDR0~input_o\ $ (\LEDR12~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR0~input_o\,
	datab => \LEDR16~input_o\,
	datac => \inst|addsub|addersubtractor:1:FAi|cout~0_combout\,
	datad => \LEDR12~input_o\,
	combout => \inst|addsub|addersubtractor:2:FAi|cout~0_combout\);

-- Location: LCCOMB_X111_Y41_N20
\inst|addsub|addersubtractor:3:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|addersubtractor:3:FAi|sum~0_combout\ = \inst|addsub|addersubtractor:2:FAi|cout~0_combout\ $ (\LEDR13~input_o\ $ (\LEDR0~input_o\ $ (\LEDR17~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addsub|addersubtractor:2:FAi|cout~0_combout\,
	datab => \LEDR13~input_o\,
	datac => \LEDR0~input_o\,
	datad => \LEDR17~input_o\,
	combout => \inst|addsub|addersubtractor:3:FAi|sum~0_combout\);

-- Location: LCCOMB_X112_Y41_N30
\inst|mux|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux|o[3]~3_combout\ = (\LEDR1~input_o\ & (\LEDR0~input_o\ & (\inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\))) # (!\LEDR1~input_o\ & (((\inst|addsub|addersubtractor:3:FAi|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR0~input_o\,
	datab => \LEDR1~input_o\,
	datac => \inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\,
	datad => \inst|addsub|addersubtractor:3:FAi|sum~0_combout\,
	combout => \inst|mux|o[3]~3_combout\);

-- Location: LCCOMB_X112_Y41_N28
\inst|addsub|FA0|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|FA0|sum~0_combout\ = \LEDR10~input_o\ $ (\LEDR14~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDR10~input_o\,
	datac => \LEDR14~input_o\,
	combout => \inst|addsub|FA0|sum~0_combout\);

-- Location: LCCOMB_X112_Y41_N2
\inst|mux|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux|o[0]~0_combout\ = (\LEDR1~input_o\ & (\inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\ & (\LEDR0~input_o\))) # (!\LEDR1~input_o\ & (((\inst|addsub|FA0|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\,
	datab => \LEDR1~input_o\,
	datac => \LEDR0~input_o\,
	datad => \inst|addsub|FA0|sum~0_combout\,
	combout => \inst|mux|o[0]~0_combout\);

-- Location: LCCOMB_X112_Y65_N0
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst|mux|o[0]~0_combout\ & ((\inst|mux|o[3]~3_combout\) # (\inst|mux|o[1]~1_combout\ $ (\inst|mux|o[2]~2_combout\)))) # (!\inst|mux|o[0]~0_combout\ & ((\inst|mux|o[1]~1_combout\) # (\inst|mux|o[2]~2_combout\ $ 
-- (\inst|mux|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux|o[1]~1_combout\,
	datab => \inst|mux|o[2]~2_combout\,
	datac => \inst|mux|o[3]~3_combout\,
	datad => \inst|mux|o[0]~0_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y65_N6
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst|mux|o[1]~1_combout\ & (!\inst|mux|o[3]~3_combout\ & ((\inst|mux|o[0]~0_combout\) # (!\inst|mux|o[2]~2_combout\)))) # (!\inst|mux|o[1]~1_combout\ & (\inst|mux|o[0]~0_combout\ & (\inst|mux|o[2]~2_combout\ $ 
-- (!\inst|mux|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux|o[1]~1_combout\,
	datab => \inst|mux|o[2]~2_combout\,
	datac => \inst|mux|o[3]~3_combout\,
	datad => \inst|mux|o[0]~0_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y50_N28
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst|mux|o[1]~1_combout\ & (((!\inst|mux|o[3]~3_combout\ & \inst|mux|o[0]~0_combout\)))) # (!\inst|mux|o[1]~1_combout\ & ((\inst|mux|o[2]~2_combout\ & (!\inst|mux|o[3]~3_combout\)) # (!\inst|mux|o[2]~2_combout\ & 
-- ((\inst|mux|o[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux|o[1]~1_combout\,
	datab => \inst|mux|o[2]~2_combout\,
	datac => \inst|mux|o[3]~3_combout\,
	datad => \inst|mux|o[0]~0_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y50_N10
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst|mux|o[1]~1_combout\ & ((\inst|mux|o[2]~2_combout\ & ((\inst|mux|o[0]~0_combout\))) # (!\inst|mux|o[2]~2_combout\ & (\inst|mux|o[3]~3_combout\ & !\inst|mux|o[0]~0_combout\)))) # (!\inst|mux|o[1]~1_combout\ & 
-- (!\inst|mux|o[3]~3_combout\ & (\inst|mux|o[2]~2_combout\ $ (\inst|mux|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux|o[1]~1_combout\,
	datab => \inst|mux|o[2]~2_combout\,
	datac => \inst|mux|o[3]~3_combout\,
	datad => \inst|mux|o[0]~0_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y65_N20
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst|mux|o[2]~2_combout\ & (\inst|mux|o[3]~3_combout\ & ((\inst|mux|o[1]~1_combout\) # (!\inst|mux|o[0]~0_combout\)))) # (!\inst|mux|o[2]~2_combout\ & (\inst|mux|o[1]~1_combout\ & (!\inst|mux|o[3]~3_combout\ & 
-- !\inst|mux|o[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux|o[1]~1_combout\,
	datab => \inst|mux|o[2]~2_combout\,
	datac => \inst|mux|o[3]~3_combout\,
	datad => \inst|mux|o[0]~0_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y65_N10
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst|mux|o[1]~1_combout\ & ((\inst|mux|o[0]~0_combout\ & ((\inst|mux|o[3]~3_combout\))) # (!\inst|mux|o[0]~0_combout\ & (\inst|mux|o[2]~2_combout\)))) # (!\inst|mux|o[1]~1_combout\ & (\inst|mux|o[2]~2_combout\ & 
-- (\inst|mux|o[3]~3_combout\ $ (\inst|mux|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux|o[1]~1_combout\,
	datab => \inst|mux|o[2]~2_combout\,
	datac => \inst|mux|o[3]~3_combout\,
	datad => \inst|mux|o[0]~0_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y65_N12
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst|mux|o[2]~2_combout\ & (!\inst|mux|o[1]~1_combout\ & (\inst|mux|o[3]~3_combout\ $ (!\inst|mux|o[0]~0_combout\)))) # (!\inst|mux|o[2]~2_combout\ & (\inst|mux|o[0]~0_combout\ & (\inst|mux|o[1]~1_combout\ $ 
-- (!\inst|mux|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux|o[1]~1_combout\,
	datab => \inst|mux|o[2]~2_combout\,
	datac => \inst|mux|o[3]~3_combout\,
	datad => \inst|mux|o[0]~0_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y38_N24
\inst3|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux6~3_combout\ = (\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ & ((\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\) # (\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ $ (\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\)))) # 
-- (!\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ & ((\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\) # (\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ $ (\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\,
	datab => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\,
	datac => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\,
	datad => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\,
	combout => \inst3|Mux6~3_combout\);

-- Location: LCCOMB_X114_Y38_N28
\inst3|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux6~6_combout\ = (\inst3|Mux6~3_combout\ & (\LEDR0~input_o\ & \LEDR1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mux6~3_combout\,
	datac => \LEDR0~input_o\,
	datad => \LEDR1~input_o\,
	combout => \inst3|Mux6~6_combout\);

-- Location: LCCOMB_X113_Y38_N14
\inst3|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~3_combout\ = (\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & (!\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & ((\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\) # (!\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\)))) # 
-- (!\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ $ (!\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\,
	datab => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\,
	datac => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\,
	datad => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\,
	combout => \inst3|Mux5~3_combout\);

-- Location: LCCOMB_X114_Y38_N22
\inst3|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~6_combout\ = (\inst3|Mux5~3_combout\ & (\LEDR1~input_o\ & \LEDR0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~3_combout\,
	datab => \LEDR1~input_o\,
	datac => \LEDR0~input_o\,
	combout => \inst3|Mux5~6_combout\);

-- Location: LCCOMB_X113_Y38_N12
\inst3|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~3_combout\ = (\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ & (!\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\))) # (!\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & 
-- ((\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & ((!\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\))) # (!\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\,
	datab => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\,
	datac => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\,
	datad => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\,
	combout => \inst3|Mux4~3_combout\);

-- Location: LCCOMB_X114_Y38_N24
\inst3|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~6_combout\ = (\inst3|Mux4~3_combout\ & (\LEDR1~input_o\ & \LEDR0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux4~3_combout\,
	datab => \LEDR1~input_o\,
	datac => \LEDR0~input_o\,
	combout => \inst3|Mux4~6_combout\);

-- Location: LCCOMB_X114_Y38_N30
\inst3|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~3_combout\ = (\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & ((\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & ((\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\))) # (!\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & 
-- (\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & !\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\)))) # (!\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & (!\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & 
-- (\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ $ (\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\,
	datab => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\,
	datac => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\,
	datad => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\,
	combout => \inst3|Mux3~3_combout\);

-- Location: LCCOMB_X114_Y38_N8
\inst3|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~6_combout\ = (\LEDR0~input_o\ & (\LEDR1~input_o\ & \inst3|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR0~input_o\,
	datab => \LEDR1~input_o\,
	datac => \inst3|Mux3~3_combout\,
	combout => \inst3|Mux3~6_combout\);

-- Location: LCCOMB_X114_Y38_N6
\inst3|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~3_combout\ = (\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & ((\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\) # (!\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\)))) # 
-- (!\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & (!\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & !\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\,
	datab => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\,
	datac => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\,
	datad => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\,
	combout => \inst3|Mux2~3_combout\);

-- Location: LCCOMB_X114_Y36_N24
\inst3|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~6_combout\ = (\inst3|Mux2~3_combout\ & (\LEDR1~input_o\ & \LEDR0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux2~3_combout\,
	datac => \LEDR1~input_o\,
	datad => \LEDR0~input_o\,
	combout => \inst3|Mux2~6_combout\);

-- Location: LCCOMB_X113_Y38_N10
\inst3|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~3_combout\ = (\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & ((\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\)) # (!\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ & 
-- ((\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\))))) # (!\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ $ 
-- (\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\,
	datab => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\,
	datac => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\,
	datad => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\,
	combout => \inst3|Mux1~3_combout\);

-- Location: LCCOMB_X114_Y38_N4
\inst3|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~6_combout\ = (\inst3|Mux1~3_combout\ & (\LEDR1~input_o\ & \LEDR0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux1~3_combout\,
	datab => \LEDR1~input_o\,
	datac => \LEDR0~input_o\,
	combout => \inst3|Mux1~6_combout\);

-- Location: LCCOMB_X114_Y38_N10
\inst3|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~3_combout\ = (\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ $ (\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\)))) # 
-- (!\inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\ & (!\inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\ & (\inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\ $ (\inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|remainder_reg|reg:3:biti|int_q~q\,
	datab => \inst|divider|dp|remainder_reg|reg:2:biti|int_q~q\,
	datac => \inst|divider|dp|remainder_reg|reg:1:biti|int_q~q\,
	datad => \inst|divider|dp|remainder_reg|reg:0:biti|int_q~q\,
	combout => \inst3|Mux0~3_combout\);

-- Location: LCCOMB_X114_Y38_N0
\inst3|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~6_combout\ = (\LEDR0~input_o\ & (\LEDR1~input_o\ & \inst3|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR0~input_o\,
	datab => \LEDR1~input_o\,
	datad => \inst3|Mux0~3_combout\,
	combout => \inst3|Mux0~6_combout\);

-- Location: LCCOMB_X110_Y38_N16
\inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|cout~0_combout\ = (\inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\ & ((\inst|divider|dp|adder_subtractor|yxor\(7)) # ((\inst|divider|dp|remainder_reg|reg:7:biti|int_q~q\ & 
-- \inst|divider|cp|selop1~0_combout\)))) # (!\inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\ & (\inst|divider|dp|remainder_reg|reg:7:biti|int_q~q\ & (\inst|divider|cp|selop1~0_combout\ & \inst|divider|dp|adder_subtractor|yxor\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|adder_subtractor|addersubtractor:6:FAi|cout~0_combout\,
	datab => \inst|divider|dp|remainder_reg|reg:7:biti|int_q~q\,
	datac => \inst|divider|cp|selop1~0_combout\,
	datad => \inst|divider|dp|adder_subtractor|yxor\(7),
	combout => \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|cout~0_combout\);

-- Location: LCCOMB_X114_Y38_N2
\inst|multiplier|cp|state_input[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|cp|state_input[5]~0_combout\ = (\LEDR10~input_o\ & ((\inst|divider|cp|states1to9:4:state_i|int_q~q\) # (\inst|divider|cp|states1to9:3:state_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|divider|cp|states1to9:4:state_i|int_q~q\,
	datac => \inst|divider|cp|states1to9:3:state_i|int_q~q\,
	datad => \LEDR10~input_o\,
	combout => \inst|multiplier|cp|state_input[5]~0_combout\);

-- Location: LCCOMB_X114_Y39_N22
\inst|multiplier|cp|states1to9:5:state_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|cp|states1to9:5:state_i|int_q~feeder_combout\ = \inst|multiplier|cp|state_input[5]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|multiplier|cp|state_input[5]~0_combout\,
	combout => \inst|multiplier|cp|states1to9:5:state_i|int_q~feeder_combout\);

-- Location: FF_X114_Y39_N23
\inst|multiplier|cp|states1to9:5:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|cp|states1to9:5:state_i|int_q~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|cp|states1to9:5:state_i|int_q~q\);

-- Location: LCCOMB_X114_Y39_N2
\inst|multiplier|cp|state_input[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|cp|state_input\(6) = (\inst|multiplier|cp|states1to9:5:state_i|int_q~q\) # (\LEDR10~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplier|cp|states1to9:5:state_i|int_q~q\,
	datad => \LEDR10~input_o\,
	combout => \inst|multiplier|cp|state_input\(6));

-- Location: FF_X114_Y39_N3
\inst|multiplier|cp|states1to9:6:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|cp|state_input\(6),
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\);

-- Location: LCCOMB_X114_Y39_N16
\inst|multiplier|dp|multiplicand_shiftreg|mux0|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|multiplicand_shiftreg|mux0|o~0_combout\ = (\LEDR14~input_o\ & !\inst|multiplier|cp|states1to9:6:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LEDR14~input_o\,
	datad => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|multiplier|dp|multiplicand_shiftreg|mux0|o~0_combout\);

-- Location: LCCOMB_X114_Y40_N12
\inst|multiplier|dp|multiplicand_shiftreg|int_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\ = (\inst|divider|cp|states1to9:2:state_i|int_q~q\) # ((\inst|divider|cp|states1to9:1:state_i|int_q~q\) # (\inst|multiplier|cp|states1to9:6:state_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|cp|states1to9:2:state_i|int_q~q\,
	datab => \inst|divider|cp|states1to9:1:state_i|int_q~q\,
	datad => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\);

-- Location: FF_X114_Y40_N13
\inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \inst|multiplier|dp|multiplicand_shiftreg|mux0|o~0_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N10
\inst|multiplier|dp|multiplicand_shiftreg|muxes:1:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|multiplicand_shiftreg|muxes:1:muxi|o~0_combout\ = (\inst|multiplier|cp|states1to9:6:state_i|int_q~q\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\)) # (!\inst|multiplier|cp|states1to9:6:state_i|int_q~q\ & 
-- ((\LEDR15~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\,
	datad => \LEDR15~input_o\,
	combout => \inst|multiplier|dp|multiplicand_shiftreg|muxes:1:muxi|o~0_combout\);

-- Location: FF_X114_Y40_N11
\inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|multiplicand_shiftreg|muxes:1:muxi|o~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N20
\inst|multiplier|dp|multiplicand_shiftreg|muxes:2:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|multiplicand_shiftreg|muxes:2:muxi|o~0_combout\ = (\inst|multiplier|cp|states1to9:6:state_i|int_q~q\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q~q\)) # (!\inst|multiplier|cp|states1to9:6:state_i|int_q~q\ & 
-- ((\LEDR16~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q~q\,
	datad => \LEDR16~input_o\,
	combout => \inst|multiplier|dp|multiplicand_shiftreg|muxes:2:muxi|o~0_combout\);

-- Location: FF_X114_Y40_N21
\inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|multiplicand_shiftreg|muxes:2:muxi|o~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N30
\inst|multiplier|dp|multiplicand_shiftreg|muxes:3:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|multiplicand_shiftreg|muxes:3:muxi|o~0_combout\ = (\inst|multiplier|cp|states1to9:6:state_i|int_q~q\ & ((\inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q~q\))) # (!\inst|multiplier|cp|states1to9:6:state_i|int_q~q\ & 
-- (\LEDR17~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	datac => \LEDR17~input_o\,
	datad => \inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q~q\,
	combout => \inst|multiplier|dp|multiplicand_shiftreg|muxes:3:muxi|o~0_combout\);

-- Location: FF_X114_Y40_N31
\inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|multiplicand_shiftreg|muxes:3:muxi|o~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N24
\inst|multiplier|dp|multiplicand_shiftreg|muxes:4:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|multiplicand_shiftreg|muxes:4:muxi|o~0_combout\ = (\inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q~q\ & \inst|multiplier|cp|states1to9:6:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q~q\,
	datad => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|multiplier|dp|multiplicand_shiftreg|muxes:4:muxi|o~0_combout\);

-- Location: FF_X114_Y40_N25
\inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|multiplicand_shiftreg|muxes:4:muxi|o~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N14
\inst|multiplier|dp|multiplicand_shiftreg|muxes:5:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|multiplicand_shiftreg|muxes:5:muxi|o~0_combout\ = (\inst|multiplier|cp|states1to9:6:state_i|int_q~q\ & \inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	datad => \inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q~q\,
	combout => \inst|multiplier|dp|multiplicand_shiftreg|muxes:5:muxi|o~0_combout\);

-- Location: FF_X114_Y40_N15
\inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|multiplicand_shiftreg|muxes:5:muxi|o~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N8
\inst|multiplier|dp|multiplicand_shiftreg|muxes:6:muxi|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|multiplicand_shiftreg|muxes:6:muxi|o~0_combout\ = (\inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q~q\ & \inst|multiplier|cp|states1to9:6:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q~q\,
	datad => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|multiplier|dp|multiplicand_shiftreg|muxes:6:muxi|o~0_combout\);

-- Location: FF_X114_Y40_N9
\inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|multiplicand_shiftreg|muxes:6:muxi|o~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N6
\inst|multiplier|dp|multiplicand_shiftreg|muxn_1|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|multiplicand_shiftreg|muxn_1|o~0_combout\ = (\inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q~q\ & \inst|multiplier|cp|states1to9:6:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q~q\,
	datad => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|multiplier|dp|multiplicand_shiftreg|muxn_1|o~0_combout\);

-- Location: FF_X114_Y40_N7
\inst|multiplier|dp|multiplicand_shiftreg|dffs:7:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|multiplicand_shiftreg|muxn_1|o~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|dp|multiplicand_shiftreg|int_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|multiplicand_shiftreg|dffs:7:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N2
\inst|multiplier|dp|muxA_or_0|o[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxA_or_0|o[7]~1_combout\ = (\LEDR10~input_o\ & \inst|multiplier|dp|multiplicand_shiftreg|dffs:7:biti|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDR10~input_o\,
	datad => \inst|multiplier|dp|multiplicand_shiftreg|dffs:7:biti|int_q~q\,
	combout => \inst|multiplier|dp|muxA_or_0|o[7]~1_combout\);

-- Location: LCCOMB_X114_Y40_N28
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|sum~0_combout\ = \inst|multiplier|dp|muxP|o[6]~14_combout\ $ (((\inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q~q\ & \LEDR10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|muxP|o[6]~14_combout\,
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q~q\,
	datad => \LEDR10~input_o\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|sum~0_combout\);

-- Location: LCCOMB_X114_Y40_N18
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|sum~0_combout\ = \inst|multiplier|dp|muxP|o[5]~13_combout\ $ (((\LEDR10~input_o\ & \inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|muxP|o[5]~13_combout\,
	datab => \LEDR10~input_o\,
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q~q\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|sum~0_combout\);

-- Location: FF_X113_Y40_N27
\inst|multiplier|dp|regP|reg:5:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|muxP|o[5]~13_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|cp|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|regP|reg:5:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N16
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|sum~0_combout\ = \inst|multiplier|dp|muxP|o[3]~11_combout\ $ (((\inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q~q\ & \LEDR10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q~q\,
	datab => \inst|multiplier|dp|muxP|o[3]~11_combout\,
	datad => \LEDR10~input_o\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|sum~0_combout\);

-- Location: FF_X113_Y40_N15
\inst|multiplier|dp|regP|reg:3:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|muxP|o[3]~11_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|cp|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|regP|reg:3:biti|int_q~q\);

-- Location: FF_X113_Y40_N23
\inst|multiplier|dp|regP|reg:1:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|muxP|o[1]~9_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|cp|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|regP|reg:1:biti|int_q~q\);

-- Location: FF_X113_Y40_N9
\inst|multiplier|dp|regP|reg:0:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \inst|multiplier|dp|muxP|o[0]~8_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \inst|multiplier|cp|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|regP|reg:0:biti|int_q~q\);

-- Location: LCCOMB_X114_Y40_N4
\inst|multiplier|dp|muxA_or_0|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxA_or_0|o[0]~0_combout\ = (\LEDR10~input_o\ & \inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDR10~input_o\,
	datad => \inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\,
	combout => \inst|multiplier|dp|muxA_or_0|o[0]~0_combout\);

-- Location: LCCOMB_X113_Y40_N16
\inst|multiplier|dp|muxP|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxP|o[0]~8_combout\ = (\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & (((\inst|multiplier|dp|regP|reg:0:biti|int_q~q\)))) # (!\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & (\inst|multiplier|dp|muxP|o[0]~8_combout\ $ 
-- (((\inst|multiplier|dp|muxA_or_0|o[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|muxP|o[0]~8_combout\,
	datab => \inst|multiplier|dp|regP|reg:0:biti|int_q~q\,
	datac => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\,
	datad => \inst|multiplier|dp|muxA_or_0|o[0]~0_combout\,
	combout => \inst|multiplier|dp|muxP|o[0]~8_combout\);

-- Location: LCCOMB_X113_Y40_N18
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|sum~0_combout\ = (\LEDR10~input_o\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q~q\ $ (((\inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\) # 
-- (!\inst|multiplier|dp|muxP|o[0]~8_combout\))))) # (!\LEDR10~input_o\ & (((!\inst|multiplier|dp|muxP|o[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR10~input_o\,
	datab => \inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\,
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q~q\,
	datad => \inst|multiplier|dp|muxP|o[0]~8_combout\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|sum~0_combout\);

-- Location: LCCOMB_X113_Y40_N22
\inst|multiplier|dp|muxP|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxP|o[1]~9_combout\ = (\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & (((\inst|multiplier|dp|regP|reg:1:biti|int_q~q\)))) # (!\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & (\inst|multiplier|dp|muxP|o[1]~9_combout\ $ 
-- (((!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\,
	datab => \inst|multiplier|dp|muxP|o[1]~9_combout\,
	datac => \inst|multiplier|dp|regP|reg:1:biti|int_q~q\,
	datad => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|sum~0_combout\,
	combout => \inst|multiplier|dp|muxP|o[1]~9_combout\);

-- Location: LCCOMB_X113_Y40_N8
\inst|multiplier|dp|adder_subtractorAP|FA0|cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|FA0|cout~combout\ = ((\LEDR10~input_o\ & \inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\)) # (!\inst|multiplier|dp|muxP|o[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR10~input_o\,
	datab => \inst|multiplier|dp|multiplicand_shiftreg|dffs:0:biti|int_q~q\,
	datad => \inst|multiplier|dp|muxP|o[0]~8_combout\,
	combout => \inst|multiplier|dp|adder_subtractorAP|FA0|cout~combout\);

-- Location: LCCOMB_X113_Y40_N2
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|cout~0_combout\ = (\inst|multiplier|dp|muxP|o[1]~9_combout\ & (\LEDR10~input_o\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q~q\ & 
-- \inst|multiplier|dp|adder_subtractorAP|FA0|cout~combout\))) # (!\inst|multiplier|dp|muxP|o[1]~9_combout\ & ((\inst|multiplier|dp|adder_subtractorAP|FA0|cout~combout\) # ((\LEDR10~input_o\ & 
-- \inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR10~input_o\,
	datab => \inst|multiplier|dp|multiplicand_shiftreg|dffs:1:biti|int_q~q\,
	datac => \inst|multiplier|dp|muxP|o[1]~9_combout\,
	datad => \inst|multiplier|dp|adder_subtractorAP|FA0|cout~combout\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|cout~0_combout\);

-- Location: LCCOMB_X114_Y40_N26
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|sum~0_combout\ = \inst|multiplier|dp|muxP|o[2]~10_combout\ $ (((\LEDR10~input_o\ & \inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDR10~input_o\,
	datac => \inst|multiplier|dp|muxP|o[2]~10_combout\,
	datad => \inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q~q\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|sum~0_combout\);

-- Location: FF_X113_Y40_N5
\inst|multiplier|dp|regP|reg:2:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|muxP|o[2]~10_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|cp|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|regP|reg:2:biti|int_q~q\);

-- Location: LCCOMB_X113_Y40_N4
\inst|multiplier|dp|muxP|o[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxP|o[2]~10_combout\ = (\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & (((\inst|multiplier|dp|regP|reg:2:biti|int_q~q\)))) # (!\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & 
-- (\inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|sum~0_combout\ $ (((!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\,
	datab => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|sum~0_combout\,
	datac => \inst|multiplier|dp|regP|reg:2:biti|int_q~q\,
	datad => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|cout~0_combout\,
	combout => \inst|multiplier|dp|muxP|o[2]~10_combout\);

-- Location: LCCOMB_X113_Y40_N20
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|cout~0_combout\ = (\inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|cout~0_combout\ & (((\inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q~q\ & \LEDR10~input_o\)) # 
-- (!\inst|multiplier|dp|muxP|o[2]~10_combout\))) # (!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|cout~0_combout\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q~q\ & (!\inst|multiplier|dp|muxP|o[2]~10_combout\ & 
-- \LEDR10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|multiplicand_shiftreg|dffs:2:biti|int_q~q\,
	datab => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:1:FAi|cout~0_combout\,
	datac => \inst|multiplier|dp|muxP|o[2]~10_combout\,
	datad => \LEDR10~input_o\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|cout~0_combout\);

-- Location: LCCOMB_X113_Y40_N14
\inst|multiplier|dp|muxP|o[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxP|o[3]~11_combout\ = (\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & (((\inst|multiplier|dp|regP|reg:3:biti|int_q~q\)))) # (!\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & 
-- (\inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|sum~0_combout\ $ (((!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\,
	datab => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|sum~0_combout\,
	datac => \inst|multiplier|dp|regP|reg:3:biti|int_q~q\,
	datad => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|cout~0_combout\,
	combout => \inst|multiplier|dp|muxP|o[3]~11_combout\);

-- Location: LCCOMB_X113_Y40_N6
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|cout~0_combout\ = (\inst|multiplier|dp|muxP|o[3]~11_combout\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q~q\ & (\LEDR10~input_o\ & 
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|cout~0_combout\))) # (!\inst|multiplier|dp|muxP|o[3]~11_combout\ & ((\inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|cout~0_combout\) # 
-- ((\inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q~q\ & \LEDR10~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|multiplicand_shiftreg|dffs:3:biti|int_q~q\,
	datab => \LEDR10~input_o\,
	datac => \inst|multiplier|dp|muxP|o[3]~11_combout\,
	datad => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:2:FAi|cout~0_combout\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|cout~0_combout\);

-- Location: LCCOMB_X114_Y40_N22
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|sum~0_combout\ = \inst|multiplier|dp|muxP|o[4]~12_combout\ $ (((\inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q~q\ & \LEDR10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|muxP|o[4]~12_combout\,
	datab => \inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q~q\,
	datad => \LEDR10~input_o\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|sum~0_combout\);

-- Location: FF_X113_Y40_N1
\inst|multiplier|dp|regP|reg:4:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|muxP|o[4]~12_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|cp|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|regP|reg:4:biti|int_q~q\);

-- Location: LCCOMB_X113_Y40_N0
\inst|multiplier|dp|muxP|o[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxP|o[4]~12_combout\ = (\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & (((\inst|multiplier|dp|regP|reg:4:biti|int_q~q\)))) # (!\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & 
-- (\inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|sum~0_combout\ $ (((!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\,
	datab => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|sum~0_combout\,
	datac => \inst|multiplier|dp|regP|reg:4:biti|int_q~q\,
	datad => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|cout~0_combout\,
	combout => \inst|multiplier|dp|muxP|o[4]~12_combout\);

-- Location: LCCOMB_X113_Y40_N24
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|cout~0_combout\ = (\inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|cout~0_combout\ & (((\LEDR10~input_o\ & \inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q~q\)) # 
-- (!\inst|multiplier|dp|muxP|o[4]~12_combout\))) # (!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|cout~0_combout\ & (\LEDR10~input_o\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q~q\ & 
-- !\inst|multiplier|dp|muxP|o[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:3:FAi|cout~0_combout\,
	datab => \LEDR10~input_o\,
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:4:biti|int_q~q\,
	datad => \inst|multiplier|dp|muxP|o[4]~12_combout\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|cout~0_combout\);

-- Location: LCCOMB_X113_Y40_N26
\inst|multiplier|dp|muxP|o[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxP|o[5]~13_combout\ = (\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & (((\inst|multiplier|dp|regP|reg:5:biti|int_q~q\)))) # (!\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & 
-- (\inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|sum~0_combout\ $ (((!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\,
	datab => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|sum~0_combout\,
	datac => \inst|multiplier|dp|regP|reg:5:biti|int_q~q\,
	datad => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|cout~0_combout\,
	combout => \inst|multiplier|dp|muxP|o[5]~13_combout\);

-- Location: LCCOMB_X113_Y40_N10
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|cout~0_combout\ = (\inst|multiplier|dp|muxP|o[5]~13_combout\ & (\LEDR10~input_o\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q~q\ & 
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|cout~0_combout\))) # (!\inst|multiplier|dp|muxP|o[5]~13_combout\ & ((\inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|cout~0_combout\) # ((\LEDR10~input_o\ & 
-- \inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR10~input_o\,
	datab => \inst|multiplier|dp|multiplicand_shiftreg|dffs:5:biti|int_q~q\,
	datac => \inst|multiplier|dp|muxP|o[5]~13_combout\,
	datad => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:4:FAi|cout~0_combout\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|cout~0_combout\);

-- Location: LCCOMB_X113_Y40_N12
\inst|multiplier|dp|muxP|o[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxP|o[6]~14_combout\ = (\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & (((\inst|multiplier|dp|regP|reg:6:biti|int_q~q\)))) # (!\inst|multiplier|dp|regP|reg:7:biti|int_q~q\ & 
-- (\inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|sum~0_combout\ $ (((!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\,
	datab => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|sum~0_combout\,
	datac => \inst|multiplier|dp|regP|reg:6:biti|int_q~q\,
	datad => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|cout~0_combout\,
	combout => \inst|multiplier|dp|muxP|o[6]~14_combout\);

-- Location: FF_X113_Y40_N13
\inst|multiplier|dp|regP|reg:6:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|muxP|o[6]~14_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|cp|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|regP|reg:6:biti|int_q~q\);

-- Location: LCCOMB_X112_Y40_N0
\inst|multiplier|dp|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|z~0_combout\ = (\inst|multiplier|dp|regP|reg:6:biti|int_q~q\ & (\inst|multiplier|dp|regP|reg:5:biti|int_q~q\ & (\inst|multiplier|dp|regP|reg:4:biti|int_q~q\ & \inst|multiplier|dp|regP|reg:7:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|regP|reg:6:biti|int_q~q\,
	datab => \inst|multiplier|dp|regP|reg:5:biti|int_q~q\,
	datac => \inst|multiplier|dp|regP|reg:4:biti|int_q~q\,
	datad => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\,
	combout => \inst|multiplier|dp|z~0_combout\);

-- Location: LCCOMB_X113_Y39_N0
\inst|multiplier|cp|state_input[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|cp|state_input[8]~2_combout\ = (((!\LEDR12~input_o\) # (!\LEDR13~input_o\)) # (!\LEDR11~input_o\)) # (!\LEDR10~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR10~input_o\,
	datab => \LEDR11~input_o\,
	datac => \LEDR13~input_o\,
	datad => \LEDR12~input_o\,
	combout => \inst|multiplier|cp|state_input[8]~2_combout\);

-- Location: LCCOMB_X112_Y40_N30
\inst|multiplier|dp|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|z~1_combout\ = (\inst|multiplier|dp|regP|reg:2:biti|int_q~q\ & (\inst|multiplier|dp|regP|reg:3:biti|int_q~q\ & (\inst|multiplier|dp|regP|reg:0:biti|int_q~q\ & \inst|multiplier|dp|regP|reg:1:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|regP|reg:2:biti|int_q~q\,
	datab => \inst|multiplier|dp|regP|reg:3:biti|int_q~q\,
	datac => \inst|multiplier|dp|regP|reg:0:biti|int_q~q\,
	datad => \inst|multiplier|dp|regP|reg:1:biti|int_q~q\,
	combout => \inst|multiplier|dp|z~1_combout\);

-- Location: LCCOMB_X114_Y39_N6
\inst|multiplier|cp|states1to9:7:state_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|cp|states1to9:7:state_i|int_q~feeder_combout\ = \inst|multiplier|cp|states1to9:6:state_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|multiplier|cp|states1to9:6:state_i|int_q~q\,
	combout => \inst|multiplier|cp|states1to9:7:state_i|int_q~feeder_combout\);

-- Location: FF_X114_Y39_N7
\inst|multiplier|cp|states1to9:7:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|cp|states1to9:7:state_i|int_q~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|cp|states1to9:7:state_i|int_q~q\);

-- Location: LCCOMB_X113_Y39_N14
\inst|multiplier|cp|state_input[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|cp|state_input[8]~3_combout\ = (\inst|multiplier|cp|state_input[8]~2_combout\ & (\inst|multiplier|cp|states1to9:7:state_i|int_q~q\ & ((!\inst|multiplier|dp|z~1_combout\) # (!\inst|multiplier|dp|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|z~0_combout\,
	datab => \inst|multiplier|cp|state_input[8]~2_combout\,
	datac => \inst|multiplier|dp|z~1_combout\,
	datad => \inst|multiplier|cp|states1to9:7:state_i|int_q~q\,
	combout => \inst|multiplier|cp|state_input[8]~3_combout\);

-- Location: LCCOMB_X114_Y39_N12
\inst|multiplier|cp|states1to9:8:state_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|cp|states1to9:8:state_i|int_q~feeder_combout\ = \inst|multiplier|cp|state_input[8]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|multiplier|cp|state_input[8]~3_combout\,
	combout => \inst|multiplier|cp|states1to9:8:state_i|int_q~feeder_combout\);

-- Location: FF_X114_Y39_N13
\inst|multiplier|cp|states1to9:8:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|cp|states1to9:8:state_i|int_q~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|cp|states1to9:8:state_i|int_q~q\);

-- Location: LCCOMB_X113_Y39_N6
\inst|multiplier|cp|state_input[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|cp|state_input[9]~1_combout\ = (\inst|multiplier|cp|states1to9:7:state_i|int_q~q\ & ((\inst|multiplier|cp|states1to9:8:state_i|int_q~q\) # ((\inst|multiplier|dp|z~0_combout\ & \inst|multiplier|dp|z~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|z~0_combout\,
	datab => \inst|multiplier|cp|states1to9:8:state_i|int_q~q\,
	datac => \inst|multiplier|dp|z~1_combout\,
	datad => \inst|multiplier|cp|states1to9:7:state_i|int_q~q\,
	combout => \inst|multiplier|cp|state_input[9]~1_combout\);

-- Location: FF_X114_Y39_N1
\inst|multiplier|cp|states1to9:9:state_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \inst|multiplier|cp|state_input[9]~1_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|cp|states1to9:9:state_i|int_q~q\);

-- Location: LCCOMB_X114_Y39_N0
\inst|multiplier|cp|loadP\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|cp|loadP~combout\ = (\inst|multiplier|cp|states1to9:5:state_i|int_q~q\) # (\inst|multiplier|cp|states1to9:9:state_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|cp|states1to9:5:state_i|int_q~q\,
	datac => \inst|multiplier|cp|states1to9:9:state_i|int_q~q\,
	combout => \inst|multiplier|cp|loadP~combout\);

-- Location: FF_X113_Y40_N31
\inst|multiplier|dp|regP|reg:7:biti|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|multiplier|dp|muxP|o[7]~15_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \inst|multiplier|cp|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\);

-- Location: LCCOMB_X113_Y40_N28
\inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|cout~0_combout\ = (\inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|cout~0_combout\ & (((\LEDR10~input_o\ & \inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q~q\)) # 
-- (!\inst|multiplier|dp|muxP|o[6]~14_combout\))) # (!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|cout~0_combout\ & (\LEDR10~input_o\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q~q\ & 
-- !\inst|multiplier|dp|muxP|o[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:5:FAi|cout~0_combout\,
	datab => \LEDR10~input_o\,
	datac => \inst|multiplier|dp|multiplicand_shiftreg|dffs:6:biti|int_q~q\,
	datad => \inst|multiplier|dp|muxP|o[6]~14_combout\,
	combout => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|cout~0_combout\);

-- Location: LCCOMB_X113_Y40_N30
\inst|multiplier|dp|muxP|o[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier|dp|muxP|o[7]~15_combout\ = (\inst|multiplier|dp|regP|reg:7:biti|int_q~q\) # (\inst|multiplier|dp|muxA_or_0|o[7]~1_combout\ $ (\inst|multiplier|dp|muxP|o[7]~15_combout\ $ 
-- (!\inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|muxA_or_0|o[7]~1_combout\,
	datab => \inst|multiplier|dp|muxP|o[7]~15_combout\,
	datac => \inst|multiplier|dp|regP|reg:7:biti|int_q~q\,
	datad => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|cout~0_combout\,
	combout => \inst|multiplier|dp|muxP|o[7]~15_combout\);

-- Location: LCCOMB_X114_Y40_N0
\inst|OverflowOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OverflowOut~0_combout\ = (\inst|multiplier|dp|muxP|o[7]~15_combout\ & (\inst|multiplier|dp|multiplicand_shiftreg|dffs:7:biti|int_q~q\ & (\inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|cout~0_combout\ & \LEDR10~input_o\))) # 
-- (!\inst|multiplier|dp|muxP|o[7]~15_combout\ & ((\inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|cout~0_combout\) # ((\inst|multiplier|dp|multiplicand_shiftreg|dffs:7:biti|int_q~q\ & \LEDR10~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier|dp|multiplicand_shiftreg|dffs:7:biti|int_q~q\,
	datab => \inst|multiplier|dp|muxP|o[7]~15_combout\,
	datac => \inst|multiplier|dp|adder_subtractorAP|addersubtractor:6:FAi|cout~0_combout\,
	datad => \LEDR10~input_o\,
	combout => \inst|OverflowOut~0_combout\);

-- Location: LCCOMB_X111_Y41_N26
\inst|OverflowOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OverflowOut~1_combout\ = (\LEDR1~input_o\ & ((\LEDR0~input_o\ & (\inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|cout~0_combout\)) # (!\LEDR0~input_o\ & ((\inst|OverflowOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|adder_subtractor|addersubtractor:7:FAi|cout~0_combout\,
	datab => \inst|OverflowOut~0_combout\,
	datac => \LEDR0~input_o\,
	datad => \LEDR1~input_o\,
	combout => \inst|OverflowOut~1_combout\);

-- Location: LCCOMB_X112_Y41_N12
\inst|ZeroOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ZeroOut~0_combout\ = (\inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\) # ((\inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\) # ((\inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\) # 
-- (\inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|divider|dp|quotient_shiftreg|dffs:1:biti|int_q~q\,
	datab => \inst|divider|dp|quotient_shiftreg|dffs:2:biti|int_q~q\,
	datac => \inst|divider|dp|quotient_shiftreg|dffs:3:biti|int_q~q\,
	datad => \inst|divider|dp|quotient_shiftreg|dffs:0:biti|int_q~q\,
	combout => \inst|ZeroOut~0_combout\);

-- Location: LCCOMB_X112_Y41_N6
\inst|ZeroOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ZeroOut~1_combout\ = (\LEDR0~input_o\ & (!\inst|ZeroOut~0_combout\)) # (!\LEDR0~input_o\ & (((!\inst|multiplier|dp|z~1_combout\) # (!\inst|multiplier|dp|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ZeroOut~0_combout\,
	datab => \inst|multiplier|dp|z~0_combout\,
	datac => \LEDR0~input_o\,
	datad => \inst|multiplier|dp|z~1_combout\,
	combout => \inst|ZeroOut~1_combout\);

-- Location: LCCOMB_X112_Y41_N16
\inst|ZeroOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ZeroOut~2_combout\ = (!\inst|addsub|addersubtractor:1:FAi|sum~combout\ & (!\inst|addsub|addersubtractor:2:FAi|sum~0_combout\ & !\inst|addsub|addersubtractor:3:FAi|sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addsub|addersubtractor:1:FAi|sum~combout\,
	datab => \inst|addsub|addersubtractor:2:FAi|sum~0_combout\,
	datad => \inst|addsub|addersubtractor:3:FAi|sum~0_combout\,
	combout => \inst|ZeroOut~2_combout\);

-- Location: LCCOMB_X112_Y41_N18
\inst|ZeroOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ZeroOut~3_combout\ = (\LEDR1~input_o\ & (\inst|ZeroOut~1_combout\)) # (!\LEDR1~input_o\ & (((!\inst|addsub|FA0|sum~0_combout\ & \inst|ZeroOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ZeroOut~1_combout\,
	datab => \inst|addsub|FA0|sum~0_combout\,
	datac => \LEDR1~input_o\,
	datad => \inst|ZeroOut~2_combout\,
	combout => \inst|ZeroOut~3_combout\);

-- Location: LCCOMB_X111_Y41_N12
\inst|addsub|addersubtractor:3:FAi|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addsub|addersubtractor:3:FAi|cout~0_combout\ = (\inst|addsub|addersubtractor:2:FAi|cout~0_combout\ & ((\LEDR17~input_o\) # (\LEDR13~input_o\ $ (\LEDR0~input_o\)))) # (!\inst|addsub|addersubtractor:2:FAi|cout~0_combout\ & (\LEDR17~input_o\ & 
-- (\LEDR13~input_o\ $ (\LEDR0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addsub|addersubtractor:2:FAi|cout~0_combout\,
	datab => \LEDR13~input_o\,
	datac => \LEDR0~input_o\,
	datad => \LEDR17~input_o\,
	combout => \inst|addsub|addersubtractor:3:FAi|cout~0_combout\);

-- Location: LCCOMB_X111_Y41_N22
\inst|CarryOut\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|CarryOut~combout\ = (\inst|addsub|addersubtractor:3:FAi|cout~0_combout\ & !\LEDR1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addsub|addersubtractor:3:FAi|cout~0_combout\,
	datad => \LEDR1~input_o\,
	combout => \inst|CarryOut~combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;
END structure;


