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

-- DATE "11/30/2018 21:27:39"

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
SIGNAL \Controle_ULA[2]~input_o\ : std_logic;
SIGNAL \EntradaB[0]~input_o\ : std_logic;
SIGNAL \EntradaA[0]~input_o\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Controle_ULA[0]~input_o\ : std_logic;
SIGNAL \Controle_ULA[1]~input_o\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Controle_ULA[5]~input_o\ : std_logic;
SIGNAL \Controle_ULA[6]~input_o\ : std_logic;
SIGNAL \Controle_ULA[3]~input_o\ : std_logic;
SIGNAL \Controle_ULA[4]~input_o\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \EntradaB[1]~input_o\ : std_logic;
SIGNAL \EntradaA[1]~input_o\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add4~34_cout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Prod~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \EntradaB[2]~input_o\ : std_logic;
SIGNAL \EntradaA[2]~input_o\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Prod~1_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add6~34_cout\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Prod~79_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \EntradaB[3]~input_o\ : std_logic;
SIGNAL \EntradaA[3]~input_o\ : std_logic;
SIGNAL \Booth~0_combout\ : std_logic;
SIGNAL \Booth~2_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Prod~2_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \Prod~3_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add8~34_cout\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Prod~75_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \EntradaB[4]~input_o\ : std_logic;
SIGNAL \EntradaA[4]~input_o\ : std_logic;
SIGNAL \Booth~1_combout\ : std_logic;
SIGNAL \Booth~4_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Prod~4_combout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \Prod~5_combout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \Prod~6_combout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add10~34_cout\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \Prod~71_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \EntradaB[5]~input_o\ : std_logic;
SIGNAL \EntradaA[5]~input_o\ : std_logic;
SIGNAL \Booth~3_combout\ : std_logic;
SIGNAL \Booth~6_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Prod~7_combout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Prod~8_combout\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Prod~9_combout\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \Prod~10_combout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \Add12~34_cout\ : std_logic;
SIGNAL \Add12~1_sumout\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \Prod~67_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \EntradaB[6]~input_o\ : std_logic;
SIGNAL \EntradaA[6]~input_o\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Prod~11_combout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Prod~12_combout\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \Prod~13_combout\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \Prod~14_combout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \Booth~5_combout\ : std_logic;
SIGNAL \Booth~8_combout\ : std_logic;
SIGNAL \Add12~2\ : std_logic;
SIGNAL \Add12~5_sumout\ : std_logic;
SIGNAL \Prod~49_combout\ : std_logic;
SIGNAL \Add14~34_cout\ : std_logic;
SIGNAL \Add14~1_sumout\ : std_logic;
SIGNAL \Prod~15_combout\ : std_logic;
SIGNAL \Add13~1_sumout\ : std_logic;
SIGNAL \Prod~63_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \EntradaB[7]~input_o\ : std_logic;
SIGNAL \EntradaA[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Prod~17_combout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \Prod~18_combout\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Prod~19_combout\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \Prod~20_combout\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \Add12~6\ : std_logic;
SIGNAL \Add12~9_sumout\ : std_logic;
SIGNAL \Prod~51_combout\ : std_logic;
SIGNAL \Add13~2\ : std_logic;
SIGNAL \Add13~5_sumout\ : std_logic;
SIGNAL \Booth~9_combout\ : std_logic;
SIGNAL \Add14~2\ : std_logic;
SIGNAL \Add14~5_sumout\ : std_logic;
SIGNAL \Booth~7_combout\ : std_logic;
SIGNAL \Prod~16_combout\ : std_logic;
SIGNAL \Prod~21_combout\ : std_logic;
SIGNAL \Prod~50_combout\ : std_logic;
SIGNAL \Add16~34_cout\ : std_logic;
SIGNAL \Add16~1_sumout\ : std_logic;
SIGNAL \Prod~22_combout\ : std_logic;
SIGNAL \Add15~1_sumout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \EntradaB[8]~input_o\ : std_logic;
SIGNAL \EntradaA[8]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Splitter~0_combout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Prod~24_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Prod~25_combout\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \Prod~26_combout\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \Prod~27_combout\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \Add12~10\ : std_logic;
SIGNAL \Add12~13_sumout\ : std_logic;
SIGNAL \Prod~53_combout\ : std_logic;
SIGNAL \Add13~6\ : std_logic;
SIGNAL \Add13~9_sumout\ : std_logic;
SIGNAL \Add14~6\ : std_logic;
SIGNAL \Add14~9_sumout\ : std_logic;
SIGNAL \Prod~23_combout\ : std_logic;
SIGNAL \Prod~28_combout\ : std_logic;
SIGNAL \Prod~52_combout\ : std_logic;
SIGNAL \Add15~2\ : std_logic;
SIGNAL \Add15~5_sumout\ : std_logic;
SIGNAL \Prod~29_combout\ : std_logic;
SIGNAL \Add16~2\ : std_logic;
SIGNAL \Add16~5_sumout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \EntradaB[9]~input_o\ : std_logic;
SIGNAL \EntradaA[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Splitter~1_combout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \Prod~31_combout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \Prod~32_combout\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \Prod~33_combout\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \Add12~14\ : std_logic;
SIGNAL \Add12~17_sumout\ : std_logic;
SIGNAL \Prod~55_combout\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~13_sumout\ : std_logic;
SIGNAL \Add14~10\ : std_logic;
SIGNAL \Add14~13_sumout\ : std_logic;
SIGNAL \Prod~30_combout\ : std_logic;
SIGNAL \Prod~34_combout\ : std_logic;
SIGNAL \Prod~54_combout\ : std_logic;
SIGNAL \Add15~6\ : std_logic;
SIGNAL \Add15~9_sumout\ : std_logic;
SIGNAL \Prod~35_combout\ : std_logic;
SIGNAL \Add16~6\ : std_logic;
SIGNAL \Add16~9_sumout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \EntradaB[10]~input_o\ : std_logic;
SIGNAL \EntradaA[10]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Splitter~2_combout\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \Prod~37_combout\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \Prod~38_combout\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \Add12~18\ : std_logic;
SIGNAL \Add12~21_sumout\ : std_logic;
SIGNAL \Prod~57_combout\ : std_logic;
SIGNAL \Add13~14\ : std_logic;
SIGNAL \Add13~17_sumout\ : std_logic;
SIGNAL \Add14~14\ : std_logic;
SIGNAL \Add14~17_sumout\ : std_logic;
SIGNAL \Prod~36_combout\ : std_logic;
SIGNAL \Prod~39_combout\ : std_logic;
SIGNAL \Prod~56_combout\ : std_logic;
SIGNAL \Add15~10\ : std_logic;
SIGNAL \Add15~13_sumout\ : std_logic;
SIGNAL \Prod~40_combout\ : std_logic;
SIGNAL \Add16~10\ : std_logic;
SIGNAL \Add16~13_sumout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \EntradaB[11]~input_o\ : std_logic;
SIGNAL \EntradaA[11]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Splitter~3_combout\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \Prod~42_combout\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \Add12~22\ : std_logic;
SIGNAL \Add12~25_sumout\ : std_logic;
SIGNAL \Prod~59_combout\ : std_logic;
SIGNAL \Add13~18\ : std_logic;
SIGNAL \Add13~21_sumout\ : std_logic;
SIGNAL \Add14~18\ : std_logic;
SIGNAL \Add14~21_sumout\ : std_logic;
SIGNAL \Prod~41_combout\ : std_logic;
SIGNAL \Prod~43_combout\ : std_logic;
SIGNAL \Prod~58_combout\ : std_logic;
SIGNAL \Add15~14\ : std_logic;
SIGNAL \Add15~17_sumout\ : std_logic;
SIGNAL \Prod~44_combout\ : std_logic;
SIGNAL \Add16~14\ : std_logic;
SIGNAL \Add16~17_sumout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \EntradaB[12]~input_o\ : std_logic;
SIGNAL \EntradaA[12]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Splitter~4_combout\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \Add12~26\ : std_logic;
SIGNAL \Add12~29_sumout\ : std_logic;
SIGNAL \Prod~61_combout\ : std_logic;
SIGNAL \Add13~22\ : std_logic;
SIGNAL \Add13~25_sumout\ : std_logic;
SIGNAL \Add14~22\ : std_logic;
SIGNAL \Add14~25_sumout\ : std_logic;
SIGNAL \Prod~45_combout\ : std_logic;
SIGNAL \Prod~46_combout\ : std_logic;
SIGNAL \Prod~60_combout\ : std_logic;
SIGNAL \Add15~18\ : std_logic;
SIGNAL \Add15~21_sumout\ : std_logic;
SIGNAL \Prod~47_combout\ : std_logic;
SIGNAL \Add16~18\ : std_logic;
SIGNAL \Add16~21_sumout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \EntradaB[13]~input_o\ : std_logic;
SIGNAL \EntradaA[13]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Splitter~5_combout\ : std_logic;
SIGNAL \Add13~26\ : std_logic;
SIGNAL \Add13~29_sumout\ : std_logic;
SIGNAL \Add14~26\ : std_logic;
SIGNAL \Add14~29_sumout\ : std_logic;
SIGNAL \Prod~62_combout\ : std_logic;
SIGNAL \Add15~22\ : std_logic;
SIGNAL \Add15~25_sumout\ : std_logic;
SIGNAL \Prod~48_combout\ : std_logic;
SIGNAL \Add16~22\ : std_logic;
SIGNAL \Add16~25_sumout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \EntradaA[14]~input_o\ : std_logic;
SIGNAL \EntradaB[14]~input_o\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Add16~26\ : std_logic;
SIGNAL \Add16~29_sumout\ : std_logic;
SIGNAL \Add15~26\ : std_logic;
SIGNAL \Add15~29_sumout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \EntradaA[15]~input_o\ : std_logic;
SIGNAL \EntradaB[15]~input_o\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \ZeroULA~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Booth~9_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~49_combout\ : std_logic;
SIGNAL \ALT_INV_Booth~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~48_combout\ : std_logic;
SIGNAL \ALT_INV_Splitter~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~47_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~46_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~45_combout\ : std_logic;
SIGNAL \ALT_INV_Splitter~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~44_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~43_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~42_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~41_combout\ : std_logic;
SIGNAL \ALT_INV_Splitter~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~40_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~39_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~38_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~37_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~36_combout\ : std_logic;
SIGNAL \ALT_INV_Splitter~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~35_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~34_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~33_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~32_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~31_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~30_combout\ : std_logic;
SIGNAL \ALT_INV_Splitter~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~29_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~28_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~27_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~26_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~25_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~24_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~23_combout\ : std_logic;
SIGNAL \ALT_INV_Splitter~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~22_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~21_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~20_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~19_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~18_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~17_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~15_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~14_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~13_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~12_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~11_combout\ : std_logic;
SIGNAL \ALT_INV_Booth~7_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~10_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~9_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~8_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~7_combout\ : std_logic;
SIGNAL \ALT_INV_Booth~6_combout\ : std_logic;
SIGNAL \ALT_INV_Booth~5_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~6_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~5_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~4_combout\ : std_logic;
SIGNAL \ALT_INV_Booth~4_combout\ : std_logic;
SIGNAL \ALT_INV_Booth~3_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~3_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~2_combout\ : std_logic;
SIGNAL \ALT_INV_Booth~2_combout\ : std_logic;
SIGNAL \ALT_INV_Booth~1_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~1_combout\ : std_logic;
SIGNAL \ALT_INV_Booth~0_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~79_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~75_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~71_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~67_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~63_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \ALT_INV_EntradaB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EntradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Controle_ULA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Prod~62_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~61_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~60_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~59_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~58_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~57_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~56_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~55_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~54_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~53_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~52_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~51_combout\ : std_logic;
SIGNAL \ALT_INV_Prod~50_combout\ : std_logic;

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
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add6~5_sumout\ <= NOT \Add6~5_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add8~1_sumout\ <= NOT \Add8~1_sumout\;
\ALT_INV_Add7~1_sumout\ <= NOT \Add7~1_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add6~1_sumout\ <= NOT \Add6~1_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add7~21_sumout\ <= NOT \Add7~21_sumout\;
\ALT_INV_Add9~17_sumout\ <= NOT \Add9~17_sumout\;
\ALT_INV_Add11~13_sumout\ <= NOT \Add11~13_sumout\;
\ALT_INV_Add14~9_sumout\ <= NOT \Add14~9_sumout\;
\ALT_INV_Add13~9_sumout\ <= NOT \Add13~9_sumout\;
\ALT_INV_Add15~5_sumout\ <= NOT \Add15~5_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add16~1_sumout\ <= NOT \Add16~1_sumout\;
\ALT_INV_Add12~9_sumout\ <= NOT \Add12~9_sumout\;
\ALT_INV_Add10~13_sumout\ <= NOT \Add10~13_sumout\;
\ALT_INV_Add8~17_sumout\ <= NOT \Add8~17_sumout\;
\ALT_INV_Add6~21_sumout\ <= NOT \Add6~21_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add7~17_sumout\ <= NOT \Add7~17_sumout\;
\ALT_INV_Add9~13_sumout\ <= NOT \Add9~13_sumout\;
\ALT_INV_Add11~9_sumout\ <= NOT \Add11~9_sumout\;
\ALT_INV_Add14~5_sumout\ <= NOT \Add14~5_sumout\;
\ALT_INV_Add13~5_sumout\ <= NOT \Add13~5_sumout\;
\ALT_INV_Add15~1_sumout\ <= NOT \Add15~1_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add12~5_sumout\ <= NOT \Add12~5_sumout\;
\ALT_INV_Add10~9_sumout\ <= NOT \Add10~9_sumout\;
\ALT_INV_Add8~13_sumout\ <= NOT \Add8~13_sumout\;
\ALT_INV_Add6~17_sumout\ <= NOT \Add6~17_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add7~13_sumout\ <= NOT \Add7~13_sumout\;
\ALT_INV_Add9~9_sumout\ <= NOT \Add9~9_sumout\;
\ALT_INV_Add11~5_sumout\ <= NOT \Add11~5_sumout\;
\ALT_INV_Add14~1_sumout\ <= NOT \Add14~1_sumout\;
\ALT_INV_Add13~1_sumout\ <= NOT \Add13~1_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add10~5_sumout\ <= NOT \Add10~5_sumout\;
\ALT_INV_Add8~9_sumout\ <= NOT \Add8~9_sumout\;
\ALT_INV_Add6~13_sumout\ <= NOT \Add6~13_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add7~9_sumout\ <= NOT \Add7~9_sumout\;
\ALT_INV_Add9~5_sumout\ <= NOT \Add9~5_sumout\;
\ALT_INV_Add12~1_sumout\ <= NOT \Add12~1_sumout\;
\ALT_INV_Add11~1_sumout\ <= NOT \Add11~1_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add8~5_sumout\ <= NOT \Add8~5_sumout\;
\ALT_INV_Add6~9_sumout\ <= NOT \Add6~9_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add7~5_sumout\ <= NOT \Add7~5_sumout\;
\ALT_INV_Add10~1_sumout\ <= NOT \Add10~1_sumout\;
\ALT_INV_Add9~1_sumout\ <= NOT \Add9~1_sumout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add16~29_sumout\ <= NOT \Add16~29_sumout\;
\ALT_INV_Add15~29_sumout\ <= NOT \Add15~29_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add16~25_sumout\ <= NOT \Add16~25_sumout\;
\ALT_INV_Add14~29_sumout\ <= NOT \Add14~29_sumout\;
\ALT_INV_Add13~29_sumout\ <= NOT \Add13~29_sumout\;
\ALT_INV_Add15~25_sumout\ <= NOT \Add15~25_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add16~21_sumout\ <= NOT \Add16~21_sumout\;
\ALT_INV_Add12~29_sumout\ <= NOT \Add12~29_sumout\;
\ALT_INV_Add11~29_sumout\ <= NOT \Add11~29_sumout\;
\ALT_INV_Add14~25_sumout\ <= NOT \Add14~25_sumout\;
\ALT_INV_Add13~25_sumout\ <= NOT \Add13~25_sumout\;
\ALT_INV_Add15~21_sumout\ <= NOT \Add15~21_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add16~17_sumout\ <= NOT \Add16~17_sumout\;
\ALT_INV_Add12~25_sumout\ <= NOT \Add12~25_sumout\;
\ALT_INV_Add10~29_sumout\ <= NOT \Add10~29_sumout\;
\ALT_INV_Add9~29_sumout\ <= NOT \Add9~29_sumout\;
\ALT_INV_Add11~25_sumout\ <= NOT \Add11~25_sumout\;
\ALT_INV_Add14~21_sumout\ <= NOT \Add14~21_sumout\;
\ALT_INV_Add13~21_sumout\ <= NOT \Add13~21_sumout\;
\ALT_INV_Add15~17_sumout\ <= NOT \Add15~17_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add16~13_sumout\ <= NOT \Add16~13_sumout\;
\ALT_INV_Add12~21_sumout\ <= NOT \Add12~21_sumout\;
\ALT_INV_Add10~25_sumout\ <= NOT \Add10~25_sumout\;
\ALT_INV_Add8~29_sumout\ <= NOT \Add8~29_sumout\;
\ALT_INV_Add7~29_sumout\ <= NOT \Add7~29_sumout\;
\ALT_INV_Add9~25_sumout\ <= NOT \Add9~25_sumout\;
\ALT_INV_Add11~21_sumout\ <= NOT \Add11~21_sumout\;
\ALT_INV_Add14~17_sumout\ <= NOT \Add14~17_sumout\;
\ALT_INV_Add13~17_sumout\ <= NOT \Add13~17_sumout\;
\ALT_INV_Add15~13_sumout\ <= NOT \Add15~13_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add16~9_sumout\ <= NOT \Add16~9_sumout\;
\ALT_INV_Add12~17_sumout\ <= NOT \Add12~17_sumout\;
\ALT_INV_Add10~21_sumout\ <= NOT \Add10~21_sumout\;
\ALT_INV_Add8~25_sumout\ <= NOT \Add8~25_sumout\;
\ALT_INV_Add6~29_sumout\ <= NOT \Add6~29_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add7~25_sumout\ <= NOT \Add7~25_sumout\;
\ALT_INV_Add9~21_sumout\ <= NOT \Add9~21_sumout\;
\ALT_INV_Add11~17_sumout\ <= NOT \Add11~17_sumout\;
\ALT_INV_Add14~13_sumout\ <= NOT \Add14~13_sumout\;
\ALT_INV_Add13~13_sumout\ <= NOT \Add13~13_sumout\;
\ALT_INV_Add15~9_sumout\ <= NOT \Add15~9_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add16~5_sumout\ <= NOT \Add16~5_sumout\;
\ALT_INV_Add12~13_sumout\ <= NOT \Add12~13_sumout\;
\ALT_INV_Add10~17_sumout\ <= NOT \Add10~17_sumout\;
\ALT_INV_Add8~21_sumout\ <= NOT \Add8~21_sumout\;
\ALT_INV_Add6~25_sumout\ <= NOT \Add6~25_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Booth~9_combout\ <= NOT \Booth~9_combout\;
\ALT_INV_Prod~49_combout\ <= NOT \Prod~49_combout\;
\ALT_INV_Booth~8_combout\ <= NOT \Booth~8_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Prod~48_combout\ <= NOT \Prod~48_combout\;
\ALT_INV_Splitter~5_combout\ <= NOT \Splitter~5_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Prod~47_combout\ <= NOT \Prod~47_combout\;
\ALT_INV_Prod~46_combout\ <= NOT \Prod~46_combout\;
\ALT_INV_Prod~45_combout\ <= NOT \Prod~45_combout\;
\ALT_INV_Splitter~4_combout\ <= NOT \Splitter~4_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Prod~44_combout\ <= NOT \Prod~44_combout\;
\ALT_INV_Prod~43_combout\ <= NOT \Prod~43_combout\;
\ALT_INV_Prod~42_combout\ <= NOT \Prod~42_combout\;
\ALT_INV_Prod~41_combout\ <= NOT \Prod~41_combout\;
\ALT_INV_Splitter~3_combout\ <= NOT \Splitter~3_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Prod~40_combout\ <= NOT \Prod~40_combout\;
\ALT_INV_Prod~39_combout\ <= NOT \Prod~39_combout\;
\ALT_INV_Prod~38_combout\ <= NOT \Prod~38_combout\;
\ALT_INV_Prod~37_combout\ <= NOT \Prod~37_combout\;
\ALT_INV_Prod~36_combout\ <= NOT \Prod~36_combout\;
\ALT_INV_Splitter~2_combout\ <= NOT \Splitter~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Prod~35_combout\ <= NOT \Prod~35_combout\;
\ALT_INV_Prod~34_combout\ <= NOT \Prod~34_combout\;
\ALT_INV_Prod~33_combout\ <= NOT \Prod~33_combout\;
\ALT_INV_Prod~32_combout\ <= NOT \Prod~32_combout\;
\ALT_INV_Prod~31_combout\ <= NOT \Prod~31_combout\;
\ALT_INV_Prod~30_combout\ <= NOT \Prod~30_combout\;
\ALT_INV_Splitter~1_combout\ <= NOT \Splitter~1_combout\;
\ALT_INV_Mux7~5_combout\ <= NOT \Mux7~5_combout\;
\ALT_INV_Mux7~4_combout\ <= NOT \Mux7~4_combout\;
\ALT_INV_Prod~29_combout\ <= NOT \Prod~29_combout\;
\ALT_INV_Prod~28_combout\ <= NOT \Prod~28_combout\;
\ALT_INV_Prod~27_combout\ <= NOT \Prod~27_combout\;
\ALT_INV_Prod~26_combout\ <= NOT \Prod~26_combout\;
\ALT_INV_Prod~25_combout\ <= NOT \Prod~25_combout\;
\ALT_INV_Prod~24_combout\ <= NOT \Prod~24_combout\;
\ALT_INV_Prod~23_combout\ <= NOT \Prod~23_combout\;
\ALT_INV_Splitter~0_combout\ <= NOT \Splitter~0_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Mux7~3_combout\ <= NOT \Mux7~3_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Prod~22_combout\ <= NOT \Prod~22_combout\;
\ALT_INV_Prod~21_combout\ <= NOT \Prod~21_combout\;
\ALT_INV_Prod~20_combout\ <= NOT \Prod~20_combout\;
\ALT_INV_Prod~19_combout\ <= NOT \Prod~19_combout\;
\ALT_INV_Prod~18_combout\ <= NOT \Prod~18_combout\;
\ALT_INV_Prod~17_combout\ <= NOT \Prod~17_combout\;
\ALT_INV_Prod~16_combout\ <= NOT \Prod~16_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Prod~15_combout\ <= NOT \Prod~15_combout\;
\ALT_INV_Prod~14_combout\ <= NOT \Prod~14_combout\;
\ALT_INV_Prod~13_combout\ <= NOT \Prod~13_combout\;
\ALT_INV_Prod~12_combout\ <= NOT \Prod~12_combout\;
\ALT_INV_Prod~11_combout\ <= NOT \Prod~11_combout\;
\ALT_INV_Booth~7_combout\ <= NOT \Booth~7_combout\;
\ALT_INV_Prod~10_combout\ <= NOT \Prod~10_combout\;
\ALT_INV_Prod~9_combout\ <= NOT \Prod~9_combout\;
\ALT_INV_Prod~8_combout\ <= NOT \Prod~8_combout\;
\ALT_INV_Prod~7_combout\ <= NOT \Prod~7_combout\;
\ALT_INV_Booth~6_combout\ <= NOT \Booth~6_combout\;
\ALT_INV_Booth~5_combout\ <= NOT \Booth~5_combout\;
\ALT_INV_Prod~6_combout\ <= NOT \Prod~6_combout\;
\ALT_INV_Prod~5_combout\ <= NOT \Prod~5_combout\;
\ALT_INV_Prod~4_combout\ <= NOT \Prod~4_combout\;
\ALT_INV_Booth~4_combout\ <= NOT \Booth~4_combout\;
\ALT_INV_Booth~3_combout\ <= NOT \Booth~3_combout\;
\ALT_INV_Prod~3_combout\ <= NOT \Prod~3_combout\;
\ALT_INV_Prod~2_combout\ <= NOT \Prod~2_combout\;
\ALT_INV_Booth~2_combout\ <= NOT \Booth~2_combout\;
\ALT_INV_Booth~1_combout\ <= NOT \Booth~1_combout\;
\ALT_INV_Prod~1_combout\ <= NOT \Prod~1_combout\;
\ALT_INV_Booth~0_combout\ <= NOT \Booth~0_combout\;
\ALT_INV_Prod~0_combout\ <= NOT \Prod~0_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux15~3_combout\ <= NOT \Mux15~3_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Prod~79_combout\ <= NOT \Prod~79_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Prod~75_combout\ <= NOT \Prod~75_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Prod~71_combout\ <= NOT \Prod~71_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Prod~67_combout\ <= NOT \Prod~67_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Prod~63_combout\ <= NOT \Prod~63_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux8~4_combout\ <= NOT \Mux8~4_combout\;
\ALT_INV_EntradaB[15]~input_o\ <= NOT \EntradaB[15]~input_o\;
\ALT_INV_EntradaA[15]~input_o\ <= NOT \EntradaA[15]~input_o\;
\ALT_INV_EntradaB[14]~input_o\ <= NOT \EntradaB[14]~input_o\;
\ALT_INV_EntradaA[14]~input_o\ <= NOT \EntradaA[14]~input_o\;
\ALT_INV_EntradaA[13]~input_o\ <= NOT \EntradaA[13]~input_o\;
\ALT_INV_EntradaB[13]~input_o\ <= NOT \EntradaB[13]~input_o\;
\ALT_INV_EntradaA[12]~input_o\ <= NOT \EntradaA[12]~input_o\;
\ALT_INV_EntradaB[12]~input_o\ <= NOT \EntradaB[12]~input_o\;
\ALT_INV_EntradaA[11]~input_o\ <= NOT \EntradaA[11]~input_o\;
\ALT_INV_EntradaB[11]~input_o\ <= NOT \EntradaB[11]~input_o\;
\ALT_INV_EntradaA[10]~input_o\ <= NOT \EntradaA[10]~input_o\;
\ALT_INV_EntradaB[10]~input_o\ <= NOT \EntradaB[10]~input_o\;
\ALT_INV_EntradaA[9]~input_o\ <= NOT \EntradaA[9]~input_o\;
\ALT_INV_EntradaB[9]~input_o\ <= NOT \EntradaB[9]~input_o\;
\ALT_INV_EntradaA[8]~input_o\ <= NOT \EntradaA[8]~input_o\;
\ALT_INV_EntradaB[8]~input_o\ <= NOT \EntradaB[8]~input_o\;
\ALT_INV_EntradaA[7]~input_o\ <= NOT \EntradaA[7]~input_o\;
\ALT_INV_EntradaB[7]~input_o\ <= NOT \EntradaB[7]~input_o\;
\ALT_INV_EntradaA[6]~input_o\ <= NOT \EntradaA[6]~input_o\;
\ALT_INV_EntradaB[6]~input_o\ <= NOT \EntradaB[6]~input_o\;
\ALT_INV_EntradaA[5]~input_o\ <= NOT \EntradaA[5]~input_o\;
\ALT_INV_EntradaB[5]~input_o\ <= NOT \EntradaB[5]~input_o\;
\ALT_INV_EntradaA[4]~input_o\ <= NOT \EntradaA[4]~input_o\;
\ALT_INV_EntradaB[4]~input_o\ <= NOT \EntradaB[4]~input_o\;
\ALT_INV_EntradaA[3]~input_o\ <= NOT \EntradaA[3]~input_o\;
\ALT_INV_EntradaB[3]~input_o\ <= NOT \EntradaB[3]~input_o\;
\ALT_INV_EntradaA[2]~input_o\ <= NOT \EntradaA[2]~input_o\;
\ALT_INV_EntradaB[2]~input_o\ <= NOT \EntradaB[2]~input_o\;
\ALT_INV_EntradaA[1]~input_o\ <= NOT \EntradaA[1]~input_o\;
\ALT_INV_EntradaB[1]~input_o\ <= NOT \EntradaB[1]~input_o\;
\ALT_INV_Controle_ULA[4]~input_o\ <= NOT \Controle_ULA[4]~input_o\;
\ALT_INV_Controle_ULA[3]~input_o\ <= NOT \Controle_ULA[3]~input_o\;
\ALT_INV_Controle_ULA[6]~input_o\ <= NOT \Controle_ULA[6]~input_o\;
\ALT_INV_Controle_ULA[5]~input_o\ <= NOT \Controle_ULA[5]~input_o\;
\ALT_INV_Controle_ULA[1]~input_o\ <= NOT \Controle_ULA[1]~input_o\;
\ALT_INV_Controle_ULA[0]~input_o\ <= NOT \Controle_ULA[0]~input_o\;
\ALT_INV_EntradaA[0]~input_o\ <= NOT \EntradaA[0]~input_o\;
\ALT_INV_EntradaB[0]~input_o\ <= NOT \EntradaB[0]~input_o\;
\ALT_INV_Controle_ULA[2]~input_o\ <= NOT \Controle_ULA[2]~input_o\;
\ALT_INV_Prod~62_combout\ <= NOT \Prod~62_combout\;
\ALT_INV_Prod~61_combout\ <= NOT \Prod~61_combout\;
\ALT_INV_Prod~60_combout\ <= NOT \Prod~60_combout\;
\ALT_INV_Prod~59_combout\ <= NOT \Prod~59_combout\;
\ALT_INV_Prod~58_combout\ <= NOT \Prod~58_combout\;
\ALT_INV_Prod~57_combout\ <= NOT \Prod~57_combout\;
\ALT_INV_Prod~56_combout\ <= NOT \Prod~56_combout\;
\ALT_INV_Prod~55_combout\ <= NOT \Prod~55_combout\;
\ALT_INV_Prod~54_combout\ <= NOT \Prod~54_combout\;
\ALT_INV_Prod~53_combout\ <= NOT \Prod~53_combout\;
\ALT_INV_Prod~52_combout\ <= NOT \Prod~52_combout\;
\ALT_INV_Prod~51_combout\ <= NOT \Prod~51_combout\;
\ALT_INV_Prod~50_combout\ <= NOT \Prod~50_combout\;

\Saida_to_Dados[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~2_combout\,
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
	i => \Mux14~0_combout\,
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
	i => \Mux13~0_combout\,
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
	i => \Mux12~0_combout\,
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
	i => \Mux11~0_combout\,
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
	i => \Mux10~0_combout\,
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
	i => \Mux9~0_combout\,
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
	i => \Mux8~3_combout\,
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
	i => \Mux7~6_combout\,
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
	i => \Mux6~2_combout\,
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
	i => \Mux5~2_combout\,
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
	i => \Mux4~2_combout\,
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
	i => \Mux3~2_combout\,
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
	i => \Mux2~2_combout\,
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
	i => \Mux1~2_combout\,
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
	i => \Mux0~4_combout\,
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
	i => \Mux15~2_combout\,
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
	i => \Mux14~0_combout\,
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
	i => \Mux13~0_combout\,
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
	i => \Mux12~0_combout\,
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
	i => \Mux11~0_combout\,
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
	i => \Mux10~0_combout\,
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
	i => \Mux9~0_combout\,
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
	i => \Mux8~3_combout\,
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
	i => \Mux7~6_combout\,
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
	i => \Mux6~2_combout\,
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
	i => \Mux5~2_combout\,
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
	i => \Mux4~2_combout\,
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
	i => \Mux3~2_combout\,
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
	i => \Mux2~2_combout\,
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
	i => \Mux1~2_combout\,
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
	i => \Mux0~4_combout\,
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
	i => \ZeroULA~0_combout\,
	devoe => ww_devoe,
	o => \ZeroULA~output_o\);

\Controle_ULA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Controle_ULA(2),
	o => \Controle_ULA[2]~input_o\);

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

\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !\EntradaA[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( !\EntradaA[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

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

\Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = ( !\Controle_ULA[1]~input_o\ & ( (((!\Controle_ULA[0]~input_o\ & (\Add0~1_sumout\)) # (\Controle_ULA[0]~input_o\ & ((\Add1~1_sumout\))))) ) ) # ( \Controle_ULA[1]~input_o\ & ( (\EntradaB[0]~input_o\ & ((!\Controle_ULA[0]~input_o\ & 
-- (((\Add2~1_sumout\)))) # (\Controle_ULA[0]~input_o\ & (\EntradaA[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000000110000010100001111111111110000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaA[0]~input_o\,
	datab => \ALT_INV_Add2~1_sumout\,
	datac => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Controle_ULA[0]~input_o\,
	datae => \ALT_INV_Controle_ULA[1]~input_o\,
	dataf => \ALT_INV_Add1~1_sumout\,
	datag => \ALT_INV_Add0~1_sumout\,
	combout => \Mux15~3_combout\);

\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & !\Controle_ULA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
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

\Controle_ULA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Controle_ULA(6),
	o => \Controle_ULA[6]~input_o\);

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

\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (!\Controle_ULA[5]~input_o\ & (!\Controle_ULA[6]~input_o\ & (!\Controle_ULA[3]~input_o\ & !\Controle_ULA[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[5]~input_o\,
	datab => \ALT_INV_Controle_ULA[6]~input_o\,
	datac => \ALT_INV_Controle_ULA[3]~input_o\,
	datad => \ALT_INV_Controle_ULA[4]~input_o\,
	combout => \Mux15~1_combout\);

\Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \Mux15~0_combout\ & ( \Mux15~1_combout\ & ( (((!\Controle_ULA[2]~input_o\ & \Mux15~3_combout\)) # (\EntradaA[0]~input_o\)) # (\EntradaB[0]~input_o\) ) ) ) # ( !\Mux15~0_combout\ & ( \Mux15~1_combout\ & ( (!\Controle_ULA[2]~input_o\ & 
-- \Mux15~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_EntradaB[0]~input_o\,
	datac => \ALT_INV_EntradaA[0]~input_o\,
	datad => \ALT_INV_Mux15~3_combout\,
	datae => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_Mux15~1_combout\,
	combout => \Mux15~2_combout\);

\EntradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(1),
	o => \EntradaB[1]~input_o\);

\EntradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(1),
	o => \EntradaA[1]~input_o\);

\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\EntradaA[1]~input_o\ ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !\EntradaA[1]~input_o\ ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~5_sumout\) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))
-- \Add3~2\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~5_sumout\) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~5_sumout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

\Add4~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add4~34_cout\);

\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~5_sumout\) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add4~34_cout\ ))
-- \Add4~2\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~5_sumout\) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add4~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~5_sumout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => \Add4~34_cout\,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

\Prod~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~0_combout\ = ( \Add4~1_sumout\ & ( (!\EntradaB[0]~input_o\ & (\EntradaB[1]~input_o\)) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & ((\Add3~1_sumout\))) # (\EntradaB[1]~input_o\ & (\Add2~5_sumout\)))) ) ) # ( !\Add4~1_sumout\ & ( 
-- (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & ((\Add3~1_sumout\))) # (\EntradaB[1]~input_o\ & (\Add2~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011100000001010001010010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add2~5_sumout\,
	datad => \ALT_INV_Add3~1_sumout\,
	datae => \ALT_INV_Add4~1_sumout\,
	combout => \Prod~0_combout\);

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

\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( !\Controle_ULA[1]~input_o\ & ( ((!\Controle_ULA[0]~input_o\ & (\Add0~5_sumout\)) # (\Controle_ULA[0]~input_o\ & (((\Add1~5_sumout\))))) ) ) # ( \Controle_ULA[1]~input_o\ & ( (!\Controle_ULA[0]~input_o\ & ((((\Prod~0_combout\))))) # 
-- (\Controle_ULA[0]~input_o\ & (\EntradaA[1]~input_o\ & (\EntradaB[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaA[1]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_EntradaB[1]~input_o\,
	datad => \ALT_INV_Prod~0_combout\,
	datae => \ALT_INV_Controle_ULA[1]~input_o\,
	dataf => \ALT_INV_Add1~5_sumout\,
	datag => \ALT_INV_Add0~5_sumout\,
	combout => \Mux14~1_combout\);

\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \EntradaA[1]~input_o\ & ( \Mux14~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) # (\Mux15~0_combout\))) ) ) ) # ( !\EntradaA[1]~input_o\ & ( \Mux14~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) 
-- # ((\Mux15~0_combout\ & \EntradaB[1]~input_o\)))) ) ) ) # ( \EntradaA[1]~input_o\ & ( !\Mux14~1_combout\ & ( (\Mux15~0_combout\ & \Mux15~1_combout\) ) ) ) # ( !\EntradaA[1]~input_o\ & ( !\Mux14~1_combout\ & ( (\Mux15~0_combout\ & (\Mux15~1_combout\ & 
-- \EntradaB[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110000001100001010000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux15~1_combout\,
	datad => \ALT_INV_EntradaB[1]~input_o\,
	datae => \ALT_INV_EntradaA[1]~input_o\,
	dataf => \ALT_INV_Mux14~1_combout\,
	combout => \Mux14~0_combout\);

\EntradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(2),
	o => \EntradaB[2]~input_o\);

\EntradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(2),
	o => \EntradaA[2]~input_o\);

\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !\EntradaA[2]~input_o\ ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !\EntradaA[2]~input_o\ ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~9_sumout\) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~9_sumout\) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~9_sumout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

\Prod~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~1_combout\ = (!\EntradaB[0]~input_o\ & (\EntradaB[1]~input_o\ & ((\Add4~5_sumout\)))) # (\EntradaB[0]~input_o\ & (((\Add2~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add2~9_sumout\,
	datad => \ALT_INV_Add4~5_sumout\,
	combout => \Prod~1_combout\);

\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~9_sumout\) ) + ( \EntradaA[1]~input_o\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~9_sumout\) ) + ( \EntradaA[1]~input_o\ ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~9_sumout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

\Add6~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add6~34_cout\);

\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~1_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~5_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~1_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add6~34_cout\ ))
-- \Add6~2\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~1_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~5_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~1_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add6~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Prod~1_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => \Add6~34_cout\,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~1_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~5_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~1_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))
-- \Add5~2\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~1_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~5_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~1_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Prod~1_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

\Prod~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~79_combout\ = ( !\EntradaB[2]~input_o\ & ( (!\EntradaB[1]~input_o\ & ((!\EntradaB[0]~input_o\ & (\Prod~1_combout\)) # (\EntradaB[0]~input_o\ & (((\Add3~5_sumout\)))))) # (\EntradaB[1]~input_o\ & ((((\Add5~1_sumout\))))) ) ) # ( \EntradaB[2]~input_o\ 
-- & ( (((!\EntradaB[1]~input_o\ & ((\Add6~1_sumout\))) # (\EntradaB[1]~input_o\ & (\Prod~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001001110111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_Prod~1_combout\,
	datac => \ALT_INV_Add6~1_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_EntradaB[2]~input_o\,
	dataf => \ALT_INV_EntradaB[1]~input_o\,
	datag => \ALT_INV_Add5~1_sumout\,
	combout => \Prod~79_combout\);

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

\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( !\Controle_ULA[1]~input_o\ & ( ((!\Controle_ULA[0]~input_o\ & (\Add0~9_sumout\)) # (\Controle_ULA[0]~input_o\ & (((\Add1~9_sumout\))))) ) ) # ( \Controle_ULA[1]~input_o\ & ( (!\Controle_ULA[0]~input_o\ & ((((\Prod~79_combout\))))) # 
-- (\Controle_ULA[0]~input_o\ & (\EntradaA[2]~input_o\ & (\EntradaB[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_EntradaB[2]~input_o\,
	datad => \ALT_INV_Prod~79_combout\,
	datae => \ALT_INV_Controle_ULA[1]~input_o\,
	dataf => \ALT_INV_Add1~9_sumout\,
	datag => \ALT_INV_Add0~9_sumout\,
	combout => \Mux13~1_combout\);

\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \EntradaA[2]~input_o\ & ( \Mux13~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) # (\Mux15~0_combout\))) ) ) ) # ( !\EntradaA[2]~input_o\ & ( \Mux13~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) 
-- # ((\Mux15~0_combout\ & \EntradaB[2]~input_o\)))) ) ) ) # ( \EntradaA[2]~input_o\ & ( !\Mux13~1_combout\ & ( (\Mux15~0_combout\ & \Mux15~1_combout\) ) ) ) # ( !\EntradaA[2]~input_o\ & ( !\Mux13~1_combout\ & ( (\Mux15~0_combout\ & (\Mux15~1_combout\ & 
-- \EntradaB[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110000001100001010000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux15~1_combout\,
	datad => \ALT_INV_EntradaB[2]~input_o\,
	datae => \ALT_INV_EntradaA[2]~input_o\,
	dataf => \ALT_INV_Mux13~1_combout\,
	combout => \Mux13~0_combout\);

\EntradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(3),
	o => \EntradaB[3]~input_o\);

\EntradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(3),
	o => \EntradaA[3]~input_o\);

\Booth~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~0_combout\ = (\EntradaB[0]~input_o\ & !\EntradaB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	combout => \Booth~0_combout\);

\Booth~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~2_combout\ = (!\EntradaB[1]~input_o\ & \EntradaB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	combout => \Booth~2_combout\);

\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\EntradaA[3]~input_o\ ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !\EntradaA[3]~input_o\ ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~13_sumout\) ) + ( \EntradaA[2]~input_o\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~13_sumout\) ) + ( \EntradaA[2]~input_o\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~13_sumout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~13_sumout\) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~13_sumout\) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~13_sumout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

\Prod~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~2_combout\ = (!\EntradaB[0]~input_o\ & (\EntradaB[1]~input_o\ & ((\Add4~9_sumout\)))) # (\EntradaB[0]~input_o\ & (((\Add2~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add2~13_sumout\,
	datad => \ALT_INV_Add4~9_sumout\,
	combout => \Prod~2_combout\);

\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~2_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~9_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~2_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~2_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~9_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~2_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_Prod~2_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

\Prod~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~3_combout\ = ( \Add6~5_sumout\ & ( ((!\Booth~0_combout\ & ((\Prod~2_combout\))) # (\Booth~0_combout\ & (\Add3~9_sumout\))) # (\Booth~2_combout\) ) ) # ( !\Add6~5_sumout\ & ( (!\Booth~2_combout\ & ((!\Booth~0_combout\ & ((\Prod~2_combout\))) # 
-- (\Booth~0_combout\ & (\Add3~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~0_combout\,
	datab => \ALT_INV_Booth~2_combout\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_Prod~2_combout\,
	datae => \ALT_INV_Add6~5_sumout\,
	combout => \Prod~3_combout\);

\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~2_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~9_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~2_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~2_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~9_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~2_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_Prod~2_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

\Add8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add8~34_cout\);

\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~3_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~5_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~3_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add8~34_cout\ ))
-- \Add8~2\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~3_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~5_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~3_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~5_sumout\,
	datad => \ALT_INV_Prod~3_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => \Add8~34_cout\,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~3_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~5_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~3_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))
-- \Add7~2\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~3_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~5_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~3_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~5_sumout\,
	datad => \ALT_INV_Prod~3_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

\Prod~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~75_combout\ = ( !\EntradaB[3]~input_o\ & ( (!\EntradaB[2]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Prod~3_combout\)) # (\EntradaB[1]~input_o\ & (((\Add5~5_sumout\)))))) # (\EntradaB[2]~input_o\ & ((((\Add7~1_sumout\))))) ) ) # ( \EntradaB[3]~input_o\ 
-- & ( (((!\EntradaB[2]~input_o\ & ((\Add8~1_sumout\))) # (\EntradaB[2]~input_o\ & (\Prod~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001001110111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_Prod~3_combout\,
	datac => \ALT_INV_Add8~1_sumout\,
	datad => \ALT_INV_Add5~5_sumout\,
	datae => \ALT_INV_EntradaB[3]~input_o\,
	dataf => \ALT_INV_EntradaB[2]~input_o\,
	datag => \ALT_INV_Add7~1_sumout\,
	combout => \Prod~75_combout\);

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

\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( !\Controle_ULA[1]~input_o\ & ( ((!\Controle_ULA[0]~input_o\ & (\Add0~13_sumout\)) # (\Controle_ULA[0]~input_o\ & (((\Add1~13_sumout\))))) ) ) # ( \Controle_ULA[1]~input_o\ & ( (!\Controle_ULA[0]~input_o\ & ((((\Prod~75_combout\))))) 
-- # (\Controle_ULA[0]~input_o\ & (\EntradaA[3]~input_o\ & (\EntradaB[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaA[3]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_EntradaB[3]~input_o\,
	datad => \ALT_INV_Prod~75_combout\,
	datae => \ALT_INV_Controle_ULA[1]~input_o\,
	dataf => \ALT_INV_Add1~13_sumout\,
	datag => \ALT_INV_Add0~13_sumout\,
	combout => \Mux12~1_combout\);

\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \EntradaA[3]~input_o\ & ( \Mux12~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) # (\Mux15~0_combout\))) ) ) ) # ( !\EntradaA[3]~input_o\ & ( \Mux12~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) 
-- # ((\Mux15~0_combout\ & \EntradaB[3]~input_o\)))) ) ) ) # ( \EntradaA[3]~input_o\ & ( !\Mux12~1_combout\ & ( (\Mux15~0_combout\ & \Mux15~1_combout\) ) ) ) # ( !\EntradaA[3]~input_o\ & ( !\Mux12~1_combout\ & ( (\Mux15~0_combout\ & (\Mux15~1_combout\ & 
-- \EntradaB[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110000001100001010000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux15~1_combout\,
	datad => \ALT_INV_EntradaB[3]~input_o\,
	datae => \ALT_INV_EntradaA[3]~input_o\,
	dataf => \ALT_INV_Mux12~1_combout\,
	combout => \Mux12~0_combout\);

\EntradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(4),
	o => \EntradaB[4]~input_o\);

\EntradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(4),
	o => \EntradaA[4]~input_o\);

\Booth~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~1_combout\ = (\EntradaB[1]~input_o\ & !\EntradaB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	combout => \Booth~1_combout\);

\Booth~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~4_combout\ = (!\EntradaB[2]~input_o\ & \EntradaB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	combout => \Booth~4_combout\);

\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\EntradaA[4]~input_o\ ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !\EntradaA[4]~input_o\ ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~17_sumout\) ) + ( \EntradaA[3]~input_o\ ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~17_sumout\) ) + ( \EntradaA[3]~input_o\ ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~17_sumout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~17_sumout\) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~17_sumout\) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~17_sumout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

\Prod~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~4_combout\ = (!\EntradaB[0]~input_o\ & (\EntradaB[1]~input_o\ & ((\Add4~13_sumout\)))) # (\EntradaB[0]~input_o\ & (((\Add2~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add2~17_sumout\,
	datad => \ALT_INV_Add4~13_sumout\,
	combout => \Prod~4_combout\);

\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~4_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~13_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~4_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~4_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~13_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~4_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Prod~4_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~4_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~13_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~4_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~4_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~13_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~4_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Prod~4_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

\Prod~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~5_combout\ = ( \Add6~9_sumout\ & ( ((!\Booth~0_combout\ & ((\Prod~4_combout\))) # (\Booth~0_combout\ & (\Add3~13_sumout\))) # (\Booth~2_combout\) ) ) # ( !\Add6~9_sumout\ & ( (!\Booth~2_combout\ & ((!\Booth~0_combout\ & ((\Prod~4_combout\))) # 
-- (\Booth~0_combout\ & (\Add3~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~0_combout\,
	datab => \ALT_INV_Booth~2_combout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Prod~4_combout\,
	datae => \ALT_INV_Add6~9_sumout\,
	combout => \Prod~5_combout\);

\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~5_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~9_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~5_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~5_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~9_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~5_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~9_sumout\,
	datad => \ALT_INV_Prod~5_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

\Prod~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~6_combout\ = ( \Add8~5_sumout\ & ( ((!\Booth~1_combout\ & ((\Prod~5_combout\))) # (\Booth~1_combout\ & (\Add5~9_sumout\))) # (\Booth~4_combout\) ) ) # ( !\Add8~5_sumout\ & ( (!\Booth~4_combout\ & ((!\Booth~1_combout\ & ((\Prod~5_combout\))) # 
-- (\Booth~1_combout\ & (\Add5~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~1_combout\,
	datab => \ALT_INV_Booth~4_combout\,
	datac => \ALT_INV_Add5~9_sumout\,
	datad => \ALT_INV_Prod~5_combout\,
	datae => \ALT_INV_Add8~5_sumout\,
	combout => \Prod~6_combout\);

\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~5_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~9_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~5_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~5_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~9_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~5_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~9_sumout\,
	datad => \ALT_INV_Prod~5_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

\Add10~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add10~34_cout\);

\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~6_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~5_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~6_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add10~34_cout\ ))
-- \Add10~2\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~6_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~5_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~6_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add10~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~5_sumout\,
	datad => \ALT_INV_Prod~6_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => \Add10~34_cout\,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\);

\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~6_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~5_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~6_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))
-- \Add9~2\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~6_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~5_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~6_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~5_sumout\,
	datad => \ALT_INV_Prod~6_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\);

\Prod~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~71_combout\ = ( !\EntradaB[4]~input_o\ & ( (!\EntradaB[3]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Prod~6_combout\)) # (\EntradaB[2]~input_o\ & (((\Add7~5_sumout\)))))) # (\EntradaB[3]~input_o\ & ((((\Add9~1_sumout\))))) ) ) # ( \EntradaB[4]~input_o\ 
-- & ( (((!\EntradaB[3]~input_o\ & ((\Add10~1_sumout\))) # (\EntradaB[3]~input_o\ & (\Prod~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001001110111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_Prod~6_combout\,
	datac => \ALT_INV_Add10~1_sumout\,
	datad => \ALT_INV_Add7~5_sumout\,
	datae => \ALT_INV_EntradaB[4]~input_o\,
	dataf => \ALT_INV_EntradaB[3]~input_o\,
	datag => \ALT_INV_Add9~1_sumout\,
	combout => \Prod~71_combout\);

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

\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( !\Controle_ULA[1]~input_o\ & ( ((!\Controle_ULA[0]~input_o\ & (\Add0~17_sumout\)) # (\Controle_ULA[0]~input_o\ & (((\Add1~17_sumout\))))) ) ) # ( \Controle_ULA[1]~input_o\ & ( (!\Controle_ULA[0]~input_o\ & ((((\Prod~71_combout\))))) 
-- # (\Controle_ULA[0]~input_o\ & (\EntradaA[4]~input_o\ & (\EntradaB[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaA[4]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_EntradaB[4]~input_o\,
	datad => \ALT_INV_Prod~71_combout\,
	datae => \ALT_INV_Controle_ULA[1]~input_o\,
	dataf => \ALT_INV_Add1~17_sumout\,
	datag => \ALT_INV_Add0~17_sumout\,
	combout => \Mux11~1_combout\);

\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \EntradaA[4]~input_o\ & ( \Mux11~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) # (\Mux15~0_combout\))) ) ) ) # ( !\EntradaA[4]~input_o\ & ( \Mux11~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) 
-- # ((\Mux15~0_combout\ & \EntradaB[4]~input_o\)))) ) ) ) # ( \EntradaA[4]~input_o\ & ( !\Mux11~1_combout\ & ( (\Mux15~0_combout\ & \Mux15~1_combout\) ) ) ) # ( !\EntradaA[4]~input_o\ & ( !\Mux11~1_combout\ & ( (\Mux15~0_combout\ & (\Mux15~1_combout\ & 
-- \EntradaB[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110000001100001010000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux15~1_combout\,
	datad => \ALT_INV_EntradaB[4]~input_o\,
	datae => \ALT_INV_EntradaA[4]~input_o\,
	dataf => \ALT_INV_Mux11~1_combout\,
	combout => \Mux11~0_combout\);

\EntradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(5),
	o => \EntradaB[5]~input_o\);

\EntradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(5),
	o => \EntradaA[5]~input_o\);

\Booth~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~3_combout\ = (\EntradaB[2]~input_o\ & !\EntradaB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	combout => \Booth~3_combout\);

\Booth~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~6_combout\ = (!\EntradaB[3]~input_o\ & \EntradaB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	combout => \Booth~6_combout\);

\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !\EntradaA[5]~input_o\ ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !\EntradaA[5]~input_o\ ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~21_sumout\) ) + ( \EntradaA[4]~input_o\ ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~21_sumout\) ) + ( \EntradaA[4]~input_o\ ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~21_sumout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~21_sumout\) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~21_sumout\) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~21_sumout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

\Prod~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~7_combout\ = (!\EntradaB[0]~input_o\ & (\EntradaB[1]~input_o\ & ((\Add4~17_sumout\)))) # (\EntradaB[0]~input_o\ & (((\Add2~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add2~21_sumout\,
	datad => \ALT_INV_Add4~17_sumout\,
	combout => \Prod~7_combout\);

\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~7_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~17_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~7_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~7_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~17_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~7_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_Prod~7_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~7_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~17_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~7_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~7_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~17_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~7_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_Prod~7_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

\Prod~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~8_combout\ = ( \Add6~13_sumout\ & ( ((!\Booth~0_combout\ & ((\Prod~7_combout\))) # (\Booth~0_combout\ & (\Add3~17_sumout\))) # (\Booth~2_combout\) ) ) # ( !\Add6~13_sumout\ & ( (!\Booth~2_combout\ & ((!\Booth~0_combout\ & ((\Prod~7_combout\))) # 
-- (\Booth~0_combout\ & (\Add3~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~0_combout\,
	datab => \ALT_INV_Booth~2_combout\,
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_Prod~7_combout\,
	datae => \ALT_INV_Add6~13_sumout\,
	combout => \Prod~8_combout\);

\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~8_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~13_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~8_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~8_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~13_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~8_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_Prod~8_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~8_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~13_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~8_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~8_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~13_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~8_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_Prod~8_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

\Prod~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~9_combout\ = ( \Add8~9_sumout\ & ( ((!\Booth~1_combout\ & ((\Prod~8_combout\))) # (\Booth~1_combout\ & (\Add5~13_sumout\))) # (\Booth~4_combout\) ) ) # ( !\Add8~9_sumout\ & ( (!\Booth~4_combout\ & ((!\Booth~1_combout\ & ((\Prod~8_combout\))) # 
-- (\Booth~1_combout\ & (\Add5~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~1_combout\,
	datab => \ALT_INV_Booth~4_combout\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_Prod~8_combout\,
	datae => \ALT_INV_Add8~9_sumout\,
	combout => \Prod~9_combout\);

\Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~9_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~9_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~9_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~9_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~9_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~9_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~9_sumout\,
	datad => \ALT_INV_Prod~9_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add10~2\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\);

\Prod~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~10_combout\ = ( \Add10~5_sumout\ & ( ((!\Booth~3_combout\ & ((\Prod~9_combout\))) # (\Booth~3_combout\ & (\Add7~9_sumout\))) # (\Booth~6_combout\) ) ) # ( !\Add10~5_sumout\ & ( (!\Booth~6_combout\ & ((!\Booth~3_combout\ & ((\Prod~9_combout\))) # 
-- (\Booth~3_combout\ & (\Add7~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~3_combout\,
	datab => \ALT_INV_Booth~6_combout\,
	datac => \ALT_INV_Add7~9_sumout\,
	datad => \ALT_INV_Prod~9_combout\,
	datae => \ALT_INV_Add10~5_sumout\,
	combout => \Prod~10_combout\);

\Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~9_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~9_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~9_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~9_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~9_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~9_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~9_sumout\,
	datad => \ALT_INV_Prod~9_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add9~2\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\);

\Add12~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add12~34_cout\);

\Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~1_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~10_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~5_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~10_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add12~34_cout\ ))
-- \Add12~2\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~10_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~5_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~10_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add12~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~5_sumout\,
	datad => \ALT_INV_Prod~10_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => \Add12~34_cout\,
	sumout => \Add12~1_sumout\,
	cout => \Add12~2\);

\Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~10_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~5_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~10_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))
-- \Add11~2\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~10_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~5_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~10_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~5_sumout\,
	datad => \ALT_INV_Prod~10_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\);

\Prod~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~67_combout\ = ( !\EntradaB[5]~input_o\ & ( (!\EntradaB[4]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Prod~10_combout\)) # (\EntradaB[3]~input_o\ & (((\Add9~5_sumout\)))))) # (\EntradaB[4]~input_o\ & ((((\Add11~1_sumout\))))) ) ) # ( 
-- \EntradaB[5]~input_o\ & ( (((!\EntradaB[4]~input_o\ & ((\Add12~1_sumout\))) # (\EntradaB[4]~input_o\ & (\Prod~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001001110111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_Prod~10_combout\,
	datac => \ALT_INV_Add12~1_sumout\,
	datad => \ALT_INV_Add9~5_sumout\,
	datae => \ALT_INV_EntradaB[5]~input_o\,
	dataf => \ALT_INV_EntradaB[4]~input_o\,
	datag => \ALT_INV_Add11~1_sumout\,
	combout => \Prod~67_combout\);

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

\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( !\Controle_ULA[1]~input_o\ & ( ((!\Controle_ULA[0]~input_o\ & (\Add0~21_sumout\)) # (\Controle_ULA[0]~input_o\ & (((\Add1~21_sumout\))))) ) ) # ( \Controle_ULA[1]~input_o\ & ( (!\Controle_ULA[0]~input_o\ & ((((\Prod~67_combout\))))) 
-- # (\Controle_ULA[0]~input_o\ & (\EntradaA[5]~input_o\ & (\EntradaB[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaA[5]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_EntradaB[5]~input_o\,
	datad => \ALT_INV_Prod~67_combout\,
	datae => \ALT_INV_Controle_ULA[1]~input_o\,
	dataf => \ALT_INV_Add1~21_sumout\,
	datag => \ALT_INV_Add0~21_sumout\,
	combout => \Mux10~1_combout\);

\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \EntradaA[5]~input_o\ & ( \Mux10~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) # (\Mux15~0_combout\))) ) ) ) # ( !\EntradaA[5]~input_o\ & ( \Mux10~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) 
-- # ((\Mux15~0_combout\ & \EntradaB[5]~input_o\)))) ) ) ) # ( \EntradaA[5]~input_o\ & ( !\Mux10~1_combout\ & ( (\Mux15~0_combout\ & \Mux15~1_combout\) ) ) ) # ( !\EntradaA[5]~input_o\ & ( !\Mux10~1_combout\ & ( (\Mux15~0_combout\ & (\Mux15~1_combout\ & 
-- \EntradaB[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110000001100001010000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux15~1_combout\,
	datad => \ALT_INV_EntradaB[5]~input_o\,
	datae => \ALT_INV_EntradaA[5]~input_o\,
	dataf => \ALT_INV_Mux10~1_combout\,
	combout => \Mux10~0_combout\);

\EntradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(6),
	o => \EntradaB[6]~input_o\);

\EntradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(6),
	o => \EntradaA[6]~input_o\);

\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !\EntradaA[6]~input_o\ ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !\EntradaA[6]~input_o\ ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~25_sumout\) ) + ( \EntradaA[5]~input_o\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~25_sumout\) ) + ( \EntradaA[5]~input_o\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~25_sumout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~25_sumout\) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~25_sumout\) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~25_sumout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

\Prod~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~11_combout\ = (!\EntradaB[0]~input_o\ & (\EntradaB[1]~input_o\ & ((\Add4~21_sumout\)))) # (\EntradaB[0]~input_o\ & (((\Add2~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add2~25_sumout\,
	datad => \ALT_INV_Add4~21_sumout\,
	combout => \Prod~11_combout\);

\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~11_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~21_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~11_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~11_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~21_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~11_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~21_sumout\,
	datad => \ALT_INV_Prod~11_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~11_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~21_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~11_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~11_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~21_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~11_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~21_sumout\,
	datad => \ALT_INV_Prod~11_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

\Prod~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~12_combout\ = ( \Add6~17_sumout\ & ( ((!\Booth~0_combout\ & ((\Prod~11_combout\))) # (\Booth~0_combout\ & (\Add3~21_sumout\))) # (\Booth~2_combout\) ) ) # ( !\Add6~17_sumout\ & ( (!\Booth~2_combout\ & ((!\Booth~0_combout\ & ((\Prod~11_combout\))) # 
-- (\Booth~0_combout\ & (\Add3~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~0_combout\,
	datab => \ALT_INV_Booth~2_combout\,
	datac => \ALT_INV_Add3~21_sumout\,
	datad => \ALT_INV_Prod~11_combout\,
	datae => \ALT_INV_Add6~17_sumout\,
	combout => \Prod~12_combout\);

\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~12_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~17_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~12_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~12_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~17_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~12_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_Prod~12_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~12_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~17_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~12_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~12_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~17_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~12_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_Prod~12_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

\Prod~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~13_combout\ = ( \Add8~13_sumout\ & ( ((!\Booth~1_combout\ & ((\Prod~12_combout\))) # (\Booth~1_combout\ & (\Add5~17_sumout\))) # (\Booth~4_combout\) ) ) # ( !\Add8~13_sumout\ & ( (!\Booth~4_combout\ & ((!\Booth~1_combout\ & ((\Prod~12_combout\))) # 
-- (\Booth~1_combout\ & (\Add5~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~1_combout\,
	datab => \ALT_INV_Booth~4_combout\,
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_Prod~12_combout\,
	datae => \ALT_INV_Add8~13_sumout\,
	combout => \Prod~13_combout\);

\Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~13_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~13_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~13_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~13_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~13_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~13_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => \ALT_INV_Prod~13_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add9~6\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\);

\Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~13_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~13_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~13_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~13_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~13_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~13_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => \ALT_INV_Prod~13_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add10~6\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\);

\Prod~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~14_combout\ = ( \Add10~9_sumout\ & ( ((!\Booth~3_combout\ & ((\Prod~13_combout\))) # (\Booth~3_combout\ & (\Add7~13_sumout\))) # (\Booth~6_combout\) ) ) # ( !\Add10~9_sumout\ & ( (!\Booth~6_combout\ & ((!\Booth~3_combout\ & ((\Prod~13_combout\))) # 
-- (\Booth~3_combout\ & (\Add7~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~3_combout\,
	datab => \ALT_INV_Booth~6_combout\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => \ALT_INV_Prod~13_combout\,
	datae => \ALT_INV_Add10~9_sumout\,
	combout => \Prod~14_combout\);

\Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~14_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~9_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~14_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~14_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~9_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~14_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~9_sumout\,
	datad => \ALT_INV_Prod~14_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add11~2\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\);

\Booth~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~5_combout\ = (\EntradaB[3]~input_o\ & !\EntradaB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	combout => \Booth~5_combout\);

\Booth~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~8_combout\ = (!\EntradaB[4]~input_o\ & \EntradaB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	combout => \Booth~8_combout\);

\Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~5_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~14_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~9_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~14_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add12~2\ ))
-- \Add12~6\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~14_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~9_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~14_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~9_sumout\,
	datad => \ALT_INV_Prod~14_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add12~2\,
	sumout => \Add12~5_sumout\,
	cout => \Add12~6\);

\Prod~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~49_combout\ = ( \Add12~5_sumout\ & ( ((!\Booth~5_combout\ & ((\Prod~14_combout\))) # (\Booth~5_combout\ & (\Add9~9_sumout\))) # (\Booth~8_combout\) ) ) # ( !\Add12~5_sumout\ & ( (!\Booth~8_combout\ & ((!\Booth~5_combout\ & ((\Prod~14_combout\))) # 
-- (\Booth~5_combout\ & (\Add9~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~5_combout\,
	datab => \ALT_INV_Booth~8_combout\,
	datac => \ALT_INV_Add9~9_sumout\,
	datad => \ALT_INV_Prod~14_combout\,
	datae => \ALT_INV_Add12~5_sumout\,
	combout => \Prod~49_combout\);

\Add14~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add14~34_cout\);

\Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~1_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~49_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~5_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~49_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add14~34_cout\ ))
-- \Add14~2\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~49_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~5_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~49_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add14~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~5_sumout\,
	datad => \ALT_INV_Prod~49_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => \Add14~34_cout\,
	sumout => \Add14~1_sumout\,
	cout => \Add14~2\);

\Prod~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~15_combout\ = ( \Prod~14_combout\ & ( \Add12~5_sumout\ & ( ((!\EntradaB[4]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~9_sumout\)))) # (\EntradaB[5]~input_o\) ) ) ) # ( !\Prod~14_combout\ & ( \Add12~5_sumout\ & ( (!\EntradaB[4]~input_o\ & 
-- (((\EntradaB[3]~input_o\ & \Add9~9_sumout\)) # (\EntradaB[5]~input_o\))) ) ) ) # ( \Prod~14_combout\ & ( !\Add12~5_sumout\ & ( (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~9_sumout\)))) # (\EntradaB[4]~input_o\ & 
-- (((\EntradaB[5]~input_o\)))) ) ) ) # ( !\Prod~14_combout\ & ( !\Add12~5_sumout\ & ( (\EntradaB[3]~input_o\ & (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & \Add9~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_EntradaB[5]~input_o\,
	datad => \ALT_INV_Add9~9_sumout\,
	datae => \ALT_INV_Prod~14_combout\,
	dataf => \ALT_INV_Add12~5_sumout\,
	combout => \Prod~15_combout\);

\Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~1_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~49_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~5_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~49_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))
-- \Add13~2\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~49_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~5_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~49_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~5_sumout\,
	datad => \ALT_INV_Prod~49_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add13~1_sumout\,
	cout => \Add13~2\);

\Prod~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~63_combout\ = ( !\EntradaB[6]~input_o\ & ( (!\EntradaB[5]~input_o\ & ((((\EntradaB[4]~input_o\ & \Add11~5_sumout\)) # (\Prod~15_combout\)))) # (\EntradaB[5]~input_o\ & ((((\Add13~1_sumout\))))) ) ) # ( \EntradaB[6]~input_o\ & ( 
-- (((!\EntradaB[5]~input_o\ & (\Add14~1_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000111111111000011110000111100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_Add11~5_sumout\,
	datac => \ALT_INV_Add14~1_sumout\,
	datad => \ALT_INV_Prod~15_combout\,
	datae => \ALT_INV_EntradaB[6]~input_o\,
	dataf => \ALT_INV_EntradaB[5]~input_o\,
	datag => \ALT_INV_Add13~1_sumout\,
	combout => \Prod~63_combout\);

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

\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( !\Controle_ULA[1]~input_o\ & ( ((!\Controle_ULA[0]~input_o\ & (\Add0~25_sumout\)) # (\Controle_ULA[0]~input_o\ & (((\Add1~25_sumout\))))) ) ) # ( \Controle_ULA[1]~input_o\ & ( (!\Controle_ULA[0]~input_o\ & ((((\Prod~63_combout\))))) # 
-- (\Controle_ULA[0]~input_o\ & (\EntradaA[6]~input_o\ & (\EntradaB[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaA[6]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_EntradaB[6]~input_o\,
	datad => \ALT_INV_Prod~63_combout\,
	datae => \ALT_INV_Controle_ULA[1]~input_o\,
	dataf => \ALT_INV_Add1~25_sumout\,
	datag => \ALT_INV_Add0~25_sumout\,
	combout => \Mux9~1_combout\);

\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \EntradaA[6]~input_o\ & ( \Mux9~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) # (\Mux15~0_combout\))) ) ) ) # ( !\EntradaA[6]~input_o\ & ( \Mux9~1_combout\ & ( (\Mux15~1_combout\ & ((!\Controle_ULA[2]~input_o\) # 
-- ((\Mux15~0_combout\ & \EntradaB[6]~input_o\)))) ) ) ) # ( \EntradaA[6]~input_o\ & ( !\Mux9~1_combout\ & ( (\Mux15~0_combout\ & \Mux15~1_combout\) ) ) ) # ( !\EntradaA[6]~input_o\ & ( !\Mux9~1_combout\ & ( (\Mux15~0_combout\ & (\Mux15~1_combout\ & 
-- \EntradaB[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110000001100001010000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux15~1_combout\,
	datad => \ALT_INV_EntradaB[6]~input_o\,
	datae => \ALT_INV_EntradaA[6]~input_o\,
	dataf => \ALT_INV_Mux9~1_combout\,
	combout => \Mux9~0_combout\);

\EntradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(7),
	o => \EntradaB[7]~input_o\);

\EntradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(7),
	o => \EntradaA[7]~input_o\);

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

\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\Controle_ULA[2]~input_o\ & (!\Controle_ULA[0]~input_o\ & (!\Controle_ULA[1]~input_o\ & \Mux15~1_combout\)))

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
	datad => \ALT_INV_Mux15~1_combout\,
	combout => \Mux8~0_combout\);

\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !\EntradaA[7]~input_o\ ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\);

\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~29_sumout\) ) + ( \EntradaA[6]~input_o\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~29_sumout\) ) + ( \EntradaA[6]~input_o\ ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~29_sumout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~29_sumout\) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( (\EntradaB[0]~input_o\ & \Add2~29_sumout\) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~29_sumout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

\Prod~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~17_combout\ = (!\EntradaB[0]~input_o\ & (\EntradaB[1]~input_o\ & ((\Add4~25_sumout\)))) # (\EntradaB[0]~input_o\ & (((\Add2~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add2~29_sumout\,
	datad => \ALT_INV_Add4~25_sumout\,
	combout => \Prod~17_combout\);

\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~17_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~25_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~17_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~17_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~25_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~17_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~25_sumout\,
	datad => \ALT_INV_Prod~17_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~17_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~25_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~17_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~17_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~25_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~17_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~25_sumout\,
	datad => \ALT_INV_Prod~17_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

\Prod~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~18_combout\ = ( \Add6~21_sumout\ & ( ((!\Booth~0_combout\ & ((\Prod~17_combout\))) # (\Booth~0_combout\ & (\Add3~25_sumout\))) # (\Booth~2_combout\) ) ) # ( !\Add6~21_sumout\ & ( (!\Booth~2_combout\ & ((!\Booth~0_combout\ & ((\Prod~17_combout\))) # 
-- (\Booth~0_combout\ & (\Add3~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~0_combout\,
	datab => \ALT_INV_Booth~2_combout\,
	datac => \ALT_INV_Add3~25_sumout\,
	datad => \ALT_INV_Prod~17_combout\,
	datae => \ALT_INV_Add6~21_sumout\,
	combout => \Prod~18_combout\);

\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~18_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~21_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~18_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~18_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~21_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~18_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~21_sumout\,
	datad => \ALT_INV_Prod~18_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~18_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~21_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~18_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~18_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~21_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~18_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~21_sumout\,
	datad => \ALT_INV_Prod~18_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

\Prod~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~19_combout\ = ( \Add8~17_sumout\ & ( ((!\Booth~1_combout\ & ((\Prod~18_combout\))) # (\Booth~1_combout\ & (\Add5~21_sumout\))) # (\Booth~4_combout\) ) ) # ( !\Add8~17_sumout\ & ( (!\Booth~4_combout\ & ((!\Booth~1_combout\ & ((\Prod~18_combout\))) # 
-- (\Booth~1_combout\ & (\Add5~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~1_combout\,
	datab => \ALT_INV_Booth~4_combout\,
	datac => \ALT_INV_Add5~21_sumout\,
	datad => \ALT_INV_Prod~18_combout\,
	datae => \ALT_INV_Add8~17_sumout\,
	combout => \Prod~19_combout\);

\Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~19_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~17_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~19_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~19_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~17_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~19_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~17_sumout\,
	datad => \ALT_INV_Prod~19_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add9~10\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\);

\Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~19_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~17_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~19_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~19_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~17_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~19_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~17_sumout\,
	datad => \ALT_INV_Prod~19_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add10~10\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\);

\Prod~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~20_combout\ = ( \Add10~13_sumout\ & ( ((!\Booth~3_combout\ & ((\Prod~19_combout\))) # (\Booth~3_combout\ & (\Add7~17_sumout\))) # (\Booth~6_combout\) ) ) # ( !\Add10~13_sumout\ & ( (!\Booth~6_combout\ & ((!\Booth~3_combout\ & ((\Prod~19_combout\))) 
-- # (\Booth~3_combout\ & (\Add7~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~3_combout\,
	datab => \ALT_INV_Booth~6_combout\,
	datac => \ALT_INV_Add7~17_sumout\,
	datad => \ALT_INV_Prod~19_combout\,
	datae => \ALT_INV_Add10~13_sumout\,
	combout => \Prod~20_combout\);

\Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~20_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~13_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~20_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~20_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~13_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~20_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~13_sumout\,
	datad => \ALT_INV_Prod~20_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add11~6\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\);

\Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~9_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~20_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~13_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~20_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add12~6\ ))
-- \Add12~10\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~20_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~13_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~20_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~13_sumout\,
	datad => \ALT_INV_Prod~20_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add12~6\,
	sumout => \Add12~9_sumout\,
	cout => \Add12~10\);

\Prod~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~51_combout\ = ( \Add12~9_sumout\ & ( ((!\Booth~5_combout\ & ((\Prod~20_combout\))) # (\Booth~5_combout\ & (\Add9~13_sumout\))) # (\Booth~8_combout\) ) ) # ( !\Add12~9_sumout\ & ( (!\Booth~8_combout\ & ((!\Booth~5_combout\ & ((\Prod~20_combout\))) # 
-- (\Booth~5_combout\ & (\Add9~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~5_combout\,
	datab => \ALT_INV_Booth~8_combout\,
	datac => \ALT_INV_Add9~13_sumout\,
	datad => \ALT_INV_Prod~20_combout\,
	datae => \ALT_INV_Add12~9_sumout\,
	combout => \Prod~51_combout\);

\Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~5_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~51_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~9_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~51_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add13~2\ ))
-- \Add13~6\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~51_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~9_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~51_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~9_sumout\,
	datad => \ALT_INV_Prod~51_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add13~2\,
	sumout => \Add13~5_sumout\,
	cout => \Add13~6\);

\Booth~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~9_combout\ = (!\EntradaB[5]~input_o\ & \EntradaB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	combout => \Booth~9_combout\);

\Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~5_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~51_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~9_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~51_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add14~2\ ))
-- \Add14~6\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~51_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~9_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~51_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~9_sumout\,
	datad => \ALT_INV_Prod~51_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add14~2\,
	sumout => \Add14~5_sumout\,
	cout => \Add14~6\);

\Booth~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Booth~7_combout\ = (\EntradaB[4]~input_o\ & !\EntradaB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	combout => \Booth~7_combout\);

\Prod~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~16_combout\ = (\Booth~7_combout\ & \Add11~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~7_combout\,
	datab => \ALT_INV_Add11~9_sumout\,
	combout => \Prod~16_combout\);

\Prod~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~21_combout\ = ( \Prod~20_combout\ & ( \Add12~9_sumout\ & ( ((!\EntradaB[4]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~13_sumout\)))) # (\EntradaB[5]~input_o\) ) ) ) # ( !\Prod~20_combout\ & ( \Add12~9_sumout\ & ( (!\EntradaB[4]~input_o\ & 
-- (((\EntradaB[3]~input_o\ & \Add9~13_sumout\)) # (\EntradaB[5]~input_o\))) ) ) ) # ( \Prod~20_combout\ & ( !\Add12~9_sumout\ & ( (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~13_sumout\)))) # (\EntradaB[4]~input_o\ 
-- & (((\EntradaB[5]~input_o\)))) ) ) ) # ( !\Prod~20_combout\ & ( !\Add12~9_sumout\ & ( (\EntradaB[3]~input_o\ & (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & \Add9~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_EntradaB[5]~input_o\,
	datad => \ALT_INV_Add9~13_sumout\,
	datae => \ALT_INV_Prod~20_combout\,
	dataf => \ALT_INV_Add12~9_sumout\,
	combout => \Prod~21_combout\);

\Prod~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~50_combout\ = (!\Booth~9_combout\ & (((\Prod~21_combout\) # (\Prod~16_combout\)))) # (\Booth~9_combout\ & (\Add14~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~9_combout\,
	datab => \ALT_INV_Add14~5_sumout\,
	datac => \ALT_INV_Prod~16_combout\,
	datad => \ALT_INV_Prod~21_combout\,
	combout => \Prod~50_combout\);

\Add16~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add16~34_cout\);

\Add16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~1_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~50_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~5_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~50_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add16~34_cout\ ))
-- \Add16~2\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~50_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~5_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~50_combout\))))) ) + ( !\EntradaA[0]~input_o\ ) + ( \Add16~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~5_sumout\,
	datad => \ALT_INV_Prod~50_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => \Add16~34_cout\,
	sumout => \Add16~1_sumout\,
	cout => \Add16~2\);

\Prod~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~22_combout\ = ( \Prod~16_combout\ & ( \Prod~21_combout\ & ( (!\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\) # ((\Add14~5_sumout\)))) # (\EntradaB[5]~input_o\ & (((\Add13~5_sumout\)) # (\EntradaB[6]~input_o\))) ) ) ) # ( !\Prod~16_combout\ & ( 
-- \Prod~21_combout\ & ( (!\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\) # ((\Add14~5_sumout\)))) # (\EntradaB[5]~input_o\ & (((\Add13~5_sumout\)) # (\EntradaB[6]~input_o\))) ) ) ) # ( \Prod~16_combout\ & ( !\Prod~21_combout\ & ( (!\EntradaB[5]~input_o\ 
-- & ((!\EntradaB[6]~input_o\) # ((\Add14~5_sumout\)))) # (\EntradaB[5]~input_o\ & (((\Add13~5_sumout\)) # (\EntradaB[6]~input_o\))) ) ) ) # ( !\Prod~16_combout\ & ( !\Prod~21_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & 
-- ((\Add14~5_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (\Add13~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111110011101101111111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~5_sumout\,
	datad => \ALT_INV_Add14~5_sumout\,
	datae => \ALT_INV_Prod~16_combout\,
	dataf => \ALT_INV_Prod~21_combout\,
	combout => \Prod~22_combout\);

\Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~1_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~50_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~5_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~50_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))
-- \Add15~2\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~50_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~5_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~50_combout\))))) ) + ( \EntradaA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~5_sumout\,
	datad => \ALT_INV_Prod~50_combout\,
	dataf => \ALT_INV_EntradaA[0]~input_o\,
	cin => GND,
	sumout => \Add15~1_sumout\,
	cout => \Add15~2\);

\Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = ( !\Controle_ULA[0]~input_o\ & ( (!\EntradaB[7]~input_o\ & (((!\EntradaB[6]~input_o\ & (\Prod~22_combout\)) # (\EntradaB[6]~input_o\ & ((\Add15~1_sumout\)))))) # (\EntradaB[7]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add16~1_sumout\)) # 
-- (\EntradaB[6]~input_o\ & (((\Prod~22_combout\)))))) ) ) # ( \Controle_ULA[0]~input_o\ & ( (\EntradaB[7]~input_o\ & (((\EntradaA[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000010110101000001010000010100011010101111110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[7]~input_o\,
	datab => \ALT_INV_Add16~1_sumout\,
	datac => \ALT_INV_EntradaA[7]~input_o\,
	datad => \ALT_INV_Prod~22_combout\,
	datae => \ALT_INV_Controle_ULA[0]~input_o\,
	dataf => \ALT_INV_Add15~1_sumout\,
	datag => \ALT_INV_EntradaB[6]~input_o\,
	combout => \Mux8~4_combout\);

\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\Controle_ULA[2]~input_o\ & (\Controle_ULA[1]~input_o\ & \Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux15~1_combout\,
	combout => \Mux8~1_combout\);

\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux15~1_combout\ & (((!\Controle_ULA[0]~input_o\) # (\Controle_ULA[1]~input_o\)) # (\Controle_ULA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111100000000110111110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux15~1_combout\,
	combout => \Mux7~2_combout\);

\Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (!\Controle_ULA[1]~input_o\ & (\Mux15~1_combout\ & (!\Controle_ULA[2]~input_o\ $ (!\Controle_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000000000000110000000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux15~1_combout\,
	combout => \Mux7~3_combout\);

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

\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \Add1~29_sumout\ & ( (\Mux7~3_combout\ & (((!\Mux7~2_combout\) # (\EntradaA[7]~input_o\)) # (\EntradaB[7]~input_o\))) ) ) # ( !\Add1~29_sumout\ & ( (\Mux7~2_combout\ & (\Mux7~3_combout\ & ((\EntradaA[7]~input_o\) # 
-- (\EntradaB[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000001111011100000000000001110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[7]~input_o\,
	datab => \ALT_INV_EntradaA[7]~input_o\,
	datac => \ALT_INV_Mux7~2_combout\,
	datad => \ALT_INV_Mux7~3_combout\,
	datae => \ALT_INV_Add1~29_sumout\,
	combout => \Mux8~2_combout\);

\Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( \Mux8~2_combout\ ) # ( !\Mux8~2_combout\ & ( (!\Add0~29_sumout\ & (((\Mux8~4_combout\ & \Mux8~1_combout\)))) # (\Add0~29_sumout\ & (((\Mux8~4_combout\ & \Mux8~1_combout\)) # (\Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111100010001000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_Mux8~4_combout\,
	datad => \ALT_INV_Mux8~1_combout\,
	datae => \ALT_INV_Mux8~2_combout\,
	combout => \Mux8~3_combout\);

\EntradaB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(8),
	o => \EntradaB[8]~input_o\);

\EntradaA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(8),
	o => \EntradaA[8]~input_o\);

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

\Splitter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Splitter~0_combout\ = (\EntradaB[8]~input_o\ & \EntradaA[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[8]~input_o\,
	datab => \ALT_INV_EntradaA[8]~input_o\,
	combout => \Splitter~0_combout\);

\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~29_sumout\) ) + ( \EntradaA[7]~input_o\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~29_sumout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\);

\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( (\EntradaB[0]~input_o\ & \Add2~29_sumout\) ) + ( !\EntradaA[7]~input_o\ ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datad => \ALT_INV_Add2~29_sumout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\);

\Prod~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~24_combout\ = (!\EntradaB[0]~input_o\ & (\EntradaB[1]~input_o\ & ((\Add4~29_sumout\)))) # (\EntradaB[0]~input_o\ & (((\Add2~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add2~29_sumout\,
	datad => \ALT_INV_Add4~29_sumout\,
	combout => \Prod~24_combout\);

\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~24_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~29_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~24_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~24_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~29_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~24_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_Prod~24_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~24_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~29_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~24_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( (!\EntradaB[0]~input_o\ & (((\Prod~24_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~29_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~24_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_Prod~24_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

\Prod~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~25_combout\ = ( \Add6~25_sumout\ & ( ((!\Booth~0_combout\ & ((\Prod~24_combout\))) # (\Booth~0_combout\ & (\Add3~29_sumout\))) # (\Booth~2_combout\) ) ) # ( !\Add6~25_sumout\ & ( (!\Booth~2_combout\ & ((!\Booth~0_combout\ & ((\Prod~24_combout\))) # 
-- (\Booth~0_combout\ & (\Add3~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~0_combout\,
	datab => \ALT_INV_Booth~2_combout\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_Prod~24_combout\,
	datae => \ALT_INV_Add6~25_sumout\,
	combout => \Prod~25_combout\);

\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~25_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~25_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~25_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~25_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~25_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~25_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~25_sumout\,
	datad => \ALT_INV_Prod~25_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~25_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~25_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~25_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~25_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~25_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~25_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~25_sumout\,
	datad => \ALT_INV_Prod~25_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

\Prod~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~26_combout\ = ( \Add8~21_sumout\ & ( ((!\Booth~1_combout\ & ((\Prod~25_combout\))) # (\Booth~1_combout\ & (\Add5~25_sumout\))) # (\Booth~4_combout\) ) ) # ( !\Add8~21_sumout\ & ( (!\Booth~4_combout\ & ((!\Booth~1_combout\ & ((\Prod~25_combout\))) # 
-- (\Booth~1_combout\ & (\Add5~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~1_combout\,
	datab => \ALT_INV_Booth~4_combout\,
	datac => \ALT_INV_Add5~25_sumout\,
	datad => \ALT_INV_Prod~25_combout\,
	datae => \ALT_INV_Add8~21_sumout\,
	combout => \Prod~26_combout\);

\Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~26_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~21_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~26_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~26_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~21_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~26_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~21_sumout\,
	datad => \ALT_INV_Prod~26_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add9~14\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\);

\Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~26_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~21_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~26_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~26_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~21_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~26_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~21_sumout\,
	datad => \ALT_INV_Prod~26_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add10~14\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\);

\Prod~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~27_combout\ = ( \Add10~17_sumout\ & ( ((!\Booth~3_combout\ & ((\Prod~26_combout\))) # (\Booth~3_combout\ & (\Add7~21_sumout\))) # (\Booth~6_combout\) ) ) # ( !\Add10~17_sumout\ & ( (!\Booth~6_combout\ & ((!\Booth~3_combout\ & ((\Prod~26_combout\))) 
-- # (\Booth~3_combout\ & (\Add7~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~3_combout\,
	datab => \ALT_INV_Booth~6_combout\,
	datac => \ALT_INV_Add7~21_sumout\,
	datad => \ALT_INV_Prod~26_combout\,
	datae => \ALT_INV_Add10~17_sumout\,
	combout => \Prod~27_combout\);

\Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~27_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~17_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~27_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~27_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~17_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~27_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~17_sumout\,
	datad => \ALT_INV_Prod~27_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add11~10\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\);

\Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~13_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~27_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~17_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~27_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add12~10\ ))
-- \Add12~14\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~27_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~17_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~27_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~17_sumout\,
	datad => \ALT_INV_Prod~27_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add12~10\,
	sumout => \Add12~13_sumout\,
	cout => \Add12~14\);

\Prod~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~53_combout\ = ( \Add12~13_sumout\ & ( ((!\Booth~5_combout\ & ((\Prod~27_combout\))) # (\Booth~5_combout\ & (\Add9~17_sumout\))) # (\Booth~8_combout\) ) ) # ( !\Add12~13_sumout\ & ( (!\Booth~8_combout\ & ((!\Booth~5_combout\ & ((\Prod~27_combout\))) 
-- # (\Booth~5_combout\ & (\Add9~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~5_combout\,
	datab => \ALT_INV_Booth~8_combout\,
	datac => \ALT_INV_Add9~17_sumout\,
	datad => \ALT_INV_Prod~27_combout\,
	datae => \ALT_INV_Add12~13_sumout\,
	combout => \Prod~53_combout\);

\Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~9_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~53_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~13_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~53_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add13~6\ ))
-- \Add13~10\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~53_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~13_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~53_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~13_sumout\,
	datad => \ALT_INV_Prod~53_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add13~6\,
	sumout => \Add13~9_sumout\,
	cout => \Add13~10\);

\Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~9_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~53_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~13_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~53_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add14~6\ ))
-- \Add14~10\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~53_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~13_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~53_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~13_sumout\,
	datad => \ALT_INV_Prod~53_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add14~6\,
	sumout => \Add14~9_sumout\,
	cout => \Add14~10\);

\Prod~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~23_combout\ = (\Booth~7_combout\ & \Add11~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~7_combout\,
	datab => \ALT_INV_Add11~13_sumout\,
	combout => \Prod~23_combout\);

\Prod~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~28_combout\ = ( \Prod~27_combout\ & ( \Add12~13_sumout\ & ( ((!\EntradaB[4]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~17_sumout\)))) # (\EntradaB[5]~input_o\) ) ) ) # ( !\Prod~27_combout\ & ( \Add12~13_sumout\ & ( (!\EntradaB[4]~input_o\ & 
-- (((\EntradaB[3]~input_o\ & \Add9~17_sumout\)) # (\EntradaB[5]~input_o\))) ) ) ) # ( \Prod~27_combout\ & ( !\Add12~13_sumout\ & ( (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~17_sumout\)))) # (\EntradaB[4]~input_o\ 
-- & (((\EntradaB[5]~input_o\)))) ) ) ) # ( !\Prod~27_combout\ & ( !\Add12~13_sumout\ & ( (\EntradaB[3]~input_o\ & (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & \Add9~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_EntradaB[5]~input_o\,
	datad => \ALT_INV_Add9~17_sumout\,
	datae => \ALT_INV_Prod~27_combout\,
	dataf => \ALT_INV_Add12~13_sumout\,
	combout => \Prod~28_combout\);

\Prod~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~52_combout\ = (!\Booth~9_combout\ & (((\Prod~28_combout\) # (\Prod~23_combout\)))) # (\Booth~9_combout\ & (\Add14~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~9_combout\,
	datab => \ALT_INV_Add14~9_sumout\,
	datac => \ALT_INV_Prod~23_combout\,
	datad => \ALT_INV_Prod~28_combout\,
	combout => \Prod~52_combout\);

\Add15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~5_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~52_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~9_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~52_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add15~2\ ))
-- \Add15~6\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~52_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~9_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~52_combout\))))) ) + ( \EntradaA[1]~input_o\ ) + ( \Add15~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~9_sumout\,
	datad => \ALT_INV_Prod~52_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add15~2\,
	sumout => \Add15~5_sumout\,
	cout => \Add15~6\);

\Prod~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~29_combout\ = ( \Prod~23_combout\ & ( \Prod~28_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~9_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~9_sumout\))) ) ) ) # ( !\Prod~23_combout\ & ( 
-- \Prod~28_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~9_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~9_sumout\))) ) ) ) # ( \Prod~23_combout\ & ( !\Prod~28_combout\ & ( (!\EntradaB[5]~input_o\ & 
-- (\EntradaB[6]~input_o\ & ((!\Add14~9_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~9_sumout\))) ) ) ) # ( !\Prod~23_combout\ & ( !\Prod~28_combout\ & ( (!\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\) # 
-- ((!\Add14~9_sumout\)))) # (\EntradaB[5]~input_o\ & (((!\Add13~9_sumout\)) # (\EntradaB[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111011001011000100100000001100010010000000110001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~9_sumout\,
	datad => \ALT_INV_Add14~9_sumout\,
	datae => \ALT_INV_Prod~23_combout\,
	dataf => \ALT_INV_Prod~28_combout\,
	combout => \Prod~29_combout\);

\Add16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~5_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~52_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~9_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~52_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add16~2\ ))
-- \Add16~6\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~52_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~9_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~52_combout\))))) ) + ( !\EntradaA[1]~input_o\ ) + ( \Add16~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~9_sumout\,
	datad => \ALT_INV_Prod~52_combout\,
	dataf => \ALT_INV_EntradaA[1]~input_o\,
	cin => \Add16~2\,
	sumout => \Add16~5_sumout\,
	cout => \Add16~6\);

\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\Controle_ULA[0]~input_o\ & (!\EntradaB[6]~input_o\ $ (!\EntradaB[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_EntradaB[7]~input_o\,
	combout => \Mux7~0_combout\);

\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\Controle_ULA[0]~input_o\ & ((!\EntradaB[6]~input_o\) # (\EntradaB[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_EntradaB[7]~input_o\,
	combout => \Mux7~1_combout\);

\Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = ( \Mux7~0_combout\ & ( \Mux7~1_combout\ & ( \Add16~5_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( \Mux7~1_combout\ & ( !\Prod~29_combout\ ) ) ) # ( \Mux7~0_combout\ & ( !\Mux7~1_combout\ & ( \Add15~5_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( 
-- !\Mux7~1_combout\ & ( \Splitter~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Splitter~0_combout\,
	datab => \ALT_INV_Add15~5_sumout\,
	datac => \ALT_INV_Prod~29_combout\,
	datad => \ALT_INV_Add16~5_sumout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux7~4_combout\);

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

\Mux7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = ( \Add1~33_sumout\ & ( (\Mux7~3_combout\ & ((!\Mux7~2_combout\) # ((\EntradaA[8]~input_o\) # (\EntradaB[8]~input_o\)))) ) ) # ( !\Add1~33_sumout\ & ( (\Mux7~2_combout\ & (\Mux7~3_combout\ & ((\EntradaA[8]~input_o\) # 
-- (\EntradaB[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001001000110011001100000001000100010010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_Mux7~3_combout\,
	datac => \ALT_INV_EntradaB[8]~input_o\,
	datad => \ALT_INV_EntradaA[8]~input_o\,
	datae => \ALT_INV_Add1~33_sumout\,
	combout => \Mux7~5_combout\);

\Mux7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = ( \Mux7~5_combout\ ) # ( !\Mux7~5_combout\ & ( (!\Mux8~0_combout\ & (\Mux8~1_combout\ & ((\Mux7~4_combout\)))) # (\Mux8~0_combout\ & (((\Mux8~1_combout\ & \Mux7~4_combout\)) # (\Add0~33_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_Mux7~4_combout\,
	datae => \ALT_INV_Mux7~5_combout\,
	combout => \Mux7~6_combout\);

\EntradaB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(9),
	o => \EntradaB[9]~input_o\);

\EntradaA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(9),
	o => \EntradaA[9]~input_o\);

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

\Splitter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Splitter~1_combout\ = (\EntradaB[9]~input_o\ & \EntradaA[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[9]~input_o\,
	datab => \ALT_INV_EntradaA[9]~input_o\,
	combout => \Splitter~1_combout\);

\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~24_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~29_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~24_combout\))))) ) + ( \EntradaA[7]~input_o\ ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_Prod~24_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\);

\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( (!\EntradaB[0]~input_o\ & (((\Prod~24_combout\)))) # (\EntradaB[0]~input_o\ & ((!\EntradaB[1]~input_o\ & (\Add3~29_sumout\)) # (\EntradaB[1]~input_o\ & ((\Prod~24_combout\))))) ) + ( !\EntradaA[7]~input_o\ ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[0]~input_o\,
	datab => \ALT_INV_EntradaB[1]~input_o\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_Prod~24_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\);

\Prod~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~31_combout\ = ( \Add6~29_sumout\ & ( ((!\Booth~0_combout\ & ((\Prod~24_combout\))) # (\Booth~0_combout\ & (\Add3~29_sumout\))) # (\Booth~2_combout\) ) ) # ( !\Add6~29_sumout\ & ( (!\Booth~2_combout\ & ((!\Booth~0_combout\ & ((\Prod~24_combout\))) # 
-- (\Booth~0_combout\ & (\Add3~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~0_combout\,
	datab => \ALT_INV_Booth~2_combout\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_Prod~24_combout\,
	datae => \ALT_INV_Add6~29_sumout\,
	combout => \Prod~31_combout\);

\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~31_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~29_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~31_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~31_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~29_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~31_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_Prod~31_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~31_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~29_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~31_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( (!\EntradaB[1]~input_o\ & (((\Prod~31_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~29_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~31_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_Prod~31_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

\Prod~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~32_combout\ = ( \Add8~25_sumout\ & ( ((!\Booth~1_combout\ & ((\Prod~31_combout\))) # (\Booth~1_combout\ & (\Add5~29_sumout\))) # (\Booth~4_combout\) ) ) # ( !\Add8~25_sumout\ & ( (!\Booth~4_combout\ & ((!\Booth~1_combout\ & ((\Prod~31_combout\))) # 
-- (\Booth~1_combout\ & (\Add5~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~1_combout\,
	datab => \ALT_INV_Booth~4_combout\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_Prod~31_combout\,
	datae => \ALT_INV_Add8~25_sumout\,
	combout => \Prod~32_combout\);

\Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~32_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~25_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~32_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~32_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~25_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~32_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~25_sumout\,
	datad => \ALT_INV_Prod~32_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add9~18\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\);

\Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~32_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~25_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~32_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~32_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~25_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~32_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~25_sumout\,
	datad => \ALT_INV_Prod~32_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add10~18\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\);

\Prod~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~33_combout\ = ( \Add10~21_sumout\ & ( ((!\Booth~3_combout\ & ((\Prod~32_combout\))) # (\Booth~3_combout\ & (\Add7~25_sumout\))) # (\Booth~6_combout\) ) ) # ( !\Add10~21_sumout\ & ( (!\Booth~6_combout\ & ((!\Booth~3_combout\ & ((\Prod~32_combout\))) 
-- # (\Booth~3_combout\ & (\Add7~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~3_combout\,
	datab => \ALT_INV_Booth~6_combout\,
	datac => \ALT_INV_Add7~25_sumout\,
	datad => \ALT_INV_Prod~32_combout\,
	datae => \ALT_INV_Add10~21_sumout\,
	combout => \Prod~33_combout\);

\Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~33_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~21_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~33_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~33_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~21_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~33_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~21_sumout\,
	datad => \ALT_INV_Prod~33_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add11~14\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\);

\Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~17_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~33_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~21_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~33_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add12~14\ ))
-- \Add12~18\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~33_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~21_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~33_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~21_sumout\,
	datad => \ALT_INV_Prod~33_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add12~14\,
	sumout => \Add12~17_sumout\,
	cout => \Add12~18\);

\Prod~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~55_combout\ = ( \Add12~17_sumout\ & ( ((!\Booth~5_combout\ & ((\Prod~33_combout\))) # (\Booth~5_combout\ & (\Add9~21_sumout\))) # (\Booth~8_combout\) ) ) # ( !\Add12~17_sumout\ & ( (!\Booth~8_combout\ & ((!\Booth~5_combout\ & ((\Prod~33_combout\))) 
-- # (\Booth~5_combout\ & (\Add9~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~5_combout\,
	datab => \ALT_INV_Booth~8_combout\,
	datac => \ALT_INV_Add9~21_sumout\,
	datad => \ALT_INV_Prod~33_combout\,
	datae => \ALT_INV_Add12~17_sumout\,
	combout => \Prod~55_combout\);

\Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~13_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~55_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~17_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~55_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add13~10\ ))
-- \Add13~14\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~55_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~17_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~55_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~17_sumout\,
	datad => \ALT_INV_Prod~55_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add13~10\,
	sumout => \Add13~13_sumout\,
	cout => \Add13~14\);

\Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~13_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~55_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~17_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~55_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add14~10\ ))
-- \Add14~14\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~55_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~17_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~55_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~17_sumout\,
	datad => \ALT_INV_Prod~55_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add14~10\,
	sumout => \Add14~13_sumout\,
	cout => \Add14~14\);

\Prod~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~30_combout\ = (\Booth~7_combout\ & \Add11~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~7_combout\,
	datab => \ALT_INV_Add11~17_sumout\,
	combout => \Prod~30_combout\);

\Prod~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~34_combout\ = ( \Prod~33_combout\ & ( \Add12~17_sumout\ & ( ((!\EntradaB[4]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~21_sumout\)))) # (\EntradaB[5]~input_o\) ) ) ) # ( !\Prod~33_combout\ & ( \Add12~17_sumout\ & ( (!\EntradaB[4]~input_o\ & 
-- (((\EntradaB[3]~input_o\ & \Add9~21_sumout\)) # (\EntradaB[5]~input_o\))) ) ) ) # ( \Prod~33_combout\ & ( !\Add12~17_sumout\ & ( (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~21_sumout\)))) # (\EntradaB[4]~input_o\ 
-- & (((\EntradaB[5]~input_o\)))) ) ) ) # ( !\Prod~33_combout\ & ( !\Add12~17_sumout\ & ( (\EntradaB[3]~input_o\ & (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & \Add9~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_EntradaB[5]~input_o\,
	datad => \ALT_INV_Add9~21_sumout\,
	datae => \ALT_INV_Prod~33_combout\,
	dataf => \ALT_INV_Add12~17_sumout\,
	combout => \Prod~34_combout\);

\Prod~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~54_combout\ = (!\Booth~9_combout\ & (((\Prod~34_combout\) # (\Prod~30_combout\)))) # (\Booth~9_combout\ & (\Add14~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~9_combout\,
	datab => \ALT_INV_Add14~13_sumout\,
	datac => \ALT_INV_Prod~30_combout\,
	datad => \ALT_INV_Prod~34_combout\,
	combout => \Prod~54_combout\);

\Add15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~9_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~54_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~13_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~54_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add15~6\ ))
-- \Add15~10\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~54_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~13_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~54_combout\))))) ) + ( \EntradaA[2]~input_o\ ) + ( \Add15~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~13_sumout\,
	datad => \ALT_INV_Prod~54_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add15~6\,
	sumout => \Add15~9_sumout\,
	cout => \Add15~10\);

\Prod~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~35_combout\ = ( \Prod~30_combout\ & ( \Prod~34_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~13_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~13_sumout\))) ) ) ) # ( !\Prod~30_combout\ & ( 
-- \Prod~34_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~13_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~13_sumout\))) ) ) ) # ( \Prod~30_combout\ & ( !\Prod~34_combout\ & ( (!\EntradaB[5]~input_o\ & 
-- (\EntradaB[6]~input_o\ & ((!\Add14~13_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~13_sumout\))) ) ) ) # ( !\Prod~30_combout\ & ( !\Prod~34_combout\ & ( (!\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\) # 
-- ((!\Add14~13_sumout\)))) # (\EntradaB[5]~input_o\ & (((!\Add13~13_sumout\)) # (\EntradaB[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111011001011000100100000001100010010000000110001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~13_sumout\,
	datad => \ALT_INV_Add14~13_sumout\,
	datae => \ALT_INV_Prod~30_combout\,
	dataf => \ALT_INV_Prod~34_combout\,
	combout => \Prod~35_combout\);

\Add16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~9_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~54_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~13_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~54_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add16~6\ ))
-- \Add16~10\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~54_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~13_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~54_combout\))))) ) + ( !\EntradaA[2]~input_o\ ) + ( \Add16~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~13_sumout\,
	datad => \ALT_INV_Prod~54_combout\,
	dataf => \ALT_INV_EntradaA[2]~input_o\,
	cin => \Add16~6\,
	sumout => \Add16~9_sumout\,
	cout => \Add16~10\);

\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Mux7~0_combout\ & ( \Mux7~1_combout\ & ( \Add16~9_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( \Mux7~1_combout\ & ( !\Prod~35_combout\ ) ) ) # ( \Mux7~0_combout\ & ( !\Mux7~1_combout\ & ( \Add15~9_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( 
-- !\Mux7~1_combout\ & ( \Splitter~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Splitter~1_combout\,
	datab => \ALT_INV_Add15~9_sumout\,
	datac => \ALT_INV_Prod~35_combout\,
	datad => \ALT_INV_Add16~9_sumout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux6~0_combout\);

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

\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \Add1~37_sumout\ & ( (\Mux7~3_combout\ & ((!\Mux7~2_combout\) # ((\EntradaA[9]~input_o\) # (\EntradaB[9]~input_o\)))) ) ) # ( !\Add1~37_sumout\ & ( (\Mux7~2_combout\ & (\Mux7~3_combout\ & ((\EntradaA[9]~input_o\) # 
-- (\EntradaB[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001001000110011001100000001000100010010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_Mux7~3_combout\,
	datac => \ALT_INV_EntradaB[9]~input_o\,
	datad => \ALT_INV_EntradaA[9]~input_o\,
	datae => \ALT_INV_Add1~37_sumout\,
	combout => \Mux6~1_combout\);

\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \Mux6~1_combout\ ) # ( !\Mux6~1_combout\ & ( (!\Mux8~0_combout\ & (\Mux8~1_combout\ & ((\Mux6~0_combout\)))) # (\Mux8~0_combout\ & (((\Mux8~1_combout\ & \Mux6~0_combout\)) # (\Add0~37_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_Add0~37_sumout\,
	datad => \ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_Mux6~1_combout\,
	combout => \Mux6~2_combout\);

\EntradaB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(10),
	o => \EntradaB[10]~input_o\);

\EntradaA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(10),
	o => \EntradaA[10]~input_o\);

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

\Splitter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Splitter~2_combout\ = (\EntradaB[10]~input_o\ & \EntradaA[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[10]~input_o\,
	datab => \ALT_INV_EntradaA[10]~input_o\,
	combout => \Splitter~2_combout\);

\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~31_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~29_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~31_combout\))))) ) + ( \EntradaA[7]~input_o\ ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_Prod~31_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\);

\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( (!\EntradaB[1]~input_o\ & (((\Prod~31_combout\)))) # (\EntradaB[1]~input_o\ & ((!\EntradaB[2]~input_o\ & (\Add5~29_sumout\)) # (\EntradaB[2]~input_o\ & ((\Prod~31_combout\))))) ) + ( !\EntradaA[7]~input_o\ ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[1]~input_o\,
	datab => \ALT_INV_EntradaB[2]~input_o\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_Prod~31_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add8~26\,
	sumout => \Add8~29_sumout\);

\Prod~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~37_combout\ = ( \Add8~29_sumout\ & ( ((!\Booth~1_combout\ & ((\Prod~31_combout\))) # (\Booth~1_combout\ & (\Add5~29_sumout\))) # (\Booth~4_combout\) ) ) # ( !\Add8~29_sumout\ & ( (!\Booth~4_combout\ & ((!\Booth~1_combout\ & ((\Prod~31_combout\))) # 
-- (\Booth~1_combout\ & (\Add5~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~1_combout\,
	datab => \ALT_INV_Booth~4_combout\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_Prod~31_combout\,
	datae => \ALT_INV_Add8~29_sumout\,
	combout => \Prod~37_combout\);

\Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~37_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~29_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~37_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~37_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~29_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~37_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_Prod~37_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add9~22\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\);

\Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~37_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~29_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~37_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( (!\EntradaB[2]~input_o\ & (((\Prod~37_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~29_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~37_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_Prod~37_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add10~22\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\);

\Prod~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~38_combout\ = ( \Add10~25_sumout\ & ( ((!\Booth~3_combout\ & ((\Prod~37_combout\))) # (\Booth~3_combout\ & (\Add7~29_sumout\))) # (\Booth~6_combout\) ) ) # ( !\Add10~25_sumout\ & ( (!\Booth~6_combout\ & ((!\Booth~3_combout\ & ((\Prod~37_combout\))) 
-- # (\Booth~3_combout\ & (\Add7~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~3_combout\,
	datab => \ALT_INV_Booth~6_combout\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_Prod~37_combout\,
	datae => \ALT_INV_Add10~25_sumout\,
	combout => \Prod~38_combout\);

\Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~38_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~25_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~38_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~38_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~25_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~38_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~25_sumout\,
	datad => \ALT_INV_Prod~38_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add11~18\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\);

\Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~21_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~38_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~25_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~38_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add12~18\ ))
-- \Add12~22\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~38_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~25_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~38_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~25_sumout\,
	datad => \ALT_INV_Prod~38_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add12~18\,
	sumout => \Add12~21_sumout\,
	cout => \Add12~22\);

\Prod~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~57_combout\ = ( \Add12~21_sumout\ & ( ((!\Booth~5_combout\ & ((\Prod~38_combout\))) # (\Booth~5_combout\ & (\Add9~25_sumout\))) # (\Booth~8_combout\) ) ) # ( !\Add12~21_sumout\ & ( (!\Booth~8_combout\ & ((!\Booth~5_combout\ & ((\Prod~38_combout\))) 
-- # (\Booth~5_combout\ & (\Add9~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~5_combout\,
	datab => \ALT_INV_Booth~8_combout\,
	datac => \ALT_INV_Add9~25_sumout\,
	datad => \ALT_INV_Prod~38_combout\,
	datae => \ALT_INV_Add12~21_sumout\,
	combout => \Prod~57_combout\);

\Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~17_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~57_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~21_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~57_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add13~14\ ))
-- \Add13~18\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~57_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~21_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~57_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~21_sumout\,
	datad => \ALT_INV_Prod~57_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add13~14\,
	sumout => \Add13~17_sumout\,
	cout => \Add13~18\);

\Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~17_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~57_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~21_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~57_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add14~14\ ))
-- \Add14~18\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~57_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~21_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~57_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~21_sumout\,
	datad => \ALT_INV_Prod~57_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add14~14\,
	sumout => \Add14~17_sumout\,
	cout => \Add14~18\);

\Prod~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~36_combout\ = (\Booth~7_combout\ & \Add11~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~7_combout\,
	datab => \ALT_INV_Add11~21_sumout\,
	combout => \Prod~36_combout\);

\Prod~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~39_combout\ = ( \Prod~38_combout\ & ( \Add12~21_sumout\ & ( ((!\EntradaB[4]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~25_sumout\)))) # (\EntradaB[5]~input_o\) ) ) ) # ( !\Prod~38_combout\ & ( \Add12~21_sumout\ & ( (!\EntradaB[4]~input_o\ & 
-- (((\EntradaB[3]~input_o\ & \Add9~25_sumout\)) # (\EntradaB[5]~input_o\))) ) ) ) # ( \Prod~38_combout\ & ( !\Add12~21_sumout\ & ( (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~25_sumout\)))) # (\EntradaB[4]~input_o\ 
-- & (((\EntradaB[5]~input_o\)))) ) ) ) # ( !\Prod~38_combout\ & ( !\Add12~21_sumout\ & ( (\EntradaB[3]~input_o\ & (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & \Add9~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_EntradaB[5]~input_o\,
	datad => \ALT_INV_Add9~25_sumout\,
	datae => \ALT_INV_Prod~38_combout\,
	dataf => \ALT_INV_Add12~21_sumout\,
	combout => \Prod~39_combout\);

\Prod~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~56_combout\ = (!\Booth~9_combout\ & (((\Prod~39_combout\) # (\Prod~36_combout\)))) # (\Booth~9_combout\ & (\Add14~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~9_combout\,
	datab => \ALT_INV_Add14~17_sumout\,
	datac => \ALT_INV_Prod~36_combout\,
	datad => \ALT_INV_Prod~39_combout\,
	combout => \Prod~56_combout\);

\Add15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~13_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~56_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~17_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~56_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add15~10\ ))
-- \Add15~14\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~56_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~17_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~56_combout\))))) ) + ( \EntradaA[3]~input_o\ ) + ( \Add15~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~17_sumout\,
	datad => \ALT_INV_Prod~56_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add15~10\,
	sumout => \Add15~13_sumout\,
	cout => \Add15~14\);

\Prod~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~40_combout\ = ( \Prod~36_combout\ & ( \Prod~39_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~17_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~17_sumout\))) ) ) ) # ( !\Prod~36_combout\ & ( 
-- \Prod~39_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~17_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~17_sumout\))) ) ) ) # ( \Prod~36_combout\ & ( !\Prod~39_combout\ & ( (!\EntradaB[5]~input_o\ & 
-- (\EntradaB[6]~input_o\ & ((!\Add14~17_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~17_sumout\))) ) ) ) # ( !\Prod~36_combout\ & ( !\Prod~39_combout\ & ( (!\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\) # 
-- ((!\Add14~17_sumout\)))) # (\EntradaB[5]~input_o\ & (((!\Add13~17_sumout\)) # (\EntradaB[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111011001011000100100000001100010010000000110001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~17_sumout\,
	datad => \ALT_INV_Add14~17_sumout\,
	datae => \ALT_INV_Prod~36_combout\,
	dataf => \ALT_INV_Prod~39_combout\,
	combout => \Prod~40_combout\);

\Add16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~13_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~56_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~17_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~56_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add16~10\ ))
-- \Add16~14\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~56_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~17_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~56_combout\))))) ) + ( !\EntradaA[3]~input_o\ ) + ( \Add16~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~17_sumout\,
	datad => \ALT_INV_Prod~56_combout\,
	dataf => \ALT_INV_EntradaA[3]~input_o\,
	cin => \Add16~10\,
	sumout => \Add16~13_sumout\,
	cout => \Add16~14\);

\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Mux7~0_combout\ & ( \Mux7~1_combout\ & ( \Add16~13_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( \Mux7~1_combout\ & ( !\Prod~40_combout\ ) ) ) # ( \Mux7~0_combout\ & ( !\Mux7~1_combout\ & ( \Add15~13_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( 
-- !\Mux7~1_combout\ & ( \Splitter~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Splitter~2_combout\,
	datab => \ALT_INV_Add15~13_sumout\,
	datac => \ALT_INV_Prod~40_combout\,
	datad => \ALT_INV_Add16~13_sumout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux5~0_combout\);

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

\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Add1~41_sumout\ & ( (\Mux7~3_combout\ & ((!\Mux7~2_combout\) # ((\EntradaA[10]~input_o\) # (\EntradaB[10]~input_o\)))) ) ) # ( !\Add1~41_sumout\ & ( (\Mux7~2_combout\ & (\Mux7~3_combout\ & ((\EntradaA[10]~input_o\) # 
-- (\EntradaB[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001001000110011001100000001000100010010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_Mux7~3_combout\,
	datac => \ALT_INV_EntradaB[10]~input_o\,
	datad => \ALT_INV_EntradaA[10]~input_o\,
	datae => \ALT_INV_Add1~41_sumout\,
	combout => \Mux5~1_combout\);

\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Mux5~1_combout\ ) # ( !\Mux5~1_combout\ & ( (!\Mux8~0_combout\ & (\Mux8~1_combout\ & ((\Mux5~0_combout\)))) # (\Mux8~0_combout\ & (((\Mux8~1_combout\ & \Mux5~0_combout\)) # (\Add0~41_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_Mux5~1_combout\,
	combout => \Mux5~2_combout\);

\EntradaB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(11),
	o => \EntradaB[11]~input_o\);

\EntradaA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(11),
	o => \EntradaA[11]~input_o\);

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

\Splitter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Splitter~3_combout\ = (\EntradaB[11]~input_o\ & \EntradaA[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[11]~input_o\,
	datab => \ALT_INV_EntradaA[11]~input_o\,
	combout => \Splitter~3_combout\);

\Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~37_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~29_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~37_combout\))))) ) + ( \EntradaA[7]~input_o\ ) + ( \Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_Prod~37_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add9~26\,
	sumout => \Add9~29_sumout\);

\Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( (!\EntradaB[2]~input_o\ & (((\Prod~37_combout\)))) # (\EntradaB[2]~input_o\ & ((!\EntradaB[3]~input_o\ & (\Add7~29_sumout\)) # (\EntradaB[3]~input_o\ & ((\Prod~37_combout\))))) ) + ( !\EntradaA[7]~input_o\ ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[2]~input_o\,
	datab => \ALT_INV_EntradaB[3]~input_o\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_Prod~37_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add10~26\,
	sumout => \Add10~29_sumout\);

\Prod~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~42_combout\ = ( \Add10~29_sumout\ & ( ((!\Booth~3_combout\ & ((\Prod~37_combout\))) # (\Booth~3_combout\ & (\Add7~29_sumout\))) # (\Booth~6_combout\) ) ) # ( !\Add10~29_sumout\ & ( (!\Booth~6_combout\ & ((!\Booth~3_combout\ & ((\Prod~37_combout\))) 
-- # (\Booth~3_combout\ & (\Add7~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~3_combout\,
	datab => \ALT_INV_Booth~6_combout\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_Prod~37_combout\,
	datae => \ALT_INV_Add10~29_sumout\,
	combout => \Prod~42_combout\);

\Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~42_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~29_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~42_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~42_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~29_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~42_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_Prod~42_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add11~22\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\);

\Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~25_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~42_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~29_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~42_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add12~22\ ))
-- \Add12~26\ = CARRY(( (!\EntradaB[3]~input_o\ & (((\Prod~42_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~29_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~42_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_Prod~42_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add12~22\,
	sumout => \Add12~25_sumout\,
	cout => \Add12~26\);

\Prod~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~59_combout\ = ( \Add12~25_sumout\ & ( ((!\Booth~5_combout\ & ((\Prod~42_combout\))) # (\Booth~5_combout\ & (\Add9~29_sumout\))) # (\Booth~8_combout\) ) ) # ( !\Add12~25_sumout\ & ( (!\Booth~8_combout\ & ((!\Booth~5_combout\ & ((\Prod~42_combout\))) 
-- # (\Booth~5_combout\ & (\Add9~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~5_combout\,
	datab => \ALT_INV_Booth~8_combout\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_Prod~42_combout\,
	datae => \ALT_INV_Add12~25_sumout\,
	combout => \Prod~59_combout\);

\Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~21_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~59_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~25_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~59_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add13~18\ ))
-- \Add13~22\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~59_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~25_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~59_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~25_sumout\,
	datad => \ALT_INV_Prod~59_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add13~18\,
	sumout => \Add13~21_sumout\,
	cout => \Add13~22\);

\Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~21_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~59_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~25_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~59_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add14~18\ ))
-- \Add14~22\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~59_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~25_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~59_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~25_sumout\,
	datad => \ALT_INV_Prod~59_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add14~18\,
	sumout => \Add14~21_sumout\,
	cout => \Add14~22\);

\Prod~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~41_combout\ = (\Booth~7_combout\ & \Add11~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~7_combout\,
	datab => \ALT_INV_Add11~25_sumout\,
	combout => \Prod~41_combout\);

\Prod~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~43_combout\ = ( \Prod~42_combout\ & ( \Add12~25_sumout\ & ( ((!\EntradaB[4]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~29_sumout\)))) # (\EntradaB[5]~input_o\) ) ) ) # ( !\Prod~42_combout\ & ( \Add12~25_sumout\ & ( (!\EntradaB[4]~input_o\ & 
-- (((\EntradaB[3]~input_o\ & \Add9~29_sumout\)) # (\EntradaB[5]~input_o\))) ) ) ) # ( \Prod~42_combout\ & ( !\Add12~25_sumout\ & ( (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~29_sumout\)))) # (\EntradaB[4]~input_o\ 
-- & (((\EntradaB[5]~input_o\)))) ) ) ) # ( !\Prod~42_combout\ & ( !\Add12~25_sumout\ & ( (\EntradaB[3]~input_o\ & (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & \Add9~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_EntradaB[5]~input_o\,
	datad => \ALT_INV_Add9~29_sumout\,
	datae => \ALT_INV_Prod~42_combout\,
	dataf => \ALT_INV_Add12~25_sumout\,
	combout => \Prod~43_combout\);

\Prod~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~58_combout\ = (!\Booth~9_combout\ & (((\Prod~43_combout\) # (\Prod~41_combout\)))) # (\Booth~9_combout\ & (\Add14~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~9_combout\,
	datab => \ALT_INV_Add14~21_sumout\,
	datac => \ALT_INV_Prod~41_combout\,
	datad => \ALT_INV_Prod~43_combout\,
	combout => \Prod~58_combout\);

\Add15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~17_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~58_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~21_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~58_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add15~14\ ))
-- \Add15~18\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~58_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~21_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~58_combout\))))) ) + ( \EntradaA[4]~input_o\ ) + ( \Add15~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~21_sumout\,
	datad => \ALT_INV_Prod~58_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add15~14\,
	sumout => \Add15~17_sumout\,
	cout => \Add15~18\);

\Prod~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~44_combout\ = ( \Prod~41_combout\ & ( \Prod~43_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~21_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~21_sumout\))) ) ) ) # ( !\Prod~41_combout\ & ( 
-- \Prod~43_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~21_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~21_sumout\))) ) ) ) # ( \Prod~41_combout\ & ( !\Prod~43_combout\ & ( (!\EntradaB[5]~input_o\ & 
-- (\EntradaB[6]~input_o\ & ((!\Add14~21_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~21_sumout\))) ) ) ) # ( !\Prod~41_combout\ & ( !\Prod~43_combout\ & ( (!\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\) # 
-- ((!\Add14~21_sumout\)))) # (\EntradaB[5]~input_o\ & (((!\Add13~21_sumout\)) # (\EntradaB[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111011001011000100100000001100010010000000110001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~21_sumout\,
	datad => \ALT_INV_Add14~21_sumout\,
	datae => \ALT_INV_Prod~41_combout\,
	dataf => \ALT_INV_Prod~43_combout\,
	combout => \Prod~44_combout\);

\Add16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~17_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~58_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~21_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~58_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add16~14\ ))
-- \Add16~18\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~58_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~21_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~58_combout\))))) ) + ( !\EntradaA[4]~input_o\ ) + ( \Add16~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~21_sumout\,
	datad => \ALT_INV_Prod~58_combout\,
	dataf => \ALT_INV_EntradaA[4]~input_o\,
	cin => \Add16~14\,
	sumout => \Add16~17_sumout\,
	cout => \Add16~18\);

\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Mux7~0_combout\ & ( \Mux7~1_combout\ & ( \Add16~17_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( \Mux7~1_combout\ & ( !\Prod~44_combout\ ) ) ) # ( \Mux7~0_combout\ & ( !\Mux7~1_combout\ & ( \Add15~17_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( 
-- !\Mux7~1_combout\ & ( \Splitter~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Splitter~3_combout\,
	datab => \ALT_INV_Add15~17_sumout\,
	datac => \ALT_INV_Prod~44_combout\,
	datad => \ALT_INV_Add16~17_sumout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux4~0_combout\);

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

\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Add1~45_sumout\ & ( (\Mux7~3_combout\ & ((!\Mux7~2_combout\) # ((\EntradaA[11]~input_o\) # (\EntradaB[11]~input_o\)))) ) ) # ( !\Add1~45_sumout\ & ( (\Mux7~2_combout\ & (\Mux7~3_combout\ & ((\EntradaA[11]~input_o\) # 
-- (\EntradaB[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001001000110011001100000001000100010010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_Mux7~3_combout\,
	datac => \ALT_INV_EntradaB[11]~input_o\,
	datad => \ALT_INV_EntradaA[11]~input_o\,
	datae => \ALT_INV_Add1~45_sumout\,
	combout => \Mux4~1_combout\);

\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Mux4~1_combout\ ) # ( !\Mux4~1_combout\ & ( (!\Mux8~0_combout\ & (\Mux8~1_combout\ & ((\Mux4~0_combout\)))) # (\Mux8~0_combout\ & (((\Mux8~1_combout\ & \Mux4~0_combout\)) # (\Add0~45_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_Mux4~0_combout\,
	datae => \ALT_INV_Mux4~1_combout\,
	combout => \Mux4~2_combout\);

\EntradaB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(12),
	o => \EntradaB[12]~input_o\);

\EntradaA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(12),
	o => \EntradaA[12]~input_o\);

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

\Splitter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Splitter~4_combout\ = (\EntradaB[12]~input_o\ & \EntradaA[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[12]~input_o\,
	datab => \ALT_INV_EntradaA[12]~input_o\,
	combout => \Splitter~4_combout\);

\Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~42_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~29_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~42_combout\))))) ) + ( \EntradaA[7]~input_o\ ) + ( \Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_Prod~42_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add11~26\,
	sumout => \Add11~29_sumout\);

\Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~29_sumout\ = SUM(( (!\EntradaB[3]~input_o\ & (((\Prod~42_combout\)))) # (\EntradaB[3]~input_o\ & ((!\EntradaB[4]~input_o\ & (\Add9~29_sumout\)) # (\EntradaB[4]~input_o\ & ((\Prod~42_combout\))))) ) + ( !\EntradaA[7]~input_o\ ) + ( \Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_Prod~42_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add12~26\,
	sumout => \Add12~29_sumout\);

\Prod~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~61_combout\ = ( \Add12~29_sumout\ & ( ((!\Booth~5_combout\ & ((\Prod~42_combout\))) # (\Booth~5_combout\ & (\Add9~29_sumout\))) # (\Booth~8_combout\) ) ) # ( !\Add12~29_sumout\ & ( (!\Booth~8_combout\ & ((!\Booth~5_combout\ & ((\Prod~42_combout\))) 
-- # (\Booth~5_combout\ & (\Add9~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~5_combout\,
	datab => \ALT_INV_Booth~8_combout\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_Prod~42_combout\,
	datae => \ALT_INV_Add12~29_sumout\,
	combout => \Prod~61_combout\);

\Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~25_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~61_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~29_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~61_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add13~22\ ))
-- \Add13~26\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~61_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~29_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~61_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_Prod~61_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add13~22\,
	sumout => \Add13~25_sumout\,
	cout => \Add13~26\);

\Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~25_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~61_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~29_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~61_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add14~22\ ))
-- \Add14~26\ = CARRY(( (!\EntradaB[4]~input_o\ & (((\Prod~61_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~29_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~61_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_Prod~61_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add14~22\,
	sumout => \Add14~25_sumout\,
	cout => \Add14~26\);

\Prod~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~45_combout\ = (\Booth~7_combout\ & \Add11~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~7_combout\,
	datab => \ALT_INV_Add11~29_sumout\,
	combout => \Prod~45_combout\);

\Prod~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~46_combout\ = ( \Prod~42_combout\ & ( \Add12~29_sumout\ & ( ((!\EntradaB[4]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~29_sumout\)))) # (\EntradaB[5]~input_o\) ) ) ) # ( !\Prod~42_combout\ & ( \Add12~29_sumout\ & ( (!\EntradaB[4]~input_o\ & 
-- (((\EntradaB[3]~input_o\ & \Add9~29_sumout\)) # (\EntradaB[5]~input_o\))) ) ) ) # ( \Prod~42_combout\ & ( !\Add12~29_sumout\ & ( (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & ((!\EntradaB[3]~input_o\) # (\Add9~29_sumout\)))) # (\EntradaB[4]~input_o\ 
-- & (((\EntradaB[5]~input_o\)))) ) ) ) # ( !\Prod~42_combout\ & ( !\Add12~29_sumout\ & ( (\EntradaB[3]~input_o\ & (!\EntradaB[4]~input_o\ & (!\EntradaB[5]~input_o\ & \Add9~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[3]~input_o\,
	datab => \ALT_INV_EntradaB[4]~input_o\,
	datac => \ALT_INV_EntradaB[5]~input_o\,
	datad => \ALT_INV_Add9~29_sumout\,
	datae => \ALT_INV_Prod~42_combout\,
	dataf => \ALT_INV_Add12~29_sumout\,
	combout => \Prod~46_combout\);

\Prod~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~60_combout\ = (!\Booth~9_combout\ & (((\Prod~46_combout\) # (\Prod~45_combout\)))) # (\Booth~9_combout\ & (\Add14~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~9_combout\,
	datab => \ALT_INV_Add14~25_sumout\,
	datac => \ALT_INV_Prod~45_combout\,
	datad => \ALT_INV_Prod~46_combout\,
	combout => \Prod~60_combout\);

\Add15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~21_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~60_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~25_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~60_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add15~18\ ))
-- \Add15~22\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~60_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~25_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~60_combout\))))) ) + ( \EntradaA[5]~input_o\ ) + ( \Add15~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~25_sumout\,
	datad => \ALT_INV_Prod~60_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add15~18\,
	sumout => \Add15~21_sumout\,
	cout => \Add15~22\);

\Prod~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~47_combout\ = ( \Prod~45_combout\ & ( \Prod~46_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~25_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~25_sumout\))) ) ) ) # ( !\Prod~45_combout\ & ( 
-- \Prod~46_combout\ & ( (!\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((!\Add14~25_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~25_sumout\))) ) ) ) # ( \Prod~45_combout\ & ( !\Prod~46_combout\ & ( (!\EntradaB[5]~input_o\ & 
-- (\EntradaB[6]~input_o\ & ((!\Add14~25_sumout\)))) # (\EntradaB[5]~input_o\ & (!\EntradaB[6]~input_o\ & (!\Add13~25_sumout\))) ) ) ) # ( !\Prod~45_combout\ & ( !\Prod~46_combout\ & ( (!\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\) # 
-- ((!\Add14~25_sumout\)))) # (\EntradaB[5]~input_o\ & (((!\Add13~25_sumout\)) # (\EntradaB[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111011001011000100100000001100010010000000110001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~25_sumout\,
	datad => \ALT_INV_Add14~25_sumout\,
	datae => \ALT_INV_Prod~45_combout\,
	dataf => \ALT_INV_Prod~46_combout\,
	combout => \Prod~47_combout\);

\Add16~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~21_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~60_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~25_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~60_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add16~18\ ))
-- \Add16~22\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~60_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~25_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~60_combout\))))) ) + ( !\EntradaA[5]~input_o\ ) + ( \Add16~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~25_sumout\,
	datad => \ALT_INV_Prod~60_combout\,
	dataf => \ALT_INV_EntradaA[5]~input_o\,
	cin => \Add16~18\,
	sumout => \Add16~21_sumout\,
	cout => \Add16~22\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Mux7~0_combout\ & ( \Mux7~1_combout\ & ( \Add16~21_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( \Mux7~1_combout\ & ( !\Prod~47_combout\ ) ) ) # ( \Mux7~0_combout\ & ( !\Mux7~1_combout\ & ( \Add15~21_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( 
-- !\Mux7~1_combout\ & ( \Splitter~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Splitter~4_combout\,
	datab => \ALT_INV_Add15~21_sumout\,
	datac => \ALT_INV_Prod~47_combout\,
	datad => \ALT_INV_Add16~21_sumout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux3~0_combout\);

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

\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Add1~49_sumout\ & ( (\Mux7~3_combout\ & ((!\Mux7~2_combout\) # ((\EntradaA[12]~input_o\) # (\EntradaB[12]~input_o\)))) ) ) # ( !\Add1~49_sumout\ & ( (\Mux7~2_combout\ & (\Mux7~3_combout\ & ((\EntradaA[12]~input_o\) # 
-- (\EntradaB[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001001000110011001100000001000100010010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_Mux7~3_combout\,
	datac => \ALT_INV_EntradaB[12]~input_o\,
	datad => \ALT_INV_EntradaA[12]~input_o\,
	datae => \ALT_INV_Add1~49_sumout\,
	combout => \Mux3~1_combout\);

\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \Mux3~1_combout\ ) # ( !\Mux3~1_combout\ & ( (!\Mux8~0_combout\ & (\Mux8~1_combout\ & ((\Mux3~0_combout\)))) # (\Mux8~0_combout\ & (((\Mux8~1_combout\ & \Mux3~0_combout\)) # (\Add0~49_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_Add0~49_sumout\,
	datad => \ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_Mux3~1_combout\,
	combout => \Mux3~2_combout\);

\EntradaB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaB(13),
	o => \EntradaB[13]~input_o\);

\EntradaA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaA(13),
	o => \EntradaA[13]~input_o\);

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

\Splitter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Splitter~5_combout\ = (\EntradaB[13]~input_o\ & \EntradaA[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[13]~input_o\,
	datab => \ALT_INV_EntradaA[13]~input_o\,
	combout => \Splitter~5_combout\);

\Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~29_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~61_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~29_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~61_combout\))))) ) + ( \EntradaA[7]~input_o\ ) + ( \Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_Prod~61_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add13~26\,
	sumout => \Add13~29_sumout\);

\Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~29_sumout\ = SUM(( (!\EntradaB[4]~input_o\ & (((\Prod~61_combout\)))) # (\EntradaB[4]~input_o\ & ((!\EntradaB[5]~input_o\ & (\Add11~29_sumout\)) # (\EntradaB[5]~input_o\ & ((\Prod~61_combout\))))) ) + ( !\EntradaA[7]~input_o\ ) + ( \Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[4]~input_o\,
	datab => \ALT_INV_EntradaB[5]~input_o\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_Prod~61_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add14~26\,
	sumout => \Add14~29_sumout\);

\Prod~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~62_combout\ = (!\Booth~9_combout\ & (((\Prod~46_combout\)) # (\Prod~45_combout\))) # (\Booth~9_combout\ & (((\Add14~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001111111001010100111111100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Booth~9_combout\,
	datab => \ALT_INV_Prod~45_combout\,
	datac => \ALT_INV_Prod~46_combout\,
	datad => \ALT_INV_Add14~29_sumout\,
	combout => \Prod~62_combout\);

\Add15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~25_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~62_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~29_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~62_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add15~22\ ))
-- \Add15~26\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~62_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~29_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~62_combout\))))) ) + ( \EntradaA[6]~input_o\ ) + ( \Add15~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~29_sumout\,
	datad => \ALT_INV_Prod~62_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add15~22\,
	sumout => \Add15~25_sumout\,
	cout => \Add15~26\);

\Prod~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prod~48_combout\ = ( \Add13~29_sumout\ & ( \Add14~29_sumout\ & ( ((!\EntradaB[5]~input_o\ $ (!\EntradaB[6]~input_o\)) # (\Prod~46_combout\)) # (\Prod~45_combout\) ) ) ) # ( !\Add13~29_sumout\ & ( \Add14~29_sumout\ & ( (!\EntradaB[5]~input_o\ & 
-- (((\Prod~46_combout\) # (\Prod~45_combout\)) # (\EntradaB[6]~input_o\))) # (\EntradaB[5]~input_o\ & (\EntradaB[6]~input_o\ & ((\Prod~46_combout\) # (\Prod~45_combout\)))) ) ) ) # ( \Add13~29_sumout\ & ( !\Add14~29_sumout\ & ( (!\EntradaB[5]~input_o\ & 
-- (!\EntradaB[6]~input_o\ & ((\Prod~46_combout\) # (\Prod~45_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\) # ((\Prod~46_combout\) # (\Prod~45_combout\)))) ) ) ) # ( !\Add13~29_sumout\ & ( !\Add14~29_sumout\ & ( (!\Prod~45_combout\ & 
-- (\Prod~46_combout\ & (!\EntradaB[5]~input_o\ $ (\EntradaB[6]~input_o\)))) # (\Prod~45_combout\ & (!\EntradaB[5]~input_o\ $ ((\EntradaB[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110011001010011011101110100101011101110110110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Prod~45_combout\,
	datad => \ALT_INV_Prod~46_combout\,
	datae => \ALT_INV_Add13~29_sumout\,
	dataf => \ALT_INV_Add14~29_sumout\,
	combout => \Prod~48_combout\);

\Add16~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~25_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~62_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~29_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~62_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add16~22\ ))
-- \Add16~26\ = CARRY(( (!\EntradaB[5]~input_o\ & (((\Prod~62_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~29_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~62_combout\))))) ) + ( !\EntradaA[6]~input_o\ ) + ( \Add16~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~29_sumout\,
	datad => \ALT_INV_Prod~62_combout\,
	dataf => \ALT_INV_EntradaA[6]~input_o\,
	cin => \Add16~22\,
	sumout => \Add16~25_sumout\,
	cout => \Add16~26\);

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \Mux7~0_combout\ & ( \Mux7~1_combout\ & ( \Add16~25_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( \Mux7~1_combout\ & ( \Prod~48_combout\ ) ) ) # ( \Mux7~0_combout\ & ( !\Mux7~1_combout\ & ( \Add15~25_sumout\ ) ) ) # ( !\Mux7~0_combout\ & ( 
-- !\Mux7~1_combout\ & ( \Splitter~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Splitter~5_combout\,
	datab => \ALT_INV_Add15~25_sumout\,
	datac => \ALT_INV_Prod~48_combout\,
	datad => \ALT_INV_Add16~25_sumout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux2~0_combout\);

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

\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Add1~53_sumout\ & ( (\Mux7~3_combout\ & ((!\Mux7~2_combout\) # ((\EntradaA[13]~input_o\) # (\EntradaB[13]~input_o\)))) ) ) # ( !\Add1~53_sumout\ & ( (\Mux7~2_combout\ & (\Mux7~3_combout\ & ((\EntradaA[13]~input_o\) # 
-- (\EntradaB[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001001000110011001100000001000100010010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_Mux7~3_combout\,
	datac => \ALT_INV_EntradaB[13]~input_o\,
	datad => \ALT_INV_EntradaA[13]~input_o\,
	datae => \ALT_INV_Add1~53_sumout\,
	combout => \Mux2~1_combout\);

\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \Mux2~1_combout\ ) # ( !\Mux2~1_combout\ & ( (!\Mux8~0_combout\ & (\Mux8~1_combout\ & ((\Mux2~0_combout\)))) # (\Mux8~0_combout\ & (((\Mux8~1_combout\ & \Mux2~0_combout\)) # (\Add0~53_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_Add0~53_sumout\,
	datad => \ALT_INV_Mux2~0_combout\,
	datae => \ALT_INV_Mux2~1_combout\,
	combout => \Mux2~2_combout\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\Mux15~1_combout\) # ((!\Controle_ULA[0]~input_o\ & ((\Controle_ULA[1]~input_o\))) # (\Controle_ULA[0]~input_o\ & (\Controle_ULA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100011101111111110001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux15~1_combout\,
	combout => \Mux0~0_combout\);

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
-- \Mux1~0_combout\ = (!\Controle_ULA[0]~input_o\ & ((\Add0~57_sumout\))) # (\Controle_ULA[0]~input_o\ & (\Add1~57_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_Add1~57_sumout\,
	datac => \ALT_INV_Add0~57_sumout\,
	combout => \Mux1~0_combout\);

\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ((!\Mux15~1_combout\) # (!\Controle_ULA[2]~input_o\ $ (\Controle_ULA[1]~input_o\))) # (\Controle_ULA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110110111111111111011011111111111101101111111111110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[2]~input_o\,
	datab => \ALT_INV_Controle_ULA[0]~input_o\,
	datac => \ALT_INV_Controle_ULA[1]~input_o\,
	datad => \ALT_INV_Mux15~1_combout\,
	combout => \Mux0~1_combout\);

\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \Mux0~1_combout\ & ( (!\Controle_ULA[1]~input_o\ & (((!\Mux1~0_combout\)))) # (\Controle_ULA[1]~input_o\ & ((!\EntradaA[14]~input_o\) # ((!\EntradaB[14]~input_o\)))) ) ) # ( !\Mux0~1_combout\ & ( (!\EntradaA[14]~input_o\ & 
-- !\EntradaB[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000111111100101010011000000110000001111111001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[1]~input_o\,
	datab => \ALT_INV_EntradaA[14]~input_o\,
	datac => \ALT_INV_EntradaB[14]~input_o\,
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_Mux0~1_combout\,
	combout => \Mux1~1_combout\);

\Add16~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~29_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~62_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~29_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~62_combout\))))) ) + ( !\EntradaA[7]~input_o\ ) + ( \Add16~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~29_sumout\,
	datad => \ALT_INV_Prod~62_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add16~26\,
	sumout => \Add16~29_sumout\);

\Add15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~29_sumout\ = SUM(( (!\EntradaB[5]~input_o\ & (((\Prod~62_combout\)))) # (\EntradaB[5]~input_o\ & ((!\EntradaB[6]~input_o\ & (\Add13~29_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~62_combout\))))) ) + ( \EntradaA[7]~input_o\ ) + ( \Add15~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EntradaB[5]~input_o\,
	datab => \ALT_INV_EntradaB[6]~input_o\,
	datac => \ALT_INV_Add13~29_sumout\,
	datad => \ALT_INV_Prod~62_combout\,
	dataf => \ALT_INV_EntradaA[7]~input_o\,
	cin => \Add15~26\,
	sumout => \Add15~29_sumout\);

\Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( !\EntradaB[7]~input_o\ & ( (\Mux0~0_combout\ & (!\Mux0~1_combout\ & ((!\EntradaB[6]~input_o\ & ((\Prod~48_combout\))) # (\EntradaB[6]~input_o\ & (\Add15~29_sumout\))))) ) ) # ( \EntradaB[7]~input_o\ & ( (\Mux0~0_combout\ & 
-- (!\Mux0~1_combout\ & ((!\EntradaB[6]~input_o\ & (\Add16~29_sumout\)) # (\EntradaB[6]~input_o\ & ((\Prod~48_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001000100000001000000010000000100000001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_Add16~29_sumout\,
	datad => \ALT_INV_Prod~48_combout\,
	datae => \ALT_INV_EntradaB[7]~input_o\,
	dataf => \ALT_INV_EntradaB[6]~input_o\,
	datag => \ALT_INV_Add15~29_sumout\,
	combout => \Mux1~3_combout\);

\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ((!\Mux0~0_combout\ & !\Mux1~1_combout\)) # (\Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110001111100011111000111110001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux1~1_combout\,
	datac => \ALT_INV_Mux1~3_combout\,
	combout => \Mux1~2_combout\);

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

\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\Controle_ULA[0]~input_o\ & ((\Add0~61_sumout\))) # (\Controle_ULA[0]~input_o\ & (\Add1~61_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[0]~input_o\,
	datab => \ALT_INV_Add1~61_sumout\,
	datac => \ALT_INV_Add0~61_sumout\,
	combout => \Mux0~2_combout\);

\Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = ( \Mux0~2_combout\ & ( (!\Mux0~1_combout\ & (((!\EntradaA[15]~input_o\ & !\EntradaB[15]~input_o\)))) # (\Mux0~1_combout\ & (\Controle_ULA[1]~input_o\ & ((!\EntradaA[15]~input_o\) # (!\EntradaB[15]~input_o\)))) ) ) # ( !\Mux0~2_combout\ 
-- & ( (!\Mux0~1_combout\ & (((!\EntradaA[15]~input_o\ & !\EntradaB[15]~input_o\)))) # (\Mux0~1_combout\ & ((!\Controle_ULA[1]~input_o\) # ((!\EntradaA[15]~input_o\) # (!\EntradaB[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110010110100010001000011110011001100101101000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[1]~input_o\,
	datab => \ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_EntradaA[15]~input_o\,
	datad => \ALT_INV_EntradaB[15]~input_o\,
	datae => \ALT_INV_Mux0~2_combout\,
	combout => \Mux0~3_combout\);

\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ((!\Mux0~0_combout\ & !\Mux0~3_combout\)) # (\Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001110110011101100111011001110110011101100111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux1~3_combout\,
	datac => \ALT_INV_Mux0~3_combout\,
	combout => \Mux0~4_combout\);

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
-- \Equal1~1_combout\ = ( \Equal1~0_combout\ & ( (!\Add1~17_sumout\ & (!\Add1~21_sumout\ & (!\Add1~45_sumout\ & !\Add1~49_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~17_sumout\,
	datab => \ALT_INV_Add1~21_sumout\,
	datac => \ALT_INV_Add1~45_sumout\,
	datad => \ALT_INV_Add1~49_sumout\,
	datae => \ALT_INV_Equal1~0_combout\,
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

\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( \Equal1~2_combout\ & ( (!\Add1~53_sumout\ & (!\Add1~57_sumout\ & (!\Add1~61_sumout\ & \Equal1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~53_sumout\,
	datab => \ALT_INV_Add1~57_sumout\,
	datac => \ALT_INV_Add1~61_sumout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_Equal1~2_combout\,
	combout => \Equal1~3_combout\);

\ZeroULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZeroULA~0_combout\ = ( \Equal1~3_combout\ & ( (!\Controle_ULA[5]~input_o\ & (!\Controle_ULA[6]~input_o\ & (\Controle_ULA[3]~input_o\ & \Controle_ULA[4]~input_o\))) ) ) # ( !\Equal1~3_combout\ & ( (\Controle_ULA[5]~input_o\ & (!\Controle_ULA[6]~input_o\ & 
-- (!\Controle_ULA[3]~input_o\ & !\Controle_ULA[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000100001000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Controle_ULA[5]~input_o\,
	datab => \ALT_INV_Controle_ULA[6]~input_o\,
	datac => \ALT_INV_Controle_ULA[3]~input_o\,
	datad => \ALT_INV_Controle_ULA[4]~input_o\,
	datae => \ALT_INV_Equal1~3_combout\,
	combout => \ZeroULA~0_combout\);

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


