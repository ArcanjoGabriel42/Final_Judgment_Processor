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

-- DATE "11/30/2018 21:16:29"

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
	saida_cont_sincz1 : BUFFER std_logic;
	saida_cont_sincz2 : BUFFER std_logic;
	saida_cont_sincz3 : BUFFER std_logic;
	funcionou : BUFFER std_logic;
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
-- SomadorToPc_outWaveform[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[8]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[9]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[10]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[11]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[12]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[13]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[14]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[15]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[8]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[9]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[10]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[11]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[12]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[13]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[14]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[15]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[11]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[12]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[13]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[14]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[15]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[8]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[11]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[13]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[14]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[1]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[4]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[6]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[8]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[9]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[9]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[10]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[13]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[15]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[7]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[9]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[10]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[11]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[12]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[13]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[14]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[15]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[9]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[10]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[11]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[12]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[14]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[15]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[5]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[11]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[12]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[13]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[15]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_cont_sincz1	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_cont_sincz2	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_cont_sincz3	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funcionou	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_regdest_OUT	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_memparareg_OUT	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevereg_OUT	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_lemem_OUT	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevemem_OUT	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_branch_OUT	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_aluSRC_OUT	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_jump_OUT	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_saida_cont_sincz1 : std_logic;
SIGNAL ww_saida_cont_sincz2 : std_logic;
SIGNAL ww_saida_cont_sincz3 : std_logic;
SIGNAL ww_funcionou : std_logic;
SIGNAL ww_Flag_regdest_OUT : std_logic;
SIGNAL ww_Flag_origialu_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Flag_memparareg_OUT : std_logic;
SIGNAL ww_Flag_escrevereg_OUT : std_logic;
SIGNAL ww_Flag_lemem_OUT : std_logic;
SIGNAL ww_Flag_escrevemem_OUT : std_logic;
SIGNAL ww_Flag_branch_OUT : std_logic;
SIGNAL ww_Flag_aluSRC_OUT : std_logic;
SIGNAL ww_Flag_jump_OUT : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \Clock_Sistema~inputCLKENA0_outclk\ : std_logic;
SIGNAL \G2|saida[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G2|saida[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G2|saida[4]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G2|saida[9]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G2|saida[11]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|saida[12]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G2|saida[13]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G4|rd[0]~1_combout\ : std_logic;
SIGNAL \G4|rd[0]~2_combout\ : std_logic;
SIGNAL \G4|rd[0]~0_combout\ : std_logic;
SIGNAL \G4|rd[0]~3_combout\ : std_logic;
SIGNAL \G1|G0|G0|state~0_combout\ : std_logic;
SIGNAL \G1|G0|G0|state~q\ : std_logic;
SIGNAL \G1|G0|G1|state~0_combout\ : std_logic;
SIGNAL \G1|G0|G1|state~q\ : std_logic;
SIGNAL \G1|G0|G0|state~DUPLICATE_q\ : std_logic;
SIGNAL \G1|G0|G3|state~0_combout\ : std_logic;
SIGNAL \G1|G0|G3|state~q\ : std_logic;
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|G0|G0|ALT_INV_state~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_saida[13]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_saida[12]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_saida[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Clock_Sistema~input_o\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|G0|G3|ALT_INV_state~q\ : std_logic;
SIGNAL \G1|G0|G1|ALT_INV_state~q\ : std_logic;
SIGNAL \G1|G0|G0|ALT_INV_state~q\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 1);

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
saida_cont_sincz1 <= ww_saida_cont_sincz1;
saida_cont_sincz2 <= ww_saida_cont_sincz2;
saida_cont_sincz3 <= ww_saida_cont_sincz3;
funcionou <= ww_funcionou;
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
\G1|G0|G0|ALT_INV_state~DUPLICATE_q\ <= NOT \G1|G0|G0|state~DUPLICATE_q\;
\G2|ALT_INV_saida[13]~DUPLICATE_q\ <= NOT \G2|saida[13]~DUPLICATE_q\;
\G2|ALT_INV_saida[12]~DUPLICATE_q\ <= NOT \G2|saida[12]~DUPLICATE_q\;
\G2|ALT_INV_saida[0]~DUPLICATE_q\ <= NOT \G2|saida[0]~DUPLICATE_q\;
\ALT_INV_Clock_Sistema~input_o\ <= NOT \Clock_Sistema~input_o\;
\G13|ALT_INV_SAIDA\(15) <= NOT \G13|SAIDA\(15);
\G13|ALT_INV_SAIDA\(14) <= NOT \G13|SAIDA\(14);
\G13|ALT_INV_SAIDA\(13) <= NOT \G13|SAIDA\(13);
\G13|ALT_INV_SAIDA\(12) <= NOT \G13|SAIDA\(12);
\G13|ALT_INV_SAIDA\(11) <= NOT \G13|SAIDA\(11);
\G13|ALT_INV_SAIDA\(10) <= NOT \G13|SAIDA\(10);
\G13|ALT_INV_SAIDA\(9) <= NOT \G13|SAIDA\(9);
\G13|ALT_INV_SAIDA\(8) <= NOT \G13|SAIDA\(8);
\G13|ALT_INV_SAIDA\(7) <= NOT \G13|SAIDA\(7);
\G13|ALT_INV_SAIDA\(6) <= NOT \G13|SAIDA\(6);
\G13|ALT_INV_SAIDA\(5) <= NOT \G13|SAIDA\(5);
\G13|ALT_INV_SAIDA\(4) <= NOT \G13|SAIDA\(4);
\G13|ALT_INV_SAIDA\(3) <= NOT \G13|SAIDA\(3);
\G13|ALT_INV_SAIDA\(2) <= NOT \G13|SAIDA\(2);
\G13|ALT_INV_SAIDA\(1) <= NOT \G13|SAIDA\(1);
\G13|ALT_INV_SAIDA\(0) <= NOT \G13|SAIDA\(0);
\G12|ALT_INV_SAIDA\(15) <= NOT \G12|SAIDA\(15);
\G12|ALT_INV_SAIDA\(14) <= NOT \G12|SAIDA\(14);
\G12|ALT_INV_SAIDA\(13) <= NOT \G12|SAIDA\(13);
\G12|ALT_INV_SAIDA\(12) <= NOT \G12|SAIDA\(12);
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
\G1|G0|G3|ALT_INV_state~q\ <= NOT \G1|G0|G3|state~q\;
\G1|G0|G1|ALT_INV_state~q\ <= NOT \G1|G0|G1|state~q\;
\G1|G0|G0|ALT_INV_state~q\ <= NOT \G1|G0|G0|state~q\;
\G4|ALT_INV_rd[0]~2_combout\ <= NOT \G4|rd[0]~2_combout\;
\G4|ALT_INV_rd[0]~1_combout\ <= NOT \G4|rd[0]~1_combout\;
\G4|ALT_INV_rd[0]~0_combout\ <= NOT \G4|rd[0]~0_combout\;
\G2|ALT_INV_saida\(15) <= NOT \G2|saida\(15);
\G2|ALT_INV_saida\(14) <= NOT \G2|saida\(14);
\G2|ALT_INV_saida\(11) <= NOT \G2|saida\(11);
\G2|ALT_INV_saida\(10) <= NOT \G2|saida\(10);
\G2|ALT_INV_saida\(9) <= NOT \G2|saida\(9);
\G2|ALT_INV_saida\(8) <= NOT \G2|saida\(8);
\G2|ALT_INV_saida\(7) <= NOT \G2|saida\(7);
\G2|ALT_INV_saida\(6) <= NOT \G2|saida\(6);
\G2|ALT_INV_saida\(5) <= NOT \G2|saida\(5);
\G2|ALT_INV_saida\(4) <= NOT \G2|saida\(4);
\G2|ALT_INV_saida\(3) <= NOT \G2|saida\(3);
\G2|ALT_INV_saida\(2) <= NOT \G2|saida\(2);
\G2|ALT_INV_saida\(1) <= NOT \G2|saida\(1);

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X70_Y0_N53
\SomadorToPc_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(1));

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X89_Y6_N39
\SomadorToPc_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(4));

-- Location: IOOBUF_X89_Y4_N79
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

-- Location: IOOBUF_X66_Y0_N93
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

-- Location: IOOBUF_X89_Y9_N22
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X89_Y4_N96
\SomadorToPc_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(9));

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X89_Y4_N62
\SomadorToPc_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(11));

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X82_Y81_N93
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

-- Location: IOOBUF_X82_Y81_N42
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

-- Location: IOOBUF_X86_Y81_N53
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

-- Location: IOOBUF_X68_Y0_N19
\SaidaPc_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(1),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(1));

-- Location: IOOBUF_X70_Y0_N2
\SaidaPc_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(2),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(2));

-- Location: IOOBUF_X89_Y35_N79
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X89_Y37_N56
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

-- Location: IOOBUF_X89_Y36_N22
\SaidaPc_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(6),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(6));

-- Location: IOOBUF_X72_Y0_N19
\SaidaPc_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(7),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(7));

-- Location: IOOBUF_X89_Y36_N56
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X89_Y38_N56
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

-- Location: IOOBUF_X89_Y37_N22
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

-- Location: IOOBUF_X89_Y6_N22
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

-- Location: IOOBUF_X72_Y0_N36
\SaidaPc_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(13),
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(13));

-- Location: IOOBUF_X70_Y0_N36
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

-- Location: IOOBUF_X86_Y81_N36
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

-- Location: IOOBUF_X50_Y81_N93
\SaidaRegA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(0));

-- Location: IOOBUF_X54_Y0_N2
\SaidaRegA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(1));

-- Location: IOOBUF_X76_Y81_N2
\SaidaRegA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(2));

-- Location: IOOBUF_X64_Y81_N53
\SaidaRegA_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(3));

-- Location: IOOBUF_X58_Y81_N76
\SaidaRegA_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(4));

-- Location: IOOBUF_X40_Y81_N53
\SaidaRegA_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(5));

-- Location: IOOBUF_X30_Y81_N36
\SaidaRegA_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(6));

-- Location: IOOBUF_X58_Y81_N59
\SaidaRegA_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(7));

-- Location: IOOBUF_X50_Y0_N76
\SaidaRegA_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(8));

-- Location: IOOBUF_X28_Y0_N2
\SaidaRegA_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(9));

-- Location: IOOBUF_X38_Y0_N53
\SaidaRegA_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(10));

-- Location: IOOBUF_X72_Y81_N2
\SaidaRegA_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(11));

-- Location: IOOBUF_X28_Y81_N19
\SaidaRegA_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(12));

-- Location: IOOBUF_X4_Y0_N19
\SaidaRegA_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(13));

-- Location: IOOBUF_X62_Y81_N19
\SaidaRegA_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(14));

-- Location: IOOBUF_X32_Y0_N53
\SaidaRegA_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(15));

-- Location: IOOBUF_X2_Y0_N42
\SaidaRegB_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(0));

-- Location: IOOBUF_X56_Y0_N36
\SaidaRegB_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(1));

-- Location: IOOBUF_X56_Y0_N19
\SaidaRegB_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(2));

-- Location: IOOBUF_X68_Y81_N19
\SaidaRegB_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(3));

-- Location: IOOBUF_X40_Y0_N36
\SaidaRegB_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(4));

-- Location: IOOBUF_X26_Y81_N59
\SaidaRegB_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(5));

-- Location: IOOBUF_X38_Y0_N2
\SaidaRegB_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(6));

-- Location: IOOBUF_X78_Y81_N19
\SaidaRegB_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(7));

-- Location: IOOBUF_X38_Y81_N36
\SaidaRegB_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(8));

-- Location: IOOBUF_X58_Y0_N42
\SaidaRegB_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(9));

-- Location: IOOBUF_X54_Y81_N2
\SaidaRegB_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(10));

-- Location: IOOBUF_X54_Y0_N36
\SaidaRegB_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(11));

-- Location: IOOBUF_X6_Y0_N2
\SaidaRegB_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(12));

-- Location: IOOBUF_X68_Y81_N36
\SaidaRegB_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(13));

-- Location: IOOBUF_X52_Y0_N36
\SaidaRegB_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(14));

-- Location: IOOBUF_X30_Y81_N2
\SaidaRegB_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(15));

-- Location: IOOBUF_X58_Y81_N42
\multiplexador_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X54_Y0_N53
\multiplexador_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X34_Y0_N59
\multiplexador_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X38_Y81_N2
\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(0));

-- Location: IOOBUF_X52_Y81_N53
\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(1));

-- Location: IOOBUF_X56_Y81_N2
\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(2));

-- Location: IOOBUF_X34_Y0_N93
\Instruction_to_Control_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(0));

-- Location: IOOBUF_X40_Y0_N19
\Instruction_to_Control_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(1));

-- Location: IOOBUF_X66_Y81_N59
\Instruction_to_Control_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(2));

-- Location: IOOBUF_X36_Y81_N36
\Instruction_to_Control_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(3));

-- Location: IOOBUF_X84_Y81_N36
\Instruction_to_register1_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(0));

-- Location: IOOBUF_X84_Y81_N2
\Instruction_to_register1_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(1));

-- Location: IOOBUF_X2_Y0_N59
\Instruction_to_register1_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(2));

-- Location: IOOBUF_X84_Y81_N19
\Instruction_to_register2_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(0));

-- Location: IOOBUF_X62_Y0_N36
\Instruction_to_register2_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(1));

-- Location: IOOBUF_X30_Y0_N2
\Instruction_to_register2_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(2));

-- Location: IOOBUF_X84_Y81_N53
\Instruction_to_controlULA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(0));

-- Location: IOOBUF_X72_Y81_N19
\Instruction_to_controlULA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(1));

-- Location: IOOBUF_X74_Y81_N93
\Instruction_to_controlULA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(2));

-- Location: IOOBUF_X54_Y81_N19
\Instruction_to_extensorDeSinal_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(0));

-- Location: IOOBUF_X30_Y81_N53
\Instruction_to_extensorDeSinal_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(1));

-- Location: IOOBUF_X76_Y81_N53
\Instruction_to_extensorDeSinal_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(2));

-- Location: IOOBUF_X52_Y81_N36
\Instruction_to_extensorDeSinal_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(3));

-- Location: IOOBUF_X36_Y0_N19
\Instruction_to_extensorDeSinal_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(4));

-- Location: IOOBUF_X6_Y0_N19
\Instruction_to_extensorDeSinal_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(5));

-- Location: IOOBUF_X2_Y0_N76
\Instruction_to_Jump_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(0));

-- Location: IOOBUF_X32_Y0_N36
\Instruction_to_Jump_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(1));

-- Location: IOOBUF_X64_Y81_N19
\Instruction_to_Jump_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(2));

-- Location: IOOBUF_X78_Y81_N2
\Instruction_to_Jump_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(3));

-- Location: IOOBUF_X80_Y81_N19
\Instruction_to_Jump_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(4));

-- Location: IOOBUF_X26_Y81_N76
\Instruction_to_Jump_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(5));

-- Location: IOOBUF_X86_Y81_N2
\Instruction_to_Jump_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(6));

-- Location: IOOBUF_X4_Y0_N53
\Instruction_to_Jump_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(7));

-- Location: IOOBUF_X40_Y0_N53
\Instruction_to_Jump_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(8));

-- Location: IOOBUF_X38_Y81_N53
\Instruction_to_Jump_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(9));

-- Location: IOOBUF_X50_Y81_N42
\Instruction_to_Jump_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(10));

-- Location: IOOBUF_X56_Y81_N19
\Instruction_to_Jump_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_Jump_outWaveform(11));

-- Location: IOOBUF_X74_Y81_N59
\Data_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X76_Y81_N19
\Data_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X58_Y0_N76
\Data_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X66_Y81_N93
\Data_to_writeRegister_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(3));

-- Location: IOOBUF_X66_Y81_N42
\Data_to_writeRegister_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(4));

-- Location: IOOBUF_X28_Y81_N53
\Data_to_writeRegister_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(5));

-- Location: IOOBUF_X60_Y0_N53
\Data_to_writeRegister_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(6));

-- Location: IOOBUF_X40_Y0_N2
\Data_to_writeRegister_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(7));

-- Location: IOOBUF_X68_Y81_N2
\Data_to_writeRegister_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(8));

-- Location: IOOBUF_X52_Y81_N2
\Data_to_writeRegister_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(9));

-- Location: IOOBUF_X2_Y0_N93
\Data_to_writeRegister_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(10));

-- Location: IOOBUF_X34_Y81_N42
\Data_to_writeRegister_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(11));

-- Location: IOOBUF_X32_Y0_N19
\Data_to_writeRegister_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(12));

-- Location: IOOBUF_X30_Y0_N36
\Data_to_writeRegister_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(13));

-- Location: IOOBUF_X60_Y81_N19
\Data_to_writeRegister_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(14));

-- Location: IOOBUF_X40_Y81_N36
\Data_to_writeRegister_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(15));

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X82_Y81_N76
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

-- Location: IOOBUF_X89_Y37_N39
\Saida_mult_to_mult_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(2),
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(2));

-- Location: IOOBUF_X89_Y9_N39
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

-- Location: IOOBUF_X89_Y8_N22
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

-- Location: IOOBUF_X89_Y38_N5
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

-- Location: IOOBUF_X89_Y9_N5
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

-- Location: IOOBUF_X89_Y38_N39
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

-- Location: IOOBUF_X89_Y8_N56
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

-- Location: IOOBUF_X89_Y38_N22
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X88_Y81_N3
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

-- Location: IOOBUF_X89_Y35_N45
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

-- Location: IOOBUF_X68_Y0_N36
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

-- Location: IOOBUF_X89_Y37_N5
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

-- Location: IOOBUF_X88_Y81_N54
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

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X62_Y0_N19
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

-- Location: IOOBUF_X89_Y6_N56
\Saida_to_PC_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(3),
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(3));

-- Location: IOOBUF_X89_Y6_N5
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

-- Location: IOOBUF_X82_Y81_N59
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

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X89_Y36_N39
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X66_Y0_N59
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

-- Location: IOOBUF_X89_Y36_N5
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

-- Location: IOOBUF_X89_Y4_N45
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

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X62_Y0_N53
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

-- Location: IOOBUF_X88_Y81_N20
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

-- Location: IOOBUF_X78_Y81_N53
\Saida_adress_to_RAM_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(0));

-- Location: IOOBUF_X8_Y0_N19
\Saida_adress_to_RAM_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(1));

-- Location: IOOBUF_X26_Y0_N93
\Saida_adress_to_RAM_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(2));

-- Location: IOOBUF_X50_Y0_N93
\Saida_adress_to_RAM_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(3));

-- Location: IOOBUF_X40_Y81_N2
\Saida_adress_to_RAM_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(4));

-- Location: IOOBUF_X88_Y81_N37
\Saida_adress_to_RAM_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(5));

-- Location: IOOBUF_X78_Y81_N36
\Saida_adress_to_RAM_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(6));

-- Location: IOOBUF_X26_Y81_N93
\Saida_adress_to_RAM_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(7));

-- Location: IOOBUF_X86_Y81_N19
\Saida_adress_to_RAM_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(8));

-- Location: IOOBUF_X36_Y81_N53
\Saida_adress_to_RAM_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(9));

-- Location: IOOBUF_X52_Y81_N19
\Saida_adress_to_RAM_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(10));

-- Location: IOOBUF_X32_Y0_N2
\Saida_adress_to_RAM_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(11));

-- Location: IOOBUF_X36_Y81_N2
\Saida_adress_to_RAM_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(12));

-- Location: IOOBUF_X64_Y81_N36
\Saida_adress_to_RAM_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(13));

-- Location: IOOBUF_X38_Y0_N36
\Saida_adress_to_RAM_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(14));

-- Location: IOOBUF_X30_Y0_N19
\Saida_adress_to_RAM_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(15));

-- Location: IOOBUF_X70_Y81_N2
\saida_cont_sincz1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G0|G0|state~q\,
	devoe => ww_devoe,
	o => ww_saida_cont_sincz1);

-- Location: IOOBUF_X70_Y81_N36
\saida_cont_sincz2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G0|G1|state~q\,
	devoe => ww_devoe,
	o => ww_saida_cont_sincz2);

-- Location: IOOBUF_X70_Y81_N19
\saida_cont_sincz3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G0|G3|state~q\,
	devoe => ww_devoe,
	o => ww_saida_cont_sincz3);

-- Location: IOOBUF_X32_Y81_N19
\funcionou~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_funcionou);

-- Location: IOOBUF_X64_Y81_N2
\Flag_regdest_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Flag_regdest_OUT);

-- Location: IOOBUF_X80_Y81_N36
\Flag_origialu_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(0));

-- Location: IOOBUF_X6_Y0_N53
\Flag_origialu_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(1));

-- Location: IOOBUF_X58_Y81_N93
\Flag_origialu_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(2));

-- Location: IOOBUF_X38_Y81_N19
\Flag_origialu_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(3));

-- Location: IOOBUF_X62_Y81_N2
\Flag_memparareg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Flag_memparareg_OUT);

-- Location: IOOBUF_X6_Y0_N36
\Flag_escrevereg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Flag_escrevereg_OUT);

-- Location: IOOBUF_X74_Y81_N76
\Flag_lemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Flag_lemem_OUT);

-- Location: IOOBUF_X74_Y81_N42
\Flag_escrevemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Flag_escrevemem_OUT);

-- Location: IOOBUF_X54_Y81_N36
\Flag_branch_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Flag_branch_OUT);

-- Location: IOOBUF_X38_Y0_N19
\Flag_aluSRC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Flag_aluSRC_OUT);

-- Location: IOOBUF_X56_Y81_N53
\Flag_jump_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Flag_jump_OUT);

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

-- Location: FF_X85_Y35_N29
\G2|saida[0]~DUPLICATE\ : dffeas
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
	q => \G2|saida[0]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N24
\G12|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(0) = ( \Clock_Sistema~input_o\ & ( \G2|saida[0]~DUPLICATE_q\ ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(0),
	datad => \G2|ALT_INV_saida[0]~DUPLICATE_q\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(0));

-- Location: LABCELL_X85_Y35_N30
\G13|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(0) = ( \G12|SAIDA\(0) & ( (\Clock_Sistema~input_o\) # (\G13|SAIDA\(0)) ) ) # ( !\G12|SAIDA\(0) & ( (\G13|SAIDA\(0) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA\(0),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(0),
	combout => \G13|SAIDA\(0));

-- Location: LABCELL_X85_Y35_N33
\G1|pout[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(0) = ( \G13|SAIDA\(0) & ( (\Clock_Sistema~input_o\) # (\G1|pout\(0)) ) ) # ( !\G13|SAIDA\(0) & ( (\G1|pout\(0) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(0),
	combout => \G1|pout\(0));

-- Location: LABCELL_X85_Y35_N27
\G2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|saida[0]~0_combout\ = !\G1|pout\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	combout => \G2|saida[0]~0_combout\);

-- Location: FF_X85_Y35_N28
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

-- Location: FF_X87_Y35_N2
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

-- Location: MLABCELL_X87_Y35_N48
\G12|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(1) = ( \Clock_Sistema~input_o\ & ( \G2|saida\(1) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(1),
	datad => \G2|ALT_INV_saida\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(1));

-- Location: LABCELL_X85_Y35_N42
\G13|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(1) = ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(1) & ( \G12|SAIDA\(1) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G13|SAIDA\(1) ) ) # ( \Clock_Sistema~input_o\ & ( !\G13|SAIDA\(1) & ( \G12|SAIDA\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(1),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(1),
	combout => \G13|SAIDA\(1));

-- Location: LABCELL_X85_Y35_N15
\G1|pout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(1) = ( \G13|SAIDA\(1) & ( (\Clock_Sistema~input_o\) # (\G1|pout\(1)) ) ) # ( !\G13|SAIDA\(1) & ( (\G1|pout\(1) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(1),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(1),
	combout => \G1|pout\(1));

-- Location: MLABCELL_X87_Y35_N0
\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(0),
	datad => \G1|ALT_INV_pout\(1),
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

-- Location: FF_X87_Y35_N1
\G2|saida[1]~DUPLICATE\ : dffeas
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
	q => \G2|saida[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y35_N54
\G12|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(2) = ( \G2|saida\(2) & ( (\G12|SAIDA\(2)) # (\Clock_Sistema~input_o\) ) ) # ( !\G2|saida\(2) & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(2),
	dataf => \G2|ALT_INV_saida\(2),
	combout => \G12|SAIDA\(2));

-- Location: LABCELL_X85_Y35_N48
\G13|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(2) = ( \G13|SAIDA\(2) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(2)) ) ) # ( !\G13|SAIDA\(2) & ( (\G12|SAIDA\(2) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(2),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(2),
	combout => \G13|SAIDA\(2));

-- Location: LABCELL_X85_Y35_N54
\G1|pout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(2) = ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(2) ) ) # ( !\Clock_Sistema~input_o\ & ( \G13|SAIDA\(2) & ( \G1|pout\(2) ) ) ) # ( !\Clock_Sistema~input_o\ & ( !\G13|SAIDA\(2) & ( \G1|pout\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(2),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(2),
	combout => \G1|pout\(2));

-- Location: MLABCELL_X87_Y35_N3
\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(2),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

-- Location: FF_X87_Y35_N5
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

-- Location: LABCELL_X88_Y35_N36
\G12|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(3) = ( \Clock_Sistema~input_o\ & ( \G2|saida\(3) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(3),
	datad => \G2|ALT_INV_saida\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(3));

-- Location: LABCELL_X88_Y35_N33
\G13|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(3) = ( \G12|SAIDA\(3) & ( (\Clock_Sistema~input_o\) # (\G13|SAIDA\(3)) ) ) # ( !\G12|SAIDA\(3) & ( (\G13|SAIDA\(3) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA\(3),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(3),
	combout => \G13|SAIDA\(3));

-- Location: LABCELL_X88_Y35_N27
\G1|pout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(3) = ( \G13|SAIDA\(3) & ( (\G1|pout\(3)) # (\Clock_Sistema~input_o\) ) ) # ( !\G13|SAIDA\(3) & ( (!\Clock_Sistema~input_o\ & \G1|pout\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G1|ALT_INV_pout\(3),
	dataf => \G13|ALT_INV_SAIDA\(3),
	combout => \G1|pout\(3));

-- Location: MLABCELL_X87_Y35_N6
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

-- Location: FF_X88_Y35_N37
\G2|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(3));

-- Location: FF_X87_Y35_N10
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

-- Location: LABCELL_X88_Y35_N0
\G12|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(4) = ( \G2|saida\(4) & ( (\Clock_Sistema~input_o\) # (\G12|SAIDA\(4)) ) ) # ( !\G2|saida\(4) & ( (\G12|SAIDA\(4) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(4),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G2|ALT_INV_saida\(4),
	combout => \G12|SAIDA\(4));

-- Location: LABCELL_X88_Y35_N9
\G13|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(4) = ( \G13|SAIDA\(4) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(4)) ) ) # ( !\G13|SAIDA\(4) & ( (\G12|SAIDA\(4) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(4),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(4),
	combout => \G13|SAIDA\(4));

-- Location: LABCELL_X85_Y35_N12
\G1|pout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(4) = ( \G1|pout\(4) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(4)) ) ) # ( !\G1|pout\(4) & ( (\G13|SAIDA\(4) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(4),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(4),
	combout => \G1|pout\(4));

-- Location: MLABCELL_X87_Y35_N9
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

-- Location: FF_X87_Y35_N11
\G2|saida[4]~DUPLICATE\ : dffeas
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
	q => \G2|saida[4]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y36_N18
\G12|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(5) = ( \Clock_Sistema~input_o\ & ( \G2|saida\(5) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(5),
	datad => \G2|ALT_INV_saida\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(5));

-- Location: LABCELL_X88_Y36_N6
\G13|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(5) = ( \G13|SAIDA\(5) & ( \G12|SAIDA\(5) ) ) # ( !\G13|SAIDA\(5) & ( \G12|SAIDA\(5) & ( \Clock_Sistema~input_o\ ) ) ) # ( \G13|SAIDA\(5) & ( !\G12|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G13|ALT_INV_SAIDA\(5),
	dataf => \G12|ALT_INV_SAIDA\(5),
	combout => \G13|SAIDA\(5));

-- Location: LABCELL_X88_Y36_N30
\G1|pout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(5) = ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(5) ) ) # ( !\Clock_Sistema~input_o\ & ( \G1|pout\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA\(5),
	datad => \G1|ALT_INV_pout\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(5));

-- Location: MLABCELL_X87_Y35_N12
\G2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~17_sumout\ = SUM(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))
-- \G2|Add0~18\ = CARRY(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(5),
	cin => \G2|Add0~14\,
	sumout => \G2|Add0~17_sumout\,
	cout => \G2|Add0~18\);

-- Location: FF_X88_Y36_N49
\G2|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(5));

-- Location: LABCELL_X88_Y35_N18
\G12|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(6) = ( \G12|SAIDA\(6) & ( (!\Clock_Sistema~input_o\) # (\G2|saida\(6)) ) ) # ( !\G12|SAIDA\(6) & ( (\Clock_Sistema~input_o\ & \G2|saida\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G2|ALT_INV_saida\(6),
	dataf => \G12|ALT_INV_SAIDA\(6),
	combout => \G12|SAIDA\(6));

-- Location: LABCELL_X88_Y35_N3
\G13|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(6) = ( \G12|SAIDA\(6) & ( (\G13|SAIDA\(6)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA\(6) & ( (!\Clock_Sistema~input_o\ & \G13|SAIDA\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G13|ALT_INV_SAIDA\(6),
	dataf => \G12|ALT_INV_SAIDA\(6),
	combout => \G13|SAIDA\(6));

-- Location: LABCELL_X88_Y35_N6
\G1|pout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(6) = ( \G13|SAIDA\(6) & ( (\Clock_Sistema~input_o\) # (\G1|pout\(6)) ) ) # ( !\G13|SAIDA\(6) & ( (\G1|pout\(6) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(6),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(6),
	combout => \G1|pout\(6));

-- Location: MLABCELL_X87_Y35_N15
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

-- Location: FF_X88_Y35_N20
\G2|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(6));

-- Location: LABCELL_X88_Y35_N51
\G12|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(7) = ( \G12|SAIDA\(7) & ( (!\Clock_Sistema~input_o\) # (\G2|saida\(7)) ) ) # ( !\G12|SAIDA\(7) & ( (\Clock_Sistema~input_o\ & \G2|saida\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G2|ALT_INV_saida\(7),
	dataf => \G12|ALT_INV_SAIDA\(7),
	combout => \G12|SAIDA\(7));

-- Location: LABCELL_X88_Y36_N15
\G13|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(7) = ( \G13|SAIDA\(7) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(7)) ) ) # ( !\G13|SAIDA\(7) & ( (\G12|SAIDA\(7) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(7),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(7),
	combout => \G13|SAIDA\(7));

-- Location: LABCELL_X88_Y36_N0
\G1|pout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(7) = ( \G1|pout\(7) & ( \G13|SAIDA\(7) ) ) # ( !\G1|pout\(7) & ( \G13|SAIDA\(7) & ( \Clock_Sistema~input_o\ ) ) ) # ( \G1|pout\(7) & ( !\G13|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G1|ALT_INV_pout\(7),
	dataf => \G13|ALT_INV_SAIDA\(7),
	combout => \G1|pout\(7));

-- Location: MLABCELL_X87_Y35_N18
\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(7),
	cin => \G2|Add0~22\,
	sumout => \G2|Add0~25_sumout\,
	cout => \G2|Add0~26\);

-- Location: FF_X88_Y35_N52
\G2|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(7));

-- Location: LABCELL_X88_Y35_N57
\G12|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(8) = ( \G12|SAIDA\(8) & ( (!\Clock_Sistema~input_o\) # (\G2|saida\(8)) ) ) # ( !\G12|SAIDA\(8) & ( (\Clock_Sistema~input_o\ & \G2|saida\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G2|ALT_INV_saida\(8),
	dataf => \G12|ALT_INV_SAIDA\(8),
	combout => \G12|SAIDA\(8));

-- Location: LABCELL_X88_Y35_N48
\G13|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(8) = ( \G12|SAIDA\(8) & ( (\Clock_Sistema~input_o\) # (\G13|SAIDA\(8)) ) ) # ( !\G12|SAIDA\(8) & ( (\G13|SAIDA\(8) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(8),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(8),
	combout => \G13|SAIDA\(8));

-- Location: LABCELL_X88_Y35_N45
\G1|pout[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(8) = ( \G13|SAIDA\(8) & ( (\Clock_Sistema~input_o\) # (\G1|pout\(8)) ) ) # ( !\G13|SAIDA\(8) & ( (\G1|pout\(8) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(8),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(8),
	combout => \G1|pout\(8));

-- Location: MLABCELL_X87_Y35_N21
\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(8),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);

-- Location: FF_X88_Y35_N59
\G2|saida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(8));

-- Location: FF_X87_Y35_N25
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

-- Location: LABCELL_X88_Y35_N30
\G12|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(9) = ( \G2|saida\(9) & ( (\Clock_Sistema~input_o\) # (\G12|SAIDA\(9)) ) ) # ( !\G2|saida\(9) & ( (\G12|SAIDA\(9) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(9),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G2|ALT_INV_saida\(9),
	combout => \G12|SAIDA\(9));

-- Location: LABCELL_X88_Y36_N57
\G13|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(9) = ( \G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) ) ) ) # ( !\G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) ) ) ) # ( \G13|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(9),
	datae => \G13|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(9));

-- Location: LABCELL_X88_Y36_N42
\G1|pout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(9) = ( \G13|SAIDA\(9) & ( (\G1|pout\(9)) # (\Clock_Sistema~input_o\) ) ) # ( !\G13|SAIDA\(9) & ( (!\Clock_Sistema~input_o\ & \G1|pout\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G1|ALT_INV_pout\(9),
	dataf => \G13|ALT_INV_SAIDA\(9),
	combout => \G1|pout\(9));

-- Location: MLABCELL_X87_Y35_N24
\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

-- Location: FF_X87_Y35_N26
\G2|saida[9]~DUPLICATE\ : dffeas
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
	q => \G2|saida[9]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y35_N51
\G12|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(10) = ( \Clock_Sistema~input_o\ & ( \G2|saida\(10) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(10),
	datad => \G2|ALT_INV_saida\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(10));

-- Location: LABCELL_X88_Y36_N39
\G13|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(10) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(10) ) ) # ( !\Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(10),
	datad => \G13|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(10));

-- Location: LABCELL_X88_Y36_N27
\G1|pout[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(10) = ( \G1|pout\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) ) ) # ( !\G1|pout\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) ) ) # ( \G1|pout\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA\(10),
	datae => \G1|ALT_INV_pout\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(10));

-- Location: MLABCELL_X87_Y35_N27
\G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~37_sumout\ = SUM(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))
-- \G2|Add0~38\ = CARRY(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(10),
	cin => \G2|Add0~34\,
	sumout => \G2|Add0~37_sumout\,
	cout => \G2|Add0~38\);

-- Location: FF_X87_Y35_N29
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

-- Location: FF_X87_Y35_N31
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

-- Location: LABCELL_X88_Y35_N21
\G12|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(11) = ( \G2|saida\(11) & ( (\G12|SAIDA\(11)) # (\Clock_Sistema~input_o\) ) ) # ( !\G2|saida\(11) & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(11),
	dataf => \G2|ALT_INV_saida\(11),
	combout => \G12|SAIDA\(11));

-- Location: LABCELL_X88_Y35_N12
\G13|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(11) = (!\Clock_Sistema~input_o\ & (\G13|SAIDA\(11))) # (\Clock_Sistema~input_o\ & ((\G12|SAIDA\(11))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA\(11),
	datac => \G12|ALT_INV_SAIDA\(11),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(11));

-- Location: LABCELL_X88_Y35_N24
\G1|pout[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(11) = ( \G13|SAIDA\(11) & ( (\Clock_Sistema~input_o\) # (\G1|pout\(11)) ) ) # ( !\G13|SAIDA\(11) & ( (\G1|pout\(11) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(11),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(11),
	combout => \G1|pout\(11));

-- Location: MLABCELL_X87_Y35_N30
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

-- Location: FF_X87_Y35_N32
\G2|saida[11]~DUPLICATE\ : dffeas
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
	q => \G2|saida[11]~DUPLICATE_q\);

-- Location: FF_X87_Y35_N34
\G2|saida[12]~DUPLICATE\ : dffeas
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
	q => \G2|saida[12]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N54
\G12|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(12) = ( \G2|saida[12]~DUPLICATE_q\ & ( (\Clock_Sistema~input_o\) # (\G12|SAIDA\(12)) ) ) # ( !\G2|saida[12]~DUPLICATE_q\ & ( (\G12|SAIDA\(12) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(12),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G2|ALT_INV_saida[12]~DUPLICATE_q\,
	combout => \G12|SAIDA\(12));

-- Location: LABCELL_X85_Y35_N39
\G13|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(12) = ( \G13|SAIDA\(12) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(12)) ) ) # ( !\G13|SAIDA\(12) & ( (\G12|SAIDA\(12) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(12),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(12),
	combout => \G13|SAIDA\(12));

-- Location: LABCELL_X85_Y35_N6
\G1|pout[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(12) = ( \G13|SAIDA\(12) & ( (\Clock_Sistema~input_o\) # (\G1|pout\(12)) ) ) # ( !\G13|SAIDA\(12) & ( (\G1|pout\(12) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(12),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(12),
	combout => \G1|pout\(12));

-- Location: MLABCELL_X87_Y35_N33
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

-- Location: FF_X87_Y35_N35
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

-- Location: FF_X87_Y35_N38
\G2|saida[13]~DUPLICATE\ : dffeas
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
	q => \G2|saida[13]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y35_N57
\G12|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(13) = ( \Clock_Sistema~input_o\ & ( \G2|saida[13]~DUPLICATE_q\ ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(13),
	datad => \G2|ALT_INV_saida[13]~DUPLICATE_q\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(13));

-- Location: LABCELL_X85_Y35_N18
\G13|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(13) = ( \G13|SAIDA\(13) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(13)) ) ) # ( !\G13|SAIDA\(13) & ( (\G12|SAIDA\(13) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(13),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(13),
	combout => \G13|SAIDA\(13));

-- Location: LABCELL_X85_Y35_N51
\G1|pout[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(13) = ( \G13|SAIDA\(13) & ( (\G1|pout\(13)) # (\Clock_Sistema~input_o\) ) ) # ( !\G13|SAIDA\(13) & ( (!\Clock_Sistema~input_o\ & \G1|pout\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G1|ALT_INV_pout\(13),
	dataf => \G13|ALT_INV_SAIDA\(13),
	combout => \G1|pout\(13));

-- Location: MLABCELL_X87_Y35_N36
\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(13),
	cin => \G2|Add0~46\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

-- Location: FF_X87_Y35_N37
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

-- Location: LABCELL_X88_Y35_N15
\G12|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(14) = ( \G12|SAIDA\(14) & ( (!\Clock_Sistema~input_o\) # (\G2|saida\(14)) ) ) # ( !\G12|SAIDA\(14) & ( (\Clock_Sistema~input_o\ & \G2|saida\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G2|ALT_INV_saida\(14),
	dataf => \G12|ALT_INV_SAIDA\(14),
	combout => \G12|SAIDA\(14));

-- Location: LABCELL_X85_Y35_N0
\G13|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(14) = ( \G13|SAIDA\(14) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(14)) ) ) # ( !\G13|SAIDA\(14) & ( (\G12|SAIDA\(14) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(14),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(14),
	combout => \G13|SAIDA\(14));

-- Location: LABCELL_X85_Y35_N21
\G1|pout[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(14) = ( \G13|SAIDA\(14) & ( (\G1|pout\(14)) # (\Clock_Sistema~input_o\) ) ) # ( !\G13|SAIDA\(14) & ( (!\Clock_Sistema~input_o\ & \G1|pout\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G1|ALT_INV_pout\(14),
	dataf => \G13|ALT_INV_SAIDA\(14),
	combout => \G1|pout\(14));

-- Location: MLABCELL_X87_Y35_N39
\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

-- Location: FF_X88_Y35_N16
\G2|saida[14]\ : dffeas
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
	q => \G2|saida\(14));

-- Location: LABCELL_X88_Y35_N42
\G12|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(15) = ( \G12|SAIDA\(15) & ( (!\Clock_Sistema~input_o\) # (\G2|saida\(15)) ) ) # ( !\G12|SAIDA\(15) & ( (\Clock_Sistema~input_o\ & \G2|saida\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G2|ALT_INV_saida\(15),
	dataf => \G12|ALT_INV_SAIDA\(15),
	combout => \G12|SAIDA\(15));

-- Location: LABCELL_X88_Y35_N39
\G13|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(15) = ( \G12|SAIDA\(15) & ( (\Clock_Sistema~input_o\) # (\G13|SAIDA\(15)) ) ) # ( !\G12|SAIDA\(15) & ( (\G13|SAIDA\(15) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(15),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(15),
	combout => \G13|SAIDA\(15));

-- Location: LABCELL_X85_Y35_N3
\G1|pout[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(15) = ( \G1|pout\(15) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(15)) ) ) # ( !\G1|pout\(15) & ( (\G13|SAIDA\(15) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(15),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(15),
	combout => \G1|pout\(15));

-- Location: MLABCELL_X87_Y35_N42
\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(15) ) + ( GND ) + ( \G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(15),
	cin => \G2|Add0~54\,
	sumout => \G2|Add0~57_sumout\);

-- Location: FF_X88_Y35_N44
\G2|saida[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~57_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(15));

-- Location: LABCELL_X88_Y36_N21
\G4|rd[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~1_combout\ = ( !\G1|pout\(10) & ( (!\G1|pout\(7) & (!\G1|pout\(8) & (!\G1|pout\(9) & !\G1|pout\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(7),
	datab => \G1|ALT_INV_pout\(8),
	datac => \G1|ALT_INV_pout\(9),
	datad => \G1|ALT_INV_pout\(6),
	dataf => \G1|ALT_INV_pout\(10),
	combout => \G4|rd[0]~1_combout\);

-- Location: LABCELL_X85_Y35_N36
\G4|rd[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~2_combout\ = ( !\G1|pout\(0) & ( (!\G1|pout\(14) & (!\G1|pout\(12) & (!\G1|pout\(15) & !\G1|pout\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(14),
	datab => \G1|ALT_INV_pout\(12),
	datac => \G1|ALT_INV_pout\(15),
	datad => \G1|ALT_INV_pout\(13),
	dataf => \G1|ALT_INV_pout\(0),
	combout => \G4|rd[0]~2_combout\);

-- Location: LABCELL_X85_Y35_N9
\G4|rd[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~0_combout\ = ( !\G1|pout\(4) & ( (\Clock_Sistema~input_o\ & (!\G1|pout\(1) & (!\G1|pout\(3) & !\G1|pout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G1|ALT_INV_pout\(2),
	dataf => \G1|ALT_INV_pout\(4),
	combout => \G4|rd[0]~0_combout\);

-- Location: LABCELL_X88_Y36_N36
\G4|rd[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~3_combout\ = ( \G4|rd[0]~0_combout\ & ( (\G4|rd[0]~1_combout\ & (!\G1|pout\(5) & (!\G1|pout\(11) & \G4|rd[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~1_combout\,
	datab => \G1|ALT_INV_pout\(5),
	datac => \G1|ALT_INV_pout\(11),
	datad => \G4|ALT_INV_rd[0]~2_combout\,
	dataf => \G4|ALT_INV_rd[0]~0_combout\,
	combout => \G4|rd[0]~3_combout\);

-- Location: LABCELL_X70_Y80_N42
\G1|G0|G0|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G0|G0|state~0_combout\ = ( !\G1|G0|G0|state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|G0|G0|ALT_INV_state~q\,
	combout => \G1|G0|G0|state~0_combout\);

-- Location: FF_X70_Y80_N43
\G1|G0|G0|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|G0|G0|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G0|state~q\);

-- Location: LABCELL_X70_Y80_N48
\G1|G0|G1|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G0|G1|state~0_combout\ = ( !\G1|G0|G1|state~q\ & ( \G1|G0|G0|state~q\ ) ) # ( \G1|G0|G1|state~q\ & ( !\G1|G0|G0|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|G0|G1|ALT_INV_state~q\,
	dataf => \G1|G0|G0|ALT_INV_state~q\,
	combout => \G1|G0|G1|state~0_combout\);

-- Location: FF_X70_Y80_N50
\G1|G0|G1|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|G0|G1|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G1|state~q\);

-- Location: FF_X70_Y80_N44
\G1|G0|G0|state~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|G0|G0|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G0|state~DUPLICATE_q\);

-- Location: LABCELL_X70_Y80_N57
\G1|G0|G3|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G0|G3|state~0_combout\ = ( \G1|G0|G3|state~q\ & ( \G1|G0|G1|state~q\ & ( !\G1|G0|G0|state~DUPLICATE_q\ ) ) ) # ( !\G1|G0|G3|state~q\ & ( \G1|G0|G1|state~q\ & ( \G1|G0|G0|state~DUPLICATE_q\ ) ) ) # ( \G1|G0|G3|state~q\ & ( !\G1|G0|G1|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|G0|G0|ALT_INV_state~DUPLICATE_q\,
	datae => \G1|G0|G3|ALT_INV_state~q\,
	dataf => \G1|G0|G1|ALT_INV_state~q\,
	combout => \G1|G0|G3|state~0_combout\);

-- Location: FF_X70_Y80_N59
\G1|G0|G3|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|G0|G3|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G3|state~q\);

-- Location: LABCELL_X46_Y10_N0
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


