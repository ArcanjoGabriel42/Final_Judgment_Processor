-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/25/2018 04:42:20"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DataPath IS
    PORT (
	Clock_Sistema : IN std_logic;
	Instruction_to_writeRegister : OUT std_logic_vector(2 DOWNTO 0);
	Instruction_to_Control : OUT std_logic_vector(3 DOWNTO 0);
	Instruction_to_register1 : OUT std_logic_vector(2 DOWNTO 0);
	Instruction_to_register2 : OUT std_logic_vector(2 DOWNTO 0);
	Instruction_to_controlULA : OUT std_logic_vector(2 DOWNTO 0);
	Instruction_to_is_BEQ : OUT std_logic_vector(5 DOWNTO 0);
	Instruction_to_Jump : OUT std_logic_vector(11 DOWNTO 0);
	Instruct_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END DataPath;

ARCHITECTURE structure OF DataPath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock_Sistema : std_logic;
SIGNAL ww_Instruction_to_writeRegister : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_Control : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Instruction_to_register1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_register2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_controlULA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_is_BEQ : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Instruction_to_Jump : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Instruct_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \Instruction_to_writeRegister[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_writeRegister[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_writeRegister[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_is_BEQ[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_is_BEQ[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_is_BEQ[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_is_BEQ[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_is_BEQ[4]~output_o\ : std_logic;
SIGNAL \Instruction_to_is_BEQ[5]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[4]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[5]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[6]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[7]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[8]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[9]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[10]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump[11]~output_o\ : std_logic;
SIGNAL \Instruct_out[0]~output_o\ : std_logic;
SIGNAL \Instruct_out[1]~output_o\ : std_logic;
SIGNAL \Instruct_out[2]~output_o\ : std_logic;
SIGNAL \Instruct_out[3]~output_o\ : std_logic;
SIGNAL \Instruct_out[4]~output_o\ : std_logic;
SIGNAL \Instruct_out[5]~output_o\ : std_logic;
SIGNAL \Instruct_out[6]~output_o\ : std_logic;
SIGNAL \Instruct_out[7]~output_o\ : std_logic;
SIGNAL \Instruct_out[8]~output_o\ : std_logic;
SIGNAL \Instruct_out[9]~output_o\ : std_logic;
SIGNAL \Instruct_out[10]~output_o\ : std_logic;
SIGNAL \Instruct_out[11]~output_o\ : std_logic;
SIGNAL \Instruct_out[12]~output_o\ : std_logic;
SIGNAL \Instruct_out[13]~output_o\ : std_logic;
SIGNAL \Instruct_out[14]~output_o\ : std_logic;
SIGNAL \Instruct_out[15]~output_o\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \G1|pout[0]~0_combout\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G2|Add0~58\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G3|Mux12~0_combout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G3|Mux12~1_combout\ : std_logic;
SIGNAL \G3|Mux14~0_combout\ : std_logic;
SIGNAL \G3|Mux14~1_combout\ : std_logic;
SIGNAL \G3|Mux12~2_combout\ : std_logic;
SIGNAL \G3|Mux13~0_combout\ : std_logic;
SIGNAL \G3|rs[2]~0_combout\ : std_logic;
SIGNAL \G3|rs[0]~reg0_q\ : std_logic;
SIGNAL \G3|jump[0]~0_combout\ : std_logic;
SIGNAL \G3|rs[0]~2_combout\ : std_logic;
SIGNAL \G3|rs[0]~en_q\ : std_logic;
SIGNAL \G3|Mux13~1_combout\ : std_logic;
SIGNAL \G3|rs[1]~reg0_q\ : std_logic;
SIGNAL \G3|rs[1]~3_combout\ : std_logic;
SIGNAL \G3|rs[1]~en_q\ : std_logic;
SIGNAL \G3|Mux12~3_combout\ : std_logic;
SIGNAL \G3|rs[2]~reg0_q\ : std_logic;
SIGNAL \G3|rs[2]~4_combout\ : std_logic;
SIGNAL \G3|rs[2]~en_q\ : std_logic;
SIGNAL \G3|Mux15~0_combout\ : std_logic;
SIGNAL \G3|op[0]~reg0_q\ : std_logic;
SIGNAL \G3|op[0]~0_combout\ : std_logic;
SIGNAL \G3|op[0]~en_q\ : std_logic;
SIGNAL \G3|op[1]~reg0_q\ : std_logic;
SIGNAL \G3|op[1]~1_combout\ : std_logic;
SIGNAL \G3|op[1]~en_q\ : std_logic;
SIGNAL \G3|op[2]~reg0_q\ : std_logic;
SIGNAL \G3|op[2]~2_combout\ : std_logic;
SIGNAL \G3|op[2]~en_q\ : std_logic;
SIGNAL \G3|op[3]~reg0_q\ : std_logic;
SIGNAL \G3|op[3]~3_combout\ : std_logic;
SIGNAL \G3|op[3]~en_q\ : std_logic;
SIGNAL \G3|rd[2]~0_combout\ : std_logic;
SIGNAL \G3|rd[0]~reg0_q\ : std_logic;
SIGNAL \G3|Equal0~0_combout\ : std_logic;
SIGNAL \G3|rd[0]~en_q\ : std_logic;
SIGNAL \G3|rd[1]~reg0_q\ : std_logic;
SIGNAL \G3|rd[1]~en_q\ : std_logic;
SIGNAL \G3|rd[2]~reg0_q\ : std_logic;
SIGNAL \G3|rd[2]~en_q\ : std_logic;
SIGNAL \G3|rt[0]~reg0_q\ : std_logic;
SIGNAL \G3|rt[0]~0_combout\ : std_logic;
SIGNAL \G3|rt[0]~en_q\ : std_logic;
SIGNAL \G3|rt[1]~reg0_q\ : std_logic;
SIGNAL \G3|rt[1]~1_combout\ : std_logic;
SIGNAL \G3|rt[1]~en_q\ : std_logic;
SIGNAL \G3|rt[2]~reg0_q\ : std_logic;
SIGNAL \G3|rt[2]~2_combout\ : std_logic;
SIGNAL \G3|rt[2]~en_q\ : std_logic;
SIGNAL \G3|funct[0]~reg0_q\ : std_logic;
SIGNAL \G3|funct[0]~en_q\ : std_logic;
SIGNAL \G3|funct[1]~reg0_q\ : std_logic;
SIGNAL \G3|funct[1]~en_q\ : std_logic;
SIGNAL \G3|funct[2]~reg0_q\ : std_logic;
SIGNAL \G3|funct[2]~en_q\ : std_logic;
SIGNAL \G3|tipoi[5]~0_combout\ : std_logic;
SIGNAL \G3|tipoi[0]~reg0_q\ : std_logic;
SIGNAL \G3|jump[0]~1_combout\ : std_logic;
SIGNAL \G3|tipoi[0]~en_q\ : std_logic;
SIGNAL \G3|tipoi[1]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[1]~en_q\ : std_logic;
SIGNAL \G3|tipoi[2]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[2]~en_q\ : std_logic;
SIGNAL \G3|tipoi[3]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[3]~en_q\ : std_logic;
SIGNAL \G3|tipoi[4]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[4]~en_q\ : std_logic;
SIGNAL \G3|tipoi[5]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[5]~en_q\ : std_logic;
SIGNAL \G3|jump[0]~reg0_q\ : std_logic;
SIGNAL \G3|rs[2]~1_combout\ : std_logic;
SIGNAL \G3|jump[0]~en_q\ : std_logic;
SIGNAL \G3|jump[1]~reg0_q\ : std_logic;
SIGNAL \G3|jump[1]~en_q\ : std_logic;
SIGNAL \G3|jump[2]~reg0_q\ : std_logic;
SIGNAL \G3|jump[2]~en_q\ : std_logic;
SIGNAL \G3|jump[3]~reg0_q\ : std_logic;
SIGNAL \G3|jump[3]~en_q\ : std_logic;
SIGNAL \G3|jump[4]~reg0_q\ : std_logic;
SIGNAL \G3|jump[4]~en_q\ : std_logic;
SIGNAL \G3|jump[5]~reg0_q\ : std_logic;
SIGNAL \G3|jump[5]~en_q\ : std_logic;
SIGNAL \G3|jump[6]~reg0_q\ : std_logic;
SIGNAL \G3|jump[6]~en_q\ : std_logic;
SIGNAL \G3|jump[7]~reg0_q\ : std_logic;
SIGNAL \G3|jump[7]~en_q\ : std_logic;
SIGNAL \G3|jump[8]~reg0_q\ : std_logic;
SIGNAL \G3|jump[8]~en_q\ : std_logic;
SIGNAL \G3|jump[9]~reg0_q\ : std_logic;
SIGNAL \G3|jump[9]~en_q\ : std_logic;
SIGNAL \G3|jump[10]~reg0_q\ : std_logic;
SIGNAL \G3|jump[10]~en_q\ : std_logic;
SIGNAL \G3|jump[11]~reg0_q\ : std_logic;
SIGNAL \G3|jump[11]~en_q\ : std_logic;
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G3|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_jump[0]~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux14~0_combout\ : std_logic;

BEGIN

ww_Clock_Sistema <= Clock_Sistema;
Instruction_to_writeRegister <= ww_Instruction_to_writeRegister;
Instruction_to_Control <= ww_Instruction_to_Control;
Instruction_to_register1 <= ww_Instruction_to_register1;
Instruction_to_register2 <= ww_Instruction_to_register2;
Instruction_to_controlULA <= ww_Instruction_to_controlULA;
Instruction_to_is_BEQ <= ww_Instruction_to_is_BEQ;
Instruction_to_Jump <= ww_Instruction_to_Jump;
Instruct_out <= ww_Instruct_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\G1|ALT_INV_pout\(1) <= NOT \G1|pout\(1);
\G3|ALT_INV_Mux12~2_combout\ <= NOT \G3|Mux12~2_combout\;
\G1|ALT_INV_pout\(3) <= NOT \G1|pout\(3);
\G1|ALT_INV_pout\(2) <= NOT \G1|pout\(2);
\G3|ALT_INV_Mux12~1_combout\ <= NOT \G3|Mux12~1_combout\;
\G1|ALT_INV_pout\(15) <= NOT \G1|pout\(15);
\G1|ALT_INV_pout\(14) <= NOT \G1|pout\(14);
\G1|ALT_INV_pout\(13) <= NOT \G1|pout\(13);
\G1|ALT_INV_pout\(12) <= NOT \G1|pout\(12);
\G1|ALT_INV_pout\(11) <= NOT \G1|pout\(11);
\G1|ALT_INV_pout\(10) <= NOT \G1|pout\(10);
\G3|ALT_INV_Mux12~0_combout\ <= NOT \G3|Mux12~0_combout\;
\G1|ALT_INV_pout\(9) <= NOT \G1|pout\(9);
\G1|ALT_INV_pout\(8) <= NOT \G1|pout\(8);
\G1|ALT_INV_pout\(7) <= NOT \G1|pout\(7);
\G1|ALT_INV_pout\(6) <= NOT \G1|pout\(6);
\G1|ALT_INV_pout\(5) <= NOT \G1|pout\(5);
\G1|ALT_INV_pout\(4) <= NOT \G1|pout\(4);
\G1|ALT_INV_pout\(0) <= NOT \G1|pout\(0);
\G3|ALT_INV_jump[0]~0_combout\ <= NOT \G3|jump[0]~0_combout\;
\G3|ALT_INV_Mux12~3_combout\ <= NOT \G3|Mux12~3_combout\;
\G3|ALT_INV_Mux13~0_combout\ <= NOT \G3|Mux13~0_combout\;
\G3|ALT_INV_Mux14~0_combout\ <= NOT \G3|Mux14~0_combout\;

\Instruction_to_writeRegister[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|rs[0]~reg0_q\,
	oe => \G3|rs[0]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_writeRegister[0]~output_o\);

\Instruction_to_writeRegister[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|rs[1]~reg0_q\,
	oe => \G3|rs[1]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_writeRegister[1]~output_o\);

\Instruction_to_writeRegister[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|rs[2]~reg0_q\,
	oe => \G3|rs[2]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_writeRegister[2]~output_o\);

\Instruction_to_Control[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|op[0]~reg0_q\,
	oe => \G3|op[0]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Control[0]~output_o\);

\Instruction_to_Control[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|op[1]~reg0_q\,
	oe => \G3|op[1]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Control[1]~output_o\);

\Instruction_to_Control[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|op[2]~reg0_q\,
	oe => \G3|op[2]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Control[2]~output_o\);

\Instruction_to_Control[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|op[3]~reg0_q\,
	oe => \G3|op[3]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Control[3]~output_o\);

\Instruction_to_register1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|rd[0]~reg0_q\,
	oe => \G3|rd[0]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_register1[0]~output_o\);

\Instruction_to_register1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|rd[1]~reg0_q\,
	oe => \G3|rd[1]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_register1[1]~output_o\);

\Instruction_to_register1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|rd[2]~reg0_q\,
	oe => \G3|rd[2]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_register1[2]~output_o\);

\Instruction_to_register2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|rt[0]~reg0_q\,
	oe => \G3|rt[0]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_register2[0]~output_o\);

\Instruction_to_register2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|rt[1]~reg0_q\,
	oe => \G3|rt[1]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_register2[1]~output_o\);

\Instruction_to_register2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|rt[2]~reg0_q\,
	oe => \G3|rt[2]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_register2[2]~output_o\);

\Instruction_to_controlULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|funct[0]~reg0_q\,
	oe => \G3|funct[0]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA[0]~output_o\);

\Instruction_to_controlULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|funct[1]~reg0_q\,
	oe => \G3|funct[1]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA[1]~output_o\);

\Instruction_to_controlULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|funct[2]~reg0_q\,
	oe => \G3|funct[2]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA[2]~output_o\);

\Instruction_to_is_BEQ[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|tipoi[0]~reg0_q\,
	oe => \G3|tipoi[0]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_is_BEQ[0]~output_o\);

\Instruction_to_is_BEQ[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|tipoi[1]~reg0_q\,
	oe => \G3|tipoi[1]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_is_BEQ[1]~output_o\);

\Instruction_to_is_BEQ[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|tipoi[2]~reg0_q\,
	oe => \G3|tipoi[2]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_is_BEQ[2]~output_o\);

\Instruction_to_is_BEQ[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|tipoi[3]~reg0_q\,
	oe => \G3|tipoi[3]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_is_BEQ[3]~output_o\);

\Instruction_to_is_BEQ[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|tipoi[4]~reg0_q\,
	oe => \G3|tipoi[4]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_is_BEQ[4]~output_o\);

\Instruction_to_is_BEQ[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|tipoi[5]~reg0_q\,
	oe => \G3|tipoi[5]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_is_BEQ[5]~output_o\);

\Instruction_to_Jump[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[0]~reg0_q\,
	oe => \G3|jump[0]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[0]~output_o\);

\Instruction_to_Jump[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[1]~reg0_q\,
	oe => \G3|jump[1]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[1]~output_o\);

\Instruction_to_Jump[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[2]~reg0_q\,
	oe => \G3|jump[2]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[2]~output_o\);

\Instruction_to_Jump[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[3]~reg0_q\,
	oe => \G3|jump[3]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[3]~output_o\);

\Instruction_to_Jump[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[4]~reg0_q\,
	oe => \G3|jump[4]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[4]~output_o\);

\Instruction_to_Jump[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[5]~reg0_q\,
	oe => \G3|jump[5]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[5]~output_o\);

\Instruction_to_Jump[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[6]~reg0_q\,
	oe => \G3|jump[6]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[6]~output_o\);

\Instruction_to_Jump[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[7]~reg0_q\,
	oe => \G3|jump[7]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[7]~output_o\);

\Instruction_to_Jump[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[8]~reg0_q\,
	oe => \G3|jump[8]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[8]~output_o\);

\Instruction_to_Jump[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[9]~reg0_q\,
	oe => \G3|jump[9]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[9]~output_o\);

\Instruction_to_Jump[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[10]~reg0_q\,
	oe => \G3|jump[10]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[10]~output_o\);

\Instruction_to_Jump[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|jump[11]~reg0_q\,
	oe => \G3|jump[11]~en_q\,
	devoe => ww_devoe,
	o => \Instruction_to_Jump[11]~output_o\);

\Instruct_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[0]~output_o\);

\Instruct_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[1]~output_o\);

\Instruct_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[2]~output_o\);

\Instruct_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[3]~output_o\);

\Instruct_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[4]~output_o\);

\Instruct_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[5]~output_o\);

\Instruct_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[6]~output_o\);

\Instruct_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[7]~output_o\);

\Instruct_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[8]~output_o\);

\Instruct_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[9]~output_o\);

\Instruct_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[10]~output_o\);

\Instruct_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[11]~output_o\);

\Instruct_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[12]~output_o\);

\Instruct_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[13]~output_o\);

\Instruct_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[14]~output_o\);

\Instruct_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G3|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Instruct_out[15]~output_o\);

\Clock_Sistema~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_Sistema,
	o => \Clock_Sistema~input_o\);

\G1|pout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[0]~0_combout\ = !\G1|pout\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	combout => \G1|pout[0]~0_combout\);

\G1|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G1|pout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(0));

\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~58\ = CARRY(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(1),
	dataf => \G1|ALT_INV_pout\(0),
	cin => GND,
	sumout => \G2|Add0~57_sumout\,
	cout => \G2|Add0~58\);

\G1|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(1));

\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~58\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(2),
	cin => \G2|Add0~58\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

\G1|pout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(2));

\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(3),
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

\G1|pout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(3));

\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~54\ ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(4),
	cin => \G2|Add0~54\,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

\G1|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(4));

\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(5),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

\G1|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(5));

\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(6),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);

\G1|pout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(6));

\G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~13_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~10\ ))
-- \G2|Add0~14\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(7),
	cin => \G2|Add0~10\,
	sumout => \G2|Add0~13_sumout\,
	cout => \G2|Add0~14\);

\G1|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(7));

\G2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~17_sumout\ = SUM(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~14\ ))
-- \G2|Add0~18\ = CARRY(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(8),
	cin => \G2|Add0~14\,
	sumout => \G2|Add0~17_sumout\,
	cout => \G2|Add0~18\);

\G1|pout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(8));

\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~18\,
	sumout => \G2|Add0~21_sumout\,
	cout => \G2|Add0~22\);

\G1|pout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(9));

\G3|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux12~0_combout\ = ( !\G1|pout\(8) & ( !\G1|pout\(9) & ( (!\G1|pout\(4) & (!\G1|pout\(5) & (!\G1|pout\(6) & !\G1|pout\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(4),
	datab => \G1|ALT_INV_pout\(5),
	datac => \G1|ALT_INV_pout\(6),
	datad => \G1|ALT_INV_pout\(7),
	datae => \G1|ALT_INV_pout\(8),
	dataf => \G1|ALT_INV_pout\(9),
	combout => \G3|Mux12~0_combout\);

\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(10),
	cin => \G2|Add0~22\,
	sumout => \G2|Add0~25_sumout\,
	cout => \G2|Add0~26\);

\G1|pout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(10));

\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);

\G1|pout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(11));

\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(12),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

\G1|pout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(12));

\G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~37_sumout\ = SUM(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~34\ ))
-- \G2|Add0~38\ = CARRY(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(13),
	cin => \G2|Add0~34\,
	sumout => \G2|Add0~37_sumout\,
	cout => \G2|Add0~38\);

\G1|pout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(13));

\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

\G1|pout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(14));

\G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~45_sumout\ = SUM(( \G1|pout\(15) ) + ( GND ) + ( \G2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(15),
	cin => \G2|Add0~42\,
	sumout => \G2|Add0~45_sumout\);

\G1|pout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(15));

\G3|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux12~1_combout\ = ( !\G1|pout\(14) & ( !\G1|pout\(15) & ( (!\G1|pout\(10) & (!\G1|pout\(11) & (!\G1|pout\(12) & !\G1|pout\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(10),
	datab => \G1|ALT_INV_pout\(11),
	datac => \G1|ALT_INV_pout\(12),
	datad => \G1|ALT_INV_pout\(13),
	datae => \G1|ALT_INV_pout\(14),
	dataf => \G1|ALT_INV_pout\(15),
	combout => \G3|Mux12~1_combout\);

\G3|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux14~0_combout\ = (!\G1|pout\(2) & (!\G1|pout\(3) & (!\G1|pout\(0) $ (!\G1|pout\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	combout => \G3|Mux14~0_combout\);

\G3|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux14~1_combout\ = (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux12~0_combout\,
	datab => \G3|ALT_INV_Mux12~1_combout\,
	datac => \G3|ALT_INV_Mux14~0_combout\,
	combout => \G3|Mux14~1_combout\);

\G3|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux12~2_combout\ = (!\G1|pout\(2) & !\G1|pout\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	datab => \G1|ALT_INV_pout\(3),
	combout => \G3|Mux12~2_combout\);

\G3|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux13~0_combout\ = (!\G1|pout\(2) & (!\G1|pout\(3) & (!\G1|pout\(0) $ (\G1|pout\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000100100000000000010010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	combout => \G3|Mux13~0_combout\);

\G3|rs[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[2]~0_combout\ = ( \G3|Mux14~0_combout\ & ( \G3|Mux13~0_combout\ & ( (!\G3|Mux12~0_combout\) # ((!\G3|Mux12~1_combout\) # ((\G1|pout\(0) & \G3|Mux12~2_combout\))) ) ) ) # ( !\G3|Mux14~0_combout\ & ( \G3|Mux13~0_combout\ & ( ((!\G3|Mux12~0_combout\) 
-- # ((!\G3|Mux12~1_combout\) # (!\G3|Mux12~2_combout\))) # (\G1|pout\(0)) ) ) ) # ( \G3|Mux14~0_combout\ & ( !\G3|Mux13~0_combout\ ) ) # ( !\G3|Mux14~0_combout\ & ( !\G3|Mux13~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111011111110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G3|ALT_INV_Mux12~0_combout\,
	datac => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G3|ALT_INV_Mux12~2_combout\,
	datae => \G3|ALT_INV_Mux14~0_combout\,
	dataf => \G3|ALT_INV_Mux13~0_combout\,
	combout => \G3|rs[2]~0_combout\);

\G3|rs[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux14~1_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[0]~reg0_q\);

\G3|jump[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[0]~0_combout\ = ( \G3|Mux14~0_combout\ & ( \G3|Mux13~0_combout\ & ( (\G3|Mux12~0_combout\ & \G3|Mux12~1_combout\) ) ) ) # ( !\G3|Mux14~0_combout\ & ( \G3|Mux13~0_combout\ & ( (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux12~2_combout\)) 
-- ) ) ) # ( \G3|Mux14~0_combout\ & ( !\G3|Mux13~0_combout\ & ( (\G1|pout\(0) & (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux12~2_combout\))) ) ) ) # ( !\G3|Mux14~0_combout\ & ( !\G3|Mux13~0_combout\ & ( (\G1|pout\(0) & (\G3|Mux12~0_combout\ & 
-- (\G3|Mux12~1_combout\ & \G3|Mux12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G3|ALT_INV_Mux12~0_combout\,
	datac => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G3|ALT_INV_Mux12~2_combout\,
	datae => \G3|ALT_INV_Mux14~0_combout\,
	dataf => \G3|ALT_INV_Mux13~0_combout\,
	combout => \G3|jump[0]~0_combout\);

\G3|rs[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[0]~2_combout\ = !\G3|jump[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rs[0]~2_combout\);

\G3|rs[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[0]~2_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[0]~en_q\);

\G3|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux13~1_combout\ = (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux12~0_combout\,
	datab => \G3|ALT_INV_Mux12~1_combout\,
	datac => \G3|ALT_INV_Mux13~0_combout\,
	combout => \G3|Mux13~1_combout\);

\G3|rs[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux13~1_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[1]~reg0_q\);

\G3|rs[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[1]~3_combout\ = !\G3|jump[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rs[1]~3_combout\);

\G3|rs[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[1]~3_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[1]~en_q\);

\G3|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux12~3_combout\ = (\G1|pout\(0) & (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G3|ALT_INV_Mux12~0_combout\,
	datac => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G3|ALT_INV_Mux12~2_combout\,
	combout => \G3|Mux12~3_combout\);

\G3|rs[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux12~3_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[2]~reg0_q\);

\G3|rs[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[2]~4_combout\ = !\G3|jump[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rs[2]~4_combout\);

\G3|rs[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~4_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[2]~en_q\);

\G3|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux15~0_combout\ = (!\G1|pout\(0) & (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G3|ALT_INV_Mux12~0_combout\,
	datac => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G3|ALT_INV_Mux12~2_combout\,
	combout => \G3|Mux15~0_combout\);

\G3|op[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[0]~reg0_q\);

\G3|op[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[0]~0_combout\ = !\G3|Mux12~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|op[0]~0_combout\);

\G3|op[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|op[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[0]~en_q\);

\G3|op[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[1]~reg0_q\);

\G3|op[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[1]~1_combout\ = !\G3|Mux12~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|op[1]~1_combout\);

\G3|op[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|op[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[1]~en_q\);

\G3|op[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[2]~reg0_q\);

\G3|op[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[2]~2_combout\ = !\G3|Mux12~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|op[2]~2_combout\);

\G3|op[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|op[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[2]~en_q\);

\G3|op[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[3]~reg0_q\);

\G3|op[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[3]~3_combout\ = !\G3|Mux12~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|op[3]~3_combout\);

\G3|op[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|op[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[3]~en_q\);

\G3|rd[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rd[2]~0_combout\ = ( \G1|pout\(0) ) # ( !\G1|pout\(0) & ( (((!\G3|Mux12~1_combout\) # (!\G3|Mux12~0_combout\)) # (\G1|pout\(2))) # (\G1|pout\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(3),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G3|ALT_INV_Mux12~0_combout\,
	datae => \G1|ALT_INV_pout\(0),
	combout => \G3|rd[2]~0_combout\);

\G3|rd[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux12~3_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[0]~reg0_q\);

\G3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Equal0~0_combout\ = (((!\G3|Mux12~1_combout\) # (!\G3|Mux12~0_combout\)) # (\G1|pout\(2))) # (\G1|pout\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111011111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(3),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G3|ALT_INV_Mux12~0_combout\,
	combout => \G3|Equal0~0_combout\);

\G3|rd[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Equal0~0_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[0]~en_q\);

\G3|rd[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux15~0_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[1]~reg0_q\);

\G3|rd[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Equal0~0_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[1]~en_q\);

\G3|rd[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux14~1_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[2]~reg0_q\);

\G3|rd[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Equal0~0_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[2]~en_q\);

\G3|rt[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux13~1_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[0]~reg0_q\);

\G3|rt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rt[0]~0_combout\ = !\G3|jump[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rt[0]~0_combout\);

\G3|rt[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rt[0]~0_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[0]~en_q\);

\G3|rt[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux12~3_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[1]~reg0_q\);

\G3|rt[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rt[1]~1_combout\ = !\G3|jump[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rt[1]~1_combout\);

\G3|rt[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rt[1]~1_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[1]~en_q\);

\G3|rt[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux15~0_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[2]~reg0_q\);

\G3|rt[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rt[2]~2_combout\ = !\G3|jump[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rt[2]~2_combout\);

\G3|rt[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rt[2]~2_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[2]~en_q\);

\G3|funct[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux15~0_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[0]~reg0_q\);

\G3|funct[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Equal0~0_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[0]~en_q\);

\G3|funct[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux14~1_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[1]~reg0_q\);

\G3|funct[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Equal0~0_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[1]~en_q\);

\G3|funct[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux13~1_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[2]~reg0_q\);

\G3|funct[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Equal0~0_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[2]~en_q\);

\G3|tipoi[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[5]~0_combout\ = ( \G3|Mux14~0_combout\ & ( \G3|Mux13~0_combout\ & ( (\G1|pout\(0) & (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux12~2_combout\))) ) ) ) # ( !\G3|Mux14~0_combout\ & ( \G3|Mux13~0_combout\ & ( (\G3|Mux12~0_combout\ & 
-- (\G3|Mux12~1_combout\ & ((!\G3|Mux12~2_combout\) # (\G1|pout\(0))))) ) ) ) # ( \G3|Mux14~0_combout\ & ( !\G3|Mux13~0_combout\ & ( (\G3|Mux12~0_combout\ & \G3|Mux12~1_combout\) ) ) ) # ( !\G3|Mux14~0_combout\ & ( !\G3|Mux13~0_combout\ & ( 
-- (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux12~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110000001100000011000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G3|ALT_INV_Mux12~0_combout\,
	datac => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G3|ALT_INV_Mux12~2_combout\,
	datae => \G3|ALT_INV_Mux14~0_combout\,
	dataf => \G3|ALT_INV_Mux13~0_combout\,
	combout => \G3|tipoi[5]~0_combout\);

\G3|tipoi[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux15~0_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[0]~reg0_q\);

\G3|jump[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[0]~1_combout\ = ( !\G3|Mux14~0_combout\ & ( \G3|Mux13~0_combout\ & ( (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & !\G3|Mux12~2_combout\)) ) ) ) # ( \G3|Mux14~0_combout\ & ( !\G3|Mux13~0_combout\ & ( (\G3|Mux12~0_combout\ & 
-- (\G3|Mux12~1_combout\ & ((!\G1|pout\(0)) # (!\G3|Mux12~2_combout\)))) ) ) ) # ( !\G3|Mux14~0_combout\ & ( !\G3|Mux13~0_combout\ & ( (!\G1|pout\(0) & (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000110000001000000011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G3|ALT_INV_Mux12~0_combout\,
	datac => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G3|ALT_INV_Mux12~2_combout\,
	datae => \G3|ALT_INV_Mux14~0_combout\,
	dataf => \G3|ALT_INV_Mux13~0_combout\,
	combout => \G3|jump[0]~1_combout\);

\G3|tipoi[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|jump[0]~1_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[0]~en_q\);

\G3|tipoi[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux14~1_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[1]~reg0_q\);

\G3|tipoi[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|jump[0]~1_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[1]~en_q\);

\G3|tipoi[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux13~1_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[2]~reg0_q\);

\G3|tipoi[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|jump[0]~1_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[2]~en_q\);

\G3|tipoi[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux12~3_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[3]~reg0_q\);

\G3|tipoi[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|jump[0]~1_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[3]~en_q\);

\G3|tipoi[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux15~0_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[4]~reg0_q\);

\G3|tipoi[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|jump[0]~1_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[4]~en_q\);

\G3|tipoi[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux14~1_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[5]~reg0_q\);

\G3|tipoi[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|jump[0]~1_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[5]~en_q\);

\G3|jump[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux15~0_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[0]~reg0_q\);

\G3|rs[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[2]~1_combout\ = ( \G3|Mux14~0_combout\ & ( \G3|Mux13~0_combout\ & ( (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & ((!\G1|pout\(0)) # (!\G3|Mux12~2_combout\)))) ) ) ) # ( !\G3|Mux14~0_combout\ & ( \G3|Mux13~0_combout\ & ( (!\G1|pout\(0) & 
-- (\G3|Mux12~0_combout\ & (\G3|Mux12~1_combout\ & \G3|Mux12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G3|ALT_INV_Mux12~0_combout\,
	datac => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G3|ALT_INV_Mux12~2_combout\,
	datae => \G3|ALT_INV_Mux14~0_combout\,
	dataf => \G3|ALT_INV_Mux13~0_combout\,
	combout => \G3|rs[2]~1_combout\);

\G3|jump[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[0]~en_q\);

\G3|jump[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux14~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[1]~reg0_q\);

\G3|jump[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[1]~en_q\);

\G3|jump[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux13~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[2]~reg0_q\);

\G3|jump[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[2]~en_q\);

\G3|jump[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux12~3_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[3]~reg0_q\);

\G3|jump[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[3]~en_q\);

\G3|jump[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux15~0_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[4]~reg0_q\);

\G3|jump[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[4]~en_q\);

\G3|jump[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux14~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[5]~reg0_q\);

\G3|jump[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[5]~en_q\);

\G3|jump[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux13~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[6]~reg0_q\);

\G3|jump[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[6]~en_q\);

\G3|jump[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux12~3_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[7]~reg0_q\);

\G3|jump[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[7]~en_q\);

\G3|jump[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux15~0_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[8]~reg0_q\);

\G3|jump[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[8]~en_q\);

\G3|jump[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux14~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[9]~reg0_q\);

\G3|jump[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[9]~en_q\);

\G3|jump[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux13~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[10]~reg0_q\);

\G3|jump[10]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[10]~en_q\);

\G3|jump[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|Mux12~3_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[11]~reg0_q\);

\G3|jump[11]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[11]~en_q\);

ww_Instruction_to_writeRegister(0) <= \Instruction_to_writeRegister[0]~output_o\;

ww_Instruction_to_writeRegister(1) <= \Instruction_to_writeRegister[1]~output_o\;

ww_Instruction_to_writeRegister(2) <= \Instruction_to_writeRegister[2]~output_o\;

ww_Instruction_to_Control(0) <= \Instruction_to_Control[0]~output_o\;

ww_Instruction_to_Control(1) <= \Instruction_to_Control[1]~output_o\;

ww_Instruction_to_Control(2) <= \Instruction_to_Control[2]~output_o\;

ww_Instruction_to_Control(3) <= \Instruction_to_Control[3]~output_o\;

ww_Instruction_to_register1(0) <= \Instruction_to_register1[0]~output_o\;

ww_Instruction_to_register1(1) <= \Instruction_to_register1[1]~output_o\;

ww_Instruction_to_register1(2) <= \Instruction_to_register1[2]~output_o\;

ww_Instruction_to_register2(0) <= \Instruction_to_register2[0]~output_o\;

ww_Instruction_to_register2(1) <= \Instruction_to_register2[1]~output_o\;

ww_Instruction_to_register2(2) <= \Instruction_to_register2[2]~output_o\;

ww_Instruction_to_controlULA(0) <= \Instruction_to_controlULA[0]~output_o\;

ww_Instruction_to_controlULA(1) <= \Instruction_to_controlULA[1]~output_o\;

ww_Instruction_to_controlULA(2) <= \Instruction_to_controlULA[2]~output_o\;

ww_Instruction_to_is_BEQ(0) <= \Instruction_to_is_BEQ[0]~output_o\;

ww_Instruction_to_is_BEQ(1) <= \Instruction_to_is_BEQ[1]~output_o\;

ww_Instruction_to_is_BEQ(2) <= \Instruction_to_is_BEQ[2]~output_o\;

ww_Instruction_to_is_BEQ(3) <= \Instruction_to_is_BEQ[3]~output_o\;

ww_Instruction_to_is_BEQ(4) <= \Instruction_to_is_BEQ[4]~output_o\;

ww_Instruction_to_is_BEQ(5) <= \Instruction_to_is_BEQ[5]~output_o\;

ww_Instruction_to_Jump(0) <= \Instruction_to_Jump[0]~output_o\;

ww_Instruction_to_Jump(1) <= \Instruction_to_Jump[1]~output_o\;

ww_Instruction_to_Jump(2) <= \Instruction_to_Jump[2]~output_o\;

ww_Instruction_to_Jump(3) <= \Instruction_to_Jump[3]~output_o\;

ww_Instruction_to_Jump(4) <= \Instruction_to_Jump[4]~output_o\;

ww_Instruction_to_Jump(5) <= \Instruction_to_Jump[5]~output_o\;

ww_Instruction_to_Jump(6) <= \Instruction_to_Jump[6]~output_o\;

ww_Instruction_to_Jump(7) <= \Instruction_to_Jump[7]~output_o\;

ww_Instruction_to_Jump(8) <= \Instruction_to_Jump[8]~output_o\;

ww_Instruction_to_Jump(9) <= \Instruction_to_Jump[9]~output_o\;

ww_Instruction_to_Jump(10) <= \Instruction_to_Jump[10]~output_o\;

ww_Instruction_to_Jump(11) <= \Instruction_to_Jump[11]~output_o\;

ww_Instruct_out(0) <= \Instruct_out[0]~output_o\;

ww_Instruct_out(1) <= \Instruct_out[1]~output_o\;

ww_Instruct_out(2) <= \Instruct_out[2]~output_o\;

ww_Instruct_out(3) <= \Instruct_out[3]~output_o\;

ww_Instruct_out(4) <= \Instruct_out[4]~output_o\;

ww_Instruct_out(5) <= \Instruct_out[5]~output_o\;

ww_Instruct_out(6) <= \Instruct_out[6]~output_o\;

ww_Instruct_out(7) <= \Instruct_out[7]~output_o\;

ww_Instruct_out(8) <= \Instruct_out[8]~output_o\;

ww_Instruct_out(9) <= \Instruct_out[9]~output_o\;

ww_Instruct_out(10) <= \Instruct_out[10]~output_o\;

ww_Instruct_out(11) <= \Instruct_out[11]~output_o\;

ww_Instruct_out(12) <= \Instruct_out[12]~output_o\;

ww_Instruct_out(13) <= \Instruct_out[13]~output_o\;

ww_Instruct_out(14) <= \Instruct_out[14]~output_o\;

ww_Instruct_out(15) <= \Instruct_out[15]~output_o\;
END structure;


