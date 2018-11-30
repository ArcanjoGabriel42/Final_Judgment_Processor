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

-- DATE "11/30/2018 15:16:23"

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
	SomadorToPc_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	SaidaPc_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	SaidaRegA_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	SaidaRegB_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	multiplexador_to_writeRegister_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_multiplexador_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_Control_outWaveform : BUFFER std_logic_vector(3 DOWNTO 0);
	Instruction_to_register1_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_register2_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_controlULA_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_extensorDeSinal_outWaveform : BUFFER std_logic_vector(5 DOWNTO 0);
	Instruction_to_Jump_outWaveform : BUFFER std_logic_vector(11 DOWNTO 0);
	Data_to_writeRegister_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Saida_mult_to_mult_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Saida_to_PC_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Saida_adress_to_RAM_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Flag_regdest_OUT : BUFFER std_logic;
	Flag_origialu_OUT : BUFFER std_logic_vector(3 DOWNTO 0);
	Flag_memparareg_OUT : BUFFER std_logic;
	Flag_escrevereg_OUT : BUFFER std_logic;
	Flag_lemem_OUT : BUFFER std_logic;
	Flag_escrevemem_OUT : BUFFER std_logic;
	Flag_branch_OUT : BUFFER std_logic;
	Flag_aluSRC_OUT : BUFFER std_logic;
	Flag_jump_OUT : BUFFER std_logic
	);
END DataPath;

-- Design Ports Information
-- SomadorToPc_outWaveform[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[8]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[12]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[14]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[7]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[8]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[11]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[12]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[14]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[15]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[8]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[9]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[10]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[11]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[12]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[13]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[14]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[9]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[10]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[11]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[12]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[13]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[14]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[15]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[3]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[4]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[8]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[9]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[10]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[10]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[11]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[12]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[13]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[14]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[15]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[9]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[10]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[11]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[12]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[13]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[14]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[15]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[11]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[12]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[13]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[14]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[15]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[6]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[8]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[9]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[10]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[11]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[12]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[13]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[15]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_regdest_OUT	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[0]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_memparareg_OUT	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevereg_OUT	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_lemem_OUT	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevemem_OUT	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_branch_OUT	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_aluSRC_OUT	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_jump_OUT	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_SomadorToPc_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SaidaPc_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SaidaRegA_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SaidaRegB_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_multiplexador_to_writeRegister_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_multiplexador_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_Control_outWaveform : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Instruction_to_register1_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_register2_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_controlULA_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_extensorDeSinal_outWaveform : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Instruction_to_Jump_outWaveform : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Data_to_writeRegister_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_mult_to_mult_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_to_PC_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_adress_to_RAM_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Flag_regdest_OUT : std_logic;
SIGNAL ww_Flag_origialu_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Flag_memparareg_OUT : std_logic;
SIGNAL ww_Flag_escrevereg_OUT : std_logic;
SIGNAL ww_Flag_lemem_OUT : std_logic;
SIGNAL ww_Flag_escrevemem_OUT : std_logic;
SIGNAL ww_Flag_branch_OUT : std_logic;
SIGNAL ww_Flag_aluSRC_OUT : std_logic;
SIGNAL ww_Flag_jump_OUT : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \Clock_Sistema~inputCLKENA0_outclk\ : std_logic;
SIGNAL \G4|rs[0]~enfeeder_combout\ : std_logic;
SIGNAL \G4|rs[0]~enDUPLICATE_q\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G13|SAIDA~0_combout\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G13|SAIDA~1_combout\ : std_logic;
SIGNAL \G1|pout[1]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G12|SAIDA[2]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[2]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G2|saida[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G12|SAIDA[3]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[3]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G12|SAIDA[4]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[4]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[4]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G12|SAIDA[5]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[5]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[5]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G12|SAIDA[6]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[6]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[6]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G13|SAIDA[7]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[7]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G12|SAIDA[8]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[8]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[8]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|pout[8]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G13|SAIDA[9]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G12|SAIDA[10]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[10]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[10]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G12|SAIDA[11]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[11]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[11]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G4|Mux1~1_combout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G12|SAIDA[12]~DUPLICATE_q\ : std_logic;
SIGNAL \G13|SAIDA[12]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[12]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G12|SAIDA[13]~feeder_combout\ : std_logic;
SIGNAL \G12|SAIDA[13]~DUPLICATE_q\ : std_logic;
SIGNAL \G13|SAIDA[13]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[13]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G12|SAIDA[14]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[14]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[14]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|pout[14]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G13|SAIDA[15]~feeder_combout\ : std_logic;
SIGNAL \G3|resshift[15]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA[15]~DUPLICATE_q\ : std_logic;
SIGNAL \G4|Mux1~2_combout\ : std_logic;
SIGNAL \G4|Mux1~3_combout\ : std_logic;
SIGNAL \G4|rd[0]~reg0_q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \G18|SAIDA[0]~feeder_combout\ : std_logic;
SIGNAL \G4|rd[0]~3_combout\ : std_logic;
SIGNAL \G14|SAIDA[0]~feeder_combout\ : std_logic;
SIGNAL \G16|Add1~1_sumout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G15|SAIDA[3]~0_combout\ : std_logic;
SIGNAL \G16|Mux14~0_combout\ : std_logic;
SIGNAL \G16|Mux15~0_combout\ : std_logic;
SIGNAL \G7|Reg~20_q\ : std_logic;
SIGNAL \G7|Reg~132_q\ : std_logic;
SIGNAL \G4|rs[0]~en_q\ : std_logic;
SIGNAL \G7|Reg~148_combout\ : std_logic;
SIGNAL \G18|SAIDA[1]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G16|Add1~2\ : std_logic;
SIGNAL \G16|Add1~3\ : std_logic;
SIGNAL \G16|Add1~5_sumout\ : std_logic;
SIGNAL \G16|Mux14~1_combout\ : std_logic;
SIGNAL \G7|Reg~21_q\ : std_logic;
SIGNAL \G7|Reg~133_q\ : std_logic;
SIGNAL \G7|Reg~149_combout\ : std_logic;
SIGNAL \G18|SAIDA[2]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G16|Add1~6\ : std_logic;
SIGNAL \G16|Add1~7\ : std_logic;
SIGNAL \G16|Add1~9_sumout\ : std_logic;
SIGNAL \G16|Mux13~0_combout\ : std_logic;
SIGNAL \G7|Reg~22_q\ : std_logic;
SIGNAL \G7|Reg~134_q\ : std_logic;
SIGNAL \G7|Reg~150_combout\ : std_logic;
SIGNAL \G18|SAIDA[3]~feeder_combout\ : std_logic;
SIGNAL \G16|Add1~10\ : std_logic;
SIGNAL \G16|Add1~11\ : std_logic;
SIGNAL \G16|Add1~13_sumout\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G16|Mux12~0_combout\ : std_logic;
SIGNAL \G7|Reg~135_q\ : std_logic;
SIGNAL \G7|Reg~23_q\ : std_logic;
SIGNAL \G7|Reg~151_combout\ : std_logic;
SIGNAL \G18|SAIDA[4]~feeder_combout\ : std_logic;
SIGNAL \G16|Add1~14\ : std_logic;
SIGNAL \G16|Add1~15\ : std_logic;
SIGNAL \G16|Add1~17_sumout\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G16|Mux11~0_combout\ : std_logic;
SIGNAL \G7|Reg~136_q\ : std_logic;
SIGNAL \G7|Reg~24_q\ : std_logic;
SIGNAL \G7|Reg~152_combout\ : std_logic;
SIGNAL \G18|SAIDA[5]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G16|Add1~18\ : std_logic;
SIGNAL \G16|Add1~19\ : std_logic;
SIGNAL \G16|Add1~21_sumout\ : std_logic;
SIGNAL \G16|Mux10~0_combout\ : std_logic;
SIGNAL \G7|Reg~137_q\ : std_logic;
SIGNAL \G7|Reg~25_q\ : std_logic;
SIGNAL \G7|Reg~153_combout\ : std_logic;
SIGNAL \G18|SAIDA[6]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G16|Add1~22\ : std_logic;
SIGNAL \G16|Add1~23\ : std_logic;
SIGNAL \G16|Add1~25_sumout\ : std_logic;
SIGNAL \G16|Mux9~0_combout\ : std_logic;
SIGNAL \G7|Reg~138_q\ : std_logic;
SIGNAL \G7|Reg~26_q\ : std_logic;
SIGNAL \G7|Reg~154_combout\ : std_logic;
SIGNAL \G18|SAIDA[7]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G16|Add1~26\ : std_logic;
SIGNAL \G16|Add1~27\ : std_logic;
SIGNAL \G16|Add1~29_sumout\ : std_logic;
SIGNAL \G16|Mux8~0_combout\ : std_logic;
SIGNAL \G7|Reg~139_q\ : std_logic;
SIGNAL \G7|Reg~27_q\ : std_logic;
SIGNAL \G7|Reg~155_combout\ : std_logic;
SIGNAL \G18|SAIDA[8]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G16|Add1~30\ : std_logic;
SIGNAL \G16|Add1~31\ : std_logic;
SIGNAL \G16|Add1~33_sumout\ : std_logic;
SIGNAL \G16|Mux7~0_combout\ : std_logic;
SIGNAL \G7|Reg~140_q\ : std_logic;
SIGNAL \G7|Reg~28_q\ : std_logic;
SIGNAL \G7|Reg~156_combout\ : std_logic;
SIGNAL \G18|SAIDA[9]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G16|Add1~34\ : std_logic;
SIGNAL \G16|Add1~35\ : std_logic;
SIGNAL \G16|Add1~37_sumout\ : std_logic;
SIGNAL \G16|Mux6~0_combout\ : std_logic;
SIGNAL \G7|Reg~29_q\ : std_logic;
SIGNAL \G7|Reg~141_q\ : std_logic;
SIGNAL \G7|Reg~157_combout\ : std_logic;
SIGNAL \G18|SAIDA[10]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G16|Add1~38\ : std_logic;
SIGNAL \G16|Add1~39\ : std_logic;
SIGNAL \G16|Add1~41_sumout\ : std_logic;
SIGNAL \G16|Mux5~0_combout\ : std_logic;
SIGNAL \G7|Reg~30_q\ : std_logic;
SIGNAL \G7|Reg~142_q\ : std_logic;
SIGNAL \G7|Reg~158_combout\ : std_logic;
SIGNAL \G18|SAIDA[11]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G16|Add1~42\ : std_logic;
SIGNAL \G16|Add1~43\ : std_logic;
SIGNAL \G16|Add1~45_sumout\ : std_logic;
SIGNAL \G16|Mux4~0_combout\ : std_logic;
SIGNAL \G7|Reg~143_q\ : std_logic;
SIGNAL \G7|Reg~31_q\ : std_logic;
SIGNAL \G7|Reg~159_combout\ : std_logic;
SIGNAL \G18|SAIDA[12]~feeder_combout\ : std_logic;
SIGNAL \G16|Add1~46\ : std_logic;
SIGNAL \G16|Add1~47\ : std_logic;
SIGNAL \G16|Add1~49_sumout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G16|Mux3~0_combout\ : std_logic;
SIGNAL \G7|Reg~32_q\ : std_logic;
SIGNAL \G7|Reg~144_q\ : std_logic;
SIGNAL \G7|Reg~160_combout\ : std_logic;
SIGNAL \G18|SAIDA[13]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G16|Add1~50\ : std_logic;
SIGNAL \G16|Add1~51\ : std_logic;
SIGNAL \G16|Add1~53_sumout\ : std_logic;
SIGNAL \G16|Mux2~0_combout\ : std_logic;
SIGNAL \G7|Reg~33_q\ : std_logic;
SIGNAL \G7|Reg~145_q\ : std_logic;
SIGNAL \G7|Reg~161_combout\ : std_logic;
SIGNAL \G18|SAIDA[14]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G16|Add1~54\ : std_logic;
SIGNAL \G16|Add1~55\ : std_logic;
SIGNAL \G16|Add1~57_sumout\ : std_logic;
SIGNAL \G16|Mux1~0_combout\ : std_logic;
SIGNAL \G7|Reg~146_q\ : std_logic;
SIGNAL \G7|Reg~34_q\ : std_logic;
SIGNAL \G7|Reg~162_combout\ : std_logic;
SIGNAL \G18|SAIDA[15]~feeder_combout\ : std_logic;
SIGNAL \G16|Add1~58\ : std_logic;
SIGNAL \G16|Add1~59\ : std_logic;
SIGNAL \G16|Add1~61_sumout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G16|Mux0~0_combout\ : std_logic;
SIGNAL \G7|Reg~35_q\ : std_logic;
SIGNAL \G7|Reg~147_q\ : std_logic;
SIGNAL \G7|Reg~163_combout\ : std_logic;
SIGNAL \G7|Reg~164_combout\ : std_logic;
SIGNAL \G7|Reg~165_combout\ : std_logic;
SIGNAL \G7|Reg~166_combout\ : std_logic;
SIGNAL \G7|Reg~23DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~167_combout\ : std_logic;
SIGNAL \G7|Reg~168_combout\ : std_logic;
SIGNAL \G7|Reg~169_combout\ : std_logic;
SIGNAL \G7|Reg~170_combout\ : std_logic;
SIGNAL \G7|Reg~171_combout\ : std_logic;
SIGNAL \G7|Reg~172_combout\ : std_logic;
SIGNAL \G7|Reg~173_combout\ : std_logic;
SIGNAL \G7|Reg~174_combout\ : std_logic;
SIGNAL \G7|Reg~175_combout\ : std_logic;
SIGNAL \G7|Reg~176_combout\ : std_logic;
SIGNAL \G7|Reg~177_combout\ : std_logic;
SIGNAL \G7|Reg~178_combout\ : std_logic;
SIGNAL \G7|Reg~179_combout\ : std_logic;
SIGNAL \G12|SAIDA[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G13|SAIDA[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G18|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G14|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G6|SAIDA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G15|SAIDA\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G3|resshift\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA\ : std_logic_vector(11 DOWNTO 1);
SIGNAL \G12|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G7|ALT_INV_Reg~136_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~24_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~151_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~135_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~23_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~150_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~134_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~22_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~149_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~133_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~21_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~148_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~132_q\ : std_logic;
SIGNAL \G4|ALT_INV_rs[0]~en_q\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~reg0_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~20_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 2);
SIGNAL \G14|ALT_INV_SAIDA\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G16|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_~GND~combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G6|ALT_INV_SAIDA\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G7|ALT_INV_Reg~163_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~147_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~35_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~162_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~146_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~34_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~161_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~145_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~33_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~160_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~144_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~32_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~159_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~143_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~31_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~158_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~142_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~30_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~157_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~141_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~29_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~156_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~140_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~28_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~155_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~139_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~27_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~154_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~138_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~26_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~153_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~137_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~25_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~152_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~23DUPLICATE_q\ : std_logic;
SIGNAL \G4|ALT_INV_rs[0]~enDUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[13]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[7]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_saida[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[14]~DUPLICATE_q\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[8]~DUPLICATE_q\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA[13]~DUPLICATE_q\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA[12]~DUPLICATE_q\ : std_logic;

BEGIN

ww_Clock_Sistema <= Clock_Sistema;
SomadorToPc_outWaveform <= ww_SomadorToPc_outWaveform;
SaidaPc_outWaveform <= ww_SaidaPc_outWaveform;
SaidaRegA_outWaveform <= ww_SaidaRegA_outWaveform;
SaidaRegB_outWaveform <= ww_SaidaRegB_outWaveform;
multiplexador_to_writeRegister_outWaveform <= ww_multiplexador_to_writeRegister_outWaveform;
Instruction_to_multiplexador_outWaveform <= ww_Instruction_to_multiplexador_outWaveform;
Instruction_to_Control_outWaveform <= ww_Instruction_to_Control_outWaveform;
Instruction_to_register1_outWaveform <= ww_Instruction_to_register1_outWaveform;
Instruction_to_register2_outWaveform <= ww_Instruction_to_register2_outWaveform;
Instruction_to_controlULA_outWaveform <= ww_Instruction_to_controlULA_outWaveform;
Instruction_to_extensorDeSinal_outWaveform <= ww_Instruction_to_extensorDeSinal_outWaveform;
Instruction_to_Jump_outWaveform <= ww_Instruction_to_Jump_outWaveform;
Data_to_writeRegister_outWaveform <= ww_Data_to_writeRegister_outWaveform;
Saida_mult_to_mult_outWaveform <= ww_Saida_mult_to_mult_outWaveform;
Saida_to_PC_outWaveform <= ww_Saida_to_PC_outWaveform;
Saida_adress_to_RAM_outWaveform <= ww_Saida_adress_to_RAM_outWaveform;
Flag_regdest_OUT <= ww_Flag_regdest_OUT;
Flag_origialu_OUT <= ww_Flag_origialu_OUT;
Flag_memparareg_OUT <= ww_Flag_memparareg_OUT;
Flag_escrevereg_OUT <= ww_Flag_escrevereg_OUT;
Flag_lemem_OUT <= ww_Flag_lemem_OUT;
Flag_escrevemem_OUT <= ww_Flag_escrevemem_OUT;
Flag_branch_OUT <= ww_Flag_branch_OUT;
Flag_aluSRC_OUT <= ww_Flag_aluSRC_OUT;
Flag_jump_OUT <= ww_Flag_jump_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\G16|ALT_INV_Add0~25_sumout\ <= NOT \G16|Add0~25_sumout\;
\G16|ALT_INV_Add1~21_sumout\ <= NOT \G16|Add1~21_sumout\;
\G16|ALT_INV_Add0~21_sumout\ <= NOT \G16|Add0~21_sumout\;
\G16|ALT_INV_Add1~17_sumout\ <= NOT \G16|Add1~17_sumout\;
\G16|ALT_INV_Add0~17_sumout\ <= NOT \G16|Add0~17_sumout\;
\G16|ALT_INV_Add1~13_sumout\ <= NOT \G16|Add1~13_sumout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G16|ALT_INV_Add1~9_sumout\ <= NOT \G16|Add1~9_sumout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G16|ALT_INV_Add1~5_sumout\ <= NOT \G16|Add1~5_sumout\;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G16|ALT_INV_Add1~1_sumout\ <= NOT \G16|Add1~1_sumout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
\G13|ALT_INV_SAIDA\(11) <= NOT \G13|SAIDA\(11);
\G13|ALT_INV_SAIDA\(6) <= NOT \G13|SAIDA\(6);
\G13|ALT_INV_SAIDA\(5) <= NOT \G13|SAIDA\(5);
\G13|ALT_INV_SAIDA\(4) <= NOT \G13|SAIDA\(4);
\G12|ALT_INV_SAIDA\(15) <= NOT \G12|SAIDA\(15);
\G12|ALT_INV_SAIDA\(14) <= NOT \G12|SAIDA\(14);
\G12|ALT_INV_SAIDA\(11) <= NOT \G12|SAIDA\(11);
\G12|ALT_INV_SAIDA\(10) <= NOT \G12|SAIDA\(10);
\G12|ALT_INV_SAIDA\(9) <= NOT \G12|SAIDA\(9);
\G12|ALT_INV_SAIDA\(8) <= NOT \G12|SAIDA\(8);
\G12|ALT_INV_SAIDA\(7) <= NOT \G12|SAIDA\(7);
\G12|ALT_INV_SAIDA\(6) <= NOT \G12|SAIDA\(6);
\G12|ALT_INV_SAIDA\(5) <= NOT \G12|SAIDA\(5);
\G12|ALT_INV_SAIDA\(4) <= NOT \G12|SAIDA\(4);
\G12|ALT_INV_SAIDA\(3) <= NOT \G12|SAIDA\(3);
\G12|ALT_INV_SAIDA\(2) <= NOT \G12|SAIDA\(2);
\G12|ALT_INV_SAIDA\(1) <= NOT \G12|SAIDA\(1);
\G12|ALT_INV_SAIDA\(0) <= NOT \G12|SAIDA\(0);
\G7|ALT_INV_Reg~136_q\ <= NOT \G7|Reg~136_q\;
\G7|ALT_INV_Reg~24_q\ <= NOT \G7|Reg~24_q\;
\G7|ALT_INV_Reg~151_combout\ <= NOT \G7|Reg~151_combout\;
\G7|ALT_INV_Reg~135_q\ <= NOT \G7|Reg~135_q\;
\G7|ALT_INV_Reg~23_q\ <= NOT \G7|Reg~23_q\;
\G7|ALT_INV_Reg~150_combout\ <= NOT \G7|Reg~150_combout\;
\G7|ALT_INV_Reg~134_q\ <= NOT \G7|Reg~134_q\;
\G7|ALT_INV_Reg~22_q\ <= NOT \G7|Reg~22_q\;
\G7|ALT_INV_Reg~149_combout\ <= NOT \G7|Reg~149_combout\;
\G7|ALT_INV_Reg~133_q\ <= NOT \G7|Reg~133_q\;
\G7|ALT_INV_Reg~21_q\ <= NOT \G7|Reg~21_q\;
\G7|ALT_INV_Reg~148_combout\ <= NOT \G7|Reg~148_combout\;
\G7|ALT_INV_Reg~132_q\ <= NOT \G7|Reg~132_q\;
\G4|ALT_INV_rs[0]~en_q\ <= NOT \G4|rs[0]~en_q\;
\G4|ALT_INV_rd[0]~reg0_q\ <= NOT \G4|rd[0]~reg0_q\;
\G7|ALT_INV_Reg~20_q\ <= NOT \G7|Reg~20_q\;
\G1|ALT_INV_pout\(15) <= NOT \G1|pout\(15);
\G1|ALT_INV_pout\(14) <= NOT \G1|pout\(14);
\G1|ALT_INV_pout\(13) <= NOT \G1|pout\(13);
\G1|ALT_INV_pout\(12) <= NOT \G1|pout\(12);
\G1|ALT_INV_pout\(11) <= NOT \G1|pout\(11);
\G1|ALT_INV_pout\(10) <= NOT \G1|pout\(10);
\G1|ALT_INV_pout\(9) <= NOT \G1|pout\(9);
\G1|ALT_INV_pout\(8) <= NOT \G1|pout\(8);
\G1|ALT_INV_pout\(7) <= NOT \G1|pout\(7);
\G1|ALT_INV_pout\(6) <= NOT \G1|pout\(6);
\G1|ALT_INV_pout\(5) <= NOT \G1|pout\(5);
\G1|ALT_INV_pout\(4) <= NOT \G1|pout\(4);
\G1|ALT_INV_pout\(3) <= NOT \G1|pout\(3);
\G1|ALT_INV_pout\(2) <= NOT \G1|pout\(2);
\G1|ALT_INV_pout\(1) <= NOT \G1|pout\(1);
\G1|ALT_INV_pout\(0) <= NOT \G1|pout\(0);
\G2|ALT_INV_saida\(15) <= NOT \G2|saida\(15);
\G2|ALT_INV_saida\(14) <= NOT \G2|saida\(14);
\G2|ALT_INV_saida\(13) <= NOT \G2|saida\(13);
\G2|ALT_INV_saida\(11) <= NOT \G2|saida\(11);
\G2|ALT_INV_saida\(10) <= NOT \G2|saida\(10);
\G2|ALT_INV_saida\(8) <= NOT \G2|saida\(8);
\G2|ALT_INV_saida\(6) <= NOT \G2|saida\(6);
\G2|ALT_INV_saida\(5) <= NOT \G2|saida\(5);
\G2|ALT_INV_saida\(4) <= NOT \G2|saida\(4);
\G2|ALT_INV_saida\(2) <= NOT \G2|saida\(2);
\G14|ALT_INV_SAIDA\(0) <= NOT \G14|SAIDA\(0);
\G16|ALT_INV_Add0~61_sumout\ <= NOT \G16|Add0~61_sumout\;
\G16|ALT_INV_Add1~61_sumout\ <= NOT \G16|Add1~61_sumout\;
\G16|ALT_INV_Add0~57_sumout\ <= NOT \G16|Add0~57_sumout\;
\G16|ALT_INV_Add1~57_sumout\ <= NOT \G16|Add1~57_sumout\;
\G16|ALT_INV_Add0~53_sumout\ <= NOT \G16|Add0~53_sumout\;
\G16|ALT_INV_Add1~53_sumout\ <= NOT \G16|Add1~53_sumout\;
\G16|ALT_INV_Add0~49_sumout\ <= NOT \G16|Add0~49_sumout\;
\G16|ALT_INV_Add1~49_sumout\ <= NOT \G16|Add1~49_sumout\;
\G16|ALT_INV_Add0~45_sumout\ <= NOT \G16|Add0~45_sumout\;
\G16|ALT_INV_Add1~45_sumout\ <= NOT \G16|Add1~45_sumout\;
\G16|ALT_INV_Add0~41_sumout\ <= NOT \G16|Add0~41_sumout\;
\G16|ALT_INV_Add1~41_sumout\ <= NOT \G16|Add1~41_sumout\;
\G16|ALT_INV_Add0~37_sumout\ <= NOT \G16|Add0~37_sumout\;
\G16|ALT_INV_Add1~37_sumout\ <= NOT \G16|Add1~37_sumout\;
\G16|ALT_INV_Add0~33_sumout\ <= NOT \G16|Add0~33_sumout\;
\G16|ALT_INV_Add1~33_sumout\ <= NOT \G16|Add1~33_sumout\;
\G16|ALT_INV_Add0~29_sumout\ <= NOT \G16|Add0~29_sumout\;
\G16|ALT_INV_Add1~29_sumout\ <= NOT \G16|Add1~29_sumout\;
\G16|ALT_INV_Add1~25_sumout\ <= NOT \G16|Add1~25_sumout\;
\ALT_INV_~GND~combout\ <= NOT \~GND~combout\;
\G4|ALT_INV_Mux1~2_combout\ <= NOT \G4|Mux1~2_combout\;
\G4|ALT_INV_Mux1~1_combout\ <= NOT \G4|Mux1~1_combout\;
\G4|ALT_INV_Mux1~0_combout\ <= NOT \G4|Mux1~0_combout\;
\G16|ALT_INV_Mux14~0_combout\ <= NOT \G16|Mux14~0_combout\;
\G15|ALT_INV_SAIDA\(3) <= NOT \G15|SAIDA\(3);
\G15|ALT_INV_SAIDA\(0) <= NOT \G15|SAIDA\(0);
\G13|ALT_INV_SAIDA\(1) <= NOT \G13|SAIDA\(1);
\G6|ALT_INV_SAIDA\(0) <= NOT \G6|SAIDA\(0);
\G7|ALT_INV_Reg~163_combout\ <= NOT \G7|Reg~163_combout\;
\G7|ALT_INV_Reg~147_q\ <= NOT \G7|Reg~147_q\;
\G7|ALT_INV_Reg~35_q\ <= NOT \G7|Reg~35_q\;
\G7|ALT_INV_Reg~162_combout\ <= NOT \G7|Reg~162_combout\;
\G7|ALT_INV_Reg~146_q\ <= NOT \G7|Reg~146_q\;
\G7|ALT_INV_Reg~34_q\ <= NOT \G7|Reg~34_q\;
\G7|ALT_INV_Reg~161_combout\ <= NOT \G7|Reg~161_combout\;
\G7|ALT_INV_Reg~145_q\ <= NOT \G7|Reg~145_q\;
\G7|ALT_INV_Reg~33_q\ <= NOT \G7|Reg~33_q\;
\G7|ALT_INV_Reg~160_combout\ <= NOT \G7|Reg~160_combout\;
\G7|ALT_INV_Reg~144_q\ <= NOT \G7|Reg~144_q\;
\G7|ALT_INV_Reg~32_q\ <= NOT \G7|Reg~32_q\;
\G7|ALT_INV_Reg~159_combout\ <= NOT \G7|Reg~159_combout\;
\G7|ALT_INV_Reg~143_q\ <= NOT \G7|Reg~143_q\;
\G7|ALT_INV_Reg~31_q\ <= NOT \G7|Reg~31_q\;
\G7|ALT_INV_Reg~158_combout\ <= NOT \G7|Reg~158_combout\;
\G7|ALT_INV_Reg~142_q\ <= NOT \G7|Reg~142_q\;
\G7|ALT_INV_Reg~30_q\ <= NOT \G7|Reg~30_q\;
\G7|ALT_INV_Reg~157_combout\ <= NOT \G7|Reg~157_combout\;
\G7|ALT_INV_Reg~141_q\ <= NOT \G7|Reg~141_q\;
\G7|ALT_INV_Reg~29_q\ <= NOT \G7|Reg~29_q\;
\G7|ALT_INV_Reg~156_combout\ <= NOT \G7|Reg~156_combout\;
\G7|ALT_INV_Reg~140_q\ <= NOT \G7|Reg~140_q\;
\G7|ALT_INV_Reg~28_q\ <= NOT \G7|Reg~28_q\;
\G7|ALT_INV_Reg~155_combout\ <= NOT \G7|Reg~155_combout\;
\G7|ALT_INV_Reg~139_q\ <= NOT \G7|Reg~139_q\;
\G7|ALT_INV_Reg~27_q\ <= NOT \G7|Reg~27_q\;
\G7|ALT_INV_Reg~154_combout\ <= NOT \G7|Reg~154_combout\;
\G7|ALT_INV_Reg~138_q\ <= NOT \G7|Reg~138_q\;
\G7|ALT_INV_Reg~26_q\ <= NOT \G7|Reg~26_q\;
\G7|ALT_INV_Reg~153_combout\ <= NOT \G7|Reg~153_combout\;
\G7|ALT_INV_Reg~137_q\ <= NOT \G7|Reg~137_q\;
\G7|ALT_INV_Reg~25_q\ <= NOT \G7|Reg~25_q\;
\G7|ALT_INV_Reg~152_combout\ <= NOT \G7|Reg~152_combout\;
\G7|ALT_INV_Reg~23DUPLICATE_q\ <= NOT \G7|Reg~23DUPLICATE_q\;
\G4|ALT_INV_rs[0]~enDUPLICATE_q\ <= NOT \G4|rs[0]~enDUPLICATE_q\;
\G1|ALT_INV_pout[13]~DUPLICATE_q\ <= NOT \G1|pout[13]~DUPLICATE_q\;
\G1|ALT_INV_pout[7]~DUPLICATE_q\ <= NOT \G1|pout[7]~DUPLICATE_q\;
\G1|ALT_INV_pout[6]~DUPLICATE_q\ <= NOT \G1|pout[6]~DUPLICATE_q\;
\G1|ALT_INV_pout[2]~DUPLICATE_q\ <= NOT \G1|pout[2]~DUPLICATE_q\;
\G1|ALT_INV_pout[1]~DUPLICATE_q\ <= NOT \G1|pout[1]~DUPLICATE_q\;
\G2|ALT_INV_saida[3]~DUPLICATE_q\ <= NOT \G2|saida[3]~DUPLICATE_q\;
\G13|ALT_INV_SAIDA[14]~DUPLICATE_q\ <= NOT \G13|SAIDA[14]~DUPLICATE_q\;
\G13|ALT_INV_SAIDA[8]~DUPLICATE_q\ <= NOT \G13|SAIDA[8]~DUPLICATE_q\;
\G12|ALT_INV_SAIDA[13]~DUPLICATE_q\ <= NOT \G12|SAIDA[13]~DUPLICATE_q\;
\G12|ALT_INV_SAIDA[12]~DUPLICATE_q\ <= NOT \G12|SAIDA[12]~DUPLICATE_q\;

-- Location: IOOBUF_X4_Y0_N53
\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(0));

-- Location: IOOBUF_X6_Y0_N36
\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(1));

-- Location: IOOBUF_X4_Y0_N36
\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(2));

-- Location: IOOBUF_X2_Y0_N76
\Instruction_to_Control_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(0));

-- Location: IOOBUF_X28_Y0_N36
\Instruction_to_Control_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(1));

-- Location: IOOBUF_X26_Y0_N93
\Instruction_to_Control_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(2));

-- Location: IOOBUF_X4_Y0_N19
\Instruction_to_Control_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(3));

-- Location: IOOBUF_X26_Y0_N76
\Instruction_to_register1_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~reg0_q\,
	oe => \G4|rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(0));

-- Location: IOOBUF_X26_Y0_N59
\Instruction_to_register1_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~reg0_q\,
	oe => \G4|rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(1));

-- Location: IOOBUF_X2_Y0_N42
\Instruction_to_register1_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(2));

-- Location: IOOBUF_X30_Y0_N36
\Instruction_to_register2_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~reg0_q\,
	oe => \G4|rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(0));

-- Location: IOOBUF_X6_Y0_N53
\Instruction_to_register2_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(1));

-- Location: IOOBUF_X4_Y0_N2
\Instruction_to_register2_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(2));

-- Location: IOOBUF_X26_Y0_N42
\Instruction_to_controlULA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~reg0_q\,
	oe => \G4|rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(0));

-- Location: IOOBUF_X6_Y0_N19
\Instruction_to_controlULA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(1));

-- Location: IOOBUF_X6_Y0_N2
\Instruction_to_controlULA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(2));

-- Location: IOOBUF_X40_Y81_N36
\Instruction_to_extensorDeSinal_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(0));

-- Location: IOOBUF_X89_Y38_N39
\Instruction_to_extensorDeSinal_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(1));

-- Location: IOOBUF_X8_Y0_N2
\Instruction_to_extensorDeSinal_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(2));

-- Location: IOOBUF_X80_Y81_N53
\Instruction_to_extensorDeSinal_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(3));

-- Location: IOOBUF_X26_Y81_N76
\Instruction_to_extensorDeSinal_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(4));

-- Location: IOOBUF_X84_Y81_N36
\Instruction_to_extensorDeSinal_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(5));

-- Location: IOOBUF_X72_Y81_N53
\Instruction_to_Jump_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(0));

-- Location: IOOBUF_X56_Y81_N36
\Instruction_to_Jump_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(1));

-- Location: IOOBUF_X82_Y81_N93
\Instruction_to_Jump_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(2));

-- Location: IOOBUF_X88_Y81_N37
\Instruction_to_Jump_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(3));

-- Location: IOOBUF_X80_Y81_N19
\Instruction_to_Jump_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(4));

-- Location: IOOBUF_X56_Y81_N2
\Instruction_to_Jump_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(5));

-- Location: IOOBUF_X66_Y81_N76
\Instruction_to_Jump_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(6));

-- Location: IOOBUF_X36_Y81_N36
\Instruction_to_Jump_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(7));

-- Location: IOOBUF_X84_Y81_N19
\Instruction_to_Jump_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(8));

-- Location: IOOBUF_X40_Y81_N19
\Instruction_to_Jump_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(9));

-- Location: IOOBUF_X88_Y81_N54
\Instruction_to_Jump_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(10));

-- Location: IOOBUF_X30_Y81_N19
\Instruction_to_Jump_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(11));

-- Location: IOOBUF_X72_Y81_N36
\Flag_regdest_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|SAIDA\(0),
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_regdest_OUT);

-- Location: IOOBUF_X72_Y81_N2
\Flag_origialu_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA\(0),
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(0));

-- Location: IOOBUF_X74_Y81_N76
\Flag_origialu_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(1));

-- Location: IOOBUF_X54_Y81_N36
\Flag_origialu_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA\(0),
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(2));

-- Location: IOOBUF_X76_Y81_N2
\Flag_origialu_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(3));

-- Location: IOOBUF_X58_Y81_N59
\Flag_memparareg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_memparareg_OUT);

-- Location: IOOBUF_X72_Y81_N19
\Flag_escrevereg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|SAIDA\(0),
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_escrevereg_OUT);

-- Location: IOOBUF_X76_Y81_N36
\Flag_lemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_lemem_OUT);

-- Location: IOOBUF_X74_Y81_N59
\Flag_escrevemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_escrevemem_OUT);

-- Location: IOOBUF_X76_Y81_N19
\Flag_branch_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA\(0),
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_branch_OUT);

-- Location: IOOBUF_X58_Y81_N76
\Flag_aluSRC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|SAIDA\(0),
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_aluSRC_OUT);

-- Location: IOOBUF_X56_Y81_N19
\Flag_jump_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA\(0),
	oe => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Flag_jump_OUT);

-- Location: IOOBUF_X50_Y81_N59
\SomadorToPc_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(0),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(0));

-- Location: IOOBUF_X38_Y0_N2
\SomadorToPc_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(1),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(1));

-- Location: IOOBUF_X54_Y0_N36
\SomadorToPc_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(2),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(2));

-- Location: IOOBUF_X50_Y0_N59
\SomadorToPc_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(3),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(3));

-- Location: IOOBUF_X50_Y0_N42
\SomadorToPc_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(4),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(4));

-- Location: IOOBUF_X89_Y35_N79
\SomadorToPc_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(5),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(5));

-- Location: IOOBUF_X8_Y0_N36
\SomadorToPc_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(6),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(6));

-- Location: IOOBUF_X40_Y0_N19
\SomadorToPc_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(7),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(7));

-- Location: IOOBUF_X56_Y0_N36
\SomadorToPc_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(8),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(8));

-- Location: IOOBUF_X56_Y0_N2
\SomadorToPc_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(9),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(9));

-- Location: IOOBUF_X52_Y0_N36
\SomadorToPc_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(10),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(10));

-- Location: IOOBUF_X89_Y35_N96
\SomadorToPc_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(11),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(11));

-- Location: IOOBUF_X36_Y0_N2
\SomadorToPc_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(12),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(12));

-- Location: IOOBUF_X28_Y0_N2
\SomadorToPc_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(13),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(13));

-- Location: IOOBUF_X40_Y0_N36
\SomadorToPc_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(14),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(14));

-- Location: IOOBUF_X38_Y0_N36
\SomadorToPc_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(15),
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(15));

-- Location: IOOBUF_X50_Y0_N93
\SaidaPc_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(0),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(0));

-- Location: IOOBUF_X28_Y0_N53
\SaidaPc_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(1));

-- Location: IOOBUF_X50_Y0_N76
\SaidaPc_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(2));

-- Location: IOOBUF_X54_Y0_N2
\SaidaPc_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(3),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(3));

-- Location: IOOBUF_X32_Y0_N53
\SaidaPc_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(4),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(4));

-- Location: IOOBUF_X58_Y0_N42
\SaidaPc_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(5),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(5));

-- Location: IOOBUF_X54_Y0_N19
\SaidaPc_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(6));

-- Location: IOOBUF_X56_Y0_N19
\SaidaPc_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(7));

-- Location: IOOBUF_X56_Y0_N53
\SaidaPc_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(8),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(8));

-- Location: IOOBUF_X52_Y0_N53
\SaidaPc_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(9),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(9));

-- Location: IOOBUF_X52_Y0_N2
\SaidaPc_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(10),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(10));

-- Location: IOOBUF_X58_Y0_N93
\SaidaPc_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(11),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(11));

-- Location: IOOBUF_X40_Y0_N53
\SaidaPc_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(12),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(12));

-- Location: IOOBUF_X32_Y0_N36
\SaidaPc_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(13));

-- Location: IOOBUF_X40_Y0_N2
\SaidaPc_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(14),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(14));

-- Location: IOOBUF_X38_Y0_N53
\SaidaPc_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(15),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(15));

-- Location: IOOBUF_X64_Y0_N19
\SaidaRegA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~148_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(0));

-- Location: IOOBUF_X89_Y6_N56
\SaidaRegA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~149_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(1));

-- Location: IOOBUF_X68_Y0_N53
\SaidaRegA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~150_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(2));

-- Location: IOOBUF_X89_Y4_N62
\SaidaRegA_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~151_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(3));

-- Location: IOOBUF_X64_Y0_N2
\SaidaRegA_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~152_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(4));

-- Location: IOOBUF_X66_Y0_N93
\SaidaRegA_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~153_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(5));

-- Location: IOOBUF_X64_Y0_N36
\SaidaRegA_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~154_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(6));

-- Location: IOOBUF_X66_Y0_N76
\SaidaRegA_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~155_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(7));

-- Location: IOOBUF_X89_Y4_N96
\SaidaRegA_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~156_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(8));

-- Location: IOOBUF_X64_Y0_N53
\SaidaRegA_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~157_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(9));

-- Location: IOOBUF_X89_Y4_N79
\SaidaRegA_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~158_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(10));

-- Location: IOOBUF_X89_Y4_N45
\SaidaRegA_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~159_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(11));

-- Location: IOOBUF_X62_Y0_N19
\SaidaRegA_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~160_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(12));

-- Location: IOOBUF_X68_Y0_N19
\SaidaRegA_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~161_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(13));

-- Location: IOOBUF_X66_Y0_N59
\SaidaRegA_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~162_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(14));

-- Location: IOOBUF_X68_Y0_N2
\SaidaRegA_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~163_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(15));

-- Location: IOOBUF_X89_Y36_N5
\SaidaRegB_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~164_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(0));

-- Location: IOOBUF_X89_Y37_N56
\SaidaRegB_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~165_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(1));

-- Location: IOOBUF_X70_Y0_N2
\SaidaRegB_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~166_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(2));

-- Location: IOOBUF_X60_Y0_N53
\SaidaRegB_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~167_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(3));

-- Location: IOOBUF_X60_Y0_N36
\SaidaRegB_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~168_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(4));

-- Location: IOOBUF_X64_Y81_N36
\SaidaRegB_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~169_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(5));

-- Location: IOOBUF_X62_Y81_N2
\SaidaRegB_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~170_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(6));

-- Location: IOOBUF_X64_Y81_N53
\SaidaRegB_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~171_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(7));

-- Location: IOOBUF_X62_Y81_N36
\SaidaRegB_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~172_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(8));

-- Location: IOOBUF_X62_Y81_N53
\SaidaRegB_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~173_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(9));

-- Location: IOOBUF_X89_Y36_N56
\SaidaRegB_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~174_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(10));

-- Location: IOOBUF_X62_Y81_N19
\SaidaRegB_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~175_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(11));

-- Location: IOOBUF_X89_Y36_N39
\SaidaRegB_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~176_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(12));

-- Location: IOOBUF_X89_Y37_N22
\SaidaRegB_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~177_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(13));

-- Location: IOOBUF_X58_Y0_N76
\SaidaRegB_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~178_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(14));

-- Location: IOOBUF_X89_Y8_N56
\SaidaRegB_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~179_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(15));

-- Location: IOOBUF_X54_Y81_N19
\multiplexador_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA\(0),
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X54_Y81_N53
\multiplexador_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA\(0),
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X74_Y81_N93
\multiplexador_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA\(0),
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X70_Y0_N36
\Data_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X89_Y9_N5
\Data_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(1),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X66_Y0_N42
\Data_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(2),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X62_Y0_N53
\Data_to_writeRegister_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(3),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(3));

-- Location: IOOBUF_X89_Y35_N45
\Data_to_writeRegister_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(4),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(4));

-- Location: IOOBUF_X68_Y0_N36
\Data_to_writeRegister_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(5),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(5));

-- Location: IOOBUF_X89_Y9_N22
\Data_to_writeRegister_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(6),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(6));

-- Location: IOOBUF_X89_Y6_N22
\Data_to_writeRegister_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(7),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(7));

-- Location: IOOBUF_X2_Y0_N59
\Data_to_writeRegister_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(8),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(8));

-- Location: IOOBUF_X89_Y6_N5
\Data_to_writeRegister_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(9),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(9));

-- Location: IOOBUF_X62_Y0_N36
\Data_to_writeRegister_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(10),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(10));

-- Location: IOOBUF_X89_Y9_N39
\Data_to_writeRegister_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(11),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(11));

-- Location: IOOBUF_X70_Y0_N53
\Data_to_writeRegister_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(12),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(12));

-- Location: IOOBUF_X70_Y0_N19
\Data_to_writeRegister_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(13),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(13));

-- Location: IOOBUF_X60_Y0_N2
\Data_to_writeRegister_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(14),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(14));

-- Location: IOOBUF_X89_Y6_N39
\Data_to_writeRegister_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(15),
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(15));

-- Location: IOOBUF_X30_Y0_N19
\Saida_mult_to_mult_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(0));

-- Location: IOOBUF_X40_Y81_N53
\Saida_mult_to_mult_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(1),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(1));

-- Location: IOOBUF_X50_Y81_N42
\Saida_mult_to_mult_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(2));

-- Location: IOOBUF_X52_Y81_N53
\Saida_mult_to_mult_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(3),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(3));

-- Location: IOOBUF_X54_Y0_N53
\Saida_mult_to_mult_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(4),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(4));

-- Location: IOOBUF_X58_Y81_N93
\Saida_mult_to_mult_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(5),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(5));

-- Location: IOOBUF_X30_Y0_N2
\Saida_mult_to_mult_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(6),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(6));

-- Location: IOOBUF_X36_Y0_N19
\Saida_mult_to_mult_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(7),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(7));

-- Location: IOOBUF_X52_Y0_N19
\Saida_mult_to_mult_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(8),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(8));

-- Location: IOOBUF_X60_Y0_N19
\Saida_mult_to_mult_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(9),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(9));

-- Location: IOOBUF_X52_Y81_N2
\Saida_mult_to_mult_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(10),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(10));

-- Location: IOOBUF_X89_Y9_N56
\Saida_mult_to_mult_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(11),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(11));

-- Location: IOOBUF_X36_Y0_N53
\Saida_mult_to_mult_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(12),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(12));

-- Location: IOOBUF_X32_Y0_N2
\Saida_mult_to_mult_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(13),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(13));

-- Location: IOOBUF_X32_Y0_N19
\Saida_mult_to_mult_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(14),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(14));

-- Location: IOOBUF_X34_Y0_N93
\Saida_mult_to_mult_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(15),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(15));

-- Location: IOOBUF_X50_Y81_N93
\Saida_to_PC_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(0));

-- Location: IOOBUF_X38_Y0_N19
\Saida_to_PC_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(1),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(1));

-- Location: IOOBUF_X28_Y0_N19
\Saida_to_PC_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(2),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(2));

-- Location: IOOBUF_X50_Y81_N76
\Saida_to_PC_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(3));

-- Location: IOOBUF_X89_Y8_N22
\Saida_to_PC_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(4),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(4));

-- Location: IOOBUF_X56_Y81_N53
\Saida_to_PC_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(5),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(5));

-- Location: IOOBUF_X8_Y0_N53
\Saida_to_PC_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(6),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(6));

-- Location: IOOBUF_X36_Y0_N36
\Saida_to_PC_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(7),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(7));

-- Location: IOOBUF_X58_Y0_N59
\Saida_to_PC_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(8),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(8));

-- Location: IOOBUF_X52_Y81_N36
\Saida_to_PC_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(9),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(9));

-- Location: IOOBUF_X52_Y81_N19
\Saida_to_PC_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(10),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(10));

-- Location: IOOBUF_X58_Y81_N42
\Saida_to_PC_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(11),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(11));

-- Location: IOOBUF_X34_Y0_N76
\Saida_to_PC_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(12),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(12));

-- Location: IOOBUF_X34_Y0_N42
\Saida_to_PC_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(13),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(13));

-- Location: IOOBUF_X34_Y0_N59
\Saida_to_PC_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(14),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(14));

-- Location: IOOBUF_X30_Y0_N53
\Saida_to_PC_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(15),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(15));

-- Location: IOOBUF_X70_Y81_N19
\Saida_adress_to_RAM_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(0));

-- Location: IOOBUF_X89_Y8_N5
\Saida_adress_to_RAM_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux14~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(1));

-- Location: IOOBUF_X72_Y0_N53
\Saida_adress_to_RAM_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(2));

-- Location: IOOBUF_X72_Y0_N2
\Saida_adress_to_RAM_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(3));

-- Location: IOOBUF_X72_Y0_N19
\Saida_adress_to_RAM_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(4));

-- Location: IOOBUF_X89_Y38_N5
\Saida_adress_to_RAM_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(5));

-- Location: IOOBUF_X89_Y38_N22
\Saida_adress_to_RAM_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(6));

-- Location: IOOBUF_X89_Y8_N39
\Saida_adress_to_RAM_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(7));

-- Location: IOOBUF_X89_Y37_N39
\Saida_adress_to_RAM_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(8));

-- Location: IOOBUF_X68_Y81_N19
\Saida_adress_to_RAM_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(9));

-- Location: IOOBUF_X89_Y37_N5
\Saida_adress_to_RAM_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(10));

-- Location: IOOBUF_X89_Y36_N22
\Saida_adress_to_RAM_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(11));

-- Location: IOOBUF_X89_Y38_N56
\Saida_adress_to_RAM_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(12));

-- Location: IOOBUF_X70_Y81_N53
\Saida_adress_to_RAM_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(13));

-- Location: IOOBUF_X62_Y0_N2
\Saida_adress_to_RAM_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(14));

-- Location: IOOBUF_X72_Y0_N36
\Saida_adress_to_RAM_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(15));

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

-- Location: LABCELL_X63_Y4_N15
\G4|rs[0]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[0]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \G4|rs[0]~enfeeder_combout\);

-- Location: FF_X63_Y4_N17
\G4|rs[0]~enDUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|rs[0]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rs[0]~enDUPLICATE_q\);

-- Location: FF_X62_Y4_N26
\G6|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|rs[0]~enDUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G6|SAIDA\(0));

-- Location: LABCELL_X50_Y4_N39
\G2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|saida[0]~0_combout\ = ( !\G1|pout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G1|ALT_INV_pout\(0),
	combout => \G2|saida[0]~0_combout\);

-- Location: FF_X50_Y4_N40
\G2|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(0));

-- Location: FF_X50_Y4_N37
\G12|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(0));

-- Location: LABCELL_X50_Y4_N45
\G13|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~0_combout\ = ( \G12|SAIDA\(0) & ( \G6|SAIDA\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA\(0),
	dataf => \G12|ALT_INV_SAIDA\(0),
	combout => \G13|SAIDA~0_combout\);

-- Location: FF_X50_Y4_N46
\G13|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(0));

-- Location: FF_X50_Y4_N43
\G1|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(0));

-- Location: LABCELL_X51_Y1_N0
\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout[1]~DUPLICATE_q\ ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout[1]~DUPLICATE_q\ ) + ( \G1|pout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(0),
	datad => \G1|ALT_INV_pout[1]~DUPLICATE_q\,
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

-- Location: FF_X51_Y1_N2
\G2|saida[1]\ : dffeas
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
	q => \G2|saida\(1));

-- Location: FF_X40_Y4_N14
\G12|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(1));

-- Location: LABCELL_X40_Y4_N15
\G13|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~1_combout\ = ( \G12|SAIDA\(1) & ( \G6|SAIDA\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G6|ALT_INV_SAIDA\(0),
	dataf => \G12|ALT_INV_SAIDA\(1),
	combout => \G13|SAIDA~1_combout\);

-- Location: FF_X40_Y4_N16
\G13|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(1));

-- Location: LABCELL_X50_Y4_N48
\G1|pout[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[1]~feeder_combout\ = ( \G13|SAIDA\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA\(1),
	combout => \G1|pout[1]~feeder_combout\);

-- Location: FF_X50_Y4_N49
\G1|pout[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[1]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y1_N3
\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout[2]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout[2]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout[2]~DUPLICATE_q\,
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

-- Location: FF_X51_Y1_N4
\G2|saida[2]\ : dffeas
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
	q => \G2|saida\(2));

-- Location: LABCELL_X50_Y4_N9
\G12|SAIDA[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[2]~feeder_combout\ = ( \G2|saida\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(2),
	combout => \G12|SAIDA[2]~feeder_combout\);

-- Location: FF_X50_Y4_N11
\G12|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(2));

-- Location: LABCELL_X50_Y4_N6
\G13|SAIDA[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[2]~feeder_combout\ = ( \G12|SAIDA\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(2),
	combout => \G13|SAIDA[2]~feeder_combout\);

-- Location: FF_X50_Y4_N7
\G13|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[2]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(2));

-- Location: FF_X50_Y4_N58
\G1|pout[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[2]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y1_N6
\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(3),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);

-- Location: FF_X51_Y1_N7
\G2|saida[3]~DUPLICATE\ : dffeas
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
	q => \G2|saida[3]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y4_N15
\G12|SAIDA[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[3]~feeder_combout\ = ( \G2|saida[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida[3]~DUPLICATE_q\,
	combout => \G12|SAIDA[3]~feeder_combout\);

-- Location: FF_X50_Y4_N16
\G12|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(3));

-- Location: LABCELL_X50_Y4_N33
\G13|SAIDA[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[3]~feeder_combout\ = ( \G12|SAIDA\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(3),
	combout => \G13|SAIDA[3]~feeder_combout\);

-- Location: FF_X50_Y4_N35
\G13|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[3]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(3));

-- Location: FF_X50_Y4_N56
\G1|pout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(3));

-- Location: LABCELL_X51_Y1_N9
\G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~13_sumout\ = SUM(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))
-- \G2|Add0~14\ = CARRY(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(4),
	cin => \G2|Add0~10\,
	sumout => \G2|Add0~13_sumout\,
	cout => \G2|Add0~14\);

-- Location: FF_X51_Y1_N11
\G2|saida[4]\ : dffeas
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
	q => \G2|saida\(4));

-- Location: LABCELL_X51_Y1_N51
\G12|SAIDA[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[4]~feeder_combout\ = ( \G2|saida\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(4),
	combout => \G12|SAIDA[4]~feeder_combout\);

-- Location: FF_X51_Y1_N52
\G12|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(4));

-- Location: LABCELL_X50_Y4_N27
\G13|SAIDA[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[4]~feeder_combout\ = ( \G12|SAIDA\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(4),
	combout => \G13|SAIDA[4]~feeder_combout\);

-- Location: FF_X50_Y4_N28
\G13|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[4]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(4));

-- Location: LABCELL_X50_Y4_N24
\G1|pout[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[4]~feeder_combout\ = ( \G13|SAIDA\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA\(4),
	combout => \G1|pout[4]~feeder_combout\);

-- Location: FF_X50_Y4_N25
\G1|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(4));

-- Location: LABCELL_X51_Y1_N12
\G2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~17_sumout\ = SUM(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))
-- \G2|Add0~18\ = CARRY(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(5),
	cin => \G2|Add0~14\,
	sumout => \G2|Add0~17_sumout\,
	cout => \G2|Add0~18\);

-- Location: FF_X51_Y1_N14
\G2|saida[5]\ : dffeas
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
	q => \G2|saida\(5));

-- Location: LABCELL_X57_Y5_N51
\G12|SAIDA[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[5]~feeder_combout\ = ( \G2|saida\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(5),
	combout => \G12|SAIDA[5]~feeder_combout\);

-- Location: FF_X57_Y5_N53
\G12|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(5));

-- Location: LABCELL_X57_Y5_N15
\G13|SAIDA[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[5]~feeder_combout\ = \G12|SAIDA\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(5),
	combout => \G13|SAIDA[5]~feeder_combout\);

-- Location: FF_X57_Y5_N16
\G13|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[5]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(5));

-- Location: LABCELL_X57_Y5_N48
\G1|pout[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[5]~feeder_combout\ = ( \G13|SAIDA\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA\(5),
	combout => \G1|pout[5]~feeder_combout\);

-- Location: FF_X57_Y5_N49
\G1|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(5));

-- Location: LABCELL_X51_Y1_N15
\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(6),
	cin => \G2|Add0~18\,
	sumout => \G2|Add0~21_sumout\,
	cout => \G2|Add0~22\);

-- Location: FF_X51_Y1_N16
\G2|saida[6]\ : dffeas
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
	q => \G2|saida\(6));

-- Location: LABCELL_X30_Y1_N15
\G12|SAIDA[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[6]~feeder_combout\ = ( \G2|saida\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(6),
	combout => \G12|SAIDA[6]~feeder_combout\);

-- Location: FF_X30_Y1_N16
\G12|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(6));

-- Location: LABCELL_X40_Y4_N30
\G13|SAIDA[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[6]~feeder_combout\ = ( \G12|SAIDA\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(6),
	combout => \G13|SAIDA[6]~feeder_combout\);

-- Location: FF_X40_Y4_N31
\G13|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[6]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(6));

-- Location: LABCELL_X51_Y1_N57
\G1|pout[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[6]~feeder_combout\ = ( \G13|SAIDA\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA\(6),
	combout => \G1|pout[6]~feeder_combout\);

-- Location: FF_X51_Y1_N59
\G1|pout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(6));

-- Location: LABCELL_X51_Y1_N18
\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout[7]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout[7]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout[7]~DUPLICATE_q\,
	cin => \G2|Add0~22\,
	sumout => \G2|Add0~25_sumout\,
	cout => \G2|Add0~26\);

-- Location: FF_X51_Y1_N19
\G2|saida[7]\ : dffeas
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
	q => \G2|saida\(7));

-- Location: FF_X40_Y1_N4
\G12|SAIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(7));

-- Location: LABCELL_X40_Y4_N27
\G13|SAIDA[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[7]~feeder_combout\ = ( \G12|SAIDA\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(7),
	combout => \G13|SAIDA[7]~feeder_combout\);

-- Location: FF_X40_Y4_N28
\G13|SAIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[7]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(7));

-- Location: FF_X52_Y4_N55
\G1|pout[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[7]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y1_N21
\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(8),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);

-- Location: FF_X51_Y1_N22
\G2|saida[8]\ : dffeas
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
	q => \G2|saida\(8));

-- Location: LABCELL_X51_Y1_N48
\G12|SAIDA[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[8]~feeder_combout\ = ( \G2|saida\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(8),
	combout => \G12|SAIDA[8]~feeder_combout\);

-- Location: FF_X51_Y1_N49
\G12|SAIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(8));

-- Location: MLABCELL_X52_Y4_N42
\G13|SAIDA[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[8]~feeder_combout\ = ( \G12|SAIDA\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(8),
	combout => \G13|SAIDA[8]~feeder_combout\);

-- Location: FF_X52_Y4_N44
\G13|SAIDA[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[8]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA[8]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N45
\G1|pout[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[8]~feeder_combout\ = ( \G13|SAIDA[8]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA[8]~DUPLICATE_q\,
	combout => \G1|pout[8]~feeder_combout\);

-- Location: FF_X52_Y4_N46
\G1|pout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(8));

-- Location: LABCELL_X51_Y1_N24
\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

-- Location: FF_X51_Y1_N25
\G2|saida[9]\ : dffeas
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
	q => \G2|saida\(9));

-- Location: FF_X56_Y1_N40
\G12|SAIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(9));

-- Location: MLABCELL_X52_Y4_N51
\G13|SAIDA[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[9]~feeder_combout\ = ( \G12|SAIDA\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(9),
	combout => \G13|SAIDA[9]~feeder_combout\);

-- Location: FF_X52_Y4_N52
\G13|SAIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[9]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(9));

-- Location: FF_X52_Y4_N59
\G1|pout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(9));

-- Location: LABCELL_X51_Y1_N27
\G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~37_sumout\ = SUM(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))
-- \G2|Add0~38\ = CARRY(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(10),
	cin => \G2|Add0~34\,
	sumout => \G2|Add0~37_sumout\,
	cout => \G2|Add0~38\);

-- Location: FF_X51_Y1_N28
\G2|saida[10]\ : dffeas
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
	q => \G2|saida\(10));

-- Location: MLABCELL_X52_Y4_N39
\G12|SAIDA[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[10]~feeder_combout\ = ( \G2|saida\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(10),
	combout => \G12|SAIDA[10]~feeder_combout\);

-- Location: FF_X52_Y4_N40
\G12|SAIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(10));

-- Location: MLABCELL_X52_Y4_N36
\G13|SAIDA[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[10]~feeder_combout\ = \G12|SAIDA\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(10),
	combout => \G13|SAIDA[10]~feeder_combout\);

-- Location: FF_X52_Y4_N38
\G13|SAIDA[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[10]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA[10]~DUPLICATE_q\);

-- Location: FF_X52_Y4_N28
\G1|pout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA[10]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(10));

-- Location: LABCELL_X51_Y1_N30
\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

-- Location: FF_X51_Y1_N31
\G2|saida[11]\ : dffeas
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
	q => \G2|saida\(11));

-- Location: LABCELL_X57_Y5_N42
\G12|SAIDA[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[11]~feeder_combout\ = ( \G2|saida\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(11),
	combout => \G12|SAIDA[11]~feeder_combout\);

-- Location: FF_X57_Y5_N43
\G12|SAIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(11));

-- Location: LABCELL_X57_Y5_N30
\G13|SAIDA[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[11]~feeder_combout\ = \G12|SAIDA\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(11),
	combout => \G13|SAIDA[11]~feeder_combout\);

-- Location: FF_X57_Y5_N31
\G13|SAIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[11]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(11));

-- Location: LABCELL_X57_Y5_N33
\G1|pout[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[11]~feeder_combout\ = ( \G13|SAIDA\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA\(11),
	combout => \G1|pout[11]~feeder_combout\);

-- Location: FF_X57_Y5_N34
\G1|pout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(11));

-- Location: FF_X52_Y4_N56
\G1|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(7));

-- Location: FF_X51_Y1_N58
\G1|pout[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[6]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N57
\G4|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~1_combout\ = ( !\G1|pout\(9) & ( !\G1|pout[6]~DUPLICATE_q\ & ( (!\G1|pout\(7) & (!\G1|pout\(8) & !\G1|pout\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(7),
	datab => \G1|ALT_INV_pout\(8),
	datac => \G1|ALT_INV_pout\(10),
	datae => \G1|ALT_INV_pout\(9),
	dataf => \G1|ALT_INV_pout[6]~DUPLICATE_q\,
	combout => \G4|Mux1~1_combout\);

-- Location: FF_X50_Y4_N50
\G1|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(1));

-- Location: FF_X50_Y4_N59
\G1|pout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(2));

-- Location: LABCELL_X50_Y4_N54
\G4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~0_combout\ = ( !\G1|pout\(3) & ( !\G1|pout\(0) & ( (!\G1|pout\(4) & (!\G1|pout\(1) & !\G1|pout\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(4),
	datac => \G1|ALT_INV_pout\(1),
	datad => \G1|ALT_INV_pout\(2),
	datae => \G1|ALT_INV_pout\(3),
	dataf => \G1|ALT_INV_pout\(0),
	combout => \G4|Mux1~0_combout\);

-- Location: LABCELL_X51_Y1_N33
\G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~45_sumout\ = SUM(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))
-- \G2|Add0~46\ = CARRY(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(12),
	cin => \G2|Add0~42\,
	sumout => \G2|Add0~45_sumout\,
	cout => \G2|Add0~46\);

-- Location: FF_X51_Y1_N34
\G2|saida[12]\ : dffeas
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
	q => \G2|saida\(12));

-- Location: FF_X36_Y1_N40
\G12|SAIDA[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA[12]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N21
\G13|SAIDA[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[12]~feeder_combout\ = \G12|SAIDA[12]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA[12]~DUPLICATE_q\,
	combout => \G13|SAIDA[12]~feeder_combout\);

-- Location: FF_X40_Y4_N23
\G13|SAIDA[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[12]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA[12]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N20
\G1|pout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA[12]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(12));

-- Location: LABCELL_X51_Y1_N36
\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout[13]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~46\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout[13]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout[13]~DUPLICATE_q\,
	cin => \G2|Add0~46\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

-- Location: FF_X51_Y1_N38
\G2|saida[13]\ : dffeas
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
	q => \G2|saida\(13));

-- Location: LABCELL_X33_Y1_N3
\G12|SAIDA[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[13]~feeder_combout\ = ( \G2|saida\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(13),
	combout => \G12|SAIDA[13]~feeder_combout\);

-- Location: FF_X33_Y1_N4
\G12|SAIDA[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA[13]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N3
\G13|SAIDA[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[13]~feeder_combout\ = ( \G12|SAIDA[13]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA[13]~DUPLICATE_q\,
	combout => \G13|SAIDA[13]~feeder_combout\);

-- Location: FF_X40_Y4_N5
\G13|SAIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[13]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(13));

-- Location: FF_X40_Y4_N1
\G1|pout[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[13]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y1_N39
\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

-- Location: FF_X51_Y1_N41
\G2|saida[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(14));

-- Location: LABCELL_X40_Y4_N57
\G12|SAIDA[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[14]~feeder_combout\ = ( \G2|saida\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(14),
	combout => \G12|SAIDA[14]~feeder_combout\);

-- Location: FF_X40_Y4_N59
\G12|SAIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(14));

-- Location: LABCELL_X40_Y4_N42
\G13|SAIDA[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[14]~feeder_combout\ = \G12|SAIDA\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(14),
	combout => \G13|SAIDA[14]~feeder_combout\);

-- Location: FF_X40_Y4_N56
\G3|resshift[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|resshift\(14));

-- Location: FF_X40_Y4_N44
\G13|SAIDA[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[14]~feeder_combout\,
	asdata => \G3|resshift\(14),
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA[14]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N45
\G1|pout[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[14]~feeder_combout\ = ( \G13|SAIDA[14]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA[14]~DUPLICATE_q\,
	combout => \G1|pout[14]~feeder_combout\);

-- Location: FF_X40_Y4_N47
\G1|pout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(14));

-- Location: LABCELL_X51_Y1_N42
\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(15) ) + ( GND ) + ( \G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(15),
	cin => \G2|Add0~54\,
	sumout => \G2|Add0~57_sumout\);

-- Location: FF_X51_Y1_N43
\G2|saida[15]\ : dffeas
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
	q => \G2|saida\(15));

-- Location: FF_X40_Y4_N38
\G12|SAIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(15));

-- Location: LABCELL_X40_Y4_N48
\G13|SAIDA[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[15]~feeder_combout\ = \G12|SAIDA\(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(15),
	combout => \G13|SAIDA[15]~feeder_combout\);

-- Location: LABCELL_X40_Y4_N39
\G3|resshift[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|resshift[15]~feeder_combout\ = ( \G2|saida\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(15),
	combout => \G3|resshift[15]~feeder_combout\);

-- Location: FF_X40_Y4_N41
\G3|resshift[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|resshift[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|resshift\(15));

-- Location: FF_X40_Y4_N50
\G13|SAIDA[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[15]~feeder_combout\,
	asdata => \G3|resshift\(15),
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA[15]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N53
\G1|pout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA[15]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(15));

-- Location: FF_X40_Y4_N2
\G1|pout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(13));

-- Location: LABCELL_X40_Y4_N12
\G4|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~2_combout\ = ( !\G1|pout\(12) & ( (!\G1|pout\(15) & (!\G1|pout\(14) & !\G1|pout\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(15),
	datab => \G1|ALT_INV_pout\(14),
	datac => \G1|ALT_INV_pout\(13),
	dataf => \G1|ALT_INV_pout\(12),
	combout => \G4|Mux1~2_combout\);

-- Location: LABCELL_X51_Y4_N0
\G4|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~3_combout\ = ( !\G1|pout\(5) & ( \G4|Mux1~2_combout\ & ( (!\G1|pout\(11) & (\G4|Mux1~1_combout\ & \G4|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(11),
	datab => \G4|ALT_INV_Mux1~1_combout\,
	datac => \G4|ALT_INV_Mux1~0_combout\,
	datae => \G1|ALT_INV_pout\(5),
	dataf => \G4|ALT_INV_Mux1~2_combout\,
	combout => \G4|Mux1~3_combout\);

-- Location: FF_X64_Y4_N53
\G4|rd[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rd[0]~reg0_q\);

-- Location: FF_X51_Y1_N8
\G2|saida[3]\ : dffeas
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
	q => \G2|saida\(3));

-- Location: LABCELL_X62_Y4_N30
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X67_Y4_N24
\G18|SAIDA[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[0]~feeder_combout\);

-- Location: LABCELL_X67_Y4_N18
\G4|rd[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~3_combout\ = ( \G4|rd[0]~reg0_q\ ) # ( !\G4|rd[0]~reg0_q\ & ( !\G4|rs[0]~enDUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G4|rd[0]~3_combout\);

-- Location: FF_X67_Y4_N19
\G15|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|rd[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(0));

-- Location: LABCELL_X64_Y4_N48
\G14|SAIDA[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \G14|SAIDA[0]~feeder_combout\);

-- Location: FF_X64_Y4_N50
\G14|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(0));

-- Location: LABCELL_X66_Y4_N0
\G16|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~1_sumout\ = SUM(( !\G14|SAIDA\(0) $ (!\G7|Reg~148_combout\) ) + ( !VCC ) + ( !VCC ))
-- \G16|Add1~2\ = CARRY(( !\G14|SAIDA\(0) $ (!\G7|Reg~148_combout\) ) + ( !VCC ) + ( !VCC ))
-- \G16|Add1~3\ = SHARE((!\G14|SAIDA\(0)) # (\G7|Reg~148_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~148_combout\,
	cin => GND,
	sharein => GND,
	sumout => \G16|Add1~1_sumout\,
	cout => \G16|Add1~2\,
	shareout => \G16|Add1~3\);

-- Location: LABCELL_X64_Y4_N0
\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( \G7|Reg~148_combout\ ) + ( \G14|SAIDA\(0) ) + ( !VCC ))
-- \G16|Add0~2\ = CARRY(( \G7|Reg~148_combout\ ) + ( \G14|SAIDA\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Reg~148_combout\,
	cin => GND,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

-- Location: LABCELL_X62_Y4_N27
\G15|SAIDA[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G15|SAIDA[3]~0_combout\ = ( !\G6|SAIDA\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G6|ALT_INV_SAIDA\(0),
	combout => \G15|SAIDA[3]~0_combout\);

-- Location: FF_X62_Y4_N28
\G15|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G15|SAIDA[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(3));

-- Location: LABCELL_X62_Y4_N24
\G16|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~0_combout\ = ( !\G15|SAIDA\(3) & ( \G6|SAIDA\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G6|ALT_INV_SAIDA\(0),
	dataf => \G15|ALT_INV_SAIDA\(3),
	combout => \G16|Mux14~0_combout\);

-- Location: LABCELL_X67_Y4_N27
\G16|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~0_combout\ = ( \G16|Mux14~0_combout\ & ( (!\G15|SAIDA\(0) & ((\G16|Add0~1_sumout\))) # (\G15|SAIDA\(0) & (\G16|Add1~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G15|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Add1~1_sumout\,
	datad => \G16|ALT_INV_Add0~1_sumout\,
	dataf => \G16|ALT_INV_Mux14~0_combout\,
	combout => \G16|Mux15~0_combout\);

-- Location: FF_X67_Y4_N25
\G18|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[0]~feeder_combout\,
	asdata => \G16|Mux15~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(0));

-- Location: FF_X65_Y4_N14
\G7|Reg~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(0),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~20_q\);

-- Location: FF_X65_Y4_N38
\G7|Reg~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(0),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~132_q\);

-- Location: FF_X63_Y4_N16
\G4|rs[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|rs[0]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rs[0]~en_q\);

-- Location: MLABCELL_X65_Y4_N33
\G7|Reg~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~148_combout\ = ( \G4|rs[0]~en_q\ & ( (\G7|Reg~20_q\ & !\G4|rd[0]~reg0_q\) ) ) # ( !\G4|rs[0]~en_q\ & ( \G7|Reg~132_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~20_q\,
	datac => \G4|ALT_INV_rd[0]~reg0_q\,
	datad => \G7|ALT_INV_Reg~132_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~148_combout\);

-- Location: LABCELL_X67_Y4_N6
\G18|SAIDA[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~feeder_combout\ = \~GND~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[1]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N3
\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( \G7|Reg~149_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( \G7|Reg~149_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~149_combout\,
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

-- Location: LABCELL_X66_Y4_N3
\G16|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~5_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~149_combout\) ) + ( \G16|Add1~3\ ) + ( \G16|Add1~2\ ))
-- \G16|Add1~6\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~149_combout\) ) + ( \G16|Add1~3\ ) + ( \G16|Add1~2\ ))
-- \G16|Add1~7\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~149_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~149_combout\,
	cin => \G16|Add1~2\,
	sharein => \G16|Add1~3\,
	sumout => \G16|Add1~5_sumout\,
	cout => \G16|Add1~6\,
	shareout => \G16|Add1~7\);

-- Location: LABCELL_X67_Y4_N45
\G16|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~1_combout\ = ( \G16|Add1~5_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G16|Add0~5_sumout\) # (\G15|SAIDA\(0)))) ) ) # ( !\G16|Add1~5_sumout\ & ( (\G16|Mux14~0_combout\ & (!\G15|SAIDA\(0) & \G16|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G15|ALT_INV_SAIDA\(0),
	datad => \G16|ALT_INV_Add0~5_sumout\,
	dataf => \G16|ALT_INV_Add1~5_sumout\,
	combout => \G16|Mux14~1_combout\);

-- Location: FF_X67_Y4_N8
\G18|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[1]~feeder_combout\,
	asdata => \G16|Mux14~1_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(1));

-- Location: FF_X64_Y4_N23
\G7|Reg~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(1),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~21_q\);

-- Location: FF_X64_Y4_N55
\G7|Reg~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(1),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~133_q\);

-- Location: LABCELL_X64_Y4_N54
\G7|Reg~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~149_combout\ = ( \G4|rd[0]~reg0_q\ & ( (!\G4|rs[0]~en_q\ & \G7|Reg~133_q\) ) ) # ( !\G4|rd[0]~reg0_q\ & ( (!\G4|rs[0]~en_q\ & ((\G7|Reg~133_q\))) # (\G4|rs[0]~en_q\ & (\G7|Reg~21_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G7|ALT_INV_Reg~21_q\,
	datad => \G7|ALT_INV_Reg~133_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~149_combout\);

-- Location: LABCELL_X67_Y4_N9
\G18|SAIDA[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[2]~feeder_combout\ = \~GND~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[2]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N6
\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( \G7|Reg~150_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( \G7|Reg~150_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~150_combout\,
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

-- Location: LABCELL_X66_Y4_N6
\G16|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~9_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~150_combout\) ) + ( \G16|Add1~7\ ) + ( \G16|Add1~6\ ))
-- \G16|Add1~10\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~150_combout\) ) + ( \G16|Add1~7\ ) + ( \G16|Add1~6\ ))
-- \G16|Add1~11\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~150_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~150_combout\,
	cin => \G16|Add1~6\,
	sharein => \G16|Add1~7\,
	sumout => \G16|Add1~9_sumout\,
	cout => \G16|Add1~10\,
	shareout => \G16|Add1~11\);

-- Location: LABCELL_X67_Y4_N36
\G16|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~0_combout\ = (\G16|Mux14~0_combout\ & ((!\G15|SAIDA\(0) & (\G16|Add0~9_sumout\)) # (\G15|SAIDA\(0) & ((\G16|Add1~9_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G15|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Add0~9_sumout\,
	datad => \G16|ALT_INV_Add1~9_sumout\,
	combout => \G16|Mux13~0_combout\);

-- Location: FF_X67_Y4_N10
\G18|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[2]~feeder_combout\,
	asdata => \G16|Mux13~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(2));

-- Location: FF_X64_Y4_N41
\G7|Reg~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(2),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~22_q\);

-- Location: FF_X64_Y4_N58
\G7|Reg~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(2),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~134_q\);

-- Location: LABCELL_X64_Y4_N57
\G7|Reg~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~150_combout\ = ( \G4|rs[0]~en_q\ & ( (!\G4|rd[0]~reg0_q\ & \G7|Reg~22_q\) ) ) # ( !\G4|rs[0]~en_q\ & ( \G7|Reg~134_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~22_q\,
	datad => \G7|ALT_INV_Reg~134_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~150_combout\);

-- Location: LABCELL_X67_Y4_N39
\G18|SAIDA[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[3]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[3]~feeder_combout\);

-- Location: LABCELL_X66_Y4_N9
\G16|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~13_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~151_combout\) ) + ( \G16|Add1~11\ ) + ( \G16|Add1~10\ ))
-- \G16|Add1~14\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~151_combout\) ) + ( \G16|Add1~11\ ) + ( \G16|Add1~10\ ))
-- \G16|Add1~15\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~151_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~151_combout\,
	cin => \G16|Add1~10\,
	sharein => \G16|Add1~11\,
	sumout => \G16|Add1~13_sumout\,
	cout => \G16|Add1~14\,
	shareout => \G16|Add1~15\);

-- Location: LABCELL_X64_Y4_N9
\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( \G7|Reg~151_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( \G7|Reg~151_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~151_combout\,
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

-- Location: LABCELL_X67_Y4_N30
\G16|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~0_combout\ = ( \G16|Add0~13_sumout\ & ( (\G16|Mux14~0_combout\ & ((!\G15|SAIDA\(0)) # (\G16|Add1~13_sumout\))) ) ) # ( !\G16|Add0~13_sumout\ & ( (\G16|Mux14~0_combout\ & (\G16|Add1~13_sumout\ & \G15|SAIDA\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Add1~13_sumout\,
	datac => \G15|ALT_INV_SAIDA\(0),
	dataf => \G16|ALT_INV_Add0~13_sumout\,
	combout => \G16|Mux12~0_combout\);

-- Location: FF_X67_Y4_N40
\G18|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[3]~feeder_combout\,
	asdata => \G16|Mux12~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(3));

-- Location: FF_X63_Y4_N2
\G7|Reg~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(3),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~135_q\);

-- Location: FF_X63_Y4_N59
\G7|Reg~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(3),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~23_q\);

-- Location: LABCELL_X63_Y4_N54
\G7|Reg~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~151_combout\ = ( \G7|Reg~23_q\ & ( \G4|rd[0]~reg0_q\ & ( (\G7|Reg~135_q\ & !\G4|rs[0]~enDUPLICATE_q\) ) ) ) # ( !\G7|Reg~23_q\ & ( \G4|rd[0]~reg0_q\ & ( (\G7|Reg~135_q\ & !\G4|rs[0]~enDUPLICATE_q\) ) ) ) # ( \G7|Reg~23_q\ & ( !\G4|rd[0]~reg0_q\ & 
-- ( (\G4|rs[0]~enDUPLICATE_q\) # (\G7|Reg~135_q\) ) ) ) # ( !\G7|Reg~23_q\ & ( !\G4|rd[0]~reg0_q\ & ( (\G7|Reg~135_q\ & !\G4|rs[0]~enDUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~135_q\,
	datad => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datae => \G7|ALT_INV_Reg~23_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~151_combout\);

-- Location: LABCELL_X67_Y4_N33
\G18|SAIDA[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[4]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[4]~feeder_combout\);

-- Location: LABCELL_X66_Y4_N12
\G16|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~17_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~152_combout\) ) + ( \G16|Add1~15\ ) + ( \G16|Add1~14\ ))
-- \G16|Add1~18\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~152_combout\) ) + ( \G16|Add1~15\ ) + ( \G16|Add1~14\ ))
-- \G16|Add1~19\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~152_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~152_combout\,
	cin => \G16|Add1~14\,
	sharein => \G16|Add1~15\,
	sumout => \G16|Add1~17_sumout\,
	cout => \G16|Add1~18\,
	shareout => \G16|Add1~19\);

-- Location: LABCELL_X64_Y4_N12
\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( \G7|Reg~152_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( \G7|Reg~152_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Reg~152_combout\,
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

-- Location: LABCELL_X67_Y4_N48
\G16|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~0_combout\ = ( \G16|Add0~17_sumout\ & ( (\G16|Mux14~0_combout\ & ((!\G15|SAIDA\(0)) # (\G16|Add1~17_sumout\))) ) ) # ( !\G16|Add0~17_sumout\ & ( (\G16|Mux14~0_combout\ & (\G15|SAIDA\(0) & \G16|Add1~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G15|ALT_INV_SAIDA\(0),
	datad => \G16|ALT_INV_Add1~17_sumout\,
	dataf => \G16|ALT_INV_Add0~17_sumout\,
	combout => \G16|Mux11~0_combout\);

-- Location: FF_X67_Y4_N34
\G18|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[4]~feeder_combout\,
	asdata => \G16|Mux11~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(4));

-- Location: FF_X63_Y4_N5
\G7|Reg~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(4),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~136_q\);

-- Location: FF_X63_Y4_N8
\G7|Reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(4),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~24_q\);

-- Location: LABCELL_X63_Y4_N39
\G7|Reg~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~152_combout\ = ( \G7|Reg~24_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~136_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~24_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~136_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000100010111011100010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~136_q\,
	dataf => \G7|ALT_INV_Reg~24_q\,
	combout => \G7|Reg~152_combout\);

-- Location: LABCELL_X67_Y4_N51
\G18|SAIDA[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[5]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[5]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N15
\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( \G7|Reg~153_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( \G7|Reg~153_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~153_combout\,
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

-- Location: LABCELL_X66_Y4_N15
\G16|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~21_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~153_combout\) ) + ( \G16|Add1~19\ ) + ( \G16|Add1~18\ ))
-- \G16|Add1~22\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~153_combout\) ) + ( \G16|Add1~19\ ) + ( \G16|Add1~18\ ))
-- \G16|Add1~23\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~153_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~153_combout\,
	cin => \G16|Add1~18\,
	sharein => \G16|Add1~19\,
	sumout => \G16|Add1~21_sumout\,
	cout => \G16|Add1~22\,
	shareout => \G16|Add1~23\);

-- Location: LABCELL_X67_Y4_N54
\G16|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~0_combout\ = ( \G16|Add1~21_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G16|Add0~21_sumout\) # (\G15|SAIDA\(0)))) ) ) # ( !\G16|Add1~21_sumout\ & ( (\G16|Mux14~0_combout\ & (!\G15|SAIDA\(0) & \G16|Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G15|ALT_INV_SAIDA\(0),
	datad => \G16|ALT_INV_Add0~21_sumout\,
	dataf => \G16|ALT_INV_Add1~21_sumout\,
	combout => \G16|Mux10~0_combout\);

-- Location: FF_X67_Y4_N52
\G18|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[5]~feeder_combout\,
	asdata => \G16|Mux10~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(5));

-- Location: FF_X63_Y4_N32
\G7|Reg~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(5),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~137_q\);

-- Location: FF_X63_Y4_N11
\G7|Reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(5),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~25_q\);

-- Location: LABCELL_X63_Y4_N48
\G7|Reg~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~153_combout\ = ( \G7|Reg~25_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~137_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~25_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~137_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~137_q\,
	dataf => \G7|ALT_INV_Reg~25_q\,
	combout => \G7|Reg~153_combout\);

-- Location: LABCELL_X67_Y4_N57
\G18|SAIDA[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[6]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[6]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N18
\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( \G7|Reg~154_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( \G7|Reg~154_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Reg~154_combout\,
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

-- Location: LABCELL_X66_Y4_N18
\G16|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~25_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~154_combout\) ) + ( \G16|Add1~23\ ) + ( \G16|Add1~22\ ))
-- \G16|Add1~26\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~154_combout\) ) + ( \G16|Add1~23\ ) + ( \G16|Add1~22\ ))
-- \G16|Add1~27\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~154_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Reg~154_combout\,
	cin => \G16|Add1~22\,
	sharein => \G16|Add1~23\,
	sumout => \G16|Add1~25_sumout\,
	cout => \G16|Add1~26\,
	shareout => \G16|Add1~27\);

-- Location: LABCELL_X67_Y4_N0
\G16|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~0_combout\ = ( \G16|Add1~25_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G16|Add0~25_sumout\) # (\G15|SAIDA\(0)))) ) ) # ( !\G16|Add1~25_sumout\ & ( (\G16|Mux14~0_combout\ & (!\G15|SAIDA\(0) & \G16|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G15|ALT_INV_SAIDA\(0),
	datad => \G16|ALT_INV_Add0~25_sumout\,
	dataf => \G16|ALT_INV_Add1~25_sumout\,
	combout => \G16|Mux9~0_combout\);

-- Location: FF_X67_Y4_N59
\G18|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[6]~feeder_combout\,
	asdata => \G16|Mux9~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(6));

-- Location: FF_X63_Y4_N44
\G7|Reg~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(6),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~138_q\);

-- Location: FF_X63_Y4_N53
\G7|Reg~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(6),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~26_q\);

-- Location: LABCELL_X63_Y4_N45
\G7|Reg~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~154_combout\ = ( \G7|Reg~26_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~138_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~26_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~138_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~138_q\,
	dataf => \G7|ALT_INV_Reg~26_q\,
	combout => \G7|Reg~154_combout\);

-- Location: LABCELL_X67_Y4_N3
\G18|SAIDA[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[7]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[7]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N21
\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( \G7|Reg~155_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( \G7|Reg~155_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Reg~155_combout\,
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

-- Location: LABCELL_X66_Y4_N21
\G16|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~29_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~155_combout\) ) + ( \G16|Add1~27\ ) + ( \G16|Add1~26\ ))
-- \G16|Add1~30\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~155_combout\) ) + ( \G16|Add1~27\ ) + ( \G16|Add1~26\ ))
-- \G16|Add1~31\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~155_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~155_combout\,
	cin => \G16|Add1~26\,
	sharein => \G16|Add1~27\,
	sumout => \G16|Add1~29_sumout\,
	cout => \G16|Add1~30\,
	shareout => \G16|Add1~31\);

-- Location: LABCELL_X67_Y4_N21
\G16|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux8~0_combout\ = ( \G16|Add1~29_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G16|Add0~29_sumout\) # (\G15|SAIDA\(0)))) ) ) # ( !\G16|Add1~29_sumout\ & ( (\G16|Mux14~0_combout\ & (!\G15|SAIDA\(0) & \G16|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G15|ALT_INV_SAIDA\(0),
	datad => \G16|ALT_INV_Add0~29_sumout\,
	dataf => \G16|ALT_INV_Add1~29_sumout\,
	combout => \G16|Mux8~0_combout\);

-- Location: FF_X67_Y4_N4
\G18|SAIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[7]~feeder_combout\,
	asdata => \G16|Mux8~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(7));

-- Location: FF_X63_Y4_N37
\G7|Reg~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(7),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~139_q\);

-- Location: FF_X63_Y4_N26
\G7|Reg~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(7),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~27_q\);

-- Location: LABCELL_X63_Y4_N33
\G7|Reg~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~155_combout\ = ( \G7|Reg~27_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~139_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~27_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~139_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~139_q\,
	dataf => \G7|ALT_INV_Reg~27_q\,
	combout => \G7|Reg~155_combout\);

-- Location: MLABCELL_X65_Y4_N3
\G18|SAIDA[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[8]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[8]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N24
\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( \G7|Reg~156_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( \G7|Reg~156_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~156_combout\,
	datac => \G14|ALT_INV_SAIDA\(0),
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

-- Location: LABCELL_X66_Y4_N24
\G16|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~33_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~156_combout\) ) + ( \G16|Add1~31\ ) + ( \G16|Add1~30\ ))
-- \G16|Add1~34\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~156_combout\) ) + ( \G16|Add1~31\ ) + ( \G16|Add1~30\ ))
-- \G16|Add1~35\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~156_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~156_combout\,
	cin => \G16|Add1~30\,
	sharein => \G16|Add1~31\,
	sumout => \G16|Add1~33_sumout\,
	cout => \G16|Add1~34\,
	shareout => \G16|Add1~35\);

-- Location: MLABCELL_X65_Y4_N45
\G16|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~0_combout\ = ( \G16|Add1~33_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G16|Add0~33_sumout\) # (\G15|SAIDA\(0)))) ) ) # ( !\G16|Add1~33_sumout\ & ( (!\G15|SAIDA\(0) & (\G16|Add0~33_sumout\ & \G16|Mux14~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Add0~33_sumout\,
	datad => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Add1~33_sumout\,
	combout => \G16|Mux7~0_combout\);

-- Location: FF_X65_Y4_N4
\G18|SAIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[8]~feeder_combout\,
	asdata => \G16|Mux7~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(8));

-- Location: FF_X63_Y4_N47
\G7|Reg~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(8),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~140_q\);

-- Location: FF_X63_Y4_N20
\G7|Reg~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(8),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~28_q\);

-- Location: LABCELL_X63_Y4_N9
\G7|Reg~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~156_combout\ = ( \G7|Reg~28_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~140_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~28_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~140_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001010111110100000101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~140_q\,
	dataf => \G7|ALT_INV_Reg~28_q\,
	combout => \G7|Reg~156_combout\);

-- Location: MLABCELL_X65_Y4_N42
\G18|SAIDA[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[9]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[9]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N27
\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( \G7|Reg~157_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( \G7|Reg~157_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~157_combout\,
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

-- Location: LABCELL_X66_Y4_N27
\G16|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~37_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~157_combout\) ) + ( \G16|Add1~35\ ) + ( \G16|Add1~34\ ))
-- \G16|Add1~38\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~157_combout\) ) + ( \G16|Add1~35\ ) + ( \G16|Add1~34\ ))
-- \G16|Add1~39\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~157_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~157_combout\,
	cin => \G16|Add1~34\,
	sharein => \G16|Add1~35\,
	sumout => \G16|Add1~37_sumout\,
	cout => \G16|Add1~38\,
	shareout => \G16|Add1~39\);

-- Location: MLABCELL_X65_Y4_N21
\G16|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux6~0_combout\ = ( \G16|Add1~37_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G16|Add0~37_sumout\) # (\G15|SAIDA\(0)))) ) ) # ( !\G16|Add1~37_sumout\ & ( (!\G15|SAIDA\(0) & (\G16|Mux14~0_combout\ & \G16|Add0~37_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Add0~37_sumout\,
	dataf => \G16|ALT_INV_Add1~37_sumout\,
	combout => \G16|Mux6~0_combout\);

-- Location: FF_X65_Y4_N43
\G18|SAIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[9]~feeder_combout\,
	asdata => \G16|Mux6~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(9));

-- Location: FF_X63_Y4_N23
\G7|Reg~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(9),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~29_q\);

-- Location: FF_X63_Y4_N35
\G7|Reg~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(9),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~141_q\);

-- Location: LABCELL_X63_Y4_N21
\G7|Reg~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~157_combout\ = ( \G7|Reg~141_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\) # ((!\G4|rd[0]~reg0_q\ & \G7|Reg~29_q\)) ) ) # ( !\G7|Reg~141_q\ & ( (!\G4|rd[0]~reg0_q\ & (\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~29_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~29_q\,
	dataf => \G7|ALT_INV_Reg~141_q\,
	combout => \G7|Reg~157_combout\);

-- Location: MLABCELL_X65_Y4_N18
\G18|SAIDA[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[10]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[10]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N30
\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( \G7|Reg~158_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( \G7|Reg~158_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~158_combout\,
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

-- Location: LABCELL_X66_Y4_N30
\G16|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~41_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~158_combout\) ) + ( \G16|Add1~39\ ) + ( \G16|Add1~38\ ))
-- \G16|Add1~42\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~158_combout\) ) + ( \G16|Add1~39\ ) + ( \G16|Add1~38\ ))
-- \G16|Add1~43\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~158_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~158_combout\,
	cin => \G16|Add1~38\,
	sharein => \G16|Add1~39\,
	sumout => \G16|Add1~41_sumout\,
	cout => \G16|Add1~42\,
	shareout => \G16|Add1~43\);

-- Location: MLABCELL_X65_Y4_N0
\G16|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux5~0_combout\ = ( \G16|Add1~41_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G16|Add0~41_sumout\) # (\G15|SAIDA\(0)))) ) ) # ( !\G16|Add1~41_sumout\ & ( (!\G15|SAIDA\(0) & (\G16|Mux14~0_combout\ & \G16|Add0~41_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(0),
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Add0~41_sumout\,
	dataf => \G16|ALT_INV_Add1~41_sumout\,
	combout => \G16|Mux5~0_combout\);

-- Location: FF_X65_Y4_N19
\G18|SAIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[10]~feeder_combout\,
	asdata => \G16|Mux5~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(10));

-- Location: FF_X63_Y4_N28
\G7|Reg~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(10),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~30_q\);

-- Location: FF_X63_Y4_N41
\G7|Reg~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(10),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~142_q\);

-- Location: LABCELL_X63_Y4_N27
\G7|Reg~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~158_combout\ = ( \G7|Reg~142_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\) # ((!\G4|rd[0]~reg0_q\ & \G7|Reg~30_q\)) ) ) # ( !\G7|Reg~142_q\ & ( (!\G4|rd[0]~reg0_q\ & (\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~30_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~30_q\,
	dataf => \G7|ALT_INV_Reg~142_q\,
	combout => \G7|Reg~158_combout\);

-- Location: MLABCELL_X65_Y4_N24
\G18|SAIDA[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[11]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[11]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N33
\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( \G7|Reg~159_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( \G7|Reg~159_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~159_combout\,
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

-- Location: LABCELL_X66_Y4_N33
\G16|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~45_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~159_combout\) ) + ( \G16|Add1~43\ ) + ( \G16|Add1~42\ ))
-- \G16|Add1~46\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~159_combout\) ) + ( \G16|Add1~43\ ) + ( \G16|Add1~42\ ))
-- \G16|Add1~47\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~159_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Reg~159_combout\,
	cin => \G16|Add1~42\,
	sharein => \G16|Add1~43\,
	sumout => \G16|Add1~45_sumout\,
	cout => \G16|Add1~46\,
	shareout => \G16|Add1~47\);

-- Location: MLABCELL_X65_Y4_N27
\G16|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux4~0_combout\ = ( \G16|Add1~45_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G16|Add0~45_sumout\) # (\G15|SAIDA\(0)))) ) ) # ( !\G16|Add1~45_sumout\ & ( (!\G15|SAIDA\(0) & (\G16|Mux14~0_combout\ & \G16|Add0~45_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Add0~45_sumout\,
	dataf => \G16|ALT_INV_Add1~45_sumout\,
	combout => \G16|Mux4~0_combout\);

-- Location: FF_X65_Y4_N25
\G18|SAIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[11]~feeder_combout\,
	asdata => \G16|Mux4~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(11));

-- Location: FF_X62_Y4_N40
\G7|Reg~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(11),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~143_q\);

-- Location: FF_X63_Y4_N50
\G7|Reg~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(11),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~31_q\);

-- Location: LABCELL_X63_Y4_N12
\G7|Reg~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~159_combout\ = ( \G4|rs[0]~enDUPLICATE_q\ & ( (\G7|Reg~31_q\ & !\G4|rd[0]~reg0_q\) ) ) # ( !\G4|rs[0]~enDUPLICATE_q\ & ( \G7|Reg~143_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~143_q\,
	datac => \G7|ALT_INV_Reg~31_q\,
	datad => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	combout => \G7|Reg~159_combout\);

-- Location: LABCELL_X66_Y4_N51
\G18|SAIDA[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[12]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[12]~feeder_combout\);

-- Location: LABCELL_X66_Y4_N36
\G16|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~49_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~160_combout\) ) + ( \G16|Add1~47\ ) + ( \G16|Add1~46\ ))
-- \G16|Add1~50\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~160_combout\) ) + ( \G16|Add1~47\ ) + ( \G16|Add1~46\ ))
-- \G16|Add1~51\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~160_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Reg~160_combout\,
	cin => \G16|Add1~46\,
	sharein => \G16|Add1~47\,
	sumout => \G16|Add1~49_sumout\,
	cout => \G16|Add1~50\,
	shareout => \G16|Add1~51\);

-- Location: LABCELL_X64_Y4_N36
\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( \G7|Reg~160_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( \G7|Reg~160_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~160_combout\,
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

-- Location: LABCELL_X66_Y4_N54
\G16|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux3~0_combout\ = ( \G16|Add0~49_sumout\ & ( (\G16|Mux14~0_combout\ & ((!\G15|SAIDA\(0)) # (\G16|Add1~49_sumout\))) ) ) # ( !\G16|Add0~49_sumout\ & ( (\G16|Mux14~0_combout\ & (\G15|SAIDA\(0) & \G16|Add1~49_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G15|ALT_INV_SAIDA\(0),
	datad => \G16|ALT_INV_Add1~49_sumout\,
	dataf => \G16|ALT_INV_Add0~49_sumout\,
	combout => \G16|Mux3~0_combout\);

-- Location: FF_X66_Y4_N53
\G18|SAIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[12]~feeder_combout\,
	asdata => \G16|Mux3~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(12));

-- Location: FF_X65_Y4_N17
\G7|Reg~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(12),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~32_q\);

-- Location: FF_X65_Y4_N56
\G7|Reg~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(12),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~144_q\);

-- Location: MLABCELL_X65_Y4_N54
\G7|Reg~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~160_combout\ = ( \G4|rd[0]~reg0_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~144_q\) ) ) # ( !\G4|rd[0]~reg0_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~144_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (\G7|Reg~32_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~32_q\,
	datac => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~144_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~160_combout\);

-- Location: MLABCELL_X65_Y4_N48
\G18|SAIDA[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[13]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[13]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N39
\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( \G7|Reg~161_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( \G7|Reg~161_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~161_combout\,
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

-- Location: LABCELL_X66_Y4_N39
\G16|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~53_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~161_combout\) ) + ( \G16|Add1~51\ ) + ( \G16|Add1~50\ ))
-- \G16|Add1~54\ = CARRY(( !\G14|SAIDA\(0) $ (\G7|Reg~161_combout\) ) + ( \G16|Add1~51\ ) + ( \G16|Add1~50\ ))
-- \G16|Add1~55\ = SHARE((!\G14|SAIDA\(0) & \G7|Reg~161_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Reg~161_combout\,
	cin => \G16|Add1~50\,
	sharein => \G16|Add1~51\,
	sumout => \G16|Add1~53_sumout\,
	cout => \G16|Add1~54\,
	shareout => \G16|Add1~55\);

-- Location: MLABCELL_X65_Y4_N51
\G16|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux2~0_combout\ = ( \G16|Add1~53_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G15|SAIDA\(0)) # (\G16|Add0~53_sumout\))) ) ) # ( !\G16|Add1~53_sumout\ & ( (\G16|Add0~53_sumout\ & (\G16|Mux14~0_combout\ & !\G15|SAIDA\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~53_sumout\,
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G15|ALT_INV_SAIDA\(0),
	dataf => \G16|ALT_INV_Add1~53_sumout\,
	combout => \G16|Mux2~0_combout\);

-- Location: FF_X65_Y4_N49
\G18|SAIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[13]~feeder_combout\,
	asdata => \G16|Mux2~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(13));

-- Location: FF_X65_Y4_N8
\G7|Reg~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(13),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~33_q\);

-- Location: FF_X65_Y4_N41
\G7|Reg~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(13),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~145_q\);

-- Location: MLABCELL_X65_Y4_N9
\G7|Reg~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~161_combout\ = ( !\G4|rs[0]~enDUPLICATE_q\ & ( \G4|rd[0]~reg0_q\ & ( \G7|Reg~145_q\ ) ) ) # ( \G4|rs[0]~enDUPLICATE_q\ & ( !\G4|rd[0]~reg0_q\ & ( \G7|Reg~33_q\ ) ) ) # ( !\G4|rs[0]~enDUPLICATE_q\ & ( !\G4|rd[0]~reg0_q\ & ( \G7|Reg~145_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~33_q\,
	datac => \G7|ALT_INV_Reg~145_q\,
	datae => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~161_combout\);

-- Location: MLABCELL_X65_Y4_N30
\G18|SAIDA[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[14]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[14]~feeder_combout\);

-- Location: LABCELL_X64_Y4_N42
\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( \G7|Reg~162_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( \G7|Reg~162_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~162_combout\,
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

-- Location: LABCELL_X66_Y4_N42
\G16|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~57_sumout\ = SUM(( !\G7|Reg~162_combout\ $ (\G14|SAIDA\(0)) ) + ( \G16|Add1~55\ ) + ( \G16|Add1~54\ ))
-- \G16|Add1~58\ = CARRY(( !\G7|Reg~162_combout\ $ (\G14|SAIDA\(0)) ) + ( \G16|Add1~55\ ) + ( \G16|Add1~54\ ))
-- \G16|Add1~59\ = SHARE((\G7|Reg~162_combout\ & !\G14|SAIDA\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~162_combout\,
	datac => \G14|ALT_INV_SAIDA\(0),
	cin => \G16|Add1~54\,
	sharein => \G16|Add1~55\,
	sumout => \G16|Add1~57_sumout\,
	cout => \G16|Add1~58\,
	shareout => \G16|Add1~59\);

-- Location: MLABCELL_X65_Y4_N57
\G16|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~0_combout\ = ( \G16|Add1~57_sumout\ & ( (\G16|Mux14~0_combout\ & ((\G16|Add0~57_sumout\) # (\G15|SAIDA\(0)))) ) ) # ( !\G16|Add1~57_sumout\ & ( (!\G15|SAIDA\(0) & (\G16|Mux14~0_combout\ & \G16|Add0~57_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Add0~57_sumout\,
	dataf => \G16|ALT_INV_Add1~57_sumout\,
	combout => \G16|Mux1~0_combout\);

-- Location: FF_X65_Y4_N31
\G18|SAIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[14]~feeder_combout\,
	asdata => \G16|Mux1~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(14));

-- Location: FF_X64_Y4_N8
\G7|Reg~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(14),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~146_q\);

-- Location: FF_X63_Y4_N56
\G7|Reg~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(14),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~34_q\);

-- Location: LABCELL_X64_Y4_N51
\G7|Reg~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~162_combout\ = ( \G7|Reg~34_q\ & ( (!\G4|rs[0]~en_q\ & (\G7|Reg~146_q\)) # (\G4|rs[0]~en_q\ & ((!\G4|rd[0]~reg0_q\))) ) ) # ( !\G7|Reg~34_q\ & ( (!\G4|rs[0]~en_q\ & \G7|Reg~146_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G7|ALT_INV_Reg~146_q\,
	datad => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~34_q\,
	combout => \G7|Reg~162_combout\);

-- Location: LABCELL_X66_Y4_N57
\G18|SAIDA[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[15]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \G18|SAIDA[15]~feeder_combout\);

-- Location: LABCELL_X66_Y4_N45
\G16|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~61_sumout\ = SUM(( !\G14|SAIDA\(0) $ (\G7|Reg~163_combout\) ) + ( \G16|Add1~59\ ) + ( \G16|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~163_combout\,
	cin => \G16|Add1~58\,
	sharein => \G16|Add1~59\,
	sumout => \G16|Add1~61_sumout\);

-- Location: LABCELL_X64_Y4_N45
\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( \G7|Reg~163_combout\ ) + ( \G14|SAIDA\(0) ) + ( \G16|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Reg~163_combout\,
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

-- Location: LABCELL_X66_Y4_N48
\G16|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~0_combout\ = ( \G16|Add0~61_sumout\ & ( (\G16|Mux14~0_combout\ & ((!\G15|SAIDA\(0)) # (\G16|Add1~61_sumout\))) ) ) # ( !\G16|Add0~61_sumout\ & ( (\G15|SAIDA\(0) & (\G16|Mux14~0_combout\ & \G16|Add1~61_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G15|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Add1~61_sumout\,
	dataf => \G16|ALT_INV_Add0~61_sumout\,
	combout => \G16|Mux0~0_combout\);

-- Location: FF_X66_Y4_N58
\G18|SAIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G18|SAIDA[15]~feeder_combout\,
	asdata => \G16|Mux0~0_combout\,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(15));

-- Location: FF_X67_Y4_N44
\G7|Reg~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(15),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~35_q\);

-- Location: FF_X67_Y4_N14
\G7|Reg~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(15),
	sload => VCC,
	ena => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~147_q\);

-- Location: LABCELL_X67_Y4_N15
\G7|Reg~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~163_combout\ = ( !\G4|rs[0]~enDUPLICATE_q\ & ( \G4|rd[0]~reg0_q\ & ( \G7|Reg~147_q\ ) ) ) # ( \G4|rs[0]~enDUPLICATE_q\ & ( !\G4|rd[0]~reg0_q\ & ( \G7|Reg~35_q\ ) ) ) # ( !\G4|rs[0]~enDUPLICATE_q\ & ( !\G4|rd[0]~reg0_q\ & ( \G7|Reg~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~35_q\,
	datac => \G7|ALT_INV_Reg~147_q\,
	datae => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~163_combout\);

-- Location: LABCELL_X62_Y4_N45
\G7|Reg~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~164_combout\ = ( \G4|rs[0]~enDUPLICATE_q\ & ( \G7|Reg~20_q\ & ( !\G4|rd[0]~reg0_q\ ) ) ) # ( !\G4|rs[0]~enDUPLICATE_q\ & ( \G7|Reg~20_q\ & ( \G7|Reg~132_q\ ) ) ) # ( !\G4|rs[0]~enDUPLICATE_q\ & ( !\G7|Reg~20_q\ & ( \G7|Reg~132_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~132_q\,
	datae => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	dataf => \G7|ALT_INV_Reg~20_q\,
	combout => \G7|Reg~164_combout\);

-- Location: MLABCELL_X65_Y4_N36
\G7|Reg~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~165_combout\ = ( \G7|Reg~133_q\ & ( (!\G4|rs[0]~en_q\) # ((!\G4|rd[0]~reg0_q\ & \G7|Reg~21_q\)) ) ) # ( !\G7|Reg~133_q\ & ( (!\G4|rd[0]~reg0_q\ & (\G4|rs[0]~en_q\ & \G7|Reg~21_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011001110110011101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G7|ALT_INV_Reg~21_q\,
	dataf => \G7|ALT_INV_Reg~133_q\,
	combout => \G7|Reg~165_combout\);

-- Location: MLABCELL_X65_Y4_N15
\G7|Reg~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~166_combout\ = ( \G7|Reg~22_q\ & ( (!\G4|rs[0]~en_q\ & ((\G7|Reg~134_q\))) # (\G4|rs[0]~en_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~22_q\ & ( (!\G4|rs[0]~en_q\ & \G7|Reg~134_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G7|ALT_INV_Reg~134_q\,
	dataf => \G7|ALT_INV_Reg~22_q\,
	combout => \G7|Reg~166_combout\);

-- Location: FF_X63_Y4_N58
\G7|Reg~23DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(3),
	sload => VCC,
	ena => \G6|SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~23DUPLICATE_q\);

-- Location: LABCELL_X63_Y4_N0
\G7|Reg~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~167_combout\ = ( \G7|Reg~23DUPLICATE_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~135_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~23DUPLICATE_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~135_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001000100111011100100010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datab => \G4|ALT_INV_rd[0]~reg0_q\,
	datad => \G7|ALT_INV_Reg~135_q\,
	dataf => \G7|ALT_INV_Reg~23DUPLICATE_q\,
	combout => \G7|Reg~167_combout\);

-- Location: LABCELL_X63_Y4_N6
\G7|Reg~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~168_combout\ = (!\G4|rs[0]~enDUPLICATE_q\ & (((\G7|Reg~136_q\)))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\ & ((\G7|Reg~24_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000001100001011100000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~136_q\,
	datad => \G7|ALT_INV_Reg~24_q\,
	combout => \G7|Reg~168_combout\);

-- Location: LABCELL_X63_Y4_N18
\G7|Reg~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~169_combout\ = ( \G7|Reg~137_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\) # ((!\G4|rd[0]~reg0_q\ & \G7|Reg~25_q\)) ) ) # ( !\G7|Reg~137_q\ & ( (!\G4|rd[0]~reg0_q\ & (\G7|Reg~25_q\ & \G4|rs[0]~enDUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011110010111100101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G7|ALT_INV_Reg~25_q\,
	datac => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	dataf => \G7|ALT_INV_Reg~137_q\,
	combout => \G7|Reg~169_combout\);

-- Location: LABCELL_X63_Y4_N30
\G7|Reg~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~170_combout\ = ( \G7|Reg~138_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\) # ((!\G4|rd[0]~reg0_q\ & \G7|Reg~26_q\)) ) ) # ( !\G7|Reg~138_q\ & ( (!\G4|rd[0]~reg0_q\ & (\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~26_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011001110110011101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~26_q\,
	dataf => \G7|ALT_INV_Reg~138_q\,
	combout => \G7|Reg~170_combout\);

-- Location: LABCELL_X63_Y4_N36
\G7|Reg~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~171_combout\ = (!\G4|rs[0]~enDUPLICATE_q\ & (((\G7|Reg~139_q\)))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\ & (\G7|Reg~27_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~27_q\,
	datad => \G7|ALT_INV_Reg~139_q\,
	combout => \G7|Reg~171_combout\);

-- Location: LABCELL_X63_Y4_N42
\G7|Reg~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~172_combout\ = ( \G7|Reg~28_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~140_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~28_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~140_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~140_q\,
	dataf => \G7|ALT_INV_Reg~28_q\,
	combout => \G7|Reg~172_combout\);

-- Location: LABCELL_X63_Y4_N24
\G7|Reg~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~173_combout\ = ( \G7|Reg~141_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\) # ((!\G4|rd[0]~reg0_q\ & \G7|Reg~29_q\)) ) ) # ( !\G7|Reg~141_q\ & ( (!\G4|rd[0]~reg0_q\ & (\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~29_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011001110110011101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~29_q\,
	dataf => \G7|ALT_INV_Reg~141_q\,
	combout => \G7|Reg~173_combout\);

-- Location: LABCELL_X63_Y4_N3
\G7|Reg~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~174_combout\ = ( \G7|Reg~30_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~142_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~30_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~142_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datab => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~142_q\,
	dataf => \G7|ALT_INV_Reg~30_q\,
	combout => \G7|Reg~174_combout\);

-- Location: LABCELL_X62_Y4_N39
\G7|Reg~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~175_combout\ = ( \G7|Reg~143_q\ & ( \G4|rd[0]~reg0_q\ & ( !\G4|rs[0]~enDUPLICATE_q\ ) ) ) # ( \G7|Reg~143_q\ & ( !\G4|rd[0]~reg0_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\) # (\G7|Reg~31_q\) ) ) ) # ( !\G7|Reg~143_q\ & ( !\G4|rd[0]~reg0_q\ & ( 
-- (\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~31_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~31_q\,
	datae => \G7|ALT_INV_Reg~143_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~175_combout\);

-- Location: MLABCELL_X65_Y4_N12
\G7|Reg~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~176_combout\ = ( \G7|Reg~32_q\ & ( (!\G4|rs[0]~en_q\ & ((\G7|Reg~144_q\))) # (\G4|rs[0]~en_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~32_q\ & ( (!\G4|rs[0]~en_q\ & \G7|Reg~144_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G7|ALT_INV_Reg~144_q\,
	dataf => \G7|ALT_INV_Reg~32_q\,
	combout => \G7|Reg~176_combout\);

-- Location: MLABCELL_X65_Y4_N39
\G7|Reg~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~177_combout\ = ( \G7|Reg~33_q\ & ( (!\G4|rs[0]~en_q\ & ((\G7|Reg~145_q\))) # (\G4|rs[0]~en_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~33_q\ & ( (!\G4|rs[0]~en_q\ & \G7|Reg~145_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000100010111011100010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~en_q\,
	datad => \G7|ALT_INV_Reg~145_q\,
	dataf => \G7|ALT_INV_Reg~33_q\,
	combout => \G7|Reg~177_combout\);

-- Location: LABCELL_X63_Y4_N51
\G7|Reg~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~178_combout\ = ( \G7|Reg~34_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~146_q\))) # (\G4|rs[0]~enDUPLICATE_q\ & (!\G4|rd[0]~reg0_q\)) ) ) # ( !\G7|Reg~34_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & \G7|Reg~146_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~146_q\,
	dataf => \G7|ALT_INV_Reg~34_q\,
	combout => \G7|Reg~178_combout\);

-- Location: LABCELL_X67_Y4_N42
\G7|Reg~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~179_combout\ = ( \G4|rd[0]~reg0_q\ & ( (\G7|Reg~147_q\ & !\G4|rs[0]~enDUPLICATE_q\) ) ) # ( !\G4|rd[0]~reg0_q\ & ( (!\G4|rs[0]~enDUPLICATE_q\ & (\G7|Reg~147_q\)) # (\G4|rs[0]~enDUPLICATE_q\ & ((\G7|Reg~35_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~147_q\,
	datac => \G4|ALT_INV_rs[0]~enDUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~35_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~179_combout\);

-- Location: FF_X50_Y4_N10
\G12|SAIDA[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA[2]~DUPLICATE_q\);

-- Location: FF_X36_Y1_N41
\G12|SAIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(12));

-- Location: FF_X33_Y1_N5
\G12|SAIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(13));

-- Location: FF_X50_Y4_N34
\G13|SAIDA[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[3]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA[3]~DUPLICATE_q\);

-- Location: FF_X52_Y4_N43
\G13|SAIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[8]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(8));

-- Location: FF_X52_Y4_N37
\G13|SAIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[10]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(10));

-- Location: FF_X40_Y4_N22
\G13|SAIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[12]~feeder_combout\,
	asdata => VCC,
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(12));

-- Location: FF_X40_Y4_N43
\G13|SAIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[14]~feeder_combout\,
	asdata => \G3|resshift\(14),
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(14));

-- Location: FF_X40_Y4_N49
\G13|SAIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[15]~feeder_combout\,
	asdata => \G3|resshift\(15),
	sload => \G6|ALT_INV_SAIDA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(15));
END structure;


