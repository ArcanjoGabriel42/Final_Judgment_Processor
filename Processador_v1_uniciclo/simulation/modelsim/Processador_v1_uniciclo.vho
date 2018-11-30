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

-- DATE "11/30/2018 17:57:14"

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
-- SomadorToPc_outWaveform[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[1]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[9]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[10]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[12]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[13]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[14]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[7]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[8]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[9]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[11]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[12]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[13]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[14]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[15]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[6]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[9]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[10]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[12]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[14]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[8]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[9]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[10]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[11]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[12]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[13]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[14]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[15]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[2]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[9]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[10]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[11]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[8]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[9]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[11]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[12]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[14]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[15]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[8]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[9]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[10]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[11]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[12]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[13]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[14]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[15]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[8]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[10]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[12]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[13]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[14]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[15]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[8]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[9]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[10]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[11]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[12]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[13]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[14]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[15]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_regdest_OUT	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[3]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_memparareg_OUT	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevereg_OUT	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_lemem_OUT	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevemem_OUT	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_branch_OUT	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_aluSRC_OUT	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_jump_OUT	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \Clock_Sistema~inputCLKENA0_outclk\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G13|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G1|pout[1]~1_combout\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G13|SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G1|pout[2]~2_combout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G13|SAIDA[3]~3_combout\ : std_logic;
SIGNAL \G1|pout[3]~3_combout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G13|SAIDA[4]~4_combout\ : std_logic;
SIGNAL \G1|pout[4]~4_combout\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G13|SAIDA[5]~5_combout\ : std_logic;
SIGNAL \G1|pout[5]~5_combout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G13|SAIDA[6]~6_combout\ : std_logic;
SIGNAL \G1|pout[6]~6_combout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G13|SAIDA[7]~7_combout\ : std_logic;
SIGNAL \G1|pout[7]~7_combout\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G13|SAIDA[8]~8_combout\ : std_logic;
SIGNAL \G1|pout[8]~8_combout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G13|SAIDA[9]~9_combout\ : std_logic;
SIGNAL \G1|pout[9]~9_combout\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G13|SAIDA[10]~10_combout\ : std_logic;
SIGNAL \G1|pout[10]~10_combout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G13|SAIDA[11]~11_combout\ : std_logic;
SIGNAL \G1|pout[11]~11_combout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G13|SAIDA[12]~12_combout\ : std_logic;
SIGNAL \G1|pout[12]~12_combout\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G13|SAIDA[13]~13_combout\ : std_logic;
SIGNAL \G1|pout[13]~13_combout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G13|SAIDA[14]~14_combout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G13|SAIDA[15]~15_combout\ : std_logic;
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G4|Mux5~0_combout\ : std_logic;
SIGNAL \G4|rs[1]~0_combout\ : std_logic;
SIGNAL \G4|Mux6~0_combout\ : std_logic;
SIGNAL \G4|op[0]~0_combout\ : std_logic;
SIGNAL \G5|origalu[2]~0_combout\ : std_logic;
SIGNAL \G5|regdest~0_combout\ : std_logic;
SIGNAL \G5|jump~combout\ : std_logic;
SIGNAL \G13|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G1|pout[0]~0_combout\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G5|aluSRC~combout\ : std_logic;
SIGNAL \G5|origalu[1]~1_combout\ : std_logic;
SIGNAL \G4|rd[0]~0_combout\ : std_logic;
SIGNAL \G4|Mux2~0_combout\ : std_logic;
SIGNAL \G4|funct[0]~0_combout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G4|funct[2]~1_combout\ : std_logic;
SIGNAL \G16|Mux1~1_combout\ : std_logic;
SIGNAL \G16|Mux1~0_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~0_combout\ : std_logic;
SIGNAL \G16|Add1~81_cout\ : std_logic;
SIGNAL \G16|Add1~16_sumout\ : std_logic;
SIGNAL \G16|Mux15~1_combout\ : std_logic;
SIGNAL \G16|Add0~14_sumout\ : std_logic;
SIGNAL \G17|ram~280_combout\ : std_logic;
SIGNAL \G18|SAIDA[4]~25_combout\ : std_logic;
SIGNAL \G5|Equal1~0_combout\ : std_logic;
SIGNAL \G5|memparareg~combout\ : std_logic;
SIGNAL \G17|ram.we_a~0_combout\ : std_logic;
SIGNAL \rtl~18_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \G17|ram~260_combout\ : std_logic;
SIGNAL \G18|SAIDA[4]~23_combout\ : std_logic;
SIGNAL \G16|Mux15~2_combout\ : std_logic;
SIGNAL \rtl~20_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \G17|ram~116_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \G17|ram~100_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \G17|ram~36_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \G17|ram~52_combout\ : std_logic;
SIGNAL \rtl~19_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \G17|ram~20_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \G17|ram~4_combout\ : std_logic;
SIGNAL \G17|ram~337_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \G17|ram~84_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \G17|ram~68_combout\ : std_logic;
SIGNAL \G17|ram~297_combout\ : std_logic;
SIGNAL \rtl~17_combout\ : std_logic;
SIGNAL \rtl~22_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \G17|ram~244_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \G17|ram~228_combout\ : std_logic;
SIGNAL \rtl~21_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \G17|ram~148_combout\ : std_logic;
SIGNAL \rtl~16_combout\ : std_logic;
SIGNAL \G17|ram~164_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \G17|ram~180_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \G17|ram~132_combout\ : std_logic;
SIGNAL \G17|ram~341_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \G17|ram~212_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \G17|ram~196_combout\ : std_logic;
SIGNAL \G17|ram~301_combout\ : std_logic;
SIGNAL \G18|SAIDA[4]~24_combout\ : std_logic;
SIGNAL \G16|Mux1~3_combout\ : std_logic;
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G4|tipoi[3]~1_combout\ : std_logic;
SIGNAL \G4|tipoi[3]~3_combout\ : std_logic;
SIGNAL \G16|Mux11~1_combout\ : std_logic;
SIGNAL \G4|tipoi[2]~2_combout\ : std_logic;
SIGNAL \G16|Add0~15\ : std_logic;
SIGNAL \G16|Add0~71\ : std_logic;
SIGNAL \G16|Add0~75\ : std_logic;
SIGNAL \G16|Add0~63\ : std_logic;
SIGNAL \G16|Add0~66_sumout\ : std_logic;
SIGNAL \G16|Add1~17\ : std_logic;
SIGNAL \G16|Add1~53\ : std_logic;
SIGNAL \G16|Add1~57\ : std_logic;
SIGNAL \G16|Add1~33\ : std_logic;
SIGNAL \G16|Add1~36_sumout\ : std_logic;
SIGNAL \G16|Mux11~2_combout\ : std_logic;
SIGNAL \G18|SAIDA[1]~13_combout\ : std_logic;
SIGNAL \G17|ram~17_combout\ : std_logic;
SIGNAL \G17|ram~33_combout\ : std_logic;
SIGNAL \G17|ram~49_combout\ : std_logic;
SIGNAL \G17|ram~1_combout\ : std_logic;
SIGNAL \G17|ram~313_combout\ : std_logic;
SIGNAL \G17|ram~97_combout\ : std_logic;
SIGNAL \G17|ram~113_combout\ : std_logic;
SIGNAL \G17|ram~81_combout\ : std_logic;
SIGNAL \G17|ram~65_combout\ : std_logic;
SIGNAL \G17|ram~272_combout\ : std_logic;
SIGNAL \G17|ram~161_combout\ : std_logic;
SIGNAL \G17|ram~177_combout\ : std_logic;
SIGNAL \G17|ram~145_combout\ : std_logic;
SIGNAL \G17|ram~129_combout\ : std_logic;
SIGNAL \G17|ram~317_combout\ : std_logic;
SIGNAL \G17|ram~225_combout\ : std_logic;
SIGNAL \G17|ram~209_combout\ : std_logic;
SIGNAL \G17|ram~241_combout\ : std_logic;
SIGNAL \G17|ram~193_combout\ : std_logic;
SIGNAL \G17|ram~276_combout\ : std_logic;
SIGNAL \G18|SAIDA[1]~15_combout\ : std_logic;
SIGNAL \G17|ram~257_combout\ : std_logic;
SIGNAL \G18|SAIDA[1]~14_combout\ : std_logic;
SIGNAL \G18|SAIDA[1]~51_combout\ : std_logic;
SIGNAL \G16|Add0~70_sumout\ : std_logic;
SIGNAL \G16|Add1~52_sumout\ : std_logic;
SIGNAL \G16|Mux14~1_combout\ : std_logic;
SIGNAL \G18|SAIDA[3]~22_combout\ : std_logic;
SIGNAL \G17|ram~259_combout\ : std_logic;
SIGNAL \G18|SAIDA[3]~20_combout\ : std_logic;
SIGNAL \G17|ram~211_combout\ : std_logic;
SIGNAL \G17|ram~227_combout\ : std_logic;
SIGNAL \G17|ram~147_combout\ : std_logic;
SIGNAL \G17|ram~163_combout\ : std_logic;
SIGNAL \G17|ram~179_combout\ : std_logic;
SIGNAL \G17|ram~131_combout\ : std_logic;
SIGNAL \G17|ram~329_combout\ : std_logic;
SIGNAL \G17|ram~243_combout\ : std_logic;
SIGNAL \G17|ram~195_combout\ : std_logic;
SIGNAL \G17|ram~289_combout\ : std_logic;
SIGNAL \G17|ram~35_combout\ : std_logic;
SIGNAL \G17|ram~51_combout\ : std_logic;
SIGNAL \G17|ram~19_combout\ : std_logic;
SIGNAL \G17|ram~3_combout\ : std_logic;
SIGNAL \G17|ram~333_combout\ : std_logic;
SIGNAL \G17|ram~99_combout\ : std_logic;
SIGNAL \G17|ram~115_combout\ : std_logic;
SIGNAL \G17|ram~83_combout\ : std_logic;
SIGNAL \G17|ram~67_combout\ : std_logic;
SIGNAL \G17|ram~293_combout\ : std_logic;
SIGNAL \G18|SAIDA[3]~21_combout\ : std_logic;
SIGNAL \G16|Add0~62_sumout\ : std_logic;
SIGNAL \G16|Add1~32_sumout\ : std_logic;
SIGNAL \G16|Mux12~1_combout\ : std_logic;
SIGNAL \G16|Mux12~2_combout\ : std_logic;
SIGNAL \G18|SAIDA[1]~12_combout\ : std_logic;
SIGNAL \G18|SAIDA[2]~19_combout\ : std_logic;
SIGNAL \G17|ram~210_combout\ : std_logic;
SIGNAL \G17|ram~226_combout\ : std_logic;
SIGNAL \G17|ram~146_combout\ : std_logic;
SIGNAL \G17|ram~162_combout\ : std_logic;
SIGNAL \G17|ram~178_combout\ : std_logic;
SIGNAL \G17|ram~130_combout\ : std_logic;
SIGNAL \G17|ram~325_combout\ : std_logic;
SIGNAL \G17|ram~242_combout\ : std_logic;
SIGNAL \G17|ram~194_combout\ : std_logic;
SIGNAL \G17|ram~285_combout\ : std_logic;
SIGNAL \G17|ram~82_combout\ : std_logic;
SIGNAL \G17|ram~34_combout\ : std_logic;
SIGNAL \G17|ram~50_combout\ : std_logic;
SIGNAL \G17|ram~18_combout\ : std_logic;
SIGNAL \G17|ram~2_combout\ : std_logic;
SIGNAL \G17|ram~321_combout\ : std_logic;
SIGNAL \G17|ram~98_combout\ : std_logic;
SIGNAL \G17|ram~114_combout\ : std_logic;
SIGNAL \G17|ram~66_combout\ : std_logic;
SIGNAL \G17|ram~281_combout\ : std_logic;
SIGNAL \G17|ram~258_combout\ : std_logic;
SIGNAL \G18|SAIDA[1]~16_combout\ : std_logic;
SIGNAL \G18|SAIDA[2]~17_combout\ : std_logic;
SIGNAL \G18|SAIDA[2]~18_combout\ : std_logic;
SIGNAL \G16|Mux13~1_combout\ : std_logic;
SIGNAL \G16|Add1~56_sumout\ : std_logic;
SIGNAL \G16|Add0~74_sumout\ : std_logic;
SIGNAL \G16|Mux13~2_combout\ : std_logic;
SIGNAL \G17|ram~144_combout\ : std_logic;
SIGNAL \G17|ram~160_combout\ : std_logic;
SIGNAL \G17|ram~176_combout\ : std_logic;
SIGNAL \G17|ram~128_combout\ : std_logic;
SIGNAL \G17|ram~433_combout\ : std_logic;
SIGNAL \G17|ram~208_combout\ : std_logic;
SIGNAL \G17|ram~224_combout\ : std_logic;
SIGNAL \G17|ram~240_combout\ : std_logic;
SIGNAL \G17|ram~192_combout\ : std_logic;
SIGNAL \G17|ram~305_combout\ : std_logic;
SIGNAL \G17|ram~112_combout\ : std_logic;
SIGNAL \G17|ram~96_combout\ : std_logic;
SIGNAL \G17|ram~48_combout\ : std_logic;
SIGNAL \G17|ram~32_combout\ : std_logic;
SIGNAL \G17|ram~16_combout\ : std_logic;
SIGNAL \G17|ram~0_combout\ : std_logic;
SIGNAL \G17|ram~437_combout\ : std_logic;
SIGNAL \G17|ram~80_combout\ : std_logic;
SIGNAL \G17|ram~64_combout\ : std_logic;
SIGNAL \G17|ram~309_combout\ : std_logic;
SIGNAL \G18|SAIDA[0]~26_combout\ : std_logic;
SIGNAL \G17|ram~256_combout\ : std_logic;
SIGNAL \G18|SAIDA[0]~27_combout\ : std_logic;
SIGNAL \G18|SAIDA[0]~28_combout\ : std_logic;
SIGNAL \G14|SAIDA[5]~12_combout\ : std_logic;
SIGNAL \G16|Add0~67\ : std_logic;
SIGNAL \G16|Add0~18_sumout\ : std_logic;
SIGNAL \G16|Add1~37\ : std_logic;
SIGNAL \G16|Add1~40_sumout\ : std_logic;
SIGNAL \G16|Mux10~0_combout\ : std_logic;
SIGNAL \G17|ram~261_combout\ : std_logic;
SIGNAL \G17|ram~117_combout\ : std_logic;
SIGNAL \G17|ram~85_combout\ : std_logic;
SIGNAL \G17|ram~101_combout\ : std_logic;
SIGNAL \G17|ram~21_combout\ : std_logic;
SIGNAL \G17|ram~37_combout\ : std_logic;
SIGNAL \G17|ram~53_combout\ : std_logic;
SIGNAL \G17|ram~5_combout\ : std_logic;
SIGNAL \G17|ram~445_combout\ : std_logic;
SIGNAL \G17|ram~69_combout\ : std_logic;
SIGNAL \G17|ram~349_combout\ : std_logic;
SIGNAL \G17|ram~213_combout\ : std_logic;
SIGNAL \G17|ram~245_combout\ : std_logic;
SIGNAL \G17|ram~229_combout\ : std_logic;
SIGNAL \G17|ram~149_combout\ : std_logic;
SIGNAL \G17|ram~181_combout\ : std_logic;
SIGNAL \G17|ram~165_combout\ : std_logic;
SIGNAL \G17|ram~133_combout\ : std_logic;
SIGNAL \G17|ram~441_combout\ : std_logic;
SIGNAL \G17|ram~197_combout\ : std_logic;
SIGNAL \G17|ram~345_combout\ : std_logic;
SIGNAL \G18|SAIDA[5]~29_combout\ : std_logic;
SIGNAL \G18|SAIDA[5]~30_combout\ : std_logic;
SIGNAL \G14|SAIDA[6]~15_combout\ : std_logic;
SIGNAL \G16|Add1~41\ : std_logic;
SIGNAL \G16|Add1~60_sumout\ : std_logic;
SIGNAL \G16|Add0~19\ : std_logic;
SIGNAL \G16|Add0~22_sumout\ : std_logic;
SIGNAL \G16|Mux9~0_combout\ : std_logic;
SIGNAL \G17|ram~118_combout\ : std_logic;
SIGNAL \G17|ram~102_combout\ : std_logic;
SIGNAL \G17|ram~54_combout\ : std_logic;
SIGNAL \G17|ram~38_combout\ : std_logic;
SIGNAL \G17|ram~22_combout\ : std_logic;
SIGNAL \G17|ram~6_combout\ : std_logic;
SIGNAL \G17|ram~453_combout\ : std_logic;
SIGNAL \G17|ram~86_combout\ : std_logic;
SIGNAL \G17|ram~70_combout\ : std_logic;
SIGNAL \G17|ram~357_combout\ : std_logic;
SIGNAL \G17|ram~262_combout\ : std_logic;
SIGNAL \G17|ram~246_combout\ : std_logic;
SIGNAL \G17|ram~230_combout\ : std_logic;
SIGNAL \G17|ram~214_combout\ : std_logic;
SIGNAL \G17|ram~182_combout\ : std_logic;
SIGNAL \G17|ram~150_combout\ : std_logic;
SIGNAL \G17|ram~166_combout\ : std_logic;
SIGNAL \G17|ram~134_combout\ : std_logic;
SIGNAL \G17|ram~449_combout\ : std_logic;
SIGNAL \G17|ram~198_combout\ : std_logic;
SIGNAL \G17|ram~353_combout\ : std_logic;
SIGNAL \G18|SAIDA[6]~31_combout\ : std_logic;
SIGNAL \G18|SAIDA[6]~32_combout\ : std_logic;
SIGNAL \G17|ram~23_combout\ : std_logic;
SIGNAL \G17|ram~39_combout\ : std_logic;
SIGNAL \G17|ram~55_combout\ : std_logic;
SIGNAL \G17|ram~7_combout\ : std_logic;
SIGNAL \G17|ram~461_combout\ : std_logic;
SIGNAL \G17|ram~87_combout\ : std_logic;
SIGNAL \G17|ram~103_combout\ : std_logic;
SIGNAL \G17|ram~119_combout\ : std_logic;
SIGNAL \G17|ram~71_combout\ : std_logic;
SIGNAL \G17|ram~365_combout\ : std_logic;
SIGNAL \G17|ram~215_combout\ : std_logic;
SIGNAL \G17|ram~231_combout\ : std_logic;
SIGNAL \G17|ram~247_combout\ : std_logic;
SIGNAL \G17|ram~183_combout\ : std_logic;
SIGNAL \G17|ram~151_combout\ : std_logic;
SIGNAL \G17|ram~167_combout\ : std_logic;
SIGNAL \G17|ram~135_combout\ : std_logic;
SIGNAL \G17|ram~457_combout\ : std_logic;
SIGNAL \G17|ram~199_combout\ : std_logic;
SIGNAL \G17|ram~361_combout\ : std_logic;
SIGNAL \G18|SAIDA[7]~33_combout\ : std_logic;
SIGNAL \G17|ram~263_combout\ : std_logic;
SIGNAL \G14|SAIDA[7]~16_combout\ : std_logic;
SIGNAL \G16|Add0~23\ : std_logic;
SIGNAL \G16|Add0~26_sumout\ : std_logic;
SIGNAL \G16|Add1~61\ : std_logic;
SIGNAL \G16|Add1~64_sumout\ : std_logic;
SIGNAL \G16|Mux8~0_combout\ : std_logic;
SIGNAL \G18|SAIDA[7]~34_combout\ : std_logic;
SIGNAL \G17|ram~264_combout\ : std_logic;
SIGNAL \G17|ram~248_combout\ : std_logic;
SIGNAL \G17|ram~232_combout\ : std_logic;
SIGNAL \G17|ram~216_combout\ : std_logic;
SIGNAL \G17|ram~152_combout\ : std_logic;
SIGNAL \G17|ram~168_combout\ : std_logic;
SIGNAL \G17|ram~184_combout\ : std_logic;
SIGNAL \G17|ram~136_combout\ : std_logic;
SIGNAL \G17|ram~465_combout\ : std_logic;
SIGNAL \G17|ram~200_combout\ : std_logic;
SIGNAL \G17|ram~369_combout\ : std_logic;
SIGNAL \G17|ram~88_combout\ : std_logic;
SIGNAL \G17|ram~120_combout\ : std_logic;
SIGNAL \G17|ram~104_combout\ : std_logic;
SIGNAL \G17|ram~56_combout\ : std_logic;
SIGNAL \G17|ram~40_combout\ : std_logic;
SIGNAL \G17|ram~24_combout\ : std_logic;
SIGNAL \G17|ram~8_combout\ : std_logic;
SIGNAL \G17|ram~469_combout\ : std_logic;
SIGNAL \G17|ram~72_combout\ : std_logic;
SIGNAL \G17|ram~373_combout\ : std_logic;
SIGNAL \G18|SAIDA[8]~35_combout\ : std_logic;
SIGNAL \G14|SAIDA[8]~17_combout\ : std_logic;
SIGNAL \G16|Add0~27\ : std_logic;
SIGNAL \G16|Add0~30_sumout\ : std_logic;
SIGNAL \G16|Add1~65\ : std_logic;
SIGNAL \G16|Add1~68_sumout\ : std_logic;
SIGNAL \G16|Mux7~0_combout\ : std_logic;
SIGNAL \G18|SAIDA[8]~36_combout\ : std_logic;
SIGNAL \G17|ram~89_combout\ : std_logic;
SIGNAL \G17|ram~121_combout\ : std_logic;
SIGNAL \G17|ram~105_combout\ : std_logic;
SIGNAL \G17|ram~25_combout\ : std_logic;
SIGNAL \G17|ram~57_combout\ : std_logic;
SIGNAL \G17|ram~41_combout\ : std_logic;
SIGNAL \G17|ram~9_combout\ : std_logic;
SIGNAL \G17|ram~477_combout\ : std_logic;
SIGNAL \G17|ram~73_combout\ : std_logic;
SIGNAL \G17|ram~381_combout\ : std_logic;
SIGNAL \G17|ram~217_combout\ : std_logic;
SIGNAL \G17|ram~185_combout\ : std_logic;
SIGNAL \G17|ram~169_combout\ : std_logic;
SIGNAL \G17|ram~153_combout\ : std_logic;
SIGNAL \G17|ram~137_combout\ : std_logic;
SIGNAL \G17|ram~473_combout\ : std_logic;
SIGNAL \G17|ram~233_combout\ : std_logic;
SIGNAL \G17|ram~249_combout\ : std_logic;
SIGNAL \G17|ram~201_combout\ : std_logic;
SIGNAL \G17|ram~377_combout\ : std_logic;
SIGNAL \G18|SAIDA[9]~37_combout\ : std_logic;
SIGNAL \G14|SAIDA[9]~18_combout\ : std_logic;
SIGNAL \G16|Add0~31\ : std_logic;
SIGNAL \G16|Add0~34_sumout\ : std_logic;
SIGNAL \G16|Add1~69\ : std_logic;
SIGNAL \G16|Add1~72_sumout\ : std_logic;
SIGNAL \G16|Mux6~0_combout\ : std_logic;
SIGNAL \G17|ram~265_combout\ : std_logic;
SIGNAL \G18|SAIDA[9]~38_combout\ : std_logic;
SIGNAL \G17|ram~250_combout\ : std_logic;
SIGNAL \G17|ram~234_combout\ : std_logic;
SIGNAL \G17|ram~218_combout\ : std_logic;
SIGNAL \G17|ram~186_combout\ : std_logic;
SIGNAL \G17|ram~154_combout\ : std_logic;
SIGNAL \G17|ram~170_combout\ : std_logic;
SIGNAL \G17|ram~138_combout\ : std_logic;
SIGNAL \G17|ram~481_combout\ : std_logic;
SIGNAL \G17|ram~202_combout\ : std_logic;
SIGNAL \G17|ram~385_combout\ : std_logic;
SIGNAL \G17|ram~26_combout\ : std_logic;
SIGNAL \G17|ram~42_combout\ : std_logic;
SIGNAL \G17|ram~58_combout\ : std_logic;
SIGNAL \G17|ram~10_combout\ : std_logic;
SIGNAL \G17|ram~485_combout\ : std_logic;
SIGNAL \G17|ram~122_combout\ : std_logic;
SIGNAL \G17|ram~106_combout\ : std_logic;
SIGNAL \G17|ram~90_combout\ : std_logic;
SIGNAL \G17|ram~74_combout\ : std_logic;
SIGNAL \G17|ram~389_combout\ : std_logic;
SIGNAL \G18|SAIDA[10]~39_combout\ : std_logic;
SIGNAL \G17|ram~266_combout\ : std_logic;
SIGNAL \G14|SAIDA[10]~19_combout\ : std_logic;
SIGNAL \G16|Add1~73\ : std_logic;
SIGNAL \G16|Add1~76_sumout\ : std_logic;
SIGNAL \G16|Add0~35\ : std_logic;
SIGNAL \G16|Add0~38_sumout\ : std_logic;
SIGNAL \G16|Mux5~0_combout\ : std_logic;
SIGNAL \G18|SAIDA[10]~40_combout\ : std_logic;
SIGNAL \G17|ram~123_combout\ : std_logic;
SIGNAL \G17|ram~91_combout\ : std_logic;
SIGNAL \G17|ram~107_combout\ : std_logic;
SIGNAL \G17|ram~27_combout\ : std_logic;
SIGNAL \G17|ram~43_combout\ : std_logic;
SIGNAL \G17|ram~59_combout\ : std_logic;
SIGNAL \G17|ram~11_combout\ : std_logic;
SIGNAL \G17|ram~493_combout\ : std_logic;
SIGNAL \G17|ram~75_combout\ : std_logic;
SIGNAL \G17|ram~397_combout\ : std_logic;
SIGNAL \G17|ram~219_combout\ : std_logic;
SIGNAL \G17|ram~235_combout\ : std_logic;
SIGNAL \G17|ram~251_combout\ : std_logic;
SIGNAL \G17|ram~187_combout\ : std_logic;
SIGNAL \G17|ram~171_combout\ : std_logic;
SIGNAL \G17|ram~155_combout\ : std_logic;
SIGNAL \G17|ram~139_combout\ : std_logic;
SIGNAL \G17|ram~489_combout\ : std_logic;
SIGNAL \G17|ram~203_combout\ : std_logic;
SIGNAL \G17|ram~393_combout\ : std_logic;
SIGNAL \G18|SAIDA[11]~41_combout\ : std_logic;
SIGNAL \G17|ram~267_combout\ : std_logic;
SIGNAL \G14|SAIDA[11]~13_combout\ : std_logic;
SIGNAL \G16|Add1~77\ : std_logic;
SIGNAL \G16|Add1~44_sumout\ : std_logic;
SIGNAL \G16|Add0~39\ : std_logic;
SIGNAL \G16|Add0~42_sumout\ : std_logic;
SIGNAL \G16|Mux4~0_combout\ : std_logic;
SIGNAL \G18|SAIDA[11]~42_combout\ : std_logic;
SIGNAL \G17|ram~124_combout\ : std_logic;
SIGNAL \G17|ram~108_combout\ : std_logic;
SIGNAL \G17|ram~92_combout\ : std_logic;
SIGNAL \G17|ram~28_combout\ : std_logic;
SIGNAL \G17|ram~44_combout\ : std_logic;
SIGNAL \G17|ram~60_combout\ : std_logic;
SIGNAL \G17|ram~12_combout\ : std_logic;
SIGNAL \G17|ram~501_combout\ : std_logic;
SIGNAL \G17|ram~76_combout\ : std_logic;
SIGNAL \G17|ram~405_combout\ : std_logic;
SIGNAL \G17|ram~252_combout\ : std_logic;
SIGNAL \G17|ram~220_combout\ : std_logic;
SIGNAL \G17|ram~236_combout\ : std_logic;
SIGNAL \G17|ram~156_combout\ : std_logic;
SIGNAL \G17|ram~172_combout\ : std_logic;
SIGNAL \G17|ram~188_combout\ : std_logic;
SIGNAL \G17|ram~140_combout\ : std_logic;
SIGNAL \G17|ram~497_combout\ : std_logic;
SIGNAL \G17|ram~204_combout\ : std_logic;
SIGNAL \G17|ram~401_combout\ : std_logic;
SIGNAL \G18|SAIDA[12]~43_combout\ : std_logic;
SIGNAL \G17|ram~268_combout\ : std_logic;
SIGNAL \G14|SAIDA[12]~14_combout\ : std_logic;
SIGNAL \G16|Add0~43\ : std_logic;
SIGNAL \G16|Add0~46_sumout\ : std_logic;
SIGNAL \G16|Add1~45\ : std_logic;
SIGNAL \G16|Add1~48_sumout\ : std_logic;
SIGNAL \G16|Mux3~0_combout\ : std_logic;
SIGNAL \G18|SAIDA[12]~44_combout\ : std_logic;
SIGNAL \G17|ram~253_combout\ : std_logic;
SIGNAL \G17|ram~157_combout\ : std_logic;
SIGNAL \G17|ram~173_combout\ : std_logic;
SIGNAL \G17|ram~189_combout\ : std_logic;
SIGNAL \G17|ram~141_combout\ : std_logic;
SIGNAL \G17|ram~505_combout\ : std_logic;
SIGNAL \G17|ram~237_combout\ : std_logic;
SIGNAL \G17|ram~221_combout\ : std_logic;
SIGNAL \G17|ram~205_combout\ : std_logic;
SIGNAL \G17|ram~409_combout\ : std_logic;
SIGNAL \G17|ram~93_combout\ : std_logic;
SIGNAL \G17|ram~61_combout\ : std_logic;
SIGNAL \G17|ram~45_combout\ : std_logic;
SIGNAL \G17|ram~29_combout\ : std_logic;
SIGNAL \G17|ram~13_combout\ : std_logic;
SIGNAL \G17|ram~509_combout\ : std_logic;
SIGNAL \G17|ram~109_combout\ : std_logic;
SIGNAL \G17|ram~125_combout\ : std_logic;
SIGNAL \G17|ram~77_combout\ : std_logic;
SIGNAL \G17|ram~413_combout\ : std_logic;
SIGNAL \G18|SAIDA[13]~45_combout\ : std_logic;
SIGNAL \G14|SAIDA[13]~10_combout\ : std_logic;
SIGNAL \G16|Add0~47\ : std_logic;
SIGNAL \G16|Add0~50_sumout\ : std_logic;
SIGNAL \G16|Add1~49\ : std_logic;
SIGNAL \G16|Add1~20_sumout\ : std_logic;
SIGNAL \G16|Mux2~0_combout\ : std_logic;
SIGNAL \G17|ram~269_combout\ : std_logic;
SIGNAL \G18|SAIDA[13]~46_combout\ : std_logic;
SIGNAL \G17|ram~94_combout\ : std_logic;
SIGNAL \G17|ram~126_combout\ : std_logic;
SIGNAL \G17|ram~110_combout\ : std_logic;
SIGNAL \G17|ram~30_combout\ : std_logic;
SIGNAL \G17|ram~46_combout\ : std_logic;
SIGNAL \G17|ram~62_combout\ : std_logic;
SIGNAL \G17|ram~14_combout\ : std_logic;
SIGNAL \G17|ram~517_combout\ : std_logic;
SIGNAL \G17|ram~78_combout\ : std_logic;
SIGNAL \G17|ram~421_combout\ : std_logic;
SIGNAL \G17|ram~254_combout\ : std_logic;
SIGNAL \G17|ram~238_combout\ : std_logic;
SIGNAL \G17|ram~158_combout\ : std_logic;
SIGNAL \G17|ram~190_combout\ : std_logic;
SIGNAL \G17|ram~174_combout\ : std_logic;
SIGNAL \G17|ram~142_combout\ : std_logic;
SIGNAL \G17|ram~513_combout\ : std_logic;
SIGNAL \G17|ram~222_combout\ : std_logic;
SIGNAL \G17|ram~206_combout\ : std_logic;
SIGNAL \G17|ram~417_combout\ : std_logic;
SIGNAL \G18|SAIDA[14]~47_combout\ : std_logic;
SIGNAL \G17|ram~270_combout\ : std_logic;
SIGNAL \G14|SAIDA[14]~11_combout\ : std_logic;
SIGNAL \G16|Add1~21\ : std_logic;
SIGNAL \G16|Add1~24_sumout\ : std_logic;
SIGNAL \G16|Add0~51\ : std_logic;
SIGNAL \G16|Add0~54_sumout\ : std_logic;
SIGNAL \G16|Mux1~2_combout\ : std_logic;
SIGNAL \G18|SAIDA[14]~48_combout\ : std_logic;
SIGNAL \G17|ram~223_combout\ : std_logic;
SIGNAL \G17|ram~159_combout\ : std_logic;
SIGNAL \G17|ram~175_combout\ : std_logic;
SIGNAL \G17|ram~191_combout\ : std_logic;
SIGNAL \G17|ram~143_combout\ : std_logic;
SIGNAL \G17|ram~521_combout\ : std_logic;
SIGNAL \G17|ram~239_combout\ : std_logic;
SIGNAL \G17|ram~255_combout\ : std_logic;
SIGNAL \G17|ram~207_combout\ : std_logic;
SIGNAL \G17|ram~425_combout\ : std_logic;
SIGNAL \G17|ram~271_combout\ : std_logic;
SIGNAL \G17|ram~95_combout\ : std_logic;
SIGNAL \G17|ram~111_combout\ : std_logic;
SIGNAL \G17|ram~31_combout\ : std_logic;
SIGNAL \G17|ram~63_combout\ : std_logic;
SIGNAL \G17|ram~47_combout\ : std_logic;
SIGNAL \G17|ram~15_combout\ : std_logic;
SIGNAL \G17|ram~525_combout\ : std_logic;
SIGNAL \G17|ram~127_combout\ : std_logic;
SIGNAL \G17|ram~79_combout\ : std_logic;
SIGNAL \G17|ram~429_combout\ : std_logic;
SIGNAL \G18|SAIDA[15]~49_combout\ : std_logic;
SIGNAL \G16|Add0~55\ : std_logic;
SIGNAL \G16|Add0~58_sumout\ : std_logic;
SIGNAL \G16|Add1~25\ : std_logic;
SIGNAL \G16|Add1~28_sumout\ : std_logic;
SIGNAL \G16|Mux0~0_combout\ : std_logic;
SIGNAL \G18|SAIDA[15]~50_combout\ : std_logic;
SIGNAL \G5|regdest~combout\ : std_logic;
SIGNAL \G6|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G6|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G4|rs[2]~1_combout\ : std_logic;
SIGNAL \G6|SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G4|rs[0]~2_combout\ : std_logic;
SIGNAL \G4|rd[0]~1_combout\ : std_logic;
SIGNAL \G4|rt[0]~0_combout\ : std_logic;
SIGNAL \G16|Equal1~2_combout\ : std_logic;
SIGNAL \G16|Equal1~0_combout\ : std_logic;
SIGNAL \G16|Equal1~1_combout\ : std_logic;
SIGNAL \G16|ZeroULA~2_combout\ : std_logic;
SIGNAL \G16|ZeroULA~3_combout\ : std_logic;
SIGNAL \G16|ZeroULA~0_combout\ : std_logic;
SIGNAL \G16|ZeroULA~1_combout\ : std_logic;
SIGNAL \G12|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G12|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G9|SAIDA[2]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~1_sumout\ : std_logic;
SIGNAL \G12|SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G10|Add0~2\ : std_logic;
SIGNAL \G10|Add0~5_sumout\ : std_logic;
SIGNAL \G12|SAIDA[3]~3_combout\ : std_logic;
SIGNAL \G10|Add0~6\ : std_logic;
SIGNAL \G10|Add0~9_sumout\ : std_logic;
SIGNAL \G12|SAIDA[4]~4_combout\ : std_logic;
SIGNAL \G9|SAIDA[5]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~10\ : std_logic;
SIGNAL \G10|Add0~13_sumout\ : std_logic;
SIGNAL \G12|SAIDA[5]~5_combout\ : std_logic;
SIGNAL \G10|Add0~14\ : std_logic;
SIGNAL \G10|Add0~17_sumout\ : std_logic;
SIGNAL \G12|SAIDA[6]~6_combout\ : std_logic;
SIGNAL \G10|Add0~18\ : std_logic;
SIGNAL \G10|Add0~21_sumout\ : std_logic;
SIGNAL \G12|SAIDA[7]~7_combout\ : std_logic;
SIGNAL \G10|Add0~22\ : std_logic;
SIGNAL \G10|Add0~25_sumout\ : std_logic;
SIGNAL \G12|SAIDA[8]~8_combout\ : std_logic;
SIGNAL \G10|Add0~26\ : std_logic;
SIGNAL \G10|Add0~29_sumout\ : std_logic;
SIGNAL \G12|SAIDA[9]~9_combout\ : std_logic;
SIGNAL \G10|Add0~30\ : std_logic;
SIGNAL \G10|Add0~33_sumout\ : std_logic;
SIGNAL \G12|SAIDA[10]~10_combout\ : std_logic;
SIGNAL \G10|Add0~34\ : std_logic;
SIGNAL \G10|Add0~37_sumout\ : std_logic;
SIGNAL \G12|SAIDA[11]~11_combout\ : std_logic;
SIGNAL \G10|Add0~38\ : std_logic;
SIGNAL \G10|Add0~41_sumout\ : std_logic;
SIGNAL \G12|SAIDA[12]~12_combout\ : std_logic;
SIGNAL \G10|Add0~42\ : std_logic;
SIGNAL \G10|Add0~45_sumout\ : std_logic;
SIGNAL \G12|SAIDA[13]~13_combout\ : std_logic;
SIGNAL \G10|Add0~46\ : std_logic;
SIGNAL \G10|Add0~49_sumout\ : std_logic;
SIGNAL \G12|SAIDA[14]~14_combout\ : std_logic;
SIGNAL \G10|Add0~50\ : std_logic;
SIGNAL \G10|Add0~53_sumout\ : std_logic;
SIGNAL \G12|SAIDA[15]~15_combout\ : std_logic;
SIGNAL \G10|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G9|AUX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G15|SAIDA\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G3|resshift\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G9|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G5|origalu\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Clock_Sistema~input_o\ : std_logic;
SIGNAL \G17|ALT_INV_ram~47_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~15_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~63_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~31_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~143_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~191_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~46_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~14_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~62_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~30_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~142_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~190_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~45_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~13_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~61_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~29_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~141_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~189_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~44_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~12_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~60_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~28_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~140_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~188_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~43_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~11_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~59_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~27_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~139_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~187_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~42_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~10_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~58_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~26_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~138_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~186_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~41_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~9_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~57_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~25_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~137_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~185_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~40_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~8_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~56_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~24_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~136_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~184_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~39_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~7_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~55_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~23_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~135_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~183_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~38_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~6_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~54_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~22_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~134_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~182_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~37_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~5_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~53_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~21_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~133_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~32_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~0_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~48_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~16_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~128_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~111_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~79_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~127_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~95_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~239_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~207_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~255_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~223_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~110_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~78_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~126_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~94_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~238_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~206_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~254_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~222_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~109_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~77_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~125_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~93_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~237_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~205_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~253_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~221_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~108_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~76_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~124_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~92_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~236_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~204_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~252_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~220_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~107_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~75_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~123_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~91_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~235_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~203_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~251_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~219_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~106_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~74_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~122_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~90_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~234_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~202_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~250_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~218_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~105_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~73_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~121_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~89_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~233_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~201_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~249_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~217_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~104_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~72_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~120_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~88_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~232_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~200_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~248_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~216_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~103_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~71_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~119_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~87_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~231_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~199_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~247_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~215_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~102_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~70_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~118_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~86_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~230_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~198_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~246_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~214_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~101_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~69_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~117_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~85_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~229_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~197_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~245_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~213_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~132_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~180_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~36_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~4_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~52_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~20_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~35_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~3_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~51_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~19_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~131_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~179_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~130_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~178_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~34_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~2_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~50_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~18_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~129_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~177_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~33_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~1_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~49_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~17_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~96_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~64_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~112_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~80_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~224_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~192_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~240_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~208_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~271_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~270_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~269_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~268_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~267_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~266_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~265_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~264_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~263_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~262_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~261_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~228_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~196_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~244_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~212_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~100_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~68_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~116_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~84_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~99_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~67_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~115_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~83_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~227_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~195_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~243_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~211_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~226_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~194_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~242_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~210_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~98_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~66_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~114_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~82_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~225_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~193_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~241_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~209_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~97_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~65_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~113_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~81_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~256_combout\ : std_logic;
SIGNAL \G5|ALT_INV_origalu\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \G5|ALT_INV_jump~combout\ : std_logic;
SIGNAL \G5|ALT_INV_regdest~combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~260_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~259_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~258_combout\ : std_logic;
SIGNAL \G5|ALT_INV_aluSRC~combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~257_combout\ : std_logic;
SIGNAL \G5|ALT_INV_memparareg~combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G9|ALT_INV_AUX\ : std_logic_vector(5 DOWNTO 2);
SIGNAL \ALT_INV_rtl~16_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~15_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~14_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~13_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~12_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~11_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~10_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~9_combout\ : std_logic;
SIGNAL \G9|ALT_INV_SAIDA\ : std_logic_vector(5 DOWNTO 2);
SIGNAL \ALT_INV_rtl~8_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~7_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~6_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~22_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~5_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~21_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~4_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~3_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~2_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~20_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~1_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~19_combout\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[1]~1_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[10]~19_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[9]~18_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[8]~17_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[7]~16_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[6]~15_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[1]~51_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[12]~14_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[11]~13_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[5]~12_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[14]~11_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[13]~10_combout\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[2]~0_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[15]~50_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[15]~49_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[14]~48_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[14]~47_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[13]~46_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[13]~45_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[12]~44_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[12]~43_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[11]~42_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[11]~41_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[10]~40_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[10]~39_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[9]~38_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[9]~37_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[8]~36_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[8]~35_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[7]~34_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[7]~33_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[6]~32_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[6]~31_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[5]~30_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[5]~29_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~18_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram.we_a~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \G5|ALT_INV_regdest~0_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[0]~28_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[0]~27_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[0]~26_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G3|ALT_INV_resshift\ : std_logic_vector(15 DOWNTO 14);
SIGNAL \G13|ALT_INV_SAIDA[13]~13_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[12]~12_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[11]~11_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[10]~10_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[9]~9_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[8]~8_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[7]~7_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[6]~6_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[5]~5_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[4]~4_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[3]~3_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G10|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_ZeroULA~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_ZeroULA~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_ZeroULA~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_ZeroULA~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[3]~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[2]~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[3]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_op[0]~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rs[2]~1_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rs[1]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[4]~25_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[4]~24_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[4]~23_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[3]~22_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[3]~21_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[3]~20_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~17_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[2]~19_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[2]~18_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[2]~17_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[1]~16_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[1]~15_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[1]~14_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~280_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \G16|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[1]~13_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[1]~12_combout\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G17|ALT_INV_ram~525_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~521_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~517_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~513_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~509_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~505_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~501_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~497_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~493_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~489_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~485_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~481_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~477_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~473_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~469_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~465_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~461_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~457_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~453_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~449_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~445_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~441_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~437_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~433_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~429_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~425_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~421_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~417_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~413_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~409_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~405_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~401_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~397_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~393_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~389_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~385_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~381_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~377_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~373_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~369_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~365_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~361_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~357_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~353_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~349_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~345_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~341_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~337_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~333_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~329_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~325_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~321_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~74_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~70_sumout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~317_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~66_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~62_sumout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~313_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~309_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~305_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~58_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~54_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~50_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~46_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~42_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~38_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~34_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~30_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~26_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~22_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~18_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~76_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~72_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~68_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~64_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~60_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~56_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~52_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~48_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~44_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~40_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~36_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~32_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~28_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~24_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~20_sumout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~301_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~297_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~293_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~289_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~285_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~281_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~16_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~14_sumout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~276_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~272_combout\ : std_logic;

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
\ALT_INV_Clock_Sistema~input_o\ <= NOT \Clock_Sistema~input_o\;
\G17|ALT_INV_ram~47_combout\ <= NOT \G17|ram~47_combout\;
\G17|ALT_INV_ram~15_combout\ <= NOT \G17|ram~15_combout\;
\G17|ALT_INV_ram~63_combout\ <= NOT \G17|ram~63_combout\;
\G17|ALT_INV_ram~31_combout\ <= NOT \G17|ram~31_combout\;
\G17|ALT_INV_ram~175_combout\ <= NOT \G17|ram~175_combout\;
\G17|ALT_INV_ram~143_combout\ <= NOT \G17|ram~143_combout\;
\G17|ALT_INV_ram~191_combout\ <= NOT \G17|ram~191_combout\;
\G17|ALT_INV_ram~159_combout\ <= NOT \G17|ram~159_combout\;
\G17|ALT_INV_ram~46_combout\ <= NOT \G17|ram~46_combout\;
\G17|ALT_INV_ram~14_combout\ <= NOT \G17|ram~14_combout\;
\G17|ALT_INV_ram~62_combout\ <= NOT \G17|ram~62_combout\;
\G17|ALT_INV_ram~30_combout\ <= NOT \G17|ram~30_combout\;
\G17|ALT_INV_ram~174_combout\ <= NOT \G17|ram~174_combout\;
\G17|ALT_INV_ram~142_combout\ <= NOT \G17|ram~142_combout\;
\G17|ALT_INV_ram~190_combout\ <= NOT \G17|ram~190_combout\;
\G17|ALT_INV_ram~158_combout\ <= NOT \G17|ram~158_combout\;
\G17|ALT_INV_ram~45_combout\ <= NOT \G17|ram~45_combout\;
\G17|ALT_INV_ram~13_combout\ <= NOT \G17|ram~13_combout\;
\G17|ALT_INV_ram~61_combout\ <= NOT \G17|ram~61_combout\;
\G17|ALT_INV_ram~29_combout\ <= NOT \G17|ram~29_combout\;
\G17|ALT_INV_ram~173_combout\ <= NOT \G17|ram~173_combout\;
\G17|ALT_INV_ram~141_combout\ <= NOT \G17|ram~141_combout\;
\G17|ALT_INV_ram~189_combout\ <= NOT \G17|ram~189_combout\;
\G17|ALT_INV_ram~157_combout\ <= NOT \G17|ram~157_combout\;
\G17|ALT_INV_ram~44_combout\ <= NOT \G17|ram~44_combout\;
\G17|ALT_INV_ram~12_combout\ <= NOT \G17|ram~12_combout\;
\G17|ALT_INV_ram~60_combout\ <= NOT \G17|ram~60_combout\;
\G17|ALT_INV_ram~28_combout\ <= NOT \G17|ram~28_combout\;
\G17|ALT_INV_ram~172_combout\ <= NOT \G17|ram~172_combout\;
\G17|ALT_INV_ram~140_combout\ <= NOT \G17|ram~140_combout\;
\G17|ALT_INV_ram~188_combout\ <= NOT \G17|ram~188_combout\;
\G17|ALT_INV_ram~156_combout\ <= NOT \G17|ram~156_combout\;
\G17|ALT_INV_ram~43_combout\ <= NOT \G17|ram~43_combout\;
\G17|ALT_INV_ram~11_combout\ <= NOT \G17|ram~11_combout\;
\G17|ALT_INV_ram~59_combout\ <= NOT \G17|ram~59_combout\;
\G17|ALT_INV_ram~27_combout\ <= NOT \G17|ram~27_combout\;
\G17|ALT_INV_ram~171_combout\ <= NOT \G17|ram~171_combout\;
\G17|ALT_INV_ram~139_combout\ <= NOT \G17|ram~139_combout\;
\G17|ALT_INV_ram~187_combout\ <= NOT \G17|ram~187_combout\;
\G17|ALT_INV_ram~155_combout\ <= NOT \G17|ram~155_combout\;
\G17|ALT_INV_ram~42_combout\ <= NOT \G17|ram~42_combout\;
\G17|ALT_INV_ram~10_combout\ <= NOT \G17|ram~10_combout\;
\G17|ALT_INV_ram~58_combout\ <= NOT \G17|ram~58_combout\;
\G17|ALT_INV_ram~26_combout\ <= NOT \G17|ram~26_combout\;
\G17|ALT_INV_ram~170_combout\ <= NOT \G17|ram~170_combout\;
\G17|ALT_INV_ram~138_combout\ <= NOT \G17|ram~138_combout\;
\G17|ALT_INV_ram~186_combout\ <= NOT \G17|ram~186_combout\;
\G17|ALT_INV_ram~154_combout\ <= NOT \G17|ram~154_combout\;
\G17|ALT_INV_ram~41_combout\ <= NOT \G17|ram~41_combout\;
\G17|ALT_INV_ram~9_combout\ <= NOT \G17|ram~9_combout\;
\G17|ALT_INV_ram~57_combout\ <= NOT \G17|ram~57_combout\;
\G17|ALT_INV_ram~25_combout\ <= NOT \G17|ram~25_combout\;
\G17|ALT_INV_ram~169_combout\ <= NOT \G17|ram~169_combout\;
\G17|ALT_INV_ram~137_combout\ <= NOT \G17|ram~137_combout\;
\G17|ALT_INV_ram~185_combout\ <= NOT \G17|ram~185_combout\;
\G17|ALT_INV_ram~153_combout\ <= NOT \G17|ram~153_combout\;
\G17|ALT_INV_ram~40_combout\ <= NOT \G17|ram~40_combout\;
\G17|ALT_INV_ram~8_combout\ <= NOT \G17|ram~8_combout\;
\G17|ALT_INV_ram~56_combout\ <= NOT \G17|ram~56_combout\;
\G17|ALT_INV_ram~24_combout\ <= NOT \G17|ram~24_combout\;
\G17|ALT_INV_ram~168_combout\ <= NOT \G17|ram~168_combout\;
\G17|ALT_INV_ram~136_combout\ <= NOT \G17|ram~136_combout\;
\G17|ALT_INV_ram~184_combout\ <= NOT \G17|ram~184_combout\;
\G17|ALT_INV_ram~152_combout\ <= NOT \G17|ram~152_combout\;
\G17|ALT_INV_ram~39_combout\ <= NOT \G17|ram~39_combout\;
\G17|ALT_INV_ram~7_combout\ <= NOT \G17|ram~7_combout\;
\G17|ALT_INV_ram~55_combout\ <= NOT \G17|ram~55_combout\;
\G17|ALT_INV_ram~23_combout\ <= NOT \G17|ram~23_combout\;
\G17|ALT_INV_ram~167_combout\ <= NOT \G17|ram~167_combout\;
\G17|ALT_INV_ram~135_combout\ <= NOT \G17|ram~135_combout\;
\G17|ALT_INV_ram~183_combout\ <= NOT \G17|ram~183_combout\;
\G17|ALT_INV_ram~151_combout\ <= NOT \G17|ram~151_combout\;
\G17|ALT_INV_ram~38_combout\ <= NOT \G17|ram~38_combout\;
\G17|ALT_INV_ram~6_combout\ <= NOT \G17|ram~6_combout\;
\G17|ALT_INV_ram~54_combout\ <= NOT \G17|ram~54_combout\;
\G17|ALT_INV_ram~22_combout\ <= NOT \G17|ram~22_combout\;
\G17|ALT_INV_ram~166_combout\ <= NOT \G17|ram~166_combout\;
\G17|ALT_INV_ram~134_combout\ <= NOT \G17|ram~134_combout\;
\G17|ALT_INV_ram~182_combout\ <= NOT \G17|ram~182_combout\;
\G17|ALT_INV_ram~150_combout\ <= NOT \G17|ram~150_combout\;
\G17|ALT_INV_ram~37_combout\ <= NOT \G17|ram~37_combout\;
\G17|ALT_INV_ram~5_combout\ <= NOT \G17|ram~5_combout\;
\G17|ALT_INV_ram~53_combout\ <= NOT \G17|ram~53_combout\;
\G17|ALT_INV_ram~21_combout\ <= NOT \G17|ram~21_combout\;
\G17|ALT_INV_ram~165_combout\ <= NOT \G17|ram~165_combout\;
\G17|ALT_INV_ram~133_combout\ <= NOT \G17|ram~133_combout\;
\G17|ALT_INV_ram~181_combout\ <= NOT \G17|ram~181_combout\;
\G17|ALT_INV_ram~149_combout\ <= NOT \G17|ram~149_combout\;
\G17|ALT_INV_ram~32_combout\ <= NOT \G17|ram~32_combout\;
\G17|ALT_INV_ram~0_combout\ <= NOT \G17|ram~0_combout\;
\G17|ALT_INV_ram~48_combout\ <= NOT \G17|ram~48_combout\;
\G17|ALT_INV_ram~16_combout\ <= NOT \G17|ram~16_combout\;
\G17|ALT_INV_ram~160_combout\ <= NOT \G17|ram~160_combout\;
\G17|ALT_INV_ram~128_combout\ <= NOT \G17|ram~128_combout\;
\G17|ALT_INV_ram~176_combout\ <= NOT \G17|ram~176_combout\;
\G17|ALT_INV_ram~144_combout\ <= NOT \G17|ram~144_combout\;
\G17|ALT_INV_ram~111_combout\ <= NOT \G17|ram~111_combout\;
\G17|ALT_INV_ram~79_combout\ <= NOT \G17|ram~79_combout\;
\G17|ALT_INV_ram~127_combout\ <= NOT \G17|ram~127_combout\;
\G17|ALT_INV_ram~95_combout\ <= NOT \G17|ram~95_combout\;
\G17|ALT_INV_ram~239_combout\ <= NOT \G17|ram~239_combout\;
\G17|ALT_INV_ram~207_combout\ <= NOT \G17|ram~207_combout\;
\G17|ALT_INV_ram~255_combout\ <= NOT \G17|ram~255_combout\;
\G17|ALT_INV_ram~223_combout\ <= NOT \G17|ram~223_combout\;
\G17|ALT_INV_ram~110_combout\ <= NOT \G17|ram~110_combout\;
\G17|ALT_INV_ram~78_combout\ <= NOT \G17|ram~78_combout\;
\G17|ALT_INV_ram~126_combout\ <= NOT \G17|ram~126_combout\;
\G17|ALT_INV_ram~94_combout\ <= NOT \G17|ram~94_combout\;
\G17|ALT_INV_ram~238_combout\ <= NOT \G17|ram~238_combout\;
\G17|ALT_INV_ram~206_combout\ <= NOT \G17|ram~206_combout\;
\G17|ALT_INV_ram~254_combout\ <= NOT \G17|ram~254_combout\;
\G17|ALT_INV_ram~222_combout\ <= NOT \G17|ram~222_combout\;
\G17|ALT_INV_ram~109_combout\ <= NOT \G17|ram~109_combout\;
\G17|ALT_INV_ram~77_combout\ <= NOT \G17|ram~77_combout\;
\G17|ALT_INV_ram~125_combout\ <= NOT \G17|ram~125_combout\;
\G17|ALT_INV_ram~93_combout\ <= NOT \G17|ram~93_combout\;
\G17|ALT_INV_ram~237_combout\ <= NOT \G17|ram~237_combout\;
\G17|ALT_INV_ram~205_combout\ <= NOT \G17|ram~205_combout\;
\G17|ALT_INV_ram~253_combout\ <= NOT \G17|ram~253_combout\;
\G17|ALT_INV_ram~221_combout\ <= NOT \G17|ram~221_combout\;
\G17|ALT_INV_ram~108_combout\ <= NOT \G17|ram~108_combout\;
\G17|ALT_INV_ram~76_combout\ <= NOT \G17|ram~76_combout\;
\G17|ALT_INV_ram~124_combout\ <= NOT \G17|ram~124_combout\;
\G17|ALT_INV_ram~92_combout\ <= NOT \G17|ram~92_combout\;
\G17|ALT_INV_ram~236_combout\ <= NOT \G17|ram~236_combout\;
\G17|ALT_INV_ram~204_combout\ <= NOT \G17|ram~204_combout\;
\G17|ALT_INV_ram~252_combout\ <= NOT \G17|ram~252_combout\;
\G17|ALT_INV_ram~220_combout\ <= NOT \G17|ram~220_combout\;
\G17|ALT_INV_ram~107_combout\ <= NOT \G17|ram~107_combout\;
\G17|ALT_INV_ram~75_combout\ <= NOT \G17|ram~75_combout\;
\G17|ALT_INV_ram~123_combout\ <= NOT \G17|ram~123_combout\;
\G17|ALT_INV_ram~91_combout\ <= NOT \G17|ram~91_combout\;
\G17|ALT_INV_ram~235_combout\ <= NOT \G17|ram~235_combout\;
\G17|ALT_INV_ram~203_combout\ <= NOT \G17|ram~203_combout\;
\G17|ALT_INV_ram~251_combout\ <= NOT \G17|ram~251_combout\;
\G17|ALT_INV_ram~219_combout\ <= NOT \G17|ram~219_combout\;
\G17|ALT_INV_ram~106_combout\ <= NOT \G17|ram~106_combout\;
\G17|ALT_INV_ram~74_combout\ <= NOT \G17|ram~74_combout\;
\G17|ALT_INV_ram~122_combout\ <= NOT \G17|ram~122_combout\;
\G17|ALT_INV_ram~90_combout\ <= NOT \G17|ram~90_combout\;
\G17|ALT_INV_ram~234_combout\ <= NOT \G17|ram~234_combout\;
\G17|ALT_INV_ram~202_combout\ <= NOT \G17|ram~202_combout\;
\G17|ALT_INV_ram~250_combout\ <= NOT \G17|ram~250_combout\;
\G17|ALT_INV_ram~218_combout\ <= NOT \G17|ram~218_combout\;
\G17|ALT_INV_ram~105_combout\ <= NOT \G17|ram~105_combout\;
\G17|ALT_INV_ram~73_combout\ <= NOT \G17|ram~73_combout\;
\G17|ALT_INV_ram~121_combout\ <= NOT \G17|ram~121_combout\;
\G17|ALT_INV_ram~89_combout\ <= NOT \G17|ram~89_combout\;
\G17|ALT_INV_ram~233_combout\ <= NOT \G17|ram~233_combout\;
\G17|ALT_INV_ram~201_combout\ <= NOT \G17|ram~201_combout\;
\G17|ALT_INV_ram~249_combout\ <= NOT \G17|ram~249_combout\;
\G17|ALT_INV_ram~217_combout\ <= NOT \G17|ram~217_combout\;
\G17|ALT_INV_ram~104_combout\ <= NOT \G17|ram~104_combout\;
\G17|ALT_INV_ram~72_combout\ <= NOT \G17|ram~72_combout\;
\G17|ALT_INV_ram~120_combout\ <= NOT \G17|ram~120_combout\;
\G17|ALT_INV_ram~88_combout\ <= NOT \G17|ram~88_combout\;
\G17|ALT_INV_ram~232_combout\ <= NOT \G17|ram~232_combout\;
\G17|ALT_INV_ram~200_combout\ <= NOT \G17|ram~200_combout\;
\G17|ALT_INV_ram~248_combout\ <= NOT \G17|ram~248_combout\;
\G17|ALT_INV_ram~216_combout\ <= NOT \G17|ram~216_combout\;
\G17|ALT_INV_ram~103_combout\ <= NOT \G17|ram~103_combout\;
\G17|ALT_INV_ram~71_combout\ <= NOT \G17|ram~71_combout\;
\G17|ALT_INV_ram~119_combout\ <= NOT \G17|ram~119_combout\;
\G17|ALT_INV_ram~87_combout\ <= NOT \G17|ram~87_combout\;
\G17|ALT_INV_ram~231_combout\ <= NOT \G17|ram~231_combout\;
\G17|ALT_INV_ram~199_combout\ <= NOT \G17|ram~199_combout\;
\G17|ALT_INV_ram~247_combout\ <= NOT \G17|ram~247_combout\;
\G17|ALT_INV_ram~215_combout\ <= NOT \G17|ram~215_combout\;
\G17|ALT_INV_ram~102_combout\ <= NOT \G17|ram~102_combout\;
\G17|ALT_INV_ram~70_combout\ <= NOT \G17|ram~70_combout\;
\G17|ALT_INV_ram~118_combout\ <= NOT \G17|ram~118_combout\;
\G17|ALT_INV_ram~86_combout\ <= NOT \G17|ram~86_combout\;
\G17|ALT_INV_ram~230_combout\ <= NOT \G17|ram~230_combout\;
\G17|ALT_INV_ram~198_combout\ <= NOT \G17|ram~198_combout\;
\G17|ALT_INV_ram~246_combout\ <= NOT \G17|ram~246_combout\;
\G17|ALT_INV_ram~214_combout\ <= NOT \G17|ram~214_combout\;
\G17|ALT_INV_ram~101_combout\ <= NOT \G17|ram~101_combout\;
\G17|ALT_INV_ram~69_combout\ <= NOT \G17|ram~69_combout\;
\G17|ALT_INV_ram~117_combout\ <= NOT \G17|ram~117_combout\;
\G17|ALT_INV_ram~85_combout\ <= NOT \G17|ram~85_combout\;
\G17|ALT_INV_ram~229_combout\ <= NOT \G17|ram~229_combout\;
\G17|ALT_INV_ram~197_combout\ <= NOT \G17|ram~197_combout\;
\G17|ALT_INV_ram~245_combout\ <= NOT \G17|ram~245_combout\;
\G17|ALT_INV_ram~213_combout\ <= NOT \G17|ram~213_combout\;
\G17|ALT_INV_ram~164_combout\ <= NOT \G17|ram~164_combout\;
\G17|ALT_INV_ram~132_combout\ <= NOT \G17|ram~132_combout\;
\G17|ALT_INV_ram~180_combout\ <= NOT \G17|ram~180_combout\;
\G17|ALT_INV_ram~148_combout\ <= NOT \G17|ram~148_combout\;
\G17|ALT_INV_ram~36_combout\ <= NOT \G17|ram~36_combout\;
\G17|ALT_INV_ram~4_combout\ <= NOT \G17|ram~4_combout\;
\G17|ALT_INV_ram~52_combout\ <= NOT \G17|ram~52_combout\;
\G17|ALT_INV_ram~20_combout\ <= NOT \G17|ram~20_combout\;
\G17|ALT_INV_ram~35_combout\ <= NOT \G17|ram~35_combout\;
\G17|ALT_INV_ram~3_combout\ <= NOT \G17|ram~3_combout\;
\G17|ALT_INV_ram~51_combout\ <= NOT \G17|ram~51_combout\;
\G17|ALT_INV_ram~19_combout\ <= NOT \G17|ram~19_combout\;
\G17|ALT_INV_ram~163_combout\ <= NOT \G17|ram~163_combout\;
\G17|ALT_INV_ram~131_combout\ <= NOT \G17|ram~131_combout\;
\G17|ALT_INV_ram~179_combout\ <= NOT \G17|ram~179_combout\;
\G17|ALT_INV_ram~147_combout\ <= NOT \G17|ram~147_combout\;
\G17|ALT_INV_ram~162_combout\ <= NOT \G17|ram~162_combout\;
\G17|ALT_INV_ram~130_combout\ <= NOT \G17|ram~130_combout\;
\G17|ALT_INV_ram~178_combout\ <= NOT \G17|ram~178_combout\;
\G17|ALT_INV_ram~146_combout\ <= NOT \G17|ram~146_combout\;
\G17|ALT_INV_ram~34_combout\ <= NOT \G17|ram~34_combout\;
\G17|ALT_INV_ram~2_combout\ <= NOT \G17|ram~2_combout\;
\G17|ALT_INV_ram~50_combout\ <= NOT \G17|ram~50_combout\;
\G17|ALT_INV_ram~18_combout\ <= NOT \G17|ram~18_combout\;
\G17|ALT_INV_ram~161_combout\ <= NOT \G17|ram~161_combout\;
\G17|ALT_INV_ram~129_combout\ <= NOT \G17|ram~129_combout\;
\G17|ALT_INV_ram~177_combout\ <= NOT \G17|ram~177_combout\;
\G17|ALT_INV_ram~145_combout\ <= NOT \G17|ram~145_combout\;
\G17|ALT_INV_ram~33_combout\ <= NOT \G17|ram~33_combout\;
\G17|ALT_INV_ram~1_combout\ <= NOT \G17|ram~1_combout\;
\G17|ALT_INV_ram~49_combout\ <= NOT \G17|ram~49_combout\;
\G17|ALT_INV_ram~17_combout\ <= NOT \G17|ram~17_combout\;
\G17|ALT_INV_ram~96_combout\ <= NOT \G17|ram~96_combout\;
\G17|ALT_INV_ram~64_combout\ <= NOT \G17|ram~64_combout\;
\G17|ALT_INV_ram~112_combout\ <= NOT \G17|ram~112_combout\;
\G17|ALT_INV_ram~80_combout\ <= NOT \G17|ram~80_combout\;
\G17|ALT_INV_ram~224_combout\ <= NOT \G17|ram~224_combout\;
\G17|ALT_INV_ram~192_combout\ <= NOT \G17|ram~192_combout\;
\G17|ALT_INV_ram~240_combout\ <= NOT \G17|ram~240_combout\;
\G17|ALT_INV_ram~208_combout\ <= NOT \G17|ram~208_combout\;
\G17|ALT_INV_ram~271_combout\ <= NOT \G17|ram~271_combout\;
\G17|ALT_INV_ram~270_combout\ <= NOT \G17|ram~270_combout\;
\G17|ALT_INV_ram~269_combout\ <= NOT \G17|ram~269_combout\;
\G17|ALT_INV_ram~268_combout\ <= NOT \G17|ram~268_combout\;
\G17|ALT_INV_ram~267_combout\ <= NOT \G17|ram~267_combout\;
\G17|ALT_INV_ram~266_combout\ <= NOT \G17|ram~266_combout\;
\G17|ALT_INV_ram~265_combout\ <= NOT \G17|ram~265_combout\;
\G17|ALT_INV_ram~264_combout\ <= NOT \G17|ram~264_combout\;
\G17|ALT_INV_ram~263_combout\ <= NOT \G17|ram~263_combout\;
\G17|ALT_INV_ram~262_combout\ <= NOT \G17|ram~262_combout\;
\G17|ALT_INV_ram~261_combout\ <= NOT \G17|ram~261_combout\;
\G17|ALT_INV_ram~228_combout\ <= NOT \G17|ram~228_combout\;
\G17|ALT_INV_ram~196_combout\ <= NOT \G17|ram~196_combout\;
\G17|ALT_INV_ram~244_combout\ <= NOT \G17|ram~244_combout\;
\G17|ALT_INV_ram~212_combout\ <= NOT \G17|ram~212_combout\;
\G17|ALT_INV_ram~100_combout\ <= NOT \G17|ram~100_combout\;
\G17|ALT_INV_ram~68_combout\ <= NOT \G17|ram~68_combout\;
\G17|ALT_INV_ram~116_combout\ <= NOT \G17|ram~116_combout\;
\G17|ALT_INV_ram~84_combout\ <= NOT \G17|ram~84_combout\;
\G17|ALT_INV_ram~99_combout\ <= NOT \G17|ram~99_combout\;
\G17|ALT_INV_ram~67_combout\ <= NOT \G17|ram~67_combout\;
\G17|ALT_INV_ram~115_combout\ <= NOT \G17|ram~115_combout\;
\G17|ALT_INV_ram~83_combout\ <= NOT \G17|ram~83_combout\;
\G17|ALT_INV_ram~227_combout\ <= NOT \G17|ram~227_combout\;
\G17|ALT_INV_ram~195_combout\ <= NOT \G17|ram~195_combout\;
\G17|ALT_INV_ram~243_combout\ <= NOT \G17|ram~243_combout\;
\G17|ALT_INV_ram~211_combout\ <= NOT \G17|ram~211_combout\;
\G17|ALT_INV_ram~226_combout\ <= NOT \G17|ram~226_combout\;
\G17|ALT_INV_ram~194_combout\ <= NOT \G17|ram~194_combout\;
\G17|ALT_INV_ram~242_combout\ <= NOT \G17|ram~242_combout\;
\G17|ALT_INV_ram~210_combout\ <= NOT \G17|ram~210_combout\;
\G17|ALT_INV_ram~98_combout\ <= NOT \G17|ram~98_combout\;
\G17|ALT_INV_ram~66_combout\ <= NOT \G17|ram~66_combout\;
\G17|ALT_INV_ram~114_combout\ <= NOT \G17|ram~114_combout\;
\G17|ALT_INV_ram~82_combout\ <= NOT \G17|ram~82_combout\;
\G17|ALT_INV_ram~225_combout\ <= NOT \G17|ram~225_combout\;
\G17|ALT_INV_ram~193_combout\ <= NOT \G17|ram~193_combout\;
\G17|ALT_INV_ram~241_combout\ <= NOT \G17|ram~241_combout\;
\G17|ALT_INV_ram~209_combout\ <= NOT \G17|ram~209_combout\;
\G17|ALT_INV_ram~97_combout\ <= NOT \G17|ram~97_combout\;
\G17|ALT_INV_ram~65_combout\ <= NOT \G17|ram~65_combout\;
\G17|ALT_INV_ram~113_combout\ <= NOT \G17|ram~113_combout\;
\G17|ALT_INV_ram~81_combout\ <= NOT \G17|ram~81_combout\;
\G17|ALT_INV_ram~256_combout\ <= NOT \G17|ram~256_combout\;
\G5|ALT_INV_origalu\(1) <= NOT \G5|origalu\(1);
\G5|ALT_INV_origalu\(0) <= NOT \G5|origalu\(0);
\G5|ALT_INV_jump~combout\ <= NOT \G5|jump~combout\;
\G5|ALT_INV_regdest~combout\ <= NOT \G5|regdest~combout\;
\G17|ALT_INV_ram~260_combout\ <= NOT \G17|ram~260_combout\;
\G17|ALT_INV_ram~259_combout\ <= NOT \G17|ram~259_combout\;
\G17|ALT_INV_ram~258_combout\ <= NOT \G17|ram~258_combout\;
\G5|ALT_INV_aluSRC~combout\ <= NOT \G5|aluSRC~combout\;
\G17|ALT_INV_ram~257_combout\ <= NOT \G17|ram~257_combout\;
\G5|ALT_INV_memparareg~combout\ <= NOT \G5|memparareg~combout\;
\G4|ALT_INV_Mux6~0_combout\ <= NOT \G4|Mux6~0_combout\;
\G4|ALT_INV_Mux2~0_combout\ <= NOT \G4|Mux2~0_combout\;
\G9|ALT_INV_AUX\(5) <= NOT \G9|AUX\(5);
\G9|ALT_INV_AUX\(2) <= NOT \G9|AUX\(2);
\ALT_INV_rtl~16_combout\ <= NOT \rtl~16_combout\;
\ALT_INV_rtl~15_combout\ <= NOT \rtl~15_combout\;
\ALT_INV_rtl~14_combout\ <= NOT \rtl~14_combout\;
\ALT_INV_rtl~13_combout\ <= NOT \rtl~13_combout\;
\ALT_INV_rtl~12_combout\ <= NOT \rtl~12_combout\;
\ALT_INV_rtl~11_combout\ <= NOT \rtl~11_combout\;
\ALT_INV_rtl~10_combout\ <= NOT \rtl~10_combout\;
\ALT_INV_rtl~9_combout\ <= NOT \rtl~9_combout\;
\G9|ALT_INV_SAIDA\(5) <= NOT \G9|SAIDA\(5);
\G9|ALT_INV_SAIDA\(4) <= NOT \G9|SAIDA\(4);
\G9|ALT_INV_SAIDA\(2) <= NOT \G9|SAIDA\(2);
\ALT_INV_rtl~8_combout\ <= NOT \rtl~8_combout\;
\ALT_INV_rtl~7_combout\ <= NOT \rtl~7_combout\;
\ALT_INV_rtl~6_combout\ <= NOT \rtl~6_combout\;
\ALT_INV_rtl~22_combout\ <= NOT \rtl~22_combout\;
\ALT_INV_rtl~5_combout\ <= NOT \rtl~5_combout\;
\ALT_INV_rtl~21_combout\ <= NOT \rtl~21_combout\;
\ALT_INV_rtl~4_combout\ <= NOT \rtl~4_combout\;
\ALT_INV_rtl~3_combout\ <= NOT \rtl~3_combout\;
\ALT_INV_rtl~2_combout\ <= NOT \rtl~2_combout\;
\ALT_INV_rtl~20_combout\ <= NOT \rtl~20_combout\;
\ALT_INV_rtl~1_combout\ <= NOT \rtl~1_combout\;
\ALT_INV_rtl~19_combout\ <= NOT \rtl~19_combout\;
\G5|ALT_INV_origalu[1]~1_combout\ <= NOT \G5|origalu[1]~1_combout\;
\G14|ALT_INV_SAIDA[10]~19_combout\ <= NOT \G14|SAIDA[10]~19_combout\;
\G14|ALT_INV_SAIDA[9]~18_combout\ <= NOT \G14|SAIDA[9]~18_combout\;
\G14|ALT_INV_SAIDA[8]~17_combout\ <= NOT \G14|SAIDA[8]~17_combout\;
\G14|ALT_INV_SAIDA[7]~16_combout\ <= NOT \G14|SAIDA[7]~16_combout\;
\G14|ALT_INV_SAIDA[6]~15_combout\ <= NOT \G14|SAIDA[6]~15_combout\;
\G18|ALT_INV_SAIDA[1]~51_combout\ <= NOT \G18|SAIDA[1]~51_combout\;
\G14|ALT_INV_SAIDA[12]~14_combout\ <= NOT \G14|SAIDA[12]~14_combout\;
\G14|ALT_INV_SAIDA[11]~13_combout\ <= NOT \G14|SAIDA[11]~13_combout\;
\G14|ALT_INV_SAIDA[5]~12_combout\ <= NOT \G14|SAIDA[5]~12_combout\;
\G14|ALT_INV_SAIDA[14]~11_combout\ <= NOT \G14|SAIDA[14]~11_combout\;
\G14|ALT_INV_SAIDA[13]~10_combout\ <= NOT \G14|SAIDA[13]~10_combout\;
\G5|ALT_INV_origalu[2]~0_combout\ <= NOT \G5|origalu[2]~0_combout\;
\G18|ALT_INV_SAIDA[15]~50_combout\ <= NOT \G18|SAIDA[15]~50_combout\;
\G18|ALT_INV_SAIDA[15]~49_combout\ <= NOT \G18|SAIDA[15]~49_combout\;
\G18|ALT_INV_SAIDA[14]~48_combout\ <= NOT \G18|SAIDA[14]~48_combout\;
\G18|ALT_INV_SAIDA[14]~47_combout\ <= NOT \G18|SAIDA[14]~47_combout\;
\G18|ALT_INV_SAIDA[13]~46_combout\ <= NOT \G18|SAIDA[13]~46_combout\;
\G18|ALT_INV_SAIDA[13]~45_combout\ <= NOT \G18|SAIDA[13]~45_combout\;
\G18|ALT_INV_SAIDA[12]~44_combout\ <= NOT \G18|SAIDA[12]~44_combout\;
\G18|ALT_INV_SAIDA[12]~43_combout\ <= NOT \G18|SAIDA[12]~43_combout\;
\G18|ALT_INV_SAIDA[11]~42_combout\ <= NOT \G18|SAIDA[11]~42_combout\;
\G18|ALT_INV_SAIDA[11]~41_combout\ <= NOT \G18|SAIDA[11]~41_combout\;
\G18|ALT_INV_SAIDA[10]~40_combout\ <= NOT \G18|SAIDA[10]~40_combout\;
\G18|ALT_INV_SAIDA[10]~39_combout\ <= NOT \G18|SAIDA[10]~39_combout\;
\G18|ALT_INV_SAIDA[9]~38_combout\ <= NOT \G18|SAIDA[9]~38_combout\;
\G18|ALT_INV_SAIDA[9]~37_combout\ <= NOT \G18|SAIDA[9]~37_combout\;
\G18|ALT_INV_SAIDA[8]~36_combout\ <= NOT \G18|SAIDA[8]~36_combout\;
\G18|ALT_INV_SAIDA[8]~35_combout\ <= NOT \G18|SAIDA[8]~35_combout\;
\G18|ALT_INV_SAIDA[7]~34_combout\ <= NOT \G18|SAIDA[7]~34_combout\;
\G18|ALT_INV_SAIDA[7]~33_combout\ <= NOT \G18|SAIDA[7]~33_combout\;
\G18|ALT_INV_SAIDA[6]~32_combout\ <= NOT \G18|SAIDA[6]~32_combout\;
\G18|ALT_INV_SAIDA[6]~31_combout\ <= NOT \G18|SAIDA[6]~31_combout\;
\G18|ALT_INV_SAIDA[5]~30_combout\ <= NOT \G18|SAIDA[5]~30_combout\;
\G18|ALT_INV_SAIDA[5]~29_combout\ <= NOT \G18|SAIDA[5]~29_combout\;
\G16|ALT_INV_Mux13~2_combout\ <= NOT \G16|Mux13~2_combout\;
\G16|ALT_INV_Mux13~1_combout\ <= NOT \G16|Mux13~1_combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\ALT_INV_rtl~18_combout\ <= NOT \rtl~18_combout\;
\G17|ALT_INV_ram.we_a~0_combout\ <= NOT \G17|ram.we_a~0_combout\;
\G16|ALT_INV_Mux14~1_combout\ <= NOT \G16|Mux14~1_combout\;
\G16|ALT_INV_Mux11~2_combout\ <= NOT \G16|Mux11~2_combout\;
\G16|ALT_INV_Mux11~1_combout\ <= NOT \G16|Mux11~1_combout\;
\G16|ALT_INV_Mux12~2_combout\ <= NOT \G16|Mux12~2_combout\;
\G16|ALT_INV_Mux12~1_combout\ <= NOT \G16|Mux12~1_combout\;
\G16|ALT_INV_Mux1~3_combout\ <= NOT \G16|Mux1~3_combout\;
\G5|ALT_INV_regdest~0_combout\ <= NOT \G5|regdest~0_combout\;
\G5|ALT_INV_Equal1~0_combout\ <= NOT \G5|Equal1~0_combout\;
\G18|ALT_INV_SAIDA[0]~28_combout\ <= NOT \G18|SAIDA[0]~28_combout\;
\G18|ALT_INV_SAIDA[0]~27_combout\ <= NOT \G18|SAIDA[0]~27_combout\;
\G18|ALT_INV_SAIDA[0]~26_combout\ <= NOT \G18|SAIDA[0]~26_combout\;
\G16|ALT_INV_Mux0~0_combout\ <= NOT \G16|Mux0~0_combout\;
\G16|ALT_INV_Mux1~2_combout\ <= NOT \G16|Mux1~2_combout\;
\G16|ALT_INV_Mux2~0_combout\ <= NOT \G16|Mux2~0_combout\;
\G16|ALT_INV_Mux3~0_combout\ <= NOT \G16|Mux3~0_combout\;
\G16|ALT_INV_Mux4~0_combout\ <= NOT \G16|Mux4~0_combout\;
\G16|ALT_INV_Mux5~0_combout\ <= NOT \G16|Mux5~0_combout\;
\G16|ALT_INV_Mux6~0_combout\ <= NOT \G16|Mux6~0_combout\;
\G16|ALT_INV_Mux7~0_combout\ <= NOT \G16|Mux7~0_combout\;
\G16|ALT_INV_Mux8~0_combout\ <= NOT \G16|Mux8~0_combout\;
\G16|ALT_INV_Mux9~0_combout\ <= NOT \G16|Mux9~0_combout\;
\G16|ALT_INV_Mux10~0_combout\ <= NOT \G16|Mux10~0_combout\;
\G16|ALT_INV_Mux15~2_combout\ <= NOT \G16|Mux15~2_combout\;
\G3|ALT_INV_resshift\(15) <= NOT \G3|resshift\(15);
\G3|ALT_INV_resshift\(14) <= NOT \G3|resshift\(14);
\G13|ALT_INV_SAIDA[13]~13_combout\ <= NOT \G13|SAIDA[13]~13_combout\;
\G13|ALT_INV_SAIDA[12]~12_combout\ <= NOT \G13|SAIDA[12]~12_combout\;
\G13|ALT_INV_SAIDA[11]~11_combout\ <= NOT \G13|SAIDA[11]~11_combout\;
\G13|ALT_INV_SAIDA[10]~10_combout\ <= NOT \G13|SAIDA[10]~10_combout\;
\G13|ALT_INV_SAIDA[9]~9_combout\ <= NOT \G13|SAIDA[9]~9_combout\;
\G13|ALT_INV_SAIDA[8]~8_combout\ <= NOT \G13|SAIDA[8]~8_combout\;
\G13|ALT_INV_SAIDA[7]~7_combout\ <= NOT \G13|SAIDA[7]~7_combout\;
\G13|ALT_INV_SAIDA[6]~6_combout\ <= NOT \G13|SAIDA[6]~6_combout\;
\G13|ALT_INV_SAIDA[5]~5_combout\ <= NOT \G13|SAIDA[5]~5_combout\;
\G13|ALT_INV_SAIDA[4]~4_combout\ <= NOT \G13|SAIDA[4]~4_combout\;
\G13|ALT_INV_SAIDA[3]~3_combout\ <= NOT \G13|SAIDA[3]~3_combout\;
\G13|ALT_INV_SAIDA[2]~2_combout\ <= NOT \G13|SAIDA[2]~2_combout\;
\G13|ALT_INV_SAIDA[1]~1_combout\ <= NOT \G13|SAIDA[1]~1_combout\;
\G13|ALT_INV_SAIDA[0]~0_combout\ <= NOT \G13|SAIDA[0]~0_combout\;
\G10|ALT_INV_SAIDA\(15) <= NOT \G10|SAIDA\(15);
\G10|ALT_INV_SAIDA\(14) <= NOT \G10|SAIDA\(14);
\G10|ALT_INV_SAIDA\(13) <= NOT \G10|SAIDA\(13);
\G10|ALT_INV_SAIDA\(12) <= NOT \G10|SAIDA\(12);
\G10|ALT_INV_SAIDA\(11) <= NOT \G10|SAIDA\(11);
\G10|ALT_INV_SAIDA\(10) <= NOT \G10|SAIDA\(10);
\G10|ALT_INV_SAIDA\(9) <= NOT \G10|SAIDA\(9);
\G10|ALT_INV_SAIDA\(8) <= NOT \G10|SAIDA\(8);
\G10|ALT_INV_SAIDA\(7) <= NOT \G10|SAIDA\(7);
\G10|ALT_INV_SAIDA\(6) <= NOT \G10|SAIDA\(6);
\G10|ALT_INV_SAIDA\(5) <= NOT \G10|SAIDA\(5);
\G10|ALT_INV_SAIDA\(4) <= NOT \G10|SAIDA\(4);
\G10|ALT_INV_SAIDA\(3) <= NOT \G10|SAIDA\(3);
\G10|ALT_INV_SAIDA\(2) <= NOT \G10|SAIDA\(2);
\G10|ALT_INV_SAIDA\(1) <= NOT \G10|SAIDA\(1);
\G16|ALT_INV_ZeroULA~3_combout\ <= NOT \G16|ZeroULA~3_combout\;
\G16|ALT_INV_ZeroULA~2_combout\ <= NOT \G16|ZeroULA~2_combout\;
\G16|ALT_INV_ZeroULA~1_combout\ <= NOT \G16|ZeroULA~1_combout\;
\G16|ALT_INV_ZeroULA~0_combout\ <= NOT \G16|ZeroULA~0_combout\;
\G16|ALT_INV_Equal1~2_combout\ <= NOT \G16|Equal1~2_combout\;
\G16|ALT_INV_Equal1~1_combout\ <= NOT \G16|Equal1~1_combout\;
\G16|ALT_INV_Equal1~0_combout\ <= NOT \G16|Equal1~0_combout\;
\G10|ALT_INV_SAIDA\(0) <= NOT \G10|SAIDA\(0);
\G4|ALT_INV_tipoi[3]~3_combout\ <= NOT \G4|tipoi[3]~3_combout\;
\G4|ALT_INV_tipoi[2]~2_combout\ <= NOT \G4|tipoi[2]~2_combout\;
\G4|ALT_INV_tipoi[3]~1_combout\ <= NOT \G4|tipoi[3]~1_combout\;
\G4|ALT_INV_tipoi[0]~0_combout\ <= NOT \G4|tipoi[0]~0_combout\;
\G4|ALT_INV_Mux1~0_combout\ <= NOT \G4|Mux1~0_combout\;
\G4|ALT_INV_rd[0]~0_combout\ <= NOT \G4|rd[0]~0_combout\;
\G4|ALT_INV_op[0]~0_combout\ <= NOT \G4|op[0]~0_combout\;
\G6|ALT_INV_SAIDA[2]~2_combout\ <= NOT \G6|SAIDA[2]~2_combout\;
\G4|ALT_INV_rs[2]~1_combout\ <= NOT \G4|rs[2]~1_combout\;
\G6|ALT_INV_SAIDA[1]~1_combout\ <= NOT \G6|SAIDA[1]~1_combout\;
\G4|ALT_INV_rs[1]~0_combout\ <= NOT \G4|rs[1]~0_combout\;
\G4|ALT_INV_Mux0~3_combout\ <= NOT \G4|Mux0~3_combout\;
\G4|ALT_INV_Mux0~2_combout\ <= NOT \G4|Mux0~2_combout\;
\G18|ALT_INV_SAIDA[4]~25_combout\ <= NOT \G18|SAIDA[4]~25_combout\;
\G18|ALT_INV_SAIDA[4]~24_combout\ <= NOT \G18|SAIDA[4]~24_combout\;
\G18|ALT_INV_SAIDA[4]~23_combout\ <= NOT \G18|SAIDA[4]~23_combout\;
\G18|ALT_INV_SAIDA[3]~22_combout\ <= NOT \G18|SAIDA[3]~22_combout\;
\G18|ALT_INV_SAIDA[3]~21_combout\ <= NOT \G18|SAIDA[3]~21_combout\;
\G18|ALT_INV_SAIDA[3]~20_combout\ <= NOT \G18|SAIDA[3]~20_combout\;
\ALT_INV_rtl~17_combout\ <= NOT \rtl~17_combout\;
\G18|ALT_INV_SAIDA[2]~19_combout\ <= NOT \G18|SAIDA[2]~19_combout\;
\G18|ALT_INV_SAIDA[2]~18_combout\ <= NOT \G18|SAIDA[2]~18_combout\;
\G18|ALT_INV_SAIDA[2]~17_combout\ <= NOT \G18|SAIDA[2]~17_combout\;
\G18|ALT_INV_SAIDA[1]~16_combout\ <= NOT \G18|SAIDA[1]~16_combout\;
\G18|ALT_INV_SAIDA[1]~15_combout\ <= NOT \G18|SAIDA[1]~15_combout\;
\G18|ALT_INV_SAIDA[1]~14_combout\ <= NOT \G18|SAIDA[1]~14_combout\;
\G17|ALT_INV_ram~280_combout\ <= NOT \G17|ram~280_combout\;
\G16|ALT_INV_Mux15~1_combout\ <= NOT \G16|Mux15~1_combout\;
\G4|ALT_INV_Mux5~0_combout\ <= NOT \G4|Mux5~0_combout\;
\G4|ALT_INV_Mux0~1_combout\ <= NOT \G4|Mux0~1_combout\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
\G16|ALT_INV_Mux1~1_combout\ <= NOT \G16|Mux1~1_combout\;
\G15|ALT_INV_SAIDA\(0) <= NOT \G15|SAIDA\(0);
\G16|ALT_INV_Mux1~0_combout\ <= NOT \G16|Mux1~0_combout\;
\G15|ALT_INV_SAIDA\(4) <= NOT \G15|SAIDA\(4);
\G15|ALT_INV_SAIDA\(3) <= NOT \G15|SAIDA\(3);
\G15|ALT_INV_SAIDA\(5) <= NOT \G15|SAIDA\(5);
\G15|ALT_INV_SAIDA\(2) <= NOT \G15|SAIDA\(2);
\G18|ALT_INV_SAIDA[1]~13_combout\ <= NOT \G18|SAIDA[1]~13_combout\;
\G18|ALT_INV_SAIDA[1]~12_combout\ <= NOT \G18|SAIDA[1]~12_combout\;
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
\G2|ALT_INV_saida\(12) <= NOT \G2|saida\(12);
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
\G2|ALT_INV_saida\(0) <= NOT \G2|saida\(0);
\G17|ALT_INV_ram~525_combout\ <= NOT \G17|ram~525_combout\;
\G17|ALT_INV_ram~521_combout\ <= NOT \G17|ram~521_combout\;
\G17|ALT_INV_ram~517_combout\ <= NOT \G17|ram~517_combout\;
\G17|ALT_INV_ram~513_combout\ <= NOT \G17|ram~513_combout\;
\G17|ALT_INV_ram~509_combout\ <= NOT \G17|ram~509_combout\;
\G17|ALT_INV_ram~505_combout\ <= NOT \G17|ram~505_combout\;
\G17|ALT_INV_ram~501_combout\ <= NOT \G17|ram~501_combout\;
\G17|ALT_INV_ram~497_combout\ <= NOT \G17|ram~497_combout\;
\G17|ALT_INV_ram~493_combout\ <= NOT \G17|ram~493_combout\;
\G17|ALT_INV_ram~489_combout\ <= NOT \G17|ram~489_combout\;
\G17|ALT_INV_ram~485_combout\ <= NOT \G17|ram~485_combout\;
\G17|ALT_INV_ram~481_combout\ <= NOT \G17|ram~481_combout\;
\G17|ALT_INV_ram~477_combout\ <= NOT \G17|ram~477_combout\;
\G17|ALT_INV_ram~473_combout\ <= NOT \G17|ram~473_combout\;
\G17|ALT_INV_ram~469_combout\ <= NOT \G17|ram~469_combout\;
\G17|ALT_INV_ram~465_combout\ <= NOT \G17|ram~465_combout\;
\G17|ALT_INV_ram~461_combout\ <= NOT \G17|ram~461_combout\;
\G17|ALT_INV_ram~457_combout\ <= NOT \G17|ram~457_combout\;
\G17|ALT_INV_ram~453_combout\ <= NOT \G17|ram~453_combout\;
\G17|ALT_INV_ram~449_combout\ <= NOT \G17|ram~449_combout\;
\G17|ALT_INV_ram~445_combout\ <= NOT \G17|ram~445_combout\;
\G17|ALT_INV_ram~441_combout\ <= NOT \G17|ram~441_combout\;
\G17|ALT_INV_ram~437_combout\ <= NOT \G17|ram~437_combout\;
\G17|ALT_INV_ram~433_combout\ <= NOT \G17|ram~433_combout\;
\G17|ALT_INV_ram~429_combout\ <= NOT \G17|ram~429_combout\;
\G17|ALT_INV_ram~425_combout\ <= NOT \G17|ram~425_combout\;
\G17|ALT_INV_ram~421_combout\ <= NOT \G17|ram~421_combout\;
\G17|ALT_INV_ram~417_combout\ <= NOT \G17|ram~417_combout\;
\G17|ALT_INV_ram~413_combout\ <= NOT \G17|ram~413_combout\;
\G17|ALT_INV_ram~409_combout\ <= NOT \G17|ram~409_combout\;
\G17|ALT_INV_ram~405_combout\ <= NOT \G17|ram~405_combout\;
\G17|ALT_INV_ram~401_combout\ <= NOT \G17|ram~401_combout\;
\G17|ALT_INV_ram~397_combout\ <= NOT \G17|ram~397_combout\;
\G17|ALT_INV_ram~393_combout\ <= NOT \G17|ram~393_combout\;
\G17|ALT_INV_ram~389_combout\ <= NOT \G17|ram~389_combout\;
\G17|ALT_INV_ram~385_combout\ <= NOT \G17|ram~385_combout\;
\G17|ALT_INV_ram~381_combout\ <= NOT \G17|ram~381_combout\;
\G17|ALT_INV_ram~377_combout\ <= NOT \G17|ram~377_combout\;
\G17|ALT_INV_ram~373_combout\ <= NOT \G17|ram~373_combout\;
\G17|ALT_INV_ram~369_combout\ <= NOT \G17|ram~369_combout\;
\G17|ALT_INV_ram~365_combout\ <= NOT \G17|ram~365_combout\;
\G17|ALT_INV_ram~361_combout\ <= NOT \G17|ram~361_combout\;
\G17|ALT_INV_ram~357_combout\ <= NOT \G17|ram~357_combout\;
\G17|ALT_INV_ram~353_combout\ <= NOT \G17|ram~353_combout\;
\G17|ALT_INV_ram~349_combout\ <= NOT \G17|ram~349_combout\;
\G17|ALT_INV_ram~345_combout\ <= NOT \G17|ram~345_combout\;
\G17|ALT_INV_ram~341_combout\ <= NOT \G17|ram~341_combout\;
\G17|ALT_INV_ram~337_combout\ <= NOT \G17|ram~337_combout\;
\G17|ALT_INV_ram~333_combout\ <= NOT \G17|ram~333_combout\;
\G17|ALT_INV_ram~329_combout\ <= NOT \G17|ram~329_combout\;
\G17|ALT_INV_ram~325_combout\ <= NOT \G17|ram~325_combout\;
\G17|ALT_INV_ram~321_combout\ <= NOT \G17|ram~321_combout\;
\G16|ALT_INV_Add0~74_sumout\ <= NOT \G16|Add0~74_sumout\;
\G16|ALT_INV_Add0~70_sumout\ <= NOT \G16|Add0~70_sumout\;
\G17|ALT_INV_ram~317_combout\ <= NOT \G17|ram~317_combout\;
\G16|ALT_INV_Add0~66_sumout\ <= NOT \G16|Add0~66_sumout\;
\G16|ALT_INV_Add0~62_sumout\ <= NOT \G16|Add0~62_sumout\;
\G17|ALT_INV_ram~313_combout\ <= NOT \G17|ram~313_combout\;
\G17|ALT_INV_ram~309_combout\ <= NOT \G17|ram~309_combout\;
\G17|ALT_INV_ram~305_combout\ <= NOT \G17|ram~305_combout\;
\G16|ALT_INV_Add0~58_sumout\ <= NOT \G16|Add0~58_sumout\;
\G16|ALT_INV_Add0~54_sumout\ <= NOT \G16|Add0~54_sumout\;
\G16|ALT_INV_Add0~50_sumout\ <= NOT \G16|Add0~50_sumout\;
\G16|ALT_INV_Add0~46_sumout\ <= NOT \G16|Add0~46_sumout\;
\G16|ALT_INV_Add0~42_sumout\ <= NOT \G16|Add0~42_sumout\;
\G16|ALT_INV_Add0~38_sumout\ <= NOT \G16|Add0~38_sumout\;
\G16|ALT_INV_Add0~34_sumout\ <= NOT \G16|Add0~34_sumout\;
\G16|ALT_INV_Add0~30_sumout\ <= NOT \G16|Add0~30_sumout\;
\G16|ALT_INV_Add0~26_sumout\ <= NOT \G16|Add0~26_sumout\;
\G16|ALT_INV_Add0~22_sumout\ <= NOT \G16|Add0~22_sumout\;
\G16|ALT_INV_Add0~18_sumout\ <= NOT \G16|Add0~18_sumout\;
\G16|ALT_INV_Add1~76_sumout\ <= NOT \G16|Add1~76_sumout\;
\G16|ALT_INV_Add1~72_sumout\ <= NOT \G16|Add1~72_sumout\;
\G16|ALT_INV_Add1~68_sumout\ <= NOT \G16|Add1~68_sumout\;
\G16|ALT_INV_Add1~64_sumout\ <= NOT \G16|Add1~64_sumout\;
\G16|ALT_INV_Add1~60_sumout\ <= NOT \G16|Add1~60_sumout\;
\G16|ALT_INV_Add1~56_sumout\ <= NOT \G16|Add1~56_sumout\;
\G16|ALT_INV_Add1~52_sumout\ <= NOT \G16|Add1~52_sumout\;
\G16|ALT_INV_Add1~48_sumout\ <= NOT \G16|Add1~48_sumout\;
\G16|ALT_INV_Add1~44_sumout\ <= NOT \G16|Add1~44_sumout\;
\G16|ALT_INV_Add1~40_sumout\ <= NOT \G16|Add1~40_sumout\;
\G16|ALT_INV_Add1~36_sumout\ <= NOT \G16|Add1~36_sumout\;
\G16|ALT_INV_Add1~32_sumout\ <= NOT \G16|Add1~32_sumout\;
\G16|ALT_INV_Add1~28_sumout\ <= NOT \G16|Add1~28_sumout\;
\G16|ALT_INV_Add1~24_sumout\ <= NOT \G16|Add1~24_sumout\;
\G16|ALT_INV_Add1~20_sumout\ <= NOT \G16|Add1~20_sumout\;
\G17|ALT_INV_ram~301_combout\ <= NOT \G17|ram~301_combout\;
\G17|ALT_INV_ram~297_combout\ <= NOT \G17|ram~297_combout\;
\G17|ALT_INV_ram~293_combout\ <= NOT \G17|ram~293_combout\;
\G17|ALT_INV_ram~289_combout\ <= NOT \G17|ram~289_combout\;
\G17|ALT_INV_ram~285_combout\ <= NOT \G17|ram~285_combout\;
\G17|ALT_INV_ram~281_combout\ <= NOT \G17|ram~281_combout\;
\G16|ALT_INV_Add1~16_sumout\ <= NOT \G16|Add1~16_sumout\;
\G16|ALT_INV_Add0~14_sumout\ <= NOT \G16|Add0~14_sumout\;
\G17|ALT_INV_ram~276_combout\ <= NOT \G17|ram~276_combout\;
\G17|ALT_INV_ram~272_combout\ <= NOT \G17|ram~272_combout\;

-- Location: IOOBUF_X70_Y0_N36
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

-- Location: IOOBUF_X78_Y81_N53
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

-- Location: IOOBUF_X74_Y81_N59
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

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X70_Y81_N19
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

-- Location: IOOBUF_X72_Y81_N36
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

-- Location: IOOBUF_X70_Y0_N53
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

-- Location: IOOBUF_X74_Y81_N42
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

-- Location: IOOBUF_X62_Y81_N19
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

-- Location: IOOBUF_X72_Y81_N19
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

-- Location: IOOBUF_X72_Y81_N53
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

-- Location: IOOBUF_X66_Y81_N59
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

-- Location: IOOBUF_X74_Y81_N76
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

-- Location: IOOBUF_X72_Y81_N2
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

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X89_Y8_N22
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X82_Y81_N59
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

-- Location: IOOBUF_X78_Y81_N2
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

-- Location: IOOBUF_X89_Y9_N39
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

-- Location: IOOBUF_X89_Y6_N39
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

-- Location: IOOBUF_X4_Y0_N36
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X89_Y9_N5
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

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X72_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X89_Y9_N22
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

-- Location: IOOBUF_X62_Y0_N36
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

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X76_Y81_N36
\SaidaRegA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[0]~28_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(0));

-- Location: IOOBUF_X40_Y0_N19
\SaidaRegA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[1]~15_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(1));

-- Location: IOOBUF_X66_Y0_N42
\SaidaRegA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[2]~19_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(2));

-- Location: IOOBUF_X86_Y81_N2
\SaidaRegA_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[3]~22_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(3));

-- Location: IOOBUF_X54_Y81_N36
\SaidaRegA_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[4]~25_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(4));

-- Location: IOOBUF_X68_Y0_N19
\SaidaRegA_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[5]~30_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(5));

-- Location: IOOBUF_X80_Y81_N19
\SaidaRegA_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[6]~32_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(6));

-- Location: IOOBUF_X50_Y0_N42
\SaidaRegA_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[7]~34_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(7));

-- Location: IOOBUF_X70_Y81_N53
\SaidaRegA_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[8]~36_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(8));

-- Location: IOOBUF_X82_Y81_N93
\SaidaRegA_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[9]~38_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(9));

-- Location: IOOBUF_X56_Y0_N2
\SaidaRegA_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[10]~40_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(10));

-- Location: IOOBUF_X54_Y0_N2
\SaidaRegA_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[11]~42_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(11));

-- Location: IOOBUF_X52_Y81_N53
\SaidaRegA_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[12]~44_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(12));

-- Location: IOOBUF_X78_Y81_N19
\SaidaRegA_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[13]~46_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(13));

-- Location: IOOBUF_X84_Y81_N19
\SaidaRegA_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[14]~48_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(14));

-- Location: IOOBUF_X66_Y81_N93
\SaidaRegA_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[15]~50_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(15));

-- Location: IOOBUF_X76_Y81_N53
\SaidaRegB_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[0]~28_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(0));

-- Location: IOOBUF_X40_Y0_N53
\SaidaRegB_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[1]~15_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(1));

-- Location: IOOBUF_X64_Y0_N19
\SaidaRegB_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[2]~19_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(2));

-- Location: IOOBUF_X84_Y81_N53
\SaidaRegB_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[3]~22_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(3));

-- Location: IOOBUF_X52_Y81_N2
\SaidaRegB_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[4]~25_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(4));

-- Location: IOOBUF_X68_Y0_N36
\SaidaRegB_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[5]~30_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(5));

-- Location: IOOBUF_X80_Y81_N36
\SaidaRegB_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[6]~32_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(6));

-- Location: IOOBUF_X52_Y0_N53
\SaidaRegB_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[7]~34_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(7));

-- Location: IOOBUF_X84_Y81_N2
\SaidaRegB_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[8]~36_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(8));

-- Location: IOOBUF_X82_Y81_N76
\SaidaRegB_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[9]~38_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(9));

-- Location: IOOBUF_X56_Y0_N36
\SaidaRegB_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[10]~40_combout\,
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
	i => \G18|SAIDA[11]~42_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(11));

-- Location: IOOBUF_X50_Y81_N93
\SaidaRegB_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[12]~44_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(12));

-- Location: IOOBUF_X58_Y81_N76
\SaidaRegB_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[13]~46_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(13));

-- Location: IOOBUF_X86_Y81_N19
\SaidaRegB_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[14]~48_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(14));

-- Location: IOOBUF_X66_Y81_N42
\SaidaRegB_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[15]~50_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(15));

-- Location: IOOBUF_X66_Y0_N76
\multiplexador_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|SAIDA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X54_Y0_N19
\multiplexador_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X56_Y0_N53
\multiplexador_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X89_Y4_N62
\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(0));

-- Location: IOOBUF_X58_Y0_N93
\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(1));

-- Location: IOOBUF_X36_Y0_N36
\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(2));

-- Location: IOOBUF_X89_Y4_N45
\Instruction_to_Control_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(0));

-- Location: IOOBUF_X58_Y0_N76
\Instruction_to_Control_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(1));

-- Location: IOOBUF_X32_Y0_N2
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

-- Location: IOOBUF_X26_Y81_N59
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

-- Location: IOOBUF_X62_Y81_N36
\Instruction_to_register1_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(0));

-- Location: IOOBUF_X62_Y81_N2
\Instruction_to_register1_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(1));

-- Location: IOOBUF_X36_Y81_N53
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

-- Location: IOOBUF_X52_Y0_N36
\Instruction_to_register2_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(0));

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X38_Y81_N53
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

-- Location: IOOBUF_X89_Y8_N56
\Instruction_to_controlULA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|funct[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(0));

-- Location: IOOBUF_X2_Y0_N59
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

-- Location: IOOBUF_X89_Y4_N79
\Instruction_to_controlULA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|funct[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(2));

-- Location: IOOBUF_X89_Y36_N22
\Instruction_to_extensorDeSinal_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(0));

-- Location: IOOBUF_X56_Y81_N36
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

-- Location: IOOBUF_X89_Y4_N96
\Instruction_to_extensorDeSinal_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(2));

-- Location: IOOBUF_X70_Y81_N36
\Instruction_to_extensorDeSinal_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(3));

-- Location: IOOBUF_X86_Y81_N36
\Instruction_to_extensorDeSinal_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(4));

-- Location: IOOBUF_X54_Y81_N53
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

-- Location: IOOBUF_X30_Y0_N19
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

-- Location: IOOBUF_X28_Y81_N36
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

-- Location: IOOBUF_X4_Y0_N53
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

-- Location: IOOBUF_X28_Y0_N19
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

-- Location: IOOBUF_X2_Y0_N76
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

-- Location: IOOBUF_X56_Y81_N19
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

-- Location: IOOBUF_X28_Y81_N2
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

-- Location: IOOBUF_X28_Y81_N53
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

-- Location: IOOBUF_X50_Y81_N59
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

-- Location: IOOBUF_X60_Y81_N36
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

-- Location: IOOBUF_X4_Y0_N2
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

-- Location: IOOBUF_X58_Y81_N93
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

-- Location: IOOBUF_X76_Y81_N19
\Data_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[0]~28_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X38_Y0_N2
\Data_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[1]~15_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X64_Y0_N36
\Data_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[2]~19_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X84_Y81_N36
\Data_to_writeRegister_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[3]~22_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(3));

-- Location: IOOBUF_X52_Y81_N19
\Data_to_writeRegister_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[4]~25_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(4));

-- Location: IOOBUF_X68_Y0_N53
\Data_to_writeRegister_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[5]~30_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(5));

-- Location: IOOBUF_X88_Y81_N54
\Data_to_writeRegister_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[6]~32_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(6));

-- Location: IOOBUF_X50_Y0_N76
\Data_to_writeRegister_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[7]~34_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(7));

-- Location: IOOBUF_X70_Y81_N2
\Data_to_writeRegister_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[8]~36_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(8));

-- Location: IOOBUF_X80_Y81_N2
\Data_to_writeRegister_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[9]~38_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(9));

-- Location: IOOBUF_X50_Y0_N93
\Data_to_writeRegister_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[10]~40_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(10));

-- Location: IOOBUF_X62_Y0_N2
\Data_to_writeRegister_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[11]~42_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(11));

-- Location: IOOBUF_X64_Y81_N53
\Data_to_writeRegister_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[12]~44_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(12));

-- Location: IOOBUF_X58_Y81_N42
\Data_to_writeRegister_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[13]~46_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(13));

-- Location: IOOBUF_X86_Y81_N53
\Data_to_writeRegister_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[14]~48_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(14));

-- Location: IOOBUF_X68_Y81_N53
\Data_to_writeRegister_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[15]~50_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(15));

-- Location: IOOBUF_X68_Y81_N2
\Saida_mult_to_mult_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(0));

-- Location: IOOBUF_X66_Y81_N76
\Saida_mult_to_mult_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(1));

-- Location: IOOBUF_X64_Y81_N2
\Saida_mult_to_mult_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(2));

-- Location: IOOBUF_X68_Y81_N36
\Saida_mult_to_mult_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(3));

-- Location: IOOBUF_X6_Y0_N36
\Saida_mult_to_mult_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(4));

-- Location: IOOBUF_X56_Y0_N19
\Saida_mult_to_mult_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(5));

-- Location: IOOBUF_X52_Y0_N2
\Saida_mult_to_mult_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(6));

-- Location: IOOBUF_X64_Y81_N19
\Saida_mult_to_mult_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(7));

-- Location: IOOBUF_X68_Y81_N19
\Saida_mult_to_mult_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(8));

-- Location: IOOBUF_X89_Y38_N56
\Saida_mult_to_mult_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(9));

-- Location: IOOBUF_X62_Y0_N19
\Saida_mult_to_mult_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(10));

-- Location: IOOBUF_X89_Y38_N22
\Saida_mult_to_mult_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(11));

-- Location: IOOBUF_X66_Y0_N59
\Saida_mult_to_mult_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(12));

-- Location: IOOBUF_X89_Y36_N5
\Saida_mult_to_mult_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(13));

-- Location: IOOBUF_X64_Y81_N36
\Saida_mult_to_mult_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(14));

-- Location: IOOBUF_X58_Y0_N42
\Saida_mult_to_mult_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(15));

-- Location: IOOBUF_X76_Y81_N2
\Saida_to_PC_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(0));

-- Location: IOOBUF_X62_Y0_N53
\Saida_to_PC_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(1));

-- Location: IOOBUF_X54_Y0_N53
\Saida_to_PC_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(2));

-- Location: IOOBUF_X40_Y0_N2
\Saida_to_PC_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(3));

-- Location: IOOBUF_X34_Y0_N59
\Saida_to_PC_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(4));

-- Location: IOOBUF_X38_Y0_N53
\Saida_to_PC_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(5));

-- Location: IOOBUF_X50_Y0_N59
\Saida_to_PC_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(6));

-- Location: IOOBUF_X36_Y0_N19
\Saida_to_PC_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(7));

-- Location: IOOBUF_X89_Y37_N5
\Saida_to_PC_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(8));

-- Location: IOOBUF_X8_Y0_N53
\Saida_to_PC_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(9));

-- Location: IOOBUF_X72_Y0_N36
\Saida_to_PC_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(10));

-- Location: IOOBUF_X52_Y0_N19
\Saida_to_PC_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(11));

-- Location: IOOBUF_X89_Y9_N56
\Saida_to_PC_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(12));

-- Location: IOOBUF_X74_Y81_N93
\Saida_to_PC_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|ALT_INV_SAIDA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(13));

-- Location: IOOBUF_X40_Y81_N36
\Saida_to_PC_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(14));

-- Location: IOOBUF_X89_Y6_N22
\Saida_to_PC_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(15));

-- Location: IOOBUF_X89_Y35_N96
\Saida_adress_to_RAM_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux15~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(0));

-- Location: IOOBUF_X89_Y35_N79
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

-- Location: IOOBUF_X89_Y35_N45
\Saida_adress_to_RAM_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux13~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(2));

-- Location: IOOBUF_X89_Y36_N56
\Saida_adress_to_RAM_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux12~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(3));

-- Location: IOOBUF_X89_Y36_N39
\Saida_adress_to_RAM_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux11~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(4));

-- Location: IOOBUF_X89_Y37_N39
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

-- Location: IOOBUF_X89_Y6_N56
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

-- Location: IOOBUF_X89_Y6_N5
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

-- Location: IOOBUF_X89_Y37_N22
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

-- Location: IOOBUF_X88_Y81_N37
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

-- Location: IOOBUF_X82_Y81_N42
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

-- Location: IOOBUF_X88_Y81_N3
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

-- Location: IOOBUF_X60_Y81_N53
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X89_Y37_N56
\Saida_adress_to_RAM_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(14));

-- Location: IOOBUF_X78_Y81_N36
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

-- Location: IOOBUF_X58_Y0_N59
\Flag_regdest_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|regdest~combout\,
	devoe => ww_devoe,
	o => ww_Flag_regdest_OUT);

-- Location: IOOBUF_X80_Y81_N53
\Flag_origialu_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|origalu\(0),
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(0));

-- Location: IOOBUF_X38_Y0_N19
\Flag_origialu_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|origalu\(1),
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(1));

-- Location: IOOBUF_X64_Y0_N2
\Flag_origialu_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|jump~combout\,
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(2));

-- Location: IOOBUF_X36_Y81_N19
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

-- Location: IOOBUF_X60_Y0_N2
\Flag_memparareg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|memparareg~combout\,
	devoe => ww_devoe,
	o => ww_Flag_memparareg_OUT);

-- Location: IOOBUF_X89_Y38_N5
\Flag_escrevereg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|aluSRC~combout\,
	devoe => ww_devoe,
	o => ww_Flag_escrevereg_OUT);

-- Location: IOOBUF_X60_Y0_N53
\Flag_lemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|memparareg~combout\,
	devoe => ww_devoe,
	o => ww_Flag_lemem_OUT);

-- Location: IOOBUF_X38_Y0_N36
\Flag_escrevemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|origalu\(1),
	devoe => ww_devoe,
	o => ww_Flag_escrevemem_OUT);

-- Location: IOOBUF_X64_Y0_N53
\Flag_branch_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|jump~combout\,
	devoe => ww_devoe,
	o => ww_Flag_branch_OUT);

-- Location: IOOBUF_X89_Y38_N39
\Flag_aluSRC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|aluSRC~combout\,
	devoe => ww_devoe,
	o => ww_Flag_aluSRC_OUT);

-- Location: IOOBUF_X66_Y0_N93
\Flag_jump_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|jump~combout\,
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

-- Location: LABCELL_X75_Y20_N0
\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(0),
	datac => \G1|ALT_INV_pout\(1),
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

-- Location: FF_X75_Y20_N1
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

-- Location: LABCELL_X74_Y21_N27
\G13|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[1]~1_combout\ = ( \G5|jump~combout\ & ( \G2|saida\(1) ) ) # ( !\G5|jump~combout\ & ( \G2|saida\(1) & ( !\Clock_Sistema~input_o\ ) ) ) # ( \G5|jump~combout\ & ( !\G2|saida\(1) ) ) # ( !\G5|jump~combout\ & ( !\G2|saida\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G5|ALT_INV_jump~combout\,
	dataf => \G2|ALT_INV_saida\(1),
	combout => \G13|SAIDA[1]~1_combout\);

-- Location: LABCELL_X74_Y21_N39
\G1|pout[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[1]~1_combout\ = ( !\G13|SAIDA[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA[1]~1_combout\,
	combout => \G1|pout[1]~1_combout\);

-- Location: FF_X83_Y21_N56
\G1|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(1));

-- Location: LABCELL_X75_Y20_N3
\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

-- Location: FF_X75_Y20_N5
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

-- Location: LABCELL_X74_Y21_N54
\G13|SAIDA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[2]~2_combout\ = ( \G2|saida\(2) & ( (!\Clock_Sistema~input_o\) # (\G5|jump~combout\) ) ) # ( !\G2|saida\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_jump~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G2|ALT_INV_saida\(2),
	combout => \G13|SAIDA[2]~2_combout\);

-- Location: LABCELL_X74_Y21_N57
\G1|pout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[2]~2_combout\ = ( !\G13|SAIDA[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA[2]~2_combout\,
	combout => \G1|pout[2]~2_combout\);

-- Location: FF_X83_Y21_N38
\G1|pout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(2));

-- Location: LABCELL_X75_Y20_N6
\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(3),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);

-- Location: FF_X75_Y20_N8
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

-- Location: LABCELL_X74_Y24_N48
\G13|SAIDA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[3]~3_combout\ = (!\Clock_Sistema~input_o\) # ((!\G2|saida\(3)) # (\G5|jump~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_jump~combout\,
	datac => \G2|ALT_INV_saida\(3),
	combout => \G13|SAIDA[3]~3_combout\);

-- Location: LABCELL_X77_Y21_N15
\G1|pout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[3]~3_combout\ = ( !\G13|SAIDA[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G13|ALT_INV_SAIDA[3]~3_combout\,
	combout => \G1|pout[3]~3_combout\);

-- Location: FF_X83_Y21_N8
\G1|pout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(3));

-- Location: LABCELL_X75_Y20_N9
\G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~13_sumout\ = SUM(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))
-- \G2|Add0~14\ = CARRY(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(4),
	cin => \G2|Add0~10\,
	sumout => \G2|Add0~13_sumout\,
	cout => \G2|Add0~14\);

-- Location: FF_X75_Y20_N10
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

-- Location: LABCELL_X74_Y24_N21
\G13|SAIDA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[4]~4_combout\ = (!\Clock_Sistema~input_o\) # ((!\G2|saida\(4)) # (\G5|jump~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_jump~combout\,
	datad => \G2|ALT_INV_saida\(4),
	combout => \G13|SAIDA[4]~4_combout\);

-- Location: MLABCELL_X82_Y21_N0
\G1|pout[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[4]~4_combout\ = !\G13|SAIDA[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA[4]~4_combout\,
	combout => \G1|pout[4]~4_combout\);

-- Location: FF_X82_Y21_N2
\G1|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(4));

-- Location: LABCELL_X75_Y20_N12
\G2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~17_sumout\ = SUM(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))
-- \G2|Add0~18\ = CARRY(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(5),
	cin => \G2|Add0~14\,
	sumout => \G2|Add0~17_sumout\,
	cout => \G2|Add0~18\);

-- Location: FF_X75_Y20_N13
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

-- Location: LABCELL_X74_Y24_N42
\G13|SAIDA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[5]~5_combout\ = ( \G2|saida\(5) & ( (!\Clock_Sistema~input_o\) # (\G5|jump~combout\) ) ) # ( !\G2|saida\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_jump~combout\,
	dataf => \G2|ALT_INV_saida\(5),
	combout => \G13|SAIDA[5]~5_combout\);

-- Location: LABCELL_X77_Y21_N45
\G1|pout[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[5]~5_combout\ = ( !\G13|SAIDA[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G13|ALT_INV_SAIDA[5]~5_combout\,
	combout => \G1|pout[5]~5_combout\);

-- Location: FF_X82_Y21_N35
\G1|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(5));

-- Location: LABCELL_X75_Y20_N15
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

-- Location: FF_X75_Y20_N17
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

-- Location: LABCELL_X74_Y24_N51
\G13|SAIDA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[6]~6_combout\ = (!\Clock_Sistema~input_o\) # ((!\G2|saida\(6)) # (\G5|jump~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_jump~combout\,
	datad => \G2|ALT_INV_saida\(6),
	combout => \G13|SAIDA[6]~6_combout\);

-- Location: LABCELL_X81_Y21_N27
\G1|pout[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[6]~6_combout\ = ( !\G13|SAIDA[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA[6]~6_combout\,
	combout => \G1|pout[6]~6_combout\);

-- Location: FF_X82_Y21_N26
\G1|pout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[6]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(6));

-- Location: LABCELL_X75_Y20_N18
\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(7),
	cin => \G2|Add0~22\,
	sumout => \G2|Add0~25_sumout\,
	cout => \G2|Add0~26\);

-- Location: FF_X75_Y20_N19
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

-- Location: LABCELL_X74_Y24_N39
\G13|SAIDA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[7]~7_combout\ = (!\Clock_Sistema~input_o\) # ((!\G2|saida\(7)) # (\G5|jump~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_jump~combout\,
	datad => \G2|ALT_INV_saida\(7),
	combout => \G13|SAIDA[7]~7_combout\);

-- Location: MLABCELL_X82_Y21_N24
\G1|pout[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[7]~7_combout\ = ( !\G13|SAIDA[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA[7]~7_combout\,
	combout => \G1|pout[7]~7_combout\);

-- Location: FF_X82_Y21_N17
\G1|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(7));

-- Location: LABCELL_X75_Y20_N21
\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(8),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);

-- Location: FF_X75_Y20_N23
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

-- Location: LABCELL_X74_Y24_N36
\G13|SAIDA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[8]~8_combout\ = (!\Clock_Sistema~input_o\) # ((!\G2|saida\(8)) # (\G5|jump~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_jump~combout\,
	datad => \G2|ALT_INV_saida\(8),
	combout => \G13|SAIDA[8]~8_combout\);

-- Location: MLABCELL_X82_Y21_N36
\G1|pout[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[8]~8_combout\ = !\G13|SAIDA[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA[8]~8_combout\,
	combout => \G1|pout[8]~8_combout\);

-- Location: FF_X82_Y21_N59
\G1|pout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(8));

-- Location: LABCELL_X75_Y20_N24
\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

-- Location: FF_X75_Y20_N25
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

-- Location: LABCELL_X74_Y21_N51
\G13|SAIDA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[9]~9_combout\ = ( \G2|saida\(9) & ( (!\Clock_Sistema~input_o\) # (\G5|jump~combout\) ) ) # ( !\G2|saida\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_jump~combout\,
	dataf => \G2|ALT_INV_saida\(9),
	combout => \G13|SAIDA[9]~9_combout\);

-- Location: LABCELL_X74_Y21_N48
\G1|pout[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[9]~9_combout\ = ( !\G13|SAIDA[9]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA[9]~9_combout\,
	combout => \G1|pout[9]~9_combout\);

-- Location: FF_X82_Y21_N8
\G1|pout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[9]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(9));

-- Location: LABCELL_X75_Y20_N27
\G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~37_sumout\ = SUM(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))
-- \G2|Add0~38\ = CARRY(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(10),
	cin => \G2|Add0~34\,
	sumout => \G2|Add0~37_sumout\,
	cout => \G2|Add0~38\);

-- Location: FF_X75_Y20_N28
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

-- Location: LABCELL_X74_Y24_N30
\G13|SAIDA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[10]~10_combout\ = ( \Clock_Sistema~input_o\ & ( \G2|saida\(10) & ( \G5|jump~combout\ ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G2|saida\(10) ) ) # ( \Clock_Sistema~input_o\ & ( !\G2|saida\(10) ) ) # ( !\Clock_Sistema~input_o\ & ( !\G2|saida\(10) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_jump~combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G2|ALT_INV_saida\(10),
	combout => \G13|SAIDA[10]~10_combout\);

-- Location: LABCELL_X81_Y21_N6
\G1|pout[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[10]~10_combout\ = ( !\G13|SAIDA[10]~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G13|ALT_INV_SAIDA[10]~10_combout\,
	combout => \G1|pout[10]~10_combout\);

-- Location: FF_X82_Y21_N20
\G1|pout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[10]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(10));

-- Location: LABCELL_X75_Y20_N30
\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

-- Location: FF_X75_Y20_N31
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

-- Location: LABCELL_X74_Y21_N6
\G13|SAIDA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[11]~11_combout\ = ( \G5|jump~combout\ ) # ( !\G5|jump~combout\ & ( (!\G2|saida\(11)) # (!\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111111111111111111111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(11),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G5|ALT_INV_jump~combout\,
	combout => \G13|SAIDA[11]~11_combout\);

-- Location: MLABCELL_X82_Y21_N3
\G1|pout[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[11]~11_combout\ = !\G13|SAIDA[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA[11]~11_combout\,
	combout => \G1|pout[11]~11_combout\);

-- Location: FF_X82_Y21_N5
\G1|pout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(11));

-- Location: LABCELL_X75_Y20_N33
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

-- Location: FF_X75_Y20_N35
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

-- Location: LABCELL_X74_Y21_N15
\G13|SAIDA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[12]~12_combout\ = ( \G5|jump~combout\ & ( \G2|saida\(12) ) ) # ( !\G5|jump~combout\ & ( \G2|saida\(12) & ( !\Clock_Sistema~input_o\ ) ) ) # ( \G5|jump~combout\ & ( !\G2|saida\(12) ) ) # ( !\G5|jump~combout\ & ( !\G2|saida\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G5|ALT_INV_jump~combout\,
	dataf => \G2|ALT_INV_saida\(12),
	combout => \G13|SAIDA[12]~12_combout\);

-- Location: MLABCELL_X82_Y21_N9
\G1|pout[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[12]~12_combout\ = !\G13|SAIDA[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA[12]~12_combout\,
	combout => \G1|pout[12]~12_combout\);

-- Location: FF_X82_Y21_N11
\G1|pout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(12));

-- Location: LABCELL_X75_Y20_N36
\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(13),
	cin => \G2|Add0~46\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

-- Location: FF_X75_Y20_N37
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

-- Location: LABCELL_X74_Y24_N18
\G13|SAIDA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[13]~13_combout\ = (!\Clock_Sistema~input_o\) # ((!\G2|saida\(13)) # (\G5|jump~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_jump~combout\,
	datad => \G2|ALT_INV_saida\(13),
	combout => \G13|SAIDA[13]~13_combout\);

-- Location: LABCELL_X77_Y21_N51
\G1|pout[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[13]~13_combout\ = ( !\G13|SAIDA[13]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA[13]~13_combout\,
	combout => \G1|pout[13]~13_combout\);

-- Location: FF_X82_Y21_N44
\G1|pout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[13]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(13));

-- Location: LABCELL_X75_Y20_N39
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

-- Location: FF_X75_Y20_N41
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

-- Location: FF_X74_Y21_N44
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

-- Location: LABCELL_X74_Y21_N42
\G13|SAIDA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[14]~14_combout\ = ( \G2|saida\(14) & ( \G3|resshift\(14) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(14) & ( \G3|resshift\(14) & ( (\G5|jump~combout\ & \Clock_Sistema~input_o\) ) ) ) # ( \G2|saida\(14) & ( !\G3|resshift\(14) & ( 
-- (!\G5|jump~combout\ & \Clock_Sistema~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000011000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_jump~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G2|ALT_INV_saida\(14),
	dataf => \G3|ALT_INV_resshift\(14),
	combout => \G13|SAIDA[14]~14_combout\);

-- Location: FF_X82_Y21_N41
\G1|pout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA[14]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(14));

-- Location: LABCELL_X75_Y20_N42
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

-- Location: FF_X75_Y20_N43
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

-- Location: FF_X81_Y20_N41
\G3|resshift[15]\ : dffeas
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
	q => \G3|resshift\(15));

-- Location: LABCELL_X81_Y20_N39
\G13|SAIDA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[15]~15_combout\ = ( \G2|saida\(15) & ( \G3|resshift\(15) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(15) & ( \G3|resshift\(15) & ( (\G5|jump~combout\ & \Clock_Sistema~input_o\) ) ) ) # ( \G2|saida\(15) & ( !\G3|resshift\(15) & ( 
-- (!\G5|jump~combout\ & \Clock_Sistema~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000011000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_jump~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G2|ALT_INV_saida\(15),
	dataf => \G3|ALT_INV_resshift\(15),
	combout => \G13|SAIDA[15]~15_combout\);

-- Location: FF_X82_Y21_N38
\G1|pout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA[15]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(15));

-- Location: MLABCELL_X82_Y21_N54
\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( !\G1|pout\(12) & ( !\G1|pout\(10) & ( (!\G1|pout\(15) & (!\G1|pout\(13) & (!\G1|pout\(11) & !\G1|pout\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(15),
	datab => \G1|ALT_INV_pout\(13),
	datac => \G1|ALT_INV_pout\(11),
	datad => \G1|ALT_INV_pout\(14),
	datae => \G1|ALT_INV_pout\(12),
	dataf => \G1|ALT_INV_pout\(10),
	combout => \G4|Mux0~1_combout\);

-- Location: MLABCELL_X82_Y21_N30
\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = ( !\G1|pout\(4) & ( !\G1|pout\(7) & ( (!\G1|pout\(5) & (!\G1|pout\(9) & (!\G1|pout\(6) & !\G1|pout\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(5),
	datab => \G1|ALT_INV_pout\(9),
	datac => \G1|ALT_INV_pout\(6),
	datad => \G1|ALT_INV_pout\(8),
	datae => \G1|ALT_INV_pout\(4),
	dataf => \G1|ALT_INV_pout\(7),
	combout => \G4|Mux0~0_combout\);

-- Location: LABCELL_X83_Y21_N42
\G4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux5~0_combout\ = ( \G1|pout\(1) & ( \G4|Mux0~0_combout\ & ( (\G4|Mux0~1_combout\ & (\G1|pout\(0) & (!\G1|pout\(2) & !\G1|pout\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~1_combout\,
	datab => \G1|ALT_INV_pout\(0),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G1|ALT_INV_pout\(1),
	dataf => \G4|ALT_INV_Mux0~0_combout\,
	combout => \G4|Mux5~0_combout\);

-- Location: LABCELL_X83_Y20_N51
\G4|rs[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[1]~0_combout\ = ( \Clock_Sistema~input_o\ & ( \G4|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|rs[1]~0_combout\);

-- Location: LABCELL_X83_Y21_N39
\G4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux6~0_combout\ = ( \G1|pout\(2) & ( \G4|Mux0~0_combout\ & ( (\G4|Mux0~1_combout\ & (!\G1|pout\(3) & ((!\G1|pout\(0)) # (!\G1|pout\(1))))) ) ) ) # ( !\G1|pout\(2) & ( \G4|Mux0~0_combout\ & ( (\G4|Mux0~1_combout\ & (!\G1|pout\(3) & ((\G1|pout\(1)) # 
-- (\G1|pout\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100010001000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~1_combout\,
	datab => \G1|ALT_INV_pout\(3),
	datac => \G1|ALT_INV_pout\(0),
	datad => \G1|ALT_INV_pout\(1),
	datae => \G1|ALT_INV_pout\(2),
	dataf => \G4|ALT_INV_Mux0~0_combout\,
	combout => \G4|Mux6~0_combout\);

-- Location: LABCELL_X83_Y20_N54
\G4|op[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|op[0]~0_combout\ = ( \Clock_Sistema~input_o\ & ( \G4|Mux6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G4|op[0]~0_combout\);

-- Location: LABCELL_X83_Y20_N36
\G5|origalu[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[2]~0_combout\ = ( \G4|op[0]~0_combout\ & ( !\G4|rs[1]~0_combout\ ) ) # ( !\G4|op[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rs[1]~0_combout\,
	dataf => \G4|ALT_INV_op[0]~0_combout\,
	combout => \G5|origalu[2]~0_combout\);

-- Location: LABCELL_X83_Y21_N9
\G5|regdest~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|regdest~0_combout\ = (\Clock_Sistema~input_o\ & ((!\G4|Mux6~0_combout\) # (!\G4|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux5~0_combout\,
	combout => \G5|regdest~0_combout\);

-- Location: LABCELL_X83_Y20_N15
\G5|jump\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|jump~combout\ = ( \G5|regdest~0_combout\ & ( \G5|jump~combout\ & ( !\G5|origalu[2]~0_combout\ ) ) ) # ( !\G5|regdest~0_combout\ & ( \G5|jump~combout\ ) ) # ( \G5|regdest~0_combout\ & ( !\G5|jump~combout\ & ( !\G5|origalu[2]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_origalu[2]~0_combout\,
	datae => \G5|ALT_INV_regdest~0_combout\,
	dataf => \G5|ALT_INV_jump~combout\,
	combout => \G5|jump~combout\);

-- Location: LABCELL_X74_Y24_N45
\G13|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[0]~0_combout\ = ( \G5|jump~combout\ ) # ( !\G5|jump~combout\ & ( (!\Clock_Sistema~input_o\) # (!\G2|saida\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G2|ALT_INV_saida\(0),
	dataf => \G5|ALT_INV_jump~combout\,
	combout => \G13|SAIDA[0]~0_combout\);

-- Location: LABCELL_X77_Y23_N48
\G1|pout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[0]~0_combout\ = ( !\G13|SAIDA[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA[0]~0_combout\,
	combout => \G1|pout[0]~0_combout\);

-- Location: FF_X82_Y21_N50
\G1|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G1|pout[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(0));

-- Location: LABCELL_X75_Y8_N39
\G2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|saida[0]~0_combout\ = ( !\G1|pout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|ALT_INV_pout\(0),
	combout => \G2|saida[0]~0_combout\);

-- Location: FF_X75_Y8_N41
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

-- Location: LABCELL_X85_Y21_N0
\G5|aluSRC\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|aluSRC~combout\ = ( \G5|regdest~0_combout\ & ( !\G4|rs[1]~0_combout\ ) ) # ( !\G5|regdest~0_combout\ & ( \G5|aluSRC~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rs[1]~0_combout\,
	datad => \G5|ALT_INV_aluSRC~combout\,
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|aluSRC~combout\);

-- Location: LABCELL_X83_Y20_N33
\G5|origalu[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[1]~1_combout\ = ( \G4|rs[1]~0_combout\ & ( \G4|op[0]~0_combout\ ) ) # ( !\G4|rs[1]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_op[0]~0_combout\,
	dataf => \G4|ALT_INV_rs[1]~0_combout\,
	combout => \G5|origalu[1]~1_combout\);

-- Location: LABCELL_X83_Y21_N3
\G5|origalu[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu\(1) = ( \G5|regdest~0_combout\ & ( !\G5|origalu[1]~1_combout\ ) ) # ( !\G5|regdest~0_combout\ & ( \G5|origalu\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_origalu[1]~1_combout\,
	datad => \G5|ALT_INV_origalu\(1),
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|origalu\(1));

-- Location: FF_X83_Y21_N5
\G15|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|origalu\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(4));

-- Location: FF_X83_Y21_N17
\G15|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G5|jump~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(5));

-- Location: LABCELL_X83_Y21_N48
\G5|origalu[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu\(0) = ( \G5|origalu\(0) & ( (!\G5|regdest~0_combout\) # (\G4|Mux6~0_combout\) ) ) # ( !\G5|origalu\(0) & ( (\G4|Mux6~0_combout\ & \G5|regdest~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G5|ALT_INV_regdest~0_combout\,
	dataf => \G5|ALT_INV_origalu\(0),
	combout => \G5|origalu\(0));

-- Location: FF_X83_Y21_N53
\G15|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G5|origalu\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(3));

-- Location: LABCELL_X83_Y20_N24
\G4|rd[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~0_combout\ = ( \Clock_Sistema~input_o\ & ( !\G4|Mux5~0_combout\ & ( !\G4|Mux6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux5~0_combout\,
	combout => \G4|rd[0]~0_combout\);

-- Location: MLABCELL_X82_Y21_N12
\G4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux2~0_combout\ = ( \G1|pout\(2) & ( \G1|pout\(0) & ( (\G4|Mux0~1_combout\ & (\G4|Mux0~0_combout\ & (!\G1|pout\(3) & !\G1|pout\(1)))) ) ) ) # ( !\G1|pout\(2) & ( \G1|pout\(0) & ( (\G4|Mux0~1_combout\ & (\G4|Mux0~0_combout\ & (!\G1|pout\(3) & 
-- !\G1|pout\(1)))) ) ) ) # ( \G1|pout\(2) & ( !\G1|pout\(0) & ( (\G4|Mux0~1_combout\ & (\G4|Mux0~0_combout\ & (!\G1|pout\(3) & !\G1|pout\(1)))) ) ) ) # ( !\G1|pout\(2) & ( !\G1|pout\(0) & ( (\G4|Mux0~1_combout\ & (\G4|Mux0~0_combout\ & !\G1|pout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~1_combout\,
	datab => \G4|ALT_INV_Mux0~0_combout\,
	datac => \G1|ALT_INV_pout\(3),
	datad => \G1|ALT_INV_pout\(1),
	datae => \G1|ALT_INV_pout\(2),
	dataf => \G1|ALT_INV_pout\(0),
	combout => \G4|Mux2~0_combout\);

-- Location: LABCELL_X81_Y21_N48
\G4|funct[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[0]~0_combout\ = ( \G4|rd[0]~0_combout\ & ( \G4|Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G4|ALT_INV_rd[0]~0_combout\,
	dataf => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G4|funct[0]~0_combout\);

-- Location: FF_X83_Y21_N47
\G15|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|funct[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(0));

-- Location: LABCELL_X83_Y21_N12
\G4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~2_combout\ = (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux0~2_combout\);

-- Location: LABCELL_X83_Y21_N21
\G4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~0_combout\ = (!\G1|pout\(3) & ((!\G1|pout\(2) & (!\G1|pout\(0) & \G1|pout\(1))) # (\G1|pout\(2) & (\G1|pout\(0) & !\G1|pout\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010000000000001001000000000000100100000000000010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	datab => \G1|ALT_INV_pout\(3),
	datac => \G1|ALT_INV_pout\(0),
	datad => \G1|ALT_INV_pout\(1),
	combout => \G4|Mux1~0_combout\);

-- Location: LABCELL_X83_Y21_N54
\G4|funct[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[2]~1_combout\ = ( \G4|Mux1~0_combout\ & ( (\G4|rd[0]~0_combout\ & \G4|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G4|funct[2]~1_combout\);

-- Location: FF_X83_Y21_N20
\G15|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|funct[2]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(2));

-- Location: LABCELL_X83_Y21_N30
\G16|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~1_combout\ = ( \G15|SAIDA\(2) & ( (!\G15|SAIDA\(4) & (!\G15|SAIDA\(5) & (!\G15|SAIDA\(3) & !\G15|SAIDA\(0)))) ) ) # ( !\G15|SAIDA\(2) & ( (!\G15|SAIDA\(4) & (!\G15|SAIDA\(5) & (!\G15|SAIDA\(3) & \G15|SAIDA\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(4),
	datab => \G15|ALT_INV_SAIDA\(5),
	datac => \G15|ALT_INV_SAIDA\(3),
	datad => \G15|ALT_INV_SAIDA\(0),
	dataf => \G15|ALT_INV_SAIDA\(2),
	combout => \G16|Mux1~1_combout\);

-- Location: LABCELL_X83_Y21_N57
\G16|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~0_combout\ = ( !\G15|SAIDA\(2) & ( (!\G15|SAIDA\(3) & (!\G15|SAIDA\(5) & !\G15|SAIDA\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(3),
	datac => \G15|ALT_INV_SAIDA\(5),
	datad => \G15|ALT_INV_SAIDA\(4),
	dataf => \G15|ALT_INV_SAIDA\(2),
	combout => \G16|Mux1~0_combout\);

-- Location: LABCELL_X85_Y21_N3
\G4|tipoi[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[0]~0_combout\ = ( \Clock_Sistema~input_o\ & ( (\G4|Mux2~0_combout\ & ((\G4|Mux6~0_combout\) # (\G4|Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux5~0_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|tipoi[0]~0_combout\);

-- Location: LABCELL_X85_Y21_N6
\G16|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~81_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add1~81_cout\);

-- Location: LABCELL_X85_Y21_N9
\G16|Add1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~16_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G5|aluSRC~combout\ & (!\G18|SAIDA[0]~28_combout\)) # (\G5|aluSRC~combout\ & ((!\G4|tipoi[0]~0_combout\)))) ) + ( \G18|SAIDA[0]~28_combout\ ) + ( \G16|Add1~81_cout\ ))
-- \G16|Add1~17\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G5|aluSRC~combout\ & (!\G18|SAIDA[0]~28_combout\)) # (\G5|aluSRC~combout\ & ((!\G4|tipoi[0]~0_combout\)))) ) + ( \G18|SAIDA[0]~28_combout\ ) + ( \G16|Add1~81_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111110111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_tipoi[0]~0_combout\,
	cin => \G16|Add1~81_cout\,
	sumout => \G16|Add1~16_sumout\,
	cout => \G16|Add1~17\);

-- Location: MLABCELL_X82_Y21_N48
\G16|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~1_combout\ = ( \G4|Mux6~0_combout\ & ( \Clock_Sistema~input_o\ & ( (!\G18|SAIDA[0]~28_combout\ & ((!\G5|aluSRC~combout\) # (!\G4|Mux2~0_combout\))) ) ) ) # ( !\G4|Mux6~0_combout\ & ( \Clock_Sistema~input_o\ & ( (!\G18|SAIDA[0]~28_combout\ & 
-- ((!\G4|Mux5~0_combout\) # ((!\G5|aluSRC~combout\) # (!\G4|Mux2~0_combout\)))) ) ) ) # ( \G4|Mux6~0_combout\ & ( !\Clock_Sistema~input_o\ & ( !\G18|SAIDA[0]~28_combout\ ) ) ) # ( !\G4|Mux6~0_combout\ & ( !\Clock_Sistema~input_o\ & ( 
-- !\G18|SAIDA[0]~28_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datab => \G4|ALT_INV_Mux5~0_combout\,
	datac => \G5|ALT_INV_aluSRC~combout\,
	datad => \G4|ALT_INV_Mux2~0_combout\,
	datae => \G4|ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G16|Mux15~1_combout\);

-- Location: MLABCELL_X84_Y21_N0
\G16|Add0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~14_sumout\ = SUM(( (\Clock_Sistema~input_o\ & ((!\G5|aluSRC~combout\ & (\G18|SAIDA[0]~28_combout\)) # (\G5|aluSRC~combout\ & ((\G4|tipoi[0]~0_combout\))))) ) + ( \G18|SAIDA[0]~28_combout\ ) + ( !VCC ))
-- \G16|Add0~15\ = CARRY(( (\Clock_Sistema~input_o\ & ((!\G5|aluSRC~combout\ & (\G18|SAIDA[0]~28_combout\)) # (\G5|aluSRC~combout\ & ((\G4|tipoi[0]~0_combout\))))) ) + ( \G18|SAIDA[0]~28_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datad => \G4|ALT_INV_tipoi[0]~0_combout\,
	cin => GND,
	sumout => \G16|Add0~14_sumout\,
	cout => \G16|Add0~15\);

-- Location: MLABCELL_X82_Y21_N45
\G17|ram~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~280_combout\ = ( \G16|Mux1~0_combout\ & ( \G16|Mux1~1_combout\ & ( (!\G16|Mux13~2_combout\ & !\G16|Add1~16_sumout\) ) ) ) # ( !\G16|Mux1~0_combout\ & ( \G16|Mux1~1_combout\ & ( (!\G16|Mux13~2_combout\ & \G16|Mux15~1_combout\) ) ) ) # ( 
-- \G16|Mux1~0_combout\ & ( !\G16|Mux1~1_combout\ & ( (!\G16|Mux13~2_combout\ & !\G16|Add0~14_sumout\) ) ) ) # ( !\G16|Mux1~0_combout\ & ( !\G16|Mux1~1_combout\ & ( !\G16|Mux13~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010100000000000001010000010101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G16|ALT_INV_Add1~16_sumout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Add0~14_sumout\,
	datae => \G16|ALT_INV_Mux1~0_combout\,
	dataf => \G16|ALT_INV_Mux1~1_combout\,
	combout => \G17|ram~280_combout\);

-- Location: LABCELL_X81_Y23_N45
\G18|SAIDA[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[4]~25_combout\ = ( \G18|SAIDA[4]~24_combout\ & ( \Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA[4]~24_combout\,
	combout => \G18|SAIDA[4]~25_combout\);

-- Location: LABCELL_X83_Y20_N21
\G5|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Equal1~0_combout\ = ( \G4|rs[1]~0_combout\ ) # ( !\G4|rs[1]~0_combout\ & ( !\G4|op[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_op[0]~0_combout\,
	dataf => \G4|ALT_INV_rs[1]~0_combout\,
	combout => \G5|Equal1~0_combout\);

-- Location: MLABCELL_X82_Y22_N51
\G5|memparareg\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|memparareg~combout\ = ( \G5|memparareg~combout\ & ( (!\G5|Equal1~0_combout\) # (!\G5|regdest~0_combout\) ) ) # ( !\G5|memparareg~combout\ & ( (!\G5|Equal1~0_combout\ & \G5|regdest~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_Equal1~0_combout\,
	datad => \G5|ALT_INV_regdest~0_combout\,
	dataf => \G5|ALT_INV_memparareg~combout\,
	combout => \G5|memparareg~combout\);

-- Location: LABCELL_X83_Y24_N48
\G17|ram.we_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram.we_a~0_combout\ = ( \G5|origalu\(1) & ( (\Clock_Sistema~input_o\ & !\G5|memparareg~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G5|ALT_INV_memparareg~combout\,
	dataf => \G5|ALT_INV_origalu\(1),
	combout => \G17|ram.we_a~0_combout\);

-- Location: LABCELL_X83_Y24_N24
\rtl~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~18_combout\ = ( !\G16|Mux12~2_combout\ & ( (\G17|ram.we_a~0_combout\ & !\G16|Mux14~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram.we_a~0_combout\,
	datad => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux12~2_combout\,
	combout => \rtl~18_combout\);

-- Location: LABCELL_X83_Y24_N27
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( \G16|Mux11~2_combout\ & ( (\rtl~18_combout\ & \G17|ram~280_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~18_combout\,
	datac => \G17|ALT_INV_ram~280_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \rtl~0_combout\);

-- Location: MLABCELL_X82_Y22_N21
\G17|ram~260\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~260_combout\ = ( \rtl~0_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~0_combout\ & ( \G17|ram~260_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \G17|ALT_INV_ram~260_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~260_combout\);

-- Location: MLABCELL_X82_Y22_N18
\G18|SAIDA[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[4]~23_combout\ = ( \G17|ram~260_combout\ & ( (!\G16|Mux14~1_combout\ & (\G17|ram~280_combout\ & !\G16|Mux12~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G17|ALT_INV_ram~280_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G17|ALT_INV_ram~260_combout\,
	combout => \G18|SAIDA[4]~23_combout\);

-- Location: MLABCELL_X84_Y22_N36
\G16|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~2_combout\ = ( \G16|Mux1~1_combout\ & ( (!\G16|Mux1~0_combout\ & (!\G16|Mux15~1_combout\)) # (\G16|Mux1~0_combout\ & ((\G16|Add1~16_sumout\))) ) ) # ( !\G16|Mux1~1_combout\ & ( (\G16|Mux1~0_combout\ & \G16|Add0~14_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001110001000101110111000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~1_combout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datac => \G16|ALT_INV_Add0~14_sumout\,
	datad => \G16|ALT_INV_Add1~16_sumout\,
	dataf => \G16|ALT_INV_Mux1~1_combout\,
	combout => \G16|Mux15~2_combout\);

-- Location: LABCELL_X83_Y24_N51
\rtl~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~20_combout\ = ( \G17|ram.we_a~0_combout\ & ( (\G16|Mux14~1_combout\ & (!\G16|Mux11~2_combout\ & !\G16|Mux12~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~20_combout\);

-- Location: LABCELL_X83_Y23_N45
\rtl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = ( \rtl~20_combout\ & ( (\G16|Mux15~2_combout\ & \G16|Mux13~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux15~2_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \ALT_INV_rtl~20_combout\,
	combout => \rtl~2_combout\);

-- Location: LABCELL_X81_Y23_N21
\G17|ram~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~116_combout\ = ( \rtl~2_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~116_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \G17|ALT_INV_ram~116_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~116_combout\);

-- Location: LABCELL_X83_Y23_N30
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \rtl~20_combout\ & ( (\G16|Mux13~2_combout\ & !\G16|Mux15~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux13~2_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \ALT_INV_rtl~20_combout\,
	combout => \rtl~4_combout\);

-- Location: LABCELL_X81_Y23_N18
\G17|ram~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~100_combout\ = ( \rtl~4_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~100_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datac => \G17|ALT_INV_ram~100_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~100_combout\);

-- Location: LABCELL_X83_Y24_N33
\rtl~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = ( \rtl~20_combout\ & ( \G17|ram~280_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~280_combout\,
	dataf => \ALT_INV_rtl~20_combout\,
	combout => \rtl~12_combout\);

-- Location: LABCELL_X81_Y23_N27
\G17|ram~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~36_combout\ = ( \G17|ram~36_combout\ & ( (!\rtl~12_combout\) # (\G18|SAIDA[4]~25_combout\) ) ) # ( !\G17|ram~36_combout\ & ( (\G18|SAIDA[4]~25_combout\ & \rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G17|ALT_INV_ram~36_combout\,
	combout => \G17|ram~36_combout\);

-- Location: LABCELL_X83_Y26_N21
\rtl~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = ( !\G16|Mux13~2_combout\ & ( (\rtl~20_combout\ & \G16|Mux15~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~20_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	combout => \rtl~10_combout\);

-- Location: LABCELL_X81_Y23_N57
\G17|ram~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~52_combout\ = ( \rtl~10_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~52_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \G17|ALT_INV_ram~52_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~52_combout\);

-- Location: LABCELL_X83_Y24_N18
\rtl~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~19_combout\ = ( !\G16|Mux11~2_combout\ & ( \rtl~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~18_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \rtl~19_combout\);

-- Location: MLABCELL_X84_Y25_N0
\rtl~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = ( \rtl~19_combout\ & ( (!\G16|Mux13~2_combout\ & \G16|Mux15~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux13~2_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \ALT_INV_rtl~19_combout\,
	combout => \rtl~9_combout\);

-- Location: LABCELL_X81_Y23_N54
\G17|ram~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~20_combout\ = ( \rtl~9_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \G17|ALT_INV_ram~20_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~20_combout\);

-- Location: LABCELL_X83_Y24_N15
\rtl~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = ( \rtl~19_combout\ & ( \G17|ram~280_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~280_combout\,
	dataf => \ALT_INV_rtl~19_combout\,
	combout => \rtl~11_combout\);

-- Location: LABCELL_X81_Y23_N24
\G17|ram~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~4_combout\ = ( \rtl~11_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datac => \G17|ALT_INV_ram~4_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~4_combout\);

-- Location: LABCELL_X81_Y23_N6
\G17|ram~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~337_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~4_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~20_combout\)))))) # (\G16|Mux13~2_combout\ & (\G16|Mux15~2_combout\)) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~36_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~52_combout\)))))) # (\G16|Mux13~2_combout\ & (\G16|Mux15~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~36_combout\,
	datad => \G17|ALT_INV_ram~52_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~20_combout\,
	datag => \G17|ALT_INV_ram~4_combout\,
	combout => \G17|ram~337_combout\);

-- Location: LABCELL_X81_Y24_N9
\rtl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = ( \G16|Mux13~2_combout\ & ( (\G16|Mux15~2_combout\ & \rtl~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux15~2_combout\,
	datad => \ALT_INV_rtl~19_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	combout => \rtl~1_combout\);

-- Location: LABCELL_X81_Y23_N3
\G17|ram~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~84_combout\ = ( \G17|ram~84_combout\ & ( \rtl~1_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) ) # ( !\G17|ram~84_combout\ & ( \rtl~1_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) ) # ( \G17|ram~84_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datae => \G17|ALT_INV_ram~84_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~84_combout\);

-- Location: LABCELL_X81_Y24_N33
\rtl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = ( \G16|Mux13~2_combout\ & ( (!\G16|Mux15~2_combout\ & \rtl~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux15~2_combout\,
	datad => \ALT_INV_rtl~19_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	combout => \rtl~3_combout\);

-- Location: LABCELL_X81_Y23_N42
\G17|ram~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~68_combout\ = ( \rtl~3_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~68_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~68_combout\,
	datad => \G18|ALT_INV_SAIDA[4]~25_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~68_combout\);

-- Location: LABCELL_X81_Y23_N48
\G17|ram~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~297_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~337_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~337_combout\ & (\G17|ram~68_combout\)) # (\G17|ram~337_combout\ & ((\G17|ram~84_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~337_combout\))))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~337_combout\ & (((\G17|ram~100_combout\)))) # (\G17|ram~337_combout\ & (\G17|ram~116_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001100000000111101110100000011111111110000001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~116_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~100_combout\,
	datad => \G17|ALT_INV_ram~337_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~84_combout\,
	datag => \G17|ALT_INV_ram~68_combout\,
	combout => \G17|ram~297_combout\);

-- Location: LABCELL_X83_Y24_N57
\rtl~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~17_combout\ = ( !\G16|Mux11~2_combout\ & ( \G16|Mux12~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \rtl~17_combout\);

-- Location: LABCELL_X83_Y24_N54
\rtl~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~22_combout\ = ( \rtl~17_combout\ & ( (\G17|ram.we_a~0_combout\ & \G16|Mux14~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram.we_a~0_combout\,
	datad => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \ALT_INV_rtl~17_combout\,
	combout => \rtl~22_combout\);

-- Location: LABCELL_X83_Y25_N3
\rtl~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = ( \G16|Mux15~2_combout\ & ( (\G16|Mux13~2_combout\ & \rtl~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux13~2_combout\,
	datad => \ALT_INV_rtl~22_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \rtl~6_combout\);

-- Location: LABCELL_X80_Y25_N24
\G17|ram~244\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~244_combout\ = ( \G17|ram~244_combout\ & ( (!\rtl~6_combout\) # (\G18|SAIDA[4]~25_combout\) ) ) # ( !\G17|ram~244_combout\ & ( (\G18|SAIDA[4]~25_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~244_combout\,
	combout => \G17|ram~244_combout\);

-- Location: LABCELL_X83_Y25_N54
\rtl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = ( \G16|Mux13~2_combout\ & ( (!\G16|Mux15~2_combout\ & \rtl~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux15~2_combout\,
	datad => \ALT_INV_rtl~22_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	combout => \rtl~8_combout\);

-- Location: LABCELL_X80_Y25_N27
\G17|ram~228\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~228_combout\ = ( \rtl~8_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~228_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \G17|ALT_INV_ram~228_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~228_combout\);

-- Location: LABCELL_X83_Y24_N45
\rtl~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~21_combout\ = ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux14~1_combout\ & \rtl~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \ALT_INV_rtl~17_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~21_combout\);

-- Location: MLABCELL_X84_Y25_N51
\rtl~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = ( \G16|Mux15~2_combout\ & ( (\rtl~21_combout\ & !\G16|Mux13~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~21_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \rtl~13_combout\);

-- Location: LABCELL_X80_Y25_N39
\G17|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~148_combout\ = ( \rtl~13_combout\ & ( \G17|ram~148_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) ) # ( !\rtl~13_combout\ & ( \G17|ram~148_combout\ ) ) # ( \rtl~13_combout\ & ( !\G17|ram~148_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datae => \ALT_INV_rtl~13_combout\,
	dataf => \G17|ALT_INV_ram~148_combout\,
	combout => \G17|ram~148_combout\);

-- Location: LABCELL_X83_Y24_N30
\rtl~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~16_combout\ = ( \G17|ram~280_combout\ & ( \rtl~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_rtl~22_combout\,
	dataf => \G17|ALT_INV_ram~280_combout\,
	combout => \rtl~16_combout\);

-- Location: LABCELL_X80_Y25_N57
\G17|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~164_combout\ = ( \rtl~16_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~164_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \G17|ALT_INV_ram~164_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~164_combout\);

-- Location: LABCELL_X83_Y25_N0
\rtl~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = ( \G16|Mux15~2_combout\ & ( (!\G16|Mux13~2_combout\ & \rtl~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \ALT_INV_rtl~22_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \rtl~14_combout\);

-- Location: LABCELL_X80_Y25_N54
\G17|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~180_combout\ = ( \rtl~14_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~180_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \G17|ALT_INV_ram~180_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~180_combout\);

-- Location: LABCELL_X83_Y24_N21
\rtl~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = ( \G17|ram~280_combout\ & ( \rtl~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_rtl~21_combout\,
	dataf => \G17|ALT_INV_ram~280_combout\,
	combout => \rtl~15_combout\);

-- Location: LABCELL_X80_Y25_N12
\G17|ram~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~132_combout\ = ( \rtl~15_combout\ & ( \G17|ram~132_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) ) # ( !\rtl~15_combout\ & ( \G17|ram~132_combout\ ) ) # ( \rtl~15_combout\ & ( !\G17|ram~132_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datae => \ALT_INV_rtl~15_combout\,
	dataf => \G17|ALT_INV_ram~132_combout\,
	combout => \G17|ram~132_combout\);

-- Location: LABCELL_X80_Y25_N30
\G17|ram~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~341_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~132_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~148_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~164_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~180_combout\) # (\G16|Mux13~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram~148_combout\,
	datac => \G17|ALT_INV_ram~164_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~180_combout\,
	datag => \G17|ALT_INV_ram~132_combout\,
	combout => \G17|ram~341_combout\);

-- Location: MLABCELL_X84_Y25_N39
\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = ( \rtl~21_combout\ & ( (\G16|Mux15~2_combout\ & \G16|Mux13~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux15~2_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \ALT_INV_rtl~21_combout\,
	combout => \rtl~5_combout\);

-- Location: LABCELL_X80_Y25_N3
\G17|ram~212\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~212_combout\ = ( \rtl~5_combout\ & ( \G18|SAIDA[4]~25_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~212_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datad => \G17|ALT_INV_ram~212_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~212_combout\);

-- Location: MLABCELL_X84_Y25_N48
\rtl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = ( !\G16|Mux15~2_combout\ & ( (\rtl~21_combout\ & \G16|Mux13~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~21_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \rtl~7_combout\);

-- Location: LABCELL_X80_Y25_N42
\G17|ram~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~196_combout\ = ( \G17|ram~196_combout\ & ( (!\rtl~7_combout\) # (\G18|SAIDA[4]~25_combout\) ) ) # ( !\G17|ram~196_combout\ & ( (\G18|SAIDA[4]~25_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[4]~25_combout\,
	datac => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~196_combout\,
	combout => \G17|ram~196_combout\);

-- Location: LABCELL_X80_Y25_N18
\G17|ram~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~301_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~341_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~341_combout\ & (\G17|ram~196_combout\)) # (\G17|ram~341_combout\ & ((\G17|ram~212_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~341_combout\))))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~341_combout\ & (((\G17|ram~228_combout\)))) # (\G17|ram~341_combout\ & (\G17|ram~244_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001100000000111101110100000011111111110000001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~244_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~228_combout\,
	datad => \G17|ALT_INV_ram~341_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~212_combout\,
	datag => \G17|ALT_INV_ram~196_combout\,
	combout => \G17|ram~301_combout\);

-- Location: MLABCELL_X82_Y22_N0
\G18|SAIDA[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[4]~24_combout\ = ( \G16|Mux12~2_combout\ & ( \G5|memparareg~combout\ & ( \G16|Mux11~2_combout\ ) ) ) # ( !\G16|Mux12~2_combout\ & ( \G5|memparareg~combout\ & ( \G16|Mux11~2_combout\ ) ) ) # ( \G16|Mux12~2_combout\ & ( !\G5|memparareg~combout\ & 
-- ( (!\G16|Mux11~2_combout\ & ((\G17|ram~301_combout\))) # (\G16|Mux11~2_combout\ & (\G18|SAIDA[4]~23_combout\)) ) ) ) # ( !\G16|Mux12~2_combout\ & ( !\G5|memparareg~combout\ & ( (!\G16|Mux11~2_combout\ & ((\G17|ram~297_combout\))) # (\G16|Mux11~2_combout\ 
-- & (\G18|SAIDA[4]~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000001011111010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[4]~23_combout\,
	datab => \G17|ALT_INV_ram~297_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G17|ALT_INV_ram~301_combout\,
	datae => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G5|ALT_INV_memparareg~combout\,
	combout => \G18|SAIDA[4]~24_combout\);

-- Location: LABCELL_X83_Y21_N0
\G16|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~3_combout\ = ( !\G15|SAIDA\(5) & ( (\G15|SAIDA\(2) & (!\G15|SAIDA\(0) & (!\G15|SAIDA\(3) & !\G15|SAIDA\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(2),
	datab => \G15|ALT_INV_SAIDA\(0),
	datac => \G15|ALT_INV_SAIDA\(3),
	datad => \G15|ALT_INV_SAIDA\(4),
	dataf => \G15|ALT_INV_SAIDA\(5),
	combout => \G16|Mux1~3_combout\);

-- Location: LABCELL_X83_Y21_N27
\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = ( \G4|Mux0~2_combout\ & ( (!\G1|pout\(3) & !\G1|pout\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(3),
	datad => \G1|ALT_INV_pout\(2),
	dataf => \G4|ALT_INV_Mux0~2_combout\,
	combout => \G4|Mux0~3_combout\);

-- Location: MLABCELL_X84_Y21_N51
\G4|tipoi[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[3]~1_combout\ = ( \Clock_Sistema~input_o\ & ( (!\G4|Mux6~0_combout\ & !\G4|Mux5~0_combout\) ) ) # ( !\Clock_Sistema~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|tipoi[3]~1_combout\);

-- Location: MLABCELL_X84_Y21_N48
\G4|tipoi[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[3]~3_combout\ = ( !\G4|tipoi[3]~1_combout\ & ( (!\G1|pout\(1) & (\G4|Mux0~3_combout\ & !\G1|pout\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(1),
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G1|ALT_INV_pout\(0),
	dataf => \G4|ALT_INV_tipoi[3]~1_combout\,
	combout => \G4|tipoi[3]~3_combout\);

-- Location: LABCELL_X83_Y21_N6
\G16|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~1_combout\ = ( \G4|tipoi[3]~3_combout\ & ( (\Clock_Sistema~input_o\ & (\G16|Mux1~3_combout\ & ((\G18|SAIDA[4]~24_combout\) # (\G5|aluSRC~combout\)))) ) ) # ( !\G4|tipoi[3]~3_combout\ & ( (\Clock_Sistema~input_o\ & (\G18|SAIDA[4]~24_combout\ & 
-- \G16|Mux1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[4]~24_combout\,
	datad => \G16|ALT_INV_Mux1~3_combout\,
	dataf => \G4|ALT_INV_tipoi[3]~3_combout\,
	combout => \G16|Mux11~1_combout\);

-- Location: MLABCELL_X84_Y21_N57
\G4|tipoi[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[2]~2_combout\ = ( !\G4|tipoi[3]~1_combout\ & ( (\G4|Mux0~2_combout\ & \G4|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G4|ALT_INV_Mux1~0_combout\,
	dataf => \G4|ALT_INV_tipoi[3]~1_combout\,
	combout => \G4|tipoi[2]~2_combout\);

-- Location: MLABCELL_X84_Y21_N3
\G16|Add0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~70_sumout\ = SUM(( (!\G5|aluSRC~combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA[1]~51_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[1]~51_combout\) ) + ( \G16|Add0~15\ ))
-- \G16|Add0~71\ = CARRY(( (!\G5|aluSRC~combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA[1]~51_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[1]~51_combout\) ) + ( \G16|Add0~15\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[1]~51_combout\,
	cin => \G16|Add0~15\,
	sumout => \G16|Add0~70_sumout\,
	cout => \G16|Add0~71\);

-- Location: MLABCELL_X84_Y21_N6
\G16|Add0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~74_sumout\ = SUM(( (\Clock_Sistema~input_o\ & ((!\G5|aluSRC~combout\ & (\G18|SAIDA[2]~18_combout\)) # (\G5|aluSRC~combout\ & ((\G4|tipoi[2]~2_combout\))))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[2]~18_combout\) ) + ( \G16|Add0~71\ ))
-- \G16|Add0~75\ = CARRY(( (\Clock_Sistema~input_o\ & ((!\G5|aluSRC~combout\ & (\G18|SAIDA[2]~18_combout\)) # (\G5|aluSRC~combout\ & ((\G4|tipoi[2]~2_combout\))))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[2]~18_combout\) ) + ( \G16|Add0~71\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[2]~18_combout\,
	datad => \G4|ALT_INV_tipoi[2]~2_combout\,
	cin => \G16|Add0~71\,
	sumout => \G16|Add0~74_sumout\,
	cout => \G16|Add0~75\);

-- Location: MLABCELL_X84_Y21_N9
\G16|Add0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~62_sumout\ = SUM(( (\Clock_Sistema~input_o\ & ((!\G5|aluSRC~combout\ & (\G18|SAIDA[3]~21_combout\)) # (\G5|aluSRC~combout\ & ((\G4|tipoi[3]~3_combout\))))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[3]~21_combout\) ) + ( \G16|Add0~75\ ))
-- \G16|Add0~63\ = CARRY(( (\Clock_Sistema~input_o\ & ((!\G5|aluSRC~combout\ & (\G18|SAIDA[3]~21_combout\)) # (\G5|aluSRC~combout\ & ((\G4|tipoi[3]~3_combout\))))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[3]~21_combout\) ) + ( \G16|Add0~75\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[3]~21_combout\,
	datad => \G4|ALT_INV_tipoi[3]~3_combout\,
	cin => \G16|Add0~75\,
	sumout => \G16|Add0~62_sumout\,
	cout => \G16|Add0~63\);

-- Location: MLABCELL_X84_Y21_N12
\G16|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~66_sumout\ = SUM(( (\Clock_Sistema~input_o\ & ((!\G5|aluSRC~combout\ & (\G18|SAIDA[4]~24_combout\)) # (\G5|aluSRC~combout\ & ((\G4|tipoi[3]~3_combout\))))) ) + ( (\G18|SAIDA[4]~24_combout\ & \Clock_Sistema~input_o\) ) + ( \G16|Add0~63\ ))
-- \G16|Add0~67\ = CARRY(( (\Clock_Sistema~input_o\ & ((!\G5|aluSRC~combout\ & (\G18|SAIDA[4]~24_combout\)) # (\G5|aluSRC~combout\ & ((\G4|tipoi[3]~3_combout\))))) ) + ( (\G18|SAIDA[4]~24_combout\ & \Clock_Sistema~input_o\) ) + ( \G16|Add0~63\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101110111000000000000000000001000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[4]~24_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_aluSRC~combout\,
	datad => \G4|ALT_INV_tipoi[3]~3_combout\,
	cin => \G16|Add0~63\,
	sumout => \G16|Add0~66_sumout\,
	cout => \G16|Add0~67\);

-- Location: LABCELL_X85_Y21_N12
\G16|Add1~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~52_sumout\ = SUM(( ((!\Clock_Sistema~input_o\) # (!\G18|SAIDA[1]~51_combout\)) # (\G5|aluSRC~combout\) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[1]~51_combout\) ) + ( \G16|Add1~17\ ))
-- \G16|Add1~53\ = CARRY(( ((!\Clock_Sistema~input_o\) # (!\G18|SAIDA[1]~51_combout\)) # (\G5|aluSRC~combout\) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[1]~51_combout\) ) + ( \G16|Add1~17\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[1]~51_combout\,
	cin => \G16|Add1~17\,
	sumout => \G16|Add1~52_sumout\,
	cout => \G16|Add1~53\);

-- Location: LABCELL_X85_Y21_N15
\G16|Add1~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~56_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G5|aluSRC~combout\ & (!\G18|SAIDA[2]~18_combout\)) # (\G5|aluSRC~combout\ & ((!\G4|tipoi[2]~2_combout\)))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[2]~18_combout\) ) + ( \G16|Add1~53\ ))
-- \G16|Add1~57\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G5|aluSRC~combout\ & (!\G18|SAIDA[2]~18_combout\)) # (\G5|aluSRC~combout\ & ((!\G4|tipoi[2]~2_combout\)))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[2]~18_combout\) ) + ( \G16|Add1~53\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000001111110111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[2]~18_combout\,
	datad => \G4|ALT_INV_tipoi[2]~2_combout\,
	cin => \G16|Add1~53\,
	sumout => \G16|Add1~56_sumout\,
	cout => \G16|Add1~57\);

-- Location: LABCELL_X85_Y21_N18
\G16|Add1~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~32_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G5|aluSRC~combout\ & (!\G18|SAIDA[3]~21_combout\)) # (\G5|aluSRC~combout\ & ((!\G4|tipoi[3]~3_combout\)))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[3]~21_combout\) ) + ( \G16|Add1~57\ ))
-- \G16|Add1~33\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G5|aluSRC~combout\ & (!\G18|SAIDA[3]~21_combout\)) # (\G5|aluSRC~combout\ & ((!\G4|tipoi[3]~3_combout\)))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[3]~21_combout\) ) + ( \G16|Add1~57\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000001111110111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[3]~21_combout\,
	datad => \G4|ALT_INV_tipoi[3]~3_combout\,
	cin => \G16|Add1~57\,
	sumout => \G16|Add1~32_sumout\,
	cout => \G16|Add1~33\);

-- Location: LABCELL_X85_Y21_N21
\G16|Add1~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~36_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G5|aluSRC~combout\ & (!\G18|SAIDA[4]~24_combout\)) # (\G5|aluSRC~combout\ & ((!\G4|tipoi[3]~3_combout\)))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[4]~24_combout\) ) + ( \G16|Add1~33\ ))
-- \G16|Add1~37\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G5|aluSRC~combout\ & (!\G18|SAIDA[4]~24_combout\)) # (\G5|aluSRC~combout\ & ((!\G4|tipoi[3]~3_combout\)))) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[4]~24_combout\) ) + ( \G16|Add1~33\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000001111110111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[4]~24_combout\,
	datad => \G4|ALT_INV_tipoi[3]~3_combout\,
	cin => \G16|Add1~33\,
	sumout => \G16|Add1~36_sumout\,
	cout => \G16|Add1~37\);

-- Location: MLABCELL_X84_Y22_N18
\G16|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~2_combout\ = ( \G16|Add1~36_sumout\ & ( ((\G16|Mux1~0_combout\ & ((\G16|Add0~66_sumout\) # (\G16|Mux1~1_combout\)))) # (\G16|Mux11~1_combout\) ) ) # ( !\G16|Add1~36_sumout\ & ( ((!\G16|Mux1~1_combout\ & (\G16|Mux1~0_combout\ & 
-- \G16|Add0~66_sumout\))) # (\G16|Mux11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011110010111100011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~1_combout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datac => \G16|ALT_INV_Mux11~1_combout\,
	datad => \G16|ALT_INV_Add0~66_sumout\,
	dataf => \G16|ALT_INV_Add1~36_sumout\,
	combout => \G16|Mux11~2_combout\);

-- Location: MLABCELL_X82_Y22_N42
\G18|SAIDA[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~13_combout\ = ( !\G5|memparareg~combout\ & ( (!\G16|Mux11~2_combout\ & \G16|Mux12~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G5|ALT_INV_memparareg~combout\,
	combout => \G18|SAIDA[1]~13_combout\);

-- Location: MLABCELL_X84_Y24_N48
\G17|ram~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~17_combout\ = ( \G17|ram~17_combout\ & ( (!\rtl~9_combout\) # (\G18|SAIDA[1]~15_combout\) ) ) # ( !\G17|ram~17_combout\ & ( (\G18|SAIDA[1]~15_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~17_combout\,
	combout => \G17|ram~17_combout\);

-- Location: MLABCELL_X84_Y24_N36
\G17|ram~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~33_combout\ = ( \G17|ram~33_combout\ & ( (!\rtl~12_combout\) # (\G18|SAIDA[1]~15_combout\) ) ) # ( !\G17|ram~33_combout\ & ( (\G18|SAIDA[1]~15_combout\ & \rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G17|ALT_INV_ram~33_combout\,
	combout => \G17|ram~33_combout\);

-- Location: MLABCELL_X84_Y24_N33
\G17|ram~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~49_combout\ = ( \G17|ram~49_combout\ & ( (!\rtl~10_combout\) # (\G18|SAIDA[1]~15_combout\) ) ) # ( !\G17|ram~49_combout\ & ( (\G18|SAIDA[1]~15_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~49_combout\,
	combout => \G17|ram~49_combout\);

-- Location: MLABCELL_X84_Y24_N57
\G17|ram~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~1_combout\ = ( \rtl~11_combout\ & ( \G18|SAIDA[1]~15_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \G17|ALT_INV_ram~1_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~1_combout\);

-- Location: MLABCELL_X84_Y24_N0
\G17|ram~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~313_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~1_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~17_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~33_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~49_combout\) # (\G16|Mux13~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram~17_combout\,
	datac => \G17|ALT_INV_ram~33_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~49_combout\,
	datag => \G17|ALT_INV_ram~1_combout\,
	combout => \G17|ram~313_combout\);

-- Location: LABCELL_X81_Y24_N21
\G17|ram~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~97_combout\ = ( \rtl~4_combout\ & ( \G18|SAIDA[1]~15_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~97_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \G17|ALT_INV_ram~97_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~97_combout\);

-- Location: LABCELL_X81_Y24_N30
\G17|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~113_combout\ = ( \G17|ram~113_combout\ & ( (!\rtl~2_combout\) # (\G18|SAIDA[1]~15_combout\) ) ) # ( !\G17|ram~113_combout\ & ( (\G18|SAIDA[1]~15_combout\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~113_combout\,
	combout => \G17|ram~113_combout\);

-- Location: LABCELL_X81_Y24_N15
\G17|ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~81_combout\ = ( \G17|ram~81_combout\ & ( (!\rtl~1_combout\) # (\G18|SAIDA[1]~15_combout\) ) ) # ( !\G17|ram~81_combout\ & ( (\rtl~1_combout\ & \G18|SAIDA[1]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~1_combout\,
	datac => \G18|ALT_INV_SAIDA[1]~15_combout\,
	dataf => \G17|ALT_INV_ram~81_combout\,
	combout => \G17|ram~81_combout\);

-- Location: LABCELL_X81_Y24_N6
\G17|ram~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~65_combout\ = ( \G17|ram~65_combout\ & ( (!\rtl~3_combout\) # (\G18|SAIDA[1]~15_combout\) ) ) # ( !\G17|ram~65_combout\ & ( (\G18|SAIDA[1]~15_combout\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datac => \ALT_INV_rtl~3_combout\,
	dataf => \G17|ALT_INV_ram~65_combout\,
	combout => \G17|ram~65_combout\);

-- Location: LABCELL_X81_Y24_N54
\G17|ram~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~272_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~313_combout\ & (\G16|Mux13~2_combout\ & (\G17|ram~65_combout\))) # (\G17|ram~313_combout\ & ((!\G16|Mux13~2_combout\) # (((\G17|ram~81_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~313_combout\ & (\G16|Mux13~2_combout\ & (\G17|ram~97_combout\))) # (\G17|ram~313_combout\ & ((!\G16|Mux13~2_combout\) # (((\G17|ram~113_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~313_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~97_combout\,
	datad => \G17|ALT_INV_ram~113_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~81_combout\,
	datag => \G17|ALT_INV_ram~65_combout\,
	combout => \G17|ram~272_combout\);

-- Location: MLABCELL_X84_Y24_N24
\G17|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~161_combout\ = ( \rtl~16_combout\ & ( \G18|SAIDA[1]~15_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~161_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datac => \G17|ALT_INV_ram~161_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~161_combout\);

-- Location: MLABCELL_X84_Y24_N30
\G17|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~177_combout\ = ( \rtl~14_combout\ & ( \G18|SAIDA[1]~15_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~177_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datac => \G17|ALT_INV_ram~177_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~177_combout\);

-- Location: MLABCELL_X84_Y24_N39
\G17|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~145_combout\ = ( \rtl~13_combout\ & ( \G18|SAIDA[1]~15_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~145_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datac => \G17|ALT_INV_ram~145_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~145_combout\);

-- Location: MLABCELL_X84_Y24_N51
\G17|ram~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~129_combout\ = ( \G17|ram~129_combout\ & ( (!\rtl~15_combout\) # (\G18|SAIDA[1]~15_combout\) ) ) # ( !\G17|ram~129_combout\ & ( (\G18|SAIDA[1]~15_combout\ & \rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G17|ALT_INV_ram~129_combout\,
	combout => \G17|ram~129_combout\);

-- Location: MLABCELL_X84_Y24_N42
\G17|ram~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~317_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~2_combout\ & (\G17|ram~129_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~145_combout\))) # (\G16|Mux13~2_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~2_combout\ & (\G17|ram~161_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~177_combout\))) # (\G16|Mux13~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~161_combout\,
	datad => \G17|ALT_INV_ram~177_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~145_combout\,
	datag => \G17|ALT_INV_ram~129_combout\,
	combout => \G17|ram~317_combout\);

-- Location: MLABCELL_X84_Y24_N27
\G17|ram~225\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~225_combout\ = ( \rtl~8_combout\ & ( \G18|SAIDA[1]~15_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~225_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \G17|ALT_INV_ram~225_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~225_combout\);

-- Location: MLABCELL_X84_Y24_N9
\G17|ram~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~209_combout\ = ( \rtl~5_combout\ & ( \G18|SAIDA[1]~15_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~209_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \G17|ALT_INV_ram~209_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~209_combout\);

-- Location: MLABCELL_X84_Y24_N12
\G17|ram~241\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~241_combout\ = ( \rtl~6_combout\ & ( \G18|SAIDA[1]~15_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~241_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~241_combout\,
	datac => \G18|ALT_INV_SAIDA[1]~15_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~241_combout\);

-- Location: MLABCELL_X84_Y24_N54
\G17|ram~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~193_combout\ = ( \rtl~7_combout\ & ( \G18|SAIDA[1]~15_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~193_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datad => \G17|ALT_INV_ram~193_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~193_combout\);

-- Location: MLABCELL_X84_Y24_N18
\G17|ram~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~276_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (\G17|ram~317_combout\)) # (\G16|Mux13~2_combout\ & ((!\G17|ram~317_combout\ & (\G17|ram~193_combout\)) # (\G17|ram~317_combout\ & (((\G17|ram~209_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (\G17|ram~317_combout\)) # (\G16|Mux13~2_combout\ & ((!\G17|ram~317_combout\ & (\G17|ram~225_combout\)) # (\G17|ram~317_combout\ & (((\G17|ram~241_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~317_combout\,
	datac => \G17|ALT_INV_ram~225_combout\,
	datad => \G17|ALT_INV_ram~209_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~241_combout\,
	datag => \G17|ALT_INV_ram~193_combout\,
	combout => \G17|ram~276_combout\);

-- Location: LABCELL_X85_Y24_N57
\G18|SAIDA[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~15_combout\ = ( \G18|SAIDA[1]~14_combout\ & ( \Clock_Sistema~input_o\ ) ) # ( !\G18|SAIDA[1]~14_combout\ & ( \Clock_Sistema~input_o\ & ( (!\G17|ram~272_combout\ & (((\G17|ram~276_combout\ & \G18|SAIDA[1]~13_combout\)))) # 
-- (\G17|ram~272_combout\ & (((\G17|ram~276_combout\ & \G18|SAIDA[1]~13_combout\)) # (\G18|SAIDA[1]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~272_combout\,
	datab => \G18|ALT_INV_SAIDA[1]~12_combout\,
	datac => \G17|ALT_INV_ram~276_combout\,
	datad => \G18|ALT_INV_SAIDA[1]~13_combout\,
	datae => \G18|ALT_INV_SAIDA[1]~14_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA[1]~15_combout\);

-- Location: MLABCELL_X82_Y22_N12
\G17|ram~257\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~257_combout\ = ( \G17|ram~257_combout\ & ( (!\rtl~0_combout\) # (\G18|SAIDA[1]~15_combout\) ) ) # ( !\G17|ram~257_combout\ & ( (\G18|SAIDA[1]~15_combout\ & \rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[1]~15_combout\,
	datac => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~257_combout\,
	combout => \G17|ram~257_combout\);

-- Location: MLABCELL_X82_Y22_N6
\G18|SAIDA[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~14_combout\ = ( \G16|Mux12~2_combout\ & ( \G17|ram~257_combout\ & ( (\G16|Mux14~1_combout\ & \G5|memparareg~combout\) ) ) ) # ( !\G16|Mux12~2_combout\ & ( \G17|ram~257_combout\ & ( (!\G16|Mux14~1_combout\ & (\G17|ram~280_combout\ & 
-- (!\G5|memparareg~combout\ & \G16|Mux11~2_combout\))) # (\G16|Mux14~1_combout\ & (((\G5|memparareg~combout\)))) ) ) ) # ( \G16|Mux12~2_combout\ & ( !\G17|ram~257_combout\ & ( (\G16|Mux14~1_combout\ & \G5|memparareg~combout\) ) ) ) # ( 
-- !\G16|Mux12~2_combout\ & ( !\G17|ram~257_combout\ & ( (\G16|Mux14~1_combout\ & \G5|memparareg~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101001001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~1_combout\,
	datab => \G17|ALT_INV_ram~280_combout\,
	datac => \G5|ALT_INV_memparareg~combout\,
	datad => \G16|ALT_INV_Mux11~2_combout\,
	datae => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G17|ALT_INV_ram~257_combout\,
	combout => \G18|SAIDA[1]~14_combout\);

-- Location: LABCELL_X85_Y24_N24
\G18|SAIDA[1]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~51_combout\ = ( \G17|ram~272_combout\ & ( \G17|ram~276_combout\ & ( ((\G18|SAIDA[1]~14_combout\) # (\G18|SAIDA[1]~12_combout\)) # (\G18|SAIDA[1]~13_combout\) ) ) ) # ( !\G17|ram~272_combout\ & ( \G17|ram~276_combout\ & ( 
-- (\G18|SAIDA[1]~14_combout\) # (\G18|SAIDA[1]~13_combout\) ) ) ) # ( \G17|ram~272_combout\ & ( !\G17|ram~276_combout\ & ( (\G18|SAIDA[1]~14_combout\) # (\G18|SAIDA[1]~12_combout\) ) ) ) # ( !\G17|ram~272_combout\ & ( !\G17|ram~276_combout\ & ( 
-- \G18|SAIDA[1]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111110011111101011111010111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[1]~13_combout\,
	datab => \G18|ALT_INV_SAIDA[1]~12_combout\,
	datac => \G18|ALT_INV_SAIDA[1]~14_combout\,
	datae => \G17|ALT_INV_ram~272_combout\,
	dataf => \G17|ALT_INV_ram~276_combout\,
	combout => \G18|SAIDA[1]~51_combout\);

-- Location: MLABCELL_X84_Y22_N21
\G16|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~1_combout\ = ( \G18|SAIDA[1]~15_combout\ & ( (!\G16|Mux1~1_combout\ & (\G16|Mux1~0_combout\ & (\G16|Add0~70_sumout\))) # (\G16|Mux1~1_combout\ & ((!\G16|Mux1~0_combout\) # ((\G16|Add1~52_sumout\)))) ) ) # ( !\G18|SAIDA[1]~15_combout\ & ( 
-- (\G16|Mux1~0_combout\ & ((!\G16|Mux1~1_combout\ & (\G16|Add0~70_sumout\)) # (\G16|Mux1~1_combout\ & ((\G16|Add1~52_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~1_combout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datac => \G16|ALT_INV_Add0~70_sumout\,
	datad => \G16|ALT_INV_Add1~52_sumout\,
	dataf => \G18|ALT_INV_SAIDA[1]~15_combout\,
	combout => \G16|Mux14~1_combout\);

-- Location: LABCELL_X85_Y23_N36
\G18|SAIDA[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[3]~22_combout\ = ( \G18|SAIDA[3]~21_combout\ & ( \Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA[3]~21_combout\,
	combout => \G18|SAIDA[3]~22_combout\);

-- Location: MLABCELL_X82_Y22_N48
\G17|ram~259\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~259_combout\ = ( \G17|ram~259_combout\ & ( (!\rtl~0_combout\) # (\G18|SAIDA[3]~22_combout\) ) ) # ( !\G17|ram~259_combout\ & ( (\G18|SAIDA[3]~22_combout\ & \rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datac => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~259_combout\,
	combout => \G17|ram~259_combout\);

-- Location: MLABCELL_X82_Y22_N30
\G18|SAIDA[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[3]~20_combout\ = ( \G16|Mux12~2_combout\ & ( \G5|memparareg~combout\ ) ) # ( !\G16|Mux12~2_combout\ & ( !\G5|memparareg~combout\ & ( (!\G16|Mux14~1_combout\ & (\G17|ram~259_combout\ & (\G16|Mux11~2_combout\ & \G17|ram~280_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~1_combout\,
	datab => \G17|ALT_INV_ram~259_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G5|ALT_INV_memparareg~combout\,
	combout => \G18|SAIDA[3]~20_combout\);

-- Location: MLABCELL_X84_Y23_N39
\G17|ram~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~211_combout\ = ( \rtl~5_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~211_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datac => \G17|ALT_INV_ram~211_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~211_combout\);

-- Location: MLABCELL_X84_Y23_N3
\G17|ram~227\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~227_combout\ = ( \rtl~8_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~227_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datad => \G17|ALT_INV_ram~227_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~227_combout\);

-- Location: MLABCELL_X84_Y23_N27
\G17|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~147_combout\ = ( \rtl~13_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~147_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datad => \G17|ALT_INV_ram~147_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~147_combout\);

-- Location: MLABCELL_X84_Y23_N9
\G17|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~163_combout\ = ( \G17|ram~163_combout\ & ( (!\rtl~16_combout\) # (\G18|SAIDA[3]~22_combout\) ) ) # ( !\G17|ram~163_combout\ & ( (\G18|SAIDA[3]~22_combout\ & \rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G17|ALT_INV_ram~163_combout\,
	combout => \G17|ram~163_combout\);

-- Location: MLABCELL_X84_Y23_N24
\G17|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~179_combout\ = ( \rtl~14_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~179_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~179_combout\,
	datad => \G18|ALT_INV_SAIDA[3]~22_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~179_combout\);

-- Location: MLABCELL_X84_Y23_N54
\G17|ram~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~131_combout\ = ( \rtl~15_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~131_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~131_combout\,
	datad => \G18|ALT_INV_SAIDA[3]~22_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~131_combout\);

-- Location: MLABCELL_X84_Y23_N30
\G17|ram~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~329_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (((\G17|ram~131_combout\)))) # (\G16|Mux15~2_combout\ & (\G17|ram~147_combout\)))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (((!\G16|Mux15~2_combout\ & (\G17|ram~163_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~179_combout\)))))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001110111000010100101010100001010011101110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~147_combout\,
	datac => \G17|ALT_INV_ram~163_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~179_combout\,
	datag => \G17|ALT_INV_ram~131_combout\,
	combout => \G17|ram~329_combout\);

-- Location: MLABCELL_X84_Y23_N36
\G17|ram~243\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~243_combout\ = ( \rtl~6_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~243_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datad => \G17|ALT_INV_ram~243_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~243_combout\);

-- Location: MLABCELL_X84_Y23_N12
\G17|ram~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~195_combout\ = ( \rtl~7_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~195_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~195_combout\,
	datad => \G18|ALT_INV_SAIDA[3]~22_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~195_combout\);

-- Location: MLABCELL_X84_Y23_N48
\G17|ram~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~289_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~329_combout\))))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~329_combout\ & (((\G17|ram~195_combout\)))) # (\G17|ram~329_combout\ & (\G17|ram~211_combout\)))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~329_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~329_combout\ & (\G17|ram~227_combout\)) # (\G17|ram~329_combout\ & ((\G17|ram~243_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110111011000001011010101000000101101110110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~211_combout\,
	datac => \G17|ALT_INV_ram~227_combout\,
	datad => \G17|ALT_INV_ram~329_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~243_combout\,
	datag => \G17|ALT_INV_ram~195_combout\,
	combout => \G17|ram~289_combout\);

-- Location: LABCELL_X81_Y23_N36
\G17|ram~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~35_combout\ = ( \rtl~12_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~35_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datad => \G17|ALT_INV_ram~35_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~35_combout\);

-- Location: LABCELL_X81_Y23_N12
\G17|ram~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~51_combout\ = ( \G17|ram~51_combout\ & ( (!\rtl~10_combout\) # (\G18|SAIDA[3]~22_combout\) ) ) # ( !\G17|ram~51_combout\ & ( (\G18|SAIDA[3]~22_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datac => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~51_combout\,
	combout => \G17|ram~51_combout\);

-- Location: LABCELL_X81_Y23_N39
\G17|ram~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~19_combout\ = ( \rtl~9_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datac => \G17|ALT_INV_ram~19_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~19_combout\);

-- Location: LABCELL_X81_Y23_N15
\G17|ram~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~3_combout\ = ( \rtl~11_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datac => \G17|ALT_INV_ram~3_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~3_combout\);

-- Location: LABCELL_X81_Y23_N30
\G17|ram~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~333_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~3_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~19_combout\)))))) # (\G16|Mux13~2_combout\ & (\G16|Mux15~2_combout\)) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~35_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~51_combout\)))))) # (\G16|Mux13~2_combout\ & (\G16|Mux15~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~35_combout\,
	datad => \G17|ALT_INV_ram~51_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~19_combout\,
	datag => \G17|ALT_INV_ram~3_combout\,
	combout => \G17|ram~333_combout\);

-- Location: MLABCELL_X84_Y23_N0
\G17|ram~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~99_combout\ = ( \rtl~4_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~99_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datad => \G17|ALT_INV_ram~99_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~99_combout\);

-- Location: MLABCELL_X84_Y23_N57
\G17|ram~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~115_combout\ = ( \rtl~2_combout\ & ( \G18|SAIDA[3]~22_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~115_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datad => \G17|ALT_INV_ram~115_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~115_combout\);

-- Location: MLABCELL_X84_Y23_N15
\G17|ram~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~83_combout\ = ( \G17|ram~83_combout\ & ( (!\rtl~1_combout\) # (\G18|SAIDA[3]~22_combout\) ) ) # ( !\G17|ram~83_combout\ & ( (\G18|SAIDA[3]~22_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~83_combout\,
	combout => \G17|ram~83_combout\);

-- Location: MLABCELL_X84_Y23_N6
\G17|ram~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~67_combout\ = ( \G17|ram~67_combout\ & ( (!\rtl~3_combout\) # (\G18|SAIDA[3]~22_combout\) ) ) # ( !\G17|ram~67_combout\ & ( (\G18|SAIDA[3]~22_combout\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[3]~22_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G17|ALT_INV_ram~67_combout\,
	combout => \G17|ram~67_combout\);

-- Location: MLABCELL_X84_Y23_N18
\G17|ram~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~293_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (\G17|ram~333_combout\)) # (\G16|Mux13~2_combout\ & ((!\G17|ram~333_combout\ & (\G17|ram~67_combout\)) # (\G17|ram~333_combout\ & (((\G17|ram~83_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (\G17|ram~333_combout\)) # (\G16|Mux13~2_combout\ & ((!\G17|ram~333_combout\ & (\G17|ram~99_combout\)) # (\G17|ram~333_combout\ & (((\G17|ram~115_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000100110001001100011011100110111001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~333_combout\,
	datac => \G17|ALT_INV_ram~99_combout\,
	datad => \G17|ALT_INV_ram~115_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~83_combout\,
	datag => \G17|ALT_INV_ram~67_combout\,
	combout => \G17|ram~293_combout\);

-- Location: LABCELL_X85_Y23_N57
\G18|SAIDA[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[3]~21_combout\ = ( \G17|ram~293_combout\ & ( (((\rtl~17_combout\ & \G17|ram~289_combout\)) # (\G18|SAIDA[1]~12_combout\)) # (\G18|SAIDA[3]~20_combout\) ) ) # ( !\G17|ram~293_combout\ & ( ((\rtl~17_combout\ & \G17|ram~289_combout\)) # 
-- (\G18|SAIDA[3]~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[3]~20_combout\,
	datab => \ALT_INV_rtl~17_combout\,
	datac => \G18|ALT_INV_SAIDA[1]~12_combout\,
	datad => \G17|ALT_INV_ram~289_combout\,
	dataf => \G17|ALT_INV_ram~293_combout\,
	combout => \G18|SAIDA[3]~21_combout\);

-- Location: LABCELL_X83_Y21_N51
\G16|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~1_combout\ = ( \G4|tipoi[3]~3_combout\ & ( (\Clock_Sistema~input_o\ & (\G16|Mux1~3_combout\ & ((\G5|aluSRC~combout\) # (\G18|SAIDA[3]~21_combout\)))) ) ) # ( !\G4|tipoi[3]~3_combout\ & ( (\Clock_Sistema~input_o\ & (\G18|SAIDA[3]~21_combout\ & 
-- \G16|Mux1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[3]~21_combout\,
	datac => \G5|ALT_INV_aluSRC~combout\,
	datad => \G16|ALT_INV_Mux1~3_combout\,
	dataf => \G4|ALT_INV_tipoi[3]~3_combout\,
	combout => \G16|Mux12~1_combout\);

-- Location: MLABCELL_X84_Y22_N3
\G16|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~2_combout\ = ( \G16|Mux1~1_combout\ & ( ((\G16|Mux1~0_combout\ & \G16|Add1~32_sumout\)) # (\G16|Mux12~1_combout\) ) ) # ( !\G16|Mux1~1_combout\ & ( ((\G16|Add0~62_sumout\ & \G16|Mux1~0_combout\)) # (\G16|Mux12~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~62_sumout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datac => \G16|ALT_INV_Add1~32_sumout\,
	datad => \G16|ALT_INV_Mux12~1_combout\,
	dataf => \G16|ALT_INV_Mux1~1_combout\,
	combout => \G16|Mux12~2_combout\);

-- Location: MLABCELL_X82_Y22_N57
\G18|SAIDA[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~12_combout\ = ( !\G5|memparareg~combout\ & ( (!\G16|Mux12~2_combout\ & !\G16|Mux11~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G16|ALT_INV_Mux11~2_combout\,
	dataf => \G5|ALT_INV_memparareg~combout\,
	combout => \G18|SAIDA[1]~12_combout\);

-- Location: LABCELL_X83_Y26_N0
\G18|SAIDA[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[2]~19_combout\ = (\G18|SAIDA[2]~18_combout\ & \Clock_Sistema~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[2]~18_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA[2]~19_combout\);

-- Location: MLABCELL_X82_Y23_N9
\G17|ram~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~210_combout\ = (!\rtl~5_combout\ & ((\G17|ram~210_combout\))) # (\rtl~5_combout\ & (\G18|SAIDA[2]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datac => \G17|ALT_INV_ram~210_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~210_combout\);

-- Location: MLABCELL_X82_Y23_N30
\G17|ram~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~226_combout\ = ( \G17|ram~226_combout\ & ( (!\rtl~8_combout\) # (\G18|SAIDA[2]~19_combout\) ) ) # ( !\G17|ram~226_combout\ & ( (\G18|SAIDA[2]~19_combout\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~226_combout\,
	combout => \G17|ram~226_combout\);

-- Location: MLABCELL_X82_Y23_N21
\G17|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~146_combout\ = ( \rtl~13_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~146_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datad => \G17|ALT_INV_ram~146_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~146_combout\);

-- Location: MLABCELL_X82_Y23_N27
\G17|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~162_combout\ = ( \rtl~16_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~162_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datad => \G17|ALT_INV_ram~162_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~162_combout\);

-- Location: MLABCELL_X82_Y23_N12
\G17|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~178_combout\ = ( \rtl~14_combout\ & ( \G17|ram~178_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) ) # ( !\rtl~14_combout\ & ( \G17|ram~178_combout\ ) ) # ( \rtl~14_combout\ & ( !\G17|ram~178_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datae => \ALT_INV_rtl~14_combout\,
	dataf => \G17|ALT_INV_ram~178_combout\,
	combout => \G17|ram~178_combout\);

-- Location: MLABCELL_X82_Y23_N18
\G17|ram~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~130_combout\ = ( \rtl~15_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~130_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datac => \G17|ALT_INV_ram~130_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~130_combout\);

-- Location: MLABCELL_X82_Y23_N42
\G17|ram~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~325_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~130_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~146_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~162_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~178_combout\) # (\G16|Mux13~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram~146_combout\,
	datac => \G17|ALT_INV_ram~162_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~178_combout\,
	datag => \G17|ALT_INV_ram~130_combout\,
	combout => \G17|ram~325_combout\);

-- Location: MLABCELL_X82_Y23_N48
\G17|ram~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~242_combout\ = ( \rtl~6_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~242_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~242_combout\,
	datad => \G18|ALT_INV_SAIDA[2]~19_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~242_combout\);

-- Location: MLABCELL_X82_Y23_N39
\G17|ram~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~194_combout\ = ( \G17|ram~194_combout\ & ( (!\rtl~7_combout\) # (\G18|SAIDA[2]~19_combout\) ) ) # ( !\G17|ram~194_combout\ & ( (\G18|SAIDA[2]~19_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~194_combout\,
	combout => \G17|ram~194_combout\);

-- Location: MLABCELL_X82_Y23_N0
\G17|ram~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~285_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~325_combout\))))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~325_combout\ & (((\G17|ram~194_combout\)))) # (\G17|ram~325_combout\ & (\G17|ram~210_combout\)))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~325_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~325_combout\ & (\G17|ram~226_combout\)) # (\G17|ram~325_combout\ & ((\G17|ram~242_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110111011000001011010101000000101101110110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~210_combout\,
	datac => \G17|ALT_INV_ram~226_combout\,
	datad => \G17|ALT_INV_ram~325_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~242_combout\,
	datag => \G17|ALT_INV_ram~194_combout\,
	combout => \G17|ram~285_combout\);

-- Location: MLABCELL_X82_Y23_N33
\G17|ram~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~82_combout\ = ( \G17|ram~82_combout\ & ( (!\rtl~1_combout\) # (\G18|SAIDA[2]~19_combout\) ) ) # ( !\G17|ram~82_combout\ & ( (\G18|SAIDA[2]~19_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~82_combout\,
	combout => \G17|ram~82_combout\);

-- Location: LABCELL_X83_Y26_N3
\G17|ram~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~34_combout\ = ( \rtl~12_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datad => \G17|ALT_INV_ram~34_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~34_combout\);

-- Location: LABCELL_X83_Y26_N15
\G17|ram~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~50_combout\ = ( \rtl~10_combout\ & ( \G17|ram~50_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) ) # ( !\rtl~10_combout\ & ( \G17|ram~50_combout\ ) ) # ( \rtl~10_combout\ & ( !\G17|ram~50_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datae => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~50_combout\,
	combout => \G17|ram~50_combout\);

-- Location: LABCELL_X83_Y26_N18
\G17|ram~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~18_combout\ = ( \G17|ram~18_combout\ & ( (!\rtl~9_combout\) # (\G18|SAIDA[2]~19_combout\) ) ) # ( !\G17|ram~18_combout\ & ( (\G18|SAIDA[2]~19_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~18_combout\,
	combout => \G17|ram~18_combout\);

-- Location: LABCELL_X83_Y26_N54
\G17|ram~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~2_combout\ = ( \rtl~11_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) # ( !\rtl~11_combout\ & ( \G18|SAIDA[2]~19_combout\ & ( \G17|ram~2_combout\ ) ) ) # ( !\rtl~11_combout\ & ( !\G18|SAIDA[2]~19_combout\ & ( \G17|ram~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~2_combout\,
	datae => \ALT_INV_rtl~11_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~19_combout\,
	combout => \G17|ram~2_combout\);

-- Location: LABCELL_X83_Y26_N24
\G17|ram~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~321_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~2_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~18_combout\)))))) # (\G16|Mux13~2_combout\ & (\G16|Mux15~2_combout\)) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~34_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~50_combout\)))))) # (\G16|Mux13~2_combout\ & (\G16|Mux15~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~34_combout\,
	datad => \G17|ALT_INV_ram~50_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~18_combout\,
	datag => \G17|ALT_INV_ram~2_combout\,
	combout => \G17|ram~321_combout\);

-- Location: MLABCELL_X82_Y23_N51
\G17|ram~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~98_combout\ = ( \rtl~4_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~98_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~98_combout\,
	datab => \G18|ALT_INV_SAIDA[2]~19_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~98_combout\);

-- Location: MLABCELL_X82_Y23_N6
\G17|ram~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~114_combout\ = ( \G17|ram~114_combout\ & ( (!\rtl~2_combout\) # (\G18|SAIDA[2]~19_combout\) ) ) # ( !\G17|ram~114_combout\ & ( (\G18|SAIDA[2]~19_combout\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datac => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~114_combout\,
	combout => \G17|ram~114_combout\);

-- Location: MLABCELL_X82_Y23_N36
\G17|ram~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~66_combout\ = ( \rtl~3_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[2]~19_combout\,
	datad => \G17|ALT_INV_ram~66_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~66_combout\);

-- Location: MLABCELL_X82_Y23_N54
\G17|ram~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~281_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~321_combout\ & (((\G17|ram~66_combout\ & (\G16|Mux13~2_combout\))))) # (\G17|ram~321_combout\ & ((((!\G16|Mux13~2_combout\))) # (\G17|ram~82_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~321_combout\ & (\G17|ram~98_combout\ & (\G16|Mux13~2_combout\))) # (\G17|ram~321_combout\ & (((!\G16|Mux13~2_combout\) # (\G17|ram~114_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~82_combout\,
	datab => \G17|ALT_INV_ram~321_combout\,
	datac => \G17|ALT_INV_ram~98_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~114_combout\,
	datag => \G17|ALT_INV_ram~66_combout\,
	combout => \G17|ram~281_combout\);

-- Location: MLABCELL_X82_Y22_N39
\G17|ram~258\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~258_combout\ = ( \rtl~0_combout\ & ( \G18|SAIDA[2]~19_combout\ ) ) # ( !\rtl~0_combout\ & ( \G17|ram~258_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~258_combout\,
	datac => \G18|ALT_INV_SAIDA[2]~19_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~258_combout\);

-- Location: MLABCELL_X82_Y22_N54
\G18|SAIDA[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~16_combout\ = ( \G17|ram~280_combout\ & ( (!\G16|Mux12~2_combout\ & (!\G16|Mux14~1_combout\ & \G16|Mux11~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G16|ALT_INV_Mux11~2_combout\,
	dataf => \G17|ALT_INV_ram~280_combout\,
	combout => \G18|SAIDA[1]~16_combout\);

-- Location: MLABCELL_X82_Y22_N36
\G18|SAIDA[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[2]~17_combout\ = ( \G5|memparareg~combout\ & ( \G16|Mux13~2_combout\ ) ) # ( !\G5|memparareg~combout\ & ( (\G17|ram~258_combout\ & \G18|SAIDA[1]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~258_combout\,
	datac => \G16|ALT_INV_Mux13~2_combout\,
	datad => \G18|ALT_INV_SAIDA[1]~16_combout\,
	dataf => \G5|ALT_INV_memparareg~combout\,
	combout => \G18|SAIDA[2]~17_combout\);

-- Location: MLABCELL_X82_Y23_N24
\G18|SAIDA[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[2]~18_combout\ = ( \G18|SAIDA[2]~17_combout\ ) # ( !\G18|SAIDA[2]~17_combout\ & ( (!\G18|SAIDA[1]~12_combout\ & (\G18|SAIDA[1]~13_combout\ & (\G17|ram~285_combout\))) # (\G18|SAIDA[1]~12_combout\ & (((\G18|SAIDA[1]~13_combout\ & 
-- \G17|ram~285_combout\)) # (\G17|ram~281_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[1]~12_combout\,
	datab => \G18|ALT_INV_SAIDA[1]~13_combout\,
	datac => \G17|ALT_INV_ram~285_combout\,
	datad => \G17|ALT_INV_ram~281_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~17_combout\,
	combout => \G18|SAIDA[2]~18_combout\);

-- Location: MLABCELL_X84_Y21_N54
\G16|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~1_combout\ = ( \G4|tipoi[2]~2_combout\ & ( (\G16|Mux1~3_combout\ & (\Clock_Sistema~input_o\ & ((\G5|aluSRC~combout\) # (\G18|SAIDA[2]~18_combout\)))) ) ) # ( !\G4|tipoi[2]~2_combout\ & ( (\G18|SAIDA[2]~18_combout\ & (\G16|Mux1~3_combout\ & 
-- \Clock_Sistema~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[2]~18_combout\,
	datab => \G16|ALT_INV_Mux1~3_combout\,
	datac => \G5|ALT_INV_aluSRC~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_tipoi[2]~2_combout\,
	combout => \G16|Mux13~1_combout\);

-- Location: MLABCELL_X84_Y22_N12
\G16|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~2_combout\ = ( \G16|Mux1~1_combout\ & ( ((\G16|Mux1~0_combout\ & \G16|Add1~56_sumout\)) # (\G16|Mux13~1_combout\) ) ) # ( !\G16|Mux1~1_combout\ & ( ((\G16|Mux1~0_combout\ & \G16|Add0~74_sumout\)) # (\G16|Mux13~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~1_combout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datac => \G16|ALT_INV_Add1~56_sumout\,
	datad => \G16|ALT_INV_Add0~74_sumout\,
	dataf => \G16|ALT_INV_Mux1~1_combout\,
	combout => \G16|Mux13~2_combout\);

-- Location: LABCELL_X85_Y25_N21
\G17|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~144_combout\ = ( \rtl~13_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~144_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datad => \G17|ALT_INV_ram~144_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~144_combout\);

-- Location: LABCELL_X85_Y25_N57
\G17|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~160_combout\ = ( \rtl~16_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~160_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datad => \G17|ALT_INV_ram~160_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~160_combout\);

-- Location: LABCELL_X85_Y25_N12
\G17|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~176_combout\ = ( \G17|ram~176_combout\ & ( (!\rtl~14_combout\) # (\G18|SAIDA[0]~28_combout\) ) ) # ( !\G17|ram~176_combout\ & ( (\G18|SAIDA[0]~28_combout\ & \rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G17|ALT_INV_ram~176_combout\,
	combout => \G17|ram~176_combout\);

-- Location: LABCELL_X85_Y25_N0
\G17|ram~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~128_combout\ = ( \G17|ram~128_combout\ & ( \rtl~15_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( !\G17|ram~128_combout\ & ( \rtl~15_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( \G17|ram~128_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datae => \G17|ALT_INV_ram~128_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~128_combout\);

-- Location: LABCELL_X85_Y25_N48
\G17|ram~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~433_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (((\G17|ram~128_combout\)))) # (\G16|Mux15~2_combout\ & (\G17|ram~144_combout\)))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (((!\G16|Mux15~2_combout\ & (\G17|ram~160_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~176_combout\)))))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001110111000010100101010100001010011101110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~144_combout\,
	datac => \G17|ALT_INV_ram~160_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~176_combout\,
	datag => \G17|ALT_INV_ram~128_combout\,
	combout => \G17|ram~433_combout\);

-- Location: LABCELL_X85_Y25_N39
\G17|ram~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~208_combout\ = ( \G17|ram~208_combout\ & ( (!\rtl~5_combout\) # (\G18|SAIDA[0]~28_combout\) ) ) # ( !\G17|ram~208_combout\ & ( (\rtl~5_combout\ & \G18|SAIDA[0]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~5_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	dataf => \G17|ALT_INV_ram~208_combout\,
	combout => \G17|ram~208_combout\);

-- Location: LABCELL_X85_Y25_N30
\G17|ram~224\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~224_combout\ = ( \rtl~8_combout\ & ( \G17|ram~224_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( !\rtl~8_combout\ & ( \G17|ram~224_combout\ ) ) # ( \rtl~8_combout\ & ( !\G17|ram~224_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datae => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~224_combout\,
	combout => \G17|ram~224_combout\);

-- Location: LABCELL_X85_Y25_N24
\G17|ram~240\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~240_combout\ = ( \rtl~6_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~240_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datac => \G17|ALT_INV_ram~240_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~240_combout\);

-- Location: LABCELL_X85_Y25_N45
\G17|ram~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~192_combout\ = ( \G17|ram~192_combout\ & ( \rtl~7_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( !\G17|ram~192_combout\ & ( \rtl~7_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( \G17|ram~192_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datae => \G17|ALT_INV_ram~192_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~192_combout\);

-- Location: LABCELL_X85_Y25_N6
\G17|ram~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~305_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~433_combout\ & (((\G17|ram~192_combout\ & (\G16|Mux13~2_combout\))))) # (\G17|ram~433_combout\ & ((((!\G16|Mux13~2_combout\))) # (\G17|ram~208_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~433_combout\ & (((\G17|ram~224_combout\ & (\G16|Mux13~2_combout\))))) # (\G17|ram~433_combout\ & ((((!\G16|Mux13~2_combout\) # (\G17|ram~240_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~433_combout\,
	datab => \G17|ALT_INV_ram~208_combout\,
	datac => \G17|ALT_INV_ram~224_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~240_combout\,
	datag => \G17|ALT_INV_ram~192_combout\,
	combout => \G17|ram~305_combout\);

-- Location: LABCELL_X80_Y24_N33
\G17|ram~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~112_combout\ = ( \rtl~2_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~112_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datad => \G17|ALT_INV_ram~112_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~112_combout\);

-- Location: LABCELL_X80_Y24_N54
\G17|ram~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~96_combout\ = ( \G17|ram~96_combout\ & ( \rtl~4_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( !\G17|ram~96_combout\ & ( \rtl~4_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( \G17|ram~96_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datae => \G17|ALT_INV_ram~96_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~96_combout\);

-- Location: LABCELL_X80_Y24_N51
\G17|ram~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~48_combout\ = ( \G17|ram~48_combout\ & ( \rtl~10_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( !\G17|ram~48_combout\ & ( \rtl~10_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( \G17|ram~48_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datae => \G17|ALT_INV_ram~48_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~48_combout\);

-- Location: LABCELL_X80_Y24_N21
\G17|ram~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~32_combout\ = ( \G17|ram~32_combout\ & ( \rtl~12_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( !\G17|ram~32_combout\ & ( \rtl~12_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( \G17|ram~32_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datae => \G17|ALT_INV_ram~32_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~32_combout\);

-- Location: LABCELL_X80_Y24_N42
\G17|ram~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~16_combout\ = ( \G17|ram~16_combout\ & ( (!\rtl~9_combout\) # (\G18|SAIDA[0]~28_combout\) ) ) # ( !\G17|ram~16_combout\ & ( (\G18|SAIDA[0]~28_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~16_combout\,
	combout => \G17|ram~16_combout\);

-- Location: LABCELL_X80_Y24_N36
\G17|ram~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~0_combout\ = ( \G17|ram~0_combout\ & ( (!\rtl~11_combout\) # (\G18|SAIDA[0]~28_combout\) ) ) # ( !\G17|ram~0_combout\ & ( (\G18|SAIDA[0]~28_combout\ & \rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G17|ALT_INV_ram~0_combout\,
	combout => \G17|ram~0_combout\);

-- Location: LABCELL_X80_Y24_N12
\G17|ram~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~437_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~2_combout\ & (\G17|ram~0_combout\ & (!\G16|Mux13~2_combout\))) # (\G16|Mux15~2_combout\ & (((\G17|ram~16_combout\) # (\G16|Mux13~2_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~32_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~48_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000111010011001100111111001100110001110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~48_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~32_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~16_combout\,
	datag => \G17|ALT_INV_ram~0_combout\,
	combout => \G17|ram~437_combout\);

-- Location: LABCELL_X80_Y24_N9
\G17|ram~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~80_combout\ = ( \G17|ram~80_combout\ & ( (!\rtl~1_combout\) # (\G18|SAIDA[0]~28_combout\) ) ) # ( !\G17|ram~80_combout\ & ( (\G18|SAIDA[0]~28_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~80_combout\,
	combout => \G17|ram~80_combout\);

-- Location: LABCELL_X80_Y24_N0
\G17|ram~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~64_combout\ = ( \G17|ram~64_combout\ & ( \rtl~3_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( !\G17|ram~64_combout\ & ( \rtl~3_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) ) # ( \G17|ram~64_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datae => \G17|ALT_INV_ram~64_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~64_combout\);

-- Location: LABCELL_X80_Y24_N24
\G17|ram~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~309_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~437_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~437_combout\ & (\G17|ram~64_combout\)) # (\G17|ram~437_combout\ & ((\G17|ram~80_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~437_combout\))))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~437_combout\ & (((\G17|ram~96_combout\)))) # (\G17|ram~437_combout\ & (\G17|ram~112_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001100000000111101110100000011111111110000001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~112_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~96_combout\,
	datad => \G17|ALT_INV_ram~437_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~80_combout\,
	datag => \G17|ALT_INV_ram~64_combout\,
	combout => \G17|ram~309_combout\);

-- Location: MLABCELL_X84_Y22_N57
\G18|SAIDA[0]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~26_combout\ = ( \G16|Mux11~2_combout\ & ( (\G17|ram~280_combout\ & !\G16|Mux14~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~280_combout\,
	datad => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \G18|SAIDA[0]~26_combout\);

-- Location: LABCELL_X85_Y22_N54
\G17|ram~256\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~256_combout\ = ( \rtl~0_combout\ & ( \G18|SAIDA[0]~28_combout\ ) ) # ( !\rtl~0_combout\ & ( \G17|ram~256_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[0]~28_combout\,
	datad => \G17|ALT_INV_ram~256_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~256_combout\);

-- Location: LABCELL_X85_Y22_N36
\G18|SAIDA[0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~27_combout\ = ( \G18|SAIDA[0]~26_combout\ & ( \G17|ram~256_combout\ & ( (!\G16|Mux12~2_combout\) # ((\G17|ram~305_combout\ & !\G16|Mux11~2_combout\)) ) ) ) # ( !\G18|SAIDA[0]~26_combout\ & ( \G17|ram~256_combout\ & ( (!\G16|Mux11~2_combout\ 
-- & ((!\G16|Mux12~2_combout\ & ((\G17|ram~309_combout\))) # (\G16|Mux12~2_combout\ & (\G17|ram~305_combout\)))) ) ) ) # ( \G18|SAIDA[0]~26_combout\ & ( !\G17|ram~256_combout\ & ( (!\G16|Mux11~2_combout\ & ((!\G16|Mux12~2_combout\ & 
-- ((\G17|ram~309_combout\))) # (\G16|Mux12~2_combout\ & (\G17|ram~305_combout\)))) ) ) ) # ( !\G18|SAIDA[0]~26_combout\ & ( !\G17|ram~256_combout\ & ( (!\G16|Mux11~2_combout\ & ((!\G16|Mux12~2_combout\ & ((\G17|ram~309_combout\))) # (\G16|Mux12~2_combout\ & 
-- (\G17|ram~305_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000110000010100001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~305_combout\,
	datab => \G17|ALT_INV_ram~309_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	datae => \G18|ALT_INV_SAIDA[0]~26_combout\,
	dataf => \G17|ALT_INV_ram~256_combout\,
	combout => \G18|SAIDA[0]~27_combout\);

-- Location: MLABCELL_X82_Y22_N15
\G18|SAIDA[0]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~28_combout\ = ( \Clock_Sistema~input_o\ & ( (!\G5|memparareg~combout\ & (\G18|SAIDA[0]~27_combout\)) # (\G5|memparareg~combout\ & ((\G16|Mux15~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~27_combout\,
	datac => \G16|ALT_INV_Mux15~2_combout\,
	datad => \G5|ALT_INV_memparareg~combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA[0]~28_combout\);

-- Location: MLABCELL_X87_Y21_N24
\G14|SAIDA[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[5]~12_combout\ = ( \G18|SAIDA[5]~30_combout\ & ( (\Clock_Sistema~input_o\ & !\G5|aluSRC~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G5|ALT_INV_aluSRC~combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~30_combout\,
	combout => \G14|SAIDA[5]~12_combout\);

-- Location: MLABCELL_X84_Y21_N15
\G16|Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~18_sumout\ = SUM(( \G14|SAIDA[5]~12_combout\ ) + ( \G18|SAIDA[5]~30_combout\ ) + ( \G16|Add0~67\ ))
-- \G16|Add0~19\ = CARRY(( \G14|SAIDA[5]~12_combout\ ) + ( \G18|SAIDA[5]~30_combout\ ) + ( \G16|Add0~67\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datad => \G14|ALT_INV_SAIDA[5]~12_combout\,
	cin => \G16|Add0~67\,
	sumout => \G16|Add0~18_sumout\,
	cout => \G16|Add0~19\);

-- Location: LABCELL_X85_Y21_N24
\G16|Add1~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~40_sumout\ = SUM(( \G18|SAIDA[5]~30_combout\ ) + ( !\G14|SAIDA[5]~12_combout\ ) + ( \G16|Add1~37\ ))
-- \G16|Add1~41\ = CARRY(( \G18|SAIDA[5]~30_combout\ ) + ( !\G14|SAIDA[5]~12_combout\ ) + ( \G16|Add1~37\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[5]~12_combout\,
	datad => \G18|ALT_INV_SAIDA[5]~30_combout\,
	cin => \G16|Add1~37\,
	sumout => \G16|Add1~40_sumout\,
	cout => \G16|Add1~41\);

-- Location: LABCELL_X83_Y21_N24
\G16|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~0_combout\ = ( \G18|SAIDA[5]~30_combout\ & ( (!\G16|Mux1~1_combout\ & (\G16|Add0~18_sumout\ & ((\G16|Mux1~0_combout\)))) # (\G16|Mux1~1_combout\ & (((!\G16|Mux1~0_combout\) # (\G16|Add1~40_sumout\)))) ) ) # ( !\G18|SAIDA[5]~30_combout\ & ( 
-- (\G16|Mux1~0_combout\ & ((!\G16|Mux1~1_combout\ & (\G16|Add0~18_sumout\)) # (\G16|Mux1~1_combout\ & ((\G16|Add1~40_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011100110011010001110011001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~18_sumout\,
	datab => \G16|ALT_INV_Mux1~1_combout\,
	datac => \G16|ALT_INV_Add1~40_sumout\,
	datad => \G16|ALT_INV_Mux1~0_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~30_combout\,
	combout => \G16|Mux10~0_combout\);

-- Location: LABCELL_X85_Y24_N18
\G17|ram~261\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~261_combout\ = ( \rtl~0_combout\ & ( \G17|ram~261_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) ) # ( !\rtl~0_combout\ & ( \G17|ram~261_combout\ ) ) # ( \rtl~0_combout\ & ( !\G17|ram~261_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datae => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~261_combout\,
	combout => \G17|ram~261_combout\);

-- Location: LABCELL_X85_Y23_N12
\G17|ram~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~117_combout\ = ( \G17|ram~117_combout\ & ( (!\rtl~2_combout\) # (\G18|SAIDA[5]~30_combout\) ) ) # ( !\G17|ram~117_combout\ & ( (\rtl~2_combout\ & \G18|SAIDA[5]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~2_combout\,
	datad => \G18|ALT_INV_SAIDA[5]~30_combout\,
	dataf => \G17|ALT_INV_ram~117_combout\,
	combout => \G17|ram~117_combout\);

-- Location: LABCELL_X85_Y24_N6
\G17|ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~85_combout\ = ( \rtl~1_combout\ & ( \G17|ram~85_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) ) # ( !\rtl~1_combout\ & ( \G17|ram~85_combout\ ) ) # ( \rtl~1_combout\ & ( !\G17|ram~85_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datae => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~85_combout\,
	combout => \G17|ram~85_combout\);

-- Location: LABCELL_X85_Y23_N30
\G17|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~101_combout\ = ( \G17|ram~101_combout\ & ( (!\rtl~4_combout\) # (\G18|SAIDA[5]~30_combout\) ) ) # ( !\G17|ram~101_combout\ & ( (\G18|SAIDA[5]~30_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datac => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~101_combout\,
	combout => \G17|ram~101_combout\);

-- Location: LABCELL_X85_Y23_N18
\G17|ram~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~21_combout\ = ( \rtl~9_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datac => \G17|ALT_INV_ram~21_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~21_combout\);

-- Location: LABCELL_X85_Y22_N27
\G17|ram~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~37_combout\ = ( \rtl~12_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~37_combout\,
	datad => \G18|ALT_INV_SAIDA[5]~30_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~37_combout\);

-- Location: LABCELL_X83_Y26_N36
\G17|ram~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~53_combout\ = ( \G17|ram~53_combout\ & ( \rtl~10_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) ) # ( !\G17|ram~53_combout\ & ( \rtl~10_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) ) # ( \G17|ram~53_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datae => \G17|ALT_INV_ram~53_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~53_combout\);

-- Location: LABCELL_X83_Y24_N12
\G17|ram~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~5_combout\ = ( \rtl~11_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~5_combout\,
	datad => \G18|ALT_INV_SAIDA[5]~30_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~5_combout\);

-- Location: MLABCELL_X84_Y22_N30
\G17|ram~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~445_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~5_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~21_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~37_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~53_combout\) # (\G16|Mux13~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram~21_combout\,
	datac => \G17|ALT_INV_ram~37_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~53_combout\,
	datag => \G17|ALT_INV_ram~5_combout\,
	combout => \G17|ram~445_combout\);

-- Location: LABCELL_X85_Y24_N3
\G17|ram~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~69_combout\ = ( \G17|ram~69_combout\ & ( \rtl~3_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) ) # ( !\G17|ram~69_combout\ & ( \rtl~3_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) ) # ( \G17|ram~69_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datae => \G17|ALT_INV_ram~69_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~69_combout\);

-- Location: MLABCELL_X84_Y22_N6
\G17|ram~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~349_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~445_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~445_combout\ & ((\G17|ram~69_combout\))) # (\G17|ram~445_combout\ & (\G17|ram~85_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~445_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~445_combout\ & ((\G17|ram~101_combout\))) # (\G17|ram~445_combout\ & (\G17|ram~117_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~117_combout\,
	datab => \G17|ALT_INV_ram~85_combout\,
	datac => \G17|ALT_INV_ram~101_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~445_combout\,
	datag => \G17|ALT_INV_ram~69_combout\,
	combout => \G17|ram~349_combout\);

-- Location: LABCELL_X85_Y23_N42
\G17|ram~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~213_combout\ = ( \G17|ram~213_combout\ & ( (!\rtl~5_combout\) # (\G18|SAIDA[5]~30_combout\) ) ) # ( !\G17|ram~213_combout\ & ( (\rtl~5_combout\ & \G18|SAIDA[5]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~5_combout\,
	datad => \G18|ALT_INV_SAIDA[5]~30_combout\,
	dataf => \G17|ALT_INV_ram~213_combout\,
	combout => \G17|ram~213_combout\);

-- Location: LABCELL_X83_Y24_N0
\G17|ram~245\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~245_combout\ = ( \rtl~6_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~245_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datad => \G17|ALT_INV_ram~245_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~245_combout\);

-- Location: LABCELL_X85_Y22_N6
\G17|ram~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~229_combout\ = ( \G17|ram~229_combout\ & ( (!\rtl~8_combout\) # (\G18|SAIDA[5]~30_combout\) ) ) # ( !\G17|ram~229_combout\ & ( (\G18|SAIDA[5]~30_combout\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~229_combout\,
	combout => \G17|ram~229_combout\);

-- Location: MLABCELL_X84_Y22_N0
\G17|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~149_combout\ = ( \rtl~13_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~149_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datad => \G17|ALT_INV_ram~149_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~149_combout\);

-- Location: MLABCELL_X84_Y22_N39
\G17|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~181_combout\ = ( \G17|ram~181_combout\ & ( (!\rtl~14_combout\) # (\G18|SAIDA[5]~30_combout\) ) ) # ( !\G17|ram~181_combout\ & ( (\rtl~14_combout\ & \G18|SAIDA[5]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~14_combout\,
	datad => \G18|ALT_INV_SAIDA[5]~30_combout\,
	dataf => \G17|ALT_INV_ram~181_combout\,
	combout => \G17|ram~181_combout\);

-- Location: MLABCELL_X84_Y22_N15
\G17|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~165_combout\ = ( \G18|SAIDA[5]~30_combout\ & ( (\rtl~16_combout\) # (\G17|ram~165_combout\) ) ) # ( !\G18|SAIDA[5]~30_combout\ & ( (\G17|ram~165_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~165_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~30_combout\,
	combout => \G17|ram~165_combout\);

-- Location: LABCELL_X83_Y24_N36
\G17|ram~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~133_combout\ = ( \rtl~15_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~133_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datad => \G17|ALT_INV_ram~133_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~133_combout\);

-- Location: MLABCELL_X84_Y22_N24
\G17|ram~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~441_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & ((\G17|ram~133_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~149_combout\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & ((\G17|ram~165_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~181_combout\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~149_combout\,
	datab => \G17|ALT_INV_ram~181_combout\,
	datac => \G17|ALT_INV_ram~165_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~133_combout\,
	combout => \G17|ram~441_combout\);

-- Location: LABCELL_X85_Y24_N45
\G17|ram~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~197_combout\ = ( \G17|ram~197_combout\ & ( \rtl~7_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) ) # ( !\G17|ram~197_combout\ & ( \rtl~7_combout\ & ( \G18|SAIDA[5]~30_combout\ ) ) ) # ( \G17|ram~197_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA[5]~30_combout\,
	datae => \G17|ALT_INV_ram~197_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~197_combout\);

-- Location: MLABCELL_X84_Y22_N42
\G17|ram~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~345_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~441_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~441_combout\ & ((\G17|ram~197_combout\))) # (\G17|ram~441_combout\ & (\G17|ram~213_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~441_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~441_combout\ & ((\G17|ram~229_combout\))) # (\G17|ram~441_combout\ & (\G17|ram~245_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~213_combout\,
	datab => \G17|ALT_INV_ram~245_combout\,
	datac => \G17|ALT_INV_ram~229_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~441_combout\,
	datag => \G17|ALT_INV_ram~197_combout\,
	combout => \G17|ram~345_combout\);

-- Location: MLABCELL_X84_Y22_N48
\G18|SAIDA[5]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[5]~29_combout\ = ( \G18|SAIDA[0]~26_combout\ & ( \G17|ram~345_combout\ & ( (!\G16|Mux12~2_combout\ & (((!\G16|Mux11~2_combout\ & \G17|ram~349_combout\)) # (\G17|ram~261_combout\))) # (\G16|Mux12~2_combout\ & (!\G16|Mux11~2_combout\)) ) ) ) # ( 
-- !\G18|SAIDA[0]~26_combout\ & ( \G17|ram~345_combout\ & ( (!\G16|Mux11~2_combout\ & ((\G17|ram~349_combout\) # (\G16|Mux12~2_combout\))) ) ) ) # ( \G18|SAIDA[0]~26_combout\ & ( !\G17|ram~345_combout\ & ( (!\G16|Mux12~2_combout\ & (((!\G16|Mux11~2_combout\ 
-- & \G17|ram~349_combout\)) # (\G17|ram~261_combout\))) ) ) ) # ( !\G18|SAIDA[0]~26_combout\ & ( !\G17|ram~345_combout\ & ( (!\G16|Mux12~2_combout\ & (!\G16|Mux11~2_combout\ & \G17|ram~349_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000010101000101001000100110011000100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G17|ALT_INV_ram~261_combout\,
	datad => \G17|ALT_INV_ram~349_combout\,
	datae => \G18|ALT_INV_SAIDA[0]~26_combout\,
	dataf => \G17|ALT_INV_ram~345_combout\,
	combout => \G18|SAIDA[5]~29_combout\);

-- Location: MLABCELL_X84_Y22_N54
\G18|SAIDA[5]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[5]~30_combout\ = ( \G18|SAIDA[5]~29_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G5|memparareg~combout\) # (\G16|Mux10~0_combout\))) ) ) # ( !\G18|SAIDA[5]~29_combout\ & ( (\Clock_Sistema~input_o\ & (\G5|memparareg~combout\ & 
-- \G16|Mux10~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_memparareg~combout\,
	datad => \G16|ALT_INV_Mux10~0_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~29_combout\,
	combout => \G18|SAIDA[5]~30_combout\);

-- Location: MLABCELL_X87_Y21_N57
\G14|SAIDA[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[6]~15_combout\ = ( \G18|SAIDA[6]~32_combout\ & ( \Clock_Sistema~input_o\ & ( !\G5|aluSRC~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G5|ALT_INV_aluSRC~combout\,
	datae => \G18|ALT_INV_SAIDA[6]~32_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA[6]~15_combout\);

-- Location: LABCELL_X85_Y21_N27
\G16|Add1~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~60_sumout\ = SUM(( \G18|SAIDA[6]~32_combout\ ) + ( !\G14|SAIDA[6]~15_combout\ ) + ( \G16|Add1~41\ ))
-- \G16|Add1~61\ = CARRY(( \G18|SAIDA[6]~32_combout\ ) + ( !\G14|SAIDA[6]~15_combout\ ) + ( \G16|Add1~41\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datad => \G18|ALT_INV_SAIDA[6]~32_combout\,
	cin => \G16|Add1~41\,
	sumout => \G16|Add1~60_sumout\,
	cout => \G16|Add1~61\);

-- Location: MLABCELL_X84_Y21_N18
\G16|Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~22_sumout\ = SUM(( \G18|SAIDA[6]~32_combout\ ) + ( \G14|SAIDA[6]~15_combout\ ) + ( \G16|Add0~19\ ))
-- \G16|Add0~23\ = CARRY(( \G18|SAIDA[6]~32_combout\ ) + ( \G14|SAIDA[6]~15_combout\ ) + ( \G16|Add0~19\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datad => \G18|ALT_INV_SAIDA[6]~32_combout\,
	cin => \G16|Add0~19\,
	sumout => \G16|Add0~22_sumout\,
	cout => \G16|Add0~23\);

-- Location: LABCELL_X83_Y21_N15
\G16|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~0_combout\ = ( \G16|Add0~22_sumout\ & ( (!\G16|Mux1~0_combout\ & (\G16|Mux1~1_combout\ & (\G18|SAIDA[6]~32_combout\))) # (\G16|Mux1~0_combout\ & ((!\G16|Mux1~1_combout\) # ((\G16|Add1~60_sumout\)))) ) ) # ( !\G16|Add0~22_sumout\ & ( 
-- (\G16|Mux1~1_combout\ & ((!\G16|Mux1~0_combout\ & (\G18|SAIDA[6]~32_combout\)) # (\G16|Mux1~0_combout\ & ((\G16|Add1~60_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~0_combout\,
	datab => \G16|ALT_INV_Mux1~1_combout\,
	datac => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datad => \G16|ALT_INV_Add1~60_sumout\,
	dataf => \G16|ALT_INV_Add0~22_sumout\,
	combout => \G16|Mux9~0_combout\);

-- Location: MLABCELL_X84_Y20_N15
\G17|ram~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~118_combout\ = ( \rtl~2_combout\ & ( \G17|ram~118_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) ) # ( !\rtl~2_combout\ & ( \G17|ram~118_combout\ ) ) # ( \rtl~2_combout\ & ( !\G17|ram~118_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datae => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~118_combout\,
	combout => \G17|ram~118_combout\);

-- Location: MLABCELL_X84_Y20_N42
\G17|ram~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~102_combout\ = ( \rtl~4_combout\ & ( \G17|ram~102_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) ) # ( !\rtl~4_combout\ & ( \G17|ram~102_combout\ ) ) # ( \rtl~4_combout\ & ( !\G17|ram~102_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datae => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~102_combout\,
	combout => \G17|ram~102_combout\);

-- Location: LABCELL_X83_Y26_N6
\G17|ram~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~54_combout\ = ( \G17|ram~54_combout\ & ( (!\rtl~10_combout\) # (\G18|SAIDA[6]~32_combout\) ) ) # ( !\G17|ram~54_combout\ & ( (\G18|SAIDA[6]~32_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~54_combout\,
	combout => \G17|ram~54_combout\);

-- Location: MLABCELL_X84_Y24_N15
\G17|ram~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~38_combout\ = ( \G17|ram~38_combout\ & ( (!\rtl~12_combout\) # (\G18|SAIDA[6]~32_combout\) ) ) # ( !\G17|ram~38_combout\ & ( (\rtl~12_combout\ & \G18|SAIDA[6]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~12_combout\,
	datad => \G18|ALT_INV_SAIDA[6]~32_combout\,
	dataf => \G17|ALT_INV_ram~38_combout\,
	combout => \G17|ram~38_combout\);

-- Location: LABCELL_X85_Y23_N6
\G17|ram~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~22_combout\ = ( \G17|ram~22_combout\ & ( \rtl~9_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) ) # ( !\G17|ram~22_combout\ & ( \rtl~9_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) ) # ( \G17|ram~22_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datae => \G17|ALT_INV_ram~22_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~22_combout\);

-- Location: MLABCELL_X84_Y24_N6
\G17|ram~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~6_combout\ = ( \G17|ram~6_combout\ & ( (!\rtl~11_combout\) # (\G18|SAIDA[6]~32_combout\) ) ) # ( !\G17|ram~6_combout\ & ( (\rtl~11_combout\ & \G18|SAIDA[6]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~11_combout\,
	datad => \G18|ALT_INV_SAIDA[6]~32_combout\,
	dataf => \G17|ALT_INV_ram~6_combout\,
	combout => \G17|ram~6_combout\);

-- Location: LABCELL_X85_Y22_N12
\G17|ram~453\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~453_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (((!\G16|Mux15~2_combout\ & (\G17|ram~6_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~22_combout\)))))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~38_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~54_combout\))))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001010101111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~54_combout\,
	datac => \G17|ALT_INV_ram~38_combout\,
	datad => \G17|ALT_INV_ram~22_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~6_combout\,
	combout => \G17|ram~453_combout\);

-- Location: LABCELL_X81_Y24_N18
\G17|ram~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~86_combout\ = ( \rtl~1_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~86_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datac => \G17|ALT_INV_ram~86_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~86_combout\);

-- Location: LABCELL_X81_Y24_N27
\G17|ram~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~70_combout\ = ( \G17|ram~70_combout\ & ( (!\rtl~3_combout\) # (\G18|SAIDA[6]~32_combout\) ) ) # ( !\G17|ram~70_combout\ & ( (\rtl~3_combout\ & \G18|SAIDA[6]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~3_combout\,
	datac => \G18|ALT_INV_SAIDA[6]~32_combout\,
	dataf => \G17|ALT_INV_ram~70_combout\,
	combout => \G17|ram~70_combout\);

-- Location: LABCELL_X85_Y22_N0
\G17|ram~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~357_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~453_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~453_combout\ & (\G17|ram~70_combout\)) # (\G17|ram~453_combout\ & ((\G17|ram~86_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~453_combout\))))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~453_combout\ & (((\G17|ram~102_combout\)))) # (\G17|ram~453_combout\ & (\G17|ram~118_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101010000001011011101100000101111111110000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~118_combout\,
	datac => \G17|ALT_INV_ram~102_combout\,
	datad => \G17|ALT_INV_ram~453_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~86_combout\,
	datag => \G17|ALT_INV_ram~70_combout\,
	combout => \G17|ram~357_combout\);

-- Location: LABCELL_X85_Y24_N39
\G17|ram~262\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~262_combout\ = ( \rtl~0_combout\ & ( \G17|ram~262_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) ) # ( !\rtl~0_combout\ & ( \G17|ram~262_combout\ ) ) # ( \rtl~0_combout\ & ( !\G17|ram~262_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datae => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~262_combout\,
	combout => \G17|ram~262_combout\);

-- Location: LABCELL_X85_Y23_N39
\G17|ram~246\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~246_combout\ = ( \G17|ram~246_combout\ & ( (!\rtl~6_combout\) # (\G18|SAIDA[6]~32_combout\) ) ) # ( !\G17|ram~246_combout\ & ( (\G18|SAIDA[6]~32_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~246_combout\,
	combout => \G17|ram~246_combout\);

-- Location: LABCELL_X85_Y24_N12
\G17|ram~230\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~230_combout\ = ( \rtl~8_combout\ & ( \G17|ram~230_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) ) # ( !\rtl~8_combout\ & ( \G17|ram~230_combout\ ) ) # ( \rtl~8_combout\ & ( !\G17|ram~230_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datae => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~230_combout\,
	combout => \G17|ram~230_combout\);

-- Location: LABCELL_X85_Y23_N3
\G17|ram~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~214_combout\ = ( \G17|ram~214_combout\ & ( \rtl~5_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) ) # ( !\G17|ram~214_combout\ & ( \rtl~5_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) ) # ( \G17|ram~214_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datae => \G17|ALT_INV_ram~214_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~214_combout\);

-- Location: LABCELL_X85_Y22_N24
\G17|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~182_combout\ = ( \G17|ram~182_combout\ & ( (!\rtl~14_combout\) # (\G18|SAIDA[6]~32_combout\) ) ) # ( !\G17|ram~182_combout\ & ( (\G18|SAIDA[6]~32_combout\ & \rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datac => \ALT_INV_rtl~14_combout\,
	dataf => \G17|ALT_INV_ram~182_combout\,
	combout => \G17|ram~182_combout\);

-- Location: LABCELL_X85_Y22_N9
\G17|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~150_combout\ = ( \G18|SAIDA[6]~32_combout\ & ( (\G17|ram~150_combout\) # (\rtl~13_combout\) ) ) # ( !\G18|SAIDA[6]~32_combout\ & ( (!\rtl~13_combout\ & \G17|ram~150_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~13_combout\,
	datac => \G17|ALT_INV_ram~150_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~32_combout\,
	combout => \G17|ram~150_combout\);

-- Location: LABCELL_X85_Y22_N48
\G17|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~166_combout\ = ( \rtl~16_combout\ & ( \G18|SAIDA[6]~32_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~166_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~166_combout\,
	datac => \G18|ALT_INV_SAIDA[6]~32_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~166_combout\);

-- Location: LABCELL_X85_Y22_N51
\G17|ram~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~134_combout\ = ( \G17|ram~134_combout\ & ( (!\rtl~15_combout\) # (\G18|SAIDA[6]~32_combout\) ) ) # ( !\G17|ram~134_combout\ & ( (\G18|SAIDA[6]~32_combout\ & \rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G17|ALT_INV_ram~134_combout\,
	combout => \G17|ram~134_combout\);

-- Location: LABCELL_X85_Y22_N18
\G17|ram~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~449_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & ((\G17|ram~134_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~150_combout\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & ((\G17|ram~166_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~182_combout\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~182_combout\,
	datab => \G17|ALT_INV_ram~150_combout\,
	datac => \G17|ALT_INV_ram~166_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~134_combout\,
	combout => \G17|ram~449_combout\);

-- Location: LABCELL_X85_Y24_N30
\G17|ram~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~198_combout\ = ( \G17|ram~198_combout\ & ( (!\rtl~7_combout\) # (\G18|SAIDA[6]~32_combout\) ) ) # ( !\G17|ram~198_combout\ & ( (\G18|SAIDA[6]~32_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[6]~32_combout\,
	datac => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~198_combout\,
	combout => \G17|ram~198_combout\);

-- Location: LABCELL_X85_Y22_N30
\G17|ram~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~353_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~449_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~449_combout\ & (\G17|ram~198_combout\)) # (\G17|ram~449_combout\ & ((\G17|ram~214_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~449_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~449_combout\ & ((\G17|ram~230_combout\))) # (\G17|ram~449_combout\ & (\G17|ram~246_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~246_combout\,
	datac => \G17|ALT_INV_ram~230_combout\,
	datad => \G17|ALT_INV_ram~214_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~449_combout\,
	datag => \G17|ALT_INV_ram~198_combout\,
	combout => \G17|ram~353_combout\);

-- Location: LABCELL_X85_Y22_N42
\G18|SAIDA[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[6]~31_combout\ = ( !\G16|Mux11~2_combout\ & ( \G16|Mux12~2_combout\ & ( \G17|ram~353_combout\ ) ) ) # ( \G16|Mux11~2_combout\ & ( !\G16|Mux12~2_combout\ & ( (\G18|SAIDA[0]~26_combout\ & \G17|ram~262_combout\) ) ) ) # ( !\G16|Mux11~2_combout\ & 
-- ( !\G16|Mux12~2_combout\ & ( ((\G18|SAIDA[0]~26_combout\ & \G17|ram~262_combout\)) # (\G17|ram~357_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111000000110000001100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~357_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~26_combout\,
	datac => \G17|ALT_INV_ram~262_combout\,
	datad => \G17|ALT_INV_ram~353_combout\,
	datae => \G16|ALT_INV_Mux11~2_combout\,
	dataf => \G16|ALT_INV_Mux12~2_combout\,
	combout => \G18|SAIDA[6]~31_combout\);

-- Location: LABCELL_X85_Y22_N57
\G18|SAIDA[6]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[6]~32_combout\ = ( \G18|SAIDA[6]~31_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G5|memparareg~combout\) # (\G16|Mux9~0_combout\))) ) ) # ( !\G18|SAIDA[6]~31_combout\ & ( (\G5|memparareg~combout\ & (\Clock_Sistema~input_o\ & 
-- \G16|Mux9~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G16|ALT_INV_Mux9~0_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~31_combout\,
	combout => \G18|SAIDA[6]~32_combout\);

-- Location: LABCELL_X85_Y23_N51
\G17|ram~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~23_combout\ = ( \G17|ram~23_combout\ & ( \rtl~9_combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) ) # ( !\G17|ram~23_combout\ & ( \rtl~9_combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) ) # ( \G17|ram~23_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datae => \G17|ALT_INV_ram~23_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~23_combout\);

-- Location: LABCELL_X83_Y22_N33
\G17|ram~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~39_combout\ = ( \G17|ram~39_combout\ & ( (!\rtl~12_combout\) # (\G18|SAIDA[7]~34_combout\) ) ) # ( !\G17|ram~39_combout\ & ( (\G18|SAIDA[7]~34_combout\ & \rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G17|ALT_INV_ram~39_combout\,
	combout => \G17|ram~39_combout\);

-- Location: LABCELL_X83_Y22_N30
\G17|ram~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~55_combout\ = ( \rtl~10_combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~55_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~55_combout\,
	datad => \G18|ALT_INV_SAIDA[7]~34_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~55_combout\);

-- Location: LABCELL_X83_Y24_N42
\G17|ram~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~7_combout\ = ( \rtl~11_combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datab => \G17|ALT_INV_ram~7_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~7_combout\);

-- Location: LABCELL_X83_Y22_N18
\G17|ram~461\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~461_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~7_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~23_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (\G17|ram~39_combout\ & ((!\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\) # (\G17|ram~55_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~23_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~39_combout\,
	datad => \G17|ALT_INV_ram~55_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~7_combout\,
	combout => \G17|ram~461_combout\);

-- Location: LABCELL_X81_Y24_N12
\G17|ram~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~87_combout\ = ( \G17|ram~87_combout\ & ( (!\rtl~1_combout\) # (\G18|SAIDA[7]~34_combout\) ) ) # ( !\G17|ram~87_combout\ & ( (\rtl~1_combout\ & \G18|SAIDA[7]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~1_combout\,
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	dataf => \G17|ALT_INV_ram~87_combout\,
	combout => \G17|ram~87_combout\);

-- Location: LABCELL_X83_Y22_N42
\G17|ram~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~103_combout\ = ( \G17|ram~103_combout\ & ( (!\rtl~4_combout\) # (\G18|SAIDA[7]~34_combout\) ) ) # ( !\G17|ram~103_combout\ & ( (\rtl~4_combout\ & \G18|SAIDA[7]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~4_combout\,
	datad => \G18|ALT_INV_SAIDA[7]~34_combout\,
	dataf => \G17|ALT_INV_ram~103_combout\,
	combout => \G17|ram~103_combout\);

-- Location: LABCELL_X83_Y22_N45
\G17|ram~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~119_combout\ = ( \rtl~2_combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~119_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~119_combout\,
	datad => \G18|ALT_INV_SAIDA[7]~34_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~119_combout\);

-- Location: LABCELL_X81_Y24_N24
\G17|ram~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~71_combout\ = ( \G17|ram~71_combout\ & ( (!\rtl~3_combout\) # (\G18|SAIDA[7]~34_combout\) ) ) # ( !\G17|ram~71_combout\ & ( (\rtl~3_combout\ & \G18|SAIDA[7]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~3_combout\,
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	dataf => \G17|ALT_INV_ram~71_combout\,
	combout => \G17|ram~71_combout\);

-- Location: LABCELL_X83_Y22_N54
\G17|ram~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~365_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~461_combout\ & (((\G17|ram~71_combout\ & ((\G16|Mux13~2_combout\)))))) # (\G17|ram~461_combout\ & ((((!\G16|Mux13~2_combout\))) # (\G17|ram~87_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~461_combout\ & (((\G17|ram~103_combout\ & ((\G16|Mux13~2_combout\)))))) # (\G17|ram~461_combout\ & ((((!\G16|Mux13~2_combout\) # (\G17|ram~119_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100011011000110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~461_combout\,
	datab => \G17|ALT_INV_ram~87_combout\,
	datac => \G17|ALT_INV_ram~103_combout\,
	datad => \G17|ALT_INV_ram~119_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~71_combout\,
	combout => \G17|ram~365_combout\);

-- Location: LABCELL_X83_Y22_N48
\G17|ram~215\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~215_combout\ = ( \rtl~5_combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~215_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datac => \G17|ALT_INV_ram~215_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~215_combout\);

-- Location: LABCELL_X83_Y22_N51
\G17|ram~231\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~231_combout\ = ( \G17|ram~231_combout\ & ( (!\rtl~8_combout\) # (\G18|SAIDA[7]~34_combout\) ) ) # ( !\G17|ram~231_combout\ & ( (\G18|SAIDA[7]~34_combout\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~231_combout\,
	combout => \G17|ram~231_combout\);

-- Location: LABCELL_X83_Y22_N9
\G17|ram~247\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~247_combout\ = ( \G17|ram~247_combout\ & ( (!\rtl~6_combout\) # (\G18|SAIDA[7]~34_combout\) ) ) # ( !\G17|ram~247_combout\ & ( (\G18|SAIDA[7]~34_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~247_combout\,
	combout => \G17|ram~247_combout\);

-- Location: LABCELL_X83_Y22_N36
\G17|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~183_combout\ = ( \rtl~14_combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~183_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datac => \G17|ALT_INV_ram~183_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~183_combout\);

-- Location: LABCELL_X83_Y22_N39
\G17|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~151_combout\ = ( \G17|ram~151_combout\ & ( (!\rtl~13_combout\) # (\G18|SAIDA[7]~34_combout\) ) ) # ( !\G17|ram~151_combout\ & ( (\G18|SAIDA[7]~34_combout\ & \rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G17|ALT_INV_ram~151_combout\,
	combout => \G17|ram~151_combout\);

-- Location: LABCELL_X83_Y22_N6
\G17|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~167_combout\ = ( \G17|ram~167_combout\ & ( (!\rtl~16_combout\) # (\G18|SAIDA[7]~34_combout\) ) ) # ( !\G17|ram~167_combout\ & ( (\rtl~16_combout\ & \G18|SAIDA[7]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~16_combout\,
	datad => \G18|ALT_INV_SAIDA[7]~34_combout\,
	dataf => \G17|ALT_INV_ram~167_combout\,
	combout => \G17|ram~167_combout\);

-- Location: LABCELL_X83_Y22_N0
\G17|ram~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~135_combout\ = ( \rtl~15_combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~135_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~135_combout\,
	datad => \G18|ALT_INV_SAIDA[7]~34_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~135_combout\);

-- Location: LABCELL_X83_Y22_N12
\G17|ram~457\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~457_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~2_combout\ & (((\G17|ram~135_combout\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~151_combout\)))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (((\G17|ram~167_combout\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~183_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~183_combout\,
	datab => \G17|ALT_INV_ram~151_combout\,
	datac => \G17|ALT_INV_ram~167_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~135_combout\,
	combout => \G17|ram~457_combout\);

-- Location: LABCELL_X83_Y22_N3
\G17|ram~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~199_combout\ = ( \rtl~7_combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~199_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datad => \G17|ALT_INV_ram~199_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~199_combout\);

-- Location: LABCELL_X83_Y22_N24
\G17|ram~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~361_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~457_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~457_combout\ & ((\G17|ram~199_combout\))) # (\G17|ram~457_combout\ & (\G17|ram~215_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~457_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~457_combout\ & (\G17|ram~231_combout\)) # (\G17|ram~457_combout\ & ((\G17|ram~247_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~215_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~231_combout\,
	datad => \G17|ALT_INV_ram~247_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~457_combout\,
	datag => \G17|ALT_INV_ram~199_combout\,
	combout => \G17|ram~361_combout\);

-- Location: MLABCELL_X82_Y22_N45
\G18|SAIDA[7]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[7]~33_combout\ = ( \G17|ram~361_combout\ & ( (!\G16|Mux11~2_combout\ & ((\G17|ram~365_combout\) # (\G16|Mux12~2_combout\))) ) ) # ( !\G17|ram~361_combout\ & ( (!\G16|Mux12~2_combout\ & (!\G16|Mux11~2_combout\ & \G17|ram~365_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G17|ALT_INV_ram~365_combout\,
	dataf => \G17|ALT_INV_ram~361_combout\,
	combout => \G18|SAIDA[7]~33_combout\);

-- Location: LABCELL_X83_Y24_N39
\G17|ram~263\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~263_combout\ = ( \G17|ram~263_combout\ & ( (!\rtl~0_combout\) # (\G18|SAIDA[7]~34_combout\) ) ) # ( !\G17|ram~263_combout\ & ( (\rtl~0_combout\ & \G18|SAIDA[7]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~0_combout\,
	datad => \G18|ALT_INV_SAIDA[7]~34_combout\,
	dataf => \G17|ALT_INV_ram~263_combout\,
	combout => \G17|ram~263_combout\);

-- Location: LABCELL_X85_Y23_N24
\G14|SAIDA[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[7]~16_combout\ = ( \Clock_Sistema~input_o\ & ( !\G5|aluSRC~combout\ & ( \G18|SAIDA[7]~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G5|ALT_INV_aluSRC~combout\,
	combout => \G14|SAIDA[7]~16_combout\);

-- Location: MLABCELL_X84_Y21_N21
\G16|Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~26_sumout\ = SUM(( \G18|SAIDA[7]~34_combout\ ) + ( \G14|SAIDA[7]~16_combout\ ) + ( \G16|Add0~23\ ))
-- \G16|Add0~27\ = CARRY(( \G18|SAIDA[7]~34_combout\ ) + ( \G14|SAIDA[7]~16_combout\ ) + ( \G16|Add0~23\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[7]~16_combout\,
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	cin => \G16|Add0~23\,
	sumout => \G16|Add0~26_sumout\,
	cout => \G16|Add0~27\);

-- Location: LABCELL_X85_Y21_N30
\G16|Add1~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~64_sumout\ = SUM(( !\G14|SAIDA[7]~16_combout\ ) + ( \G18|SAIDA[7]~34_combout\ ) + ( \G16|Add1~61\ ))
-- \G16|Add1~65\ = CARRY(( !\G14|SAIDA[7]~16_combout\ ) + ( \G18|SAIDA[7]~34_combout\ ) + ( \G16|Add1~61\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datad => \G14|ALT_INV_SAIDA[7]~16_combout\,
	cin => \G16|Add1~61\,
	sumout => \G16|Add1~64_sumout\,
	cout => \G16|Add1~65\);

-- Location: MLABCELL_X82_Y21_N27
\G16|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux8~0_combout\ = ( \G16|Add1~64_sumout\ & ( (!\G16|Mux1~1_combout\ & (\G16|Mux1~0_combout\ & ((\G16|Add0~26_sumout\)))) # (\G16|Mux1~1_combout\ & (((\G18|SAIDA[7]~34_combout\)) # (\G16|Mux1~0_combout\))) ) ) # ( !\G16|Add1~64_sumout\ & ( 
-- (!\G16|Mux1~1_combout\ & (\G16|Mux1~0_combout\ & ((\G16|Add0~26_sumout\)))) # (\G16|Mux1~1_combout\ & (!\G16|Mux1~0_combout\ & (\G18|SAIDA[7]~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~1_combout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datac => \G18|ALT_INV_SAIDA[7]~34_combout\,
	datad => \G16|ALT_INV_Add0~26_sumout\,
	dataf => \G16|ALT_INV_Add1~64_sumout\,
	combout => \G16|Mux8~0_combout\);

-- Location: MLABCELL_X82_Y22_N24
\G18|SAIDA[7]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[7]~34_combout\ = ( \G16|Mux8~0_combout\ & ( \G18|SAIDA[1]~16_combout\ & ( (\Clock_Sistema~input_o\ & (((\G17|ram~263_combout\) # (\G18|SAIDA[7]~33_combout\)) # (\G5|memparareg~combout\))) ) ) ) # ( !\G16|Mux8~0_combout\ & ( 
-- \G18|SAIDA[1]~16_combout\ & ( (!\G5|memparareg~combout\ & (\Clock_Sistema~input_o\ & ((\G17|ram~263_combout\) # (\G18|SAIDA[7]~33_combout\)))) ) ) ) # ( \G16|Mux8~0_combout\ & ( !\G18|SAIDA[1]~16_combout\ & ( (\Clock_Sistema~input_o\ & 
-- ((\G18|SAIDA[7]~33_combout\) # (\G5|memparareg~combout\))) ) ) ) # ( !\G16|Mux8~0_combout\ & ( !\G18|SAIDA[1]~16_combout\ & ( (!\G5|memparareg~combout\ & (\G18|SAIDA[7]~33_combout\ & \Clock_Sistema~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000001110000011100000010000010100000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G18|ALT_INV_SAIDA[7]~33_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G17|ALT_INV_ram~263_combout\,
	datae => \G16|ALT_INV_Mux8~0_combout\,
	dataf => \G18|ALT_INV_SAIDA[1]~16_combout\,
	combout => \G18|SAIDA[7]~34_combout\);

-- Location: LABCELL_X83_Y23_N24
\G17|ram~264\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~264_combout\ = ( \rtl~0_combout\ & ( \G18|SAIDA[8]~36_combout\ ) ) # ( !\rtl~0_combout\ & ( \G17|ram~264_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datac => \G17|ALT_INV_ram~264_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~264_combout\);

-- Location: LABCELL_X83_Y25_N42
\G17|ram~248\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~248_combout\ = ( \G17|ram~248_combout\ & ( (!\rtl~6_combout\) # (\G18|SAIDA[8]~36_combout\) ) ) # ( !\G17|ram~248_combout\ & ( (\G18|SAIDA[8]~36_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~248_combout\,
	combout => \G17|ram~248_combout\);

-- Location: LABCELL_X83_Y25_N24
\G17|ram~232\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~232_combout\ = ( \G17|ram~232_combout\ & ( (!\rtl~8_combout\) # (\G18|SAIDA[8]~36_combout\) ) ) # ( !\G17|ram~232_combout\ & ( (\G18|SAIDA[8]~36_combout\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~232_combout\,
	combout => \G17|ram~232_combout\);

-- Location: LABCELL_X83_Y25_N45
\G17|ram~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~216_combout\ = ( \rtl~5_combout\ & ( \G18|SAIDA[8]~36_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~216_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \G17|ALT_INV_ram~216_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~216_combout\);

-- Location: LABCELL_X83_Y25_N12
\G17|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~152_combout\ = ( \G17|ram~152_combout\ & ( (!\rtl~13_combout\) # (\G18|SAIDA[8]~36_combout\) ) ) # ( !\G17|ram~152_combout\ & ( (\G18|SAIDA[8]~36_combout\ & \rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datac => \ALT_INV_rtl~13_combout\,
	dataf => \G17|ALT_INV_ram~152_combout\,
	combout => \G17|ram~152_combout\);

-- Location: LABCELL_X83_Y24_N9
\G17|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~168_combout\ = ( \rtl~16_combout\ & ( \G18|SAIDA[8]~36_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~168_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \G17|ALT_INV_ram~168_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~168_combout\);

-- Location: LABCELL_X83_Y25_N15
\G17|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~184_combout\ = ( \G17|ram~184_combout\ & ( (!\rtl~14_combout\) # (\G18|SAIDA[8]~36_combout\) ) ) # ( !\G17|ram~184_combout\ & ( (\G18|SAIDA[8]~36_combout\ & \rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G17|ALT_INV_ram~184_combout\,
	combout => \G17|ram~184_combout\);

-- Location: LABCELL_X83_Y25_N39
\G17|ram~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~136_combout\ = ( \G18|SAIDA[8]~36_combout\ & ( (\rtl~15_combout\) # (\G17|ram~136_combout\) ) ) # ( !\G18|SAIDA[8]~36_combout\ & ( (\G17|ram~136_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~136_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G18|ALT_INV_SAIDA[8]~36_combout\,
	combout => \G17|ram~136_combout\);

-- Location: MLABCELL_X84_Y23_N45
\G17|ram~465\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~465_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~136_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~152_combout\))))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~168_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~184_combout\))))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~152_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~168_combout\,
	datad => \G17|ALT_INV_ram~184_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~136_combout\,
	combout => \G17|ram~465_combout\);

-- Location: LABCELL_X83_Y25_N27
\G17|ram~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~200_combout\ = ( \G17|ram~200_combout\ & ( (!\rtl~7_combout\) # (\G18|SAIDA[8]~36_combout\) ) ) # ( !\G17|ram~200_combout\ & ( (\G18|SAIDA[8]~36_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~200_combout\,
	combout => \G17|ram~200_combout\);

-- Location: LABCELL_X83_Y23_N0
\G17|ram~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~369_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~465_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~465_combout\ & (\G17|ram~200_combout\)) # (\G17|ram~465_combout\ & ((\G17|ram~216_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~465_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~465_combout\ & ((\G17|ram~232_combout\))) # (\G17|ram~465_combout\ & (\G17|ram~248_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~248_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~232_combout\,
	datad => \G17|ALT_INV_ram~216_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~465_combout\,
	datag => \G17|ALT_INV_ram~200_combout\,
	combout => \G17|ram~369_combout\);

-- Location: LABCELL_X83_Y23_N27
\G17|ram~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~88_combout\ = ( \G18|SAIDA[8]~36_combout\ & ( (\rtl~1_combout\) # (\G17|ram~88_combout\) ) ) # ( !\G18|SAIDA[8]~36_combout\ & ( (\G17|ram~88_combout\ & !\rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~88_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G18|ALT_INV_SAIDA[8]~36_combout\,
	combout => \G17|ram~88_combout\);

-- Location: LABCELL_X83_Y23_N15
\G17|ram~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~120_combout\ = ( \rtl~2_combout\ & ( \G17|ram~120_combout\ & ( \G18|SAIDA[8]~36_combout\ ) ) ) # ( !\rtl~2_combout\ & ( \G17|ram~120_combout\ ) ) # ( \rtl~2_combout\ & ( !\G17|ram~120_combout\ & ( \G18|SAIDA[8]~36_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datae => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~120_combout\,
	combout => \G17|ram~120_combout\);

-- Location: LABCELL_X83_Y23_N51
\G17|ram~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~104_combout\ = ( \G17|ram~104_combout\ & ( (!\rtl~4_combout\) # (\G18|SAIDA[8]~36_combout\) ) ) # ( !\G17|ram~104_combout\ & ( (\G18|SAIDA[8]~36_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datac => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~104_combout\,
	combout => \G17|ram~104_combout\);

-- Location: LABCELL_X83_Y26_N9
\G17|ram~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~56_combout\ = ( \G17|ram~56_combout\ & ( (!\rtl~10_combout\) # (\G18|SAIDA[8]~36_combout\) ) ) # ( !\G17|ram~56_combout\ & ( (\G18|SAIDA[8]~36_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~56_combout\,
	combout => \G17|ram~56_combout\);

-- Location: LABCELL_X83_Y24_N3
\G17|ram~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~40_combout\ = ( \G18|SAIDA[8]~36_combout\ & ( (\G17|ram~40_combout\) # (\rtl~12_combout\) ) ) # ( !\G18|SAIDA[8]~36_combout\ & ( (!\rtl~12_combout\ & \G17|ram~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~12_combout\,
	datad => \G17|ALT_INV_ram~40_combout\,
	dataf => \G18|ALT_INV_SAIDA[8]~36_combout\,
	combout => \G17|ram~40_combout\);

-- Location: LABCELL_X83_Y25_N6
\G17|ram~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~24_combout\ = ( \G17|ram~24_combout\ & ( (!\rtl~9_combout\) # (\G18|SAIDA[8]~36_combout\) ) ) # ( !\G17|ram~24_combout\ & ( (\G18|SAIDA[8]~36_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~24_combout\,
	combout => \G17|ram~24_combout\);

-- Location: LABCELL_X83_Y23_N33
\G17|ram~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~8_combout\ = ( \G18|SAIDA[8]~36_combout\ & ( (\rtl~11_combout\) # (\G17|ram~8_combout\) ) ) # ( !\G18|SAIDA[8]~36_combout\ & ( (\G17|ram~8_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~8_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G18|ALT_INV_SAIDA[8]~36_combout\,
	combout => \G17|ram~8_combout\);

-- Location: LABCELL_X83_Y23_N6
\G17|ram~469\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~469_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~8_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\) # (\G17|ram~24_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~40_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~56_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram~56_combout\,
	datac => \G17|ALT_INV_ram~40_combout\,
	datad => \G17|ALT_INV_ram~24_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~8_combout\,
	combout => \G17|ram~469_combout\);

-- Location: LABCELL_X83_Y23_N48
\G17|ram~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~72_combout\ = ( \G18|SAIDA[8]~36_combout\ & ( (\rtl~3_combout\) # (\G17|ram~72_combout\) ) ) # ( !\G18|SAIDA[8]~36_combout\ & ( (\G17|ram~72_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~72_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G18|ALT_INV_SAIDA[8]~36_combout\,
	combout => \G17|ram~72_combout\);

-- Location: LABCELL_X83_Y23_N18
\G17|ram~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~373_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G17|ram~469_combout\ & (((\G17|ram~72_combout\ & \G16|Mux13~2_combout\)))) # (\G17|ram~469_combout\ & (((!\G16|Mux13~2_combout\)) # (\G17|ram~88_combout\)))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~469_combout\ & (((\G17|ram~104_combout\ & \G16|Mux13~2_combout\)))) # (\G17|ram~469_combout\ & (((!\G16|Mux13~2_combout\)) # (\G17|ram~120_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~88_combout\,
	datab => \G17|ALT_INV_ram~120_combout\,
	datac => \G17|ALT_INV_ram~104_combout\,
	datad => \G17|ALT_INV_ram~469_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~72_combout\,
	combout => \G17|ram~373_combout\);

-- Location: LABCELL_X83_Y23_N36
\G18|SAIDA[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[8]~35_combout\ = ( \G17|ram~369_combout\ & ( \G17|ram~373_combout\ & ( !\G16|Mux11~2_combout\ ) ) ) # ( !\G17|ram~369_combout\ & ( \G17|ram~373_combout\ & ( (!\G16|Mux12~2_combout\ & !\G16|Mux11~2_combout\) ) ) ) # ( \G17|ram~369_combout\ & ( 
-- !\G17|ram~373_combout\ & ( (\G16|Mux12~2_combout\ & !\G16|Mux11~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011110000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G16|ALT_INV_Mux11~2_combout\,
	datae => \G17|ALT_INV_ram~369_combout\,
	dataf => \G17|ALT_INV_ram~373_combout\,
	combout => \G18|SAIDA[8]~35_combout\);

-- Location: MLABCELL_X82_Y21_N18
\G14|SAIDA[8]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[8]~17_combout\ = ( \Clock_Sistema~input_o\ & ( (\G18|SAIDA[8]~36_combout\ & !\G5|aluSRC~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datac => \G5|ALT_INV_aluSRC~combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA[8]~17_combout\);

-- Location: MLABCELL_X84_Y21_N24
\G16|Add0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~30_sumout\ = SUM(( \G14|SAIDA[8]~17_combout\ ) + ( \G18|SAIDA[8]~36_combout\ ) + ( \G16|Add0~27\ ))
-- \G16|Add0~31\ = CARRY(( \G14|SAIDA[8]~17_combout\ ) + ( \G18|SAIDA[8]~36_combout\ ) + ( \G16|Add0~27\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \G14|ALT_INV_SAIDA[8]~17_combout\,
	cin => \G16|Add0~27\,
	sumout => \G16|Add0~30_sumout\,
	cout => \G16|Add0~31\);

-- Location: LABCELL_X85_Y21_N33
\G16|Add1~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~68_sumout\ = SUM(( !\G14|SAIDA[8]~17_combout\ ) + ( \G18|SAIDA[8]~36_combout\ ) + ( \G16|Add1~65\ ))
-- \G16|Add1~69\ = CARRY(( !\G14|SAIDA[8]~17_combout\ ) + ( \G18|SAIDA[8]~36_combout\ ) + ( \G16|Add1~65\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datad => \G14|ALT_INV_SAIDA[8]~17_combout\,
	cin => \G16|Add1~65\,
	sumout => \G16|Add1~68_sumout\,
	cout => \G16|Add1~69\);

-- Location: MLABCELL_X82_Y21_N21
\G16|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~0_combout\ = ( \G16|Add1~68_sumout\ & ( (!\G16|Mux1~1_combout\ & (((\G16|Mux1~0_combout\ & \G16|Add0~30_sumout\)))) # (\G16|Mux1~1_combout\ & (((\G16|Mux1~0_combout\)) # (\G18|SAIDA[8]~36_combout\))) ) ) # ( !\G16|Add1~68_sumout\ & ( 
-- (!\G16|Mux1~1_combout\ & (((\G16|Mux1~0_combout\ & \G16|Add0~30_sumout\)))) # (\G16|Mux1~1_combout\ & (\G18|SAIDA[8]~36_combout\ & (!\G16|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000100000001101000010101000111110001010100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~1_combout\,
	datab => \G18|ALT_INV_SAIDA[8]~36_combout\,
	datac => \G16|ALT_INV_Mux1~0_combout\,
	datad => \G16|ALT_INV_Add0~30_sumout\,
	dataf => \G16|ALT_INV_Add1~68_sumout\,
	combout => \G16|Mux7~0_combout\);

-- Location: LABCELL_X83_Y23_N54
\G18|SAIDA[8]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[8]~36_combout\ = ( \G18|SAIDA[8]~35_combout\ & ( \G16|Mux7~0_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G18|SAIDA[8]~35_combout\ & ( \G16|Mux7~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G18|SAIDA[1]~16_combout\ & 
-- \G17|ram~264_combout\)) # (\G5|memparareg~combout\))) ) ) ) # ( \G18|SAIDA[8]~35_combout\ & ( !\G16|Mux7~0_combout\ & ( (!\G5|memparareg~combout\ & \Clock_Sistema~input_o\) ) ) ) # ( !\G18|SAIDA[8]~35_combout\ & ( !\G16|Mux7~0_combout\ & ( 
-- (!\G5|memparareg~combout\ & (\G18|SAIDA[1]~16_combout\ & (\G17|ram~264_combout\ & \Clock_Sistema~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000001010101000000000010101110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G18|ALT_INV_SAIDA[1]~16_combout\,
	datac => \G17|ALT_INV_ram~264_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G18|ALT_INV_SAIDA[8]~35_combout\,
	dataf => \G16|ALT_INV_Mux7~0_combout\,
	combout => \G18|SAIDA[8]~36_combout\);

-- Location: LABCELL_X80_Y24_N6
\G17|ram~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~89_combout\ = ( \G17|ram~89_combout\ & ( (!\rtl~1_combout\) # (\G18|SAIDA[9]~38_combout\) ) ) # ( !\G17|ram~89_combout\ & ( (\G18|SAIDA[9]~38_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[9]~38_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~89_combout\,
	combout => \G17|ram~89_combout\);

-- Location: LABCELL_X83_Y23_N42
\G17|ram~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~121_combout\ = ( \G17|ram~121_combout\ & ( (!\rtl~2_combout\) # (\G18|SAIDA[9]~38_combout\) ) ) # ( !\G17|ram~121_combout\ & ( (\G18|SAIDA[9]~38_combout\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[9]~38_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~121_combout\,
	combout => \G17|ram~121_combout\);

-- Location: LABCELL_X85_Y23_N54
\G17|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~105_combout\ = ( \rtl~4_combout\ & ( \G18|SAIDA[9]~38_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~105_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[9]~38_combout\,
	datad => \G17|ALT_INV_ram~105_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~105_combout\);

-- Location: LABCELL_X85_Y25_N15
\G17|ram~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~25_combout\ = ( \rtl~9_combout\ & ( \G18|SAIDA[9]~38_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[9]~38_combout\,
	datac => \G17|ALT_INV_ram~25_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~25_combout\);

-- Location: LABCELL_X83_Y26_N30
\G17|ram~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~57_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( \G17|ram~57_combout\ ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( \G17|ram~57_combout\ & ( !\rtl~10_combout\ ) ) ) # ( \G18|SAIDA[9]~38_combout\ & ( !\G17|ram~57_combout\ & ( \rtl~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~10_combout\,
	datae => \G18|ALT_INV_SAIDA[9]~38_combout\,
	dataf => \G17|ALT_INV_ram~57_combout\,
	combout => \G17|ram~57_combout\);

-- Location: LABCELL_X80_Y24_N45
\G17|ram~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~41_combout\ = ( \rtl~12_combout\ & ( \G18|SAIDA[9]~38_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[9]~38_combout\,
	datad => \G17|ALT_INV_ram~41_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~41_combout\);

-- Location: LABCELL_X80_Y24_N39
\G17|ram~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~9_combout\ = ( \G17|ram~9_combout\ & ( (!\rtl~11_combout\) # (\G18|SAIDA[9]~38_combout\) ) ) # ( !\G17|ram~9_combout\ & ( (\G18|SAIDA[9]~38_combout\ & \rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[9]~38_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G17|ALT_INV_ram~9_combout\,
	combout => \G17|ram~9_combout\);

-- Location: MLABCELL_X84_Y25_N30
\G17|ram~477\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~477_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & ((\G17|ram~9_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~25_combout\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & ((\G17|ram~41_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~57_combout\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~25_combout\,
	datab => \G17|ALT_INV_ram~57_combout\,
	datac => \G17|ALT_INV_ram~41_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~9_combout\,
	combout => \G17|ram~477_combout\);

-- Location: LABCELL_X80_Y24_N30
\G17|ram~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~73_combout\ = ( \G17|ram~73_combout\ & ( (!\rtl~3_combout\) # (\G18|SAIDA[9]~38_combout\) ) ) # ( !\G17|ram~73_combout\ & ( (\G18|SAIDA[9]~38_combout\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[9]~38_combout\,
	datac => \ALT_INV_rtl~3_combout\,
	dataf => \G17|ALT_INV_ram~73_combout\,
	combout => \G17|ram~73_combout\);

-- Location: MLABCELL_X84_Y25_N54
\G17|ram~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~381_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G17|ram~477_combout\ & (((\G17|ram~73_combout\ & \G16|Mux13~2_combout\)))) # (\G17|ram~477_combout\ & (((!\G16|Mux13~2_combout\)) # (\G17|ram~89_combout\)))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~477_combout\ & (((\G17|ram~105_combout\ & \G16|Mux13~2_combout\)))) # (\G17|ram~477_combout\ & (((!\G16|Mux13~2_combout\)) # (\G17|ram~121_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~89_combout\,
	datab => \G17|ALT_INV_ram~121_combout\,
	datac => \G17|ALT_INV_ram~105_combout\,
	datad => \G17|ALT_INV_ram~477_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~73_combout\,
	combout => \G17|ram~381_combout\);

-- Location: MLABCELL_X84_Y25_N24
\G17|ram~217\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~217_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (\G17|ram~217_combout\) # (\rtl~5_combout\) ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( (!\rtl~5_combout\ & \G17|ram~217_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~5_combout\,
	datac => \G17|ALT_INV_ram~217_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G17|ram~217_combout\);

-- Location: LABCELL_X83_Y25_N57
\G17|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~185_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (\rtl~14_combout\) # (\G17|ram~185_combout\) ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( (\G17|ram~185_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~185_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G17|ram~185_combout\);

-- Location: MLABCELL_X84_Y25_N27
\G17|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~169_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (\G17|ram~169_combout\) # (\rtl~16_combout\) ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( (!\rtl~16_combout\ & \G17|ram~169_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~169_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G17|ram~169_combout\);

-- Location: LABCELL_X85_Y25_N54
\G17|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~153_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (\G17|ram~153_combout\) # (\rtl~13_combout\) ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( (!\rtl~13_combout\ & \G17|ram~153_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~13_combout\,
	datad => \G17|ALT_INV_ram~153_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G17|ram~153_combout\);

-- Location: MLABCELL_X84_Y25_N3
\G17|ram~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~137_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (\G17|ram~137_combout\) # (\rtl~15_combout\) ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( (!\rtl~15_combout\ & \G17|ram~137_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~15_combout\,
	datad => \G17|ALT_INV_ram~137_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G17|ram~137_combout\);

-- Location: MLABCELL_X84_Y25_N12
\G17|ram~473\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~473_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~137_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~153_combout\))))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~169_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~185_combout\))))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110000110011111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~185_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~169_combout\,
	datad => \G17|ALT_INV_ram~153_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~137_combout\,
	combout => \G17|ram~473_combout\);

-- Location: LABCELL_X83_Y25_N9
\G17|ram~233\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~233_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (\rtl~8_combout\) # (\G17|ram~233_combout\) ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( (\G17|ram~233_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~233_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G17|ram~233_combout\);

-- Location: LABCELL_X83_Y25_N36
\G17|ram~249\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~249_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (\G17|ram~249_combout\) # (\rtl~6_combout\) ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( (!\rtl~6_combout\ & \G17|ram~249_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~6_combout\,
	datad => \G17|ALT_INV_ram~249_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G17|ram~249_combout\);

-- Location: MLABCELL_X84_Y25_N36
\G17|ram~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~201_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (\G17|ram~201_combout\) # (\rtl~7_combout\) ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( (!\rtl~7_combout\ & \G17|ram~201_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~7_combout\,
	datad => \G17|ALT_INV_ram~201_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G17|ram~201_combout\);

-- Location: MLABCELL_X84_Y25_N6
\G17|ram~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~377_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~473_combout\ & (((\G17|ram~201_combout\ & (\G16|Mux13~2_combout\))))) # (\G17|ram~473_combout\ & ((((!\G16|Mux13~2_combout\))) # (\G17|ram~217_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~473_combout\ & (\G17|ram~233_combout\ & (\G16|Mux13~2_combout\))) # (\G17|ram~473_combout\ & (((!\G16|Mux13~2_combout\) # (\G17|ram~249_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~217_combout\,
	datab => \G17|ALT_INV_ram~473_combout\,
	datac => \G17|ALT_INV_ram~233_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~249_combout\,
	datag => \G17|ALT_INV_ram~201_combout\,
	combout => \G17|ram~377_combout\);

-- Location: MLABCELL_X84_Y25_N18
\G18|SAIDA[9]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[9]~37_combout\ = ( \G17|ram~377_combout\ & ( (!\G16|Mux11~2_combout\ & ((\G17|ram~381_combout\) # (\G16|Mux12~2_combout\))) ) ) # ( !\G17|ram~377_combout\ & ( (!\G16|Mux12~2_combout\ & (!\G16|Mux11~2_combout\ & \G17|ram~381_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G17|ALT_INV_ram~381_combout\,
	dataf => \G17|ALT_INV_ram~377_combout\,
	combout => \G18|SAIDA[9]~37_combout\);

-- Location: LABCELL_X85_Y23_N33
\G14|SAIDA[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[9]~18_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (!\G5|aluSRC~combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_aluSRC~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G14|SAIDA[9]~18_combout\);

-- Location: MLABCELL_X84_Y21_N27
\G16|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~34_sumout\ = SUM(( \G18|SAIDA[9]~38_combout\ ) + ( \G14|SAIDA[9]~18_combout\ ) + ( \G16|Add0~31\ ))
-- \G16|Add0~35\ = CARRY(( \G18|SAIDA[9]~38_combout\ ) + ( \G14|SAIDA[9]~18_combout\ ) + ( \G16|Add0~31\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[9]~18_combout\,
	datad => \G18|ALT_INV_SAIDA[9]~38_combout\,
	cin => \G16|Add0~31\,
	sumout => \G16|Add0~34_sumout\,
	cout => \G16|Add0~35\);

-- Location: LABCELL_X85_Y21_N36
\G16|Add1~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~72_sumout\ = SUM(( !\G14|SAIDA[9]~18_combout\ ) + ( \G18|SAIDA[9]~38_combout\ ) + ( \G16|Add1~69\ ))
-- \G16|Add1~73\ = CARRY(( !\G14|SAIDA[9]~18_combout\ ) + ( \G18|SAIDA[9]~38_combout\ ) + ( \G16|Add1~69\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[9]~38_combout\,
	datad => \G14|ALT_INV_SAIDA[9]~18_combout\,
	cin => \G16|Add1~69\,
	sumout => \G16|Add1~72_sumout\,
	cout => \G16|Add1~73\);

-- Location: LABCELL_X81_Y21_N54
\G16|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux6~0_combout\ = ( \G16|Add0~34_sumout\ & ( \G16|Add1~72_sumout\ & ( ((\G16|Mux1~1_combout\ & \G18|SAIDA[9]~38_combout\)) # (\G16|Mux1~0_combout\) ) ) ) # ( !\G16|Add0~34_sumout\ & ( \G16|Add1~72_sumout\ & ( (\G16|Mux1~1_combout\ & 
-- ((\G18|SAIDA[9]~38_combout\) # (\G16|Mux1~0_combout\))) ) ) ) # ( \G16|Add0~34_sumout\ & ( !\G16|Add1~72_sumout\ & ( (!\G16|Mux1~1_combout\ & (\G16|Mux1~0_combout\)) # (\G16|Mux1~1_combout\ & (!\G16|Mux1~0_combout\ & \G18|SAIDA[9]~38_combout\)) ) ) ) # ( 
-- !\G16|Add0~34_sumout\ & ( !\G16|Add1~72_sumout\ & ( (\G16|Mux1~1_combout\ & (!\G16|Mux1~0_combout\ & \G18|SAIDA[9]~38_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000010100101101000000101010101010000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~1_combout\,
	datac => \G16|ALT_INV_Mux1~0_combout\,
	datad => \G18|ALT_INV_SAIDA[9]~38_combout\,
	datae => \G16|ALT_INV_Add0~34_sumout\,
	dataf => \G16|ALT_INV_Add1~72_sumout\,
	combout => \G16|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y25_N21
\G17|ram~265\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~265_combout\ = ( \G18|SAIDA[9]~38_combout\ & ( (\G17|ram~265_combout\) # (\rtl~0_combout\) ) ) # ( !\G18|SAIDA[9]~38_combout\ & ( (!\rtl~0_combout\ & \G17|ram~265_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~265_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~38_combout\,
	combout => \G17|ram~265_combout\);

-- Location: MLABCELL_X84_Y25_N42
\G18|SAIDA[9]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[9]~38_combout\ = ( \G16|Mux6~0_combout\ & ( \G17|ram~265_combout\ & ( (\Clock_Sistema~input_o\ & (((\G5|memparareg~combout\) # (\G18|SAIDA[9]~37_combout\)) # (\G18|SAIDA[1]~16_combout\))) ) ) ) # ( !\G16|Mux6~0_combout\ & ( 
-- \G17|ram~265_combout\ & ( (!\G5|memparareg~combout\ & (\Clock_Sistema~input_o\ & ((\G18|SAIDA[9]~37_combout\) # (\G18|SAIDA[1]~16_combout\)))) ) ) ) # ( \G16|Mux6~0_combout\ & ( !\G17|ram~265_combout\ & ( (\Clock_Sistema~input_o\ & 
-- ((\G5|memparareg~combout\) # (\G18|SAIDA[9]~37_combout\))) ) ) ) # ( !\G16|Mux6~0_combout\ & ( !\G17|ram~265_combout\ & ( (\G18|SAIDA[9]~37_combout\ & (!\G5|memparareg~combout\ & \Clock_Sistema~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011111100000000011100000000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[1]~16_combout\,
	datab => \G18|ALT_INV_SAIDA[9]~37_combout\,
	datac => \G5|ALT_INV_memparareg~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G16|ALT_INV_Mux6~0_combout\,
	dataf => \G17|ALT_INV_ram~265_combout\,
	combout => \G18|SAIDA[9]~38_combout\);

-- Location: LABCELL_X80_Y25_N0
\G17|ram~250\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~250_combout\ = ( \G18|SAIDA[10]~40_combout\ & ( (\G17|ram~250_combout\) # (\rtl~6_combout\) ) ) # ( !\G18|SAIDA[10]~40_combout\ & ( (!\rtl~6_combout\ & \G17|ram~250_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~6_combout\,
	datad => \G17|ALT_INV_ram~250_combout\,
	dataf => \G18|ALT_INV_SAIDA[10]~40_combout\,
	combout => \G17|ram~250_combout\);

-- Location: LABCELL_X83_Y26_N48
\G17|ram~234\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~234_combout\ = ( \rtl~8_combout\ & ( \G17|ram~234_combout\ & ( \G18|SAIDA[10]~40_combout\ ) ) ) # ( !\rtl~8_combout\ & ( \G17|ram~234_combout\ ) ) # ( \rtl~8_combout\ & ( !\G17|ram~234_combout\ & ( \G18|SAIDA[10]~40_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datae => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~234_combout\,
	combout => \G17|ram~234_combout\);

-- Location: LABCELL_X85_Y25_N36
\G17|ram~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~218_combout\ = ( \rtl~5_combout\ & ( \G18|SAIDA[10]~40_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~218_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~218_combout\,
	datad => \G18|ALT_INV_SAIDA[10]~40_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~218_combout\);

-- Location: MLABCELL_X84_Y27_N3
\G17|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~186_combout\ = ( \rtl~14_combout\ & ( \G18|SAIDA[10]~40_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~186_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datad => \G17|ALT_INV_ram~186_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~186_combout\);

-- Location: LABCELL_X85_Y25_N18
\G17|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~154_combout\ = ( \G17|ram~154_combout\ & ( (!\rtl~13_combout\) # (\G18|SAIDA[10]~40_combout\) ) ) # ( !\G17|ram~154_combout\ & ( (\rtl~13_combout\ & \G18|SAIDA[10]~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~13_combout\,
	datad => \G18|ALT_INV_SAIDA[10]~40_combout\,
	dataf => \G17|ALT_INV_ram~154_combout\,
	combout => \G17|ram~154_combout\);

-- Location: MLABCELL_X84_Y27_N33
\G17|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~170_combout\ = ( \G17|ram~170_combout\ & ( (!\rtl~16_combout\) # (\G18|SAIDA[10]~40_combout\) ) ) # ( !\G17|ram~170_combout\ & ( (\G18|SAIDA[10]~40_combout\ & \rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datac => \ALT_INV_rtl~16_combout\,
	dataf => \G17|ALT_INV_ram~170_combout\,
	combout => \G17|ram~170_combout\);

-- Location: LABCELL_X83_Y26_N45
\G17|ram~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~138_combout\ = ( \G17|ram~138_combout\ & ( \rtl~15_combout\ & ( \G18|SAIDA[10]~40_combout\ ) ) ) # ( !\G17|ram~138_combout\ & ( \rtl~15_combout\ & ( \G18|SAIDA[10]~40_combout\ ) ) ) # ( \G17|ram~138_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datae => \G17|ALT_INV_ram~138_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~138_combout\);

-- Location: MLABCELL_X84_Y27_N24
\G17|ram~481\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~481_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~2_combout\ & (((\G17|ram~138_combout\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~154_combout\)))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (((\G17|ram~170_combout\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~186_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~186_combout\,
	datab => \G17|ALT_INV_ram~154_combout\,
	datac => \G17|ALT_INV_ram~170_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~138_combout\,
	combout => \G17|ram~481_combout\);

-- Location: MLABCELL_X84_Y27_N15
\G17|ram~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~202_combout\ = ( \G17|ram~202_combout\ & ( (!\rtl~7_combout\) # (\G18|SAIDA[10]~40_combout\) ) ) # ( !\G17|ram~202_combout\ & ( (\G18|SAIDA[10]~40_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~202_combout\,
	combout => \G17|ram~202_combout\);

-- Location: MLABCELL_X84_Y27_N36
\G17|ram~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~385_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~481_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~481_combout\ & (\G17|ram~202_combout\)) # (\G17|ram~481_combout\ & ((\G17|ram~218_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~481_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~481_combout\ & ((\G17|ram~234_combout\))) # (\G17|ram~481_combout\ & (\G17|ram~250_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~250_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~234_combout\,
	datad => \G17|ALT_INV_ram~218_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~481_combout\,
	datag => \G17|ALT_INV_ram~202_combout\,
	combout => \G17|ram~385_combout\);

-- Location: MLABCELL_X84_Y27_N48
\G17|ram~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~26_combout\ = ( \G18|SAIDA[10]~40_combout\ & ( (\rtl~9_combout\) # (\G17|ram~26_combout\) ) ) # ( !\G18|SAIDA[10]~40_combout\ & ( (\G17|ram~26_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~26_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G18|ALT_INV_SAIDA[10]~40_combout\,
	combout => \G17|ram~26_combout\);

-- Location: MLABCELL_X84_Y27_N30
\G17|ram~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~42_combout\ = ( \G18|SAIDA[10]~40_combout\ & ( (\rtl~12_combout\) # (\G17|ram~42_combout\) ) ) # ( !\G18|SAIDA[10]~40_combout\ & ( (\G17|ram~42_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~42_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G18|ALT_INV_SAIDA[10]~40_combout\,
	combout => \G17|ram~42_combout\);

-- Location: MLABCELL_X84_Y27_N9
\G17|ram~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~58_combout\ = ( \rtl~10_combout\ & ( \G18|SAIDA[10]~40_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~58_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datac => \G17|ALT_INV_ram~58_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~58_combout\);

-- Location: MLABCELL_X84_Y27_N0
\G17|ram~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~10_combout\ = ( \rtl~11_combout\ & ( \G18|SAIDA[10]~40_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datad => \G17|ALT_INV_ram~10_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~10_combout\);

-- Location: MLABCELL_X84_Y27_N18
\G17|ram~485\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~485_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~10_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~26_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (\G17|ram~42_combout\ & ((!\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\) # (\G17|ram~58_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~26_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~42_combout\,
	datad => \G17|ALT_INV_ram~58_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~10_combout\,
	combout => \G17|ram~485_combout\);

-- Location: MLABCELL_X84_Y27_N6
\G17|ram~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~122_combout\ = ( \G17|ram~122_combout\ & ( (!\rtl~2_combout\) # (\G18|SAIDA[10]~40_combout\) ) ) # ( !\G17|ram~122_combout\ & ( (\G18|SAIDA[10]~40_combout\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~122_combout\,
	combout => \G17|ram~122_combout\);

-- Location: MLABCELL_X84_Y27_N12
\G17|ram~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~106_combout\ = ( \G17|ram~106_combout\ & ( (!\rtl~4_combout\) # (\G18|SAIDA[10]~40_combout\) ) ) # ( !\G17|ram~106_combout\ & ( (\G18|SAIDA[10]~40_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datac => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~106_combout\,
	combout => \G17|ram~106_combout\);

-- Location: LABCELL_X81_Y24_N48
\G17|ram~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~90_combout\ = ( \rtl~1_combout\ & ( \G18|SAIDA[10]~40_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~90_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datac => \G17|ALT_INV_ram~90_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~90_combout\);

-- Location: LABCELL_X81_Y24_N51
\G17|ram~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~74_combout\ = ( \G17|ram~74_combout\ & ( (!\rtl~3_combout\) # (\G18|SAIDA[10]~40_combout\) ) ) # ( !\G17|ram~74_combout\ & ( (\rtl~3_combout\ & \G18|SAIDA[10]~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~3_combout\,
	datac => \G18|ALT_INV_SAIDA[10]~40_combout\,
	dataf => \G17|ALT_INV_ram~74_combout\,
	combout => \G17|ram~74_combout\);

-- Location: MLABCELL_X84_Y27_N54
\G17|ram~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~389_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~485_combout\ & (((\G17|ram~74_combout\ & ((\G16|Mux13~2_combout\)))))) # (\G17|ram~485_combout\ & ((((!\G16|Mux13~2_combout\) # (\G17|ram~90_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~485_combout\ & (((\G17|ram~106_combout\ & ((\G16|Mux13~2_combout\)))))) # (\G17|ram~485_combout\ & ((((!\G16|Mux13~2_combout\))) # (\G17|ram~122_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~485_combout\,
	datab => \G17|ALT_INV_ram~122_combout\,
	datac => \G17|ALT_INV_ram~106_combout\,
	datad => \G17|ALT_INV_ram~90_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~74_combout\,
	combout => \G17|ram~389_combout\);

-- Location: MLABCELL_X84_Y27_N51
\G18|SAIDA[10]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[10]~39_combout\ = ( \G16|Mux12~2_combout\ & ( (\G17|ram~385_combout\ & !\G16|Mux11~2_combout\) ) ) # ( !\G16|Mux12~2_combout\ & ( (!\G16|Mux11~2_combout\ & \G17|ram~389_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~385_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G17|ALT_INV_ram~389_combout\,
	dataf => \G16|ALT_INV_Mux12~2_combout\,
	combout => \G18|SAIDA[10]~39_combout\);

-- Location: LABCELL_X83_Y24_N6
\G17|ram~266\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~266_combout\ = ( \G18|SAIDA[10]~40_combout\ & ( (\rtl~0_combout\) # (\G17|ram~266_combout\) ) ) # ( !\G18|SAIDA[10]~40_combout\ & ( (\G17|ram~266_combout\ & !\rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~266_combout\,
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \G18|ALT_INV_SAIDA[10]~40_combout\,
	combout => \G17|ram~266_combout\);

-- Location: MLABCELL_X87_Y21_N0
\G14|SAIDA[10]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[10]~19_combout\ = ( !\G5|aluSRC~combout\ & ( \G18|SAIDA[10]~40_combout\ & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G5|ALT_INV_aluSRC~combout\,
	dataf => \G18|ALT_INV_SAIDA[10]~40_combout\,
	combout => \G14|SAIDA[10]~19_combout\);

-- Location: LABCELL_X85_Y21_N39
\G16|Add1~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~76_sumout\ = SUM(( \G18|SAIDA[10]~40_combout\ ) + ( !\G14|SAIDA[10]~19_combout\ ) + ( \G16|Add1~73\ ))
-- \G16|Add1~77\ = CARRY(( \G18|SAIDA[10]~40_combout\ ) + ( !\G14|SAIDA[10]~19_combout\ ) + ( \G16|Add1~73\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datac => \G14|ALT_INV_SAIDA[10]~19_combout\,
	cin => \G16|Add1~73\,
	sumout => \G16|Add1~76_sumout\,
	cout => \G16|Add1~77\);

-- Location: MLABCELL_X84_Y21_N30
\G16|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~38_sumout\ = SUM(( \G14|SAIDA[10]~19_combout\ ) + ( \G18|SAIDA[10]~40_combout\ ) + ( \G16|Add0~35\ ))
-- \G16|Add0~39\ = CARRY(( \G14|SAIDA[10]~19_combout\ ) + ( \G18|SAIDA[10]~40_combout\ ) + ( \G16|Add0~35\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datad => \G14|ALT_INV_SAIDA[10]~19_combout\,
	cin => \G16|Add0~35\,
	sumout => \G16|Add0~38_sumout\,
	cout => \G16|Add0~39\);

-- Location: LABCELL_X81_Y21_N12
\G16|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux5~0_combout\ = ( \G16|Add1~76_sumout\ & ( \G16|Add0~38_sumout\ & ( ((\G16|Mux1~1_combout\ & \G18|SAIDA[10]~40_combout\)) # (\G16|Mux1~0_combout\) ) ) ) # ( !\G16|Add1~76_sumout\ & ( \G16|Add0~38_sumout\ & ( (!\G16|Mux1~1_combout\ & 
-- (\G16|Mux1~0_combout\)) # (\G16|Mux1~1_combout\ & (!\G16|Mux1~0_combout\ & \G18|SAIDA[10]~40_combout\)) ) ) ) # ( \G16|Add1~76_sumout\ & ( !\G16|Add0~38_sumout\ & ( (\G16|Mux1~1_combout\ & ((\G18|SAIDA[10]~40_combout\) # (\G16|Mux1~0_combout\))) ) ) ) # ( 
-- !\G16|Add1~76_sumout\ & ( !\G16|Add0~38_sumout\ & ( (\G16|Mux1~1_combout\ & (!\G16|Mux1~0_combout\ & \G18|SAIDA[10]~40_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000100010101010100100010011001100011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~1_combout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datad => \G18|ALT_INV_SAIDA[10]~40_combout\,
	datae => \G16|ALT_INV_Add1~76_sumout\,
	dataf => \G16|ALT_INV_Add0~38_sumout\,
	combout => \G16|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y27_N42
\G18|SAIDA[10]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[10]~40_combout\ = ( \G18|SAIDA[1]~16_combout\ & ( \G16|Mux5~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G17|ram~266_combout\) # (\G5|memparareg~combout\)) # (\G18|SAIDA[10]~39_combout\))) ) ) ) # ( !\G18|SAIDA[1]~16_combout\ & ( 
-- \G16|Mux5~0_combout\ & ( (\Clock_Sistema~input_o\ & ((\G5|memparareg~combout\) # (\G18|SAIDA[10]~39_combout\))) ) ) ) # ( \G18|SAIDA[1]~16_combout\ & ( !\G16|Mux5~0_combout\ & ( (\Clock_Sistema~input_o\ & (!\G5|memparareg~combout\ & 
-- ((\G17|ram~266_combout\) # (\G18|SAIDA[10]~39_combout\)))) ) ) ) # ( !\G18|SAIDA[1]~16_combout\ & ( !\G16|Mux5~0_combout\ & ( (\G18|SAIDA[10]~39_combout\ & (\Clock_Sistema~input_o\ & !\G5|memparareg~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000011000000010011000100110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[10]~39_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_memparareg~combout\,
	datad => \G17|ALT_INV_ram~266_combout\,
	datae => \G18|ALT_INV_SAIDA[1]~16_combout\,
	dataf => \G16|ALT_INV_Mux5~0_combout\,
	combout => \G18|SAIDA[10]~40_combout\);

-- Location: MLABCELL_X84_Y26_N36
\G17|ram~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~123_combout\ = ( \G18|SAIDA[11]~42_combout\ & ( (\G17|ram~123_combout\) # (\rtl~2_combout\) ) ) # ( !\G18|SAIDA[11]~42_combout\ & ( (!\rtl~2_combout\ & \G17|ram~123_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~2_combout\,
	datad => \G17|ALT_INV_ram~123_combout\,
	dataf => \G18|ALT_INV_SAIDA[11]~42_combout\,
	combout => \G17|ram~123_combout\);

-- Location: MLABCELL_X84_Y26_N15
\G17|ram~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~91_combout\ = ( \G17|ram~91_combout\ & ( (!\rtl~1_combout\) # (\G18|SAIDA[11]~42_combout\) ) ) # ( !\G17|ram~91_combout\ & ( (\G18|SAIDA[11]~42_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~91_combout\,
	combout => \G17|ram~91_combout\);

-- Location: MLABCELL_X84_Y26_N12
\G17|ram~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~107_combout\ = ( \G17|ram~107_combout\ & ( (!\rtl~4_combout\) # (\G18|SAIDA[11]~42_combout\) ) ) # ( !\G17|ram~107_combout\ & ( (\G18|SAIDA[11]~42_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~107_combout\,
	combout => \G17|ram~107_combout\);

-- Location: LABCELL_X85_Y25_N27
\G17|ram~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~27_combout\ = (!\rtl~9_combout\ & ((\G17|ram~27_combout\))) # (\rtl~9_combout\ & (\G18|SAIDA[11]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datac => \ALT_INV_rtl~9_combout\,
	datad => \G17|ALT_INV_ram~27_combout\,
	combout => \G17|ram~27_combout\);

-- Location: MLABCELL_X84_Y26_N6
\G17|ram~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~43_combout\ = ( \G17|ram~43_combout\ & ( (!\rtl~12_combout\) # (\G18|SAIDA[11]~42_combout\) ) ) # ( !\G17|ram~43_combout\ & ( (\G18|SAIDA[11]~42_combout\ & \rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G17|ALT_INV_ram~43_combout\,
	combout => \G17|ram~43_combout\);

-- Location: MLABCELL_X84_Y26_N51
\G17|ram~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~59_combout\ = ( \G17|ram~59_combout\ & ( (!\rtl~10_combout\) # (\G18|SAIDA[11]~42_combout\) ) ) # ( !\G17|ram~59_combout\ & ( (\G18|SAIDA[11]~42_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~59_combout\,
	combout => \G17|ram~59_combout\);

-- Location: MLABCELL_X84_Y26_N21
\G17|ram~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~11_combout\ = ( \rtl~11_combout\ & ( \G18|SAIDA[11]~42_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \G17|ALT_INV_ram~11_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~11_combout\);

-- Location: LABCELL_X85_Y26_N12
\G17|ram~493\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~493_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~11_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~27_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~43_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\) # (\G17|ram~59_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram~27_combout\,
	datac => \G17|ALT_INV_ram~43_combout\,
	datad => \G17|ALT_INV_ram~59_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~11_combout\,
	combout => \G17|ram~493_combout\);

-- Location: MLABCELL_X84_Y26_N33
\G17|ram~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~75_combout\ = ( \G17|ram~75_combout\ & ( (!\rtl~3_combout\) # (\G18|SAIDA[11]~42_combout\) ) ) # ( !\G17|ram~75_combout\ & ( (\G18|SAIDA[11]~42_combout\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G17|ALT_INV_ram~75_combout\,
	combout => \G17|ram~75_combout\);

-- Location: LABCELL_X85_Y26_N54
\G17|ram~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~397_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G17|ram~493_combout\ & (((\G17|ram~75_combout\ & \G16|Mux13~2_combout\)))) # (\G17|ram~493_combout\ & (((!\G16|Mux13~2_combout\)) # (\G17|ram~91_combout\)))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~493_combout\ & (((\G17|ram~107_combout\ & \G16|Mux13~2_combout\)))) # (\G17|ram~493_combout\ & (((!\G16|Mux13~2_combout\)) # (\G17|ram~123_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~123_combout\,
	datab => \G17|ALT_INV_ram~91_combout\,
	datac => \G17|ALT_INV_ram~107_combout\,
	datad => \G17|ALT_INV_ram~493_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~75_combout\,
	combout => \G17|ram~397_combout\);

-- Location: MLABCELL_X84_Y26_N39
\G17|ram~219\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~219_combout\ = ( \G18|SAIDA[11]~42_combout\ & ( (\rtl~5_combout\) # (\G17|ram~219_combout\) ) ) # ( !\G18|SAIDA[11]~42_combout\ & ( (\G17|ram~219_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~219_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G18|ALT_INV_SAIDA[11]~42_combout\,
	combout => \G17|ram~219_combout\);

-- Location: MLABCELL_X84_Y26_N30
\G17|ram~235\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~235_combout\ = ( \rtl~8_combout\ & ( \G18|SAIDA[11]~42_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~235_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \G17|ALT_INV_ram~235_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~235_combout\);

-- Location: MLABCELL_X84_Y26_N18
\G17|ram~251\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~251_combout\ = ( \rtl~6_combout\ & ( \G18|SAIDA[11]~42_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~251_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datac => \G17|ALT_INV_ram~251_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~251_combout\);

-- Location: MLABCELL_X84_Y26_N48
\G17|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~187_combout\ = ( \G17|ram~187_combout\ & ( (!\rtl~14_combout\) # (\G18|SAIDA[11]~42_combout\) ) ) # ( !\G17|ram~187_combout\ & ( (\G18|SAIDA[11]~42_combout\ & \rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G17|ALT_INV_ram~187_combout\,
	combout => \G17|ram~187_combout\);

-- Location: MLABCELL_X84_Y26_N54
\G17|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~171_combout\ = ( \rtl~16_combout\ & ( \G18|SAIDA[11]~42_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~171_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \G17|ALT_INV_ram~171_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~171_combout\);

-- Location: MLABCELL_X84_Y26_N57
\G17|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~155_combout\ = ( \rtl~13_combout\ & ( \G18|SAIDA[11]~42_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~155_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \G17|ALT_INV_ram~155_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~155_combout\);

-- Location: MLABCELL_X84_Y26_N9
\G17|ram~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~139_combout\ = ( \rtl~15_combout\ & ( \G18|SAIDA[11]~42_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~139_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datac => \G17|ALT_INV_ram~139_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~139_combout\);

-- Location: LABCELL_X85_Y26_N6
\G17|ram~489\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~489_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~139_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\) # (\G17|ram~155_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~171_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~187_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram~187_combout\,
	datac => \G17|ALT_INV_ram~171_combout\,
	datad => \G17|ALT_INV_ram~155_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~139_combout\,
	combout => \G17|ram~489_combout\);

-- Location: MLABCELL_X84_Y26_N0
\G17|ram~203\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~203_combout\ = ( \G17|ram~203_combout\ & ( \G18|SAIDA[11]~42_combout\ ) ) # ( !\G17|ram~203_combout\ & ( \G18|SAIDA[11]~42_combout\ & ( \rtl~7_combout\ ) ) ) # ( \G17|ram~203_combout\ & ( !\G18|SAIDA[11]~42_combout\ & ( !\rtl~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~7_combout\,
	datae => \G17|ALT_INV_ram~203_combout\,
	dataf => \G18|ALT_INV_SAIDA[11]~42_combout\,
	combout => \G17|ram~203_combout\);

-- Location: LABCELL_X85_Y26_N51
\G17|ram~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~393_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~489_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~489_combout\ & ((\G17|ram~203_combout\))) # (\G17|ram~489_combout\ & (\G17|ram~219_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~489_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~489_combout\ & (\G17|ram~235_combout\)) # (\G17|ram~489_combout\ & ((\G17|ram~251_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~219_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~235_combout\,
	datad => \G17|ALT_INV_ram~251_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~489_combout\,
	datag => \G17|ALT_INV_ram~203_combout\,
	combout => \G17|ram~393_combout\);

-- Location: LABCELL_X85_Y26_N24
\G18|SAIDA[11]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[11]~41_combout\ = ( \G17|ram~397_combout\ & ( \G17|ram~393_combout\ & ( !\G16|Mux11~2_combout\ ) ) ) # ( !\G17|ram~397_combout\ & ( \G17|ram~393_combout\ & ( (\G16|Mux12~2_combout\ & !\G16|Mux11~2_combout\) ) ) ) # ( \G17|ram~397_combout\ & ( 
-- !\G17|ram~393_combout\ & ( (!\G16|Mux12~2_combout\ & !\G16|Mux11~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datae => \G17|ALT_INV_ram~397_combout\,
	dataf => \G17|ALT_INV_ram~393_combout\,
	combout => \G18|SAIDA[11]~41_combout\);

-- Location: MLABCELL_X84_Y26_N45
\G17|ram~267\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~267_combout\ = ( \G17|ram~267_combout\ & ( \G18|SAIDA[11]~42_combout\ ) ) # ( !\G17|ram~267_combout\ & ( \G18|SAIDA[11]~42_combout\ & ( \rtl~0_combout\ ) ) ) # ( \G17|ram~267_combout\ & ( !\G18|SAIDA[11]~42_combout\ & ( !\rtl~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~0_combout\,
	datae => \G17|ALT_INV_ram~267_combout\,
	dataf => \G18|ALT_INV_SAIDA[11]~42_combout\,
	combout => \G17|ram~267_combout\);

-- Location: MLABCELL_X87_Y21_N33
\G14|SAIDA[11]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[11]~13_combout\ = ( !\G5|aluSRC~combout\ & ( \G18|SAIDA[11]~42_combout\ & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G5|ALT_INV_aluSRC~combout\,
	dataf => \G18|ALT_INV_SAIDA[11]~42_combout\,
	combout => \G14|SAIDA[11]~13_combout\);

-- Location: LABCELL_X85_Y21_N42
\G16|Add1~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~44_sumout\ = SUM(( !\G14|SAIDA[11]~13_combout\ ) + ( \G18|SAIDA[11]~42_combout\ ) + ( \G16|Add1~77\ ))
-- \G16|Add1~45\ = CARRY(( !\G14|SAIDA[11]~13_combout\ ) + ( \G18|SAIDA[11]~42_combout\ ) + ( \G16|Add1~77\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datad => \G14|ALT_INV_SAIDA[11]~13_combout\,
	cin => \G16|Add1~77\,
	sumout => \G16|Add1~44_sumout\,
	cout => \G16|Add1~45\);

-- Location: MLABCELL_X84_Y21_N33
\G16|Add0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~42_sumout\ = SUM(( \G18|SAIDA[11]~42_combout\ ) + ( \G14|SAIDA[11]~13_combout\ ) + ( \G16|Add0~39\ ))
-- \G16|Add0~43\ = CARRY(( \G18|SAIDA[11]~42_combout\ ) + ( \G14|SAIDA[11]~13_combout\ ) + ( \G16|Add0~39\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[11]~13_combout\,
	datad => \G18|ALT_INV_SAIDA[11]~42_combout\,
	cin => \G16|Add0~39\,
	sumout => \G16|Add0~42_sumout\,
	cout => \G16|Add0~43\);

-- Location: LABCELL_X80_Y21_N30
\G16|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux4~0_combout\ = ( \G16|Add1~44_sumout\ & ( \G16|Add0~42_sumout\ & ( ((\G16|Mux1~1_combout\ & \G18|SAIDA[11]~42_combout\)) # (\G16|Mux1~0_combout\) ) ) ) # ( !\G16|Add1~44_sumout\ & ( \G16|Add0~42_sumout\ & ( (!\G16|Mux1~1_combout\ & 
-- (\G16|Mux1~0_combout\)) # (\G16|Mux1~1_combout\ & (!\G16|Mux1~0_combout\ & \G18|SAIDA[11]~42_combout\)) ) ) ) # ( \G16|Add1~44_sumout\ & ( !\G16|Add0~42_sumout\ & ( (\G16|Mux1~1_combout\ & ((\G18|SAIDA[11]~42_combout\) # (\G16|Mux1~0_combout\))) ) ) ) # ( 
-- !\G16|Add1~44_sumout\ & ( !\G16|Add0~42_sumout\ & ( (\G16|Mux1~1_combout\ & (!\G16|Mux1~0_combout\ & \G18|SAIDA[11]~42_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000101010001010100100110001001100011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~1_combout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datac => \G18|ALT_INV_SAIDA[11]~42_combout\,
	datae => \G16|ALT_INV_Add1~44_sumout\,
	dataf => \G16|ALT_INV_Add0~42_sumout\,
	combout => \G16|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y26_N24
\G18|SAIDA[11]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[11]~42_combout\ = ( \G17|ram~267_combout\ & ( \G16|Mux4~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G5|memparareg~combout\) # (\G18|SAIDA[11]~41_combout\)) # (\G18|SAIDA[1]~16_combout\))) ) ) ) # ( !\G17|ram~267_combout\ & ( 
-- \G16|Mux4~0_combout\ & ( (\Clock_Sistema~input_o\ & ((\G5|memparareg~combout\) # (\G18|SAIDA[11]~41_combout\))) ) ) ) # ( \G17|ram~267_combout\ & ( !\G16|Mux4~0_combout\ & ( (\Clock_Sistema~input_o\ & (!\G5|memparareg~combout\ & 
-- ((\G18|SAIDA[11]~41_combout\) # (\G18|SAIDA[1]~16_combout\)))) ) ) ) # ( !\G17|ram~267_combout\ & ( !\G16|Mux4~0_combout\ & ( (\G18|SAIDA[11]~41_combout\ & (\Clock_Sistema~input_o\ & !\G5|memparareg~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000001110000000000000011000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[1]~16_combout\,
	datab => \G18|ALT_INV_SAIDA[11]~41_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G5|ALT_INV_memparareg~combout\,
	datae => \G17|ALT_INV_ram~267_combout\,
	dataf => \G16|ALT_INV_Mux4~0_combout\,
	combout => \G18|SAIDA[11]~42_combout\);

-- Location: MLABCELL_X82_Y26_N36
\G17|ram~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~124_combout\ = ( \G18|SAIDA[12]~44_combout\ & ( (\G17|ram~124_combout\) # (\rtl~2_combout\) ) ) # ( !\G18|SAIDA[12]~44_combout\ & ( (!\rtl~2_combout\ & \G17|ram~124_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~2_combout\,
	datad => \G17|ALT_INV_ram~124_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G17|ram~124_combout\);

-- Location: MLABCELL_X82_Y26_N3
\G17|ram~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~108_combout\ = ( \G18|SAIDA[12]~44_combout\ & ( (\G17|ram~108_combout\) # (\rtl~4_combout\) ) ) # ( !\G18|SAIDA[12]~44_combout\ & ( (!\rtl~4_combout\ & \G17|ram~108_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~4_combout\,
	datad => \G17|ALT_INV_ram~108_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G17|ram~108_combout\);

-- Location: MLABCELL_X82_Y26_N33
\G17|ram~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~92_combout\ = ( \rtl~1_combout\ & ( \G18|SAIDA[12]~44_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~92_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~92_combout\,
	datac => \G18|ALT_INV_SAIDA[12]~44_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~92_combout\);

-- Location: MLABCELL_X82_Y26_N21
\G17|ram~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~28_combout\ = ( \G18|SAIDA[12]~44_combout\ & ( (\G17|ram~28_combout\) # (\rtl~9_combout\) ) ) # ( !\G18|SAIDA[12]~44_combout\ & ( (!\rtl~9_combout\ & \G17|ram~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~9_combout\,
	datad => \G17|ALT_INV_ram~28_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G17|ram~28_combout\);

-- Location: MLABCELL_X82_Y26_N30
\G17|ram~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~44_combout\ = ( \G17|ram~44_combout\ & ( (!\rtl~12_combout\) # (\G18|SAIDA[12]~44_combout\) ) ) # ( !\G17|ram~44_combout\ & ( (\G18|SAIDA[12]~44_combout\ & \rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[12]~44_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G17|ALT_INV_ram~44_combout\,
	combout => \G17|ram~44_combout\);

-- Location: MLABCELL_X82_Y26_N18
\G17|ram~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~60_combout\ = ( \G17|ram~60_combout\ & ( (!\rtl~10_combout\) # (\G18|SAIDA[12]~44_combout\) ) ) # ( !\G17|ram~60_combout\ & ( (\G18|SAIDA[12]~44_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[12]~44_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~60_combout\,
	combout => \G17|ram~60_combout\);

-- Location: MLABCELL_X82_Y26_N39
\G17|ram~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~12_combout\ = ( \G18|SAIDA[12]~44_combout\ & ( (\rtl~11_combout\) # (\G17|ram~12_combout\) ) ) # ( !\G18|SAIDA[12]~44_combout\ & ( (\G17|ram~12_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~12_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G17|ram~12_combout\);

-- Location: LABCELL_X81_Y26_N24
\G17|ram~501\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~501_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~12_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~28_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (\G17|ram~44_combout\ & ((!\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\) # (\G17|ram~60_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~28_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~44_combout\,
	datad => \G17|ALT_INV_ram~60_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~12_combout\,
	combout => \G17|ram~501_combout\);

-- Location: MLABCELL_X82_Y26_N6
\G17|ram~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~76_combout\ = ( \G17|ram~76_combout\ & ( (!\rtl~3_combout\) # (\G18|SAIDA[12]~44_combout\) ) ) # ( !\G17|ram~76_combout\ & ( (\G18|SAIDA[12]~44_combout\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[12]~44_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G17|ALT_INV_ram~76_combout\,
	combout => \G17|ram~76_combout\);

-- Location: LABCELL_X81_Y26_N12
\G17|ram~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~405_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~501_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~501_combout\ & (\G17|ram~76_combout\)) # (\G17|ram~501_combout\ & ((\G17|ram~92_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~501_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~501_combout\ & ((\G17|ram~108_combout\))) # (\G17|ram~501_combout\ & (\G17|ram~124_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~124_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~108_combout\,
	datad => \G17|ALT_INV_ram~92_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~501_combout\,
	datag => \G17|ALT_INV_ram~76_combout\,
	combout => \G17|ram~405_combout\);

-- Location: MLABCELL_X82_Y26_N9
\G17|ram~252\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~252_combout\ = ( \G17|ram~252_combout\ & ( (!\rtl~6_combout\) # (\G18|SAIDA[12]~44_combout\) ) ) # ( !\G17|ram~252_combout\ & ( (\rtl~6_combout\ & \G18|SAIDA[12]~44_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~6_combout\,
	datad => \G18|ALT_INV_SAIDA[12]~44_combout\,
	dataf => \G17|ALT_INV_ram~252_combout\,
	combout => \G17|ram~252_combout\);

-- Location: MLABCELL_X82_Y26_N48
\G17|ram~220\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~220_combout\ = ( \G18|SAIDA[12]~44_combout\ & ( (\rtl~5_combout\) # (\G17|ram~220_combout\) ) ) # ( !\G18|SAIDA[12]~44_combout\ & ( (\G17|ram~220_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~220_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G17|ram~220_combout\);

-- Location: MLABCELL_X82_Y26_N0
\G17|ram~236\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~236_combout\ = ( \rtl~8_combout\ & ( \G18|SAIDA[12]~44_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~236_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~236_combout\,
	datad => \G18|ALT_INV_SAIDA[12]~44_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~236_combout\);

-- Location: MLABCELL_X82_Y26_N54
\G17|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~156_combout\ = ( \G18|SAIDA[12]~44_combout\ & ( (\rtl~13_combout\) # (\G17|ram~156_combout\) ) ) # ( !\G18|SAIDA[12]~44_combout\ & ( (\G17|ram~156_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~156_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G17|ram~156_combout\);

-- Location: MLABCELL_X82_Y26_N15
\G17|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~172_combout\ = ( \G18|SAIDA[12]~44_combout\ & ( (\rtl~16_combout\) # (\G17|ram~172_combout\) ) ) # ( !\G18|SAIDA[12]~44_combout\ & ( (\G17|ram~172_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~172_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G17|ram~172_combout\);

-- Location: MLABCELL_X82_Y26_N57
\G17|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~188_combout\ = ( \rtl~14_combout\ & ( \G18|SAIDA[12]~44_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~188_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[12]~44_combout\,
	datad => \G17|ALT_INV_ram~188_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~188_combout\);

-- Location: MLABCELL_X82_Y26_N12
\G17|ram~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~140_combout\ = ( \G18|SAIDA[12]~44_combout\ & ( (\rtl~15_combout\) # (\G17|ram~140_combout\) ) ) # ( !\G18|SAIDA[12]~44_combout\ & ( (\G17|ram~140_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~140_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G17|ram~140_combout\);

-- Location: LABCELL_X85_Y26_N30
\G17|ram~497\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~497_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~140_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~156_combout\))))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~172_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~188_combout\))))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~156_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~172_combout\,
	datad => \G17|ALT_INV_ram~188_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~140_combout\,
	combout => \G17|ram~497_combout\);

-- Location: MLABCELL_X82_Y26_N51
\G17|ram~204\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~204_combout\ = ( \G17|ram~204_combout\ & ( (!\rtl~7_combout\) # (\G18|SAIDA[12]~44_combout\) ) ) # ( !\G17|ram~204_combout\ & ( (\rtl~7_combout\ & \G18|SAIDA[12]~44_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~7_combout\,
	datad => \G18|ALT_INV_SAIDA[12]~44_combout\,
	dataf => \G17|ALT_INV_ram~204_combout\,
	combout => \G17|ram~204_combout\);

-- Location: LABCELL_X85_Y26_N36
\G17|ram~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~401_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G17|ram~497_combout\ & (((\G17|ram~204_combout\ & \G16|Mux13~2_combout\)))) # (\G17|ram~497_combout\ & (((!\G16|Mux13~2_combout\)) # (\G17|ram~220_combout\)))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~497_combout\ & (((\G17|ram~236_combout\ & \G16|Mux13~2_combout\)))) # (\G17|ram~497_combout\ & (((!\G16|Mux13~2_combout\)) # (\G17|ram~252_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~252_combout\,
	datab => \G17|ALT_INV_ram~220_combout\,
	datac => \G17|ALT_INV_ram~236_combout\,
	datad => \G17|ALT_INV_ram~497_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~204_combout\,
	combout => \G17|ram~401_combout\);

-- Location: LABCELL_X85_Y26_N18
\G18|SAIDA[12]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[12]~43_combout\ = ( \G17|ram~401_combout\ & ( \G16|Mux12~2_combout\ & ( !\G16|Mux11~2_combout\ ) ) ) # ( \G17|ram~401_combout\ & ( !\G16|Mux12~2_combout\ & ( (\G17|ram~405_combout\ & !\G16|Mux11~2_combout\) ) ) ) # ( !\G17|ram~401_combout\ & ( 
-- !\G16|Mux12~2_combout\ & ( (\G17|ram~405_combout\ & !\G16|Mux11~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~405_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datae => \G17|ALT_INV_ram~401_combout\,
	dataf => \G16|ALT_INV_Mux12~2_combout\,
	combout => \G18|SAIDA[12]~43_combout\);

-- Location: MLABCELL_X82_Y26_N42
\G17|ram~268\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~268_combout\ = ( \rtl~0_combout\ & ( \G18|SAIDA[12]~44_combout\ ) ) # ( !\rtl~0_combout\ & ( \G18|SAIDA[12]~44_combout\ & ( \G17|ram~268_combout\ ) ) ) # ( !\rtl~0_combout\ & ( !\G18|SAIDA[12]~44_combout\ & ( \G17|ram~268_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~268_combout\,
	datae => \ALT_INV_rtl~0_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G17|ram~268_combout\);

-- Location: MLABCELL_X87_Y21_N48
\G14|SAIDA[12]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[12]~14_combout\ = ( \G18|SAIDA[12]~44_combout\ & ( (\Clock_Sistema~input_o\ & !\G5|aluSRC~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_aluSRC~combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~44_combout\,
	combout => \G14|SAIDA[12]~14_combout\);

-- Location: MLABCELL_X84_Y21_N36
\G16|Add0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~46_sumout\ = SUM(( \G18|SAIDA[12]~44_combout\ ) + ( \G14|SAIDA[12]~14_combout\ ) + ( \G16|Add0~43\ ))
-- \G16|Add0~47\ = CARRY(( \G18|SAIDA[12]~44_combout\ ) + ( \G14|SAIDA[12]~14_combout\ ) + ( \G16|Add0~43\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[12]~44_combout\,
	datac => \G14|ALT_INV_SAIDA[12]~14_combout\,
	cin => \G16|Add0~43\,
	sumout => \G16|Add0~46_sumout\,
	cout => \G16|Add0~47\);

-- Location: LABCELL_X85_Y21_N45
\G16|Add1~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~48_sumout\ = SUM(( !\G14|SAIDA[12]~14_combout\ ) + ( \G18|SAIDA[12]~44_combout\ ) + ( \G16|Add1~45\ ))
-- \G16|Add1~49\ = CARRY(( !\G14|SAIDA[12]~14_combout\ ) + ( \G18|SAIDA[12]~44_combout\ ) + ( \G16|Add1~45\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[12]~44_combout\,
	datad => \G14|ALT_INV_SAIDA[12]~14_combout\,
	cin => \G16|Add1~45\,
	sumout => \G16|Add1~48_sumout\,
	cout => \G16|Add1~49\);

-- Location: LABCELL_X80_Y21_N12
\G16|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux3~0_combout\ = ( \G16|Add0~46_sumout\ & ( \G16|Add1~48_sumout\ & ( ((\G18|SAIDA[12]~44_combout\ & \G16|Mux1~1_combout\)) # (\G16|Mux1~0_combout\) ) ) ) # ( !\G16|Add0~46_sumout\ & ( \G16|Add1~48_sumout\ & ( (\G16|Mux1~1_combout\ & 
-- ((\G16|Mux1~0_combout\) # (\G18|SAIDA[12]~44_combout\))) ) ) ) # ( \G16|Add0~46_sumout\ & ( !\G16|Add1~48_sumout\ & ( (!\G16|Mux1~0_combout\ & (\G18|SAIDA[12]~44_combout\ & \G16|Mux1~1_combout\)) # (\G16|Mux1~0_combout\ & ((!\G16|Mux1~1_combout\))) ) ) ) 
-- # ( !\G16|Add0~46_sumout\ & ( !\G16|Add1~48_sumout\ & ( (\G18|SAIDA[12]~44_combout\ & (!\G16|Mux1~0_combout\ & \G16|Mux1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100001101000011010000000111000001110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[12]~44_combout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datac => \G16|ALT_INV_Mux1~1_combout\,
	datae => \G16|ALT_INV_Add0~46_sumout\,
	dataf => \G16|ALT_INV_Add1~48_sumout\,
	combout => \G16|Mux3~0_combout\);

-- Location: MLABCELL_X82_Y26_N24
\G18|SAIDA[12]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[12]~44_combout\ = ( \G16|Mux3~0_combout\ & ( \Clock_Sistema~input_o\ & ( (((\G18|SAIDA[1]~16_combout\ & \G17|ram~268_combout\)) # (\G5|memparareg~combout\)) # (\G18|SAIDA[12]~43_combout\) ) ) ) # ( !\G16|Mux3~0_combout\ & ( 
-- \Clock_Sistema~input_o\ & ( (!\G5|memparareg~combout\ & (((\G18|SAIDA[1]~16_combout\ & \G17|ram~268_combout\)) # (\G18|SAIDA[12]~43_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000011100000101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[12]~43_combout\,
	datab => \G18|ALT_INV_SAIDA[1]~16_combout\,
	datac => \G5|ALT_INV_memparareg~combout\,
	datad => \G17|ALT_INV_ram~268_combout\,
	datae => \G16|ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA[12]~44_combout\);

-- Location: MLABCELL_X82_Y24_N9
\G17|ram~253\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~253_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~6_combout\) # (\G17|ram~253_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~253_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~253_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~253_combout\);

-- Location: MLABCELL_X82_Y24_N45
\G17|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~157_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~13_combout\) # (\G17|ram~157_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~157_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~157_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~157_combout\);

-- Location: MLABCELL_X82_Y24_N48
\G17|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~173_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~16_combout\) # (\G17|ram~173_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~173_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~173_combout\,
	datac => \ALT_INV_rtl~16_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~173_combout\);

-- Location: MLABCELL_X82_Y24_N15
\G17|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~189_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~14_combout\) # (\G17|ram~189_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~189_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~189_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~189_combout\);

-- Location: MLABCELL_X82_Y24_N33
\G17|ram~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~141_combout\ = ( \G17|ram~141_combout\ & ( (!\rtl~15_combout\) # (\G18|SAIDA[13]~46_combout\) ) ) # ( !\G17|ram~141_combout\ & ( (\G18|SAIDA[13]~46_combout\ & \rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[13]~46_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G17|ALT_INV_ram~141_combout\,
	combout => \G17|ram~141_combout\);

-- Location: LABCELL_X81_Y24_N39
\G17|ram~505\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~505_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~141_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~157_combout\))))) # (\G16|Mux13~2_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~173_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~189_combout\))))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~157_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~173_combout\,
	datad => \G17|ALT_INV_ram~189_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~141_combout\,
	combout => \G17|ram~505_combout\);

-- Location: MLABCELL_X82_Y24_N30
\G17|ram~237\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~237_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~8_combout\) # (\G17|ram~237_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~237_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~237_combout\,
	datac => \ALT_INV_rtl~8_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~237_combout\);

-- Location: MLABCELL_X82_Y24_N6
\G17|ram~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~221_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~5_combout\) # (\G17|ram~221_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~221_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~221_combout\,
	datac => \ALT_INV_rtl~5_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~221_combout\);

-- Location: MLABCELL_X82_Y24_N0
\G17|ram~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~205_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~7_combout\) # (\G17|ram~205_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~205_combout\ & !\rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~205_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~205_combout\);

-- Location: LABCELL_X81_Y24_N0
\G17|ram~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~409_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G17|ram~505_combout\ & (\G17|ram~205_combout\ & ((\G16|Mux13~2_combout\)))) # (\G17|ram~505_combout\ & (((!\G16|Mux13~2_combout\) # (\G17|ram~221_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~505_combout\ & (((\G17|ram~237_combout\ & ((\G16|Mux13~2_combout\)))))) # (\G17|ram~505_combout\ & ((((!\G16|Mux13~2_combout\))) # (\G17|ram~253_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001100001111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~253_combout\,
	datab => \G17|ALT_INV_ram~505_combout\,
	datac => \G17|ALT_INV_ram~237_combout\,
	datad => \G17|ALT_INV_ram~221_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~205_combout\,
	combout => \G17|ram~409_combout\);

-- Location: MLABCELL_X82_Y24_N51
\G17|ram~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~93_combout\ = ( \G17|ram~93_combout\ & ( (!\rtl~1_combout\) # (\G18|SAIDA[13]~46_combout\) ) ) # ( !\G17|ram~93_combout\ & ( (\G18|SAIDA[13]~46_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA[13]~46_combout\,
	datac => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~93_combout\,
	combout => \G17|ram~93_combout\);

-- Location: MLABCELL_X82_Y24_N24
\G17|ram~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~61_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~10_combout\) # (\G17|ram~61_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~61_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~61_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~61_combout\);

-- Location: MLABCELL_X82_Y24_N18
\G17|ram~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~45_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~12_combout\) # (\G17|ram~45_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~45_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~45_combout\,
	datac => \ALT_INV_rtl~12_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~45_combout\);

-- Location: MLABCELL_X82_Y24_N27
\G17|ram~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~29_combout\ = ( \G17|ram~29_combout\ & ( (!\rtl~9_combout\) # (\G18|SAIDA[13]~46_combout\) ) ) # ( !\G17|ram~29_combout\ & ( (\G18|SAIDA[13]~46_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[13]~46_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~29_combout\,
	combout => \G17|ram~29_combout\);

-- Location: MLABCELL_X82_Y24_N21
\G17|ram~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~13_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~11_combout\) # (\G17|ram~13_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~13_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~13_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~13_combout\);

-- Location: LABCELL_X81_Y24_N45
\G17|ram~509\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~509_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~2_combout\ & (\G17|ram~13_combout\ & ((!\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\) # (\G17|ram~29_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~45_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~61_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~61_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~45_combout\,
	datad => \G17|ALT_INV_ram~29_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~13_combout\,
	combout => \G17|ram~509_combout\);

-- Location: MLABCELL_X82_Y24_N42
\G17|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~109_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~4_combout\) # (\G17|ram~109_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~109_combout\ & !\rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~109_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~109_combout\);

-- Location: MLABCELL_X82_Y24_N3
\G17|ram~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~125_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\G17|ram~125_combout\) # (\rtl~2_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (!\rtl~2_combout\ & \G17|ram~125_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~2_combout\,
	datad => \G17|ALT_INV_ram~125_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~125_combout\);

-- Location: MLABCELL_X82_Y24_N54
\G17|ram~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~77_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~3_combout\) # (\G17|ram~77_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~77_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~77_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~77_combout\);

-- Location: LABCELL_X85_Y24_N48
\G17|ram~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~413_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~509_combout\ & (((\G17|ram~77_combout\ & ((\G16|Mux13~2_combout\)))))) # (\G17|ram~509_combout\ & ((((!\G16|Mux13~2_combout\))) # (\G17|ram~93_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~509_combout\ & (\G17|ram~109_combout\ & ((\G16|Mux13~2_combout\)))) # (\G17|ram~509_combout\ & (((!\G16|Mux13~2_combout\) # (\G17|ram~125_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~93_combout\,
	datab => \G17|ALT_INV_ram~509_combout\,
	datac => \G17|ALT_INV_ram~109_combout\,
	datad => \G17|ALT_INV_ram~125_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~77_combout\,
	combout => \G17|ram~413_combout\);

-- Location: LABCELL_X85_Y24_N33
\G18|SAIDA[13]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[13]~45_combout\ = ( \G17|ram~413_combout\ & ( (!\G16|Mux11~2_combout\ & ((!\G16|Mux12~2_combout\) # (\G17|ram~409_combout\))) ) ) # ( !\G17|ram~413_combout\ & ( (!\G16|Mux11~2_combout\ & (\G16|Mux12~2_combout\ & \G17|ram~409_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G17|ALT_INV_ram~409_combout\,
	dataf => \G17|ALT_INV_ram~413_combout\,
	combout => \G18|SAIDA[13]~45_combout\);

-- Location: MLABCELL_X82_Y24_N57
\G14|SAIDA[13]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[13]~10_combout\ = ( !\G5|aluSRC~combout\ & ( (\Clock_Sistema~input_o\ & \G18|SAIDA[13]~46_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA[13]~46_combout\,
	dataf => \G5|ALT_INV_aluSRC~combout\,
	combout => \G14|SAIDA[13]~10_combout\);

-- Location: MLABCELL_X84_Y21_N39
\G16|Add0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~50_sumout\ = SUM(( \G18|SAIDA[13]~46_combout\ ) + ( \G14|SAIDA[13]~10_combout\ ) + ( \G16|Add0~47\ ))
-- \G16|Add0~51\ = CARRY(( \G18|SAIDA[13]~46_combout\ ) + ( \G14|SAIDA[13]~10_combout\ ) + ( \G16|Add0~47\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[13]~10_combout\,
	datad => \G18|ALT_INV_SAIDA[13]~46_combout\,
	cin => \G16|Add0~47\,
	sumout => \G16|Add0~50_sumout\,
	cout => \G16|Add0~51\);

-- Location: LABCELL_X85_Y21_N48
\G16|Add1~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~20_sumout\ = SUM(( !\G14|SAIDA[13]~10_combout\ ) + ( \G18|SAIDA[13]~46_combout\ ) + ( \G16|Add1~49\ ))
-- \G16|Add1~21\ = CARRY(( !\G14|SAIDA[13]~10_combout\ ) + ( \G18|SAIDA[13]~46_combout\ ) + ( \G16|Add1~49\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA[13]~46_combout\,
	datad => \G14|ALT_INV_SAIDA[13]~10_combout\,
	cin => \G16|Add1~49\,
	sumout => \G16|Add1~20_sumout\,
	cout => \G16|Add1~21\);

-- Location: LABCELL_X80_Y21_N54
\G16|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux2~0_combout\ = ( \G16|Add1~20_sumout\ & ( \G18|SAIDA[13]~46_combout\ & ( ((\G16|Mux1~0_combout\ & \G16|Add0~50_sumout\)) # (\G16|Mux1~1_combout\) ) ) ) # ( !\G16|Add1~20_sumout\ & ( \G18|SAIDA[13]~46_combout\ & ( (!\G16|Mux1~1_combout\ & 
-- (\G16|Mux1~0_combout\ & \G16|Add0~50_sumout\)) # (\G16|Mux1~1_combout\ & (!\G16|Mux1~0_combout\)) ) ) ) # ( \G16|Add1~20_sumout\ & ( !\G18|SAIDA[13]~46_combout\ & ( (\G16|Mux1~0_combout\ & ((\G16|Add0~50_sumout\) # (\G16|Mux1~1_combout\))) ) ) ) # ( 
-- !\G16|Add1~20_sumout\ & ( !\G18|SAIDA[13]~46_combout\ & ( (!\G16|Mux1~1_combout\ & (\G16|Mux1~0_combout\ & \G16|Add0~50_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000100110001001101000110010001100101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~1_combout\,
	datab => \G16|ALT_INV_Mux1~0_combout\,
	datac => \G16|ALT_INV_Add0~50_sumout\,
	datae => \G16|ALT_INV_Add1~20_sumout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G16|Mux2~0_combout\);

-- Location: MLABCELL_X82_Y24_N12
\G17|ram~269\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~269_combout\ = ( \G18|SAIDA[13]~46_combout\ & ( (\rtl~0_combout\) # (\G17|ram~269_combout\) ) ) # ( !\G18|SAIDA[13]~46_combout\ & ( (\G17|ram~269_combout\ & !\rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~269_combout\,
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~46_combout\,
	combout => \G17|ram~269_combout\);

-- Location: MLABCELL_X82_Y24_N36
\G18|SAIDA[13]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[13]~46_combout\ = ( \G5|memparareg~combout\ & ( \G17|ram~269_combout\ & ( (\Clock_Sistema~input_o\ & \G16|Mux2~0_combout\) ) ) ) # ( !\G5|memparareg~combout\ & ( \G17|ram~269_combout\ & ( (\Clock_Sistema~input_o\ & ((\G18|SAIDA[1]~16_combout\) 
-- # (\G18|SAIDA[13]~45_combout\))) ) ) ) # ( \G5|memparareg~combout\ & ( !\G17|ram~269_combout\ & ( (\Clock_Sistema~input_o\ & \G16|Mux2~0_combout\) ) ) ) # ( !\G5|memparareg~combout\ & ( !\G17|ram~269_combout\ & ( (\G18|SAIDA[13]~45_combout\ & 
-- \Clock_Sistema~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000011001100010011000100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[13]~45_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[1]~16_combout\,
	datad => \G16|ALT_INV_Mux2~0_combout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G17|ALT_INV_ram~269_combout\,
	combout => \G18|SAIDA[13]~46_combout\);

-- Location: LABCELL_X81_Y25_N24
\G17|ram~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~94_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~1_combout\) # (\G17|ram~94_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~94_combout\ & !\rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~94_combout\,
	datac => \ALT_INV_rtl~1_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~94_combout\);

-- Location: LABCELL_X81_Y25_N18
\G17|ram~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~126_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~2_combout\) # (\G17|ram~126_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~126_combout\ & !\rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~126_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~126_combout\);

-- Location: LABCELL_X81_Y25_N6
\G17|ram~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~110_combout\ = ( \G17|ram~110_combout\ & ( (!\rtl~4_combout\) # (\G18|SAIDA[14]~48_combout\) ) ) # ( !\G17|ram~110_combout\ & ( (\rtl~4_combout\ & \G18|SAIDA[14]~48_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~4_combout\,
	datac => \G18|ALT_INV_SAIDA[14]~48_combout\,
	dataf => \G17|ALT_INV_ram~110_combout\,
	combout => \G17|ram~110_combout\);

-- Location: LABCELL_X81_Y25_N27
\G17|ram~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~30_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\G17|ram~30_combout\) # (\rtl~9_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (!\rtl~9_combout\ & \G17|ram~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~9_combout\,
	datad => \G17|ALT_INV_ram~30_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~30_combout\);

-- Location: LABCELL_X81_Y25_N30
\G17|ram~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~46_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~12_combout\) # (\G17|ram~46_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~46_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~46_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~46_combout\);

-- Location: LABCELL_X81_Y25_N33
\G17|ram~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~62_combout\ = ( \G17|ram~62_combout\ & ( (!\rtl~10_combout\) # (\G18|SAIDA[14]~48_combout\) ) ) # ( !\G17|ram~62_combout\ & ( (\G18|SAIDA[14]~48_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[14]~48_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~62_combout\,
	combout => \G17|ram~62_combout\);

-- Location: LABCELL_X81_Y25_N3
\G17|ram~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~14_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\G17|ram~14_combout\) # (\rtl~11_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (!\rtl~11_combout\ & \G17|ram~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~11_combout\,
	datad => \G17|ALT_INV_ram~14_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~14_combout\);

-- Location: LABCELL_X80_Y25_N9
\G17|ram~517\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~517_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~14_combout\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~30_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (\G17|ram~46_combout\ & ((!\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\) # (\G17|ram~62_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~30_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~46_combout\,
	datad => \G17|ALT_INV_ram~62_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~14_combout\,
	combout => \G17|ram~517_combout\);

-- Location: LABCELL_X81_Y25_N42
\G17|ram~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~78_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~3_combout\) # (\G17|ram~78_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~78_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~78_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~78_combout\);

-- Location: LABCELL_X80_Y25_N48
\G17|ram~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~421_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~517_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~517_combout\ & ((\G17|ram~78_combout\))) # (\G17|ram~517_combout\ & (\G17|ram~94_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~517_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~517_combout\ & ((\G17|ram~110_combout\))) # (\G17|ram~517_combout\ & (\G17|ram~126_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~94_combout\,
	datab => \G17|ALT_INV_ram~126_combout\,
	datac => \G17|ALT_INV_ram~110_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~517_combout\,
	datag => \G17|ALT_INV_ram~78_combout\,
	combout => \G17|ram~421_combout\);

-- Location: LABCELL_X81_Y25_N39
\G17|ram~254\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~254_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~6_combout\) # (\G17|ram~254_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~254_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~254_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~254_combout\);

-- Location: LABCELL_X81_Y25_N36
\G17|ram~238\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~238_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~8_combout\) # (\G17|ram~238_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~238_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~238_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~238_combout\);

-- Location: LABCELL_X81_Y25_N54
\G17|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~158_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~13_combout\) # (\G17|ram~158_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~158_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~158_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~158_combout\);

-- Location: LABCELL_X81_Y25_N57
\G17|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~190_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~14_combout\) # (\G17|ram~190_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~190_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~190_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~190_combout\);

-- Location: LABCELL_X81_Y25_N0
\G17|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~174_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~16_combout\) # (\G17|ram~174_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~174_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~174_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~174_combout\);

-- Location: LABCELL_X81_Y25_N15
\G17|ram~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~142_combout\ = (!\rtl~15_combout\ & ((\G17|ram~142_combout\))) # (\rtl~15_combout\ & (\G18|SAIDA[14]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[14]~48_combout\,
	datac => \G17|ALT_INV_ram~142_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~142_combout\);

-- Location: LABCELL_X81_Y26_N42
\G17|ram~513\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~513_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~2_combout\ & (((\G17|ram~142_combout\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~158_combout\)))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (((\G17|ram~174_combout\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~190_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~158_combout\,
	datab => \G17|ALT_INV_ram~190_combout\,
	datac => \G17|ALT_INV_ram~174_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~142_combout\,
	combout => \G17|ram~513_combout\);

-- Location: LABCELL_X81_Y25_N45
\G17|ram~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~222_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~5_combout\) # (\G17|ram~222_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~222_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~222_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~222_combout\);

-- Location: LABCELL_X81_Y25_N9
\G17|ram~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~206_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~7_combout\) # (\G17|ram~206_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~206_combout\ & !\rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~206_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~206_combout\);

-- Location: LABCELL_X81_Y26_N6
\G17|ram~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~417_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~513_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~513_combout\ & (\G17|ram~206_combout\)) # (\G17|ram~513_combout\ & ((\G17|ram~222_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~513_combout\))))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~513_combout\ & (((\G17|ram~238_combout\)))) # (\G17|ram~513_combout\ & (\G17|ram~254_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001100000000111101110100000011111111110000001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~254_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~238_combout\,
	datad => \G17|ALT_INV_ram~513_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~222_combout\,
	datag => \G17|ALT_INV_ram~206_combout\,
	combout => \G17|ram~417_combout\);

-- Location: LABCELL_X81_Y25_N21
\G18|SAIDA[14]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[14]~47_combout\ = ( !\G16|Mux11~2_combout\ & ( (!\G16|Mux12~2_combout\ & (\G17|ram~421_combout\)) # (\G16|Mux12~2_combout\ & ((\G17|ram~417_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~421_combout\,
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G17|ALT_INV_ram~417_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \G18|SAIDA[14]~47_combout\);

-- Location: LABCELL_X81_Y25_N12
\G17|ram~270\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~270_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (\rtl~0_combout\) # (\G17|ram~270_combout\) ) ) # ( !\G18|SAIDA[14]~48_combout\ & ( (\G17|ram~270_combout\ & !\rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~270_combout\,
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G17|ram~270_combout\);

-- Location: MLABCELL_X87_Y21_N27
\G14|SAIDA[14]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[14]~11_combout\ = ( \G18|SAIDA[14]~48_combout\ & ( (!\G5|aluSRC~combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_aluSRC~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G14|SAIDA[14]~11_combout\);

-- Location: LABCELL_X85_Y21_N51
\G16|Add1~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~24_sumout\ = SUM(( \G18|SAIDA[14]~48_combout\ ) + ( !\G14|SAIDA[14]~11_combout\ ) + ( \G16|Add1~21\ ))
-- \G16|Add1~25\ = CARRY(( \G18|SAIDA[14]~48_combout\ ) + ( !\G14|SAIDA[14]~11_combout\ ) + ( \G16|Add1~21\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[14]~11_combout\,
	datad => \G18|ALT_INV_SAIDA[14]~48_combout\,
	cin => \G16|Add1~21\,
	sumout => \G16|Add1~24_sumout\,
	cout => \G16|Add1~25\);

-- Location: MLABCELL_X84_Y21_N42
\G16|Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~54_sumout\ = SUM(( \G18|SAIDA[14]~48_combout\ ) + ( \G14|SAIDA[14]~11_combout\ ) + ( \G16|Add0~51\ ))
-- \G16|Add0~55\ = CARRY(( \G18|SAIDA[14]~48_combout\ ) + ( \G14|SAIDA[14]~11_combout\ ) + ( \G16|Add0~51\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[14]~11_combout\,
	datad => \G18|ALT_INV_SAIDA[14]~48_combout\,
	cin => \G16|Add0~51\,
	sumout => \G16|Add0~54_sumout\,
	cout => \G16|Add0~55\);

-- Location: LABCELL_X81_Y21_N30
\G16|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~2_combout\ = ( \G16|Add0~54_sumout\ & ( \G18|SAIDA[14]~48_combout\ & ( (!\G16|Mux1~0_combout\ & ((\G16|Mux1~1_combout\))) # (\G16|Mux1~0_combout\ & ((!\G16|Mux1~1_combout\) # (\G16|Add1~24_sumout\))) ) ) ) # ( !\G16|Add0~54_sumout\ & ( 
-- \G18|SAIDA[14]~48_combout\ & ( (\G16|Mux1~1_combout\ & ((!\G16|Mux1~0_combout\) # (\G16|Add1~24_sumout\))) ) ) ) # ( \G16|Add0~54_sumout\ & ( !\G18|SAIDA[14]~48_combout\ & ( (\G16|Mux1~0_combout\ & ((!\G16|Mux1~1_combout\) # (\G16|Add1~24_sumout\))) ) ) ) 
-- # ( !\G16|Add0~54_sumout\ & ( !\G18|SAIDA[14]~48_combout\ & ( (\G16|Mux1~0_combout\ & (\G16|Add1~24_sumout\ & \G16|Mux1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010100010101000100001011000010110101101101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~0_combout\,
	datab => \G16|ALT_INV_Add1~24_sumout\,
	datac => \G16|ALT_INV_Mux1~1_combout\,
	datae => \G16|ALT_INV_Add0~54_sumout\,
	dataf => \G18|ALT_INV_SAIDA[14]~48_combout\,
	combout => \G16|Mux1~2_combout\);

-- Location: LABCELL_X81_Y25_N48
\G18|SAIDA[14]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[14]~48_combout\ = ( \Clock_Sistema~input_o\ & ( \G16|Mux1~2_combout\ & ( (((\G18|SAIDA[1]~16_combout\ & \G17|ram~270_combout\)) # (\G5|memparareg~combout\)) # (\G18|SAIDA[14]~47_combout\) ) ) ) # ( \Clock_Sistema~input_o\ & ( 
-- !\G16|Mux1~2_combout\ & ( (!\G5|memparareg~combout\ & (((\G18|SAIDA[1]~16_combout\ & \G17|ram~270_combout\)) # (\G18|SAIDA[14]~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000111000000000000000000000011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[1]~16_combout\,
	datab => \G18|ALT_INV_SAIDA[14]~47_combout\,
	datac => \G5|ALT_INV_memparareg~combout\,
	datad => \G17|ALT_INV_ram~270_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G16|ALT_INV_Mux1~2_combout\,
	combout => \G18|SAIDA[14]~48_combout\);

-- Location: MLABCELL_X82_Y25_N48
\G17|ram~223\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~223_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~5_combout\) # (\G17|ram~223_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~223_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~223_combout\,
	datac => \ALT_INV_rtl~5_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~223_combout\);

-- Location: MLABCELL_X82_Y25_N30
\G17|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~159_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~13_combout\) # (\G17|ram~159_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~159_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~159_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~159_combout\);

-- Location: MLABCELL_X82_Y25_N21
\G17|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~175_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\G17|ram~175_combout\) # (\rtl~16_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (!\rtl~16_combout\ & \G17|ram~175_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~175_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~175_combout\);

-- Location: MLABCELL_X82_Y25_N33
\G17|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~191_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~14_combout\) # (\G17|ram~191_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~191_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~191_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~191_combout\);

-- Location: MLABCELL_X82_Y25_N18
\G17|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~143_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~15_combout\) # (\G17|ram~143_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~143_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~143_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~143_combout\);

-- Location: LABCELL_X83_Y25_N48
\G17|ram~521\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~521_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~143_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~159_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~175_combout\ & (!\G16|Mux13~2_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~191_combout\) # (\G16|Mux13~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram~159_combout\,
	datac => \G17|ALT_INV_ram~175_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~191_combout\,
	datag => \G17|ALT_INV_ram~143_combout\,
	combout => \G17|ram~521_combout\);

-- Location: MLABCELL_X82_Y25_N39
\G17|ram~239\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~239_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~8_combout\) # (\G17|ram~239_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~239_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~239_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~239_combout\);

-- Location: MLABCELL_X82_Y25_N51
\G17|ram~255\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~255_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~6_combout\) # (\G17|ram~255_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~255_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~255_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~255_combout\);

-- Location: MLABCELL_X82_Y25_N36
\G17|ram~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~207_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~7_combout\) # (\G17|ram~207_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~207_combout\ & !\rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~207_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~207_combout\);

-- Location: MLABCELL_X82_Y25_N6
\G17|ram~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~425_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~521_combout\ & (((\G17|ram~207_combout\ & ((\G16|Mux13~2_combout\)))))) # (\G17|ram~521_combout\ & ((((!\G16|Mux13~2_combout\))) # (\G17|ram~223_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~521_combout\ & (\G17|ram~239_combout\ & ((\G16|Mux13~2_combout\)))) # (\G17|ram~521_combout\ & (((!\G16|Mux13~2_combout\) # (\G17|ram~255_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~223_combout\,
	datab => \G17|ALT_INV_ram~521_combout\,
	datac => \G17|ALT_INV_ram~239_combout\,
	datad => \G17|ALT_INV_ram~255_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~207_combout\,
	combout => \G17|ram~425_combout\);

-- Location: MLABCELL_X82_Y25_N3
\G17|ram~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~271_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\G17|ram~271_combout\) # (\rtl~0_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (!\rtl~0_combout\ & \G17|ram~271_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~271_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~271_combout\);

-- Location: MLABCELL_X82_Y25_N0
\G17|ram~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~95_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\G17|ram~95_combout\) # (\rtl~1_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (!\rtl~1_combout\ & \G17|ram~95_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~1_combout\,
	datad => \G17|ALT_INV_ram~95_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~95_combout\);

-- Location: MLABCELL_X82_Y25_N27
\G17|ram~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~111_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\G17|ram~111_combout\) # (\rtl~4_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (!\rtl~4_combout\ & \G17|ram~111_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~4_combout\,
	datad => \G17|ALT_INV_ram~111_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~111_combout\);

-- Location: MLABCELL_X82_Y25_N54
\G17|ram~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~31_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~9_combout\) # (\G17|ram~31_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~31_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~31_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~31_combout\);

-- Location: MLABCELL_X82_Y25_N42
\G17|ram~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~63_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~10_combout\) # (\G17|ram~63_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~63_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~63_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~63_combout\);

-- Location: MLABCELL_X82_Y25_N15
\G17|ram~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~47_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~12_combout\) # (\G17|ram~47_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~47_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~47_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~47_combout\);

-- Location: MLABCELL_X82_Y25_N12
\G17|ram~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~15_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~11_combout\) # (\G17|ram~15_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~15_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~15_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~15_combout\);

-- Location: LABCELL_X83_Y25_N30
\G17|ram~525\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~525_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & ((\G17|ram~15_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~31_combout\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~2_combout\ & ((\G17|ram~47_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~63_combout\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~31_combout\,
	datab => \G17|ALT_INV_ram~63_combout\,
	datac => \G17|ALT_INV_ram~47_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~15_combout\,
	combout => \G17|ram~525_combout\);

-- Location: MLABCELL_X82_Y25_N45
\G17|ram~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~127_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\G17|ram~127_combout\) # (\rtl~2_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (!\rtl~2_combout\ & \G17|ram~127_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~2_combout\,
	datad => \G17|ALT_INV_ram~127_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~127_combout\);

-- Location: MLABCELL_X82_Y25_N24
\G17|ram~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~79_combout\ = ( \G18|SAIDA[15]~50_combout\ & ( (\rtl~3_combout\) # (\G17|ram~79_combout\) ) ) # ( !\G18|SAIDA[15]~50_combout\ & ( (\G17|ram~79_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~79_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G17|ram~79_combout\);

-- Location: LABCELL_X83_Y25_N18
\G17|ram~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~429_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~525_combout\))))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~525_combout\ & (((\G17|ram~79_combout\)))) # (\G17|ram~525_combout\ & (\G17|ram~95_combout\)))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~525_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~525_combout\ & (\G17|ram~111_combout\)) # (\G17|ram~525_combout\ & ((\G17|ram~127_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111011101000000111100110000000011110111010000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~95_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~111_combout\,
	datad => \G17|ALT_INV_ram~525_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~127_combout\,
	datag => \G17|ALT_INV_ram~79_combout\,
	combout => \G17|ram~429_combout\);

-- Location: LABCELL_X88_Y25_N39
\G18|SAIDA[15]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[15]~49_combout\ = ( \G16|Mux11~2_combout\ & ( \G18|SAIDA[0]~26_combout\ & ( (!\G16|Mux12~2_combout\ & \G17|ram~271_combout\) ) ) ) # ( !\G16|Mux11~2_combout\ & ( \G18|SAIDA[0]~26_combout\ & ( (!\G16|Mux12~2_combout\ & (((\G17|ram~429_combout\) 
-- # (\G17|ram~271_combout\)))) # (\G16|Mux12~2_combout\ & (\G17|ram~425_combout\)) ) ) ) # ( !\G16|Mux11~2_combout\ & ( !\G18|SAIDA[0]~26_combout\ & ( (!\G16|Mux12~2_combout\ & ((\G17|ram~429_combout\))) # (\G16|Mux12~2_combout\ & (\G17|ram~425_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000000000000000000011011101110110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G17|ALT_INV_ram~425_combout\,
	datac => \G17|ALT_INV_ram~271_combout\,
	datad => \G17|ALT_INV_ram~429_combout\,
	datae => \G16|ALT_INV_Mux11~2_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~26_combout\,
	combout => \G18|SAIDA[15]~49_combout\);

-- Location: MLABCELL_X84_Y21_N45
\G16|Add0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~58_sumout\ = SUM(( (\G18|SAIDA[15]~50_combout\ & (\Clock_Sistema~input_o\ & !\G5|aluSRC~combout\)) ) + ( \G18|SAIDA[15]~50_combout\ ) + ( \G16|Add0~55\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[15]~50_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G5|ALT_INV_aluSRC~combout\,
	cin => \G16|Add0~55\,
	sumout => \G16|Add0~58_sumout\);

-- Location: LABCELL_X85_Y21_N54
\G16|Add1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~28_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G18|SAIDA[15]~50_combout\) # (\G5|aluSRC~combout\)) ) + ( \G18|SAIDA[15]~50_combout\ ) + ( \G16|Add1~25\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[15]~50_combout\,
	datad => \G5|ALT_INV_aluSRC~combout\,
	cin => \G16|Add1~25\,
	sumout => \G16|Add1~28_sumout\);

-- Location: LABCELL_X80_Y21_N39
\G16|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~0_combout\ = ( \G16|Add1~28_sumout\ & ( \G18|SAIDA[15]~50_combout\ & ( ((\G16|Mux1~0_combout\ & \G16|Add0~58_sumout\)) # (\G16|Mux1~1_combout\) ) ) ) # ( !\G16|Add1~28_sumout\ & ( \G18|SAIDA[15]~50_combout\ & ( (!\G16|Mux1~1_combout\ & 
-- (\G16|Mux1~0_combout\ & \G16|Add0~58_sumout\)) # (\G16|Mux1~1_combout\ & (!\G16|Mux1~0_combout\)) ) ) ) # ( \G16|Add1~28_sumout\ & ( !\G18|SAIDA[15]~50_combout\ & ( (\G16|Mux1~0_combout\ & ((\G16|Add0~58_sumout\) # (\G16|Mux1~1_combout\))) ) ) ) # ( 
-- !\G16|Add1~28_sumout\ & ( !\G18|SAIDA[15]~50_combout\ & ( (!\G16|Mux1~1_combout\ & (\G16|Mux1~0_combout\ & \G16|Add0~58_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000001010000111101010000010110100101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux1~1_combout\,
	datac => \G16|ALT_INV_Mux1~0_combout\,
	datad => \G16|ALT_INV_Add0~58_sumout\,
	datae => \G16|ALT_INV_Add1~28_sumout\,
	dataf => \G18|ALT_INV_SAIDA[15]~50_combout\,
	combout => \G16|Mux0~0_combout\);

-- Location: MLABCELL_X82_Y25_N57
\G18|SAIDA[15]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[15]~50_combout\ = ( \G16|Mux0~0_combout\ & ( (\Clock_Sistema~input_o\ & ((\G5|memparareg~combout\) # (\G18|SAIDA[15]~49_combout\))) ) ) # ( !\G16|Mux0~0_combout\ & ( (\G18|SAIDA[15]~49_combout\ & (!\G5|memparareg~combout\ & 
-- \Clock_Sistema~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[15]~49_combout\,
	datab => \G5|ALT_INV_memparareg~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G18|SAIDA[15]~50_combout\);

-- Location: LABCELL_X83_Y21_N33
\G5|regdest\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|regdest~combout\ = ( \G5|regdest~combout\ & ( (!\G5|regdest~0_combout\) # (\G4|tipoi[3]~1_combout\) ) ) # ( !\G5|regdest~combout\ & ( (\G5|regdest~0_combout\ & \G4|tipoi[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_regdest~0_combout\,
	datad => \G4|ALT_INV_tipoi[3]~1_combout\,
	dataf => \G5|ALT_INV_regdest~combout\,
	combout => \G5|regdest~combout\);

-- Location: LABCELL_X75_Y20_N48
\G6|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[0]~0_combout\ = ( \G5|regdest~combout\ & ( (\G4|Mux0~3_combout\ & (\G1|pout\(0) & \Clock_Sistema~input_o\)) ) ) # ( !\G5|regdest~combout\ & ( (\G4|Mux0~3_combout\ & (!\G1|pout\(0) & (!\G1|pout\(1) & \Clock_Sistema~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G1|ALT_INV_pout\(0),
	datac => \G1|ALT_INV_pout\(1),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G5|ALT_INV_regdest~combout\,
	combout => \G6|SAIDA[0]~0_combout\);

-- Location: LABCELL_X61_Y4_N12
\G6|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[1]~1_combout\ = ( \G5|regdest~combout\ & ( !\G4|rs[1]~0_combout\ ) ) # ( !\G5|regdest~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001100110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rs[1]~0_combout\,
	datae => \G5|ALT_INV_regdest~combout\,
	combout => \G6|SAIDA[1]~1_combout\);

-- Location: LABCELL_X83_Y21_N18
\G4|rs[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[2]~1_combout\ = ( \Clock_Sistema~input_o\ & ( (\G1|pout\(2) & (!\G1|pout\(3) & (!\G1|pout\(0) & \G4|Mux0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	datab => \G1|ALT_INV_pout\(3),
	datac => \G1|ALT_INV_pout\(0),
	datad => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|rs[2]~1_combout\);

-- Location: LABCELL_X61_Y4_N57
\G6|SAIDA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[2]~2_combout\ = ( \G4|rs[2]~1_combout\ & ( !\G5|regdest~combout\ ) ) # ( !\G4|rs[2]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101010101010101011111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_regdest~combout\,
	datae => \G4|ALT_INV_rs[2]~1_combout\,
	combout => \G6|SAIDA[2]~2_combout\);

-- Location: LABCELL_X75_Y20_N51
\G4|rs[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[0]~2_combout\ = (\G4|Mux0~3_combout\ & (\G1|pout\(0) & \Clock_Sistema~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G1|ALT_INV_pout\(0),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|rs[0]~2_combout\);

-- Location: LABCELL_X75_Y20_N57
\G4|rd[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~1_combout\ = ( \G4|rd[0]~0_combout\ & ( (!\G1|pout\(1) & (\G4|Mux0~3_combout\ & !\G1|pout\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(1),
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G1|ALT_INV_pout\(0),
	dataf => \G4|ALT_INV_rd[0]~0_combout\,
	combout => \G4|rd[0]~1_combout\);

-- Location: LABCELL_X75_Y20_N54
\G4|rt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[0]~0_combout\ = (!\G1|pout\(1) & (\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & !\G1|pout\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(1),
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G1|ALT_INV_pout\(0),
	combout => \G4|rt[0]~0_combout\);

-- Location: LABCELL_X81_Y21_N39
\G16|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~2_combout\ = ( !\G16|Add1~76_sumout\ & ( !\G16|Add1~64_sumout\ & ( (!\G16|Add1~68_sumout\ & (!\G16|Add1~60_sumout\ & !\G16|Add1~72_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~68_sumout\,
	datac => \G16|ALT_INV_Add1~60_sumout\,
	datad => \G16|ALT_INV_Add1~72_sumout\,
	datae => \G16|ALT_INV_Add1~76_sumout\,
	dataf => \G16|ALT_INV_Add1~64_sumout\,
	combout => \G16|Equal1~2_combout\);

-- Location: LABCELL_X81_Y21_N21
\G16|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~0_combout\ = ( !\G16|Add1~52_sumout\ & ( (!\G16|Add1~16_sumout\ & !\G16|Add1~56_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~16_sumout\,
	datac => \G16|ALT_INV_Add1~56_sumout\,
	dataf => \G16|ALT_INV_Add1~52_sumout\,
	combout => \G16|Equal1~0_combout\);

-- Location: LABCELL_X80_Y21_N24
\G16|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~1_combout\ = ( !\G16|Add1~44_sumout\ & ( !\G16|Add1~40_sumout\ & ( (!\G16|Add1~48_sumout\ & (\G16|Equal1~0_combout\ & (!\G16|Add1~32_sumout\ & !\G16|Add1~36_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~48_sumout\,
	datab => \G16|ALT_INV_Equal1~0_combout\,
	datac => \G16|ALT_INV_Add1~32_sumout\,
	datad => \G16|ALT_INV_Add1~36_sumout\,
	datae => \G16|ALT_INV_Add1~44_sumout\,
	dataf => \G16|ALT_INV_Add1~40_sumout\,
	combout => \G16|Equal1~1_combout\);

-- Location: MLABCELL_X82_Y21_N39
\G16|ZeroULA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|ZeroULA~2_combout\ = ( \G15|SAIDA\(3) & ( (!\G15|SAIDA\(5) & \G15|SAIDA\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(5),
	datad => \G15|ALT_INV_SAIDA\(4),
	dataf => \G15|ALT_INV_SAIDA\(3),
	combout => \G16|ZeroULA~2_combout\);

-- Location: LABCELL_X80_Y21_N48
\G16|ZeroULA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|ZeroULA~3_combout\ = ( !\G16|Add1~24_sumout\ & ( \G16|ZeroULA~2_combout\ & ( (\G16|Equal1~2_combout\ & (\G16|Equal1~1_combout\ & (!\G16|Add1~20_sumout\ & !\G16|Add1~28_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Equal1~2_combout\,
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Add1~20_sumout\,
	datad => \G16|ALT_INV_Add1~28_sumout\,
	datae => \G16|ALT_INV_Add1~24_sumout\,
	dataf => \G16|ALT_INV_ZeroULA~2_combout\,
	combout => \G16|ZeroULA~3_combout\);

-- Location: MLABCELL_X82_Y21_N6
\G16|ZeroULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|ZeroULA~0_combout\ = ( !\G15|SAIDA\(3) & ( (\G15|SAIDA\(5) & !\G15|SAIDA\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G15|ALT_INV_SAIDA\(5),
	datad => \G15|ALT_INV_SAIDA\(4),
	dataf => \G15|ALT_INV_SAIDA\(3),
	combout => \G16|ZeroULA~0_combout\);

-- Location: LABCELL_X80_Y21_N42
\G16|ZeroULA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|ZeroULA~1_combout\ = ( \G16|Add1~20_sumout\ & ( \G16|Equal1~2_combout\ & ( \G16|ZeroULA~0_combout\ ) ) ) # ( !\G16|Add1~20_sumout\ & ( \G16|Equal1~2_combout\ & ( (\G16|ZeroULA~0_combout\ & (((!\G16|Equal1~1_combout\) # (\G16|Add1~24_sumout\)) # 
-- (\G16|Add1~28_sumout\))) ) ) ) # ( \G16|Add1~20_sumout\ & ( !\G16|Equal1~2_combout\ & ( \G16|ZeroULA~0_combout\ ) ) ) # ( !\G16|Add1~20_sumout\ & ( !\G16|Equal1~2_combout\ & ( \G16|ZeroULA~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000110111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~28_sumout\,
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Add1~24_sumout\,
	datad => \G16|ALT_INV_ZeroULA~0_combout\,
	datae => \G16|ALT_INV_Add1~20_sumout\,
	dataf => \G16|ALT_INV_Equal1~2_combout\,
	combout => \G16|ZeroULA~1_combout\);

-- Location: FF_X74_Y24_N29
\G10|SAIDA[0]\ : dffeas
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
	q => \G10|SAIDA\(0));

-- Location: LABCELL_X74_Y24_N27
\G12|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[0]~0_combout\ = ( \G10|SAIDA\(0) & ( \G2|saida\(0) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G10|SAIDA\(0) & ( \G2|saida\(0) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G10|SAIDA\(0) & ( !\G2|saida\(0) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000011000000000111110010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~3_combout\,
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \G5|ALT_INV_jump~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G10|ALT_INV_SAIDA\(0),
	dataf => \G2|ALT_INV_saida\(0),
	combout => \G12|SAIDA[0]~0_combout\);

-- Location: FF_X74_Y24_N56
\G10|SAIDA[1]\ : dffeas
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
	q => \G10|SAIDA\(1));

-- Location: LABCELL_X74_Y24_N54
\G12|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[1]~1_combout\ = ( \G10|SAIDA\(1) & ( \G2|saida\(1) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G10|SAIDA\(1) & ( \G2|saida\(1) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G10|SAIDA\(1) & ( !\G2|saida\(1) & ( (\Clock_Sistema~input_o\ & (\G5|jump~combout\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001000001010100010001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_jump~combout\,
	datac => \G16|ALT_INV_ZeroULA~3_combout\,
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G10|ALT_INV_SAIDA\(1),
	dataf => \G2|ALT_INV_saida\(1),
	combout => \G12|SAIDA[1]~1_combout\);

-- Location: FF_X84_Y21_N1
\G9|AUX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|tipoi[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(2));

-- Location: LABCELL_X80_Y21_N21
\G9|SAIDA[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|SAIDA[2]~feeder_combout\ = \G9|AUX\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_AUX\(2),
	combout => \G9|SAIDA[2]~feeder_combout\);

-- Location: FF_X80_Y21_N22
\G9|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G9|SAIDA[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(2));

-- Location: LABCELL_X75_Y24_N0
\G10|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~1_sumout\ = SUM(( \G9|SAIDA\(2) ) + ( \G2|saida\(2) ) + ( !VCC ))
-- \G10|Add0~2\ = CARRY(( \G9|SAIDA\(2) ) + ( \G2|saida\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(2),
	datad => \G9|ALT_INV_SAIDA\(2),
	cin => GND,
	sumout => \G10|Add0~1_sumout\,
	cout => \G10|Add0~2\);

-- Location: FF_X75_Y24_N1
\G10|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(2));

-- Location: LABCELL_X75_Y24_N57
\G12|SAIDA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[2]~2_combout\ = ( \G2|saida\(2) & ( \G10|SAIDA\(2) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(2) & ( \G10|SAIDA\(2) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(2) & ( !\G10|SAIDA\(2) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100100010001100000001000100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_jump~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G16|ALT_INV_ZeroULA~3_combout\,
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G2|ALT_INV_saida\(2),
	dataf => \G10|ALT_INV_SAIDA\(2),
	combout => \G12|SAIDA[2]~2_combout\);

-- Location: LABCELL_X75_Y24_N3
\G10|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~5_sumout\ = SUM(( \G2|saida\(3) ) + ( GND ) + ( \G10|Add0~2\ ))
-- \G10|Add0~6\ = CARRY(( \G2|saida\(3) ) + ( GND ) + ( \G10|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(3),
	cin => \G10|Add0~2\,
	sumout => \G10|Add0~5_sumout\,
	cout => \G10|Add0~6\);

-- Location: FF_X75_Y24_N4
\G10|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(3));

-- Location: LABCELL_X74_Y24_N3
\G12|SAIDA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[3]~3_combout\ = ( \G2|saida\(3) & ( \G10|SAIDA\(3) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(3) & ( \G10|SAIDA\(3) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(3) & ( !\G10|SAIDA\(3) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111100100000000000001100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~3_combout\,
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \G5|ALT_INV_jump~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G2|ALT_INV_saida\(3),
	dataf => \G10|ALT_INV_SAIDA\(3),
	combout => \G12|SAIDA[3]~3_combout\);

-- Location: FF_X84_Y21_N59
\G9|AUX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|tipoi[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(4));

-- Location: FF_X78_Y21_N13
\G9|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G9|AUX\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(4));

-- Location: LABCELL_X75_Y24_N6
\G10|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~9_sumout\ = SUM(( \G2|saida\(4) ) + ( \G9|SAIDA\(4) ) + ( \G10|Add0~6\ ))
-- \G10|Add0~10\ = CARRY(( \G2|saida\(4) ) + ( \G9|SAIDA\(4) ) + ( \G10|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(4),
	dataf => \G9|ALT_INV_SAIDA\(4),
	cin => \G10|Add0~6\,
	sumout => \G10|Add0~9_sumout\,
	cout => \G10|Add0~10\);

-- Location: FF_X75_Y24_N8
\G10|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(4));

-- Location: LABCELL_X74_Y24_N0
\G12|SAIDA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[4]~4_combout\ = ( \G2|saida\(4) & ( \G10|SAIDA\(4) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(4) & ( \G10|SAIDA\(4) & ( (\Clock_Sistema~input_o\ & (\G5|jump~combout\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(4) & ( !\G10|SAIDA\(4) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000100100000000000001100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~3_combout\,
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G5|ALT_INV_jump~combout\,
	datae => \G2|ALT_INV_saida\(4),
	dataf => \G10|ALT_INV_SAIDA\(4),
	combout => \G12|SAIDA[4]~4_combout\);

-- Location: FF_X83_Y21_N41
\G9|AUX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|tipoi[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(5));

-- Location: MLABCELL_X78_Y21_N30
\G9|SAIDA[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|SAIDA[5]~feeder_combout\ = \G9|AUX\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G9|ALT_INV_AUX\(5),
	combout => \G9|SAIDA[5]~feeder_combout\);

-- Location: FF_X78_Y21_N31
\G9|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G9|SAIDA[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(5));

-- Location: LABCELL_X75_Y24_N9
\G10|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~13_sumout\ = SUM(( \G2|saida\(5) ) + ( \G9|SAIDA\(5) ) + ( \G10|Add0~10\ ))
-- \G10|Add0~14\ = CARRY(( \G2|saida\(5) ) + ( \G9|SAIDA\(5) ) + ( \G10|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(5),
	dataf => \G9|ALT_INV_SAIDA\(5),
	cin => \G10|Add0~10\,
	sumout => \G10|Add0~13_sumout\,
	cout => \G10|Add0~14\);

-- Location: FF_X75_Y24_N10
\G10|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(5));

-- Location: LABCELL_X74_Y24_N24
\G12|SAIDA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[5]~5_combout\ = ( \G10|SAIDA\(5) & ( \G2|saida\(5) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G10|SAIDA\(5) & ( \G2|saida\(5) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G10|SAIDA\(5) & ( !\G2|saida\(5) & ( (\Clock_Sistema~input_o\ & (\G5|jump~combout\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000011000001111000010010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~3_combout\,
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G5|ALT_INV_jump~combout\,
	datae => \G10|ALT_INV_SAIDA\(5),
	dataf => \G2|ALT_INV_saida\(5),
	combout => \G12|SAIDA[5]~5_combout\);

-- Location: LABCELL_X75_Y24_N12
\G10|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~17_sumout\ = SUM(( \G9|SAIDA\(5) ) + ( \G2|saida\(6) ) + ( \G10|Add0~14\ ))
-- \G10|Add0~18\ = CARRY(( \G9|SAIDA\(5) ) + ( \G2|saida\(6) ) + ( \G10|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(6),
	datac => \G9|ALT_INV_SAIDA\(5),
	cin => \G10|Add0~14\,
	sumout => \G10|Add0~17_sumout\,
	cout => \G10|Add0~18\);

-- Location: FF_X75_Y24_N14
\G10|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(6));

-- Location: LABCELL_X74_Y24_N6
\G12|SAIDA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[6]~6_combout\ = ( \G2|saida\(6) & ( \G10|SAIDA\(6) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(6) & ( \G10|SAIDA\(6) & ( (\Clock_Sistema~input_o\ & (\G5|jump~combout\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(6) & ( !\G10|SAIDA\(6) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000100100000000000001100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~3_combout\,
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G5|ALT_INV_jump~combout\,
	datae => \G2|ALT_INV_saida\(6),
	dataf => \G10|ALT_INV_SAIDA\(6),
	combout => \G12|SAIDA[6]~6_combout\);

-- Location: LABCELL_X75_Y24_N15
\G10|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~21_sumout\ = SUM(( \G2|saida\(7) ) + ( GND ) + ( \G10|Add0~18\ ))
-- \G10|Add0~22\ = CARRY(( \G2|saida\(7) ) + ( GND ) + ( \G10|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(7),
	cin => \G10|Add0~18\,
	sumout => \G10|Add0~21_sumout\,
	cout => \G10|Add0~22\);

-- Location: FF_X75_Y24_N16
\G10|SAIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(7));

-- Location: LABCELL_X74_Y24_N9
\G12|SAIDA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[7]~7_combout\ = ( \G2|saida\(7) & ( \G10|SAIDA\(7) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(7) & ( \G10|SAIDA\(7) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(7) & ( !\G10|SAIDA\(7) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111100100000000000001100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~3_combout\,
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \G5|ALT_INV_jump~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G2|ALT_INV_saida\(7),
	dataf => \G10|ALT_INV_SAIDA\(7),
	combout => \G12|SAIDA[7]~7_combout\);

-- Location: LABCELL_X75_Y24_N18
\G10|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~25_sumout\ = SUM(( \G2|saida\(8) ) + ( GND ) + ( \G10|Add0~22\ ))
-- \G10|Add0~26\ = CARRY(( \G2|saida\(8) ) + ( GND ) + ( \G10|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(8),
	cin => \G10|Add0~22\,
	sumout => \G10|Add0~25_sumout\,
	cout => \G10|Add0~26\);

-- Location: FF_X75_Y24_N19
\G10|SAIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(8));

-- Location: LABCELL_X74_Y24_N12
\G12|SAIDA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[8]~8_combout\ = ( \G2|saida\(8) & ( \G10|SAIDA\(8) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(8) & ( \G10|SAIDA\(8) & ( (\Clock_Sistema~input_o\ & (\G5|jump~combout\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(8) & ( !\G10|SAIDA\(8) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000100100000000000001100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~3_combout\,
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G5|ALT_INV_jump~combout\,
	datae => \G2|ALT_INV_saida\(8),
	dataf => \G10|ALT_INV_SAIDA\(8),
	combout => \G12|SAIDA[8]~8_combout\);

-- Location: LABCELL_X75_Y24_N21
\G10|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~29_sumout\ = SUM(( \G2|saida\(9) ) + ( GND ) + ( \G10|Add0~26\ ))
-- \G10|Add0~30\ = CARRY(( \G2|saida\(9) ) + ( GND ) + ( \G10|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(9),
	cin => \G10|Add0~26\,
	sumout => \G10|Add0~29_sumout\,
	cout => \G10|Add0~30\);

-- Location: FF_X75_Y24_N22
\G10|SAIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(9));

-- Location: LABCELL_X75_Y24_N48
\G12|SAIDA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[9]~9_combout\ = ( \G2|saida\(9) & ( \G10|SAIDA\(9) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(9) & ( \G10|SAIDA\(9) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~1_combout\ $ (!\G16|ZeroULA~3_combout\)))) ) ) ) # ( 
-- \G2|saida\(9) & ( !\G10|SAIDA\(9) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~1_combout\ $ (\G16|ZeroULA~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100100010001100000001000100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_jump~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~3_combout\,
	datae => \G2|ALT_INV_saida\(9),
	dataf => \G10|ALT_INV_SAIDA\(9),
	combout => \G12|SAIDA[9]~9_combout\);

-- Location: LABCELL_X75_Y24_N24
\G10|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~33_sumout\ = SUM(( \G2|saida\(10) ) + ( GND ) + ( \G10|Add0~30\ ))
-- \G10|Add0~34\ = CARRY(( \G2|saida\(10) ) + ( GND ) + ( \G10|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(10),
	cin => \G10|Add0~30\,
	sumout => \G10|Add0~33_sumout\,
	cout => \G10|Add0~34\);

-- Location: FF_X75_Y24_N25
\G10|SAIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(10));

-- Location: LABCELL_X74_Y24_N57
\G12|SAIDA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[10]~10_combout\ = ( \G10|SAIDA\(10) & ( \G2|saida\(10) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G10|SAIDA\(10) & ( \G2|saida\(10) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~1_combout\ $ (\G16|ZeroULA~3_combout\)))) ) ) 
-- ) # ( \G10|SAIDA\(10) & ( !\G2|saida\(10) & ( (\Clock_Sistema~input_o\ & (\G5|jump~combout\ & (!\G16|ZeroULA~1_combout\ $ (!\G16|ZeroULA~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001000001010100010001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_jump~combout\,
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~3_combout\,
	datae => \G10|ALT_INV_SAIDA\(10),
	dataf => \G2|ALT_INV_saida\(10),
	combout => \G12|SAIDA[10]~10_combout\);

-- Location: LABCELL_X75_Y24_N27
\G10|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~37_sumout\ = SUM(( \G2|saida\(11) ) + ( GND ) + ( \G10|Add0~34\ ))
-- \G10|Add0~38\ = CARRY(( \G2|saida\(11) ) + ( GND ) + ( \G10|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(11),
	cin => \G10|Add0~34\,
	sumout => \G10|Add0~37_sumout\,
	cout => \G10|Add0~38\);

-- Location: FF_X75_Y24_N28
\G10|SAIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(11));

-- Location: LABCELL_X75_Y24_N42
\G12|SAIDA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[11]~11_combout\ = ( \G2|saida\(11) & ( \G10|SAIDA\(11) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(11) & ( \G10|SAIDA\(11) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~1_combout\ $ (!\G16|ZeroULA~3_combout\)))) ) ) ) 
-- # ( \G2|saida\(11) & ( !\G10|SAIDA\(11) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~1_combout\ $ (\G16|ZeroULA~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100100010001100000001000100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_jump~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~3_combout\,
	datae => \G2|ALT_INV_saida\(11),
	dataf => \G10|ALT_INV_SAIDA\(11),
	combout => \G12|SAIDA[11]~11_combout\);

-- Location: LABCELL_X75_Y24_N30
\G10|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~41_sumout\ = SUM(( \G2|saida\(12) ) + ( GND ) + ( \G10|Add0~38\ ))
-- \G10|Add0~42\ = CARRY(( \G2|saida\(12) ) + ( GND ) + ( \G10|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(12),
	cin => \G10|Add0~38\,
	sumout => \G10|Add0~41_sumout\,
	cout => \G10|Add0~42\);

-- Location: FF_X75_Y24_N32
\G10|SAIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(12));

-- Location: LABCELL_X75_Y24_N51
\G12|SAIDA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[12]~12_combout\ = ( \G2|saida\(12) & ( \G10|SAIDA\(12) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(12) & ( \G10|SAIDA\(12) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) ) 
-- # ( \G2|saida\(12) & ( !\G10|SAIDA\(12) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100100010001100000001000100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_jump~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G16|ALT_INV_ZeroULA~3_combout\,
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G2|ALT_INV_saida\(12),
	dataf => \G10|ALT_INV_SAIDA\(12),
	combout => \G12|SAIDA[12]~12_combout\);

-- Location: LABCELL_X75_Y24_N33
\G10|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~45_sumout\ = SUM(( \G2|saida\(13) ) + ( GND ) + ( \G10|Add0~42\ ))
-- \G10|Add0~46\ = CARRY(( \G2|saida\(13) ) + ( GND ) + ( \G10|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(13),
	cin => \G10|Add0~42\,
	sumout => \G10|Add0~45_sumout\,
	cout => \G10|Add0~46\);

-- Location: FF_X75_Y24_N34
\G10|SAIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(13));

-- Location: LABCELL_X74_Y24_N15
\G12|SAIDA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[13]~13_combout\ = ( \G2|saida\(13) & ( \G10|SAIDA\(13) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(13) & ( \G10|SAIDA\(13) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) ) 
-- # ( \G2|saida\(13) & ( !\G10|SAIDA\(13) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111100100000000000001100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~3_combout\,
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \G5|ALT_INV_jump~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G2|ALT_INV_saida\(13),
	dataf => \G10|ALT_INV_SAIDA\(13),
	combout => \G12|SAIDA[13]~13_combout\);

-- Location: LABCELL_X75_Y24_N36
\G10|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~49_sumout\ = SUM(( \G2|saida\(14) ) + ( GND ) + ( \G10|Add0~46\ ))
-- \G10|Add0~50\ = CARRY(( \G2|saida\(14) ) + ( GND ) + ( \G10|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(14),
	cin => \G10|Add0~46\,
	sumout => \G10|Add0~49_sumout\,
	cout => \G10|Add0~50\);

-- Location: FF_X75_Y24_N37
\G10|SAIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(14));

-- Location: LABCELL_X75_Y24_N45
\G12|SAIDA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[14]~14_combout\ = ( \G2|saida\(14) & ( \G10|SAIDA\(14) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(14) & ( \G10|SAIDA\(14) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~3_combout\ $ (!\G16|ZeroULA~1_combout\)))) ) ) ) 
-- # ( \G2|saida\(14) & ( !\G10|SAIDA\(14) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~3_combout\ $ (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100100010001100000001000100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_jump~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G16|ALT_INV_ZeroULA~3_combout\,
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G2|ALT_INV_saida\(14),
	dataf => \G10|ALT_INV_SAIDA\(14),
	combout => \G12|SAIDA[14]~14_combout\);

-- Location: LABCELL_X75_Y24_N39
\G10|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~53_sumout\ = SUM(( \G2|saida\(15) ) + ( GND ) + ( \G10|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(15),
	cin => \G10|Add0~50\,
	sumout => \G10|Add0~53_sumout\);

-- Location: FF_X75_Y24_N41
\G10|SAIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(15));

-- Location: LABCELL_X75_Y24_N54
\G12|SAIDA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[15]~15_combout\ = ( \G2|saida\(15) & ( \G10|SAIDA\(15) & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G2|saida\(15) & ( \G10|SAIDA\(15) & ( (\G5|jump~combout\ & (\Clock_Sistema~input_o\ & (!\G16|ZeroULA~1_combout\ $ (!\G16|ZeroULA~3_combout\)))) ) ) ) 
-- # ( \G2|saida\(15) & ( !\G10|SAIDA\(15) & ( (\Clock_Sistema~input_o\ & ((!\G5|jump~combout\) # (!\G16|ZeroULA~1_combout\ $ (\G16|ZeroULA~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100100010001100000001000100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_jump~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~3_combout\,
	datae => \G2|ALT_INV_saida\(15),
	dataf => \G10|ALT_INV_SAIDA\(15),
	combout => \G12|SAIDA[15]~15_combout\);

-- Location: LABCELL_X45_Y4_N3
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


