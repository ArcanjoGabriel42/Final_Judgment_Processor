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

-- DATE "11/30/2018 12:18:19"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	EntradaA : IN std_logic_vector(15 DOWNTO 0);
	EntradaB : IN std_logic_vector(15 DOWNTO 0);
	Controle_ULA : IN std_logic_vector(6 DOWNTO 0);
	Saida_to_Dados : OUT std_logic_vector(15 DOWNTO 0);
	Saida_to_Mux : OUT std_logic_vector(15 DOWNTO 0);
	ZeroULA : OUT std_logic
	);
END ULA;

ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EntradaA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_EntradaB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Controle_ULA : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Saida_to_Dados : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_to_Mux : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ZeroULA : std_logic;
SIGNAL \Saida_to_Dados[0]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[1]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[2]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[3]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[4]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[5]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[6]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[7]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[8]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[9]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[10]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[11]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[12]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[13]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[14]~output_o\ : std_logic;
SIGNAL \Saida_to_Dados[15]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[0]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[1]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[2]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[3]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[4]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[5]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[6]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[7]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[8]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[9]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[10]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[11]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[12]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[13]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[14]~output_o\ : std_logic;
SIGNAL \Saida_to_Mux[15]~output_o\ : std_logic;
SIGNAL \ZeroULA~output_o\ : std_logic;
SIGNAL \EntradaB[0]~input_o\ : std_logic;
SIGNAL \EntradaA[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Controle_ULA[2]~input_o\ : std_logic;
SIGNAL \Controle_ULA[0]~input_o\ : std_logic;
SIGNAL \Controle_ULA[1]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Controle_ULA[5]~input_o\ : std_logic;
SIGNAL \Controle_ULA[3]~input_o\ : std_logic;
SIGNAL \Controle_ULA[4]~input_o\ : std_logic;
SIGNAL \Controle_ULA[6]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \EntradaA[1]~input_o\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \EntradaB[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \EntradaA[2]~input_o\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \EntradaB[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \EntradaA[3]~input_o\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \EntradaB[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \EntradaA[4]~input_o\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \EntradaB[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \EntradaA[5]~input_o\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \EntradaB[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \EntradaA[6]~input_o\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \EntradaB[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \EntradaA[7]~input_o\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \EntradaB[7]~input_o\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \EntradaA[8]~input_o\ : std_logic;
SIGNAL \EntradaB[8]~input_o\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \EntradaA[9]~input_o\ : std_logic;
SIGNAL \EntradaB[9]~input_o\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \EntradaA[10]~input_o\ : std_logic;
SIGNAL \EntradaB[10]~input_o\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \EntradaA[11]~input_o\ : std_logic;
SIGNAL \EntradaB[11]~input_o\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \EntradaA[12]~input_o\ : std_logic;
SIGNAL \EntradaB[12]~input_o\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \EntradaA[13]~input_o\ : std_logic;
SIGNAL \EntradaB[13]~input_o\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \EntradaA[14]~input_o\ : std_logic;
SIGNAL \EntradaB[14]~input_o\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \EntradaA[15]~input_o\ : std_logic;
SIGNAL \EntradaB[15]~input_o\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \ZeroULA~0_combout\ : std_logic;
SIGNAL \ZeroULA~1_combout\ : std_logic;
SIGNAL \ZeroULA~2_combout\ : std_logic;
SIGNAL \ALT_INV_ZeroULA~1_combout\ : std_logic;
SIGNAL \ALT_INV_ZeroULA~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_EntradaB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_EntradaA <= EntradaA;
ww_EntradaB <= EntradaB;
ww_Controle_ULA <= Controle_ULA;
Saida_to_Dados <= ww_Saida_to_Dados;
Saida_to_Mux <= ww_Saida_to_Mux;
ZeroULA <= ww_ZeroULA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ZeroULA~1_combout\ <= NOT \ZeroULA~1_combout\;
\ALT_INV_ZeroULA~0_combout\ <= NOT \ZeroULA~0_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~3_combout\ <= NOT \Mux8~3_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux15~5_combout\ <= NOT \Mux15~5_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux15~3_combout\ <= NOT \Mux15~3_combout\;
\ALT_INV_Mux15~2_combout\ <= NOT \Mux15~2_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_EntradaB[15]~input_o\ <= NOT \EntradaB[15]~input_o\;
\ALT_INV_EntradaA[15]~input_o\ <= NOT \EntradaA[15]~input_o\;
\ALT_INV_EntradaB[14]~input_o\ <= NOT \EntradaB[14]~input_o\;
\ALT_INV_EntradaA[14]~input_o\ <= NOT \EntradaA[14]~input_o\;
\ALT_INV_EntradaB[13]~input_o\ <= NOT \EntradaB[13]~input_o\;
\ALT_INV_EntradaA[13]~input_o\ <= NOT \EntradaA[13]~input_o\;
\ALT_INV_EntradaB[12]~input_o\ <= NOT \EntradaB[12]~input_o\;
\ALT_INV_EntradaA[12]~input_o\ <= NOT \EntradaA[12]~input_o\;
\ALT_INV_EntradaB[11]~input_o\ <= NOT \EntradaB[11]~input_o\;
\ALT_INV_EntradaA[11]~input_o\ <= NOT \EntradaA[11]~input_o\;
\ALT_INV_EntradaB[10]~input_o\ <= NOT \EntradaB[10]~input_o\;
\ALT_INV_EntradaA[10]~input_o\ <= NOT \EntradaA[10]~input_o\;
\ALT_INV_EntradaB[9]~input_o\ <= NOT \EntradaB[9]~input_o\;
\ALT_INV_EntradaA[9]~input_o\ <= NOT \EntradaA[9]~input_o\;
\ALT_INV_EntradaB[8]~input_o\ <= NOT \EntradaB[8]~input_o\;
\ALT_INV_EntradaA[8]~input_o\ <= NOT \EntradaA[8]~input_o\;
\ALT_INV_EntradaB[7]~input_o\ <= NOT \EntradaB[7]~input_o\;
\ALT_INV_EntradaA[7]~input_o\ <= NOT \EntradaA[7]~input_o\;
\ALT_INV_EntradaB[6]~input_o\ <= NOT \EntradaB[6]~input_o\;
\ALT_INV_EntradaA[6]~input_o\ <= NOT \EntradaA[6]~input_o\;
\ALT_INV_EntradaB[5]~input_o\ <= NOT \EntradaB[5]~input_o\;
\ALT_INV_EntradaA[5]~input_o\ <= NOT \EntradaA[5]~input_o\;
\ALT_INV_EntradaB[4]~input_o\ <= NOT \EntradaB[4]~input_o\;
\ALT_INV_EntradaA[4]~input_o\ <= NOT \EntradaA[4]~input_o\;
\ALT_INV_EntradaB[3]~input_o\ <= NOT \EntradaB[3]~input_o\;
\ALT_INV_EntradaA[3]~input_o\ <= NOT \EntradaA[3]~input_o\;
\ALT_INV_EntradaB[2]~input_o\ <= NOT \EntradaB[2]~input_o\;
\ALT_INV_EntradaA[2]~input_o\ <= NOT \EntradaA[2]~input_o\;
\ALT_INV_EntradaB[1]~input_o\ <= NOT \EntradaB[1]~input_o\;
\ALT_INV_EntradaA[1]~input_o\ <= NOT \EntradaA[1]~input_o\;
\ALT_INV_EntradaA[0]~input_o\ <= NOT \EntradaA[0]~input_o\;
\ALT_INV_EntradaB[0]~input_o\ <= NOT \EntradaB[0]~input_o\;
\ALT_INV_Controle_ULA[6]~input_o\ <= NOT \Controle_ULA[6]~input_o\;
\ALT_INV_Controle_ULA[4]~input_o\ <= NOT \Controle_ULA[4]~input_o\;
\ALT_INV_Controle_ULA[3]~input_o\ <= NOT \Controle_ULA[3]~input_o\;
\ALT_INV_Controle_ULA[5]~input_o\ <= NOT \Controle_ULA[5]~input_o\;
\ALT_INV_Controle_ULA[1]~input_o\ <= NOT \Controle_ULA[1]~input_o\;
\ALT_INV_Controle_ULA[0]~input_o\ <= NOT \Controle_ULA[0]~input_o\;
\ALT_INV_Controle_ULA[2]~input_o\ <= NOT \Controle_ULA[2]~input_o\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

\Saida_to_Dados[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[0]~output_o\);

\Saida_to_Dados[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~2_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[1]~output_o\);

\Saida_to_Dados[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[2]~output_o\);

\Saida_to_Dados[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[3]~output_o\);

\Saida_to_Dados[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[4]~output_o\);

\Saida_to_Dados[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~2_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[5]~output_o\);

\Saida_to_Dados[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[6]~output_o\);

\Saida_to_Dados[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[7]~output_o\);

\Saida_to_Dados[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[8]~output_o\);

\Saida_to_Dados[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[9]~output_o\);

\Saida_to_Dados[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[10]~output_o\);

\Saida_to_Dados[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[11]~output_o\);

\Saida_to_Dados[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[12]~output_o\);

\Saida_to_Dados[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[13]~output_o\);

\Saida_to_Dados[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[14]~output_o\);

\Saida_to_Dados[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Dados[15]~output_o\);

\Saida_to_Mux[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[0]~output_o\);

\Saida_to_Mux[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~2_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[1]~output_o\);

\Saida_to_Mux[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[2]~output_o\);

\Saida_to_Mux[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[3]~output_o\);

\Saida_to_Mux[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[4]~output_o\);

\Saida_to_Mux[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~2_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[5]~output_o\);

\Saida_to_Mux[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[6]~output_o\);

\Saida_to_Mux[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[7]~output_o\);

\Saida_to_Mux[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[8]~output_o\);

\Saida_to_Mux[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[9]~output_o\);

\Saida_to_Mux[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[10]~output_o\);

\Saida_to_Mux[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[11]~output_o\);

\Saida_to_Mux[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[12]~output_o\);

\Saida_to_Mux[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[13]~output_o\);

\Saida_to_Mux[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[14]~output_o\);

\Saida_to_Mux[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Saida_to_Mux[15]~output_o\);

\ZeroULA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ZeroULA~2_combout\,
	devoe => ww_devoe,
	o => \ZeroULA~output_o\);

\EntradaB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(0),
	o => \EntradaB[0]~input_o\);

\EntradaA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(0),
	o => \EntradaA[0]~input_o\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \EntradaB[0]~input_o\ ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \EntradaB[0]~input_o\ ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[0]~input_o\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\Controle_ULA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Controle_ULA(2),
	o => \Controle_ULA[2]~input_o\);

\Controle_ULA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Controle_ULA(0),
	o => \Controle_ULA[0]~input_o\);

\Controle_ULA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Controle_ULA(1),
	o => \Controle_ULA[1]~input_o\);

\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\Controle_ULA[0]~input_o\ & !\Controle_ULA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[1]~input_o\,
	combout => \Mux15~0_combout\);

\Controle_ULA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Controle_ULA(5),
	o => \Controle_ULA[5]~input_o\);

\Controle_ULA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Controle_ULA(3),
	o => \Controle_ULA[3]~input_o\);

\Controle_ULA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Controle_ULA(4),
	o => \Controle_ULA[4]~input_o\);

\Controle_ULA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Controle_ULA(6),
	o => \Controle_ULA[6]~input_o\);

\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\Controle_ULA[5]~input_o\ & (!\Controle_ULA[3]~input_o\ & (!\Controle_ULA[4]~input_o\ & !\Controle_ULA[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[5]~input_o\,
	datab => \ALT_INV_Controle_ULA[3]~input_o\,
	datac => \ALT_INV_Controle_ULA[4]~input_o\,
	datad => \ALT_INV_Controle_ULA[6]~input_o\,
	combout => \Mux8~0_combout\);

\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux8~0_combout\ & (!\Controle_ULA[2]~input_o\ $ (\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	combout => \Mux15~1_combout\);

\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\ & \Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	combout => \Mux13~0_combout\);

\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\EntradaA[0]~input_o\ $ (!\EntradaB[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\EntradaA[0]~input_o\ $ (!\EntradaB[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\EntradaB[0]~input_o\) # (\EntradaA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[0]~input_o\,
	datad => \ALT_INV_EntradaB[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

\EntradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(1),
	o => \EntradaA[1]~input_o\);

\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !\EntradaA[1]~input_o\ ) + ( !\EntradaA[0]~input_o\ ) + ( !VCC ))
-- \Add2~2\ = CARRY(( !\EntradaA[1]~input_o\ ) + ( !\EntradaA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[1]~input_o\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

\Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \Add1~1_sumout\ & ( \Add2~1_sumout\ & ( (!\Controle_ULA[0]~input_o\ & ((!\Controle_ULA[1]~input_o\ & ((!\Mux8~0_combout\))) # (\Controle_ULA[1]~input_o\ & (\EntradaB[0]~input_o\)))) # (\Controle_ULA[0]~input_o\ & 
-- (((!\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\Add1~1_sumout\ & ( \Add2~1_sumout\ & ( (\EntradaB[0]~input_o\ & (!\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) ) ) ) # ( \Add1~1_sumout\ & ( !\Add2~1_sumout\ & ( (!\Controle_ULA[1]~input_o\ & 
-- ((!\Mux8~0_combout\) # (\Controle_ULA[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000011000000000100000001001111010000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \Mux15~2_combout\);

\Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = ( \Mux8~0_combout\ & ( (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & ((\EntradaA[0]~input_o\) # (\EntradaB[0]~input_o\)))) # (\Controle_ULA[0]~input_o\ & (\EntradaB[0]~input_o\ & (\EntradaA[0]~input_o\ & 
-- \Controle_ULA[1]~input_o\))) ) ) # ( !\Mux8~0_combout\ & ( (\EntradaB[0]~input_o\ & (\EntradaA[0]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001011100000000000100000000000000010111000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[0]~input_o\,
	datad => \ALT_INV_Controle_ULA[1]~input_o\,
	datae => \ALT_INV_Mux8~0_combout\,
	combout => \Mux15~3_combout\);

\Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = ( \Mux15~3_combout\ & ( ((\Add0~1_sumout\ & \Mux13~0_combout\)) # (\Mux15~1_combout\) ) ) # ( !\Mux15~3_combout\ & ( (!\Add0~1_sumout\ & (\Mux15~1_combout\ & ((\Mux15~2_combout\)))) # (\Add0~1_sumout\ & (((\Mux15~1_combout\ & 
-- \Mux15~2_combout\)) # (\Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111001101110011011100000101001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_Mux15~2_combout\,
	datae => \ALT_INV_Mux15~3_combout\,
	combout => \Mux15~4_combout\);

\EntradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(1),
	o => \EntradaB[1]~input_o\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \EntradaB[1]~input_o\ ) + ( \EntradaA[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \EntradaB[1]~input_o\ ) + ( \EntradaA[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[1]~input_o\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\EntradaA[1]~input_o\ $ (\EntradaB[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\EntradaA[1]~input_o\ $ (\EntradaB[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((\EntradaA[1]~input_o\ & !\EntradaB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[1]~input_o\,
	datad => \ALT_INV_EntradaB[1]~input_o\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

\EntradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(2),
	o => \EntradaA[2]~input_o\);

\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\EntradaA[2]~input_o\ ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !\EntradaA[2]~input_o\ ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \Add1~5_sumout\ & ( \Add2~5_sumout\ & ( (!\Controle_ULA[0]~input_o\ & ((!\Controle_ULA[1]~input_o\ & ((!\Mux8~0_combout\))) # (\Controle_ULA[1]~input_o\ & (\EntradaB[0]~input_o\)))) # (\Controle_ULA[0]~input_o\ & 
-- (((!\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\Add1~5_sumout\ & ( \Add2~5_sumout\ & ( (\EntradaB[0]~input_o\ & (!\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) ) ) ) # ( \Add1~5_sumout\ & ( !\Add2~5_sumout\ & ( (!\Controle_ULA[1]~input_o\ & 
-- ((!\Mux8~0_combout\) # (\Controle_ULA[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000011000000000100000001001111010000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_Add1~5_sumout\,
	dataf => \ALT_INV_Add2~5_sumout\,
	combout => \Mux14~0_combout\);

\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \EntradaB[1]~input_o\ & ( (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & (\Mux8~0_combout\))) # (\Controle_ULA[0]~input_o\ & (\Controle_ULA[1]~input_o\ & ((\EntradaA[1]~input_o\)))) ) ) # ( !\EntradaB[1]~input_o\ & ( 
-- (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & (\Mux8~0_combout\ & \EntradaA[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010000001100100000000000010000000100000011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[1]~input_o\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_EntradaA[1]~input_o\,
	datae => \ALT_INV_EntradaB[1]~input_o\,
	combout => \Mux14~1_combout\);

\Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \Mux14~1_combout\ & ( ((\Mux13~0_combout\ & \Add0~5_sumout\)) # (\Mux15~1_combout\) ) ) # ( !\Mux14~1_combout\ & ( (!\Mux15~1_combout\ & (\Mux13~0_combout\ & (\Add0~5_sumout\))) # (\Mux15~1_combout\ & (((\Mux13~0_combout\ & 
-- \Add0~5_sumout\)) # (\Mux14~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111010101110101011100000011010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~1_combout\,
	datab => \ALT_INV_Mux13~0_combout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Mux14~0_combout\,
	datae => \ALT_INV_Mux14~1_combout\,
	combout => \Mux14~2_combout\);

\EntradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(2),
	o => \EntradaB[2]~input_o\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \EntradaB[2]~input_o\ ) + ( \EntradaA[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \EntradaB[2]~input_o\ ) + ( \EntradaA[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[2]~input_o\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\EntradaA[2]~input_o\ $ (\EntradaB[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\EntradaA[2]~input_o\ $ (\EntradaB[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((\EntradaA[2]~input_o\ & !\EntradaB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[2]~input_o\,
	datad => \ALT_INV_EntradaB[2]~input_o\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

\EntradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(3),
	o => \EntradaA[3]~input_o\);

\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !\EntradaA[3]~input_o\ ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !\EntradaA[3]~input_o\ ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\Controle_ULA[0]~input_o\ & ((!\Controle_ULA[1]~input_o\ & (\Add1~9_sumout\)) # (\Controle_ULA[1]~input_o\ & ((\Add2~9_sumout\))))) # (\Controle_ULA[0]~input_o\ & (((\Add1~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[1]~input_o\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add2~9_sumout\,
	combout => \Mux13~1_combout\);

\Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Mux8~0_combout\ & ( (!\Controle_ULA[2]~input_o\ & ((!\Controle_ULA[0]~input_o\ & (\EntradaB[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[0]~input_o\ & ((!\Controle_ULA[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000100000000000000000000000000110001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[2]~input_o\,
	datac => \ALT_INV_Controle_ULA[0]~input_o\,
	datad => \ALT_INV_Controle_ULA[1]~input_o\,
	datae => \ALT_INV_Mux8~0_combout\,
	combout => \Mux13~2_combout\);

\Mux15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	combout => \Mux15~5_combout\);

\Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \EntradaA[2]~input_o\ & ( \EntradaB[2]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (!\Mux15~0_combout\ & \Mux15~5_combout\)) # (\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\)))) ) ) ) # ( !\EntradaA[2]~input_o\ & 
-- ( \EntradaB[2]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\ & \Mux8~0_combout\)) ) ) ) # ( \EntradaA[2]~input_o\ & ( !\EntradaB[2]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\ & \Mux8~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000001000000010000000100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_Mux15~5_combout\,
	datae => \ALT_INV_EntradaA[2]~input_o\,
	dataf => \ALT_INV_EntradaB[2]~input_o\,
	combout => \Mux13~3_combout\);

\Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( \Mux13~3_combout\ ) # ( !\Mux13~3_combout\ & ( (!\Mux13~0_combout\ & (((\Mux13~1_combout\ & \Mux13~2_combout\)))) # (\Mux13~0_combout\ & (((\Mux13~1_combout\ & \Mux13~2_combout\)) # (\Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111100010001000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~0_combout\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Mux13~1_combout\,
	datad => \ALT_INV_Mux13~2_combout\,
	datae => \ALT_INV_Mux13~3_combout\,
	combout => \Mux13~4_combout\);

\EntradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(3),
	o => \EntradaB[3]~input_o\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \EntradaB[3]~input_o\ ) + ( \EntradaA[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \EntradaB[3]~input_o\ ) + ( \EntradaA[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[3]~input_o\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\EntradaA[3]~input_o\ $ (\EntradaB[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\EntradaA[3]~input_o\ $ (\EntradaB[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((\EntradaA[3]~input_o\ & !\EntradaB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[3]~input_o\,
	datad => \ALT_INV_EntradaB[3]~input_o\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Add1~13_sumout\ & ( (!\Controle_ULA[1]~input_o\ & ((!\Mux8~0_combout\) # (\Controle_ULA[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000011000000000000000000001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_Add1~13_sumout\,
	combout => \Mux12~0_combout\);

\EntradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(4),
	o => \EntradaA[4]~input_o\);

\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\EntradaA[4]~input_o\ ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !\EntradaA[4]~input_o\ ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\EntradaB[0]~input_o\ & (!\Controle_ULA[0]~input_o\ & (\Controle_ULA[1]~input_o\ & \Add2~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Add2~13_sumout\,
	combout => \Mux12~1_combout\);

\Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \EntradaB[3]~input_o\ & ( (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & (\Mux8~0_combout\))) # (\Controle_ULA[0]~input_o\ & (\Controle_ULA[1]~input_o\ & ((\EntradaA[3]~input_o\)))) ) ) # ( !\EntradaB[3]~input_o\ & ( 
-- (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & (\Mux8~0_combout\ & \EntradaA[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010000001100100000000000010000000100000011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[1]~input_o\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_EntradaA[3]~input_o\,
	datae => \ALT_INV_EntradaB[3]~input_o\,
	combout => \Mux12~2_combout\);

\Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \Mux12~1_combout\ & ( \Mux12~2_combout\ & ( ((\Mux13~0_combout\ & \Add0~13_sumout\)) # (\Mux15~1_combout\) ) ) ) # ( !\Mux12~1_combout\ & ( \Mux12~2_combout\ & ( ((\Mux13~0_combout\ & \Add0~13_sumout\)) # (\Mux15~1_combout\) ) ) ) # 
-- ( \Mux12~1_combout\ & ( !\Mux12~2_combout\ & ( ((\Mux13~0_combout\ & \Add0~13_sumout\)) # (\Mux15~1_combout\) ) ) ) # ( !\Mux12~1_combout\ & ( !\Mux12~2_combout\ & ( (!\Mux15~1_combout\ & (\Mux13~0_combout\ & (\Add0~13_sumout\))) # (\Mux15~1_combout\ & 
-- (((\Mux13~0_combout\ & \Add0~13_sumout\)) # (\Mux12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111010101110101011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~1_combout\,
	datab => \ALT_INV_Mux13~0_combout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Mux12~0_combout\,
	datae => \ALT_INV_Mux12~1_combout\,
	dataf => \ALT_INV_Mux12~2_combout\,
	combout => \Mux12~3_combout\);

\EntradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(4),
	o => \EntradaB[4]~input_o\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \EntradaB[4]~input_o\ ) + ( \EntradaA[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \EntradaB[4]~input_o\ ) + ( \EntradaA[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[4]~input_o\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\EntradaA[4]~input_o\ $ (\EntradaB[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\EntradaA[4]~input_o\ $ (\EntradaB[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((\EntradaA[4]~input_o\ & !\EntradaB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[4]~input_o\,
	datad => \ALT_INV_EntradaB[4]~input_o\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Add1~17_sumout\ & ( (!\Controle_ULA[1]~input_o\ & ((!\Mux8~0_combout\) # (\Controle_ULA[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000011000000000000000000001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_Add1~17_sumout\,
	combout => \Mux11~0_combout\);

\EntradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(5),
	o => \EntradaA[5]~input_o\);

\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\EntradaA[5]~input_o\ ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !\EntradaA[5]~input_o\ ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\EntradaB[0]~input_o\ & (!\Controle_ULA[0]~input_o\ & (\Controle_ULA[1]~input_o\ & \Add2~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Add2~17_sumout\,
	combout => \Mux11~1_combout\);

\Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \EntradaB[4]~input_o\ & ( (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & (\Mux8~0_combout\))) # (\Controle_ULA[0]~input_o\ & (\Controle_ULA[1]~input_o\ & ((\EntradaA[4]~input_o\)))) ) ) # ( !\EntradaB[4]~input_o\ & ( 
-- (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & (\Mux8~0_combout\ & \EntradaA[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010000001100100000000000010000000100000011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[1]~input_o\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_EntradaA[4]~input_o\,
	datae => \ALT_INV_EntradaB[4]~input_o\,
	combout => \Mux11~2_combout\);

\Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \Mux11~1_combout\ & ( \Mux11~2_combout\ & ( ((\Mux13~0_combout\ & \Add0~17_sumout\)) # (\Mux15~1_combout\) ) ) ) # ( !\Mux11~1_combout\ & ( \Mux11~2_combout\ & ( ((\Mux13~0_combout\ & \Add0~17_sumout\)) # (\Mux15~1_combout\) ) ) ) # 
-- ( \Mux11~1_combout\ & ( !\Mux11~2_combout\ & ( ((\Mux13~0_combout\ & \Add0~17_sumout\)) # (\Mux15~1_combout\) ) ) ) # ( !\Mux11~1_combout\ & ( !\Mux11~2_combout\ & ( (!\Mux15~1_combout\ & (\Mux13~0_combout\ & (\Add0~17_sumout\))) # (\Mux15~1_combout\ & 
-- (((\Mux13~0_combout\ & \Add0~17_sumout\)) # (\Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111010101110101011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~1_combout\,
	datab => \ALT_INV_Mux13~0_combout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Mux11~0_combout\,
	datae => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_Mux11~2_combout\,
	combout => \Mux11~3_combout\);

\EntradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(5),
	o => \EntradaB[5]~input_o\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \EntradaB[5]~input_o\ ) + ( \EntradaA[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \EntradaB[5]~input_o\ ) + ( \EntradaA[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[5]~input_o\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\EntradaA[5]~input_o\ $ (\EntradaB[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\EntradaA[5]~input_o\ $ (\EntradaB[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((\EntradaA[5]~input_o\ & !\EntradaB[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[5]~input_o\,
	datad => \ALT_INV_EntradaB[5]~input_o\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

\EntradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(6),
	o => \EntradaA[6]~input_o\);

\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !\EntradaA[6]~input_o\ ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !\EntradaA[6]~input_o\ ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\Controle_ULA[0]~input_o\ & ((!\Controle_ULA[1]~input_o\ & (\Add1~21_sumout\)) # (\Controle_ULA[1]~input_o\ & ((\Add2~21_sumout\))))) # (\Controle_ULA[0]~input_o\ & (((\Add1~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[1]~input_o\,
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_Add2~21_sumout\,
	combout => \Mux10~0_combout\);

\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \EntradaA[5]~input_o\ & ( \EntradaB[5]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (!\Mux15~0_combout\ & \Mux15~5_combout\)) # (\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\)))) ) ) ) # ( !\EntradaA[5]~input_o\ & 
-- ( \EntradaB[5]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\ & \Mux8~0_combout\)) ) ) ) # ( \EntradaA[5]~input_o\ & ( !\EntradaB[5]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\ & \Mux8~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000001000000010000000100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_Mux15~5_combout\,
	datae => \ALT_INV_EntradaA[5]~input_o\,
	dataf => \ALT_INV_EntradaB[5]~input_o\,
	combout => \Mux10~1_combout\);

\Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \Mux10~1_combout\ ) # ( !\Mux10~1_combout\ & ( (!\Mux13~0_combout\ & (\Mux13~2_combout\ & ((\Mux10~0_combout\)))) # (\Mux13~0_combout\ & (((\Mux13~2_combout\ & \Mux10~0_combout\)) # (\Add0~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~0_combout\,
	datab => \ALT_INV_Mux13~2_combout\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_Mux10~0_combout\,
	datae => \ALT_INV_Mux10~1_combout\,
	combout => \Mux10~2_combout\);

\EntradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(6),
	o => \EntradaB[6]~input_o\);

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \EntradaB[6]~input_o\ ) + ( \EntradaA[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \EntradaB[6]~input_o\ ) + ( \EntradaA[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[6]~input_o\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\EntradaA[6]~input_o\ $ (\EntradaB[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\EntradaA[6]~input_o\ $ (\EntradaB[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((\EntradaA[6]~input_o\ & !\EntradaB[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[6]~input_o\,
	datad => \ALT_INV_EntradaB[6]~input_o\,
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

\EntradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(7),
	o => \EntradaA[7]~input_o\);

\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !\EntradaA[7]~input_o\ ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\);

\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\Controle_ULA[0]~input_o\ & ((!\Controle_ULA[1]~input_o\ & (\Add1~25_sumout\)) # (\Controle_ULA[1]~input_o\ & ((\Add2~25_sumout\))))) # (\Controle_ULA[0]~input_o\ & (((\Add1~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_Controle_ULA[1]~input_o\,
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_Add2~25_sumout\,
	combout => \Mux9~0_combout\);

\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \EntradaA[6]~input_o\ & ( \EntradaB[6]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (!\Mux15~0_combout\ & \Mux15~5_combout\)) # (\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\)))) ) ) ) # ( !\EntradaA[6]~input_o\ & 
-- ( \EntradaB[6]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\ & \Mux8~0_combout\)) ) ) ) # ( \EntradaA[6]~input_o\ & ( !\EntradaB[6]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (\Mux15~0_combout\ & \Mux8~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000001000000010000000100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_Mux15~5_combout\,
	datae => \ALT_INV_EntradaA[6]~input_o\,
	dataf => \ALT_INV_EntradaB[6]~input_o\,
	combout => \Mux9~1_combout\);

\Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \Mux9~1_combout\ ) # ( !\Mux9~1_combout\ & ( (!\Mux13~0_combout\ & (\Mux13~2_combout\ & ((\Mux9~0_combout\)))) # (\Mux13~0_combout\ & (((\Mux13~2_combout\ & \Mux9~0_combout\)) # (\Add0~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~0_combout\,
	datab => \ALT_INV_Mux13~2_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_Mux9~0_combout\,
	datae => \ALT_INV_Mux9~1_combout\,
	combout => \Mux9~2_combout\);

\EntradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(7),
	o => \EntradaB[7]~input_o\);

\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\EntradaA[7]~input_o\ $ (\EntradaB[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\EntradaA[7]~input_o\ $ (\EntradaB[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((\EntradaA[7]~input_o\ & !\EntradaB[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[7]~input_o\,
	datad => \ALT_INV_EntradaB[7]~input_o\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	combout => \Mux8~1_combout\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \EntradaB[7]~input_o\ ) + ( \EntradaA[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \EntradaB[7]~input_o\ ) + ( \EntradaA[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[7]~input_o\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	combout => \Mux8~2_combout\);

\Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( \EntradaA[7]~input_o\ & ( \EntradaB[7]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & 
-- !\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\EntradaA[7]~input_o\ & ( \EntradaB[7]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) ) # ( \EntradaA[7]~input_o\ & ( 
-- !\EntradaB[7]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000010000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_EntradaA[7]~input_o\,
	dataf => \ALT_INV_EntradaB[7]~input_o\,
	combout => \Mux8~3_combout\);

\Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = ( \Mux8~3_combout\ ) # ( !\Mux8~3_combout\ & ( (!\Add1~29_sumout\ & (((\Add0~29_sumout\ & \Mux8~2_combout\)))) # (\Add1~29_sumout\ & (((\Add0~29_sumout\ & \Mux8~2_combout\)) # (\Mux8~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111100010001000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~29_sumout\,
	datab => \ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Mux8~2_combout\,
	datae => \ALT_INV_Mux8~3_combout\,
	combout => \Mux8~4_combout\);

\EntradaA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(8),
	o => \EntradaA[8]~input_o\);

\EntradaB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(8),
	o => \EntradaB[8]~input_o\);

\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\EntradaA[8]~input_o\ $ (\EntradaB[8]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\EntradaA[8]~input_o\ $ (\EntradaB[8]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((\EntradaA[8]~input_o\ & !\EntradaB[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[8]~input_o\,
	datad => \ALT_INV_EntradaB[8]~input_o\,
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \EntradaB[8]~input_o\ ) + ( \EntradaA[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \EntradaB[8]~input_o\ ) + ( \EntradaA[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[8]~input_o\,
	dataf => \ALT_INV_EntradaA[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \EntradaA[8]~input_o\ & ( \EntradaB[8]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & 
-- !\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\EntradaA[8]~input_o\ & ( \EntradaB[8]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) ) # ( \EntradaA[8]~input_o\ & ( 
-- !\EntradaB[8]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000010000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_EntradaA[8]~input_o\,
	dataf => \ALT_INV_EntradaB[8]~input_o\,
	combout => \Mux7~0_combout\);

\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Mux7~0_combout\ ) # ( !\Mux7~0_combout\ & ( (!\Mux8~1_combout\ & (\Mux8~2_combout\ & ((\Add0~33_sumout\)))) # (\Mux8~1_combout\ & (((\Mux8~2_combout\ & \Add0~33_sumout\)) # (\Add1~33_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux8~2_combout\,
	datac => \ALT_INV_Add1~33_sumout\,
	datad => \ALT_INV_Add0~33_sumout\,
	datae => \ALT_INV_Mux7~0_combout\,
	combout => \Mux7~1_combout\);

\EntradaA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(9),
	o => \EntradaA[9]~input_o\);

\EntradaB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(9),
	o => \EntradaB[9]~input_o\);

\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\EntradaA[9]~input_o\ $ (\EntradaB[9]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\EntradaA[9]~input_o\ $ (\EntradaB[9]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((\EntradaA[9]~input_o\ & !\EntradaB[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[9]~input_o\,
	datad => \ALT_INV_EntradaB[9]~input_o\,
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \EntradaB[9]~input_o\ ) + ( \EntradaA[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \EntradaB[9]~input_o\ ) + ( \EntradaA[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[9]~input_o\,
	dataf => \ALT_INV_EntradaA[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \EntradaA[9]~input_o\ & ( \EntradaB[9]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & 
-- !\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\EntradaA[9]~input_o\ & ( \EntradaB[9]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) ) # ( \EntradaA[9]~input_o\ & ( 
-- !\EntradaB[9]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000010000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_EntradaA[9]~input_o\,
	dataf => \ALT_INV_EntradaB[9]~input_o\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \Mux6~0_combout\ ) # ( !\Mux6~0_combout\ & ( (!\Mux8~1_combout\ & (\Mux8~2_combout\ & ((\Add0~37_sumout\)))) # (\Mux8~1_combout\ & (((\Mux8~2_combout\ & \Add0~37_sumout\)) # (\Add1~37_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux8~2_combout\,
	datac => \ALT_INV_Add1~37_sumout\,
	datad => \ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_Mux6~0_combout\,
	combout => \Mux6~1_combout\);

\EntradaA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(10),
	o => \EntradaA[10]~input_o\);

\EntradaB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(10),
	o => \EntradaB[10]~input_o\);

\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\EntradaA[10]~input_o\ $ (\EntradaB[10]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !\EntradaA[10]~input_o\ $ (\EntradaB[10]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~43\ = SHARE((\EntradaA[10]~input_o\ & !\EntradaB[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[10]~input_o\,
	datad => \ALT_INV_EntradaB[10]~input_o\,
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\,
	shareout => \Add1~43\);

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \EntradaB[10]~input_o\ ) + ( \EntradaA[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \EntradaB[10]~input_o\ ) + ( \EntradaA[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[10]~input_o\,
	dataf => \ALT_INV_EntradaA[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \EntradaA[10]~input_o\ & ( \EntradaB[10]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & 
-- !\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\EntradaA[10]~input_o\ & ( \EntradaB[10]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) ) # ( \EntradaA[10]~input_o\ & ( 
-- !\EntradaB[10]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000010000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_EntradaA[10]~input_o\,
	dataf => \ALT_INV_EntradaB[10]~input_o\,
	combout => \Mux5~0_combout\);

\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Mux5~0_combout\ ) # ( !\Mux5~0_combout\ & ( (!\Mux8~1_combout\ & (\Mux8~2_combout\ & ((\Add0~41_sumout\)))) # (\Mux8~1_combout\ & (((\Mux8~2_combout\ & \Add0~41_sumout\)) # (\Add1~41_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux8~2_combout\,
	datac => \ALT_INV_Add1~41_sumout\,
	datad => \ALT_INV_Add0~41_sumout\,
	datae => \ALT_INV_Mux5~0_combout\,
	combout => \Mux5~1_combout\);

\EntradaA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(11),
	o => \EntradaA[11]~input_o\);

\EntradaB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(11),
	o => \EntradaB[11]~input_o\);

\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\EntradaA[11]~input_o\ $ (\EntradaB[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\EntradaA[11]~input_o\ $ (\EntradaB[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~47\ = SHARE((\EntradaA[11]~input_o\ & !\EntradaB[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[11]~input_o\,
	datad => \ALT_INV_EntradaB[11]~input_o\,
	cin => \Add1~42\,
	sharein => \Add1~43\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\,
	shareout => \Add1~47\);

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \EntradaB[11]~input_o\ ) + ( \EntradaA[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \EntradaB[11]~input_o\ ) + ( \EntradaA[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[11]~input_o\,
	dataf => \ALT_INV_EntradaA[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \EntradaA[11]~input_o\ & ( \EntradaB[11]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & 
-- !\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\EntradaA[11]~input_o\ & ( \EntradaB[11]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) ) # ( \EntradaA[11]~input_o\ & ( 
-- !\EntradaB[11]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000010000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_EntradaA[11]~input_o\,
	dataf => \ALT_INV_EntradaB[11]~input_o\,
	combout => \Mux4~0_combout\);

\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Mux4~0_combout\ ) # ( !\Mux4~0_combout\ & ( (!\Mux8~1_combout\ & (\Mux8~2_combout\ & ((\Add0~45_sumout\)))) # (\Mux8~1_combout\ & (((\Mux8~2_combout\ & \Add0~45_sumout\)) # (\Add1~45_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux8~2_combout\,
	datac => \ALT_INV_Add1~45_sumout\,
	datad => \ALT_INV_Add0~45_sumout\,
	datae => \ALT_INV_Mux4~0_combout\,
	combout => \Mux4~1_combout\);

\EntradaA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(12),
	o => \EntradaA[12]~input_o\);

\EntradaB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(12),
	o => \EntradaB[12]~input_o\);

\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !\EntradaA[12]~input_o\ $ (\EntradaB[12]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !\EntradaA[12]~input_o\ $ (\EntradaB[12]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~51\ = SHARE((\EntradaA[12]~input_o\ & !\EntradaB[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[12]~input_o\,
	datad => \ALT_INV_EntradaB[12]~input_o\,
	cin => \Add1~46\,
	sharein => \Add1~47\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\,
	shareout => \Add1~51\);

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \EntradaB[12]~input_o\ ) + ( \EntradaA[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \EntradaB[12]~input_o\ ) + ( \EntradaA[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[12]~input_o\,
	dataf => \ALT_INV_EntradaA[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \EntradaA[12]~input_o\ & ( \EntradaB[12]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & 
-- !\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\EntradaA[12]~input_o\ & ( \EntradaB[12]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) ) # ( \EntradaA[12]~input_o\ & ( 
-- !\EntradaB[12]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000010000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_EntradaA[12]~input_o\,
	dataf => \ALT_INV_EntradaB[12]~input_o\,
	combout => \Mux3~0_combout\);

\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Mux3~0_combout\ ) # ( !\Mux3~0_combout\ & ( (!\Mux8~1_combout\ & (\Mux8~2_combout\ & ((\Add0~49_sumout\)))) # (\Mux8~1_combout\ & (((\Mux8~2_combout\ & \Add0~49_sumout\)) # (\Add1~49_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux8~2_combout\,
	datac => \ALT_INV_Add1~49_sumout\,
	datad => \ALT_INV_Add0~49_sumout\,
	datae => \ALT_INV_Mux3~0_combout\,
	combout => \Mux3~1_combout\);

\EntradaA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(13),
	o => \EntradaA[13]~input_o\);

\EntradaB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(13),
	o => \EntradaB[13]~input_o\);

\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !\EntradaA[13]~input_o\ $ (\EntradaB[13]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !\EntradaA[13]~input_o\ $ (\EntradaB[13]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~55\ = SHARE((\EntradaA[13]~input_o\ & !\EntradaB[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[13]~input_o\,
	datad => \ALT_INV_EntradaB[13]~input_o\,
	cin => \Add1~50\,
	sharein => \Add1~51\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\,
	shareout => \Add1~55\);

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \EntradaB[13]~input_o\ ) + ( \EntradaA[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \EntradaB[13]~input_o\ ) + ( \EntradaA[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[13]~input_o\,
	dataf => \ALT_INV_EntradaA[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \EntradaA[13]~input_o\ & ( \EntradaB[13]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & 
-- !\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\EntradaA[13]~input_o\ & ( \EntradaB[13]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) ) # ( \EntradaA[13]~input_o\ & ( 
-- !\EntradaB[13]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000010000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_EntradaA[13]~input_o\,
	dataf => \ALT_INV_EntradaB[13]~input_o\,
	combout => \Mux2~0_combout\);

\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Mux2~0_combout\ ) # ( !\Mux2~0_combout\ & ( (!\Mux8~1_combout\ & (\Mux8~2_combout\ & ((\Add0~53_sumout\)))) # (\Mux8~1_combout\ & (((\Mux8~2_combout\ & \Add0~53_sumout\)) # (\Add1~53_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux8~2_combout\,
	datac => \ALT_INV_Add1~53_sumout\,
	datad => \ALT_INV_Add0~53_sumout\,
	datae => \ALT_INV_Mux2~0_combout\,
	combout => \Mux2~1_combout\);

\EntradaA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(14),
	o => \EntradaA[14]~input_o\);

\EntradaB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(14),
	o => \EntradaB[14]~input_o\);

\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !\EntradaA[14]~input_o\ $ (\EntradaB[14]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( !\EntradaA[14]~input_o\ $ (\EntradaB[14]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~59\ = SHARE((\EntradaA[14]~input_o\ & !\EntradaB[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[14]~input_o\,
	datad => \ALT_INV_EntradaB[14]~input_o\,
	cin => \Add1~54\,
	sharein => \Add1~55\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\,
	shareout => \Add1~59\);

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \EntradaB[14]~input_o\ ) + ( \EntradaA[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \EntradaB[14]~input_o\ ) + ( \EntradaA[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[14]~input_o\,
	dataf => \ALT_INV_EntradaA[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \EntradaA[14]~input_o\ & ( \EntradaB[14]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & 
-- !\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\EntradaA[14]~input_o\ & ( \EntradaB[14]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) ) # ( \EntradaA[14]~input_o\ & ( 
-- !\EntradaB[14]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000010000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_EntradaA[14]~input_o\,
	dataf => \ALT_INV_EntradaB[14]~input_o\,
	combout => \Mux1~0_combout\);

\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \Mux1~0_combout\ ) # ( !\Mux1~0_combout\ & ( (!\Mux8~1_combout\ & (\Mux8~2_combout\ & ((\Add0~57_sumout\)))) # (\Mux8~1_combout\ & (((\Mux8~2_combout\ & \Add0~57_sumout\)) # (\Add1~57_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux8~2_combout\,
	datac => \ALT_INV_Add1~57_sumout\,
	datad => \ALT_INV_Add0~57_sumout\,
	datae => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~1_combout\);

\EntradaA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(15),
	o => \EntradaA[15]~input_o\);

\EntradaB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(15),
	o => \EntradaB[15]~input_o\);

\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( !\EntradaA[15]~input_o\ $ (\EntradaB[15]~input_o\) ) + ( \Add1~59\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EntradaA[15]~input_o\,
	datad => \ALT_INV_EntradaB[15]~input_o\,
	cin => \Add1~58\,
	sharein => \Add1~59\,
	sumout => \Add1~61_sumout\);

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \EntradaB[15]~input_o\ ) + ( \EntradaA[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaB[15]~input_o\,
	dataf => \ALT_INV_EntradaA[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \EntradaA[15]~input_o\ & ( \EntradaB[15]~input_o\ & ( (\Mux8~0_combout\ & ((!\Controle_ULA[2]~input_o\ & (\Controle_ULA[0]~input_o\ & \Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & 
-- !\Controle_ULA[1]~input_o\)))) ) ) ) # ( !\EntradaA[15]~input_o\ & ( \EntradaB[15]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) ) # ( \EntradaA[15]~input_o\ & ( 
-- !\EntradaB[15]~input_o\ & ( (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000010000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_EntradaA[15]~input_o\,
	dataf => \ALT_INV_EntradaB[15]~input_o\,
	combout => \Mux0~0_combout\);

\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \Mux0~0_combout\ ) # ( !\Mux0~0_combout\ & ( (!\Mux8~1_combout\ & (\Mux8~2_combout\ & ((\Add0~61_sumout\)))) # (\Mux8~1_combout\ & (((\Mux8~2_combout\ & \Add0~61_sumout\)) # (\Add1~61_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux8~2_combout\,
	datac => \ALT_INV_Add1~61_sumout\,
	datad => \ALT_INV_Add0~61_sumout\,
	datae => \ALT_INV_Mux0~0_combout\,
	combout => \Mux0~1_combout\);

\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Add1~1_sumout\ & (!\Add1~5_sumout\ & (!\Add1~9_sumout\ & !\Add1~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~13_sumout\,
	combout => \Equal1~0_combout\);

\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\Add1~53_sumout\ & ( \Equal1~0_combout\ & ( (!\Add1~17_sumout\ & (!\Add1~21_sumout\ & (!\Add1~45_sumout\ & !\Add1~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~17_sumout\,
	datab => \ALT_INV_Add1~21_sumout\,
	datac => \ALT_INV_Add1~45_sumout\,
	datad => \ALT_INV_Add1~49_sumout\,
	datae => \ALT_INV_Add1~53_sumout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~1_combout\);

\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\Add1~41_sumout\ & ( (!\Add1~25_sumout\ & (!\Add1~29_sumout\ & (!\Add1~33_sumout\ & !\Add1~37_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~25_sumout\,
	datab => \ALT_INV_Add1~29_sumout\,
	datac => \ALT_INV_Add1~33_sumout\,
	datad => \ALT_INV_Add1~37_sumout\,
	datae => \ALT_INV_Add1~41_sumout\,
	combout => \Equal1~2_combout\);

\ZeroULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZeroULA~0_combout\ = (\Controle_ULA[5]~input_o\ & (!\Controle_ULA[3]~input_o\ & (!\Controle_ULA[4]~input_o\ & !\Controle_ULA[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[5]~input_o\,
	datab => \ALT_INV_Controle_ULA[3]~input_o\,
	datac => \ALT_INV_Controle_ULA[4]~input_o\,
	datad => \ALT_INV_Controle_ULA[6]~input_o\,
	combout => \ZeroULA~0_combout\);

\ZeroULA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZeroULA~1_combout\ = (!\Controle_ULA[5]~input_o\ & (\Controle_ULA[3]~input_o\ & (\Controle_ULA[4]~input_o\ & !\Controle_ULA[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[5]~input_o\,
	datab => \ALT_INV_Controle_ULA[3]~input_o\,
	datac => \ALT_INV_Controle_ULA[4]~input_o\,
	datad => \ALT_INV_Controle_ULA[6]~input_o\,
	combout => \ZeroULA~1_combout\);

\ZeroULA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZeroULA~2_combout\ = ( \ZeroULA~0_combout\ & ( \ZeroULA~1_combout\ ) ) # ( !\ZeroULA~0_combout\ & ( \ZeroULA~1_combout\ & ( (!\Add1~57_sumout\ & (!\Add1~61_sumout\ & (\Equal1~1_combout\ & \Equal1~2_combout\))) ) ) ) # ( \ZeroULA~0_combout\ & ( 
-- !\ZeroULA~1_combout\ & ( (((!\Equal1~1_combout\) # (!\Equal1~2_combout\)) # (\Add1~61_sumout\)) # (\Add1~57_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~57_sumout\,
	datab => \ALT_INV_Add1~61_sumout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_ZeroULA~0_combout\,
	dataf => \ALT_INV_ZeroULA~1_combout\,
	combout => \ZeroULA~2_combout\);

ww_Saida_to_Dados(0) <= \Saida_to_Dados[0]~output_o\;

ww_Saida_to_Dados(1) <= \Saida_to_Dados[1]~output_o\;

ww_Saida_to_Dados(2) <= \Saida_to_Dados[2]~output_o\;

ww_Saida_to_Dados(3) <= \Saida_to_Dados[3]~output_o\;

ww_Saida_to_Dados(4) <= \Saida_to_Dados[4]~output_o\;

ww_Saida_to_Dados(5) <= \Saida_to_Dados[5]~output_o\;

ww_Saida_to_Dados(6) <= \Saida_to_Dados[6]~output_o\;

ww_Saida_to_Dados(7) <= \Saida_to_Dados[7]~output_o\;

ww_Saida_to_Dados(8) <= \Saida_to_Dados[8]~output_o\;

ww_Saida_to_Dados(9) <= \Saida_to_Dados[9]~output_o\;

ww_Saida_to_Dados(10) <= \Saida_to_Dados[10]~output_o\;

ww_Saida_to_Dados(11) <= \Saida_to_Dados[11]~output_o\;

ww_Saida_to_Dados(12) <= \Saida_to_Dados[12]~output_o\;

ww_Saida_to_Dados(13) <= \Saida_to_Dados[13]~output_o\;

ww_Saida_to_Dados(14) <= \Saida_to_Dados[14]~output_o\;

ww_Saida_to_Dados(15) <= \Saida_to_Dados[15]~output_o\;

ww_Saida_to_Mux(0) <= \Saida_to_Mux[0]~output_o\;

ww_Saida_to_Mux(1) <= \Saida_to_Mux[1]~output_o\;

ww_Saida_to_Mux(2) <= \Saida_to_Mux[2]~output_o\;

ww_Saida_to_Mux(3) <= \Saida_to_Mux[3]~output_o\;

ww_Saida_to_Mux(4) <= \Saida_to_Mux[4]~output_o\;

ww_Saida_to_Mux(5) <= \Saida_to_Mux[5]~output_o\;

ww_Saida_to_Mux(6) <= \Saida_to_Mux[6]~output_o\;

ww_Saida_to_Mux(7) <= \Saida_to_Mux[7]~output_o\;

ww_Saida_to_Mux(8) <= \Saida_to_Mux[8]~output_o\;

ww_Saida_to_Mux(9) <= \Saida_to_Mux[9]~output_o\;

ww_Saida_to_Mux(10) <= \Saida_to_Mux[10]~output_o\;

ww_Saida_to_Mux(11) <= \Saida_to_Mux[11]~output_o\;

ww_Saida_to_Mux(12) <= \Saida_to_Mux[12]~output_o\;

ww_Saida_to_Mux(13) <= \Saida_to_Mux[13]~output_o\;

ww_Saida_to_Mux(14) <= \Saida_to_Mux[14]~output_o\;

ww_Saida_to_Mux(15) <= \Saida_to_Mux[15]~output_o\;

ww_ZeroULA <= \ZeroULA~output_o\;
END structure;


