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

-- DATE "11/26/2018 11:10:26"

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
	Instruction_to_writeRegister : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_Control : BUFFER std_logic_vector(3 DOWNTO 0);
	Instruction_to_register1 : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_register2 : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_controlULA : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_is_BEQ : BUFFER std_logic_vector(5 DOWNTO 0);
	Instruction_to_Jump : BUFFER std_logic_vector(11 DOWNTO 0);
	Instruct_out : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END DataPath;

-- Design Ports Information
-- Instruction_to_writeRegister[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_writeRegister[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_writeRegister[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_is_BEQ[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_is_BEQ[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_is_BEQ[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_is_BEQ[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_is_BEQ[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_is_BEQ[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[8]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[9]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[10]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump[11]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[7]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[9]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[11]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[12]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[13]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[14]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruct_out[15]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Sistema	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \Clock_Sistema~inputCLKENA0_outclk\ : std_logic;
SIGNAL \G1|pout[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|pout[0]~0_combout\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G1|pout[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~58\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G1|pout[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G3|Mux14~0_combout\ : std_logic;
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
SIGNAL \G1|pout[13]~DUPLICATE_q\ : std_logic;
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
SIGNAL \G3|Mux14~1_combout\ : std_logic;
SIGNAL \G3|rs[0]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|Mux12~2_combout\ : std_logic;
SIGNAL \G1|pout[0]~DUPLICATE_q\ : std_logic;
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
SIGNAL \G3|op[0]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|op[0]~reg0_q\ : std_logic;
SIGNAL \G3|op[0]~0_combout\ : std_logic;
SIGNAL \G3|op[0]~en_q\ : std_logic;
SIGNAL \G3|op[1]~reg0_q\ : std_logic;
SIGNAL \G3|op[1]~1_combout\ : std_logic;
SIGNAL \G3|op[1]~en_q\ : std_logic;
SIGNAL \G3|op[2]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|op[2]~reg0_q\ : std_logic;
SIGNAL \G3|op[2]~2_combout\ : std_logic;
SIGNAL \G3|op[2]~en_q\ : std_logic;
SIGNAL \G3|op[3]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|op[3]~reg0_q\ : std_logic;
SIGNAL \G3|op[3]~3_combout\ : std_logic;
SIGNAL \G3|op[3]~en_q\ : std_logic;
SIGNAL \G3|rd[2]~0_combout\ : std_logic;
SIGNAL \G3|rd[0]~reg0_q\ : std_logic;
SIGNAL \G3|Equal0~0_combout\ : std_logic;
SIGNAL \G3|rd[0]~en_q\ : std_logic;
SIGNAL \G3|rd[1]~reg0feeder_combout\ : std_logic;
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
SIGNAL \G3|funct[0]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|funct[0]~reg0_q\ : std_logic;
SIGNAL \G3|funct[0]~en_q\ : std_logic;
SIGNAL \G3|funct[1]~reg0_q\ : std_logic;
SIGNAL \G3|funct[1]~en_q\ : std_logic;
SIGNAL \G3|funct[2]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|funct[2]~reg0_q\ : std_logic;
SIGNAL \G3|funct[2]~en_q\ : std_logic;
SIGNAL \G3|tipoi[0]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|tipoi[5]~0_combout\ : std_logic;
SIGNAL \G3|tipoi[0]~reg0_q\ : std_logic;
SIGNAL \G3|jump[0]~1_combout\ : std_logic;
SIGNAL \G3|tipoi[0]~en_q\ : std_logic;
SIGNAL \G3|tipoi[1]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|tipoi[1]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[1]~enfeeder_combout\ : std_logic;
SIGNAL \G3|tipoi[1]~en_q\ : std_logic;
SIGNAL \G3|tipoi[2]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[2]~en_q\ : std_logic;
SIGNAL \G3|tipoi[3]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|tipoi[3]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[3]~enfeeder_combout\ : std_logic;
SIGNAL \G3|tipoi[3]~en_q\ : std_logic;
SIGNAL \G3|tipoi[4]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[4]~enfeeder_combout\ : std_logic;
SIGNAL \G3|tipoi[4]~en_q\ : std_logic;
SIGNAL \G3|tipoi[5]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|tipoi[5]~reg0_q\ : std_logic;
SIGNAL \G3|tipoi[5]~enfeeder_combout\ : std_logic;
SIGNAL \G3|tipoi[5]~en_q\ : std_logic;
SIGNAL \G3|jump[0]~reg0_q\ : std_logic;
SIGNAL \G3|rs[2]~1_combout\ : std_logic;
SIGNAL \G3|jump[0]~en_q\ : std_logic;
SIGNAL \G3|jump[1]~reg0_q\ : std_logic;
SIGNAL \G3|jump[1]~en_q\ : std_logic;
SIGNAL \G3|jump[2]~reg0_q\ : std_logic;
SIGNAL \G3|jump[2]~en_q\ : std_logic;
SIGNAL \G3|jump[3]~reg0_q\ : std_logic;
SIGNAL \G3|jump[3]~enfeeder_combout\ : std_logic;
SIGNAL \G3|jump[3]~en_q\ : std_logic;
SIGNAL \G3|jump[4]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|jump[4]~reg0_q\ : std_logic;
SIGNAL \G3|jump[4]~en_q\ : std_logic;
SIGNAL \G3|jump[5]~reg0feeder_combout\ : std_logic;
SIGNAL \G3|jump[5]~reg0_q\ : std_logic;
SIGNAL \G3|jump[5]~en_q\ : std_logic;
SIGNAL \G3|jump[6]~reg0_q\ : std_logic;
SIGNAL \G3|jump[6]~enfeeder_combout\ : std_logic;
SIGNAL \G3|jump[6]~en_q\ : std_logic;
SIGNAL \G3|jump[7]~reg0_q\ : std_logic;
SIGNAL \G3|jump[7]~enfeeder_combout\ : std_logic;
SIGNAL \G3|jump[7]~en_q\ : std_logic;
SIGNAL \G3|jump[8]~reg0_q\ : std_logic;
SIGNAL \G3|jump[8]~enfeeder_combout\ : std_logic;
SIGNAL \G3|jump[8]~en_q\ : std_logic;
SIGNAL \G3|jump[9]~reg0_q\ : std_logic;
SIGNAL \G3|jump[9]~en_q\ : std_logic;
SIGNAL \G3|jump[10]~reg0_q\ : std_logic;
SIGNAL \G3|jump[10]~en_q\ : std_logic;
SIGNAL \G3|jump[11]~reg0_q\ : std_logic;
SIGNAL \G3|jump[11]~en_q\ : std_logic;
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|ALT_INV_pout[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[13]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G3|ALT_INV_rs[2]~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_jump[0]~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_jump[0]~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G3|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux12~0_combout\ : std_logic;

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
\G1|ALT_INV_pout[1]~DUPLICATE_q\ <= NOT \G1|pout[1]~DUPLICATE_q\;
\G1|ALT_INV_pout[3]~DUPLICATE_q\ <= NOT \G1|pout[3]~DUPLICATE_q\;
\G1|ALT_INV_pout[2]~DUPLICATE_q\ <= NOT \G1|pout[2]~DUPLICATE_q\;
\G1|ALT_INV_pout[13]~DUPLICATE_q\ <= NOT \G1|pout[13]~DUPLICATE_q\;
\G1|ALT_INV_pout[0]~DUPLICATE_q\ <= NOT \G1|pout[0]~DUPLICATE_q\;
\G3|ALT_INV_rs[2]~1_combout\ <= NOT \G3|rs[2]~1_combout\;
\G3|ALT_INV_jump[0]~1_combout\ <= NOT \G3|jump[0]~1_combout\;
\G3|ALT_INV_jump[0]~0_combout\ <= NOT \G3|jump[0]~0_combout\;
\G3|ALT_INV_Mux12~3_combout\ <= NOT \G3|Mux12~3_combout\;
\G3|ALT_INV_Mux13~1_combout\ <= NOT \G3|Mux13~1_combout\;
\G3|ALT_INV_Mux13~0_combout\ <= NOT \G3|Mux13~0_combout\;
\G3|ALT_INV_Mux14~1_combout\ <= NOT \G3|Mux14~1_combout\;
\G3|ALT_INV_Mux14~0_combout\ <= NOT \G3|Mux14~0_combout\;
\G1|ALT_INV_pout\(1) <= NOT \G1|pout\(1);
\G3|ALT_INV_Mux15~0_combout\ <= NOT \G3|Mux15~0_combout\;
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

-- Location: IOOBUF_X62_Y0_N53
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
	o => ww_Instruction_to_writeRegister(0));

-- Location: IOOBUF_X68_Y0_N2
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
	o => ww_Instruction_to_writeRegister(1));

-- Location: IOOBUF_X56_Y0_N2
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
	o => ww_Instruction_to_writeRegister(2));

-- Location: IOOBUF_X60_Y0_N19
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
	o => ww_Instruction_to_Control(0));

-- Location: IOOBUF_X54_Y0_N36
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
	o => ww_Instruction_to_Control(1));

-- Location: IOOBUF_X54_Y0_N19
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
	o => ww_Instruction_to_Control(2));

-- Location: IOOBUF_X54_Y0_N2
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
	o => ww_Instruction_to_Control(3));

-- Location: IOOBUF_X70_Y0_N19
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
	o => ww_Instruction_to_register1(0));

-- Location: IOOBUF_X66_Y0_N76
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
	o => ww_Instruction_to_register1(1));

-- Location: IOOBUF_X66_Y0_N42
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
	o => ww_Instruction_to_register1(2));

-- Location: IOOBUF_X64_Y0_N53
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
	o => ww_Instruction_to_register2(0));

-- Location: IOOBUF_X64_Y0_N2
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
	o => ww_Instruction_to_register2(1));

-- Location: IOOBUF_X68_Y0_N36
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
	o => ww_Instruction_to_register2(2));

-- Location: IOOBUF_X68_Y0_N53
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
	o => ww_Instruction_to_controlULA(0));

-- Location: IOOBUF_X66_Y0_N93
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
	o => ww_Instruction_to_controlULA(1));

-- Location: IOOBUF_X70_Y0_N2
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
	o => ww_Instruction_to_controlULA(2));

-- Location: IOOBUF_X68_Y0_N19
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
	o => ww_Instruction_to_is_BEQ(0));

-- Location: IOOBUF_X62_Y0_N2
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
	o => ww_Instruction_to_is_BEQ(1));

-- Location: IOOBUF_X64_Y0_N19
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
	o => ww_Instruction_to_is_BEQ(2));

-- Location: IOOBUF_X66_Y0_N59
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
	o => ww_Instruction_to_is_BEQ(3));

-- Location: IOOBUF_X62_Y0_N19
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
	o => ww_Instruction_to_is_BEQ(4));

-- Location: IOOBUF_X62_Y0_N36
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
	o => ww_Instruction_to_is_BEQ(5));

-- Location: IOOBUF_X60_Y0_N2
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
	o => ww_Instruction_to_Jump(0));

-- Location: IOOBUF_X56_Y0_N36
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
	o => ww_Instruction_to_Jump(1));

-- Location: IOOBUF_X56_Y0_N53
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
	o => ww_Instruction_to_Jump(2));

-- Location: IOOBUF_X58_Y0_N76
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
	o => ww_Instruction_to_Jump(3));

-- Location: IOOBUF_X60_Y0_N53
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
	o => ww_Instruction_to_Jump(4));

-- Location: IOOBUF_X54_Y0_N53
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
	o => ww_Instruction_to_Jump(5));

-- Location: IOOBUF_X58_Y0_N93
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
	o => ww_Instruction_to_Jump(6));

-- Location: IOOBUF_X58_Y0_N42
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
	o => ww_Instruction_to_Jump(7));

-- Location: IOOBUF_X64_Y0_N36
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
	o => ww_Instruction_to_Jump(8));

-- Location: IOOBUF_X60_Y0_N36
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
	o => ww_Instruction_to_Jump(9));

-- Location: IOOBUF_X58_Y0_N59
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
	o => ww_Instruction_to_Jump(10));

-- Location: IOOBUF_X56_Y0_N19
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
	o => ww_Instruction_to_Jump(11));

-- Location: IOOBUF_X40_Y0_N19
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
	o => ww_Instruct_out(0));

-- Location: IOOBUF_X36_Y0_N19
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
	o => ww_Instruct_out(1));

-- Location: IOOBUF_X50_Y0_N93
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
	o => ww_Instruct_out(2));

-- Location: IOOBUF_X70_Y0_N36
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
	o => ww_Instruct_out(3));

-- Location: IOOBUF_X40_Y0_N36
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
	o => ww_Instruct_out(4));

-- Location: IOOBUF_X38_Y0_N19
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
	o => ww_Instruct_out(5));

-- Location: IOOBUF_X50_Y0_N42
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
	o => ww_Instruct_out(6));

-- Location: IOOBUF_X70_Y0_N53
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
	o => ww_Instruct_out(7));

-- Location: IOOBUF_X50_Y0_N76
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
	o => ww_Instruct_out(8));

-- Location: IOOBUF_X36_Y0_N36
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
	o => ww_Instruct_out(9));

-- Location: IOOBUF_X52_Y0_N53
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
	o => ww_Instruct_out(10));

-- Location: IOOBUF_X72_Y0_N2
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
	o => ww_Instruct_out(11));

-- Location: IOOBUF_X50_Y0_N59
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
	o => ww_Instruct_out(12));

-- Location: IOOBUF_X38_Y0_N53
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
	o => ww_Instruct_out(13));

-- Location: IOOBUF_X52_Y0_N19
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
	o => ww_Instruct_out(14));

-- Location: IOOBUF_X72_Y0_N53
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
	o => ww_Instruct_out(15));

-- Location: IOIBUF_X89_Y35_N61
\Clock_Sistema~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_Sistema,
	o => \Clock_Sistema~input_o\);

-- Location: CLKCTRL_G10
\Clock_Sistema~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_Sistema~input_o\,
	outclk => \Clock_Sistema~inputCLKENA0_outclk\);

-- Location: FF_X60_Y4_N5
\G1|pout[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[2]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y4_N3
\G1|pout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[0]~0_combout\ = ( !\G1|pout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|ALT_INV_pout\(0),
	combout => \G1|pout[0]~0_combout\);

-- Location: FF_X61_Y4_N5
\G1|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(0));

-- Location: LABCELL_X60_Y4_N0
\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(0) ) + ( \G1|pout[1]~DUPLICATE_q\ ) + ( !VCC ))
-- \G2|Add0~58\ = CARRY(( \G1|pout\(0) ) + ( \G1|pout[1]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout[1]~DUPLICATE_q\,
	datad => \G1|ALT_INV_pout\(0),
	cin => GND,
	sumout => \G2|Add0~57_sumout\,
	cout => \G2|Add0~58\);

-- Location: FF_X60_Y4_N2
\G1|pout[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[1]~DUPLICATE_q\);

-- Location: LABCELL_X60_Y4_N3
\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout[2]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~58\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout[2]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout[2]~DUPLICATE_q\,
	cin => \G2|Add0~58\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

-- Location: FF_X60_Y4_N4
\G1|pout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(2));

-- Location: LABCELL_X60_Y4_N6
\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout[3]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout[3]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

-- Location: FF_X61_Y4_N2
\G1|pout[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~53_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[3]~DUPLICATE_q\);

-- Location: FF_X60_Y4_N1
\G1|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(1));

-- Location: LABCELL_X61_Y4_N33
\G3|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux14~0_combout\ = ( !\G1|pout\(0) & ( \G1|pout\(1) & ( (!\G1|pout\(2) & !\G1|pout[3]~DUPLICATE_q\) ) ) ) # ( \G1|pout\(0) & ( !\G1|pout\(1) & ( (!\G1|pout\(2) & !\G1|pout[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	datae => \G1|ALT_INV_pout\(0),
	dataf => \G1|ALT_INV_pout\(1),
	combout => \G3|Mux14~0_combout\);

-- Location: LABCELL_X60_Y4_N9
\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~54\ ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(4),
	cin => \G2|Add0~54\,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

-- Location: FF_X60_Y4_N11
\G1|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(4));

-- Location: LABCELL_X60_Y4_N12
\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(5),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

-- Location: FF_X60_Y4_N14
\G1|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(5));

-- Location: LABCELL_X60_Y4_N15
\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(6),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);

-- Location: FF_X60_Y4_N17
\G1|pout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(6));

-- Location: LABCELL_X60_Y4_N18
\G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~13_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~10\ ))
-- \G2|Add0~14\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(7),
	cin => \G2|Add0~10\,
	sumout => \G2|Add0~13_sumout\,
	cout => \G2|Add0~14\);

-- Location: FF_X60_Y4_N20
\G1|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(7));

-- Location: LABCELL_X60_Y4_N21
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

-- Location: FF_X60_Y4_N23
\G1|pout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(8));

-- Location: LABCELL_X60_Y4_N24
\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~18\,
	sumout => \G2|Add0~21_sumout\,
	cout => \G2|Add0~22\);

-- Location: FF_X60_Y4_N26
\G1|pout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(9));

-- Location: LABCELL_X60_Y4_N48
\G3|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux12~0_combout\ = ( !\G1|pout\(8) & ( !\G1|pout\(4) & ( (!\G1|pout\(7) & (!\G1|pout\(6) & (!\G1|pout\(9) & !\G1|pout\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(7),
	datab => \G1|ALT_INV_pout\(6),
	datac => \G1|ALT_INV_pout\(9),
	datad => \G1|ALT_INV_pout\(5),
	datae => \G1|ALT_INV_pout\(8),
	dataf => \G1|ALT_INV_pout\(4),
	combout => \G3|Mux12~0_combout\);

-- Location: FF_X60_Y4_N37
\G1|pout[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[13]~DUPLICATE_q\);

-- Location: LABCELL_X60_Y4_N27
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

-- Location: FF_X60_Y4_N29
\G1|pout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(10));

-- Location: LABCELL_X60_Y4_N30
\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);

-- Location: FF_X60_Y4_N32
\G1|pout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(11));

-- Location: LABCELL_X60_Y4_N33
\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(12),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

-- Location: FF_X60_Y4_N35
\G1|pout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(12));

-- Location: LABCELL_X60_Y4_N36
\G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~37_sumout\ = SUM(( \G1|pout[13]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~34\ ))
-- \G2|Add0~38\ = CARRY(( \G1|pout[13]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout[13]~DUPLICATE_q\,
	cin => \G2|Add0~34\,
	sumout => \G2|Add0~37_sumout\,
	cout => \G2|Add0~38\);

-- Location: FF_X60_Y4_N38
\G1|pout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(13));

-- Location: LABCELL_X60_Y4_N39
\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

-- Location: FF_X60_Y4_N41
\G1|pout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(14));

-- Location: LABCELL_X60_Y4_N42
\G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~45_sumout\ = SUM(( \G1|pout\(15) ) + ( GND ) + ( \G2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(15),
	cin => \G2|Add0~42\,
	sumout => \G2|Add0~45_sumout\);

-- Location: FF_X60_Y4_N44
\G1|pout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(15));

-- Location: LABCELL_X60_Y4_N54
\G3|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux12~1_combout\ = ( !\G1|pout\(10) & ( !\G1|pout\(11) & ( (!\G1|pout\(13) & (!\G1|pout\(15) & (!\G1|pout\(12) & !\G1|pout\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(13),
	datab => \G1|ALT_INV_pout\(15),
	datac => \G1|ALT_INV_pout\(12),
	datad => \G1|ALT_INV_pout\(14),
	datae => \G1|ALT_INV_pout\(10),
	dataf => \G1|ALT_INV_pout\(11),
	combout => \G3|Mux12~1_combout\);

-- Location: LABCELL_X61_Y4_N12
\G3|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux14~1_combout\ = ( \G3|Mux12~0_combout\ & ( \G3|Mux12~1_combout\ & ( \G3|Mux14~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G3|ALT_INV_Mux14~0_combout\,
	datae => \G3|ALT_INV_Mux12~0_combout\,
	dataf => \G3|ALT_INV_Mux12~1_combout\,
	combout => \G3|Mux14~1_combout\);

-- Location: LABCELL_X62_Y4_N18
\G3|rs[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[0]~reg0feeder_combout\ = ( \G3|Mux14~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux14~1_combout\,
	combout => \G3|rs[0]~reg0feeder_combout\);

-- Location: LABCELL_X61_Y4_N36
\G3|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux12~2_combout\ = ( !\G1|pout[3]~DUPLICATE_q\ & ( !\G1|pout\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G3|Mux12~2_combout\);

-- Location: FF_X61_Y4_N4
\G1|pout[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[0]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y4_N54
\G3|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux13~0_combout\ = ( \G1|pout\(0) & ( !\G1|pout\(2) & ( (!\G1|pout[3]~DUPLICATE_q\ & \G1|pout\(1)) ) ) ) # ( !\G1|pout\(0) & ( !\G1|pout\(2) & ( (!\G1|pout[3]~DUPLICATE_q\ & !\G1|pout\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	datad => \G1|ALT_INV_pout\(1),
	datae => \G1|ALT_INV_pout\(0),
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G3|Mux13~0_combout\);

-- Location: LABCELL_X61_Y4_N48
\G3|rs[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[2]~0_combout\ = ( \G3|Mux13~0_combout\ & ( \G3|Mux12~1_combout\ & ( (!\G3|Mux12~0_combout\) # ((!\G3|Mux12~2_combout\ & ((!\G3|Mux14~0_combout\))) # (\G3|Mux12~2_combout\ & (\G1|pout[0]~DUPLICATE_q\))) ) ) ) # ( !\G3|Mux13~0_combout\ & ( 
-- \G3|Mux12~1_combout\ ) ) # ( \G3|Mux13~0_combout\ & ( !\G3|Mux12~1_combout\ ) ) # ( !\G3|Mux13~0_combout\ & ( !\G3|Mux12~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux12~2_combout\,
	datab => \G1|ALT_INV_pout[0]~DUPLICATE_q\,
	datac => \G3|ALT_INV_Mux14~0_combout\,
	datad => \G3|ALT_INV_Mux12~0_combout\,
	datae => \G3|ALT_INV_Mux13~0_combout\,
	dataf => \G3|ALT_INV_Mux12~1_combout\,
	combout => \G3|rs[2]~0_combout\);

-- Location: FF_X62_Y4_N20
\G3|rs[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|rs[0]~reg0feeder_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[0]~reg0_q\);

-- Location: LABCELL_X61_Y4_N42
\G3|jump[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[0]~0_combout\ = ( \G3|Mux13~0_combout\ & ( \G3|Mux12~1_combout\ & ( (\G3|Mux12~0_combout\ & ((\G3|Mux14~0_combout\) # (\G3|Mux12~2_combout\))) ) ) ) # ( !\G3|Mux13~0_combout\ & ( \G3|Mux12~1_combout\ & ( (\G3|Mux12~2_combout\ & 
-- (\G1|pout[0]~DUPLICATE_q\ & \G3|Mux12~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux12~2_combout\,
	datab => \G1|ALT_INV_pout[0]~DUPLICATE_q\,
	datac => \G3|ALT_INV_Mux14~0_combout\,
	datad => \G3|ALT_INV_Mux12~0_combout\,
	datae => \G3|ALT_INV_Mux13~0_combout\,
	dataf => \G3|ALT_INV_Mux12~1_combout\,
	combout => \G3|jump[0]~0_combout\);

-- Location: LABCELL_X62_Y4_N21
\G3|rs[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[0]~2_combout\ = !\G3|jump[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rs[0]~2_combout\);

-- Location: FF_X62_Y4_N22
\G3|rs[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|rs[0]~2_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[0]~en_q\);

-- Location: MLABCELL_X59_Y4_N24
\G3|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux13~1_combout\ = ( \G3|Mux12~1_combout\ & ( \G3|Mux12~0_combout\ & ( \G3|Mux13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G3|ALT_INV_Mux13~0_combout\,
	datae => \G3|ALT_INV_Mux12~1_combout\,
	dataf => \G3|ALT_INV_Mux12~0_combout\,
	combout => \G3|Mux13~1_combout\);

-- Location: FF_X62_Y4_N37
\G3|rs[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux13~1_combout\,
	sload => VCC,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[1]~reg0_q\);

-- Location: LABCELL_X62_Y4_N57
\G3|rs[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[1]~3_combout\ = ( !\G3|jump[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rs[1]~3_combout\);

-- Location: FF_X62_Y4_N58
\G3|rs[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|rs[1]~3_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[1]~en_q\);

-- Location: MLABCELL_X59_Y4_N21
\G3|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux12~3_combout\ = ( \G3|Mux12~2_combout\ & ( \G3|Mux12~0_combout\ & ( (\G3|Mux12~1_combout\ & \G1|pout[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux12~1_combout\,
	datad => \G1|ALT_INV_pout[0]~DUPLICATE_q\,
	datae => \G3|ALT_INV_Mux12~2_combout\,
	dataf => \G3|ALT_INV_Mux12~0_combout\,
	combout => \G3|Mux12~3_combout\);

-- Location: FF_X59_Y4_N23
\G3|rs[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|Mux12~3_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[2]~reg0_q\);

-- Location: LABCELL_X62_Y4_N3
\G3|rs[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[2]~4_combout\ = ( !\G3|jump[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rs[2]~4_combout\);

-- Location: FF_X62_Y4_N4
\G3|rs[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|rs[2]~4_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rs[2]~en_q\);

-- Location: LABCELL_X62_Y4_N42
\G3|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux15~0_combout\ = ( \G3|Mux12~1_combout\ & ( \G3|Mux12~2_combout\ & ( (\G3|Mux12~0_combout\ & !\G1|pout[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G3|ALT_INV_Mux12~0_combout\,
	datad => \G1|ALT_INV_pout[0]~DUPLICATE_q\,
	datae => \G3|ALT_INV_Mux12~1_combout\,
	dataf => \G3|ALT_INV_Mux12~2_combout\,
	combout => \G3|Mux15~0_combout\);

-- Location: LABCELL_X63_Y4_N51
\G3|op[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[0]~reg0feeder_combout\ = ( \G3|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux15~0_combout\,
	combout => \G3|op[0]~reg0feeder_combout\);

-- Location: FF_X63_Y4_N52
\G3|op[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|op[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[0]~reg0_q\);

-- Location: LABCELL_X60_Y2_N39
\G3|op[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[0]~0_combout\ = ( !\G3|Mux12~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|op[0]~0_combout\);

-- Location: FF_X60_Y2_N41
\G3|op[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|op[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[0]~en_q\);

-- Location: FF_X60_Y4_N46
\G3|op[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux14~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[1]~reg0_q\);

-- Location: LABCELL_X60_Y2_N57
\G3|op[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[1]~1_combout\ = ( !\G3|Mux12~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|op[1]~1_combout\);

-- Location: FF_X60_Y2_N58
\G3|op[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|op[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[1]~en_q\);

-- Location: MLABCELL_X59_Y4_N51
\G3|op[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[2]~reg0feeder_combout\ = ( \G3|Mux13~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux13~1_combout\,
	combout => \G3|op[2]~reg0feeder_combout\);

-- Location: FF_X59_Y4_N52
\G3|op[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|op[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[2]~reg0_q\);

-- Location: LABCELL_X60_Y2_N15
\G3|op[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[2]~2_combout\ = ( !\G3|Mux12~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|op[2]~2_combout\);

-- Location: FF_X60_Y2_N16
\G3|op[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|op[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[2]~en_q\);

-- Location: LABCELL_X60_Y2_N18
\G3|op[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[3]~reg0feeder_combout\ = ( \G3|Mux12~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|op[3]~reg0feeder_combout\);

-- Location: FF_X60_Y2_N19
\G3|op[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|op[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[3]~reg0_q\);

-- Location: LABCELL_X60_Y2_N48
\G3|op[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|op[3]~3_combout\ = ( !\G3|Mux12~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|op[3]~3_combout\);

-- Location: FF_X60_Y2_N49
\G3|op[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|op[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|op[3]~en_q\);

-- Location: FF_X61_Y4_N1
\G1|pout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~53_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(3));

-- Location: LABCELL_X63_Y4_N9
\G3|rd[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rd[2]~0_combout\ = ( \G3|Mux12~0_combout\ & ( \G3|Mux12~1_combout\ & ( ((\G1|pout\(3)) # (\G1|pout\(2))) # (\G1|pout[0]~DUPLICATE_q\) ) ) ) # ( !\G3|Mux12~0_combout\ & ( \G3|Mux12~1_combout\ ) ) # ( \G3|Mux12~0_combout\ & ( !\G3|Mux12~1_combout\ ) ) # 
-- ( !\G3|Mux12~0_combout\ & ( !\G3|Mux12~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout[0]~DUPLICATE_q\,
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G3|ALT_INV_Mux12~0_combout\,
	dataf => \G3|ALT_INV_Mux12~1_combout\,
	combout => \G3|rd[2]~0_combout\);

-- Location: FF_X63_Y4_N10
\G3|rd[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux12~3_combout\,
	sload => VCC,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[0]~reg0_q\);

-- Location: LABCELL_X63_Y4_N54
\G3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Equal0~0_combout\ = ( \G3|Mux12~1_combout\ & ( \G3|Mux12~0_combout\ & ( (\G1|pout\(3)) # (\G1|pout\(2)) ) ) ) # ( !\G3|Mux12~1_combout\ & ( \G3|Mux12~0_combout\ ) ) # ( \G3|Mux12~1_combout\ & ( !\G3|Mux12~0_combout\ ) ) # ( !\G3|Mux12~1_combout\ & ( 
-- !\G3|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datae => \G3|ALT_INV_Mux12~1_combout\,
	dataf => \G3|ALT_INV_Mux12~0_combout\,
	combout => \G3|Equal0~0_combout\);

-- Location: FF_X63_Y4_N8
\G3|rd[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Equal0~0_combout\,
	sload => VCC,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[0]~en_q\);

-- Location: LABCELL_X63_Y4_N24
\G3|rd[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rd[1]~reg0feeder_combout\ = ( \G3|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux15~0_combout\,
	combout => \G3|rd[1]~reg0feeder_combout\);

-- Location: FF_X63_Y4_N25
\G3|rd[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|rd[1]~reg0feeder_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[1]~reg0_q\);

-- Location: FF_X63_Y4_N58
\G3|rd[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Equal0~0_combout\,
	sload => VCC,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[1]~en_q\);

-- Location: FF_X63_Y4_N4
\G3|rd[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux14~1_combout\,
	sload => VCC,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[2]~reg0_q\);

-- Location: FF_X63_Y4_N28
\G3|rd[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Equal0~0_combout\,
	sload => VCC,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rd[2]~en_q\);

-- Location: FF_X61_Y4_N50
\G3|rt[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux13~1_combout\,
	sload => VCC,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[0]~reg0_q\);

-- Location: LABCELL_X62_Y4_N54
\G3|rt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rt[0]~0_combout\ = ( !\G3|jump[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rt[0]~0_combout\);

-- Location: FF_X62_Y4_N55
\G3|rt[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|rt[0]~0_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[0]~en_q\);

-- Location: FF_X61_Y4_N52
\G3|rt[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux12~3_combout\,
	sload => VCC,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[1]~reg0_q\);

-- Location: LABCELL_X62_Y4_N39
\G3|rt[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rt[1]~1_combout\ = ( !\G3|jump[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rt[1]~1_combout\);

-- Location: FF_X62_Y4_N40
\G3|rt[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|rt[1]~1_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[1]~en_q\);

-- Location: FF_X62_Y4_N19
\G3|rt[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux15~0_combout\,
	sload => VCC,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[2]~reg0_q\);

-- Location: LABCELL_X62_Y4_N0
\G3|rt[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rt[2]~2_combout\ = ( !\G3|jump[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_jump[0]~0_combout\,
	combout => \G3|rt[2]~2_combout\);

-- Location: FF_X62_Y4_N1
\G3|rt[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|rt[2]~2_combout\,
	ena => \G3|rs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|rt[2]~en_q\);

-- Location: LABCELL_X63_Y4_N45
\G3|funct[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|funct[0]~reg0feeder_combout\ = ( \G3|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux15~0_combout\,
	combout => \G3|funct[0]~reg0feeder_combout\);

-- Location: FF_X63_Y4_N46
\G3|funct[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|funct[0]~reg0feeder_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[0]~reg0_q\);

-- Location: FF_X63_Y4_N43
\G3|funct[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Equal0~0_combout\,
	sload => VCC,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[0]~en_q\);

-- Location: FF_X63_Y4_N13
\G3|funct[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux14~1_combout\,
	sload => VCC,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[1]~reg0_q\);

-- Location: FF_X63_Y4_N1
\G3|funct[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Equal0~0_combout\,
	sload => VCC,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[1]~en_q\);

-- Location: LABCELL_X63_Y4_N15
\G3|funct[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|funct[2]~reg0feeder_combout\ = ( \G3|Mux13~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux13~1_combout\,
	combout => \G3|funct[2]~reg0feeder_combout\);

-- Location: FF_X63_Y4_N16
\G3|funct[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|funct[2]~reg0feeder_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[2]~reg0_q\);

-- Location: FF_X63_Y4_N55
\G3|funct[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|Equal0~0_combout\,
	ena => \G3|rd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|funct[2]~en_q\);

-- Location: LABCELL_X63_Y4_N33
\G3|tipoi[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[0]~reg0feeder_combout\ = ( \G3|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux15~0_combout\,
	combout => \G3|tipoi[0]~reg0feeder_combout\);

-- Location: LABCELL_X62_Y4_N6
\G3|tipoi[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[5]~0_combout\ = ( \G3|Mux12~0_combout\ & ( \G3|Mux12~1_combout\ & ( (!\G3|Mux12~2_combout\ & (!\G3|Mux13~0_combout\ $ (((!\G3|Mux14~0_combout\))))) # (\G3|Mux12~2_combout\ & ((!\G3|Mux13~0_combout\) # ((\G1|pout[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux13~0_combout\,
	datab => \G1|ALT_INV_pout[0]~DUPLICATE_q\,
	datac => \G3|ALT_INV_Mux12~2_combout\,
	datad => \G3|ALT_INV_Mux14~0_combout\,
	datae => \G3|ALT_INV_Mux12~0_combout\,
	dataf => \G3|ALT_INV_Mux12~1_combout\,
	combout => \G3|tipoi[5]~0_combout\);

-- Location: FF_X63_Y4_N34
\G3|tipoi[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|tipoi[0]~reg0feeder_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[0]~reg0_q\);

-- Location: LABCELL_X62_Y4_N15
\G3|jump[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[0]~1_combout\ = ( \G3|Mux12~0_combout\ & ( \G3|Mux13~0_combout\ & ( (\G3|Mux12~1_combout\ & (!\G3|Mux14~0_combout\ & !\G3|Mux12~2_combout\)) ) ) ) # ( \G3|Mux12~0_combout\ & ( !\G3|Mux13~0_combout\ & ( (\G3|Mux12~1_combout\ & 
-- ((!\G3|Mux12~2_combout\ & ((\G3|Mux14~0_combout\))) # (\G3|Mux12~2_combout\ & (!\G1|pout[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110010001000000000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout[0]~DUPLICATE_q\,
	datab => \G3|ALT_INV_Mux12~1_combout\,
	datac => \G3|ALT_INV_Mux14~0_combout\,
	datad => \G3|ALT_INV_Mux12~2_combout\,
	datae => \G3|ALT_INV_Mux12~0_combout\,
	dataf => \G3|ALT_INV_Mux13~0_combout\,
	combout => \G3|jump[0]~1_combout\);

-- Location: FF_X62_Y4_N8
\G3|tipoi[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|jump[0]~1_combout\,
	sload => VCC,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[0]~en_q\);

-- Location: LABCELL_X62_Y4_N27
\G3|tipoi[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[1]~reg0feeder_combout\ = ( \G3|Mux14~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux14~1_combout\,
	combout => \G3|tipoi[1]~reg0feeder_combout\);

-- Location: FF_X62_Y4_N28
\G3|tipoi[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|tipoi[1]~reg0feeder_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[1]~reg0_q\);

-- Location: LABCELL_X62_Y4_N30
\G3|tipoi[1]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[1]~enfeeder_combout\ = ( \G3|jump[0]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_jump[0]~1_combout\,
	combout => \G3|tipoi[1]~enfeeder_combout\);

-- Location: FF_X62_Y4_N31
\G3|tipoi[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|tipoi[1]~enfeeder_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[1]~en_q\);

-- Location: FF_X62_Y4_N16
\G3|tipoi[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux13~1_combout\,
	sload => VCC,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[2]~reg0_q\);

-- Location: FF_X62_Y4_N13
\G3|tipoi[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|jump[0]~1_combout\,
	sload => VCC,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[2]~en_q\);

-- Location: LABCELL_X63_Y4_N36
\G3|tipoi[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[3]~reg0feeder_combout\ = ( \G3|Mux12~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux12~3_combout\,
	combout => \G3|tipoi[3]~reg0feeder_combout\);

-- Location: FF_X63_Y4_N38
\G3|tipoi[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|tipoi[3]~reg0feeder_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[3]~reg0_q\);

-- Location: LABCELL_X62_Y4_N33
\G3|tipoi[3]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[3]~enfeeder_combout\ = ( \G3|jump[0]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_jump[0]~1_combout\,
	combout => \G3|tipoi[3]~enfeeder_combout\);

-- Location: FF_X62_Y4_N34
\G3|tipoi[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|tipoi[3]~enfeeder_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[3]~en_q\);

-- Location: FF_X62_Y4_N11
\G3|tipoi[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux15~0_combout\,
	sload => VCC,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[4]~reg0_q\);

-- Location: LABCELL_X62_Y4_N48
\G3|tipoi[4]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[4]~enfeeder_combout\ = ( \G3|jump[0]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_jump[0]~1_combout\,
	combout => \G3|tipoi[4]~enfeeder_combout\);

-- Location: FF_X62_Y4_N50
\G3|tipoi[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|tipoi[4]~enfeeder_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[4]~en_q\);

-- Location: LABCELL_X62_Y4_N51
\G3|tipoi[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[5]~reg0feeder_combout\ = ( \G3|Mux14~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux14~1_combout\,
	combout => \G3|tipoi[5]~reg0feeder_combout\);

-- Location: FF_X62_Y4_N52
\G3|tipoi[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|tipoi[5]~reg0feeder_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[5]~reg0_q\);

-- Location: LABCELL_X62_Y4_N24
\G3|tipoi[5]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|tipoi[5]~enfeeder_combout\ = ( \G3|jump[0]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_jump[0]~1_combout\,
	combout => \G3|tipoi[5]~enfeeder_combout\);

-- Location: FF_X62_Y4_N26
\G3|tipoi[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|tipoi[5]~enfeeder_combout\,
	ena => \G3|tipoi[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|tipoi[5]~en_q\);

-- Location: FF_X62_Y4_N46
\G3|jump[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux15~0_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[0]~reg0_q\);

-- Location: MLABCELL_X59_Y4_N57
\G3|rs[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|rs[2]~1_combout\ = ( \G3|Mux12~2_combout\ & ( \G3|Mux12~0_combout\ & ( (!\G1|pout[0]~DUPLICATE_q\ & (\G3|Mux12~1_combout\ & \G3|Mux13~0_combout\)) ) ) ) # ( !\G3|Mux12~2_combout\ & ( \G3|Mux12~0_combout\ & ( (\G3|Mux12~1_combout\ & 
-- (\G3|Mux13~0_combout\ & \G3|Mux14~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout[0]~DUPLICATE_q\,
	datab => \G3|ALT_INV_Mux12~1_combout\,
	datac => \G3|ALT_INV_Mux13~0_combout\,
	datad => \G3|ALT_INV_Mux14~0_combout\,
	datae => \G3|ALT_INV_Mux12~2_combout\,
	dataf => \G3|ALT_INV_Mux12~0_combout\,
	combout => \G3|rs[2]~1_combout\);

-- Location: FF_X60_Y4_N56
\G3|jump[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|rs[2]~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[0]~en_q\);

-- Location: FF_X61_Y4_N13
\G3|jump[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|Mux14~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[1]~reg0_q\);

-- Location: FF_X61_Y4_N40
\G3|jump[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|rs[2]~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[1]~en_q\);

-- Location: FF_X59_Y4_N26
\G3|jump[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|Mux13~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[2]~reg0_q\);

-- Location: FF_X61_Y4_N56
\G3|jump[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|rs[2]~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[2]~en_q\);

-- Location: FF_X61_Y4_N17
\G3|jump[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux12~3_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[3]~reg0_q\);

-- Location: LABCELL_X61_Y4_N24
\G3|jump[3]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[3]~enfeeder_combout\ = ( \G3|rs[2]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_rs[2]~1_combout\,
	combout => \G3|jump[3]~enfeeder_combout\);

-- Location: FF_X61_Y4_N25
\G3|jump[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|jump[3]~enfeeder_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[3]~en_q\);

-- Location: LABCELL_X61_Y4_N21
\G3|jump[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[4]~reg0feeder_combout\ = ( \G3|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux15~0_combout\,
	combout => \G3|jump[4]~reg0feeder_combout\);

-- Location: FF_X61_Y4_N22
\G3|jump[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|jump[4]~reg0feeder_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[4]~reg0_q\);

-- Location: FF_X60_Y4_N58
\G3|jump[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|rs[2]~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[4]~en_q\);

-- Location: LABCELL_X61_Y4_N27
\G3|jump[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[5]~reg0feeder_combout\ = ( \G3|Mux14~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_Mux14~1_combout\,
	combout => \G3|jump[5]~reg0feeder_combout\);

-- Location: FF_X61_Y4_N29
\G3|jump[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|jump[5]~reg0feeder_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[5]~reg0_q\);

-- Location: FF_X60_Y4_N52
\G3|jump[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|rs[2]~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[5]~en_q\);

-- Location: FF_X61_Y4_N35
\G3|jump[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux13~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[6]~reg0_q\);

-- Location: LABCELL_X61_Y4_N9
\G3|jump[6]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[6]~enfeeder_combout\ = ( \G3|rs[2]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_rs[2]~1_combout\,
	combout => \G3|jump[6]~enfeeder_combout\);

-- Location: FF_X61_Y4_N10
\G3|jump[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|jump[6]~enfeeder_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[6]~en_q\);

-- Location: FF_X61_Y4_N46
\G3|jump[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux12~3_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[7]~reg0_q\);

-- Location: LABCELL_X61_Y4_N6
\G3|jump[7]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[7]~enfeeder_combout\ = ( \G3|rs[2]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_rs[2]~1_combout\,
	combout => \G3|jump[7]~enfeeder_combout\);

-- Location: FF_X61_Y4_N7
\G3|jump[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|jump[7]~enfeeder_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[7]~en_q\);

-- Location: FF_X62_Y4_N44
\G3|jump[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|Mux15~0_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[8]~reg0_q\);

-- Location: LABCELL_X61_Y4_N18
\G3|jump[8]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|jump[8]~enfeeder_combout\ = ( \G3|rs[2]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G3|ALT_INV_rs[2]~1_combout\,
	combout => \G3|jump[8]~enfeeder_combout\);

-- Location: FF_X61_Y4_N19
\G3|jump[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|jump[8]~enfeeder_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[8]~en_q\);

-- Location: FF_X61_Y4_N38
\G3|jump[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux14~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[9]~reg0_q\);

-- Location: FF_X60_Y4_N50
\G3|jump[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|rs[2]~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[9]~en_q\);

-- Location: FF_X61_Y4_N58
\G3|jump[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux13~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[10]~reg0_q\);

-- Location: FF_X61_Y4_N32
\G3|jump[10]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|rs[2]~1_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[10]~en_q\);

-- Location: FF_X61_Y4_N43
\G3|jump[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G3|Mux12~3_combout\,
	sload => VCC,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[11]~reg0_q\);

-- Location: FF_X59_Y4_N59
\G3|jump[11]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|rs[2]~1_combout\,
	ena => \G3|jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|jump[11]~en_q\);

-- Location: MLABCELL_X39_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


