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

-- DATE "11/30/2018 13:39:15"

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
	SomadorToPc_outWaveform : OUT std_logic_vector(15 DOWNTO 0);
	SaidaPc_outWaveform : OUT std_logic_vector(15 DOWNTO 0);
	SaidaRegA_outWaveform : OUT std_logic_vector(15 DOWNTO 0);
	SaidaRegB_outWaveform : OUT std_logic_vector(15 DOWNTO 0);
	multiplexador_to_writeRegister_outWaveform : OUT std_logic_vector(2 DOWNTO 0);
	Instruction_to_multiplexador_outWaveform : OUT std_logic_vector(2 DOWNTO 0);
	Instruction_to_Control_outWaveform : OUT std_logic_vector(3 DOWNTO 0);
	Instruction_to_register1_outWaveform : OUT std_logic_vector(2 DOWNTO 0);
	Instruction_to_register2_outWaveform : OUT std_logic_vector(2 DOWNTO 0);
	Instruction_to_controlULA_outWaveform : OUT std_logic_vector(2 DOWNTO 0);
	Instruction_to_extensorDeSinal_outWaveform : OUT std_logic_vector(5 DOWNTO 0);
	Instruction_to_Jump_outWaveform : OUT std_logic_vector(11 DOWNTO 0);
	Data_to_writeRegister_outWaveform : OUT std_logic_vector(15 DOWNTO 0);
	Saida_mult_to_mult_outWaveform : OUT std_logic_vector(15 DOWNTO 0);
	Saida_to_PC_outWaveform : OUT std_logic_vector(15 DOWNTO 0);
	Saida_adress_to_RAM_outWaveform : OUT std_logic_vector(15 DOWNTO 0);
	Flag_regdest_OUT : OUT std_logic;
	Flag_origialu_OUT : OUT std_logic_vector(3 DOWNTO 0);
	Flag_memparareg_OUT : OUT std_logic;
	Flag_escrevereg_OUT : OUT std_logic;
	Flag_lemem_OUT : OUT std_logic;
	Flag_escrevemem_OUT : OUT std_logic;
	Flag_branch_OUT : OUT std_logic;
	Flag_aluSRC_OUT : OUT std_logic;
	Flag_jump_OUT : OUT std_logic
	);
END DataPath;

-- Design Ports Information
-- SomadorToPc_outWaveform[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[6]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[9]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[11]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[12]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[13]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[9]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[10]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[12]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[13]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[14]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[15]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[8]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[10]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[11]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[12]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[13]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[14]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[10]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[12]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[13]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[2]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[3]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[8]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[9]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[10]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[11]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[0]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[8]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[12]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[13]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[14]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[15]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[7]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[9]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[11]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[12]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[14]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[15]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[8]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[11]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[12]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[13]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[14]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[15]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[8]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[11]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[14]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_regdest_OUT	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_memparareg_OUT	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevereg_OUT	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_lemem_OUT	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevemem_OUT	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_branch_OUT	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_aluSRC_OUT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_jump_OUT	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \G4|rs[0]~enfeeder_combout\ : std_logic;
SIGNAL \G4|rs[0]~en_q\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G2|saida[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G12|SAIDA[1]~feeder_combout\ : std_logic;
SIGNAL \G10|SAIDA[1]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G12|SAIDA[2]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G4|Mux7~0_combout\ : std_logic;
SIGNAL \G4|Mux7~1_combout\ : std_logic;
SIGNAL \G4|rd[2]~3_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~reg0_q\ : std_logic;
SIGNAL \G4|tipoi[0]~enfeeder_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~en_q\ : std_logic;
SIGNAL \G4|tipoi[0]~6_combout\ : std_logic;
SIGNAL \G10|Add0~1_sumout\ : std_logic;
SIGNAL \G13|SAIDA[2]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G12|SAIDA[3]~feeder_combout\ : std_logic;
SIGNAL \G8|SAIDA[1]~0_combout\ : std_logic;
SIGNAL \G9|AUX[3]~feeder_combout\ : std_logic;
SIGNAL \G9|SAIDA[3]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~2\ : std_logic;
SIGNAL \G10|Add0~5_sumout\ : std_logic;
SIGNAL \G13|SAIDA[3]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G12|SAIDA[4]~feeder_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G4|tipoi[2]~reg0_q\ : std_logic;
SIGNAL \G4|tipoi[2]~7_combout\ : std_logic;
SIGNAL \G10|Add0~6\ : std_logic;
SIGNAL \G10|Add0~9_sumout\ : std_logic;
SIGNAL \G13|SAIDA[4]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[4]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G12|SAIDA[5]~feeder_combout\ : std_logic;
SIGNAL \G4|Mux3~3_combout\ : std_logic;
SIGNAL \G4|tipoi[3]~reg0_q\ : std_logic;
SIGNAL \G4|tipoi[3]~8_combout\ : std_logic;
SIGNAL \G10|Add0~10\ : std_logic;
SIGNAL \G10|Add0~13_sumout\ : std_logic;
SIGNAL \G13|SAIDA[5]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G12|SAIDA[6]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~14\ : std_logic;
SIGNAL \G10|Add0~17_sumout\ : std_logic;
SIGNAL \G13|SAIDA[6]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[6]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G12|SAIDA[7]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~18\ : std_logic;
SIGNAL \G10|Add0~21_sumout\ : std_logic;
SIGNAL \G13|SAIDA[7]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[7]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[7]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G12|SAIDA[8]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~22\ : std_logic;
SIGNAL \G10|Add0~25_sumout\ : std_logic;
SIGNAL \G13|SAIDA[8]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G12|SAIDA[9]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~26\ : std_logic;
SIGNAL \G10|Add0~29_sumout\ : std_logic;
SIGNAL \G13|SAIDA[9]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[9]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G12|SAIDA[10]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~30\ : std_logic;
SIGNAL \G10|Add0~33_sumout\ : std_logic;
SIGNAL \G13|SAIDA[10]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G12|SAIDA[11]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~34\ : std_logic;
SIGNAL \G10|Add0~37_sumout\ : std_logic;
SIGNAL \G13|SAIDA[11]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G12|SAIDA[12]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~38\ : std_logic;
SIGNAL \G10|Add0~41_sumout\ : std_logic;
SIGNAL \G13|SAIDA[12]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[12]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G12|SAIDA[13]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~42\ : std_logic;
SIGNAL \G10|Add0~45_sumout\ : std_logic;
SIGNAL \G13|SAIDA[13]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[13]~feeder_combout\ : std_logic;
SIGNAL \G1|pout[13]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G12|SAIDA[14]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~46\ : std_logic;
SIGNAL \G10|Add0~49_sumout\ : std_logic;
SIGNAL \G13|SAIDA[14]~feeder_combout\ : std_logic;
SIGNAL \G3|resshift[14]~feeder_combout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G12|SAIDA[15]~feeder_combout\ : std_logic;
SIGNAL \G10|Add0~50\ : std_logic;
SIGNAL \G10|Add0~53_sumout\ : std_logic;
SIGNAL \G13|SAIDA[15]~feeder_combout\ : std_logic;
SIGNAL \G4|Mux3~0_combout\ : std_logic;
SIGNAL \G4|Mux3~1_combout\ : std_logic;
SIGNAL \G4|Mux3~2_combout\ : std_logic;
SIGNAL \G4|Mux6~0_combout\ : std_logic;
SIGNAL \G4|Mux6~1_combout\ : std_logic;
SIGNAL \G4|op[0]~reg0_q\ : std_logic;
SIGNAL \G5|jump~1_combout\ : std_logic;
SIGNAL \G5|regdest~enDUPLICATE_q\ : std_logic;
SIGNAL \G15|SAIDA[6]~1_combout\ : std_logic;
SIGNAL \G15|SAIDA[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G5|origalu[0]~7_combout\ : std_logic;
SIGNAL \G5|origalu[0]~reg0_q\ : std_logic;
SIGNAL \G5|origalu[0]~5_combout\ : std_logic;
SIGNAL \G15|SAIDA[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G5|Equal2~0_combout\ : std_logic;
SIGNAL \G5|origalu[1]~reg0_q\ : std_logic;
SIGNAL \G5|origalu[1]~6_combout\ : std_logic;
SIGNAL \G16|ZeroULA~0_combout\ : std_logic;
SIGNAL \G16|ZeroULA~1_combout\ : std_logic;
SIGNAL \G4|rd[0]~enfeeder_combout\ : std_logic;
SIGNAL \G4|rd[0]~enDUPLICATE_q\ : std_logic;
SIGNAL \G15|SAIDA[1]~0_combout\ : std_logic;
SIGNAL \G15|SAIDA[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G4|funct[0]~reg0_q\ : std_logic;
SIGNAL \G4|funct[0]~4_combout\ : std_logic;
SIGNAL \G15|SAIDA[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G16|Mux15~5_combout\ : std_logic;
SIGNAL \G4|funct[2]~reg0_q\ : std_logic;
SIGNAL \G4|funct[2]~3_combout\ : std_logic;
SIGNAL \G15|SAIDA[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G16|Mux0~0_combout\ : std_logic;
SIGNAL \G16|Mux15~7_combout\ : std_logic;
SIGNAL \G16|Mux15~1_combout\ : std_logic;
SIGNAL \G16|Mux15~0_combout\ : std_logic;
SIGNAL \G17|ram~280feeder_combout\ : std_logic;
SIGNAL \G5|Equal1~0_combout\ : std_logic;
SIGNAL \G5|memparareg~reg0feeder_combout\ : std_logic;
SIGNAL \G5|memparareg~reg0_q\ : std_logic;
SIGNAL \G5|memparareg~1_combout\ : std_logic;
SIGNAL \G17|ram~449_combout\ : std_logic;
SIGNAL \G17|ram~234feeder_combout\ : std_logic;
SIGNAL \G5|regdest~en_q\ : std_logic;
SIGNAL \G5|escrevereg~reg0_q\ : std_logic;
SIGNAL \G5|escrevereg~1_combout\ : std_logic;
SIGNAL \G14|SAIDA[4]~DUPLICATE_q\ : std_logic;
SIGNAL \G4|rd[0]~en_q\ : std_logic;
SIGNAL \G4|rt[0]~reg0feeder_combout\ : std_logic;
SIGNAL \G4|rt[0]~reg0_q\ : std_logic;
SIGNAL \G5|Equal0~0_combout\ : std_logic;
SIGNAL \G5|regdest~reg0_q\ : std_logic;
SIGNAL \G6|SAIDA~0_combout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G4|rs[2]~reg0_q\ : std_logic;
SIGNAL \G6|SAIDA~2_combout\ : std_logic;
SIGNAL \G6|SAIDA~1_combout\ : std_logic;
SIGNAL \G7|Reg~148_combout\ : std_logic;
SIGNAL \G7|Reg~136_q\ : std_logic;
SIGNAL \G7|Reg~24feeder_combout\ : std_logic;
SIGNAL \G7|Reg~152_combout\ : std_logic;
SIGNAL \G7|Reg~24_q\ : std_logic;
SIGNAL \G7|Reg~151_combout\ : std_logic;
SIGNAL \G7|Reg~72_q\ : std_logic;
SIGNAL \G4|rd[0]~reg0_q\ : std_logic;
SIGNAL \G7|Reg~180_combout\ : std_logic;
SIGNAL \G7|Reg~212_combout\ : std_logic;
SIGNAL \G16|Mux11~3_combout\ : std_logic;
SIGNAL \G16|Mux11~2_combout\ : std_logic;
SIGNAL \G16|Mux15~6_combout\ : std_logic;
SIGNAL \G17|ram~278_q\ : std_logic;
SIGNAL \G16|Mux11~5_combout\ : std_logic;
SIGNAL \G7|Reg~133DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~21_q\ : std_logic;
SIGNAL \G7|Reg~150_combout\ : std_logic;
SIGNAL \G7|Reg~37_q\ : std_logic;
SIGNAL \G7|Reg~167_combout\ : std_logic;
SIGNAL \G7|Reg~149_combout\ : std_logic;
SIGNAL \G7|Reg~117_q\ : std_logic;
SIGNAL \G7|Reg~199_combout\ : std_logic;
SIGNAL \G17|ram~279feeder_combout\ : std_logic;
SIGNAL \G17|ram~279_q\ : std_logic;
SIGNAL \G17|ram~231_q\ : std_logic;
SIGNAL \G7|Reg~118_q\ : std_logic;
SIGNAL \G4|rd[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~70_q\ : std_logic;
SIGNAL \G7|Reg~22_q\ : std_logic;
SIGNAL \G7|Reg~182_combout\ : std_logic;
SIGNAL \G7|Reg~214_combout\ : std_logic;
SIGNAL \G7|Reg~132_q\ : std_logic;
SIGNAL \G7|Reg~116_q\ : std_logic;
SIGNAL \G7|Reg~68_q\ : std_logic;
SIGNAL \G7|Reg~20_q\ : std_logic;
SIGNAL \G7|Reg~184_combout\ : std_logic;
SIGNAL \G7|Reg~216_combout\ : std_logic;
SIGNAL \G16|Add2~2\ : std_logic;
SIGNAL \G16|Add2~5_sumout\ : std_logic;
SIGNAL \G16|Mux14~0_combout\ : std_logic;
SIGNAL \G16|Mux15~3_combout\ : std_logic;
SIGNAL \G16|Add1~1_sumout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G16|Mux15~8_combout\ : std_logic;
SIGNAL \G14|SAIDA[1]~feeder_combout\ : std_logic;
SIGNAL \G16|Mux14~4_combout\ : std_logic;
SIGNAL \G16|Mux14~3_combout\ : std_logic;
SIGNAL \G14|SAIDA[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G16|Add1~2\ : std_logic;
SIGNAL \G16|Add1~3\ : std_logic;
SIGNAL \G16|Add1~5_sumout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G16|Mux14~5_combout\ : std_logic;
SIGNAL \G17|ram~573_combout\ : std_logic;
SIGNAL \G17|ram~579_combout\ : std_logic;
SIGNAL \G17|ram~263_q\ : std_logic;
SIGNAL \G17|ram~576_combout\ : std_logic;
SIGNAL \G17|ram~581_combout\ : std_logic;
SIGNAL \G17|ram~247_q\ : std_logic;
SIGNAL \G16|Mux14~1_combout\ : std_logic;
SIGNAL \G16|Mux14~2_combout\ : std_logic;
SIGNAL \G16|Mux15~4_combout\ : std_logic;
SIGNAL \G17|ram~167feeder_combout\ : std_logic;
SIGNAL \G17|ram~586_combout\ : std_logic;
SIGNAL \G17|ram~167_q\ : std_logic;
SIGNAL \G17|ram~183feeder_combout\ : std_logic;
SIGNAL \G17|ram~589_combout\ : std_logic;
SIGNAL \G17|ram~183_q\ : std_logic;
SIGNAL \G17|ram~587_combout\ : std_logic;
SIGNAL \G17|ram~199_q\ : std_logic;
SIGNAL \G17|ram~151feeder_combout\ : std_logic;
SIGNAL \G16|Mux10~0_combout\ : std_logic;
SIGNAL \G7|Reg~119_q\ : std_logic;
SIGNAL \G7|Reg~71_q\ : std_logic;
SIGNAL \G7|Reg~23_q\ : std_logic;
SIGNAL \G7|Reg~181_combout\ : std_logic;
SIGNAL \G7|Reg~213_combout\ : std_logic;
SIGNAL \G16|Add2~6\ : std_logic;
SIGNAL \G16|Add2~10\ : std_logic;
SIGNAL \G16|Add2~13_sumout\ : std_logic;
SIGNAL \G16|Add1~6\ : std_logic;
SIGNAL \G16|Add1~7\ : std_logic;
SIGNAL \G16|Add1~10\ : std_logic;
SIGNAL \G16|Add1~11\ : std_logic;
SIGNAL \G16|Add1~13_sumout\ : std_logic;
SIGNAL \G16|Mux12~0_combout\ : std_logic;
SIGNAL \G16|Add2~9_sumout\ : std_logic;
SIGNAL \G16|Mux13~0_combout\ : std_logic;
SIGNAL \G16|Mux13~3_combout\ : std_logic;
SIGNAL \G16|Mux13~4_combout\ : std_logic;
SIGNAL \G16|Add1~9_sumout\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G16|Mux13~5_combout\ : std_logic;
SIGNAL \G17|ram~448_combout\ : std_logic;
SIGNAL \G17|ram~588_combout\ : std_logic;
SIGNAL \G17|ram~151_q\ : std_logic;
SIGNAL \G17|ram~455_combout\ : std_logic;
SIGNAL \G17|ram~215feeder_combout\ : std_logic;
SIGNAL \G17|ram~302_combout\ : std_logic;
SIGNAL \G17|ram~580_combout\ : std_logic;
SIGNAL \G17|ram~215_q\ : std_logic;
SIGNAL \G17|ram~309_combout\ : std_logic;
SIGNAL \G17|ram~103feeder_combout\ : std_logic;
SIGNAL \G17|ram~103_q\ : std_logic;
SIGNAL \G17|ram~119feeder_combout\ : std_logic;
SIGNAL \G17|ram~577_combout\ : std_logic;
SIGNAL \G17|ram~119_q\ : std_logic;
SIGNAL \G17|ram~574_combout\ : std_logic;
SIGNAL \G17|ram~135_q\ : std_logic;
SIGNAL \G17|ram~583_combout\ : std_logic;
SIGNAL \G17|ram~71_q\ : std_logic;
SIGNAL \G17|ram~582_combout\ : std_logic;
SIGNAL \G17|ram~39_q\ : std_logic;
SIGNAL \G17|ram~585_combout\ : std_logic;
SIGNAL \G17|ram~55_q\ : std_logic;
SIGNAL \G17|ram~584_combout\ : std_logic;
SIGNAL \G17|ram~23_q\ : std_logic;
SIGNAL \G17|ram~451_combout\ : std_logic;
SIGNAL \G17|ram~575_combout\ : std_logic;
SIGNAL \G17|ram~87_q\ : std_logic;
SIGNAL \G17|ram~305_combout\ : std_logic;
SIGNAL \G17|ram~313_combout\ : std_logic;
SIGNAL \G7|Reg~133_q\ : std_logic;
SIGNAL \G7|Reg~69_q\ : std_logic;
SIGNAL \G7|Reg~183_combout\ : std_logic;
SIGNAL \G7|Reg~215_combout\ : std_logic;
SIGNAL \G16|Add2~1_sumout\ : std_logic;
SIGNAL \G16|Mux15~2_combout\ : std_logic;
SIGNAL \G17|ram~571_combout\ : std_logic;
SIGNAL \G17|ram~572_combout\ : std_logic;
SIGNAL \G17|ram~102_q\ : std_logic;
SIGNAL \G17|ram~118feeder_combout\ : std_logic;
SIGNAL \G17|ram~118_q\ : std_logic;
SIGNAL \G17|ram~134_q\ : std_logic;
SIGNAL \G17|ram~38feeder_combout\ : std_logic;
SIGNAL \G17|ram~38_q\ : std_logic;
SIGNAL \G17|ram~70_q\ : std_logic;
SIGNAL \G17|ram~54feeder_combout\ : std_logic;
SIGNAL \G17|ram~54_q\ : std_logic;
SIGNAL \G17|ram~22feeder_combout\ : std_logic;
SIGNAL \G17|ram~22_q\ : std_logic;
SIGNAL \G17|ram~440_combout\ : std_logic;
SIGNAL \G17|ram~86feeder_combout\ : std_logic;
SIGNAL \G17|ram~86_q\ : std_logic;
SIGNAL \G17|ram~294_combout\ : std_logic;
SIGNAL \G17|ram~262_q\ : std_logic;
SIGNAL \G17|ram~246_q\ : std_logic;
SIGNAL \G17|ram~230feeder_combout\ : std_logic;
SIGNAL \G17|ram~230_q\ : std_logic;
SIGNAL \G17|ram~166_q\ : std_logic;
SIGNAL \G17|ram~198_q\ : std_logic;
SIGNAL \G17|ram~182feeder_combout\ : std_logic;
SIGNAL \G17|ram~182_q\ : std_logic;
SIGNAL \G17|ram~150feeder_combout\ : std_logic;
SIGNAL \G17|ram~150_q\ : std_logic;
SIGNAL \G17|ram~444_combout\ : std_logic;
SIGNAL \G17|ram~214feeder_combout\ : std_logic;
SIGNAL \G17|ram~214_q\ : std_logic;
SIGNAL \G17|ram~298_combout\ : std_logic;
SIGNAL \G17|ram~304_combout\ : std_logic;
SIGNAL \G7|Reg~132DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~36_q\ : std_logic;
SIGNAL \G7|Reg~168_combout\ : std_logic;
SIGNAL \G7|Reg~116DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~200_combout\ : std_logic;
SIGNAL \G14|SAIDA[0]~feeder_combout\ : std_logic;
SIGNAL \G14|SAIDA[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G16|Mux11~1_combout\ : std_logic;
SIGNAL \G7|Reg~137_q\ : std_logic;
SIGNAL \G7|Reg~25feeder_combout\ : std_logic;
SIGNAL \G7|Reg~25_q\ : std_logic;
SIGNAL \G7|Reg~41_q\ : std_logic;
SIGNAL \G7|Reg~163_combout\ : std_logic;
SIGNAL \G7|Reg~195_combout\ : std_logic;
SIGNAL \G17|ram~235_q\ : std_logic;
SIGNAL \G17|ram~251feeder_combout\ : std_logic;
SIGNAL \G17|ram~251_q\ : std_logic;
SIGNAL \G17|ram~267_q\ : std_logic;
SIGNAL \G17|ram~203feeder_combout\ : std_logic;
SIGNAL \G17|ram~203_q\ : std_logic;
SIGNAL \G17|ram~171feeder_combout\ : std_logic;
SIGNAL \G17|ram~171_q\ : std_logic;
SIGNAL \G17|ram~187_q\ : std_logic;
SIGNAL \G17|ram~155feeder_combout\ : std_logic;
SIGNAL \G17|ram~155_q\ : std_logic;
SIGNAL \G17|ram~487_combout\ : std_logic;
SIGNAL \G17|ram~219feeder_combout\ : std_logic;
SIGNAL \G17|ram~219_q\ : std_logic;
SIGNAL \G17|ram~345_combout\ : std_logic;
SIGNAL \G17|ram~283_q\ : std_logic;
SIGNAL \G17|ram~107feeder_combout\ : std_logic;
SIGNAL \G17|ram~107_q\ : std_logic;
SIGNAL \G17|ram~123_q\ : std_logic;
SIGNAL \G17|ram~139_q\ : std_logic;
SIGNAL \G17|ram~75_q\ : std_logic;
SIGNAL \G17|ram~43_q\ : std_logic;
SIGNAL \G17|ram~59feeder_combout\ : std_logic;
SIGNAL \G17|ram~59_q\ : std_logic;
SIGNAL \G17|ram~27feeder_combout\ : std_logic;
SIGNAL \G17|ram~27_q\ : std_logic;
SIGNAL \G17|ram~483_combout\ : std_logic;
SIGNAL \G17|ram~91feeder_combout\ : std_logic;
SIGNAL \G17|ram~91_q\ : std_logic;
SIGNAL \G17|ram~341_combout\ : std_logic;
SIGNAL \G17|ram~349_combout\ : std_logic;
SIGNAL \G14|SAIDA[5]~feeder_combout\ : std_logic;
SIGNAL \G16|Mux10~2_combout\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G7|Reg~26_q\ : std_logic;
SIGNAL \G7|Reg~42_q\ : std_logic;
SIGNAL \G7|Reg~162_combout\ : std_logic;
SIGNAL \G7|Reg~138_q\ : std_logic;
SIGNAL \G7|Reg~122_q\ : std_logic;
SIGNAL \G7|Reg~194_combout\ : std_logic;
SIGNAL \G17|ram~284_q\ : std_logic;
SIGNAL \G17|ram~268_q\ : std_logic;
SIGNAL \G17|ram~252_q\ : std_logic;
SIGNAL \G17|ram~236_q\ : std_logic;
SIGNAL \G17|ram~172feeder_combout\ : std_logic;
SIGNAL \G17|ram~172_q\ : std_logic;
SIGNAL \G17|ram~204_q\ : std_logic;
SIGNAL \G17|ram~188feeder_combout\ : std_logic;
SIGNAL \G17|ram~188_q\ : std_logic;
SIGNAL \G17|ram~156feeder_combout\ : std_logic;
SIGNAL \G17|ram~156_q\ : std_logic;
SIGNAL \G17|ram~495_combout\ : std_logic;
SIGNAL \G17|ram~220_q\ : std_logic;
SIGNAL \G17|ram~354_combout\ : std_logic;
SIGNAL \G17|ram~140_q\ : std_logic;
SIGNAL \G17|ram~108feeder_combout\ : std_logic;
SIGNAL \G17|ram~108_q\ : std_logic;
SIGNAL \G17|ram~124feeder_combout\ : std_logic;
SIGNAL \G17|ram~124_q\ : std_logic;
SIGNAL \G17|ram~76_q\ : std_logic;
SIGNAL \G17|ram~44feeder_combout\ : std_logic;
SIGNAL \G17|ram~44_q\ : std_logic;
SIGNAL \G17|ram~60feeder_combout\ : std_logic;
SIGNAL \G17|ram~60_q\ : std_logic;
SIGNAL \G17|ram~28_q\ : std_logic;
SIGNAL \G17|ram~491_combout\ : std_logic;
SIGNAL \G17|ram~92feeder_combout\ : std_logic;
SIGNAL \G17|ram~92_q\ : std_logic;
SIGNAL \G17|ram~350_combout\ : std_logic;
SIGNAL \G17|ram~358_combout\ : std_logic;
SIGNAL \G14|SAIDA[6]~feeder_combout\ : std_logic;
SIGNAL \G16|Mux9~1_combout\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G7|Reg~123_q\ : std_logic;
SIGNAL \G7|Reg~139DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~27_q\ : std_logic;
SIGNAL \G7|Reg~43_q\ : std_logic;
SIGNAL \G7|Reg~161_combout\ : std_logic;
SIGNAL \G7|Reg~193_combout\ : std_logic;
SIGNAL \G17|ram~285feeder_combout\ : std_logic;
SIGNAL \G17|ram~285_q\ : std_logic;
SIGNAL \G17|ram~269_q\ : std_logic;
SIGNAL \G17|ram~253feeder_combout\ : std_logic;
SIGNAL \G17|ram~253_q\ : std_logic;
SIGNAL \G17|ram~237_q\ : std_logic;
SIGNAL \G17|ram~205_q\ : std_logic;
SIGNAL \G17|ram~173_q\ : std_logic;
SIGNAL \G17|ram~189feeder_combout\ : std_logic;
SIGNAL \G17|ram~189_q\ : std_logic;
SIGNAL \G17|ram~157feeder_combout\ : std_logic;
SIGNAL \G17|ram~157_q\ : std_logic;
SIGNAL \G17|ram~503_combout\ : std_logic;
SIGNAL \G17|ram~221_q\ : std_logic;
SIGNAL \G17|ram~363_combout\ : std_logic;
SIGNAL \G17|ram~141_q\ : std_logic;
SIGNAL \G17|ram~125_q\ : std_logic;
SIGNAL \G17|ram~109feeder_combout\ : std_logic;
SIGNAL \G17|ram~109_q\ : std_logic;
SIGNAL \G17|ram~77_q\ : std_logic;
SIGNAL \G17|ram~45_q\ : std_logic;
SIGNAL \G17|ram~61_q\ : std_logic;
SIGNAL \G17|ram~29_q\ : std_logic;
SIGNAL \G17|ram~499_combout\ : std_logic;
SIGNAL \G17|ram~93_q\ : std_logic;
SIGNAL \G17|ram~359_combout\ : std_logic;
SIGNAL \G17|ram~367_combout\ : std_logic;
SIGNAL \G16|Mux0~3_combout\ : std_logic;
SIGNAL \G16|Mux0~1_combout\ : std_logic;
SIGNAL \G16|Mux0~2_combout\ : std_logic;
SIGNAL \G14|SAIDA[7]~feeder_combout\ : std_logic;
SIGNAL \G16|Add1~14\ : std_logic;
SIGNAL \G16|Add1~15\ : std_logic;
SIGNAL \G16|Add1~18\ : std_logic;
SIGNAL \G16|Add1~19\ : std_logic;
SIGNAL \G16|Add1~22\ : std_logic;
SIGNAL \G16|Add1~23\ : std_logic;
SIGNAL \G16|Add1~26\ : std_logic;
SIGNAL \G16|Add1~27\ : std_logic;
SIGNAL \G16|Add1~29_sumout\ : std_logic;
SIGNAL \G16|Mux0~4_combout\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G16|Mux8~0_combout\ : std_logic;
SIGNAL \G16|Mux8~1_combout\ : std_logic;
SIGNAL \G7|Reg~139_q\ : std_logic;
SIGNAL \G7|Reg~75_q\ : std_logic;
SIGNAL \G7|Reg~177_combout\ : std_logic;
SIGNAL \G7|Reg~209_combout\ : std_logic;
SIGNAL \G16|Add2~14\ : std_logic;
SIGNAL \G16|Add2~18\ : std_logic;
SIGNAL \G16|Add2~22\ : std_logic;
SIGNAL \G16|Add2~25_sumout\ : std_logic;
SIGNAL \G16|Add1~25_sumout\ : std_logic;
SIGNAL \G16|Mux9~0_combout\ : std_logic;
SIGNAL \G16|Mux9~2_combout\ : std_logic;
SIGNAL \G7|Reg~122DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~74_q\ : std_logic;
SIGNAL \G7|Reg~178_combout\ : std_logic;
SIGNAL \G7|Reg~210_combout\ : std_logic;
SIGNAL \G16|Add2~21_sumout\ : std_logic;
SIGNAL \G16|Add1~21_sumout\ : std_logic;
SIGNAL \G16|Mux10~1_combout\ : std_logic;
SIGNAL \G16|Mux10~3_combout\ : std_logic;
SIGNAL \G7|Reg~121_q\ : std_logic;
SIGNAL \G7|Reg~73_q\ : std_logic;
SIGNAL \G7|Reg~179_combout\ : std_logic;
SIGNAL \G7|Reg~211_combout\ : std_logic;
SIGNAL \G16|Add2~17_sumout\ : std_logic;
SIGNAL \G16|Add1~17_sumout\ : std_logic;
SIGNAL \G16|Mux11~4_combout\ : std_logic;
SIGNAL \G17|ram~578_combout\ : std_logic;
SIGNAL \G17|ram~234_q\ : std_logic;
SIGNAL \G17|ram~250feeder_combout\ : std_logic;
SIGNAL \G17|ram~250_q\ : std_logic;
SIGNAL \G17|ram~266_q\ : std_logic;
SIGNAL \G17|ram~202feeder_combout\ : std_logic;
SIGNAL \G17|ram~202_q\ : std_logic;
SIGNAL \G17|ram~186feeder_combout\ : std_logic;
SIGNAL \G17|ram~186_q\ : std_logic;
SIGNAL \G17|ram~170feeder_combout\ : std_logic;
SIGNAL \G17|ram~170_q\ : std_logic;
SIGNAL \G17|ram~154feeder_combout\ : std_logic;
SIGNAL \G17|ram~154_q\ : std_logic;
SIGNAL \G17|ram~479_combout\ : std_logic;
SIGNAL \G17|ram~218_q\ : std_logic;
SIGNAL \G17|ram~336_combout\ : std_logic;
SIGNAL \G17|ram~282feeder_combout\ : std_logic;
SIGNAL \G17|ram~282_q\ : std_logic;
SIGNAL \G17|ram~138_q\ : std_logic;
SIGNAL \G17|ram~122feeder_combout\ : std_logic;
SIGNAL \G17|ram~122_q\ : std_logic;
SIGNAL \G17|ram~106_q\ : std_logic;
SIGNAL \G17|ram~42_q\ : std_logic;
SIGNAL \G17|ram~74_q\ : std_logic;
SIGNAL \G17|ram~58feeder_combout\ : std_logic;
SIGNAL \G17|ram~58_q\ : std_logic;
SIGNAL \G17|ram~26feeder_combout\ : std_logic;
SIGNAL \G17|ram~26_q\ : std_logic;
SIGNAL \G17|ram~475_combout\ : std_logic;
SIGNAL \G17|ram~90feeder_combout\ : std_logic;
SIGNAL \G17|ram~90_q\ : std_logic;
SIGNAL \G17|ram~332_combout\ : std_logic;
SIGNAL \G17|ram~340_combout\ : std_logic;
SIGNAL \G7|Reg~120_q\ : std_logic;
SIGNAL \G7|Reg~40_q\ : std_logic;
SIGNAL \G7|Reg~164_combout\ : std_logic;
SIGNAL \G7|Reg~196_combout\ : std_logic;
SIGNAL \G14|SAIDA[4]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G16|Mux11~0_combout\ : std_logic;
SIGNAL \G17|ram~450_combout\ : std_logic;
SIGNAL \G17|ram~280_q\ : std_logic;
SIGNAL \G17|ram~232feeder_combout\ : std_logic;
SIGNAL \G17|ram~232_q\ : std_logic;
SIGNAL \G17|ram~248_q\ : std_logic;
SIGNAL \G17|ram~264_q\ : std_logic;
SIGNAL \G17|ram~200_q\ : std_logic;
SIGNAL \G17|ram~184_q\ : std_logic;
SIGNAL \G17|ram~168feeder_combout\ : std_logic;
SIGNAL \G17|ram~168_q\ : std_logic;
SIGNAL \G17|ram~152feeder_combout\ : std_logic;
SIGNAL \G17|ram~152_q\ : std_logic;
SIGNAL \G17|ram~463_combout\ : std_logic;
SIGNAL \G17|ram~216_q\ : std_logic;
SIGNAL \G17|ram~318_combout\ : std_logic;
SIGNAL \G17|ram~104_q\ : std_logic;
SIGNAL \G17|ram~120feeder_combout\ : std_logic;
SIGNAL \G17|ram~120_q\ : std_logic;
SIGNAL \G17|ram~136_q\ : std_logic;
SIGNAL \G17|ram~72_q\ : std_logic;
SIGNAL \G17|ram~40feeder_combout\ : std_logic;
SIGNAL \G17|ram~40_q\ : std_logic;
SIGNAL \G17|ram~56_q\ : std_logic;
SIGNAL \G17|ram~24feeder_combout\ : std_logic;
SIGNAL \G17|ram~24_q\ : std_logic;
SIGNAL \G17|ram~459_combout\ : std_logic;
SIGNAL \G17|ram~88feeder_combout\ : std_logic;
SIGNAL \G17|ram~88_q\ : std_logic;
SIGNAL \G17|ram~314_combout\ : std_logic;
SIGNAL \G17|ram~322_combout\ : std_logic;
SIGNAL \G7|Reg~134_q\ : std_logic;
SIGNAL \G7|Reg~38_q\ : std_logic;
SIGNAL \G7|Reg~166_combout\ : std_logic;
SIGNAL \G7|Reg~198_combout\ : std_logic;
SIGNAL \G14|SAIDA[2]~feeder_combout\ : std_logic;
SIGNAL \G14|SAIDA[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G16|Mux13~1_combout\ : std_logic;
SIGNAL \G16|Mux13~2_combout\ : std_logic;
SIGNAL \G17|ram~303_combout\ : std_logic;
SIGNAL \G17|ram~281feeder_combout\ : std_logic;
SIGNAL \G17|ram~281_q\ : std_logic;
SIGNAL \G17|ram~233_q\ : std_logic;
SIGNAL \G17|ram~249feeder_combout\ : std_logic;
SIGNAL \G17|ram~249_q\ : std_logic;
SIGNAL \G17|ram~265_q\ : std_logic;
SIGNAL \G17|ram~201_q\ : std_logic;
SIGNAL \G17|ram~169feeder_combout\ : std_logic;
SIGNAL \G17|ram~169_q\ : std_logic;
SIGNAL \G17|ram~185feeder_combout\ : std_logic;
SIGNAL \G17|ram~185_q\ : std_logic;
SIGNAL \G17|ram~153feeder_combout\ : std_logic;
SIGNAL \G17|ram~153_q\ : std_logic;
SIGNAL \G17|ram~471_combout\ : std_logic;
SIGNAL \G17|ram~217_q\ : std_logic;
SIGNAL \G17|ram~327_combout\ : std_logic;
SIGNAL \G17|ram~105feeder_combout\ : std_logic;
SIGNAL \G17|ram~105_q\ : std_logic;
SIGNAL \G17|ram~121feeder_combout\ : std_logic;
SIGNAL \G17|ram~121_q\ : std_logic;
SIGNAL \G17|ram~137_q\ : std_logic;
SIGNAL \G17|ram~41feeder_combout\ : std_logic;
SIGNAL \G17|ram~41_q\ : std_logic;
SIGNAL \G17|ram~73_q\ : std_logic;
SIGNAL \G17|ram~57feeder_combout\ : std_logic;
SIGNAL \G17|ram~57_q\ : std_logic;
SIGNAL \G17|ram~25_q\ : std_logic;
SIGNAL \G17|ram~467_combout\ : std_logic;
SIGNAL \G17|ram~89feeder_combout\ : std_logic;
SIGNAL \G17|ram~89_q\ : std_logic;
SIGNAL \G17|ram~323_combout\ : std_logic;
SIGNAL \G17|ram~331_combout\ : std_logic;
SIGNAL \G7|Reg~135_q\ : std_logic;
SIGNAL \G7|Reg~39_q\ : std_logic;
SIGNAL \G7|Reg~23DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~165_combout\ : std_logic;
SIGNAL \G7|Reg~197_combout\ : std_logic;
SIGNAL \G14|SAIDA[3]~feeder_combout\ : std_logic;
SIGNAL \G14|SAIDA[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G16|Mux12~1_combout\ : std_logic;
SIGNAL \G16|Mux12~2_combout\ : std_logic;
SIGNAL \G17|ram~293feeder_combout\ : std_logic;
SIGNAL \G17|ram~293_q\ : std_logic;
SIGNAL \G17|ram~245feeder_combout\ : std_logic;
SIGNAL \G17|ram~245_q\ : std_logic;
SIGNAL \G17|ram~261_q\ : std_logic;
SIGNAL \G17|ram~277_q\ : std_logic;
SIGNAL \G17|ram~213_q\ : std_logic;
SIGNAL \G17|ram~181feeder_combout\ : std_logic;
SIGNAL \G17|ram~181_q\ : std_logic;
SIGNAL \G17|ram~197feeder_combout\ : std_logic;
SIGNAL \G17|ram~197_q\ : std_logic;
SIGNAL \G17|ram~165feeder_combout\ : std_logic;
SIGNAL \G17|ram~165_q\ : std_logic;
SIGNAL \G17|ram~567_combout\ : std_logic;
SIGNAL \G17|ram~229feeder_combout\ : std_logic;
SIGNAL \G17|ram~229_q\ : std_logic;
SIGNAL \G17|ram~435_combout\ : std_logic;
SIGNAL \G17|ram~149_q\ : std_logic;
SIGNAL \G17|ram~117feeder_combout\ : std_logic;
SIGNAL \G17|ram~117_q\ : std_logic;
SIGNAL \G17|ram~133feeder_combout\ : std_logic;
SIGNAL \G17|ram~133_q\ : std_logic;
SIGNAL \G17|ram~53_q\ : std_logic;
SIGNAL \G17|ram~85_q\ : std_logic;
SIGNAL \G17|ram~69_q\ : std_logic;
SIGNAL \G17|ram~37_q\ : std_logic;
SIGNAL \G17|ram~563_combout\ : std_logic;
SIGNAL \G17|ram~101feeder_combout\ : std_logic;
SIGNAL \G17|ram~101_q\ : std_logic;
SIGNAL \G17|ram~431_combout\ : std_logic;
SIGNAL \G17|ram~439_combout\ : std_logic;
SIGNAL \G16|Mux7~0_combout\ : std_logic;
SIGNAL \G7|Reg~147_q\ : std_logic;
SIGNAL \G7|Reg~83_q\ : std_logic;
SIGNAL \G7|Reg~35_q\ : std_logic;
SIGNAL \G7|Reg~169_combout\ : std_logic;
SIGNAL \G7|Reg~201_combout\ : std_logic;
SIGNAL \G16|Mux7~1_combout\ : std_logic;
SIGNAL \G16|Mux0~5_combout\ : std_logic;
SIGNAL \G17|ram~292_q\ : std_logic;
SIGNAL \G17|ram~148_q\ : std_logic;
SIGNAL \G17|ram~116feeder_combout\ : std_logic;
SIGNAL \G17|ram~116_q\ : std_logic;
SIGNAL \G17|ram~132feeder_combout\ : std_logic;
SIGNAL \G17|ram~132_q\ : std_logic;
SIGNAL \G17|ram~84_q\ : std_logic;
SIGNAL \G17|ram~52_q\ : std_logic;
SIGNAL \G17|ram~68feeder_combout\ : std_logic;
SIGNAL \G17|ram~68_q\ : std_logic;
SIGNAL \G17|ram~36feeder_combout\ : std_logic;
SIGNAL \G17|ram~36_q\ : std_logic;
SIGNAL \G17|ram~555_combout\ : std_logic;
SIGNAL \G17|ram~100feeder_combout\ : std_logic;
SIGNAL \G17|ram~100_q\ : std_logic;
SIGNAL \G17|ram~422_combout\ : std_logic;
SIGNAL \G17|ram~276_q\ : std_logic;
SIGNAL \G17|ram~260feeder_combout\ : std_logic;
SIGNAL \G17|ram~260_q\ : std_logic;
SIGNAL \G17|ram~244feeder_combout\ : std_logic;
SIGNAL \G17|ram~244_q\ : std_logic;
SIGNAL \G17|ram~180feeder_combout\ : std_logic;
SIGNAL \G17|ram~180_q\ : std_logic;
SIGNAL \G17|ram~196feeder_combout\ : std_logic;
SIGNAL \G17|ram~196_q\ : std_logic;
SIGNAL \G17|ram~212_q\ : std_logic;
SIGNAL \G17|ram~164feeder_combout\ : std_logic;
SIGNAL \G17|ram~164_q\ : std_logic;
SIGNAL \G17|ram~559_combout\ : std_logic;
SIGNAL \G17|ram~228_q\ : std_logic;
SIGNAL \G17|ram~426_combout\ : std_logic;
SIGNAL \G17|ram~430_combout\ : std_logic;
SIGNAL \G7|Reg~130_q\ : std_logic;
SIGNAL \G7|Reg~82_q\ : std_logic;
SIGNAL \G7|Reg~34_q\ : std_logic;
SIGNAL \G7|Reg~170_combout\ : std_logic;
SIGNAL \G7|Reg~202_combout\ : std_logic;
SIGNAL \G16|Mux1~0_combout\ : std_logic;
SIGNAL \G17|ram~291feeder_combout\ : std_logic;
SIGNAL \G17|ram~291_q\ : std_logic;
SIGNAL \G17|ram~115_q\ : std_logic;
SIGNAL \G17|ram~131feeder_combout\ : std_logic;
SIGNAL \G17|ram~131_q\ : std_logic;
SIGNAL \G17|ram~147_q\ : std_logic;
SIGNAL \G17|ram~51_q\ : std_logic;
SIGNAL \G17|ram~83_q\ : std_logic;
SIGNAL \G17|ram~67feeder_combout\ : std_logic;
SIGNAL \G17|ram~67_q\ : std_logic;
SIGNAL \G17|ram~35_q\ : std_logic;
SIGNAL \G17|ram~547_combout\ : std_logic;
SIGNAL \G17|ram~99feeder_combout\ : std_logic;
SIGNAL \G17|ram~99_q\ : std_logic;
SIGNAL \G17|ram~413_combout\ : std_logic;
SIGNAL \G17|ram~243feeder_combout\ : std_logic;
SIGNAL \G17|ram~243_q\ : std_logic;
SIGNAL \G17|ram~259feeder_combout\ : std_logic;
SIGNAL \G17|ram~259_q\ : std_logic;
SIGNAL \G17|ram~275_q\ : std_logic;
SIGNAL \G17|ram~179_q\ : std_logic;
SIGNAL \G17|ram~195feeder_combout\ : std_logic;
SIGNAL \G17|ram~195_q\ : std_logic;
SIGNAL \G17|ram~211_q\ : std_logic;
SIGNAL \G17|ram~163_q\ : std_logic;
SIGNAL \G17|ram~551_combout\ : std_logic;
SIGNAL \G17|ram~227feeder_combout\ : std_logic;
SIGNAL \G17|ram~227_q\ : std_logic;
SIGNAL \G17|ram~417_combout\ : std_logic;
SIGNAL \G17|ram~421_combout\ : std_logic;
SIGNAL \G7|Reg~145_q\ : std_logic;
SIGNAL \G7|Reg~129_q\ : std_logic;
SIGNAL \G7|Reg~81_q\ : std_logic;
SIGNAL \G7|Reg~33_q\ : std_logic;
SIGNAL \G7|Reg~171_combout\ : std_logic;
SIGNAL \G7|Reg~203_combout\ : std_logic;
SIGNAL \G16|Mux2~0_combout\ : std_logic;
SIGNAL \G17|ram~290feeder_combout\ : std_logic;
SIGNAL \G17|ram~290_q\ : std_logic;
SIGNAL \G17|ram~242feeder_combout\ : std_logic;
SIGNAL \G17|ram~242_q\ : std_logic;
SIGNAL \G17|ram~258feeder_combout\ : std_logic;
SIGNAL \G17|ram~258_q\ : std_logic;
SIGNAL \G17|ram~274_q\ : std_logic;
SIGNAL \G17|ram~178_q\ : std_logic;
SIGNAL \G17|ram~210_q\ : std_logic;
SIGNAL \G17|ram~194feeder_combout\ : std_logic;
SIGNAL \G17|ram~194_q\ : std_logic;
SIGNAL \G17|ram~162feeder_combout\ : std_logic;
SIGNAL \G17|ram~162_q\ : std_logic;
SIGNAL \G17|ram~543_combout\ : std_logic;
SIGNAL \G17|ram~226_q\ : std_logic;
SIGNAL \G17|ram~408_combout\ : std_logic;
SIGNAL \G17|ram~146_q\ : std_logic;
SIGNAL \G17|ram~130_q\ : std_logic;
SIGNAL \G17|ram~114_q\ : std_logic;
SIGNAL \G17|ram~50_q\ : std_logic;
SIGNAL \G17|ram~66_q\ : std_logic;
SIGNAL \G17|ram~82feeder_combout\ : std_logic;
SIGNAL \G17|ram~82_q\ : std_logic;
SIGNAL \G17|ram~34feeder_combout\ : std_logic;
SIGNAL \G17|ram~34_q\ : std_logic;
SIGNAL \G17|ram~539_combout\ : std_logic;
SIGNAL \G17|ram~98_q\ : std_logic;
SIGNAL \G17|ram~404_combout\ : std_logic;
SIGNAL \G17|ram~412_combout\ : std_logic;
SIGNAL \G7|Reg~144_q\ : std_logic;
SIGNAL \G7|Reg~80feeder_combout\ : std_logic;
SIGNAL \G7|Reg~80_q\ : std_logic;
SIGNAL \G7|Reg~32DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~172_combout\ : std_logic;
SIGNAL \G7|Reg~204_combout\ : std_logic;
SIGNAL \G17|ram~289feeder_combout\ : std_logic;
SIGNAL \G17|ram~289_q\ : std_logic;
SIGNAL \G17|ram~113feeder_combout\ : std_logic;
SIGNAL \G17|ram~113_q\ : std_logic;
SIGNAL \G17|ram~129feeder_combout\ : std_logic;
SIGNAL \G17|ram~129_q\ : std_logic;
SIGNAL \G17|ram~145_q\ : std_logic;
SIGNAL \G17|ram~49_q\ : std_logic;
SIGNAL \G17|ram~81feeder_combout\ : std_logic;
SIGNAL \G17|ram~81_q\ : std_logic;
SIGNAL \G17|ram~65_q\ : std_logic;
SIGNAL \G17|ram~33feeder_combout\ : std_logic;
SIGNAL \G17|ram~33_q\ : std_logic;
SIGNAL \G17|ram~531_combout\ : std_logic;
SIGNAL \G17|ram~97feeder_combout\ : std_logic;
SIGNAL \G17|ram~97_q\ : std_logic;
SIGNAL \G17|ram~395_combout\ : std_logic;
SIGNAL \G17|ram~241_q\ : std_logic;
SIGNAL \G17|ram~257_q\ : std_logic;
SIGNAL \G17|ram~273_q\ : std_logic;
SIGNAL \G17|ram~177_q\ : std_logic;
SIGNAL \G17|ram~209_q\ : std_logic;
SIGNAL \G17|ram~193feeder_combout\ : std_logic;
SIGNAL \G17|ram~193_q\ : std_logic;
SIGNAL \G17|ram~161_q\ : std_logic;
SIGNAL \G17|ram~535_combout\ : std_logic;
SIGNAL \G17|ram~225_q\ : std_logic;
SIGNAL \G17|ram~399_combout\ : std_logic;
SIGNAL \G17|ram~403_combout\ : std_logic;
SIGNAL \G7|Reg~127_q\ : std_logic;
SIGNAL \G7|Reg~31_q\ : std_logic;
SIGNAL \G7|Reg~79_q\ : std_logic;
SIGNAL \G7|Reg~173_combout\ : std_logic;
SIGNAL \G7|Reg~205_combout\ : std_logic;
SIGNAL \G16|Mux4~0_combout\ : std_logic;
SIGNAL \G7|Reg~126_q\ : std_logic;
SIGNAL \G7|Reg~142_q\ : std_logic;
SIGNAL \G7|Reg~30feeder_combout\ : std_logic;
SIGNAL \G7|Reg~30DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~46_q\ : std_logic;
SIGNAL \G7|Reg~158_combout\ : std_logic;
SIGNAL \G7|Reg~190_combout\ : std_logic;
SIGNAL \G17|ram~288feeder_combout\ : std_logic;
SIGNAL \G17|ram~288_q\ : std_logic;
SIGNAL \G17|ram~240feeder_combout\ : std_logic;
SIGNAL \G17|ram~240_q\ : std_logic;
SIGNAL \G17|ram~256feeder_combout\ : std_logic;
SIGNAL \G17|ram~256_q\ : std_logic;
SIGNAL \G17|ram~272_q\ : std_logic;
SIGNAL \G17|ram~208_q\ : std_logic;
SIGNAL \G17|ram~176feeder_combout\ : std_logic;
SIGNAL \G17|ram~176_q\ : std_logic;
SIGNAL \G17|ram~192feeder_combout\ : std_logic;
SIGNAL \G17|ram~192_q\ : std_logic;
SIGNAL \G17|ram~160_q\ : std_logic;
SIGNAL \G17|ram~527_combout\ : std_logic;
SIGNAL \G17|ram~224_q\ : std_logic;
SIGNAL \G17|ram~390_combout\ : std_logic;
SIGNAL \G17|ram~144_q\ : std_logic;
SIGNAL \G17|ram~128feeder_combout\ : std_logic;
SIGNAL \G17|ram~128_q\ : std_logic;
SIGNAL \G17|ram~112_q\ : std_logic;
SIGNAL \G17|ram~48feeder_combout\ : std_logic;
SIGNAL \G17|ram~48_q\ : std_logic;
SIGNAL \G17|ram~80_q\ : std_logic;
SIGNAL \G17|ram~64_q\ : std_logic;
SIGNAL \G17|ram~32_q\ : std_logic;
SIGNAL \G17|ram~523_combout\ : std_logic;
SIGNAL \G17|ram~96feeder_combout\ : std_logic;
SIGNAL \G17|ram~96_q\ : std_logic;
SIGNAL \G17|ram~386_combout\ : std_logic;
SIGNAL \G17|ram~394_combout\ : std_logic;
SIGNAL \G14|SAIDA[10]~feeder_combout\ : std_logic;
SIGNAL \G16|Mux5~0_combout\ : std_logic;
SIGNAL \G17|ram~287_q\ : std_logic;
SIGNAL \G17|ram~111_q\ : std_logic;
SIGNAL \G17|ram~127feeder_combout\ : std_logic;
SIGNAL \G17|ram~127_q\ : std_logic;
SIGNAL \G17|ram~143_q\ : std_logic;
SIGNAL \G17|ram~47feeder_combout\ : std_logic;
SIGNAL \G17|ram~47_q\ : std_logic;
SIGNAL \G17|ram~79_q\ : std_logic;
SIGNAL \G17|ram~63feeder_combout\ : std_logic;
SIGNAL \G17|ram~63_q\ : std_logic;
SIGNAL \G17|ram~31feeder_combout\ : std_logic;
SIGNAL \G17|ram~31_q\ : std_logic;
SIGNAL \G17|ram~515_combout\ : std_logic;
SIGNAL \G17|ram~95feeder_combout\ : std_logic;
SIGNAL \G17|ram~95_q\ : std_logic;
SIGNAL \G17|ram~377_combout\ : std_logic;
SIGNAL \G17|ram~239feeder_combout\ : std_logic;
SIGNAL \G17|ram~239_q\ : std_logic;
SIGNAL \G17|ram~255feeder_combout\ : std_logic;
SIGNAL \G17|ram~255_q\ : std_logic;
SIGNAL \G17|ram~271_q\ : std_logic;
SIGNAL \G17|ram~175_q\ : std_logic;
SIGNAL \G17|ram~207_q\ : std_logic;
SIGNAL \G17|ram~191feeder_combout\ : std_logic;
SIGNAL \G17|ram~191_q\ : std_logic;
SIGNAL \G17|ram~159feeder_combout\ : std_logic;
SIGNAL \G17|ram~159_q\ : std_logic;
SIGNAL \G17|ram~519_combout\ : std_logic;
SIGNAL \G17|ram~223feeder_combout\ : std_logic;
SIGNAL \G17|ram~223_q\ : std_logic;
SIGNAL \G17|ram~381_combout\ : std_logic;
SIGNAL \G17|ram~385_combout\ : std_logic;
SIGNAL \G7|Reg~141_q\ : std_logic;
SIGNAL \G7|Reg~77_q\ : std_logic;
SIGNAL \G7|Reg~29_q\ : std_logic;
SIGNAL \G7|Reg~175_combout\ : std_logic;
SIGNAL \G7|Reg~207_combout\ : std_logic;
SIGNAL \G16|Mux6~0_combout\ : std_logic;
SIGNAL \G17|ram~286_q\ : std_logic;
SIGNAL \G17|ram~110_q\ : std_logic;
SIGNAL \G17|ram~126feeder_combout\ : std_logic;
SIGNAL \G17|ram~126_q\ : std_logic;
SIGNAL \G17|ram~142_q\ : std_logic;
SIGNAL \G17|ram~46_q\ : std_logic;
SIGNAL \G17|ram~78_q\ : std_logic;
SIGNAL \G17|ram~62_q\ : std_logic;
SIGNAL \G17|ram~30_q\ : std_logic;
SIGNAL \G17|ram~507_combout\ : std_logic;
SIGNAL \G17|ram~94feeder_combout\ : std_logic;
SIGNAL \G17|ram~94_q\ : std_logic;
SIGNAL \G17|ram~368_combout\ : std_logic;
SIGNAL \G17|ram~238_q\ : std_logic;
SIGNAL \G17|ram~254feeder_combout\ : std_logic;
SIGNAL \G17|ram~254_q\ : std_logic;
SIGNAL \G17|ram~270_q\ : std_logic;
SIGNAL \G17|ram~174feeder_combout\ : std_logic;
SIGNAL \G17|ram~174_q\ : std_logic;
SIGNAL \G17|ram~206_q\ : std_logic;
SIGNAL \G17|ram~190feeder_combout\ : std_logic;
SIGNAL \G17|ram~190_q\ : std_logic;
SIGNAL \G17|ram~158feeder_combout\ : std_logic;
SIGNAL \G17|ram~158_q\ : std_logic;
SIGNAL \G17|ram~511_combout\ : std_logic;
SIGNAL \G17|ram~222_q\ : std_logic;
SIGNAL \G17|ram~372_combout\ : std_logic;
SIGNAL \G17|ram~376_combout\ : std_logic;
SIGNAL \G7|Reg~140_q\ : std_logic;
SIGNAL \G7|Reg~124_q\ : std_logic;
SIGNAL \G7|Reg~28DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~76_q\ : std_logic;
SIGNAL \G7|Reg~176_combout\ : std_logic;
SIGNAL \G7|Reg~208_combout\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G16|Mux7~2_combout\ : std_logic;
SIGNAL \G16|Add1~30\ : std_logic;
SIGNAL \G16|Add1~31\ : std_logic;
SIGNAL \G16|Add1~33_sumout\ : std_logic;
SIGNAL \G16|Mux7~3_combout\ : std_logic;
SIGNAL \G7|Reg~28_q\ : std_logic;
SIGNAL \G7|Reg~44_q\ : std_logic;
SIGNAL \G7|Reg~160_combout\ : std_logic;
SIGNAL \G7|Reg~192_combout\ : std_logic;
SIGNAL \G14|SAIDA[8]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G16|Add1~34\ : std_logic;
SIGNAL \G16|Add1~35\ : std_logic;
SIGNAL \G16|Add1~37_sumout\ : std_logic;
SIGNAL \G16|Mux6~1_combout\ : std_logic;
SIGNAL \G7|Reg~125_q\ : std_logic;
SIGNAL \G7|Reg~45_q\ : std_logic;
SIGNAL \G7|Reg~159_combout\ : std_logic;
SIGNAL \G7|Reg~191_combout\ : std_logic;
SIGNAL \G14|SAIDA[9]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G16|Add1~38\ : std_logic;
SIGNAL \G16|Add1~39\ : std_logic;
SIGNAL \G16|Add1~41_sumout\ : std_logic;
SIGNAL \G16|Mux5~1_combout\ : std_logic;
SIGNAL \G7|Reg~78_q\ : std_logic;
SIGNAL \G7|Reg~30_q\ : std_logic;
SIGNAL \G7|Reg~174_combout\ : std_logic;
SIGNAL \G7|Reg~206_combout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G16|Add1~42\ : std_logic;
SIGNAL \G16|Add1~43\ : std_logic;
SIGNAL \G16|Add1~45_sumout\ : std_logic;
SIGNAL \G16|Mux4~1_combout\ : std_logic;
SIGNAL \G7|Reg~143_q\ : std_logic;
SIGNAL \G7|Reg~47_q\ : std_logic;
SIGNAL \G7|Reg~157_combout\ : std_logic;
SIGNAL \G7|Reg~189_combout\ : std_logic;
SIGNAL \G14|SAIDA[11]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G16|Mux3~0_combout\ : std_logic;
SIGNAL \G16|Add1~46\ : std_logic;
SIGNAL \G16|Add1~47\ : std_logic;
SIGNAL \G16|Add1~49_sumout\ : std_logic;
SIGNAL \G16|Mux3~1_combout\ : std_logic;
SIGNAL \G7|Reg~128_q\ : std_logic;
SIGNAL \G7|Reg~32_q\ : std_logic;
SIGNAL \G7|Reg~48_q\ : std_logic;
SIGNAL \G7|Reg~156_combout\ : std_logic;
SIGNAL \G7|Reg~188_combout\ : std_logic;
SIGNAL \G14|SAIDA[12]~feeder_combout\ : std_logic;
SIGNAL \G16|Add1~50\ : std_logic;
SIGNAL \G16|Add1~51\ : std_logic;
SIGNAL \G16|Add1~53_sumout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G16|Mux2~1_combout\ : std_logic;
SIGNAL \G7|Reg~129feeder_combout\ : std_logic;
SIGNAL \G7|Reg~129DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~49_q\ : std_logic;
SIGNAL \G7|Reg~155_combout\ : std_logic;
SIGNAL \G7|Reg~187_combout\ : std_logic;
SIGNAL \G14|SAIDA[13]~feeder_combout\ : std_logic;
SIGNAL \G16|Add1~54\ : std_logic;
SIGNAL \G16|Add1~55\ : std_logic;
SIGNAL \G16|Add1~57_sumout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G16|Mux1~1_combout\ : std_logic;
SIGNAL \G7|Reg~146_q\ : std_logic;
SIGNAL \G7|Reg~34DUPLICATE_q\ : std_logic;
SIGNAL \G7|Reg~50_q\ : std_logic;
SIGNAL \G7|Reg~154_combout\ : std_logic;
SIGNAL \G7|Reg~186_combout\ : std_logic;
SIGNAL \G14|SAIDA[14]~feeder_combout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G16|Mux0~6_combout\ : std_logic;
SIGNAL \G7|Reg~131_q\ : std_logic;
SIGNAL \G7|Reg~51_q\ : std_logic;
SIGNAL \G7|Reg~153_combout\ : std_logic;
SIGNAL \G7|Reg~185_combout\ : std_logic;
SIGNAL \G14|SAIDA[15]~feeder_combout\ : std_logic;
SIGNAL \G16|Add1~58\ : std_logic;
SIGNAL \G16|Add1~59\ : std_logic;
SIGNAL \G16|Add1~61_sumout\ : std_logic;
SIGNAL \G16|Equal1~2_combout\ : std_logic;
SIGNAL \G16|Equal1~0_combout\ : std_logic;
SIGNAL \G16|Equal1~1_combout\ : std_logic;
SIGNAL \G11|S1~0_combout\ : std_logic;
SIGNAL \G11|S1~q\ : std_logic;
SIGNAL \G13|SAIDA~1_combout\ : std_logic;
SIGNAL \G4|Mux5~1_combout\ : std_logic;
SIGNAL \G4|rs[1]~reg0_q\ : std_logic;
SIGNAL \G5|Equal0~1_combout\ : std_logic;
SIGNAL \G5|jump~2_combout\ : std_logic;
SIGNAL \G5|origalu[2]~reg0feeder_combout\ : std_logic;
SIGNAL \G5|origalu[2]~reg0_q\ : std_logic;
SIGNAL \G5|origalu[2]~4_combout\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G12|SAIDA[0]~feeder_combout\ : std_logic;
SIGNAL \G10|SAIDA[0]~feeder_combout\ : std_logic;
SIGNAL \G13|SAIDA~0_combout\ : std_logic;
SIGNAL \G13|SAIDA[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G4|Mux5~0_combout\ : std_logic;
SIGNAL \G4|rs[0]~reg0_q\ : std_logic;
SIGNAL \G5|regdest~reg0DUPLICATE_q\ : std_logic;
SIGNAL \G2|saida[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G13|SAIDA[4]~DUPLICATE_q\ : std_logic;
SIGNAL \G13|SAIDA[7]~DUPLICATE_q\ : std_logic;
SIGNAL \G13|SAIDA[12]~DUPLICATE_q\ : std_logic;
SIGNAL \G18|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G15|SAIDA\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G12|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G14|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G6|SAIDA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G10|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G3|resshift\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G8|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G9|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G9|AUX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G7|ALT_INV_Reg~34DUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~32DUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~30DUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~28DUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~23DUPLICATE_q\ : std_logic;
SIGNAL \G5|ALT_INV_regdest~enDUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~129DUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~139DUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~122DUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~133DUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~116DUPLICATE_q\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~enDUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~132DUPLICATE_q\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[13]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[9]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[7]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[4]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_saida[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[4]~DUPLICATE_q\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[1]~DUPLICATE_q\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~216_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~215_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~214_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~213_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~212_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~211_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~210_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~209_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~208_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~207_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~206_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~205_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~204_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~203_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~202_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~201_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~200_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~199_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~198_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~197_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~196_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~195_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~194_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~193_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~192_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~191_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~190_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~189_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~188_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~187_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~186_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~185_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~184_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~183_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~182_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~181_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~180_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~179_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~178_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~177_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~176_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~175_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~174_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~173_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~172_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~171_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~170_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~169_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~168_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~167_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~166_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~165_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~164_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~163_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~162_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~161_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~160_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~159_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~158_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~157_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~156_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~155_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~154_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~153_combout\ : std_logic;
SIGNAL \G9|ALT_INV_AUX\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \G9|ALT_INV_SAIDA\ : std_logic_vector(5 DOWNTO 2);
SIGNAL \G17|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \G5|ALT_INV_jump~2_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[0]~7_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_ZeroULA~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_ZeroULA~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \G5|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~449_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~448_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~35_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~83_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~51_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~34_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~82_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~50_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~33_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~81_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~49_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~32_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~80_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~48_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~31_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~79_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~47_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~30_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~78_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~46_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~29_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~77_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~45_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~28_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~76_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~44_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~27_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~75_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~43_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~26_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~74_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~42_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~25_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~73_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~41_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~24_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~72_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~40_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~23_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~71_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~39_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~22_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~70_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~38_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~21_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~69_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~37_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~20_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~68_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~36_q\ : std_logic;
SIGNAL \G4|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[2]~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G8|ALT_INV_SAIDA\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \G5|ALT_INV_escrevereg~1_combout\ : std_logic;
SIGNAL \G5|ALT_INV_escrevereg~reg0_q\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[1]~6_combout\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[1]~reg0_q\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[0]~reg0_q\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[2]~4_combout\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[2]~reg0_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \G5|ALT_INV_memparareg~1_combout\ : std_logic;
SIGNAL \G5|ALT_INV_memparareg~reg0_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~303_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~302_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~8_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[3]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[2]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[0]~en_q\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[0]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_funct[2]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_funct[0]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_op[0]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_rs[2]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_rs[1]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_rs[0]~reg0_q\ : std_logic;
SIGNAL \G5|ALT_INV_regdest~en_q\ : std_logic;
SIGNAL \G5|ALT_INV_regdest~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_rt[0]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_rs[0]~en_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~131_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~147_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~130_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~146_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~129_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~145_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~128_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~144_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~127_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~143_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~126_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~142_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~125_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~141_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~124_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~140_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~123_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~139_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~122_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~138_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~121_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~137_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~120_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~136_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~119_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~135_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~118_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~134_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~117_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~133_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~116_q\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~en_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~132_q\ : std_logic;
SIGNAL \G16|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~7_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~6_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G6|ALT_INV_SAIDA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G17|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~523_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~519_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~515_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~511_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~507_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~503_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~499_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~495_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~491_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~487_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~483_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~479_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~475_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~471_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~467_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~463_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~459_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~455_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~451_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~444_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~440_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~435_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~431_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~426_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~422_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~417_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~413_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~408_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~404_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~399_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~395_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~390_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~386_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~381_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~377_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~372_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~368_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~363_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~359_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~354_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~350_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~345_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~341_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~336_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~332_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~327_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~323_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~318_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~314_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~309_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~305_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~298_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~294_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \G16|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA\ : std_logic_vector(13 DOWNTO 6);
SIGNAL \G12|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|ALT_INV_SAIDA\ : std_logic_vector(13 DOWNTO 4);

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
\G7|ALT_INV_Reg~34DUPLICATE_q\ <= NOT \G7|Reg~34DUPLICATE_q\;
\G7|ALT_INV_Reg~32DUPLICATE_q\ <= NOT \G7|Reg~32DUPLICATE_q\;
\G7|ALT_INV_Reg~30DUPLICATE_q\ <= NOT \G7|Reg~30DUPLICATE_q\;
\G7|ALT_INV_Reg~28DUPLICATE_q\ <= NOT \G7|Reg~28DUPLICATE_q\;
\G7|ALT_INV_Reg~23DUPLICATE_q\ <= NOT \G7|Reg~23DUPLICATE_q\;
\G5|ALT_INV_regdest~enDUPLICATE_q\ <= NOT \G5|regdest~enDUPLICATE_q\;
\G7|ALT_INV_Reg~129DUPLICATE_q\ <= NOT \G7|Reg~129DUPLICATE_q\;
\G7|ALT_INV_Reg~139DUPLICATE_q\ <= NOT \G7|Reg~139DUPLICATE_q\;
\G7|ALT_INV_Reg~122DUPLICATE_q\ <= NOT \G7|Reg~122DUPLICATE_q\;
\G7|ALT_INV_Reg~133DUPLICATE_q\ <= NOT \G7|Reg~133DUPLICATE_q\;
\G7|ALT_INV_Reg~116DUPLICATE_q\ <= NOT \G7|Reg~116DUPLICATE_q\;
\G4|ALT_INV_rd[0]~reg0DUPLICATE_q\ <= NOT \G4|rd[0]~reg0DUPLICATE_q\;
\G4|ALT_INV_rd[0]~enDUPLICATE_q\ <= NOT \G4|rd[0]~enDUPLICATE_q\;
\G7|ALT_INV_Reg~132DUPLICATE_q\ <= NOT \G7|Reg~132DUPLICATE_q\;
\G15|ALT_INV_SAIDA[6]~DUPLICATE_q\ <= NOT \G15|SAIDA[6]~DUPLICATE_q\;
\G15|ALT_INV_SAIDA[3]~DUPLICATE_q\ <= NOT \G15|SAIDA[3]~DUPLICATE_q\;
\G15|ALT_INV_SAIDA[1]~DUPLICATE_q\ <= NOT \G15|SAIDA[1]~DUPLICATE_q\;
\G15|ALT_INV_SAIDA[0]~DUPLICATE_q\ <= NOT \G15|SAIDA[0]~DUPLICATE_q\;
\G15|ALT_INV_SAIDA[2]~DUPLICATE_q\ <= NOT \G15|SAIDA[2]~DUPLICATE_q\;
\G1|ALT_INV_pout[13]~DUPLICATE_q\ <= NOT \G1|pout[13]~DUPLICATE_q\;
\G1|ALT_INV_pout[9]~DUPLICATE_q\ <= NOT \G1|pout[9]~DUPLICATE_q\;
\G1|ALT_INV_pout[7]~DUPLICATE_q\ <= NOT \G1|pout[7]~DUPLICATE_q\;
\G1|ALT_INV_pout[6]~DUPLICATE_q\ <= NOT \G1|pout[6]~DUPLICATE_q\;
\G1|ALT_INV_pout[4]~DUPLICATE_q\ <= NOT \G1|pout[4]~DUPLICATE_q\;
\G1|ALT_INV_pout[3]~DUPLICATE_q\ <= NOT \G1|pout[3]~DUPLICATE_q\;
\G2|ALT_INV_saida[1]~DUPLICATE_q\ <= NOT \G2|saida[1]~DUPLICATE_q\;
\G14|ALT_INV_SAIDA[4]~DUPLICATE_q\ <= NOT \G14|SAIDA[4]~DUPLICATE_q\;
\G14|ALT_INV_SAIDA[3]~DUPLICATE_q\ <= NOT \G14|SAIDA[3]~DUPLICATE_q\;
\G14|ALT_INV_SAIDA[2]~DUPLICATE_q\ <= NOT \G14|SAIDA[2]~DUPLICATE_q\;
\G14|ALT_INV_SAIDA[1]~DUPLICATE_q\ <= NOT \G14|SAIDA[1]~DUPLICATE_q\;
\G14|ALT_INV_SAIDA[0]~DUPLICATE_q\ <= NOT \G14|SAIDA[0]~DUPLICATE_q\;
\G7|ALT_INV_Reg~216_combout\ <= NOT \G7|Reg~216_combout\;
\G7|ALT_INV_Reg~215_combout\ <= NOT \G7|Reg~215_combout\;
\G7|ALT_INV_Reg~214_combout\ <= NOT \G7|Reg~214_combout\;
\G7|ALT_INV_Reg~213_combout\ <= NOT \G7|Reg~213_combout\;
\G7|ALT_INV_Reg~212_combout\ <= NOT \G7|Reg~212_combout\;
\G7|ALT_INV_Reg~211_combout\ <= NOT \G7|Reg~211_combout\;
\G7|ALT_INV_Reg~210_combout\ <= NOT \G7|Reg~210_combout\;
\G7|ALT_INV_Reg~209_combout\ <= NOT \G7|Reg~209_combout\;
\G7|ALT_INV_Reg~208_combout\ <= NOT \G7|Reg~208_combout\;
\G7|ALT_INV_Reg~207_combout\ <= NOT \G7|Reg~207_combout\;
\G7|ALT_INV_Reg~206_combout\ <= NOT \G7|Reg~206_combout\;
\G7|ALT_INV_Reg~205_combout\ <= NOT \G7|Reg~205_combout\;
\G7|ALT_INV_Reg~204_combout\ <= NOT \G7|Reg~204_combout\;
\G7|ALT_INV_Reg~203_combout\ <= NOT \G7|Reg~203_combout\;
\G7|ALT_INV_Reg~202_combout\ <= NOT \G7|Reg~202_combout\;
\G7|ALT_INV_Reg~201_combout\ <= NOT \G7|Reg~201_combout\;
\G7|ALT_INV_Reg~200_combout\ <= NOT \G7|Reg~200_combout\;
\G7|ALT_INV_Reg~199_combout\ <= NOT \G7|Reg~199_combout\;
\G7|ALT_INV_Reg~198_combout\ <= NOT \G7|Reg~198_combout\;
\G7|ALT_INV_Reg~197_combout\ <= NOT \G7|Reg~197_combout\;
\G7|ALT_INV_Reg~196_combout\ <= NOT \G7|Reg~196_combout\;
\G7|ALT_INV_Reg~195_combout\ <= NOT \G7|Reg~195_combout\;
\G7|ALT_INV_Reg~194_combout\ <= NOT \G7|Reg~194_combout\;
\G7|ALT_INV_Reg~193_combout\ <= NOT \G7|Reg~193_combout\;
\G7|ALT_INV_Reg~192_combout\ <= NOT \G7|Reg~192_combout\;
\G7|ALT_INV_Reg~191_combout\ <= NOT \G7|Reg~191_combout\;
\G7|ALT_INV_Reg~190_combout\ <= NOT \G7|Reg~190_combout\;
\G7|ALT_INV_Reg~189_combout\ <= NOT \G7|Reg~189_combout\;
\G7|ALT_INV_Reg~188_combout\ <= NOT \G7|Reg~188_combout\;
\G7|ALT_INV_Reg~187_combout\ <= NOT \G7|Reg~187_combout\;
\G7|ALT_INV_Reg~186_combout\ <= NOT \G7|Reg~186_combout\;
\G7|ALT_INV_Reg~185_combout\ <= NOT \G7|Reg~185_combout\;
\G7|ALT_INV_Reg~184_combout\ <= NOT \G7|Reg~184_combout\;
\G7|ALT_INV_Reg~183_combout\ <= NOT \G7|Reg~183_combout\;
\G7|ALT_INV_Reg~182_combout\ <= NOT \G7|Reg~182_combout\;
\G7|ALT_INV_Reg~181_combout\ <= NOT \G7|Reg~181_combout\;
\G7|ALT_INV_Reg~180_combout\ <= NOT \G7|Reg~180_combout\;
\G7|ALT_INV_Reg~179_combout\ <= NOT \G7|Reg~179_combout\;
\G7|ALT_INV_Reg~178_combout\ <= NOT \G7|Reg~178_combout\;
\G7|ALT_INV_Reg~177_combout\ <= NOT \G7|Reg~177_combout\;
\G7|ALT_INV_Reg~176_combout\ <= NOT \G7|Reg~176_combout\;
\G7|ALT_INV_Reg~175_combout\ <= NOT \G7|Reg~175_combout\;
\G7|ALT_INV_Reg~174_combout\ <= NOT \G7|Reg~174_combout\;
\G7|ALT_INV_Reg~173_combout\ <= NOT \G7|Reg~173_combout\;
\G7|ALT_INV_Reg~172_combout\ <= NOT \G7|Reg~172_combout\;
\G7|ALT_INV_Reg~171_combout\ <= NOT \G7|Reg~171_combout\;
\G7|ALT_INV_Reg~170_combout\ <= NOT \G7|Reg~170_combout\;
\G7|ALT_INV_Reg~169_combout\ <= NOT \G7|Reg~169_combout\;
\G7|ALT_INV_Reg~168_combout\ <= NOT \G7|Reg~168_combout\;
\G7|ALT_INV_Reg~167_combout\ <= NOT \G7|Reg~167_combout\;
\G7|ALT_INV_Reg~166_combout\ <= NOT \G7|Reg~166_combout\;
\G7|ALT_INV_Reg~165_combout\ <= NOT \G7|Reg~165_combout\;
\G7|ALT_INV_Reg~164_combout\ <= NOT \G7|Reg~164_combout\;
\G7|ALT_INV_Reg~163_combout\ <= NOT \G7|Reg~163_combout\;
\G7|ALT_INV_Reg~162_combout\ <= NOT \G7|Reg~162_combout\;
\G7|ALT_INV_Reg~161_combout\ <= NOT \G7|Reg~161_combout\;
\G7|ALT_INV_Reg~160_combout\ <= NOT \G7|Reg~160_combout\;
\G7|ALT_INV_Reg~159_combout\ <= NOT \G7|Reg~159_combout\;
\G7|ALT_INV_Reg~158_combout\ <= NOT \G7|Reg~158_combout\;
\G7|ALT_INV_Reg~157_combout\ <= NOT \G7|Reg~157_combout\;
\G7|ALT_INV_Reg~156_combout\ <= NOT \G7|Reg~156_combout\;
\G7|ALT_INV_Reg~155_combout\ <= NOT \G7|Reg~155_combout\;
\G7|ALT_INV_Reg~154_combout\ <= NOT \G7|Reg~154_combout\;
\G7|ALT_INV_Reg~153_combout\ <= NOT \G7|Reg~153_combout\;
\G9|ALT_INV_AUX\(3) <= NOT \G9|AUX\(3);
\G9|ALT_INV_SAIDA\(5) <= NOT \G9|SAIDA\(5);
\G9|ALT_INV_SAIDA\(4) <= NOT \G9|SAIDA\(4);
\G9|ALT_INV_SAIDA\(3) <= NOT \G9|SAIDA\(3);
\G9|ALT_INV_SAIDA\(2) <= NOT \G9|SAIDA\(2);
\G17|ALT_INV_ram~197_q\ <= NOT \G17|ram~197_q\;
\G17|ALT_INV_ram~165_q\ <= NOT \G17|ram~165_q\;
\G17|ALT_INV_ram~213_q\ <= NOT \G17|ram~213_q\;
\G17|ALT_INV_ram~181_q\ <= NOT \G17|ram~181_q\;
\G17|ALT_INV_ram~69_q\ <= NOT \G17|ram~69_q\;
\G17|ALT_INV_ram~37_q\ <= NOT \G17|ram~37_q\;
\G17|ALT_INV_ram~85_q\ <= NOT \G17|ram~85_q\;
\G17|ALT_INV_ram~53_q\ <= NOT \G17|ram~53_q\;
\G17|ALT_INV_ram~196_q\ <= NOT \G17|ram~196_q\;
\G17|ALT_INV_ram~164_q\ <= NOT \G17|ram~164_q\;
\G17|ALT_INV_ram~212_q\ <= NOT \G17|ram~212_q\;
\G17|ALT_INV_ram~180_q\ <= NOT \G17|ram~180_q\;
\G17|ALT_INV_ram~68_q\ <= NOT \G17|ram~68_q\;
\G17|ALT_INV_ram~36_q\ <= NOT \G17|ram~36_q\;
\G17|ALT_INV_ram~84_q\ <= NOT \G17|ram~84_q\;
\G17|ALT_INV_ram~52_q\ <= NOT \G17|ram~52_q\;
\G17|ALT_INV_ram~195_q\ <= NOT \G17|ram~195_q\;
\G17|ALT_INV_ram~163_q\ <= NOT \G17|ram~163_q\;
\G17|ALT_INV_ram~211_q\ <= NOT \G17|ram~211_q\;
\G17|ALT_INV_ram~179_q\ <= NOT \G17|ram~179_q\;
\G17|ALT_INV_ram~67_q\ <= NOT \G17|ram~67_q\;
\G17|ALT_INV_ram~35_q\ <= NOT \G17|ram~35_q\;
\G17|ALT_INV_ram~83_q\ <= NOT \G17|ram~83_q\;
\G17|ALT_INV_ram~51_q\ <= NOT \G17|ram~51_q\;
\G17|ALT_INV_ram~194_q\ <= NOT \G17|ram~194_q\;
\G17|ALT_INV_ram~162_q\ <= NOT \G17|ram~162_q\;
\G17|ALT_INV_ram~210_q\ <= NOT \G17|ram~210_q\;
\G17|ALT_INV_ram~178_q\ <= NOT \G17|ram~178_q\;
\G17|ALT_INV_ram~66_q\ <= NOT \G17|ram~66_q\;
\G17|ALT_INV_ram~34_q\ <= NOT \G17|ram~34_q\;
\G17|ALT_INV_ram~82_q\ <= NOT \G17|ram~82_q\;
\G17|ALT_INV_ram~50_q\ <= NOT \G17|ram~50_q\;
\G17|ALT_INV_ram~193_q\ <= NOT \G17|ram~193_q\;
\G17|ALT_INV_ram~161_q\ <= NOT \G17|ram~161_q\;
\G17|ALT_INV_ram~209_q\ <= NOT \G17|ram~209_q\;
\G17|ALT_INV_ram~177_q\ <= NOT \G17|ram~177_q\;
\G17|ALT_INV_ram~65_q\ <= NOT \G17|ram~65_q\;
\G17|ALT_INV_ram~33_q\ <= NOT \G17|ram~33_q\;
\G17|ALT_INV_ram~81_q\ <= NOT \G17|ram~81_q\;
\G17|ALT_INV_ram~49_q\ <= NOT \G17|ram~49_q\;
\G17|ALT_INV_ram~192_q\ <= NOT \G17|ram~192_q\;
\G17|ALT_INV_ram~160_q\ <= NOT \G17|ram~160_q\;
\G17|ALT_INV_ram~208_q\ <= NOT \G17|ram~208_q\;
\G17|ALT_INV_ram~176_q\ <= NOT \G17|ram~176_q\;
\G17|ALT_INV_ram~64_q\ <= NOT \G17|ram~64_q\;
\G17|ALT_INV_ram~32_q\ <= NOT \G17|ram~32_q\;
\G17|ALT_INV_ram~80_q\ <= NOT \G17|ram~80_q\;
\G17|ALT_INV_ram~48_q\ <= NOT \G17|ram~48_q\;
\G17|ALT_INV_ram~191_q\ <= NOT \G17|ram~191_q\;
\G17|ALT_INV_ram~159_q\ <= NOT \G17|ram~159_q\;
\G17|ALT_INV_ram~207_q\ <= NOT \G17|ram~207_q\;
\G17|ALT_INV_ram~175_q\ <= NOT \G17|ram~175_q\;
\G17|ALT_INV_ram~63_q\ <= NOT \G17|ram~63_q\;
\G17|ALT_INV_ram~31_q\ <= NOT \G17|ram~31_q\;
\G17|ALT_INV_ram~79_q\ <= NOT \G17|ram~79_q\;
\G17|ALT_INV_ram~47_q\ <= NOT \G17|ram~47_q\;
\G17|ALT_INV_ram~190_q\ <= NOT \G17|ram~190_q\;
\G17|ALT_INV_ram~158_q\ <= NOT \G17|ram~158_q\;
\G17|ALT_INV_ram~206_q\ <= NOT \G17|ram~206_q\;
\G17|ALT_INV_ram~174_q\ <= NOT \G17|ram~174_q\;
\G17|ALT_INV_ram~62_q\ <= NOT \G17|ram~62_q\;
\G17|ALT_INV_ram~30_q\ <= NOT \G17|ram~30_q\;
\G17|ALT_INV_ram~78_q\ <= NOT \G17|ram~78_q\;
\G17|ALT_INV_ram~46_q\ <= NOT \G17|ram~46_q\;
\G17|ALT_INV_ram~189_q\ <= NOT \G17|ram~189_q\;
\G17|ALT_INV_ram~157_q\ <= NOT \G17|ram~157_q\;
\G17|ALT_INV_ram~205_q\ <= NOT \G17|ram~205_q\;
\G17|ALT_INV_ram~173_q\ <= NOT \G17|ram~173_q\;
\G17|ALT_INV_ram~61_q\ <= NOT \G17|ram~61_q\;
\G17|ALT_INV_ram~29_q\ <= NOT \G17|ram~29_q\;
\G17|ALT_INV_ram~77_q\ <= NOT \G17|ram~77_q\;
\G17|ALT_INV_ram~45_q\ <= NOT \G17|ram~45_q\;
\G17|ALT_INV_ram~188_q\ <= NOT \G17|ram~188_q\;
\G17|ALT_INV_ram~156_q\ <= NOT \G17|ram~156_q\;
\G17|ALT_INV_ram~204_q\ <= NOT \G17|ram~204_q\;
\G17|ALT_INV_ram~172_q\ <= NOT \G17|ram~172_q\;
\G17|ALT_INV_ram~60_q\ <= NOT \G17|ram~60_q\;
\G17|ALT_INV_ram~28_q\ <= NOT \G17|ram~28_q\;
\G17|ALT_INV_ram~76_q\ <= NOT \G17|ram~76_q\;
\G17|ALT_INV_ram~44_q\ <= NOT \G17|ram~44_q\;
\G17|ALT_INV_ram~187_q\ <= NOT \G17|ram~187_q\;
\G17|ALT_INV_ram~155_q\ <= NOT \G17|ram~155_q\;
\G17|ALT_INV_ram~203_q\ <= NOT \G17|ram~203_q\;
\G17|ALT_INV_ram~171_q\ <= NOT \G17|ram~171_q\;
\G17|ALT_INV_ram~59_q\ <= NOT \G17|ram~59_q\;
\G17|ALT_INV_ram~27_q\ <= NOT \G17|ram~27_q\;
\G17|ALT_INV_ram~75_q\ <= NOT \G17|ram~75_q\;
\G17|ALT_INV_ram~43_q\ <= NOT \G17|ram~43_q\;
\G17|ALT_INV_ram~186_q\ <= NOT \G17|ram~186_q\;
\G17|ALT_INV_ram~154_q\ <= NOT \G17|ram~154_q\;
\G17|ALT_INV_ram~202_q\ <= NOT \G17|ram~202_q\;
\G17|ALT_INV_ram~170_q\ <= NOT \G17|ram~170_q\;
\G17|ALT_INV_ram~58_q\ <= NOT \G17|ram~58_q\;
\G17|ALT_INV_ram~26_q\ <= NOT \G17|ram~26_q\;
\G17|ALT_INV_ram~74_q\ <= NOT \G17|ram~74_q\;
\G17|ALT_INV_ram~42_q\ <= NOT \G17|ram~42_q\;
\G17|ALT_INV_ram~185_q\ <= NOT \G17|ram~185_q\;
\G17|ALT_INV_ram~153_q\ <= NOT \G17|ram~153_q\;
\G17|ALT_INV_ram~201_q\ <= NOT \G17|ram~201_q\;
\G17|ALT_INV_ram~169_q\ <= NOT \G17|ram~169_q\;
\G17|ALT_INV_ram~57_q\ <= NOT \G17|ram~57_q\;
\G17|ALT_INV_ram~25_q\ <= NOT \G17|ram~25_q\;
\G17|ALT_INV_ram~73_q\ <= NOT \G17|ram~73_q\;
\G17|ALT_INV_ram~41_q\ <= NOT \G17|ram~41_q\;
\G17|ALT_INV_ram~184_q\ <= NOT \G17|ram~184_q\;
\G17|ALT_INV_ram~152_q\ <= NOT \G17|ram~152_q\;
\G17|ALT_INV_ram~200_q\ <= NOT \G17|ram~200_q\;
\G17|ALT_INV_ram~168_q\ <= NOT \G17|ram~168_q\;
\G17|ALT_INV_ram~56_q\ <= NOT \G17|ram~56_q\;
\G17|ALT_INV_ram~24_q\ <= NOT \G17|ram~24_q\;
\G17|ALT_INV_ram~72_q\ <= NOT \G17|ram~72_q\;
\G17|ALT_INV_ram~40_q\ <= NOT \G17|ram~40_q\;
\G17|ALT_INV_ram~183_q\ <= NOT \G17|ram~183_q\;
\G17|ALT_INV_ram~151_q\ <= NOT \G17|ram~151_q\;
\G17|ALT_INV_ram~199_q\ <= NOT \G17|ram~199_q\;
\G17|ALT_INV_ram~167_q\ <= NOT \G17|ram~167_q\;
\G17|ALT_INV_ram~55_q\ <= NOT \G17|ram~55_q\;
\G17|ALT_INV_ram~23_q\ <= NOT \G17|ram~23_q\;
\G17|ALT_INV_ram~71_q\ <= NOT \G17|ram~71_q\;
\G17|ALT_INV_ram~39_q\ <= NOT \G17|ram~39_q\;
\G17|ALT_INV_ram~182_q\ <= NOT \G17|ram~182_q\;
\G17|ALT_INV_ram~150_q\ <= NOT \G17|ram~150_q\;
\G17|ALT_INV_ram~198_q\ <= NOT \G17|ram~198_q\;
\G17|ALT_INV_ram~166_q\ <= NOT \G17|ram~166_q\;
\G17|ALT_INV_ram~576_combout\ <= NOT \G17|ram~576_combout\;
\G17|ALT_INV_ram~54_q\ <= NOT \G17|ram~54_q\;
\G17|ALT_INV_ram~22_q\ <= NOT \G17|ram~22_q\;
\G17|ALT_INV_ram~70_q\ <= NOT \G17|ram~70_q\;
\G17|ALT_INV_ram~38_q\ <= NOT \G17|ram~38_q\;
\G17|ALT_INV_ram~573_combout\ <= NOT \G17|ram~573_combout\;
\G17|ALT_INV_ram~571_combout\ <= NOT \G17|ram~571_combout\;
\G5|ALT_INV_jump~2_combout\ <= NOT \G5|jump~2_combout\;
\G5|ALT_INV_Equal2~0_combout\ <= NOT \G5|Equal2~0_combout\;
\G5|ALT_INV_origalu[0]~7_combout\ <= NOT \G5|origalu[0]~7_combout\;
\G5|ALT_INV_Equal0~1_combout\ <= NOT \G5|Equal0~1_combout\;
\G16|ALT_INV_ZeroULA~1_combout\ <= NOT \G16|ZeroULA~1_combout\;
\G16|ALT_INV_ZeroULA~0_combout\ <= NOT \G16|ZeroULA~0_combout\;
\G16|ALT_INV_Equal1~2_combout\ <= NOT \G16|Equal1~2_combout\;
\G16|ALT_INV_Equal1~1_combout\ <= NOT \G16|Equal1~1_combout\;
\G16|ALT_INV_Equal1~0_combout\ <= NOT \G16|Equal1~0_combout\;
\G17|ALT_INV_ram~261_q\ <= NOT \G17|ram~261_q\;
\G17|ALT_INV_ram~229_q\ <= NOT \G17|ram~229_q\;
\G17|ALT_INV_ram~277_q\ <= NOT \G17|ram~277_q\;
\G17|ALT_INV_ram~245_q\ <= NOT \G17|ram~245_q\;
\G17|ALT_INV_ram~133_q\ <= NOT \G17|ram~133_q\;
\G17|ALT_INV_ram~101_q\ <= NOT \G17|ram~101_q\;
\G17|ALT_INV_ram~149_q\ <= NOT \G17|ram~149_q\;
\G17|ALT_INV_ram~117_q\ <= NOT \G17|ram~117_q\;
\G17|ALT_INV_ram~260_q\ <= NOT \G17|ram~260_q\;
\G17|ALT_INV_ram~228_q\ <= NOT \G17|ram~228_q\;
\G17|ALT_INV_ram~276_q\ <= NOT \G17|ram~276_q\;
\G17|ALT_INV_ram~244_q\ <= NOT \G17|ram~244_q\;
\G17|ALT_INV_ram~132_q\ <= NOT \G17|ram~132_q\;
\G17|ALT_INV_ram~100_q\ <= NOT \G17|ram~100_q\;
\G17|ALT_INV_ram~148_q\ <= NOT \G17|ram~148_q\;
\G17|ALT_INV_ram~116_q\ <= NOT \G17|ram~116_q\;
\G17|ALT_INV_ram~259_q\ <= NOT \G17|ram~259_q\;
\G17|ALT_INV_ram~227_q\ <= NOT \G17|ram~227_q\;
\G17|ALT_INV_ram~275_q\ <= NOT \G17|ram~275_q\;
\G17|ALT_INV_ram~243_q\ <= NOT \G17|ram~243_q\;
\G17|ALT_INV_ram~131_q\ <= NOT \G17|ram~131_q\;
\G17|ALT_INV_ram~99_q\ <= NOT \G17|ram~99_q\;
\G17|ALT_INV_ram~147_q\ <= NOT \G17|ram~147_q\;
\G17|ALT_INV_ram~115_q\ <= NOT \G17|ram~115_q\;
\G17|ALT_INV_ram~258_q\ <= NOT \G17|ram~258_q\;
\G17|ALT_INV_ram~226_q\ <= NOT \G17|ram~226_q\;
\G17|ALT_INV_ram~274_q\ <= NOT \G17|ram~274_q\;
\G17|ALT_INV_ram~242_q\ <= NOT \G17|ram~242_q\;
\G17|ALT_INV_ram~130_q\ <= NOT \G17|ram~130_q\;
\G17|ALT_INV_ram~98_q\ <= NOT \G17|ram~98_q\;
\G17|ALT_INV_ram~146_q\ <= NOT \G17|ram~146_q\;
\G17|ALT_INV_ram~114_q\ <= NOT \G17|ram~114_q\;
\G17|ALT_INV_ram~257_q\ <= NOT \G17|ram~257_q\;
\G17|ALT_INV_ram~225_q\ <= NOT \G17|ram~225_q\;
\G17|ALT_INV_ram~273_q\ <= NOT \G17|ram~273_q\;
\G17|ALT_INV_ram~241_q\ <= NOT \G17|ram~241_q\;
\G17|ALT_INV_ram~129_q\ <= NOT \G17|ram~129_q\;
\G17|ALT_INV_ram~97_q\ <= NOT \G17|ram~97_q\;
\G17|ALT_INV_ram~145_q\ <= NOT \G17|ram~145_q\;
\G17|ALT_INV_ram~113_q\ <= NOT \G17|ram~113_q\;
\G17|ALT_INV_ram~256_q\ <= NOT \G17|ram~256_q\;
\G17|ALT_INV_ram~224_q\ <= NOT \G17|ram~224_q\;
\G17|ALT_INV_ram~272_q\ <= NOT \G17|ram~272_q\;
\G17|ALT_INV_ram~240_q\ <= NOT \G17|ram~240_q\;
\G17|ALT_INV_ram~128_q\ <= NOT \G17|ram~128_q\;
\G17|ALT_INV_ram~96_q\ <= NOT \G17|ram~96_q\;
\G17|ALT_INV_ram~144_q\ <= NOT \G17|ram~144_q\;
\G17|ALT_INV_ram~112_q\ <= NOT \G17|ram~112_q\;
\G17|ALT_INV_ram~255_q\ <= NOT \G17|ram~255_q\;
\G17|ALT_INV_ram~223_q\ <= NOT \G17|ram~223_q\;
\G17|ALT_INV_ram~271_q\ <= NOT \G17|ram~271_q\;
\G17|ALT_INV_ram~239_q\ <= NOT \G17|ram~239_q\;
\G17|ALT_INV_ram~127_q\ <= NOT \G17|ram~127_q\;
\G17|ALT_INV_ram~95_q\ <= NOT \G17|ram~95_q\;
\G17|ALT_INV_ram~143_q\ <= NOT \G17|ram~143_q\;
\G17|ALT_INV_ram~111_q\ <= NOT \G17|ram~111_q\;
\G17|ALT_INV_ram~254_q\ <= NOT \G17|ram~254_q\;
\G17|ALT_INV_ram~222_q\ <= NOT \G17|ram~222_q\;
\G17|ALT_INV_ram~270_q\ <= NOT \G17|ram~270_q\;
\G17|ALT_INV_ram~238_q\ <= NOT \G17|ram~238_q\;
\G17|ALT_INV_ram~126_q\ <= NOT \G17|ram~126_q\;
\G17|ALT_INV_ram~94_q\ <= NOT \G17|ram~94_q\;
\G17|ALT_INV_ram~142_q\ <= NOT \G17|ram~142_q\;
\G17|ALT_INV_ram~110_q\ <= NOT \G17|ram~110_q\;
\G17|ALT_INV_ram~253_q\ <= NOT \G17|ram~253_q\;
\G17|ALT_INV_ram~221_q\ <= NOT \G17|ram~221_q\;
\G17|ALT_INV_ram~269_q\ <= NOT \G17|ram~269_q\;
\G17|ALT_INV_ram~237_q\ <= NOT \G17|ram~237_q\;
\G17|ALT_INV_ram~125_q\ <= NOT \G17|ram~125_q\;
\G17|ALT_INV_ram~93_q\ <= NOT \G17|ram~93_q\;
\G17|ALT_INV_ram~141_q\ <= NOT \G17|ram~141_q\;
\G17|ALT_INV_ram~109_q\ <= NOT \G17|ram~109_q\;
\G17|ALT_INV_ram~252_q\ <= NOT \G17|ram~252_q\;
\G17|ALT_INV_ram~220_q\ <= NOT \G17|ram~220_q\;
\G17|ALT_INV_ram~268_q\ <= NOT \G17|ram~268_q\;
\G17|ALT_INV_ram~236_q\ <= NOT \G17|ram~236_q\;
\G17|ALT_INV_ram~124_q\ <= NOT \G17|ram~124_q\;
\G17|ALT_INV_ram~92_q\ <= NOT \G17|ram~92_q\;
\G17|ALT_INV_ram~140_q\ <= NOT \G17|ram~140_q\;
\G17|ALT_INV_ram~108_q\ <= NOT \G17|ram~108_q\;
\G17|ALT_INV_ram~251_q\ <= NOT \G17|ram~251_q\;
\G17|ALT_INV_ram~219_q\ <= NOT \G17|ram~219_q\;
\G17|ALT_INV_ram~267_q\ <= NOT \G17|ram~267_q\;
\G17|ALT_INV_ram~235_q\ <= NOT \G17|ram~235_q\;
\G17|ALT_INV_ram~123_q\ <= NOT \G17|ram~123_q\;
\G17|ALT_INV_ram~91_q\ <= NOT \G17|ram~91_q\;
\G17|ALT_INV_ram~139_q\ <= NOT \G17|ram~139_q\;
\G17|ALT_INV_ram~107_q\ <= NOT \G17|ram~107_q\;
\G17|ALT_INV_ram~250_q\ <= NOT \G17|ram~250_q\;
\G17|ALT_INV_ram~218_q\ <= NOT \G17|ram~218_q\;
\G17|ALT_INV_ram~266_q\ <= NOT \G17|ram~266_q\;
\G17|ALT_INV_ram~234_q\ <= NOT \G17|ram~234_q\;
\G17|ALT_INV_ram~122_q\ <= NOT \G17|ram~122_q\;
\G17|ALT_INV_ram~90_q\ <= NOT \G17|ram~90_q\;
\G17|ALT_INV_ram~138_q\ <= NOT \G17|ram~138_q\;
\G17|ALT_INV_ram~106_q\ <= NOT \G17|ram~106_q\;
\G17|ALT_INV_ram~249_q\ <= NOT \G17|ram~249_q\;
\G17|ALT_INV_ram~217_q\ <= NOT \G17|ram~217_q\;
\G17|ALT_INV_ram~265_q\ <= NOT \G17|ram~265_q\;
\G17|ALT_INV_ram~233_q\ <= NOT \G17|ram~233_q\;
\G17|ALT_INV_ram~121_q\ <= NOT \G17|ram~121_q\;
\G17|ALT_INV_ram~89_q\ <= NOT \G17|ram~89_q\;
\G17|ALT_INV_ram~137_q\ <= NOT \G17|ram~137_q\;
\G17|ALT_INV_ram~105_q\ <= NOT \G17|ram~105_q\;
\G17|ALT_INV_ram~248_q\ <= NOT \G17|ram~248_q\;
\G17|ALT_INV_ram~216_q\ <= NOT \G17|ram~216_q\;
\G17|ALT_INV_ram~264_q\ <= NOT \G17|ram~264_q\;
\G17|ALT_INV_ram~232_q\ <= NOT \G17|ram~232_q\;
\G17|ALT_INV_ram~120_q\ <= NOT \G17|ram~120_q\;
\G17|ALT_INV_ram~88_q\ <= NOT \G17|ram~88_q\;
\G17|ALT_INV_ram~136_q\ <= NOT \G17|ram~136_q\;
\G17|ALT_INV_ram~104_q\ <= NOT \G17|ram~104_q\;
\G17|ALT_INV_ram~247_q\ <= NOT \G17|ram~247_q\;
\G17|ALT_INV_ram~215_q\ <= NOT \G17|ram~215_q\;
\G17|ALT_INV_ram~263_q\ <= NOT \G17|ram~263_q\;
\G17|ALT_INV_ram~231_q\ <= NOT \G17|ram~231_q\;
\G17|ALT_INV_ram~119_q\ <= NOT \G17|ram~119_q\;
\G17|ALT_INV_ram~87_q\ <= NOT \G17|ram~87_q\;
\G17|ALT_INV_ram~135_q\ <= NOT \G17|ram~135_q\;
\G17|ALT_INV_ram~103_q\ <= NOT \G17|ram~103_q\;
\G5|ALT_INV_Equal1~0_combout\ <= NOT \G5|Equal1~0_combout\;
\G17|ALT_INV_ram~449_combout\ <= NOT \G17|ram~449_combout\;
\G17|ALT_INV_ram~448_combout\ <= NOT \G17|ram~448_combout\;
\G16|ALT_INV_Mux13~5_combout\ <= NOT \G16|Mux13~5_combout\;
\G16|ALT_INV_Mux13~4_combout\ <= NOT \G16|Mux13~4_combout\;
\G16|ALT_INV_Mux13~3_combout\ <= NOT \G16|Mux13~3_combout\;
\G17|ALT_INV_ram~246_q\ <= NOT \G17|ram~246_q\;
\G17|ALT_INV_ram~214_q\ <= NOT \G17|ram~214_q\;
\G17|ALT_INV_ram~262_q\ <= NOT \G17|ram~262_q\;
\G17|ALT_INV_ram~230_q\ <= NOT \G17|ram~230_q\;
\G17|ALT_INV_ram~118_q\ <= NOT \G17|ram~118_q\;
\G17|ALT_INV_ram~86_q\ <= NOT \G17|ram~86_q\;
\G17|ALT_INV_ram~134_q\ <= NOT \G17|ram~134_q\;
\G17|ALT_INV_ram~102_q\ <= NOT \G17|ram~102_q\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
\G4|ALT_INV_Mux7~0_combout\ <= NOT \G4|Mux7~0_combout\;
\G7|ALT_INV_Reg~35_q\ <= NOT \G7|Reg~35_q\;
\G7|ALT_INV_Reg~83_q\ <= NOT \G7|Reg~83_q\;
\G7|ALT_INV_Reg~51_q\ <= NOT \G7|Reg~51_q\;
\G7|ALT_INV_Reg~34_q\ <= NOT \G7|Reg~34_q\;
\G7|ALT_INV_Reg~82_q\ <= NOT \G7|Reg~82_q\;
\G7|ALT_INV_Reg~50_q\ <= NOT \G7|Reg~50_q\;
\G7|ALT_INV_Reg~33_q\ <= NOT \G7|Reg~33_q\;
\G7|ALT_INV_Reg~81_q\ <= NOT \G7|Reg~81_q\;
\G7|ALT_INV_Reg~49_q\ <= NOT \G7|Reg~49_q\;
\G7|ALT_INV_Reg~32_q\ <= NOT \G7|Reg~32_q\;
\G7|ALT_INV_Reg~80_q\ <= NOT \G7|Reg~80_q\;
\G7|ALT_INV_Reg~48_q\ <= NOT \G7|Reg~48_q\;
\G7|ALT_INV_Reg~31_q\ <= NOT \G7|Reg~31_q\;
\G7|ALT_INV_Reg~79_q\ <= NOT \G7|Reg~79_q\;
\G7|ALT_INV_Reg~47_q\ <= NOT \G7|Reg~47_q\;
\G7|ALT_INV_Reg~30_q\ <= NOT \G7|Reg~30_q\;
\G7|ALT_INV_Reg~78_q\ <= NOT \G7|Reg~78_q\;
\G7|ALT_INV_Reg~46_q\ <= NOT \G7|Reg~46_q\;
\G7|ALT_INV_Reg~29_q\ <= NOT \G7|Reg~29_q\;
\G7|ALT_INV_Reg~77_q\ <= NOT \G7|Reg~77_q\;
\G7|ALT_INV_Reg~45_q\ <= NOT \G7|Reg~45_q\;
\G7|ALT_INV_Reg~28_q\ <= NOT \G7|Reg~28_q\;
\G7|ALT_INV_Reg~76_q\ <= NOT \G7|Reg~76_q\;
\G7|ALT_INV_Reg~44_q\ <= NOT \G7|Reg~44_q\;
\G7|ALT_INV_Reg~27_q\ <= NOT \G7|Reg~27_q\;
\G7|ALT_INV_Reg~75_q\ <= NOT \G7|Reg~75_q\;
\G7|ALT_INV_Reg~43_q\ <= NOT \G7|Reg~43_q\;
\G7|ALT_INV_Reg~26_q\ <= NOT \G7|Reg~26_q\;
\G7|ALT_INV_Reg~74_q\ <= NOT \G7|Reg~74_q\;
\G7|ALT_INV_Reg~42_q\ <= NOT \G7|Reg~42_q\;
\G7|ALT_INV_Reg~25_q\ <= NOT \G7|Reg~25_q\;
\G7|ALT_INV_Reg~73_q\ <= NOT \G7|Reg~73_q\;
\G7|ALT_INV_Reg~41_q\ <= NOT \G7|Reg~41_q\;
\G7|ALT_INV_Reg~24_q\ <= NOT \G7|Reg~24_q\;
\G7|ALT_INV_Reg~72_q\ <= NOT \G7|Reg~72_q\;
\G7|ALT_INV_Reg~40_q\ <= NOT \G7|Reg~40_q\;
\G7|ALT_INV_Reg~23_q\ <= NOT \G7|Reg~23_q\;
\G7|ALT_INV_Reg~71_q\ <= NOT \G7|Reg~71_q\;
\G7|ALT_INV_Reg~39_q\ <= NOT \G7|Reg~39_q\;
\G7|ALT_INV_Reg~22_q\ <= NOT \G7|Reg~22_q\;
\G7|ALT_INV_Reg~70_q\ <= NOT \G7|Reg~70_q\;
\G7|ALT_INV_Reg~38_q\ <= NOT \G7|Reg~38_q\;
\G7|ALT_INV_Reg~21_q\ <= NOT \G7|Reg~21_q\;
\G7|ALT_INV_Reg~69_q\ <= NOT \G7|Reg~69_q\;
\G7|ALT_INV_Reg~37_q\ <= NOT \G7|Reg~37_q\;
\G7|ALT_INV_Reg~20_q\ <= NOT \G7|Reg~20_q\;
\G7|ALT_INV_Reg~68_q\ <= NOT \G7|Reg~68_q\;
\G7|ALT_INV_Reg~36_q\ <= NOT \G7|Reg~36_q\;
\G4|ALT_INV_Mux3~3_combout\ <= NOT \G4|Mux3~3_combout\;
\G4|ALT_INV_rd[2]~3_combout\ <= NOT \G4|rd[2]~3_combout\;
\G4|ALT_INV_Mux6~1_combout\ <= NOT \G4|Mux6~1_combout\;
\G4|ALT_INV_Mux6~0_combout\ <= NOT \G4|Mux6~0_combout\;
\G4|ALT_INV_Mux5~1_combout\ <= NOT \G4|Mux5~1_combout\;
\G4|ALT_INV_Mux5~0_combout\ <= NOT \G4|Mux5~0_combout\;
\G4|ALT_INV_Mux3~2_combout\ <= NOT \G4|Mux3~2_combout\;
\G4|ALT_INV_Mux3~1_combout\ <= NOT \G4|Mux3~1_combout\;
\G4|ALT_INV_Mux3~0_combout\ <= NOT \G4|Mux3~0_combout\;
\G8|ALT_INV_SAIDA\(1) <= NOT \G8|SAIDA\(1);
\G5|ALT_INV_escrevereg~1_combout\ <= NOT \G5|escrevereg~1_combout\;
\G5|ALT_INV_escrevereg~reg0_q\ <= NOT \G5|escrevereg~reg0_q\;
\G5|ALT_INV_origalu[1]~6_combout\ <= NOT \G5|origalu[1]~6_combout\;
\G5|ALT_INV_origalu[1]~reg0_q\ <= NOT \G5|origalu[1]~reg0_q\;
\G5|ALT_INV_origalu[0]~reg0_q\ <= NOT \G5|origalu[0]~reg0_q\;
\G5|ALT_INV_origalu[2]~4_combout\ <= NOT \G5|origalu[2]~4_combout\;
\G5|ALT_INV_origalu[2]~reg0_q\ <= NOT \G5|origalu[2]~reg0_q\;
\G17|ALT_INV_ram~293_q\ <= NOT \G17|ram~293_q\;
\G17|ALT_INV_ram~292_q\ <= NOT \G17|ram~292_q\;
\G17|ALT_INV_ram~291_q\ <= NOT \G17|ram~291_q\;
\G17|ALT_INV_ram~290_q\ <= NOT \G17|ram~290_q\;
\G17|ALT_INV_ram~289_q\ <= NOT \G17|ram~289_q\;
\G17|ALT_INV_ram~288_q\ <= NOT \G17|ram~288_q\;
\G17|ALT_INV_ram~287_q\ <= NOT \G17|ram~287_q\;
\G17|ALT_INV_ram~286_q\ <= NOT \G17|ram~286_q\;
\G17|ALT_INV_ram~285_q\ <= NOT \G17|ram~285_q\;
\G17|ALT_INV_ram~284_q\ <= NOT \G17|ram~284_q\;
\G17|ALT_INV_ram~283_q\ <= NOT \G17|ram~283_q\;
\G17|ALT_INV_ram~282_q\ <= NOT \G17|ram~282_q\;
\G17|ALT_INV_ram~281_q\ <= NOT \G17|ram~281_q\;
\G17|ALT_INV_ram~280_q\ <= NOT \G17|ram~280_q\;
\G17|ALT_INV_ram~279_q\ <= NOT \G17|ram~279_q\;
\G5|ALT_INV_memparareg~1_combout\ <= NOT \G5|memparareg~1_combout\;
\G5|ALT_INV_memparareg~reg0_q\ <= NOT \G5|memparareg~reg0_q\;
\G17|ALT_INV_ram~303_combout\ <= NOT \G17|ram~303_combout\;
\G17|ALT_INV_ram~302_combout\ <= NOT \G17|ram~302_combout\;
\G16|ALT_INV_Mux15~8_combout\ <= NOT \G16|Mux15~8_combout\;
\G16|ALT_INV_Mux14~5_combout\ <= NOT \G16|Mux14~5_combout\;
\G16|ALT_INV_Mux14~4_combout\ <= NOT \G16|Mux14~4_combout\;
\G16|ALT_INV_Mux14~3_combout\ <= NOT \G16|Mux14~3_combout\;
\G17|ALT_INV_ram~278_q\ <= NOT \G17|ram~278_q\;
\G4|ALT_INV_tipoi[3]~reg0_q\ <= NOT \G4|tipoi[3]~reg0_q\;
\G4|ALT_INV_tipoi[2]~reg0_q\ <= NOT \G4|tipoi[2]~reg0_q\;
\G4|ALT_INV_tipoi[0]~en_q\ <= NOT \G4|tipoi[0]~en_q\;
\G4|ALT_INV_tipoi[0]~reg0_q\ <= NOT \G4|tipoi[0]~reg0_q\;
\G4|ALT_INV_funct[2]~reg0_q\ <= NOT \G4|funct[2]~reg0_q\;
\G4|ALT_INV_funct[0]~reg0_q\ <= NOT \G4|funct[0]~reg0_q\;
\G4|ALT_INV_op[0]~reg0_q\ <= NOT \G4|op[0]~reg0_q\;
\G4|ALT_INV_rs[2]~reg0_q\ <= NOT \G4|rs[2]~reg0_q\;
\G4|ALT_INV_rs[1]~reg0_q\ <= NOT \G4|rs[1]~reg0_q\;
\G4|ALT_INV_rs[0]~reg0_q\ <= NOT \G4|rs[0]~reg0_q\;
\G5|ALT_INV_regdest~en_q\ <= NOT \G5|regdest~en_q\;
\G5|ALT_INV_regdest~reg0_q\ <= NOT \G5|regdest~reg0_q\;
\G4|ALT_INV_rt[0]~reg0_q\ <= NOT \G4|rt[0]~reg0_q\;
\G4|ALT_INV_rs[0]~en_q\ <= NOT \G4|rs[0]~en_q\;
\G7|ALT_INV_Reg~131_q\ <= NOT \G7|Reg~131_q\;
\G7|ALT_INV_Reg~147_q\ <= NOT \G7|Reg~147_q\;
\G7|ALT_INV_Reg~130_q\ <= NOT \G7|Reg~130_q\;
\G7|ALT_INV_Reg~146_q\ <= NOT \G7|Reg~146_q\;
\G7|ALT_INV_Reg~129_q\ <= NOT \G7|Reg~129_q\;
\G7|ALT_INV_Reg~145_q\ <= NOT \G7|Reg~145_q\;
\G7|ALT_INV_Reg~128_q\ <= NOT \G7|Reg~128_q\;
\G7|ALT_INV_Reg~144_q\ <= NOT \G7|Reg~144_q\;
\G7|ALT_INV_Reg~127_q\ <= NOT \G7|Reg~127_q\;
\G7|ALT_INV_Reg~143_q\ <= NOT \G7|Reg~143_q\;
\G7|ALT_INV_Reg~126_q\ <= NOT \G7|Reg~126_q\;
\G7|ALT_INV_Reg~142_q\ <= NOT \G7|Reg~142_q\;
\G7|ALT_INV_Reg~125_q\ <= NOT \G7|Reg~125_q\;
\G7|ALT_INV_Reg~141_q\ <= NOT \G7|Reg~141_q\;
\G7|ALT_INV_Reg~124_q\ <= NOT \G7|Reg~124_q\;
\G7|ALT_INV_Reg~140_q\ <= NOT \G7|Reg~140_q\;
\G7|ALT_INV_Reg~123_q\ <= NOT \G7|Reg~123_q\;
\G7|ALT_INV_Reg~139_q\ <= NOT \G7|Reg~139_q\;
\G7|ALT_INV_Reg~122_q\ <= NOT \G7|Reg~122_q\;
\G7|ALT_INV_Reg~138_q\ <= NOT \G7|Reg~138_q\;
\G7|ALT_INV_Reg~121_q\ <= NOT \G7|Reg~121_q\;
\G7|ALT_INV_Reg~137_q\ <= NOT \G7|Reg~137_q\;
\G7|ALT_INV_Reg~120_q\ <= NOT \G7|Reg~120_q\;
\G7|ALT_INV_Reg~136_q\ <= NOT \G7|Reg~136_q\;
\G7|ALT_INV_Reg~119_q\ <= NOT \G7|Reg~119_q\;
\G7|ALT_INV_Reg~135_q\ <= NOT \G7|Reg~135_q\;
\G7|ALT_INV_Reg~118_q\ <= NOT \G7|Reg~118_q\;
\G7|ALT_INV_Reg~134_q\ <= NOT \G7|Reg~134_q\;
\G7|ALT_INV_Reg~117_q\ <= NOT \G7|Reg~117_q\;
\G7|ALT_INV_Reg~133_q\ <= NOT \G7|Reg~133_q\;
\G7|ALT_INV_Reg~116_q\ <= NOT \G7|Reg~116_q\;
\G4|ALT_INV_rd[0]~reg0_q\ <= NOT \G4|rd[0]~reg0_q\;
\G4|ALT_INV_rd[0]~en_q\ <= NOT \G4|rd[0]~en_q\;
\G7|ALT_INV_Reg~132_q\ <= NOT \G7|Reg~132_q\;
\G16|ALT_INV_Mux0~5_combout\ <= NOT \G16|Mux0~5_combout\;
\G16|ALT_INV_Mux1~0_combout\ <= NOT \G16|Mux1~0_combout\;
\G16|ALT_INV_Mux2~0_combout\ <= NOT \G16|Mux2~0_combout\;
\G16|ALT_INV_Mux3~0_combout\ <= NOT \G16|Mux3~0_combout\;
\G16|ALT_INV_Mux4~0_combout\ <= NOT \G16|Mux4~0_combout\;
\G16|ALT_INV_Mux5~0_combout\ <= NOT \G16|Mux5~0_combout\;
\G16|ALT_INV_Mux6~0_combout\ <= NOT \G16|Mux6~0_combout\;
\G16|ALT_INV_Mux7~2_combout\ <= NOT \G16|Mux7~2_combout\;
\G16|ALT_INV_Mux7~1_combout\ <= NOT \G16|Mux7~1_combout\;
\G16|ALT_INV_Mux7~0_combout\ <= NOT \G16|Mux7~0_combout\;
\G16|ALT_INV_Mux8~0_combout\ <= NOT \G16|Mux8~0_combout\;
\G16|ALT_INV_Mux0~4_combout\ <= NOT \G16|Mux0~4_combout\;
\G16|ALT_INV_Mux0~3_combout\ <= NOT \G16|Mux0~3_combout\;
\G16|ALT_INV_Mux0~2_combout\ <= NOT \G16|Mux0~2_combout\;
\G16|ALT_INV_Mux0~1_combout\ <= NOT \G16|Mux0~1_combout\;
\G16|ALT_INV_Mux9~1_combout\ <= NOT \G16|Mux9~1_combout\;
\G16|ALT_INV_Mux9~0_combout\ <= NOT \G16|Mux9~0_combout\;
\G16|ALT_INV_Mux10~2_combout\ <= NOT \G16|Mux10~2_combout\;
\G16|ALT_INV_Mux10~1_combout\ <= NOT \G16|Mux10~1_combout\;
\G16|ALT_INV_Mux11~5_combout\ <= NOT \G16|Mux11~5_combout\;
\G16|ALT_INV_Mux11~4_combout\ <= NOT \G16|Mux11~4_combout\;
\G16|ALT_INV_Mux11~3_combout\ <= NOT \G16|Mux11~3_combout\;
\G16|ALT_INV_Mux11~2_combout\ <= NOT \G16|Mux11~2_combout\;
\G16|ALT_INV_Mux11~1_combout\ <= NOT \G16|Mux11~1_combout\;
\G16|ALT_INV_Mux11~0_combout\ <= NOT \G16|Mux11~0_combout\;
\G16|ALT_INV_Mux12~2_combout\ <= NOT \G16|Mux12~2_combout\;
\G16|ALT_INV_Mux12~1_combout\ <= NOT \G16|Mux12~1_combout\;
\G16|ALT_INV_Mux12~0_combout\ <= NOT \G16|Mux12~0_combout\;
\G16|ALT_INV_Mux10~0_combout\ <= NOT \G16|Mux10~0_combout\;
\G16|ALT_INV_Mux13~2_combout\ <= NOT \G16|Mux13~2_combout\;
\G16|ALT_INV_Mux13~1_combout\ <= NOT \G16|Mux13~1_combout\;
\G16|ALT_INV_Mux13~0_combout\ <= NOT \G16|Mux13~0_combout\;
\G16|ALT_INV_Mux14~2_combout\ <= NOT \G16|Mux14~2_combout\;
\G16|ALT_INV_Mux14~1_combout\ <= NOT \G16|Mux14~1_combout\;
\G16|ALT_INV_Mux15~7_combout\ <= NOT \G16|Mux15~7_combout\;
\G16|ALT_INV_Mux15~6_combout\ <= NOT \G16|Mux15~6_combout\;
\G16|ALT_INV_Mux15~5_combout\ <= NOT \G16|Mux15~5_combout\;
\G16|ALT_INV_Mux14~0_combout\ <= NOT \G16|Mux14~0_combout\;
\G16|ALT_INV_Mux15~4_combout\ <= NOT \G16|Mux15~4_combout\;
\G16|ALT_INV_Mux15~3_combout\ <= NOT \G16|Mux15~3_combout\;
\G16|ALT_INV_Mux15~2_combout\ <= NOT \G16|Mux15~2_combout\;
\G16|ALT_INV_Mux15~1_combout\ <= NOT \G16|Mux15~1_combout\;
\G16|ALT_INV_Mux15~0_combout\ <= NOT \G16|Mux15~0_combout\;
\G16|ALT_INV_Mux0~0_combout\ <= NOT \G16|Mux0~0_combout\;
\G15|ALT_INV_SAIDA\(6) <= NOT \G15|SAIDA\(6);
\G15|ALT_INV_SAIDA\(4) <= NOT \G15|SAIDA\(4);
\G15|ALT_INV_SAIDA\(3) <= NOT \G15|SAIDA\(3);
\G15|ALT_INV_SAIDA\(5) <= NOT \G15|SAIDA\(5);
\G15|ALT_INV_SAIDA\(1) <= NOT \G15|SAIDA\(1);
\G15|ALT_INV_SAIDA\(0) <= NOT \G15|SAIDA\(0);
\G15|ALT_INV_SAIDA\(2) <= NOT \G15|SAIDA\(2);
\G6|ALT_INV_SAIDA\(2) <= NOT \G6|SAIDA\(2);
\G6|ALT_INV_SAIDA\(1) <= NOT \G6|SAIDA\(1);
\G6|ALT_INV_SAIDA\(0) <= NOT \G6|SAIDA\(0);
\G1|ALT_INV_pout\(15) <= NOT \G1|pout\(15);
\G1|ALT_INV_pout\(14) <= NOT \G1|pout\(14);
\G1|ALT_INV_pout\(12) <= NOT \G1|pout\(12);
\G1|ALT_INV_pout\(11) <= NOT \G1|pout\(11);
\G1|ALT_INV_pout\(10) <= NOT \G1|pout\(10);
\G1|ALT_INV_pout\(8) <= NOT \G1|pout\(8);
\G1|ALT_INV_pout\(7) <= NOT \G1|pout\(7);
\G1|ALT_INV_pout\(5) <= NOT \G1|pout\(5);
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
\G2|ALT_INV_saida\(0) <= NOT \G2|saida\(0);
\G17|ALT_INV_ram~567_combout\ <= NOT \G17|ram~567_combout\;
\G17|ALT_INV_ram~563_combout\ <= NOT \G17|ram~563_combout\;
\G17|ALT_INV_ram~559_combout\ <= NOT \G17|ram~559_combout\;
\G17|ALT_INV_ram~555_combout\ <= NOT \G17|ram~555_combout\;
\G17|ALT_INV_ram~551_combout\ <= NOT \G17|ram~551_combout\;
\G17|ALT_INV_ram~547_combout\ <= NOT \G17|ram~547_combout\;
\G17|ALT_INV_ram~543_combout\ <= NOT \G17|ram~543_combout\;
\G17|ALT_INV_ram~539_combout\ <= NOT \G17|ram~539_combout\;
\G17|ALT_INV_ram~535_combout\ <= NOT \G17|ram~535_combout\;
\G17|ALT_INV_ram~531_combout\ <= NOT \G17|ram~531_combout\;
\G17|ALT_INV_ram~527_combout\ <= NOT \G17|ram~527_combout\;
\G17|ALT_INV_ram~523_combout\ <= NOT \G17|ram~523_combout\;
\G17|ALT_INV_ram~519_combout\ <= NOT \G17|ram~519_combout\;
\G17|ALT_INV_ram~515_combout\ <= NOT \G17|ram~515_combout\;
\G17|ALT_INV_ram~511_combout\ <= NOT \G17|ram~511_combout\;
\G17|ALT_INV_ram~507_combout\ <= NOT \G17|ram~507_combout\;
\G17|ALT_INV_ram~503_combout\ <= NOT \G17|ram~503_combout\;
\G17|ALT_INV_ram~499_combout\ <= NOT \G17|ram~499_combout\;
\G17|ALT_INV_ram~495_combout\ <= NOT \G17|ram~495_combout\;
\G17|ALT_INV_ram~491_combout\ <= NOT \G17|ram~491_combout\;
\G17|ALT_INV_ram~487_combout\ <= NOT \G17|ram~487_combout\;
\G17|ALT_INV_ram~483_combout\ <= NOT \G17|ram~483_combout\;
\G17|ALT_INV_ram~479_combout\ <= NOT \G17|ram~479_combout\;
\G17|ALT_INV_ram~475_combout\ <= NOT \G17|ram~475_combout\;
\G17|ALT_INV_ram~471_combout\ <= NOT \G17|ram~471_combout\;
\G17|ALT_INV_ram~467_combout\ <= NOT \G17|ram~467_combout\;
\G17|ALT_INV_ram~463_combout\ <= NOT \G17|ram~463_combout\;
\G17|ALT_INV_ram~459_combout\ <= NOT \G17|ram~459_combout\;
\G17|ALT_INV_ram~455_combout\ <= NOT \G17|ram~455_combout\;
\G17|ALT_INV_ram~451_combout\ <= NOT \G17|ram~451_combout\;
\G17|ALT_INV_ram~444_combout\ <= NOT \G17|ram~444_combout\;
\G17|ALT_INV_ram~440_combout\ <= NOT \G17|ram~440_combout\;
\G17|ALT_INV_ram~435_combout\ <= NOT \G17|ram~435_combout\;
\G17|ALT_INV_ram~431_combout\ <= NOT \G17|ram~431_combout\;
\G17|ALT_INV_ram~426_combout\ <= NOT \G17|ram~426_combout\;
\G17|ALT_INV_ram~422_combout\ <= NOT \G17|ram~422_combout\;
\G17|ALT_INV_ram~417_combout\ <= NOT \G17|ram~417_combout\;
\G17|ALT_INV_ram~413_combout\ <= NOT \G17|ram~413_combout\;
\G17|ALT_INV_ram~408_combout\ <= NOT \G17|ram~408_combout\;
\G17|ALT_INV_ram~404_combout\ <= NOT \G17|ram~404_combout\;
\G17|ALT_INV_ram~399_combout\ <= NOT \G17|ram~399_combout\;
\G17|ALT_INV_ram~395_combout\ <= NOT \G17|ram~395_combout\;
\G17|ALT_INV_ram~390_combout\ <= NOT \G17|ram~390_combout\;
\G17|ALT_INV_ram~386_combout\ <= NOT \G17|ram~386_combout\;
\G17|ALT_INV_ram~381_combout\ <= NOT \G17|ram~381_combout\;
\G17|ALT_INV_ram~377_combout\ <= NOT \G17|ram~377_combout\;
\G17|ALT_INV_ram~372_combout\ <= NOT \G17|ram~372_combout\;
\G17|ALT_INV_ram~368_combout\ <= NOT \G17|ram~368_combout\;
\G17|ALT_INV_ram~363_combout\ <= NOT \G17|ram~363_combout\;
\G17|ALT_INV_ram~359_combout\ <= NOT \G17|ram~359_combout\;
\G17|ALT_INV_ram~354_combout\ <= NOT \G17|ram~354_combout\;
\G17|ALT_INV_ram~350_combout\ <= NOT \G17|ram~350_combout\;
\G17|ALT_INV_ram~345_combout\ <= NOT \G17|ram~345_combout\;
\G17|ALT_INV_ram~341_combout\ <= NOT \G17|ram~341_combout\;
\G17|ALT_INV_ram~336_combout\ <= NOT \G17|ram~336_combout\;
\G17|ALT_INV_ram~332_combout\ <= NOT \G17|ram~332_combout\;
\G17|ALT_INV_ram~327_combout\ <= NOT \G17|ram~327_combout\;
\G17|ALT_INV_ram~323_combout\ <= NOT \G17|ram~323_combout\;
\G17|ALT_INV_ram~318_combout\ <= NOT \G17|ram~318_combout\;
\G17|ALT_INV_ram~314_combout\ <= NOT \G17|ram~314_combout\;
\G17|ALT_INV_ram~309_combout\ <= NOT \G17|ram~309_combout\;
\G17|ALT_INV_ram~305_combout\ <= NOT \G17|ram~305_combout\;
\G17|ALT_INV_ram~298_combout\ <= NOT \G17|ram~298_combout\;
\G17|ALT_INV_ram~294_combout\ <= NOT \G17|ram~294_combout\;
\G14|ALT_INV_SAIDA\(15) <= NOT \G14|SAIDA\(15);
\G16|ALT_INV_Add0~61_sumout\ <= NOT \G16|Add0~61_sumout\;
\G16|ALT_INV_Add1~61_sumout\ <= NOT \G16|Add1~61_sumout\;
\G14|ALT_INV_SAIDA\(14) <= NOT \G14|SAIDA\(14);
\G16|ALT_INV_Add0~57_sumout\ <= NOT \G16|Add0~57_sumout\;
\G16|ALT_INV_Add1~57_sumout\ <= NOT \G16|Add1~57_sumout\;
\G14|ALT_INV_SAIDA\(13) <= NOT \G14|SAIDA\(13);
\G16|ALT_INV_Add0~53_sumout\ <= NOT \G16|Add0~53_sumout\;
\G16|ALT_INV_Add1~53_sumout\ <= NOT \G16|Add1~53_sumout\;
\G14|ALT_INV_SAIDA\(12) <= NOT \G14|SAIDA\(12);
\G16|ALT_INV_Add0~49_sumout\ <= NOT \G16|Add0~49_sumout\;
\G16|ALT_INV_Add1~49_sumout\ <= NOT \G16|Add1~49_sumout\;
\G14|ALT_INV_SAIDA\(11) <= NOT \G14|SAIDA\(11);
\G16|ALT_INV_Add0~45_sumout\ <= NOT \G16|Add0~45_sumout\;
\G16|ALT_INV_Add1~45_sumout\ <= NOT \G16|Add1~45_sumout\;
\G14|ALT_INV_SAIDA\(10) <= NOT \G14|SAIDA\(10);
\G16|ALT_INV_Add0~41_sumout\ <= NOT \G16|Add0~41_sumout\;
\G16|ALT_INV_Add1~41_sumout\ <= NOT \G16|Add1~41_sumout\;
\G14|ALT_INV_SAIDA\(9) <= NOT \G14|SAIDA\(9);
\G16|ALT_INV_Add0~37_sumout\ <= NOT \G16|Add0~37_sumout\;
\G16|ALT_INV_Add1~37_sumout\ <= NOT \G16|Add1~37_sumout\;
\G14|ALT_INV_SAIDA\(8) <= NOT \G14|SAIDA\(8);
\G16|ALT_INV_Add0~33_sumout\ <= NOT \G16|Add0~33_sumout\;
\G16|ALT_INV_Add1~33_sumout\ <= NOT \G16|Add1~33_sumout\;
\G16|ALT_INV_Add0~29_sumout\ <= NOT \G16|Add0~29_sumout\;
\G14|ALT_INV_SAIDA\(7) <= NOT \G14|SAIDA\(7);
\G16|ALT_INV_Add1~29_sumout\ <= NOT \G16|Add1~29_sumout\;
\G14|ALT_INV_SAIDA\(6) <= NOT \G14|SAIDA\(6);
\G16|ALT_INV_Add2~25_sumout\ <= NOT \G16|Add2~25_sumout\;
\G16|ALT_INV_Add1~25_sumout\ <= NOT \G16|Add1~25_sumout\;
\G16|ALT_INV_Add0~25_sumout\ <= NOT \G16|Add0~25_sumout\;
\G14|ALT_INV_SAIDA\(5) <= NOT \G14|SAIDA\(5);
\G16|ALT_INV_Add2~21_sumout\ <= NOT \G16|Add2~21_sumout\;
\G16|ALT_INV_Add1~21_sumout\ <= NOT \G16|Add1~21_sumout\;
\G16|ALT_INV_Add0~21_sumout\ <= NOT \G16|Add0~21_sumout\;
\G14|ALT_INV_SAIDA\(4) <= NOT \G14|SAIDA\(4);
\G16|ALT_INV_Add2~17_sumout\ <= NOT \G16|Add2~17_sumout\;
\G16|ALT_INV_Add1~17_sumout\ <= NOT \G16|Add1~17_sumout\;
\G16|ALT_INV_Add0~17_sumout\ <= NOT \G16|Add0~17_sumout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G14|ALT_INV_SAIDA\(3) <= NOT \G14|SAIDA\(3);
\G16|ALT_INV_Add2~13_sumout\ <= NOT \G16|Add2~13_sumout\;
\G16|ALT_INV_Add1~13_sumout\ <= NOT \G16|Add1~13_sumout\;
\G14|ALT_INV_SAIDA\(2) <= NOT \G14|SAIDA\(2);
\G16|ALT_INV_Add2~9_sumout\ <= NOT \G16|Add2~9_sumout\;
\G16|ALT_INV_Add1~9_sumout\ <= NOT \G16|Add1~9_sumout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G14|ALT_INV_SAIDA\(1) <= NOT \G14|SAIDA\(1);
\G16|ALT_INV_Add2~5_sumout\ <= NOT \G16|Add2~5_sumout\;
\G16|ALT_INV_Add1~5_sumout\ <= NOT \G16|Add1~5_sumout\;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G16|ALT_INV_Add2~1_sumout\ <= NOT \G16|Add2~1_sumout\;
\G14|ALT_INV_SAIDA\(0) <= NOT \G14|SAIDA\(0);
\G16|ALT_INV_Add1~1_sumout\ <= NOT \G16|Add1~1_sumout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
\G13|ALT_INV_SAIDA\(13) <= NOT \G13|SAIDA\(13);
\G13|ALT_INV_SAIDA\(12) <= NOT \G13|SAIDA\(12);
\G13|ALT_INV_SAIDA\(7) <= NOT \G13|SAIDA\(7);
\G13|ALT_INV_SAIDA\(6) <= NOT \G13|SAIDA\(6);
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
\G18|ALT_INV_SAIDA\(13) <= NOT \G18|SAIDA\(13);
\G18|ALT_INV_SAIDA\(12) <= NOT \G18|SAIDA\(12);
\G18|ALT_INV_SAIDA\(10) <= NOT \G18|SAIDA\(10);
\G18|ALT_INV_SAIDA\(5) <= NOT \G18|SAIDA\(5);
\G18|ALT_INV_SAIDA\(4) <= NOT \G18|SAIDA\(4);

-- Location: IOOBUF_X50_Y81_N42
\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[0]~reg0_q\,
	oe => \G4|rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(0));

-- Location: IOOBUF_X72_Y81_N53
\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[1]~reg0_q\,
	oe => \G4|rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(1));

-- Location: IOOBUF_X50_Y81_N59
\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~reg0_q\,
	oe => \G4|rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(2));

-- Location: IOOBUF_X89_Y9_N56
\Instruction_to_Control_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[0]~reg0_q\,
	oe => \G4|rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(0));

-- Location: IOOBUF_X72_Y81_N2
\Instruction_to_Control_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[1]~reg0_q\,
	oe => \G4|rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(1));

-- Location: IOOBUF_X80_Y81_N2
\Instruction_to_Control_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(2));

-- Location: IOOBUF_X76_Y81_N36
\Instruction_to_Control_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(3));

-- Location: IOOBUF_X34_Y81_N76
\Instruction_to_register1_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~reg0DUPLICATE_q\,
	oe => \G4|rd[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(0));

-- Location: IOOBUF_X34_Y81_N59
\Instruction_to_register1_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~reg0DUPLICATE_q\,
	oe => \G4|rd[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(1));

-- Location: IOOBUF_X52_Y81_N19
\Instruction_to_register1_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(2));

-- Location: IOOBUF_X89_Y9_N39
\Instruction_to_register2_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~reg0_q\,
	oe => \G4|rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(0));

-- Location: IOOBUF_X40_Y81_N19
\Instruction_to_register2_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(1));

-- Location: IOOBUF_X50_Y81_N76
\Instruction_to_register2_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(2));

-- Location: IOOBUF_X52_Y81_N53
\Instruction_to_controlULA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|funct[0]~reg0_q\,
	oe => \G4|rd[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(0));

-- Location: IOOBUF_X52_Y81_N2
\Instruction_to_controlULA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(1));

-- Location: IOOBUF_X50_Y81_N93
\Instruction_to_controlULA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|funct[2]~reg0_q\,
	oe => \G4|rd[0]~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(2));

-- Location: IOOBUF_X68_Y81_N2
\Instruction_to_extensorDeSinal_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[0]~reg0_q\,
	oe => \G4|tipoi[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(0));

-- Location: IOOBUF_X64_Y81_N53
\Instruction_to_extensorDeSinal_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_tipoi[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(1));

-- Location: IOOBUF_X56_Y0_N2
\Instruction_to_extensorDeSinal_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[2]~reg0_q\,
	oe => \G4|tipoi[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(2));

-- Location: IOOBUF_X60_Y81_N2
\Instruction_to_extensorDeSinal_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[3]~reg0_q\,
	oe => \G4|tipoi[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(3));

-- Location: IOOBUF_X60_Y81_N53
\Instruction_to_extensorDeSinal_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[3]~reg0_q\,
	oe => \G4|tipoi[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(4));

-- Location: IOOBUF_X68_Y81_N36
\Instruction_to_extensorDeSinal_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_tipoi[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(5));

-- Location: IOOBUF_X84_Y81_N53
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

-- Location: IOOBUF_X54_Y81_N36
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

-- Location: IOOBUF_X80_Y81_N36
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

-- Location: IOOBUF_X2_Y0_N59
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

-- Location: IOOBUF_X78_Y81_N53
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

-- Location: IOOBUF_X89_Y36_N39
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

-- Location: IOOBUF_X86_Y81_N19
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

-- Location: IOOBUF_X62_Y81_N19
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

-- Location: IOOBUF_X66_Y81_N76
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

-- Location: IOOBUF_X78_Y81_N2
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

-- Location: IOOBUF_X4_Y0_N36
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

-- Location: IOOBUF_X62_Y81_N53
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

-- Location: IOOBUF_X89_Y37_N5
\Flag_regdest_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|regdest~reg0DUPLICATE_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_regdest_OUT);

-- Location: IOOBUF_X38_Y81_N2
\Flag_origialu_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|origalu[0]~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(0));

-- Location: IOOBUF_X89_Y8_N56
\Flag_origialu_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|origalu[1]~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(1));

-- Location: IOOBUF_X66_Y81_N59
\Flag_origialu_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|origalu[2]~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(2));

-- Location: IOOBUF_X78_Y81_N36
\Flag_origialu_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|ALT_INV_regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_origialu_OUT(3));

-- Location: IOOBUF_X38_Y81_N36
\Flag_memparareg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|memparareg~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_memparareg_OUT);

-- Location: IOOBUF_X40_Y81_N53
\Flag_escrevereg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|escrevereg~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_escrevereg_OUT);

-- Location: IOOBUF_X54_Y81_N19
\Flag_lemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|memparareg~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_lemem_OUT);

-- Location: IOOBUF_X89_Y8_N39
\Flag_escrevemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|origalu[1]~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_escrevemem_OUT);

-- Location: IOOBUF_X74_Y81_N42
\Flag_branch_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|origalu[2]~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_branch_OUT);

-- Location: IOOBUF_X36_Y81_N53
\Flag_aluSRC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|escrevereg~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_aluSRC_OUT);

-- Location: IOOBUF_X66_Y81_N93
\Flag_jump_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|origalu[2]~reg0_q\,
	oe => \G5|regdest~enDUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Flag_jump_OUT);

-- Location: IOOBUF_X89_Y8_N5
\SomadorToPc_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(0));

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X2_Y0_N76
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

-- Location: IOOBUF_X56_Y0_N53
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

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X89_Y4_N45
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X56_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X50_Y0_N76
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

-- Location: IOOBUF_X60_Y81_N19
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X56_Y0_N36
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

-- Location: IOOBUF_X89_Y37_N22
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

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X89_Y4_N62
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

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X62_Y0_N53
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

-- Location: IOOBUF_X64_Y81_N36
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

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X70_Y0_N36
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

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N19
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

-- Location: IOOBUF_X64_Y81_N19
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

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X32_Y0_N53
\SaidaRegA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~216_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(0));

-- Location: IOOBUF_X34_Y81_N93
\SaidaRegA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~215_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(1));

-- Location: IOOBUF_X32_Y0_N19
\SaidaRegA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~214_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(2));

-- Location: IOOBUF_X89_Y9_N5
\SaidaRegA_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~213_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(3));

-- Location: IOOBUF_X32_Y81_N53
\SaidaRegA_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~212_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(4));

-- Location: IOOBUF_X50_Y0_N42
\SaidaRegA_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~211_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(5));

-- Location: IOOBUF_X38_Y0_N53
\SaidaRegA_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~210_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(6));

-- Location: IOOBUF_X38_Y0_N2
\SaidaRegA_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~209_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(7));

-- Location: IOOBUF_X6_Y0_N36
\SaidaRegA_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~208_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(8));

-- Location: IOOBUF_X40_Y0_N53
\SaidaRegA_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~207_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(9));

-- Location: IOOBUF_X6_Y0_N53
\SaidaRegA_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~206_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(10));

-- Location: IOOBUF_X34_Y0_N76
\SaidaRegA_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~205_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(11));

-- Location: IOOBUF_X89_Y6_N5
\SaidaRegA_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~204_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(12));

-- Location: IOOBUF_X38_Y0_N36
\SaidaRegA_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~203_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(13));

-- Location: IOOBUF_X38_Y81_N53
\SaidaRegA_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~202_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(14));

-- Location: IOOBUF_X34_Y81_N42
\SaidaRegA_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~201_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(15));

-- Location: IOOBUF_X26_Y0_N76
\SaidaRegB_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~200_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(0));

-- Location: IOOBUF_X36_Y0_N19
\SaidaRegB_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~199_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(1));

-- Location: IOOBUF_X26_Y0_N93
\SaidaRegB_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~198_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(2));

-- Location: IOOBUF_X32_Y0_N2
\SaidaRegB_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~197_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(3));

-- Location: IOOBUF_X34_Y0_N93
\SaidaRegB_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~196_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(4));

-- Location: IOOBUF_X30_Y0_N2
\SaidaRegB_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~195_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(5));

-- Location: IOOBUF_X26_Y0_N42
\SaidaRegB_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~194_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(6));

-- Location: IOOBUF_X28_Y0_N36
\SaidaRegB_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~193_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(7));

-- Location: IOOBUF_X30_Y0_N19
\SaidaRegB_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~192_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(8));

-- Location: IOOBUF_X28_Y0_N2
\SaidaRegB_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~191_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(9));

-- Location: IOOBUF_X28_Y0_N19
\SaidaRegB_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~190_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(10));

-- Location: IOOBUF_X26_Y0_N59
\SaidaRegB_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~189_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(11));

-- Location: IOOBUF_X34_Y0_N42
\SaidaRegB_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~188_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(12));

-- Location: IOOBUF_X36_Y0_N53
\SaidaRegB_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~187_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(13));

-- Location: IOOBUF_X28_Y0_N53
\SaidaRegB_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~186_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(14));

-- Location: IOOBUF_X32_Y0_N36
\SaidaRegB_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg~185_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(15));

-- Location: IOOBUF_X40_Y81_N2
\multiplexador_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|SAIDA\(0),
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X40_Y0_N36
\multiplexador_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|SAIDA\(1),
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X89_Y35_N45
\multiplexador_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|SAIDA\(2),
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X36_Y81_N19
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X8_Y0_N2
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

-- Location: IOOBUF_X28_Y81_N53
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

-- Location: IOOBUF_X89_Y6_N39
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

-- Location: IOOBUF_X89_Y6_N56
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

-- Location: IOOBUF_X4_Y0_N2
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

-- Location: IOOBUF_X6_Y0_N2
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

-- Location: IOOBUF_X2_Y0_N93
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

-- Location: IOOBUF_X6_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N19
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

-- Location: IOOBUF_X30_Y81_N36
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

-- Location: IOOBUF_X30_Y0_N53
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

-- Location: IOOBUF_X8_Y0_N36
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

-- Location: IOOBUF_X89_Y8_N22
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

-- Location: IOOBUF_X32_Y81_N19
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

-- Location: IOOBUF_X50_Y0_N59
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

-- Location: IOOBUF_X58_Y81_N59
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

-- Location: IOOBUF_X50_Y0_N93
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

-- Location: IOOBUF_X56_Y81_N19
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

-- Location: IOOBUF_X62_Y0_N36
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N53
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X68_Y0_N36
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

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X60_Y81_N36
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X89_Y4_N96
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X56_Y81_N2
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

-- Location: IOOBUF_X52_Y81_N36
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

-- Location: IOOBUF_X56_Y81_N36
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

-- Location: IOOBUF_X70_Y0_N53
\Saida_to_PC_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(4));

-- Location: IOOBUF_X89_Y6_N22
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X66_Y0_N76
\Saida_to_PC_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(7));

-- Location: IOOBUF_X66_Y0_N59
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X66_Y0_N93
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X68_Y0_N53
\Saida_to_PC_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(12));

-- Location: IOOBUF_X72_Y0_N19
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

-- Location: IOOBUF_X54_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N59
\Saida_adress_to_RAM_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux15~4_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(0));

-- Location: IOOBUF_X36_Y0_N36
\Saida_adress_to_RAM_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux14~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(1));

-- Location: IOOBUF_X30_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X36_Y0_N2
\Saida_adress_to_RAM_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux11~5_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(4));

-- Location: IOOBUF_X40_Y81_N36
\Saida_adress_to_RAM_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux10~3_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(5));

-- Location: IOOBUF_X28_Y81_N36
\Saida_adress_to_RAM_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux9~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(6));

-- Location: IOOBUF_X30_Y81_N53
\Saida_adress_to_RAM_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux8~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(7));

-- Location: IOOBUF_X26_Y81_N93
\Saida_adress_to_RAM_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux7~3_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(8));

-- Location: IOOBUF_X8_Y0_N53
\Saida_adress_to_RAM_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux6~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(9));

-- Location: IOOBUF_X28_Y81_N19
\Saida_adress_to_RAM_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(10));

-- Location: IOOBUF_X4_Y0_N19
\Saida_adress_to_RAM_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(11));

-- Location: IOOBUF_X30_Y81_N2
\Saida_adress_to_RAM_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux3~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(12));

-- Location: IOOBUF_X30_Y81_N19
\Saida_adress_to_RAM_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(13));

-- Location: IOOBUF_X89_Y9_N22
\Saida_adress_to_RAM_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux1~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(14));

-- Location: IOOBUF_X26_Y81_N76
\Saida_adress_to_RAM_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux0~6_combout\,
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

-- Location: LABCELL_X50_Y7_N24
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

-- Location: FF_X50_Y7_N25
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

-- Location: MLABCELL_X59_Y4_N0
\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(0),
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

-- Location: FF_X59_Y4_N2
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

-- Location: MLABCELL_X59_Y4_N51
\G12|SAIDA[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[1]~feeder_combout\ = \G2|saida[1]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida[1]~DUPLICATE_q\,
	combout => \G12|SAIDA[1]~feeder_combout\);

-- Location: MLABCELL_X59_Y4_N48
\G10|SAIDA[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|SAIDA[1]~feeder_combout\ = \G2|saida[1]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida[1]~DUPLICATE_q\,
	combout => \G10|SAIDA[1]~feeder_combout\);

-- Location: FF_X59_Y4_N50
\G10|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|SAIDA[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(1));

-- Location: MLABCELL_X59_Y4_N3
\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(2),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

-- Location: FF_X59_Y4_N4
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

-- Location: LABCELL_X56_Y4_N42
\G12|SAIDA[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[2]~feeder_combout\ = \G2|saida\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(2),
	combout => \G12|SAIDA[2]~feeder_combout\);

-- Location: FF_X56_Y8_N47
\G1|pout[3]~DUPLICATE\ : dffeas
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
	q => \G1|pout[3]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y8_N24
\G4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux7~0_combout\ = ( \G1|pout\(0) & ( (!\G1|pout\(1) & !\G1|pout[3]~DUPLICATE_q\) ) ) # ( !\G1|pout\(0) & ( (!\G1|pout[3]~DUPLICATE_q\ & ((!\G1|pout\(1)) # (!\G1|pout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(1),
	datab => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	datac => \G1|ALT_INV_pout\(2),
	dataf => \G1|ALT_INV_pout\(0),
	combout => \G4|Mux7~0_combout\);

-- Location: LABCELL_X56_Y8_N27
\G4|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux7~1_combout\ = ( \G4|Mux7~0_combout\ & ( \G4|Mux3~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux3~2_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G4|Mux7~1_combout\);

-- Location: LABCELL_X56_Y8_N30
\G4|rd[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[2]~3_combout\ = ( \G4|Mux6~1_combout\ & ( \G4|Mux5~1_combout\ ) ) # ( !\G4|Mux6~1_combout\ & ( \G4|Mux5~1_combout\ ) ) # ( \G4|Mux6~1_combout\ & ( !\G4|Mux5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G4|ALT_INV_Mux6~1_combout\,
	dataf => \G4|ALT_INV_Mux5~1_combout\,
	combout => \G4|rd[2]~3_combout\);

-- Location: FF_X56_Y8_N29
\G4|tipoi[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|Mux7~1_combout\,
	ena => \G4|rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|tipoi[0]~reg0_q\);

-- Location: LABCELL_X56_Y8_N57
\G4|tipoi[0]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[0]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \G4|tipoi[0]~enfeeder_combout\);

-- Location: FF_X56_Y8_N58
\G4|tipoi[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|tipoi[0]~enfeeder_combout\,
	ena => \G4|rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|tipoi[0]~en_q\);

-- Location: LABCELL_X56_Y8_N6
\G4|tipoi[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[0]~6_combout\ = ( \G4|tipoi[0]~en_q\ & ( \G4|tipoi[0]~reg0_q\ ) ) # ( !\G4|tipoi[0]~en_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~reg0_q\,
	dataf => \G4|ALT_INV_tipoi[0]~en_q\,
	combout => \G4|tipoi[0]~6_combout\);

-- Location: FF_X56_Y8_N7
\G8|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|tipoi[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G8|SAIDA\(0));

-- Location: FF_X55_Y4_N8
\G9|AUX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G8|SAIDA\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(2));

-- Location: FF_X55_Y4_N58
\G9|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G9|AUX\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(2));

-- Location: LABCELL_X56_Y4_N0
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

-- Location: FF_X56_Y4_N2
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

-- Location: FF_X56_Y4_N43
\G12|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[2]~feeder_combout\,
	asdata => \G10|SAIDA\(2),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(2));

-- Location: LABCELL_X57_Y7_N15
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

-- Location: FF_X57_Y7_N16
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(2));

-- Location: FF_X56_Y8_N2
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

-- Location: MLABCELL_X59_Y4_N6
\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(3),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);

-- Location: FF_X59_Y4_N7
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

-- Location: LABCELL_X56_Y7_N39
\G12|SAIDA[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[3]~feeder_combout\ = ( \G2|saida\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(3),
	combout => \G12|SAIDA[3]~feeder_combout\);

-- Location: LABCELL_X55_Y4_N15
\G8|SAIDA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G8|SAIDA[1]~0_combout\ = ( !\G4|tipoi[0]~en_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G4|ALT_INV_tipoi[0]~en_q\,
	combout => \G8|SAIDA[1]~0_combout\);

-- Location: FF_X55_Y4_N16
\G8|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G8|SAIDA[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G8|SAIDA\(1));

-- Location: LABCELL_X55_Y4_N24
\G9|AUX[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|AUX[3]~feeder_combout\ = ( \G8|SAIDA\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G8|ALT_INV_SAIDA\(1),
	combout => \G9|AUX[3]~feeder_combout\);

-- Location: FF_X55_Y4_N26
\G9|AUX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G9|AUX[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(3));

-- Location: LABCELL_X55_Y4_N27
\G9|SAIDA[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G9|SAIDA[3]~feeder_combout\ = \G9|AUX\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_AUX\(3),
	combout => \G9|SAIDA[3]~feeder_combout\);

-- Location: FF_X55_Y4_N28
\G9|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G9|SAIDA[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(3));

-- Location: LABCELL_X56_Y4_N3
\G10|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~5_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(3) ) + ( \G10|Add0~2\ ))
-- \G10|Add0~6\ = CARRY(( \G9|SAIDA\(3) ) + ( \G2|saida\(3) ) + ( \G10|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(3),
	datad => \G9|ALT_INV_SAIDA\(3),
	cin => \G10|Add0~2\,
	sumout => \G10|Add0~5_sumout\,
	cout => \G10|Add0~6\);

-- Location: FF_X56_Y4_N4
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

-- Location: FF_X56_Y7_N41
\G12|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[3]~feeder_combout\,
	asdata => \G10|SAIDA\(3),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(3));

-- Location: LABCELL_X57_Y7_N45
\G13|SAIDA[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[3]~feeder_combout\ = \G12|SAIDA\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(3),
	combout => \G13|SAIDA[3]~feeder_combout\);

-- Location: FF_X57_Y7_N46
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(3));

-- Location: FF_X56_Y8_N46
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

-- Location: MLABCELL_X59_Y4_N9
\G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~13_sumout\ = SUM(( \G1|pout[4]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~10\ ))
-- \G2|Add0~14\ = CARRY(( \G1|pout[4]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout[4]~DUPLICATE_q\,
	cin => \G2|Add0~10\,
	sumout => \G2|Add0~13_sumout\,
	cout => \G2|Add0~14\);

-- Location: FF_X59_Y4_N10
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

-- Location: LABCELL_X57_Y4_N48
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

-- Location: LABCELL_X56_Y8_N48
\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = (!\G1|pout[3]~DUPLICATE_q\ & (!\G1|pout\(1) & (!\G1|pout\(2) $ (\G1|pout\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000100000000100000010000000010000001000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	datab => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	datac => \G1|ALT_INV_pout\(1),
	datad => \G1|ALT_INV_pout\(0),
	combout => \G4|Mux0~0_combout\);

-- Location: LABCELL_X56_Y8_N54
\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux3~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_Mux3~2_combout\,
	dataf => \G4|ALT_INV_Mux0~0_combout\,
	combout => \G4|Mux0~1_combout\);

-- Location: FF_X56_Y8_N56
\G4|tipoi[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|Mux0~1_combout\,
	ena => \G4|rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|tipoi[2]~reg0_q\);

-- Location: LABCELL_X55_Y4_N33
\G4|tipoi[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[2]~7_combout\ = (!\G4|tipoi[0]~en_q\) # (\G4|tipoi[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_tipoi[0]~en_q\,
	datac => \G4|ALT_INV_tipoi[2]~reg0_q\,
	combout => \G4|tipoi[2]~7_combout\);

-- Location: FF_X55_Y4_N35
\G8|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|tipoi[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G8|SAIDA\(2));

-- Location: FF_X55_Y4_N32
\G9|AUX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G8|SAIDA\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(4));

-- Location: FF_X55_Y4_N43
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

-- Location: LABCELL_X56_Y4_N6
\G10|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~9_sumout\ = SUM(( \G9|SAIDA\(4) ) + ( \G2|saida\(4) ) + ( \G10|Add0~6\ ))
-- \G10|Add0~10\ = CARRY(( \G9|SAIDA\(4) ) + ( \G2|saida\(4) ) + ( \G10|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G9|ALT_INV_SAIDA\(4),
	datac => \G2|ALT_INV_saida\(4),
	cin => \G10|Add0~6\,
	sumout => \G10|Add0~9_sumout\,
	cout => \G10|Add0~10\);

-- Location: FF_X56_Y4_N7
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

-- Location: FF_X57_Y4_N49
\G12|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[4]~feeder_combout\,
	asdata => \G10|SAIDA\(4),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(4));

-- Location: LABCELL_X60_Y4_N51
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

-- Location: FF_X60_Y4_N53
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(4));

-- Location: FF_X60_Y4_N5
\G1|pout[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[4]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y4_N12
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

-- Location: FF_X59_Y4_N13
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

-- Location: LABCELL_X57_Y4_N30
\G12|SAIDA[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[5]~feeder_combout\ = \G2|saida\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(5),
	combout => \G12|SAIDA[5]~feeder_combout\);

-- Location: LABCELL_X56_Y8_N12
\G4|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux3~3_combout\ = ( \G4|Mux3~2_combout\ & ( (!\G1|pout\(2) & (\G1|pout\(1) & (!\G1|pout\(0) & !\G1|pout[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(0),
	datad => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	dataf => \G4|ALT_INV_Mux3~2_combout\,
	combout => \G4|Mux3~3_combout\);

-- Location: FF_X56_Y8_N26
\G4|tipoi[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux3~3_combout\,
	sload => VCC,
	ena => \G4|rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|tipoi[3]~reg0_q\);

-- Location: LABCELL_X55_Y4_N39
\G4|tipoi[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[3]~8_combout\ = ( \G4|tipoi[3]~reg0_q\ ) # ( !\G4|tipoi[3]~reg0_q\ & ( !\G4|tipoi[0]~en_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_tipoi[0]~en_q\,
	dataf => \G4|ALT_INV_tipoi[3]~reg0_q\,
	combout => \G4|tipoi[3]~8_combout\);

-- Location: FF_X55_Y4_N40
\G8|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|tipoi[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G8|SAIDA\(3));

-- Location: FF_X55_Y4_N53
\G9|AUX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G8|SAIDA\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(5));

-- Location: FF_X55_Y4_N4
\G9|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G9|AUX\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(5));

-- Location: LABCELL_X56_Y4_N9
\G10|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~13_sumout\ = SUM(( \G2|saida\(5) ) + ( \G9|SAIDA\(5) ) + ( \G10|Add0~10\ ))
-- \G10|Add0~14\ = CARRY(( \G2|saida\(5) ) + ( \G9|SAIDA\(5) ) + ( \G10|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G9|ALT_INV_SAIDA\(5),
	datad => \G2|ALT_INV_saida\(5),
	cin => \G10|Add0~10\,
	sumout => \G10|Add0~13_sumout\,
	cout => \G10|Add0~14\);

-- Location: FF_X56_Y4_N10
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

-- Location: FF_X57_Y4_N31
\G12|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[5]~feeder_combout\,
	asdata => \G10|SAIDA\(5),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(5));

-- Location: LABCELL_X60_Y4_N33
\G13|SAIDA[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[5]~feeder_combout\ = ( \G12|SAIDA\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(5),
	combout => \G13|SAIDA[5]~feeder_combout\);

-- Location: FF_X60_Y4_N34
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(5));

-- Location: FF_X60_Y4_N2
\G1|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(5));

-- Location: MLABCELL_X59_Y4_N15
\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout[6]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout[6]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout[6]~DUPLICATE_q\,
	cin => \G2|Add0~18\,
	sumout => \G2|Add0~21_sumout\,
	cout => \G2|Add0~22\);

-- Location: FF_X59_Y4_N16
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

-- Location: LABCELL_X56_Y4_N51
\G12|SAIDA[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[6]~feeder_combout\ = \G2|saida\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(6),
	combout => \G12|SAIDA[6]~feeder_combout\);

-- Location: LABCELL_X56_Y4_N12
\G10|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~17_sumout\ = SUM(( \G9|SAIDA\(5) ) + ( \G2|saida\(6) ) + ( \G10|Add0~14\ ))
-- \G10|Add0~18\ = CARRY(( \G9|SAIDA\(5) ) + ( \G2|saida\(6) ) + ( \G10|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G9|ALT_INV_SAIDA\(5),
	datac => \G2|ALT_INV_saida\(6),
	cin => \G10|Add0~14\,
	sumout => \G10|Add0~17_sumout\,
	cout => \G10|Add0~18\);

-- Location: FF_X56_Y4_N14
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

-- Location: FF_X56_Y4_N52
\G12|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[6]~feeder_combout\,
	asdata => \G10|SAIDA\(6),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(6));

-- Location: LABCELL_X60_Y4_N24
\G13|SAIDA[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[6]~feeder_combout\ = \G12|SAIDA\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(6),
	combout => \G13|SAIDA[6]~feeder_combout\);

-- Location: FF_X60_Y4_N25
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(6));

-- Location: LABCELL_X60_Y4_N18
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

-- Location: FF_X60_Y4_N20
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

-- Location: MLABCELL_X59_Y4_N18
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

-- Location: FF_X59_Y4_N19
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

-- Location: LABCELL_X57_Y4_N39
\G12|SAIDA[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[7]~feeder_combout\ = \G2|saida\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(7),
	combout => \G12|SAIDA[7]~feeder_combout\);

-- Location: LABCELL_X56_Y4_N15
\G10|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~21_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(7) ) + ( \G10|Add0~18\ ))
-- \G10|Add0~22\ = CARRY(( \G9|SAIDA\(3) ) + ( \G2|saida\(7) ) + ( \G10|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_SAIDA\(3),
	datac => \G2|ALT_INV_saida\(7),
	cin => \G10|Add0~18\,
	sumout => \G10|Add0~21_sumout\,
	cout => \G10|Add0~22\);

-- Location: FF_X56_Y4_N16
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

-- Location: FF_X57_Y4_N40
\G12|SAIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[7]~feeder_combout\,
	asdata => \G10|SAIDA\(7),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(7));

-- Location: LABCELL_X60_Y4_N42
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

-- Location: FF_X60_Y4_N44
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(7));

-- Location: LABCELL_X60_Y4_N21
\G1|pout[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[7]~feeder_combout\ = ( \G13|SAIDA\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA\(7),
	combout => \G1|pout[7]~feeder_combout\);

-- Location: FF_X60_Y4_N23
\G1|pout[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[7]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y4_N21
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

-- Location: FF_X59_Y4_N22
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

-- Location: LABCELL_X56_Y4_N54
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

-- Location: LABCELL_X56_Y4_N18
\G10|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~25_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(8) ) + ( \G10|Add0~22\ ))
-- \G10|Add0~26\ = CARRY(( \G9|SAIDA\(3) ) + ( \G2|saida\(8) ) + ( \G10|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(8),
	datac => \G9|ALT_INV_SAIDA\(3),
	cin => \G10|Add0~22\,
	sumout => \G10|Add0~25_sumout\,
	cout => \G10|Add0~26\);

-- Location: FF_X56_Y4_N20
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

-- Location: FF_X56_Y4_N56
\G12|SAIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[8]~feeder_combout\,
	asdata => \G10|SAIDA\(8),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(8));

-- Location: LABCELL_X60_Y4_N45
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

-- Location: FF_X60_Y4_N46
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(8));

-- Location: FF_X60_Y4_N32
\G1|pout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(8));

-- Location: MLABCELL_X59_Y4_N24
\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout[9]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout[9]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout[9]~DUPLICATE_q\,
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

-- Location: FF_X59_Y4_N25
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

-- Location: LABCELL_X57_Y4_N9
\G12|SAIDA[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[9]~feeder_combout\ = \G2|saida\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(9),
	combout => \G12|SAIDA[9]~feeder_combout\);

-- Location: LABCELL_X56_Y4_N21
\G10|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~29_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(9) ) + ( \G10|Add0~26\ ))
-- \G10|Add0~30\ = CARRY(( \G9|SAIDA\(3) ) + ( \G2|saida\(9) ) + ( \G10|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_SAIDA\(3),
	datac => \G2|ALT_INV_saida\(9),
	cin => \G10|Add0~26\,
	sumout => \G10|Add0~29_sumout\,
	cout => \G10|Add0~30\);

-- Location: FF_X56_Y4_N22
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

-- Location: FF_X57_Y4_N10
\G12|SAIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[9]~feeder_combout\,
	asdata => \G10|SAIDA\(9),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(9));

-- Location: LABCELL_X57_Y3_N24
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

-- Location: FF_X57_Y3_N25
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(9));

-- Location: FF_X59_Y4_N59
\G1|pout[9]~DUPLICATE\ : dffeas
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
	q => \G1|pout[9]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y4_N27
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

-- Location: FF_X59_Y4_N28
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

-- Location: LABCELL_X57_Y4_N24
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

-- Location: LABCELL_X56_Y4_N24
\G10|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~33_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(10) ) + ( \G10|Add0~30\ ))
-- \G10|Add0~34\ = CARRY(( \G9|SAIDA\(3) ) + ( \G2|saida\(10) ) + ( \G10|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(10),
	datad => \G9|ALT_INV_SAIDA\(3),
	cin => \G10|Add0~30\,
	sumout => \G10|Add0~33_sumout\,
	cout => \G10|Add0~34\);

-- Location: FF_X56_Y4_N25
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

-- Location: FF_X57_Y4_N25
\G12|SAIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[10]~feeder_combout\,
	asdata => \G10|SAIDA\(10),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(10));

-- Location: LABCELL_X60_Y4_N36
\G13|SAIDA[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[10]~feeder_combout\ = ( \G12|SAIDA\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(10),
	combout => \G13|SAIDA[10]~feeder_combout\);

-- Location: FF_X60_Y4_N37
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(10));

-- Location: FF_X60_Y4_N50
\G1|pout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(10));

-- Location: MLABCELL_X59_Y4_N30
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

-- Location: FF_X59_Y4_N31
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

-- Location: LABCELL_X56_Y4_N57
\G12|SAIDA[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[11]~feeder_combout\ = \G2|saida\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(11),
	combout => \G12|SAIDA[11]~feeder_combout\);

-- Location: LABCELL_X56_Y4_N27
\G10|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~37_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(11) ) + ( \G10|Add0~34\ ))
-- \G10|Add0~38\ = CARRY(( \G9|SAIDA\(3) ) + ( \G2|saida\(11) ) + ( \G10|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(11),
	datad => \G9|ALT_INV_SAIDA\(3),
	cin => \G10|Add0~34\,
	sumout => \G10|Add0~37_sumout\,
	cout => \G10|Add0~38\);

-- Location: FF_X56_Y4_N29
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

-- Location: FF_X56_Y4_N58
\G12|SAIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[11]~feeder_combout\,
	asdata => \G10|SAIDA\(11),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(11));

-- Location: LABCELL_X60_Y4_N6
\G13|SAIDA[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[11]~feeder_combout\ = ( \G12|SAIDA\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(11),
	combout => \G13|SAIDA[11]~feeder_combout\);

-- Location: FF_X60_Y4_N7
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(11));

-- Location: FF_X60_Y4_N11
\G1|pout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(11));

-- Location: MLABCELL_X59_Y4_N33
\G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~45_sumout\ = SUM(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))
-- \G2|Add0~46\ = CARRY(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(12),
	cin => \G2|Add0~42\,
	sumout => \G2|Add0~45_sumout\,
	cout => \G2|Add0~46\);

-- Location: FF_X59_Y4_N34
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

-- Location: LABCELL_X56_Y4_N45
\G12|SAIDA[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[12]~feeder_combout\ = ( \G2|saida\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(12),
	combout => \G12|SAIDA[12]~feeder_combout\);

-- Location: LABCELL_X56_Y4_N30
\G10|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~41_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(12) ) + ( \G10|Add0~38\ ))
-- \G10|Add0~42\ = CARRY(( \G9|SAIDA\(3) ) + ( \G2|saida\(12) ) + ( \G10|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_SAIDA\(3),
	datac => \G2|ALT_INV_saida\(12),
	cin => \G10|Add0~38\,
	sumout => \G10|Add0~41_sumout\,
	cout => \G10|Add0~42\);

-- Location: FF_X56_Y4_N32
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

-- Location: FF_X56_Y4_N46
\G12|SAIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[12]~feeder_combout\,
	asdata => \G10|SAIDA\(12),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(12));

-- Location: LABCELL_X60_Y4_N39
\G13|SAIDA[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[12]~feeder_combout\ = ( \G12|SAIDA\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(12),
	combout => \G13|SAIDA[12]~feeder_combout\);

-- Location: FF_X60_Y4_N41
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(12));

-- Location: LABCELL_X60_Y4_N27
\G1|pout[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[12]~feeder_combout\ = ( \G13|SAIDA\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA\(12),
	combout => \G1|pout[12]~feeder_combout\);

-- Location: FF_X60_Y4_N29
\G1|pout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(12));

-- Location: MLABCELL_X59_Y4_N36
\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout[13]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~46\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout[13]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout[13]~DUPLICATE_q\,
	cin => \G2|Add0~46\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

-- Location: FF_X59_Y4_N37
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

-- Location: LABCELL_X56_Y4_N48
\G12|SAIDA[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[13]~feeder_combout\ = \G2|saida\(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(13),
	combout => \G12|SAIDA[13]~feeder_combout\);

-- Location: LABCELL_X56_Y4_N33
\G10|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~45_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(13) ) + ( \G10|Add0~42\ ))
-- \G10|Add0~46\ = CARRY(( \G9|SAIDA\(3) ) + ( \G2|saida\(13) ) + ( \G10|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_SAIDA\(3),
	datac => \G2|ALT_INV_saida\(13),
	cin => \G10|Add0~42\,
	sumout => \G10|Add0~45_sumout\,
	cout => \G10|Add0~46\);

-- Location: FF_X56_Y4_N35
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

-- Location: FF_X56_Y4_N49
\G12|SAIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[13]~feeder_combout\,
	asdata => \G10|SAIDA\(13),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(13));

-- Location: LABCELL_X60_Y4_N15
\G13|SAIDA[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[13]~feeder_combout\ = ( \G12|SAIDA\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(13),
	combout => \G13|SAIDA[13]~feeder_combout\);

-- Location: FF_X60_Y4_N16
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(13));

-- Location: LABCELL_X60_Y4_N12
\G1|pout[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout[13]~feeder_combout\ = ( \G13|SAIDA\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G13|ALT_INV_SAIDA\(13),
	combout => \G1|pout[13]~feeder_combout\);

-- Location: FF_X60_Y4_N14
\G1|pout[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[13]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y4_N39
\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

-- Location: FF_X59_Y4_N40
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

-- Location: LABCELL_X57_Y4_N45
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

-- Location: LABCELL_X56_Y4_N36
\G10|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~49_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(14) ) + ( \G10|Add0~46\ ))
-- \G10|Add0~50\ = CARRY(( \G9|SAIDA\(3) ) + ( \G2|saida\(14) ) + ( \G10|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_SAIDA\(3),
	datac => \G2|ALT_INV_saida\(14),
	cin => \G10|Add0~46\,
	sumout => \G10|Add0~49_sumout\,
	cout => \G10|Add0~50\);

-- Location: FF_X56_Y4_N37
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

-- Location: FF_X57_Y4_N47
\G12|SAIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[14]~feeder_combout\,
	asdata => \G10|SAIDA\(14),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(14));

-- Location: LABCELL_X57_Y3_N57
\G13|SAIDA[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[14]~feeder_combout\ = ( \G12|SAIDA\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(14),
	combout => \G13|SAIDA[14]~feeder_combout\);

-- Location: LABCELL_X57_Y3_N54
\G3|resshift[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|resshift[14]~feeder_combout\ = ( \G2|saida\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(14),
	combout => \G3|resshift[14]~feeder_combout\);

-- Location: FF_X57_Y3_N56
\G3|resshift[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G3|resshift[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|resshift\(14));

-- Location: FF_X57_Y3_N58
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(14));

-- Location: FF_X59_Y4_N56
\G1|pout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(14));

-- Location: MLABCELL_X59_Y4_N42
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

-- Location: FF_X59_Y4_N43
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

-- Location: LABCELL_X57_Y4_N12
\G12|SAIDA[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[15]~feeder_combout\ = \G2|saida\(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(15),
	combout => \G12|SAIDA[15]~feeder_combout\);

-- Location: LABCELL_X56_Y4_N39
\G10|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~53_sumout\ = SUM(( \G9|SAIDA\(3) ) + ( \G2|saida\(15) ) + ( \G10|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_SAIDA\(3),
	datac => \G2|ALT_INV_saida\(15),
	cin => \G10|Add0~50\,
	sumout => \G10|Add0~53_sumout\);

-- Location: FF_X56_Y4_N40
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

-- Location: FF_X57_Y4_N13
\G12|SAIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[15]~feeder_combout\,
	asdata => \G10|SAIDA\(15),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(15));

-- Location: LABCELL_X60_Y4_N54
\G13|SAIDA[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[15]~feeder_combout\ = ( \G12|SAIDA\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G12|ALT_INV_SAIDA\(15),
	combout => \G13|SAIDA[15]~feeder_combout\);

-- Location: FF_X57_Y4_N55
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

-- Location: FF_X60_Y4_N56
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA\(15));

-- Location: FF_X59_Y4_N46
\G1|pout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(15));

-- Location: FF_X60_Y4_N22
\G1|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(7));

-- Location: LABCELL_X60_Y4_N57
\G4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux3~0_combout\ = ( !\G1|pout[6]~DUPLICATE_q\ & ( (!\G1|pout\(5) & (!\G1|pout\(8) & (!\G1|pout\(7) & !\G1|pout[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(5),
	datab => \G1|ALT_INV_pout\(8),
	datac => \G1|ALT_INV_pout\(7),
	datad => \G1|ALT_INV_pout[4]~DUPLICATE_q\,
	dataf => \G1|ALT_INV_pout[6]~DUPLICATE_q\,
	combout => \G4|Mux3~0_combout\);

-- Location: LABCELL_X60_Y4_N30
\G4|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux3~1_combout\ = ( !\G1|pout\(11) & ( (!\G1|pout\(12) & (!\G1|pout[13]~DUPLICATE_q\ & !\G1|pout\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(12),
	datab => \G1|ALT_INV_pout[13]~DUPLICATE_q\,
	datac => \G1|ALT_INV_pout\(10),
	dataf => \G1|ALT_INV_pout\(11),
	combout => \G4|Mux3~1_combout\);

-- Location: MLABCELL_X59_Y4_N54
\G4|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux3~2_combout\ = ( !\G1|pout\(14) & ( \G4|Mux3~1_combout\ & ( (!\G1|pout[9]~DUPLICATE_q\ & (!\G1|pout\(15) & \G4|Mux3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout[9]~DUPLICATE_q\,
	datac => \G1|ALT_INV_pout\(15),
	datad => \G4|ALT_INV_Mux3~0_combout\,
	datae => \G1|ALT_INV_pout\(14),
	dataf => \G4|ALT_INV_Mux3~1_combout\,
	combout => \G4|Mux3~2_combout\);

-- Location: LABCELL_X56_Y8_N0
\G4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux6~0_combout\ = ( \G1|pout\(1) & ( (!\G1|pout[3]~DUPLICATE_q\ & (!\G1|pout\(0) $ (!\G1|pout\(2)))) ) ) # ( !\G1|pout\(1) & ( !\G1|pout[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	datad => \G1|ALT_INV_pout\(2),
	dataf => \G1|ALT_INV_pout\(1),
	combout => \G4|Mux6~0_combout\);

-- Location: LABCELL_X56_Y8_N51
\G4|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux6~1_combout\ = ( \G4|Mux6~0_combout\ & ( \G4|Mux3~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux3~2_combout\,
	dataf => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G4|Mux6~1_combout\);

-- Location: FF_X56_Y8_N53
\G4|op[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|op[0]~reg0_q\);

-- Location: LABCELL_X36_Y7_N3
\G5|jump~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|jump~1_combout\ = ( \G4|rs[1]~reg0_q\ & ( (\G4|rs[0]~en_q\ & !\G4|op[0]~reg0_q\) ) ) # ( !\G4|rs[1]~reg0_q\ & ( \G4|rs[0]~en_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G4|ALT_INV_rs[1]~reg0_q\,
	combout => \G5|jump~1_combout\);

-- Location: FF_X36_Y7_N4
\G5|regdest~enDUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|jump~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|regdest~enDUPLICATE_q\);

-- Location: LABCELL_X33_Y8_N48
\G15|SAIDA[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G15|SAIDA[6]~1_combout\ = ( !\G5|regdest~enDUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G5|ALT_INV_regdest~enDUPLICATE_q\,
	combout => \G15|SAIDA[6]~1_combout\);

-- Location: FF_X33_Y8_N49
\G15|SAIDA[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G15|SAIDA[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA[6]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N9
\G5|origalu[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[0]~7_combout\ = ( \G4|op[0]~reg0_q\ ) # ( !\G4|op[0]~reg0_q\ & ( !\G4|rs[0]~en_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	dataf => \G4|ALT_INV_op[0]~reg0_q\,
	combout => \G5|origalu[0]~7_combout\);

-- Location: FF_X36_Y7_N11
\G5|origalu[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|origalu[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|origalu[0]~reg0_q\);

-- Location: MLABCELL_X39_Y8_N39
\G5|origalu[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[0]~5_combout\ = ( \G5|origalu[0]~reg0_q\ ) # ( !\G5|origalu[0]~reg0_q\ & ( !\G5|regdest~enDUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_regdest~enDUPLICATE_q\,
	dataf => \G5|ALT_INV_origalu[0]~reg0_q\,
	combout => \G5|origalu[0]~5_combout\);

-- Location: FF_X39_Y8_N41
\G15|SAIDA[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|origalu[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA[3]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N6
\G5|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Equal2~0_combout\ = ( !\G5|origalu[0]~7_combout\ & ( \G4|rs[1]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rs[1]~reg0_q\,
	dataf => \G5|ALT_INV_origalu[0]~7_combout\,
	combout => \G5|Equal2~0_combout\);

-- Location: FF_X36_Y7_N8
\G5|origalu[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|origalu[1]~reg0_q\);

-- Location: MLABCELL_X34_Y7_N39
\G5|origalu[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[1]~6_combout\ = ( \G5|origalu[1]~reg0_q\ ) # ( !\G5|origalu[1]~reg0_q\ & ( !\G5|regdest~enDUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G5|ALT_INV_regdest~enDUPLICATE_q\,
	dataf => \G5|ALT_INV_origalu[1]~reg0_q\,
	combout => \G5|origalu[1]~6_combout\);

-- Location: FF_X33_Y8_N38
\G15|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G5|origalu[1]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(4));

-- Location: FF_X37_Y8_N59
\G15|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G5|origalu[2]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(5));

-- Location: MLABCELL_X39_Y8_N30
\G16|ZeroULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|ZeroULA~0_combout\ = ( !\G15|SAIDA\(4) & ( \G15|SAIDA\(5) & ( (!\G15|SAIDA[6]~DUPLICATE_q\ & !\G15|SAIDA[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA[6]~DUPLICATE_q\,
	datab => \G15|ALT_INV_SAIDA[3]~DUPLICATE_q\,
	datae => \G15|ALT_INV_SAIDA\(4),
	dataf => \G15|ALT_INV_SAIDA\(5),
	combout => \G16|ZeroULA~0_combout\);

-- Location: MLABCELL_X39_Y8_N51
\G16|ZeroULA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|ZeroULA~1_combout\ = ( !\G15|SAIDA[6]~DUPLICATE_q\ & ( !\G15|SAIDA\(5) & ( (\G15|SAIDA\(4) & \G15|SAIDA[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G15|ALT_INV_SAIDA\(4),
	datac => \G15|ALT_INV_SAIDA[3]~DUPLICATE_q\,
	datae => \G15|ALT_INV_SAIDA[6]~DUPLICATE_q\,
	dataf => \G15|ALT_INV_SAIDA\(5),
	combout => \G16|ZeroULA~1_combout\);

-- Location: FF_X39_Y8_N40
\G15|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|origalu[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(3));

-- Location: FF_X33_Y8_N50
\G15|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G15|SAIDA[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(6));

-- Location: MLABCELL_X34_Y8_N30
\G4|rd[0]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \G4|rd[0]~enfeeder_combout\);

-- Location: FF_X34_Y8_N32
\G4|rd[0]~enDUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|rd[0]~enfeeder_combout\,
	ena => \G4|ALT_INV_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rd[0]~enDUPLICATE_q\);

-- Location: LABCELL_X36_Y8_N27
\G15|SAIDA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G15|SAIDA[1]~0_combout\ = ( !\G4|rd[0]~enDUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	combout => \G15|SAIDA[1]~0_combout\);

-- Location: FF_X36_Y8_N29
\G15|SAIDA[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G15|SAIDA[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA[1]~DUPLICATE_q\);

-- Location: FF_X56_Y8_N32
\G4|funct[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux7~1_combout\,
	sload => VCC,
	ena => \G4|ALT_INV_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|funct[0]~reg0_q\);

-- Location: LABCELL_X37_Y8_N21
\G4|funct[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[0]~4_combout\ = ( \G4|funct[0]~reg0_q\ ) # ( !\G4|funct[0]~reg0_q\ & ( !\G4|rd[0]~enDUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	dataf => \G4|ALT_INV_funct[0]~reg0_q\,
	combout => \G4|funct[0]~4_combout\);

-- Location: FF_X37_Y8_N23
\G15|SAIDA[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|funct[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA[0]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y8_N30
\G16|Mux15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~5_combout\ = ( !\G15|SAIDA\(4) & ( !\G15|SAIDA[0]~DUPLICATE_q\ & ( (!\G15|SAIDA\(5) & (!\G15|SAIDA\(3) & (!\G15|SAIDA\(6) & !\G15|SAIDA[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(5),
	datab => \G15|ALT_INV_SAIDA\(3),
	datac => \G15|ALT_INV_SAIDA\(6),
	datad => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datae => \G15|ALT_INV_SAIDA\(4),
	dataf => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	combout => \G16|Mux15~5_combout\);

-- Location: FF_X56_Y8_N34
\G4|funct[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux0~1_combout\,
	sload => VCC,
	ena => \G4|ALT_INV_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|funct[2]~reg0_q\);

-- Location: LABCELL_X37_Y8_N30
\G4|funct[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[2]~3_combout\ = ( \G4|funct[2]~reg0_q\ ) # ( !\G4|funct[2]~reg0_q\ & ( !\G4|rd[0]~enDUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	dataf => \G4|ALT_INV_funct[2]~reg0_q\,
	combout => \G4|funct[2]~3_combout\);

-- Location: FF_X37_Y8_N32
\G15|SAIDA[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|funct[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA[2]~DUPLICATE_q\);

-- Location: FF_X36_Y8_N28
\G15|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G15|SAIDA[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(1));

-- Location: LABCELL_X36_Y8_N51
\G16|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~0_combout\ = ( !\G15|SAIDA[3]~DUPLICATE_q\ & ( (!\G15|SAIDA\(5) & (!\G15|SAIDA\(4) & !\G15|SAIDA[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G15|ALT_INV_SAIDA\(5),
	datac => \G15|ALT_INV_SAIDA\(4),
	datad => \G15|ALT_INV_SAIDA[6]~DUPLICATE_q\,
	dataf => \G15|ALT_INV_SAIDA[3]~DUPLICATE_q\,
	combout => \G16|Mux0~0_combout\);

-- Location: LABCELL_X36_Y8_N9
\G16|Mux15~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~7_combout\ = ( \G16|Mux0~0_combout\ & ( (!\G15|SAIDA[2]~DUPLICATE_q\ & (\G15|SAIDA\(1) & \G15|SAIDA[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	datac => \G15|ALT_INV_SAIDA\(1),
	datad => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux15~7_combout\);

-- Location: LABCELL_X36_Y8_N3
\G16|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~1_combout\ = ( \G16|Mux0~0_combout\ & ( (!\G15|SAIDA[2]~DUPLICATE_q\ & (!\G15|SAIDA\(1) & \G15|SAIDA[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	datac => \G15|ALT_INV_SAIDA\(1),
	datad => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux15~1_combout\);

-- Location: FF_X37_Y8_N31
\G15|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|funct[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(2));

-- Location: LABCELL_X30_Y8_N0
\G16|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~0_combout\ = ( \G16|Mux0~0_combout\ & ( (!\G15|SAIDA[1]~DUPLICATE_q\ & (!\G15|SAIDA[0]~DUPLICATE_q\ & !\G15|SAIDA\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datac => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datad => \G15|ALT_INV_SAIDA\(2),
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux15~0_combout\);

-- Location: LABCELL_X29_Y6_N54
\G17|ram~280feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~280feeder_combout\ = ( \G7|Reg~198_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~198_combout\,
	combout => \G17|ram~280feeder_combout\);

-- Location: LABCELL_X36_Y7_N36
\G5|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Equal1~0_combout\ = ( !\G4|rs[1]~reg0_q\ & ( (\G4|op[0]~reg0_q\ & \G4|rs[0]~en_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~reg0_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	dataf => \G4|ALT_INV_rs[1]~reg0_q\,
	combout => \G5|Equal1~0_combout\);

-- Location: MLABCELL_X34_Y7_N42
\G5|memparareg~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|memparareg~reg0feeder_combout\ = ( \G5|Equal1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G5|ALT_INV_Equal1~0_combout\,
	combout => \G5|memparareg~reg0feeder_combout\);

-- Location: FF_X34_Y7_N44
\G5|memparareg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|memparareg~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|memparareg~reg0_q\);

-- Location: MLABCELL_X34_Y7_N30
\G5|memparareg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|memparareg~1_combout\ = ( \G5|regdest~enDUPLICATE_q\ & ( \G5|memparareg~reg0_q\ ) ) # ( !\G5|regdest~enDUPLICATE_q\ & ( \G5|memparareg~reg0_q\ ) ) # ( !\G5|regdest~enDUPLICATE_q\ & ( !\G5|memparareg~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G5|ALT_INV_regdest~enDUPLICATE_q\,
	dataf => \G5|ALT_INV_memparareg~reg0_q\,
	combout => \G5|memparareg~1_combout\);

-- Location: LABCELL_X30_Y7_N21
\G17|ram~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~449_combout\ = ( !\G5|memparareg~1_combout\ & ( \G5|origalu[1]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G5|ALT_INV_memparareg~1_combout\,
	dataf => \G5|ALT_INV_origalu[1]~6_combout\,
	combout => \G17|ram~449_combout\);

-- Location: LABCELL_X29_Y7_N12
\G17|ram~234feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~234feeder_combout\ = \G7|Reg~196_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~234feeder_combout\);

-- Location: FF_X36_Y7_N5
\G5|regdest~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|jump~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|regdest~en_q\);

-- Location: FF_X36_Y7_N50
\G5|escrevereg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|escrevereg~reg0_q\);

-- Location: LABCELL_X36_Y7_N54
\G5|escrevereg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|escrevereg~1_combout\ = ( \G5|regdest~en_q\ & ( \G5|escrevereg~reg0_q\ ) ) # ( !\G5|regdest~en_q\ & ( \G5|escrevereg~reg0_q\ ) ) # ( !\G5|regdest~en_q\ & ( !\G5|escrevereg~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G5|ALT_INV_regdest~en_q\,
	dataf => \G5|ALT_INV_escrevereg~reg0_q\,
	combout => \G5|escrevereg~1_combout\);

-- Location: FF_X33_Y8_N1
\G14|SAIDA[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[4]~feeder_combout\,
	asdata => \G8|SAIDA\(3),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA[4]~DUPLICATE_q\);

-- Location: FF_X37_Y8_N22
\G15|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|funct[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(0));

-- Location: FF_X34_Y8_N31
\G4|rd[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|rd[0]~enfeeder_combout\,
	ena => \G4|ALT_INV_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rd[0]~en_q\);

-- Location: LABCELL_X37_Y8_N3
\G4|rt[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[0]~reg0feeder_combout\ = ( \G4|Mux3~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G4|ALT_INV_Mux3~3_combout\,
	combout => \G4|rt[0]~reg0feeder_combout\);

-- Location: FF_X37_Y8_N4
\G4|rt[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|rt[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rt[0]~reg0_q\);

-- Location: LABCELL_X36_Y7_N30
\G5|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Equal0~0_combout\ = ( !\G4|op[0]~reg0_q\ & ( (!\G4|rs[1]~reg0_q\ & \G4|rs[0]~en_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[1]~reg0_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	dataf => \G4|ALT_INV_op[0]~reg0_q\,
	combout => \G5|Equal0~0_combout\);

-- Location: FF_X36_Y7_N31
\G5|regdest~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|regdest~reg0_q\);

-- Location: LABCELL_X36_Y7_N0
\G6|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA~0_combout\ = ( \G5|regdest~reg0_q\ & ( (!\G4|rs[0]~en_q\) # (\G4|rs[0]~reg0_q\) ) ) # ( !\G5|regdest~reg0_q\ & ( (!\G4|rs[0]~en_q\) # ((!\G5|regdest~en_q\ & ((\G4|rs[0]~reg0_q\))) # (\G5|regdest~en_q\ & (\G4|rt[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101111111011101010111111101110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	datab => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G5|ALT_INV_regdest~en_q\,
	datad => \G4|ALT_INV_rs[0]~reg0_q\,
	dataf => \G5|ALT_INV_regdest~reg0_q\,
	combout => \G6|SAIDA~0_combout\);

-- Location: FF_X36_Y7_N1
\G6|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G6|SAIDA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G6|SAIDA\(0));

-- Location: LABCELL_X56_Y8_N3
\G4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~0_combout\ = ( \G1|pout\(2) & ( (!\G1|pout\(0) & (!\G1|pout[3]~DUPLICATE_q\ & \G4|Mux3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datac => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	datad => \G4|ALT_INV_Mux3~2_combout\,
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G4|Mux1~0_combout\);

-- Location: FF_X56_Y8_N4
\G4|rs[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rs[2]~reg0_q\);

-- Location: LABCELL_X36_Y7_N15
\G6|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA~2_combout\ = ( \G5|regdest~en_q\ & ( \G5|regdest~reg0_q\ & ( (!\G4|rs[0]~en_q\) # (\G4|rs[2]~reg0_q\) ) ) ) # ( !\G5|regdest~en_q\ & ( \G5|regdest~reg0_q\ & ( (!\G4|rs[0]~en_q\) # (\G4|rs[2]~reg0_q\) ) ) ) # ( \G5|regdest~en_q\ & ( 
-- !\G5|regdest~reg0_q\ & ( !\G4|rs[0]~en_q\ ) ) ) # ( !\G5|regdest~en_q\ & ( !\G5|regdest~reg0_q\ & ( (!\G4|rs[0]~en_q\) # (\G4|rs[2]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101010101010101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G4|ALT_INV_rs[2]~reg0_q\,
	datae => \G5|ALT_INV_regdest~en_q\,
	dataf => \G5|ALT_INV_regdest~reg0_q\,
	combout => \G6|SAIDA~2_combout\);

-- Location: FF_X36_Y7_N16
\G6|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G6|SAIDA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G6|SAIDA\(2));

-- Location: LABCELL_X36_Y7_N21
\G6|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA~1_combout\ = ( \G5|regdest~en_q\ & ( \G5|regdest~reg0_q\ & ( (!\G4|rs[0]~en_q\) # (\G4|rs[1]~reg0_q\) ) ) ) # ( !\G5|regdest~en_q\ & ( \G5|regdest~reg0_q\ & ( (!\G4|rs[0]~en_q\) # (\G4|rs[1]~reg0_q\) ) ) ) # ( \G5|regdest~en_q\ & ( 
-- !\G5|regdest~reg0_q\ & ( !\G4|rs[0]~en_q\ ) ) ) # ( !\G5|regdest~en_q\ & ( !\G5|regdest~reg0_q\ & ( (!\G4|rs[0]~en_q\) # (\G4|rs[1]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101010101010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	datad => \G4|ALT_INV_rs[1]~reg0_q\,
	datae => \G5|ALT_INV_regdest~en_q\,
	dataf => \G5|ALT_INV_regdest~reg0_q\,
	combout => \G6|SAIDA~1_combout\);

-- Location: FF_X36_Y7_N22
\G6|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G6|SAIDA~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G6|SAIDA\(1));

-- Location: LABCELL_X36_Y8_N6
\G7|Reg~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~148_combout\ = ( \G5|escrevereg~1_combout\ & ( (\G6|SAIDA\(0) & (\G6|SAIDA\(2) & \G6|SAIDA\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G6|ALT_INV_SAIDA\(0),
	datac => \G6|ALT_INV_SAIDA\(2),
	datad => \G6|ALT_INV_SAIDA\(1),
	dataf => \G5|ALT_INV_escrevereg~1_combout\,
	combout => \G7|Reg~148_combout\);

-- Location: FF_X35_Y9_N29
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~136_q\);

-- Location: MLABCELL_X34_Y9_N57
\G7|Reg~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~24feeder_combout\ = ( \G18|SAIDA\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G18|ALT_INV_SAIDA\(4),
	combout => \G7|Reg~24feeder_combout\);

-- Location: LABCELL_X36_Y8_N39
\G7|Reg~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~152_combout\ = ( \G5|escrevereg~1_combout\ & ( (!\G6|SAIDA\(2) & (!\G6|SAIDA\(1) & !\G6|SAIDA\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA\(2),
	datac => \G6|ALT_INV_SAIDA\(1),
	datad => \G6|ALT_INV_SAIDA\(0),
	dataf => \G5|ALT_INV_escrevereg~1_combout\,
	combout => \G7|Reg~152_combout\);

-- Location: FF_X34_Y9_N58
\G7|Reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G7|Reg~24feeder_combout\,
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~24_q\);

-- Location: LABCELL_X36_Y8_N24
\G7|Reg~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~151_combout\ = ( \G5|escrevereg~1_combout\ & ( (\G6|SAIDA\(0) & (\G6|SAIDA\(1) & !\G6|SAIDA\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA\(0),
	datab => \G6|ALT_INV_SAIDA\(1),
	datac => \G6|ALT_INV_SAIDA\(2),
	dataf => \G5|ALT_INV_escrevereg~1_combout\,
	combout => \G7|Reg~151_combout\);

-- Location: FF_X35_Y9_N38
\G7|Reg~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(4),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~72_q\);

-- Location: FF_X34_Y8_N55
\G4|rd[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux3~3_combout\,
	sload => VCC,
	ena => \G4|ALT_INV_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rd[0]~reg0_q\);

-- Location: LABCELL_X35_Y9_N51
\G7|Reg~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~180_combout\ = ( \G4|rd[0]~reg0_q\ & ( \G4|rd[0]~en_q\ & ( !\G7|Reg~72_q\ ) ) ) # ( !\G4|rd[0]~reg0_q\ & ( \G4|rd[0]~en_q\ & ( !\G7|Reg~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~24_q\,
	datad => \G7|ALT_INV_Reg~72_q\,
	datae => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G4|ALT_INV_rd[0]~en_q\,
	combout => \G7|Reg~180_combout\);

-- Location: LABCELL_X35_Y9_N24
\G7|Reg~212\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~212_combout\ = ( \G7|Reg~180_combout\ & ( (\G7|Reg~120_q\ & !\G4|rd[0]~en_q\) ) ) # ( !\G7|Reg~180_combout\ & ( (\G7|Reg~136_q\) # (\G4|rd[0]~en_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~120_q\,
	datab => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G7|ALT_INV_Reg~136_q\,
	dataf => \G7|ALT_INV_Reg~180_combout\,
	combout => \G7|Reg~212_combout\);

-- Location: LABCELL_X35_Y9_N0
\G16|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~3_combout\ = ( \G7|Reg~212_combout\ & ( \G16|Mux0~0_combout\ & ( (!\G15|SAIDA[1]~DUPLICATE_q\ & ((!\G15|SAIDA\(0)))) # (\G15|SAIDA[1]~DUPLICATE_q\ & (\G14|SAIDA[4]~DUPLICATE_q\ & \G15|SAIDA\(0))) ) ) ) # ( !\G7|Reg~212_combout\ & ( 
-- \G16|Mux0~0_combout\ & ( (\G14|SAIDA[4]~DUPLICATE_q\ & (!\G15|SAIDA[1]~DUPLICATE_q\ & !\G15|SAIDA\(0))) ) ) ) # ( \G7|Reg~212_combout\ & ( !\G16|Mux0~0_combout\ & ( (\G14|SAIDA[4]~DUPLICATE_q\ & (\G15|SAIDA[1]~DUPLICATE_q\ & \G15|SAIDA\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000101000100000000001100110000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[4]~DUPLICATE_q\,
	datab => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datad => \G15|ALT_INV_SAIDA\(0),
	datae => \G7|ALT_INV_Reg~212_combout\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux11~3_combout\);

-- Location: LABCELL_X29_Y8_N15
\G16|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~2_combout\ = ( \G16|Mux0~0_combout\ & ( (\G15|SAIDA\(0) & !\G15|SAIDA[1]~DUPLICATE_q\) ) ) # ( !\G16|Mux0~0_combout\ & ( !\G15|SAIDA[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G15|ALT_INV_SAIDA\(0),
	datac => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux11~2_combout\);

-- Location: LABCELL_X36_Y8_N45
\G16|Mux15~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~6_combout\ = ( \G15|SAIDA[0]~DUPLICATE_q\ & ( \G16|Mux0~0_combout\ & ( !\G15|SAIDA[2]~DUPLICATE_q\ ) ) ) # ( !\G15|SAIDA[0]~DUPLICATE_q\ & ( \G16|Mux0~0_combout\ & ( !\G15|SAIDA[2]~DUPLICATE_q\ $ (!\G15|SAIDA[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	datad => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datae => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux15~6_combout\);

-- Location: FF_X29_Y6_N16
\G17|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~200_combout\,
	sload => VCC,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~278_q\);

-- Location: LABCELL_X29_Y9_N21
\G16|Mux11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~5_combout\ = ( \G16|Mux11~0_combout\ & ( \G16|Mux11~4_combout\ ) ) # ( !\G16|Mux11~0_combout\ & ( \G16|Mux11~4_combout\ ) ) # ( \G16|Mux11~0_combout\ & ( !\G16|Mux11~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G16|ALT_INV_Mux11~0_combout\,
	dataf => \G16|ALT_INV_Mux11~4_combout\,
	combout => \G16|Mux11~5_combout\);

-- Location: FF_X34_Y8_N37
\G7|Reg~133DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(1),
	sload => VCC,
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~133DUPLICATE_q\);

-- Location: FF_X36_Y8_N38
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~21_q\);

-- Location: LABCELL_X36_Y8_N15
\G7|Reg~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~150_combout\ = ( \G5|escrevereg~1_combout\ & ( (!\G6|SAIDA\(2) & (!\G6|SAIDA\(1) & \G6|SAIDA\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA\(2),
	datab => \G6|ALT_INV_SAIDA\(1),
	datac => \G6|ALT_INV_SAIDA\(0),
	dataf => \G5|ALT_INV_escrevereg~1_combout\,
	combout => \G7|Reg~150_combout\);

-- Location: FF_X36_Y8_N44
\G7|Reg~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(1),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~37_q\);

-- Location: LABCELL_X36_Y8_N36
\G7|Reg~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~167_combout\ = ( \G7|Reg~37_q\ & ( (!\G4|rt[0]~reg0_q\ & (\G4|rs[0]~en_q\ & !\G7|Reg~21_q\)) ) ) # ( !\G7|Reg~37_q\ & ( (\G4|rs[0]~en_q\ & ((!\G7|Reg~21_q\) # (\G4|rt[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000011110000001100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	datad => \G7|ALT_INV_Reg~21_q\,
	dataf => \G7|ALT_INV_Reg~37_q\,
	combout => \G7|Reg~167_combout\);

-- Location: LABCELL_X36_Y8_N12
\G7|Reg~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~149_combout\ = ( \G5|escrevereg~1_combout\ & ( (\G6|SAIDA\(2) & (\G6|SAIDA\(1) & !\G6|SAIDA\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA\(2),
	datab => \G6|ALT_INV_SAIDA\(1),
	datac => \G6|ALT_INV_SAIDA\(0),
	dataf => \G5|ALT_INV_escrevereg~1_combout\,
	combout => \G7|Reg~149_combout\);

-- Location: FF_X35_Y9_N56
\G7|Reg~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(1),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~117_q\);

-- Location: LABCELL_X36_Y8_N30
\G7|Reg~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~199_combout\ = ( \G7|Reg~117_q\ & ( (!\G7|Reg~167_combout\ & ((\G4|rs[0]~en_q\) # (\G7|Reg~133DUPLICATE_q\))) # (\G7|Reg~167_combout\ & ((!\G4|rs[0]~en_q\))) ) ) # ( !\G7|Reg~117_q\ & ( (!\G7|Reg~167_combout\ & ((\G4|rs[0]~en_q\) # 
-- (\G7|Reg~133DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000111111111100000011111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~133DUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~167_combout\,
	datad => \G4|ALT_INV_rs[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~117_q\,
	combout => \G7|Reg~199_combout\);

-- Location: LABCELL_X31_Y6_N15
\G17|ram~279feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~279feeder_combout\ = ( \G7|Reg~199_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~199_combout\,
	combout => \G17|ram~279feeder_combout\);

-- Location: FF_X31_Y6_N16
\G17|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~279feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~279_q\);

-- Location: FF_X29_Y9_N55
\G17|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~231_q\);

-- Location: FF_X35_Y8_N59
\G7|Reg~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(2),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~118_q\);

-- Location: FF_X34_Y8_N56
\G4|rd[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux3~3_combout\,
	sload => VCC,
	ena => \G4|ALT_INV_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rd[0]~reg0DUPLICATE_q\);

-- Location: FF_X34_Y8_N25
\G7|Reg~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(2),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~70_q\);

-- Location: FF_X36_Y8_N58
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~22_q\);

-- Location: MLABCELL_X34_Y8_N27
\G7|Reg~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~182_combout\ = ( \G7|Reg~22_q\ & ( (\G4|rd[0]~reg0DUPLICATE_q\ & (\G4|rd[0]~enDUPLICATE_q\ & !\G7|Reg~70_q\)) ) ) # ( !\G7|Reg~22_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & ((!\G4|rd[0]~reg0DUPLICATE_q\) # (!\G7|Reg~70_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0DUPLICATE_q\,
	datab => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~70_q\,
	dataf => \G7|ALT_INV_Reg~22_q\,
	combout => \G7|Reg~182_combout\);

-- Location: MLABCELL_X34_Y8_N45
\G7|Reg~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~214_combout\ = ( \G7|Reg~182_combout\ & ( (!\G4|rd[0]~enDUPLICATE_q\ & \G7|Reg~118_q\) ) ) # ( !\G7|Reg~182_combout\ & ( (\G7|Reg~134_q\) # (\G4|rd[0]~enDUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~134_q\,
	datad => \G7|ALT_INV_Reg~118_q\,
	dataf => \G7|ALT_INV_Reg~182_combout\,
	combout => \G7|Reg~214_combout\);

-- Location: FF_X35_Y8_N50
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~132_q\);

-- Location: FF_X35_Y8_N56
\G7|Reg~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(0),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~116_q\);

-- Location: FF_X35_Y8_N8
\G7|Reg~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(0),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~68_q\);

-- Location: FF_X36_Y8_N17
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~20_q\);

-- Location: LABCELL_X35_Y8_N51
\G7|Reg~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~184_combout\ = ( \G7|Reg~20_q\ & ( \G4|rd[0]~en_q\ & ( (!\G7|Reg~68_q\ & \G4|rd[0]~reg0_q\) ) ) ) # ( !\G7|Reg~20_q\ & ( \G4|rd[0]~en_q\ & ( (!\G7|Reg~68_q\) # (!\G4|rd[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~68_q\,
	datad => \G4|ALT_INV_rd[0]~reg0_q\,
	datae => \G7|ALT_INV_Reg~20_q\,
	dataf => \G4|ALT_INV_rd[0]~en_q\,
	combout => \G7|Reg~184_combout\);

-- Location: LABCELL_X35_Y8_N57
\G7|Reg~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~216_combout\ = ( \G7|Reg~116_q\ & ( \G7|Reg~184_combout\ & ( !\G4|rd[0]~en_q\ ) ) ) # ( \G7|Reg~116_q\ & ( !\G7|Reg~184_combout\ & ( (\G4|rd[0]~en_q\) # (\G7|Reg~132_q\) ) ) ) # ( !\G7|Reg~116_q\ & ( !\G7|Reg~184_combout\ & ( (\G4|rd[0]~en_q\) # 
-- (\G7|Reg~132_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~132_q\,
	datad => \G4|ALT_INV_rd[0]~en_q\,
	datae => \G7|ALT_INV_Reg~116_q\,
	dataf => \G7|ALT_INV_Reg~184_combout\,
	combout => \G7|Reg~216_combout\);

-- Location: MLABCELL_X34_Y8_N0
\G16|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~1_sumout\ = SUM(( !\G7|Reg~216_combout\ ) + ( !\G7|Reg~215_combout\ ) + ( !VCC ))
-- \G16|Add2~2\ = CARRY(( !\G7|Reg~216_combout\ ) + ( !\G7|Reg~215_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~215_combout\,
	datad => \G7|ALT_INV_Reg~216_combout\,
	cin => GND,
	sumout => \G16|Add2~1_sumout\,
	cout => \G16|Add2~2\);

-- Location: MLABCELL_X34_Y8_N3
\G16|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~5_sumout\ = SUM(( !\G7|Reg~214_combout\ ) + ( GND ) + ( \G16|Add2~2\ ))
-- \G16|Add2~6\ = CARRY(( !\G7|Reg~214_combout\ ) + ( GND ) + ( \G16|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Reg~214_combout\,
	cin => \G16|Add2~2\,
	sumout => \G16|Add2~5_sumout\,
	cout => \G16|Add2~6\);

-- Location: MLABCELL_X34_Y8_N51
\G16|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~0_combout\ = ( \G16|Add2~5_sumout\ & ( \G16|Mux0~0_combout\ & ( (!\G15|SAIDA\(0) & (!\G15|SAIDA[2]~DUPLICATE_q\ & (\G15|SAIDA\(1) & \G14|SAIDA[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(0),
	datab => \G15|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	datac => \G15|ALT_INV_SAIDA\(1),
	datad => \G14|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datae => \G16|ALT_INV_Add2~5_sumout\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux14~0_combout\);

-- Location: FF_X31_Y7_N49
\G14|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[0]~feeder_combout\,
	asdata => \G8|SAIDA\(0),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(0));

-- Location: LABCELL_X30_Y8_N54
\G16|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~3_combout\ = ( \G7|Reg~216_combout\ & ( \G16|Mux0~0_combout\ & ( (!\G15|SAIDA\(2) & (\G14|SAIDA\(0) & (\G15|SAIDA[0]~DUPLICATE_q\ & \G15|SAIDA[1]~DUPLICATE_q\))) # (\G15|SAIDA\(2) & (((!\G15|SAIDA[0]~DUPLICATE_q\ & 
-- !\G15|SAIDA[1]~DUPLICATE_q\)))) ) ) ) # ( !\G7|Reg~216_combout\ & ( \G16|Mux0~0_combout\ & ( (\G14|SAIDA\(0) & (\G15|SAIDA\(2) & (!\G15|SAIDA[0]~DUPLICATE_q\ & !\G15|SAIDA[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000011000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G15|ALT_INV_SAIDA\(2),
	datac => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datad => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datae => \G7|ALT_INV_Reg~216_combout\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux15~3_combout\);

-- Location: LABCELL_X35_Y8_N0
\G16|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~1_sumout\ = SUM(( !\G14|SAIDA[0]~DUPLICATE_q\ $ (!\G7|Reg~216_combout\) ) + ( !VCC ) + ( !VCC ))
-- \G16|Add1~2\ = CARRY(( !\G14|SAIDA[0]~DUPLICATE_q\ $ (!\G7|Reg~216_combout\) ) + ( !VCC ) + ( !VCC ))
-- \G16|Add1~3\ = SHARE((!\G14|SAIDA[0]~DUPLICATE_q\) # (\G7|Reg~216_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~216_combout\,
	cin => GND,
	sharein => GND,
	sumout => \G16|Add1~1_sumout\,
	cout => \G16|Add1~2\,
	shareout => \G16|Add1~3\);

-- Location: LABCELL_X31_Y8_N0
\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( \G7|Reg~216_combout\ ) + ( \G14|SAIDA[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \G16|Add0~2\ = CARRY(( \G7|Reg~216_combout\ ) + ( \G14|SAIDA[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~216_combout\,
	cin => GND,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

-- Location: LABCELL_X30_Y8_N18
\G16|Mux15~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~8_combout\ = ( \G16|Add0~1_sumout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux15~3_combout\ & ((!\G16|Mux15~1_combout\) # (!\G16|Add1~1_sumout\)))) ) ) # ( !\G16|Add0~1_sumout\ & ( (!\G16|Mux15~3_combout\ & ((!\G16|Mux15~1_combout\) # 
-- (!\G16|Add1~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux15~1_combout\,
	datac => \G16|ALT_INV_Mux15~3_combout\,
	datad => \G16|ALT_INV_Add1~1_sumout\,
	dataf => \G16|ALT_INV_Add0~1_sumout\,
	combout => \G16|Mux15~8_combout\);

-- Location: LABCELL_X33_Y8_N15
\G14|SAIDA[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[1]~feeder_combout\ = ( \G7|Reg~199_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~199_combout\,
	combout => \G14|SAIDA[1]~feeder_combout\);

-- Location: FF_X33_Y8_N17
\G14|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[1]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(1));

-- Location: LABCELL_X33_Y8_N3
\G16|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~4_combout\ = ( \G7|Reg~215_combout\ & ( (\G15|SAIDA[1]~DUPLICATE_q\ & (\G14|SAIDA\(1) & (\G15|SAIDA[0]~DUPLICATE_q\ & \G16|Mux15~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datad => \G16|ALT_INV_Mux15~6_combout\,
	dataf => \G7|ALT_INV_Reg~215_combout\,
	combout => \G16|Mux14~4_combout\);

-- Location: LABCELL_X33_Y8_N54
\G16|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~3_combout\ = ( \G16|Mux15~6_combout\ & ( \G7|Reg~215_combout\ & ( \G16|Mux15~5_combout\ ) ) ) # ( \G16|Mux15~6_combout\ & ( !\G7|Reg~215_combout\ & ( (\G14|SAIDA\(1) & \G16|Mux15~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA\(1),
	datad => \G16|ALT_INV_Mux15~5_combout\,
	datae => \G16|ALT_INV_Mux15~6_combout\,
	dataf => \G7|ALT_INV_Reg~215_combout\,
	combout => \G16|Mux14~3_combout\);

-- Location: FF_X33_Y8_N16
\G14|SAIDA[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[1]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA[1]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y8_N3
\G16|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~5_sumout\ = SUM(( !\G14|SAIDA[1]~DUPLICATE_q\ $ (\G7|Reg~215_combout\) ) + ( \G16|Add1~3\ ) + ( \G16|Add1~2\ ))
-- \G16|Add1~6\ = CARRY(( !\G14|SAIDA[1]~DUPLICATE_q\ $ (\G7|Reg~215_combout\) ) + ( \G16|Add1~3\ ) + ( \G16|Add1~2\ ))
-- \G16|Add1~7\ = SHARE((!\G14|SAIDA[1]~DUPLICATE_q\ & \G7|Reg~215_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~215_combout\,
	cin => \G16|Add1~2\,
	sharein => \G16|Add1~3\,
	sumout => \G16|Add1~5_sumout\,
	cout => \G16|Add1~6\,
	shareout => \G16|Add1~7\);

-- Location: LABCELL_X31_Y8_N3
\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( \G7|Reg~215_combout\ ) + ( \G14|SAIDA\(1) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( \G7|Reg~215_combout\ ) + ( \G14|SAIDA\(1) ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(1),
	datad => \G7|ALT_INV_Reg~215_combout\,
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

-- Location: LABCELL_X33_Y8_N24
\G16|Mux14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~5_combout\ = ( \G16|Add1~5_sumout\ & ( \G16|Add0~5_sumout\ & ( (!\G16|Mux14~4_combout\ & (!\G16|Mux15~1_combout\ & (!\G16|Mux14~3_combout\ & !\G16|Mux15~0_combout\))) ) ) ) # ( !\G16|Add1~5_sumout\ & ( \G16|Add0~5_sumout\ & ( 
-- (!\G16|Mux14~4_combout\ & (!\G16|Mux14~3_combout\ & !\G16|Mux15~0_combout\)) ) ) ) # ( \G16|Add1~5_sumout\ & ( !\G16|Add0~5_sumout\ & ( (!\G16|Mux14~4_combout\ & (!\G16|Mux15~1_combout\ & !\G16|Mux14~3_combout\)) ) ) ) # ( !\G16|Add1~5_sumout\ & ( 
-- !\G16|Add0~5_sumout\ & ( (!\G16|Mux14~4_combout\ & !\G16|Mux14~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000100000001000000010100000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~4_combout\,
	datab => \G16|ALT_INV_Mux15~1_combout\,
	datac => \G16|ALT_INV_Mux14~3_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Add1~5_sumout\,
	dataf => \G16|ALT_INV_Add0~5_sumout\,
	combout => \G16|Mux14~5_combout\);

-- Location: LABCELL_X33_Y8_N45
\G17|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~573_combout\ = ( \G16|Mux14~5_combout\ & ( (!\G16|Mux14~0_combout\) # ((\G16|Mux15~8_combout\ & !\G16|Mux15~2_combout\)) ) ) # ( !\G16|Mux14~5_combout\ & ( (\G16|Mux15~8_combout\ & !\G16|Mux15~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux15~8_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \G16|ALT_INV_Mux14~5_combout\,
	combout => \G17|ram~573_combout\);

-- Location: LABCELL_X29_Y8_N0
\G17|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~579_combout\ = ( \G16|Mux13~2_combout\ & ( !\G17|ram~573_combout\ & ( (\G17|ram~449_combout\ & (!\G16|Mux11~4_combout\ & (!\G16|Mux11~0_combout\ & \G16|Mux12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~449_combout\,
	datab => \G16|ALT_INV_Mux11~4_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	datae => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G17|ALT_INV_ram~573_combout\,
	combout => \G17|ram~579_combout\);

-- Location: FF_X30_Y9_N55
\G17|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~263_q\);

-- Location: LABCELL_X30_Y8_N3
\G17|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~576_combout\ = ( \G16|Mux14~5_combout\ & ( (\G16|Mux15~8_combout\ & (!\G16|Mux15~2_combout\ & \G16|Mux14~0_combout\)) ) ) # ( !\G16|Mux14~5_combout\ & ( (\G16|Mux15~8_combout\ & !\G16|Mux15~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~8_combout\,
	datac => \G16|ALT_INV_Mux15~2_combout\,
	datad => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux14~5_combout\,
	combout => \G17|ram~576_combout\);

-- Location: MLABCELL_X25_Y8_N21
\G17|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~581_combout\ = ( !\G16|Mux11~4_combout\ & ( \G17|ram~576_combout\ & ( (!\G16|Mux11~0_combout\ & (\G17|ram~449_combout\ & (\G16|Mux12~2_combout\ & \G16|Mux13~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~0_combout\,
	datab => \G17|ALT_INV_ram~449_combout\,
	datac => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux11~4_combout\,
	dataf => \G17|ALT_INV_ram~576_combout\,
	combout => \G17|ram~581_combout\);

-- Location: FF_X25_Y8_N25
\G17|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~247_q\);

-- Location: MLABCELL_X34_Y8_N33
\G16|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~1_combout\ = ( \G16|Mux15~5_combout\ & ( (!\G14|SAIDA[1]~DUPLICATE_q\ & (((\G16|Mux15~6_combout\ & \G7|Reg~215_combout\)))) # (\G14|SAIDA[1]~DUPLICATE_q\ & (((\G16|Mux15~7_combout\ & \G7|Reg~215_combout\)) # (\G16|Mux15~6_combout\))) ) ) # ( 
-- !\G16|Mux15~5_combout\ & ( (\G16|Mux15~7_combout\ & (\G14|SAIDA[1]~DUPLICATE_q\ & \G7|Reg~215_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000011000111110000001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~7_combout\,
	datab => \G14|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datac => \G16|ALT_INV_Mux15~6_combout\,
	datad => \G7|ALT_INV_Reg~215_combout\,
	dataf => \G16|ALT_INV_Mux15~5_combout\,
	combout => \G16|Mux14~1_combout\);

-- Location: MLABCELL_X34_Y8_N39
\G16|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~2_combout\ = ( \G16|Add0~5_sumout\ & ( \G16|Mux14~0_combout\ ) ) # ( !\G16|Add0~5_sumout\ & ( \G16|Mux14~0_combout\ ) ) # ( \G16|Add0~5_sumout\ & ( !\G16|Mux14~0_combout\ & ( (((\G16|Mux15~1_combout\ & \G16|Add1~5_sumout\)) # 
-- (\G16|Mux15~0_combout\)) # (\G16|Mux14~1_combout\) ) ) ) # ( !\G16|Add0~5_sumout\ & ( !\G16|Mux14~0_combout\ & ( ((\G16|Mux15~1_combout\ & \G16|Add1~5_sumout\)) # (\G16|Mux14~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111011101110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~1_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Add1~5_sumout\,
	datae => \G16|ALT_INV_Add0~5_sumout\,
	dataf => \G16|ALT_INV_Mux14~0_combout\,
	combout => \G16|Mux14~2_combout\);

-- Location: LABCELL_X30_Y8_N42
\G16|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~4_combout\ = ( \G16|Add1~1_sumout\ & ( \G16|Mux15~2_combout\ ) ) # ( !\G16|Add1~1_sumout\ & ( \G16|Mux15~2_combout\ ) ) # ( \G16|Add1~1_sumout\ & ( !\G16|Mux15~2_combout\ & ( (((\G16|Add0~1_sumout\ & \G16|Mux15~0_combout\)) # 
-- (\G16|Mux15~1_combout\)) # (\G16|Mux15~3_combout\) ) ) ) # ( !\G16|Add1~1_sumout\ & ( !\G16|Mux15~2_combout\ & ( ((\G16|Add0~1_sumout\ & \G16|Mux15~0_combout\)) # (\G16|Mux15~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~3_combout\,
	datab => \G16|ALT_INV_Add0~1_sumout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Mux15~1_combout\,
	datae => \G16|ALT_INV_Add1~1_sumout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \G16|Mux15~4_combout\);

-- Location: LABCELL_X27_Y7_N39
\G17|ram~167feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~167feeder_combout\ = ( \G7|Reg~199_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~199_combout\,
	combout => \G17|ram~167feeder_combout\);

-- Location: MLABCELL_X28_Y8_N54
\G17|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~586_combout\ = ( !\G16|Mux13~2_combout\ & ( \G16|Mux12~2_combout\ & ( (!\G16|Mux11~4_combout\ & (\G17|ram~449_combout\ & (\G17|ram~571_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~4_combout\,
	datab => \G17|ALT_INV_ram~449_combout\,
	datac => \G17|ALT_INV_ram~571_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G16|ALT_INV_Mux12~2_combout\,
	combout => \G17|ram~586_combout\);

-- Location: FF_X27_Y7_N40
\G17|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~167feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~167_q\);

-- Location: LABCELL_X30_Y5_N57
\G17|ram~183feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~183feeder_combout\ = ( \G7|Reg~199_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~199_combout\,
	combout => \G17|ram~183feeder_combout\);

-- Location: LABCELL_X29_Y8_N3
\G17|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~589_combout\ = ( \G17|ram~576_combout\ & ( !\G16|Mux13~2_combout\ & ( (\G17|ram~449_combout\ & (!\G16|Mux11~4_combout\ & (\G16|Mux12~2_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~449_combout\,
	datab => \G16|ALT_INV_Mux11~4_combout\,
	datac => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G17|ALT_INV_ram~576_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	combout => \G17|ram~589_combout\);

-- Location: FF_X30_Y5_N59
\G17|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~183feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~183_q\);

-- Location: LABCELL_X30_Y8_N48
\G17|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~587_combout\ = ( \G16|Mux12~2_combout\ & ( !\G17|ram~573_combout\ & ( (!\G16|Mux11~0_combout\ & (\G17|ram~449_combout\ & (!\G16|Mux11~4_combout\ & !\G16|Mux13~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~0_combout\,
	datab => \G17|ALT_INV_ram~449_combout\,
	datac => \G16|ALT_INV_Mux11~4_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G17|ALT_INV_ram~573_combout\,
	combout => \G17|ram~587_combout\);

-- Location: FF_X29_Y9_N19
\G17|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~199_q\);

-- Location: LABCELL_X31_Y6_N42
\G17|ram~151feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~151feeder_combout\ = ( \G7|Reg~199_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~199_combout\,
	combout => \G17|ram~151feeder_combout\);

-- Location: LABCELL_X36_Y8_N33
\G16|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~0_combout\ = ( \G16|Mux0~0_combout\ & ( (!\G15|SAIDA[1]~DUPLICATE_q\ & ((\G15|SAIDA[0]~DUPLICATE_q\))) # (\G15|SAIDA[1]~DUPLICATE_q\ & (\G14|SAIDA[0]~DUPLICATE_q\ & !\G15|SAIDA[0]~DUPLICATE_q\)) ) ) # ( !\G16|Mux0~0_combout\ & ( 
-- (!\G15|SAIDA[1]~DUPLICATE_q\) # ((\G14|SAIDA[0]~DUPLICATE_q\ & !\G15|SAIDA[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101010101011111010101000000101101010100000010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datac => \G14|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datad => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux10~0_combout\);

-- Location: FF_X35_Y9_N32
\G7|Reg~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(3),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~119_q\);

-- Location: FF_X35_Y9_N44
\G7|Reg~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(3),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~71_q\);

-- Location: FF_X34_Y9_N49
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~23_q\);

-- Location: LABCELL_X35_Y9_N12
\G7|Reg~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~181_combout\ = ( \G4|rd[0]~reg0_q\ & ( (!\G7|Reg~71_q\ & \G4|rd[0]~en_q\) ) ) # ( !\G4|rd[0]~reg0_q\ & ( (!\G7|Reg~23_q\ & \G4|rd[0]~en_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~71_q\,
	datac => \G7|ALT_INV_Reg~23_q\,
	datad => \G4|ALT_INV_rd[0]~en_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~181_combout\);

-- Location: LABCELL_X35_Y9_N6
\G7|Reg~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~213_combout\ = ( \G7|Reg~181_combout\ & ( (\G7|Reg~119_q\ & !\G4|rd[0]~en_q\) ) ) # ( !\G7|Reg~181_combout\ & ( (\G7|Reg~135_q\) # (\G4|rd[0]~en_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~119_q\,
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G7|ALT_INV_Reg~135_q\,
	dataf => \G7|ALT_INV_Reg~181_combout\,
	combout => \G7|Reg~213_combout\);

-- Location: MLABCELL_X34_Y8_N6
\G16|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~9_sumout\ = SUM(( !\G7|Reg~213_combout\ ) + ( GND ) + ( \G16|Add2~6\ ))
-- \G16|Add2~10\ = CARRY(( !\G7|Reg~213_combout\ ) + ( GND ) + ( \G16|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Reg~213_combout\,
	cin => \G16|Add2~6\,
	sumout => \G16|Add2~9_sumout\,
	cout => \G16|Add2~10\);

-- Location: MLABCELL_X34_Y8_N9
\G16|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~13_sumout\ = SUM(( !\G7|Reg~212_combout\ ) + ( GND ) + ( \G16|Add2~10\ ))
-- \G16|Add2~14\ = CARRY(( !\G7|Reg~212_combout\ ) + ( GND ) + ( \G16|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Reg~212_combout\,
	cin => \G16|Add2~10\,
	sumout => \G16|Add2~13_sumout\,
	cout => \G16|Add2~14\);

-- Location: FF_X33_Y8_N10
\G14|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[3]~feeder_combout\,
	asdata => \G8|SAIDA\(3),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(3));

-- Location: LABCELL_X35_Y8_N6
\G16|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~9_sumout\ = SUM(( !\G14|SAIDA[2]~DUPLICATE_q\ $ (\G7|Reg~214_combout\) ) + ( \G16|Add1~7\ ) + ( \G16|Add1~6\ ))
-- \G16|Add1~10\ = CARRY(( !\G14|SAIDA[2]~DUPLICATE_q\ $ (\G7|Reg~214_combout\) ) + ( \G16|Add1~7\ ) + ( \G16|Add1~6\ ))
-- \G16|Add1~11\ = SHARE((!\G14|SAIDA[2]~DUPLICATE_q\ & \G7|Reg~214_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~214_combout\,
	cin => \G16|Add1~6\,
	sharein => \G16|Add1~7\,
	sumout => \G16|Add1~9_sumout\,
	cout => \G16|Add1~10\,
	shareout => \G16|Add1~11\);

-- Location: LABCELL_X35_Y8_N9
\G16|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~13_sumout\ = SUM(( !\G7|Reg~213_combout\ $ (\G14|SAIDA\(3)) ) + ( \G16|Add1~11\ ) + ( \G16|Add1~10\ ))
-- \G16|Add1~14\ = CARRY(( !\G7|Reg~213_combout\ $ (\G14|SAIDA\(3)) ) + ( \G16|Add1~11\ ) + ( \G16|Add1~10\ ))
-- \G16|Add1~15\ = SHARE((\G7|Reg~213_combout\ & !\G14|SAIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~213_combout\,
	datad => \G14|ALT_INV_SAIDA\(3),
	cin => \G16|Add1~10\,
	sharein => \G16|Add1~11\,
	sumout => \G16|Add1~13_sumout\,
	cout => \G16|Add1~14\,
	shareout => \G16|Add1~15\);

-- Location: LABCELL_X29_Y8_N48
\G16|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~0_combout\ = ( \G16|Add2~13_sumout\ & ( \G16|Add1~13_sumout\ & ( (\G16|Mux15~6_combout\ & \G16|Mux10~0_combout\) ) ) ) # ( !\G16|Add2~13_sumout\ & ( \G16|Add1~13_sumout\ & ( (\G16|Mux15~6_combout\ & (\G16|Mux10~0_combout\ & 
-- ((!\G15|SAIDA[1]~DUPLICATE_q\) # (\G15|SAIDA\(0))))) ) ) ) # ( \G16|Add2~13_sumout\ & ( !\G16|Add1~13_sumout\ & ( (\G16|Mux15~6_combout\ & (\G15|SAIDA[1]~DUPLICATE_q\ & (\G16|Mux10~0_combout\ & !\G15|SAIDA\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000100000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~6_combout\,
	datab => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datac => \G16|ALT_INV_Mux10~0_combout\,
	datad => \G15|ALT_INV_SAIDA\(0),
	datae => \G16|ALT_INV_Add2~13_sumout\,
	dataf => \G16|ALT_INV_Add1~13_sumout\,
	combout => \G16|Mux12~0_combout\);

-- Location: MLABCELL_X34_Y8_N57
\G16|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~0_combout\ = ( \G15|SAIDA\(1) & ( \G16|Add2~9_sumout\ & ( (\G16|Mux0~0_combout\ & (!\G15|SAIDA[2]~DUPLICATE_q\ & (\G14|SAIDA[0]~DUPLICATE_q\ & !\G15|SAIDA\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux0~0_combout\,
	datab => \G15|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	datac => \G14|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datad => \G15|ALT_INV_SAIDA\(0),
	datae => \G15|ALT_INV_SAIDA\(1),
	dataf => \G16|ALT_INV_Add2~9_sumout\,
	combout => \G16|Mux13~0_combout\);

-- Location: LABCELL_X33_Y8_N12
\G16|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~3_combout\ = ( \G16|Mux15~6_combout\ & ( (\G16|Mux15~5_combout\ & ((\G7|Reg~214_combout\) # (\G14|SAIDA[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux15~5_combout\,
	datac => \G14|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~214_combout\,
	dataf => \G16|ALT_INV_Mux15~6_combout\,
	combout => \G16|Mux13~3_combout\);

-- Location: LABCELL_X33_Y8_N51
\G16|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~4_combout\ = ( \G14|SAIDA[2]~DUPLICATE_q\ & ( (\G16|Mux15~6_combout\ & (\G15|SAIDA[0]~DUPLICATE_q\ & (\G7|Reg~214_combout\ & \G15|SAIDA[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~6_combout\,
	datab => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~214_combout\,
	datad => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	dataf => \G14|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	combout => \G16|Mux13~4_combout\);

-- Location: FF_X31_Y7_N37
\G14|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[2]~feeder_combout\,
	asdata => \G8|SAIDA\(2),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(2));

-- Location: LABCELL_X31_Y8_N6
\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( \G7|Reg~214_combout\ ) + ( \G14|SAIDA\(2) ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( \G7|Reg~214_combout\ ) + ( \G14|SAIDA\(2) ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA\(2),
	datad => \G7|ALT_INV_Reg~214_combout\,
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

-- Location: LABCELL_X33_Y8_N18
\G16|Mux13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~5_combout\ = ( \G16|Add1~9_sumout\ & ( \G16|Add0~9_sumout\ & ( (!\G16|Mux15~1_combout\ & (!\G16|Mux13~3_combout\ & (!\G16|Mux13~4_combout\ & !\G16|Mux15~0_combout\))) ) ) ) # ( !\G16|Add1~9_sumout\ & ( \G16|Add0~9_sumout\ & ( 
-- (!\G16|Mux13~3_combout\ & (!\G16|Mux13~4_combout\ & !\G16|Mux15~0_combout\)) ) ) ) # ( \G16|Add1~9_sumout\ & ( !\G16|Add0~9_sumout\ & ( (!\G16|Mux15~1_combout\ & (!\G16|Mux13~3_combout\ & !\G16|Mux13~4_combout\)) ) ) ) # ( !\G16|Add1~9_sumout\ & ( 
-- !\G16|Add0~9_sumout\ & ( (!\G16|Mux13~3_combout\ & !\G16|Mux13~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000100000001000000011000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~1_combout\,
	datab => \G16|ALT_INV_Mux13~3_combout\,
	datac => \G16|ALT_INV_Mux13~4_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Add1~9_sumout\,
	dataf => \G16|ALT_INV_Add0~9_sumout\,
	combout => \G16|Mux13~5_combout\);

-- Location: LABCELL_X30_Y6_N15
\G17|ram~448\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~448_combout\ = ( \G16|Mux14~5_combout\ & ( \G16|Mux13~5_combout\ & ( (!\G16|Mux15~2_combout\ & (\G16|Mux15~8_combout\ & (!\G16|Mux14~0_combout\ & !\G16|Mux13~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux15~8_combout\,
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~5_combout\,
	dataf => \G16|ALT_INV_Mux13~5_combout\,
	combout => \G17|ram~448_combout\);

-- Location: LABCELL_X30_Y6_N54
\G17|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~588_combout\ = ( !\G16|Mux11~4_combout\ & ( \G17|ram~448_combout\ & ( (\G17|ram~449_combout\ & (!\G16|Mux11~0_combout\ & ((\G16|Mux12~0_combout\) # (\G16|Mux12~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~449_combout\,
	datab => \G16|ALT_INV_Mux11~0_combout\,
	datac => \G16|ALT_INV_Mux12~1_combout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G16|ALT_INV_Mux11~4_combout\,
	dataf => \G17|ALT_INV_ram~448_combout\,
	combout => \G17|ram~588_combout\);

-- Location: FF_X31_Y6_N44
\G17|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~151feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~151_q\);

-- Location: LABCELL_X30_Y9_N12
\G17|ram~455\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~455_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux15~4_combout\ & (((\G17|ram~151_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~167_q\))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- (!\G16|Mux15~4_combout\ & (((\G17|ram~183_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\) # (\G17|ram~199_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~4_combout\,
	datab => \G17|ALT_INV_ram~167_q\,
	datac => \G17|ALT_INV_ram~183_q\,
	datad => \G17|ALT_INV_ram~199_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~151_q\,
	combout => \G17|ram~455_combout\);

-- Location: LABCELL_X29_Y7_N36
\G17|ram~215feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~215feeder_combout\ = ( \G7|Reg~199_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~199_combout\,
	combout => \G17|ram~215feeder_combout\);

-- Location: MLABCELL_X28_Y8_N51
\G17|ram~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~302_combout\ = ( !\G16|Mux14~0_combout\ & ( \G16|Mux14~5_combout\ & ( (!\G16|Mux15~2_combout\ & \G16|Mux15~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux15~2_combout\,
	datad => \G16|ALT_INV_Mux15~8_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux14~5_combout\,
	combout => \G17|ram~302_combout\);

-- Location: MLABCELL_X28_Y8_N3
\G17|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~580_combout\ = ( \G17|ram~449_combout\ & ( \G17|ram~302_combout\ & ( (\G16|Mux13~2_combout\ & (\G16|Mux12~2_combout\ & (!\G16|Mux11~0_combout\ & !\G16|Mux11~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G16|ALT_INV_Mux11~4_combout\,
	datae => \G17|ALT_INV_ram~449_combout\,
	dataf => \G17|ALT_INV_ram~302_combout\,
	combout => \G17|ram~580_combout\);

-- Location: FF_X29_Y7_N37
\G17|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~215feeder_combout\,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~215_q\);

-- Location: LABCELL_X30_Y9_N54
\G17|ram~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~309_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~455_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~455_combout\ & ((\G17|ram~215_q\))) # (\G17|ram~455_combout\ & (\G17|ram~231_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~455_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~455_combout\ & ((\G17|ram~247_q\))) # (\G17|ram~455_combout\ & (\G17|ram~263_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~231_q\,
	datab => \G17|ALT_INV_ram~263_q\,
	datac => \G17|ALT_INV_ram~247_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~455_combout\,
	datag => \G17|ALT_INV_ram~215_q\,
	combout => \G17|ram~309_combout\);

-- Location: LABCELL_X27_Y8_N12
\G17|ram~103feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~103feeder_combout\ = ( \G7|Reg~199_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~199_combout\,
	combout => \G17|ram~103feeder_combout\);

-- Location: FF_X27_Y8_N13
\G17|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~103feeder_combout\,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~103_q\);

-- Location: LABCELL_X27_Y7_N3
\G17|ram~119feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~119feeder_combout\ = ( \G7|Reg~199_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~199_combout\,
	combout => \G17|ram~119feeder_combout\);

-- Location: MLABCELL_X28_Y8_N27
\G17|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~577_combout\ = ( \G17|ram~449_combout\ & ( \G17|ram~576_combout\ & ( (\G16|Mux13~2_combout\ & (!\G16|Mux11~0_combout\ & (!\G16|Mux12~2_combout\ & !\G16|Mux11~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G16|ALT_INV_Mux11~0_combout\,
	datac => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G16|ALT_INV_Mux11~4_combout\,
	datae => \G17|ALT_INV_ram~449_combout\,
	dataf => \G17|ALT_INV_ram~576_combout\,
	combout => \G17|ram~577_combout\);

-- Location: FF_X27_Y7_N4
\G17|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~119feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~119_q\);

-- Location: LABCELL_X29_Y8_N42
\G17|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~574_combout\ = ( \G16|Mux13~2_combout\ & ( !\G17|ram~573_combout\ & ( (\G17|ram~449_combout\ & (!\G16|Mux11~4_combout\ & (!\G16|Mux11~0_combout\ & !\G16|Mux12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~449_combout\,
	datab => \G16|ALT_INV_Mux11~4_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	datae => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G17|ALT_INV_ram~573_combout\,
	combout => \G17|ram~574_combout\);

-- Location: FF_X30_Y9_N32
\G17|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~135_q\);

-- Location: MLABCELL_X28_Y8_N9
\G17|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~583_combout\ = ( !\G17|ram~573_combout\ & ( !\G16|Mux12~2_combout\ & ( (!\G16|Mux11~4_combout\ & (!\G16|Mux11~0_combout\ & (\G17|ram~449_combout\ & !\G16|Mux13~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~4_combout\,
	datab => \G16|ALT_INV_Mux11~0_combout\,
	datac => \G17|ALT_INV_ram~449_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G17|ALT_INV_ram~573_combout\,
	dataf => \G16|ALT_INV_Mux12~2_combout\,
	combout => \G17|ram~583_combout\);

-- Location: FF_X27_Y8_N56
\G17|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~71_q\);

-- Location: LABCELL_X29_Y8_N45
\G17|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~582_combout\ = ( \G17|ram~571_combout\ & ( !\G16|Mux13~2_combout\ & ( (\G17|ram~449_combout\ & (!\G16|Mux11~4_combout\ & (!\G16|Mux12~2_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~449_combout\,
	datab => \G16|ALT_INV_Mux11~4_combout\,
	datac => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G17|ALT_INV_ram~571_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	combout => \G17|ram~582_combout\);

-- Location: FF_X31_Y9_N4
\G17|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~39_q\);

-- Location: LABCELL_X30_Y8_N51
\G17|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~585_combout\ = ( \G17|ram~576_combout\ & ( !\G16|Mux12~2_combout\ & ( (!\G16|Mux11~0_combout\ & (\G17|ram~449_combout\ & (!\G16|Mux13~2_combout\ & !\G16|Mux11~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~0_combout\,
	datab => \G17|ALT_INV_ram~449_combout\,
	datac => \G16|ALT_INV_Mux13~2_combout\,
	datad => \G16|ALT_INV_Mux11~4_combout\,
	datae => \G17|ALT_INV_ram~576_combout\,
	dataf => \G16|ALT_INV_Mux12~2_combout\,
	combout => \G17|ram~585_combout\);

-- Location: FF_X31_Y9_N7
\G17|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~55_q\);

-- Location: LABCELL_X30_Y6_N6
\G17|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~584_combout\ = ( !\G16|Mux11~4_combout\ & ( \G17|ram~448_combout\ & ( (\G17|ram~449_combout\ & (!\G16|Mux11~0_combout\ & (!\G16|Mux12~1_combout\ & !\G16|Mux12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~449_combout\,
	datab => \G16|ALT_INV_Mux11~0_combout\,
	datac => \G16|ALT_INV_Mux12~1_combout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G16|ALT_INV_Mux11~4_combout\,
	dataf => \G17|ALT_INV_ram~448_combout\,
	combout => \G17|ram~584_combout\);

-- Location: FF_X30_Y6_N58
\G17|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~23_q\);

-- Location: LABCELL_X27_Y8_N54
\G17|ram~451\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~451_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~23_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~39_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~55_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~71_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~71_q\,
	datab => \G17|ALT_INV_ram~39_q\,
	datac => \G17|ALT_INV_ram~55_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~23_q\,
	combout => \G17|ram~451_combout\);

-- Location: MLABCELL_X28_Y8_N24
\G17|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~575_combout\ = ( \G17|ram~449_combout\ & ( \G17|ram~302_combout\ & ( (\G16|Mux13~2_combout\ & (!\G16|Mux11~0_combout\ & (!\G16|Mux11~4_combout\ & !\G16|Mux12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G16|ALT_INV_Mux11~0_combout\,
	datac => \G16|ALT_INV_Mux11~4_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	datae => \G17|ALT_INV_ram~449_combout\,
	dataf => \G17|ALT_INV_ram~302_combout\,
	combout => \G17|ram~575_combout\);

-- Location: FF_X27_Y9_N28
\G17|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~199_combout\,
	sload => VCC,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~87_q\);

-- Location: LABCELL_X30_Y9_N30
\G17|ram~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~305_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~451_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~451_combout\ & ((\G17|ram~87_q\))) # (\G17|ram~451_combout\ & (\G17|ram~103_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~451_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~451_combout\ & (\G17|ram~119_q\)) # (\G17|ram~451_combout\ & ((\G17|ram~135_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~103_q\,
	datac => \G17|ALT_INV_ram~119_q\,
	datad => \G17|ALT_INV_ram~135_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~451_combout\,
	datag => \G17|ALT_INV_ram~87_q\,
	combout => \G17|ram~305_combout\);

-- Location: LABCELL_X30_Y9_N48
\G17|ram~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~313_combout\ = ( \G17|ram~309_combout\ & ( \G17|ram~305_combout\ & ( (!\G16|Mux11~5_combout\) # ((\G17|ram~279_q\ & \G17|ram~303_combout\)) ) ) ) # ( !\G17|ram~309_combout\ & ( \G17|ram~305_combout\ & ( (!\G16|Mux12~2_combout\ & 
-- ((!\G16|Mux11~5_combout\) # ((\G17|ram~279_q\ & \G17|ram~303_combout\)))) # (\G16|Mux12~2_combout\ & (\G17|ram~279_q\ & ((\G17|ram~303_combout\)))) ) ) ) # ( \G17|ram~309_combout\ & ( !\G17|ram~305_combout\ & ( (!\G16|Mux12~2_combout\ & (\G17|ram~279_q\ & 
-- ((\G17|ram~303_combout\)))) # (\G16|Mux12~2_combout\ & ((!\G16|Mux11~5_combout\) # ((\G17|ram~279_q\ & \G17|ram~303_combout\)))) ) ) ) # ( !\G17|ram~309_combout\ & ( !\G17|ram~305_combout\ & ( (\G17|ram~279_q\ & \G17|ram~303_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010100000111001110100000101100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G17|ALT_INV_ram~279_q\,
	datac => \G16|ALT_INV_Mux11~5_combout\,
	datad => \G17|ALT_INV_ram~303_combout\,
	datae => \G17|ALT_INV_ram~309_combout\,
	dataf => \G17|ALT_INV_ram~305_combout\,
	combout => \G17|ram~313_combout\);

-- Location: FF_X30_Y9_N49
\G18|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~313_combout\,
	asdata => \G16|Mux14~2_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(1));

-- Location: FF_X34_Y8_N38
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~133_q\);

-- Location: FF_X34_Y8_N29
\G7|Reg~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(1),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~69_q\);

-- Location: MLABCELL_X34_Y8_N24
\G7|Reg~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~183_combout\ = ( \G7|Reg~21_q\ & ( (\G4|rd[0]~reg0DUPLICATE_q\ & (\G4|rd[0]~enDUPLICATE_q\ & !\G7|Reg~69_q\)) ) ) # ( !\G7|Reg~21_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & ((!\G4|rd[0]~reg0DUPLICATE_q\) # (!\G7|Reg~69_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0DUPLICATE_q\,
	datab => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~69_q\,
	dataf => \G7|ALT_INV_Reg~21_q\,
	combout => \G7|Reg~183_combout\);

-- Location: MLABCELL_X34_Y8_N42
\G7|Reg~215\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~215_combout\ = ( \G7|Reg~183_combout\ & ( (!\G4|rd[0]~enDUPLICATE_q\ & \G7|Reg~117_q\) ) ) # ( !\G7|Reg~183_combout\ & ( (\G7|Reg~133_q\) # (\G4|rd[0]~enDUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~133_q\,
	datad => \G7|ALT_INV_Reg~117_q\,
	dataf => \G7|ALT_INV_Reg~183_combout\,
	combout => \G7|Reg~215_combout\);

-- Location: MLABCELL_X34_Y8_N48
\G16|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~2_combout\ = ( \G16|Add2~1_sumout\ & ( \G16|Mux0~0_combout\ & ( (!\G15|SAIDA\(0) & (!\G15|SAIDA[2]~DUPLICATE_q\ & (\G14|SAIDA[0]~DUPLICATE_q\ & \G15|SAIDA\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(0),
	datab => \G15|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	datac => \G14|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datad => \G15|ALT_INV_SAIDA\(1),
	datae => \G16|ALT_INV_Add2~1_sumout\,
	dataf => \G16|ALT_INV_Mux0~0_combout\,
	combout => \G16|Mux15~2_combout\);

-- Location: LABCELL_X33_Y8_N6
\G17|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~571_combout\ = ( \G16|Mux14~5_combout\ & ( (!\G16|Mux14~0_combout\ & ((!\G16|Mux15~8_combout\) # (\G16|Mux15~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Mux15~8_combout\,
	dataf => \G16|ALT_INV_Mux14~5_combout\,
	combout => \G17|ram~571_combout\);

-- Location: MLABCELL_X28_Y8_N57
\G17|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~572_combout\ = ( !\G16|Mux12~2_combout\ & ( \G16|Mux13~2_combout\ & ( (!\G16|Mux11~4_combout\ & (\G17|ram~449_combout\ & (!\G16|Mux11~0_combout\ & \G17|ram~571_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~4_combout\,
	datab => \G17|ALT_INV_ram~449_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G17|ALT_INV_ram~571_combout\,
	datae => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	combout => \G17|ram~572_combout\);

-- Location: FF_X27_Y8_N14
\G17|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~200_combout\,
	sload => VCC,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~102_q\);

-- Location: LABCELL_X27_Y9_N42
\G17|ram~118feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~118feeder_combout\ = ( \G7|Reg~200_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~200_combout\,
	combout => \G17|ram~118feeder_combout\);

-- Location: FF_X27_Y9_N44
\G17|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~118feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~118_q\);

-- Location: FF_X30_Y9_N44
\G17|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~200_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~134_q\);

-- Location: LABCELL_X31_Y9_N15
\G17|ram~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~38feeder_combout\ = ( \G7|Reg~200_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~200_combout\,
	combout => \G17|ram~38feeder_combout\);

-- Location: FF_X31_Y9_N16
\G17|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~38feeder_combout\,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~38_q\);

-- Location: FF_X31_Y9_N25
\G17|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~200_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~70_q\);

-- Location: LABCELL_X31_Y9_N54
\G17|ram~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~54feeder_combout\ = ( \G7|Reg~200_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~200_combout\,
	combout => \G17|ram~54feeder_combout\);

-- Location: FF_X31_Y9_N56
\G17|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~54feeder_combout\,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~54_q\);

-- Location: LABCELL_X30_Y6_N45
\G17|ram~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~22feeder_combout\ = ( \G7|Reg~200_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~200_combout\,
	combout => \G17|ram~22feeder_combout\);

-- Location: FF_X30_Y6_N46
\G17|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~22feeder_combout\,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~22_q\);

-- Location: LABCELL_X31_Y9_N24
\G17|ram~440\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~440_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~22_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~38_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~54_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~70_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~38_q\,
	datab => \G17|ALT_INV_ram~70_q\,
	datac => \G17|ALT_INV_ram~54_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	datag => \G17|ALT_INV_ram~22_q\,
	combout => \G17|ram~440_combout\);

-- Location: LABCELL_X27_Y9_N51
\G17|ram~86feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~86feeder_combout\ = ( \G7|Reg~200_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~200_combout\,
	combout => \G17|ram~86feeder_combout\);

-- Location: FF_X27_Y9_N52
\G17|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~86feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~86_q\);

-- Location: LABCELL_X30_Y9_N42
\G17|ram~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~294_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~440_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~440_combout\ & ((\G17|ram~86_q\))) # (\G17|ram~440_combout\ & (\G17|ram~102_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~440_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~440_combout\ & (\G17|ram~118_q\)) # (\G17|ram~440_combout\ & ((\G17|ram~134_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~102_q\,
	datac => \G17|ALT_INV_ram~118_q\,
	datad => \G17|ALT_INV_ram~134_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~440_combout\,
	datag => \G17|ALT_INV_ram~86_q\,
	combout => \G17|ram~294_combout\);

-- Location: FF_X30_Y9_N41
\G17|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~200_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~262_q\);

-- Location: FF_X25_Y8_N23
\G17|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~200_combout\,
	sload => VCC,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~246_q\);

-- Location: LABCELL_X29_Y9_N36
\G17|ram~230feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~230feeder_combout\ = \G7|Reg~200_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~200_combout\,
	combout => \G17|ram~230feeder_combout\);

-- Location: FF_X29_Y9_N37
\G17|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~230feeder_combout\,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~230_q\);

-- Location: FF_X30_Y7_N37
\G17|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~200_combout\,
	sload => VCC,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~166_q\);

-- Location: FF_X30_Y7_N44
\G17|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~200_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~198_q\);

-- Location: LABCELL_X30_Y5_N12
\G17|ram~182feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~182feeder_combout\ = ( \G7|Reg~200_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~200_combout\,
	combout => \G17|ram~182feeder_combout\);

-- Location: FF_X30_Y5_N13
\G17|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~182feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~182_q\);

-- Location: LABCELL_X31_Y6_N39
\G17|ram~150feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~150feeder_combout\ = ( \G7|Reg~200_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~200_combout\,
	combout => \G17|ram~150feeder_combout\);

-- Location: FF_X31_Y6_N40
\G17|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~150feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~150_q\);

-- Location: LABCELL_X30_Y9_N18
\G17|ram~444\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~444_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~150_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~166_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~182_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~198_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~166_q\,
	datab => \G17|ALT_INV_ram~198_q\,
	datac => \G17|ALT_INV_ram~182_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~150_q\,
	combout => \G17|ram~444_combout\);

-- Location: LABCELL_X29_Y7_N57
\G17|ram~214feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~214feeder_combout\ = \G7|Reg~200_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~200_combout\,
	combout => \G17|ram~214feeder_combout\);

-- Location: FF_X29_Y7_N59
\G17|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~214feeder_combout\,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~214_q\);

-- Location: LABCELL_X30_Y9_N39
\G17|ram~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~298_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~444_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~444_combout\ & (\G17|ram~214_q\)) # (\G17|ram~444_combout\ & ((\G17|ram~230_q\)))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~444_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~444_combout\ & ((\G17|ram~246_q\))) # (\G17|ram~444_combout\ & (\G17|ram~262_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~262_q\,
	datac => \G17|ALT_INV_ram~246_q\,
	datad => \G17|ALT_INV_ram~230_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~444_combout\,
	datag => \G17|ALT_INV_ram~214_q\,
	combout => \G17|ram~298_combout\);

-- Location: LABCELL_X30_Y9_N9
\G17|ram~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~304_combout\ = ( \G17|ram~294_combout\ & ( \G17|ram~298_combout\ & ( (!\G16|Mux11~5_combout\) # ((\G17|ram~278_q\ & \G17|ram~303_combout\)) ) ) ) # ( !\G17|ram~294_combout\ & ( \G17|ram~298_combout\ & ( (!\G16|Mux12~2_combout\ & (\G17|ram~278_q\ 
-- & (\G17|ram~303_combout\))) # (\G16|Mux12~2_combout\ & ((!\G16|Mux11~5_combout\) # ((\G17|ram~278_q\ & \G17|ram~303_combout\)))) ) ) ) # ( \G17|ram~294_combout\ & ( !\G17|ram~298_combout\ & ( (!\G16|Mux12~2_combout\ & ((!\G16|Mux11~5_combout\) # 
-- ((\G17|ram~278_q\ & \G17|ram~303_combout\)))) # (\G16|Mux12~2_combout\ & (\G17|ram~278_q\ & (\G17|ram~303_combout\))) ) ) ) # ( !\G17|ram~294_combout\ & ( !\G17|ram~298_combout\ & ( (\G17|ram~278_q\ & \G17|ram~303_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011101010110000001101010111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G17|ALT_INV_ram~278_q\,
	datac => \G17|ALT_INV_ram~303_combout\,
	datad => \G16|ALT_INV_Mux11~5_combout\,
	datae => \G17|ALT_INV_ram~294_combout\,
	dataf => \G17|ALT_INV_ram~298_combout\,
	combout => \G17|ram~304_combout\);

-- Location: FF_X30_Y9_N10
\G18|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~304_combout\,
	asdata => \G16|Mux15~4_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(0));

-- Location: FF_X35_Y8_N49
\G7|Reg~132DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(0),
	sload => VCC,
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~132DUPLICATE_q\);

-- Location: FF_X36_Y8_N2
\G7|Reg~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(0),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~36_q\);

-- Location: LABCELL_X36_Y8_N0
\G7|Reg~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~168_combout\ = ( \G4|rt[0]~reg0_q\ & ( (\G4|rs[0]~en_q\ & !\G7|Reg~36_q\) ) ) # ( !\G4|rt[0]~reg0_q\ & ( (!\G7|Reg~20_q\ & \G4|rs[0]~en_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~20_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	datad => \G7|ALT_INV_Reg~36_q\,
	dataf => \G4|ALT_INV_rt[0]~reg0_q\,
	combout => \G7|Reg~168_combout\);

-- Location: FF_X35_Y8_N55
\G7|Reg~116DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(0),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~116DUPLICATE_q\);

-- Location: LABCELL_X36_Y8_N48
\G7|Reg~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~200_combout\ = ( \G7|Reg~116DUPLICATE_q\ & ( (!\G4|rs[0]~en_q\ & ((\G7|Reg~168_combout\) # (\G7|Reg~132DUPLICATE_q\))) # (\G4|rs[0]~en_q\ & ((!\G7|Reg~168_combout\))) ) ) # ( !\G7|Reg~116DUPLICATE_q\ & ( (!\G7|Reg~168_combout\ & ((\G4|rs[0]~en_q\) 
-- # (\G7|Reg~132DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000001011111111100000101111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~132DUPLICATE_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	datad => \G7|ALT_INV_Reg~168_combout\,
	dataf => \G7|ALT_INV_Reg~116DUPLICATE_q\,
	combout => \G7|Reg~200_combout\);

-- Location: LABCELL_X31_Y7_N48
\G14|SAIDA[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[0]~feeder_combout\ = ( \G7|Reg~200_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~200_combout\,
	combout => \G14|SAIDA[0]~feeder_combout\);

-- Location: FF_X31_Y7_N50
\G14|SAIDA[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[0]~feeder_combout\,
	asdata => \G8|SAIDA\(0),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA[0]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y7_N18
\G16|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~1_combout\ = ( !\G15|SAIDA[0]~DUPLICATE_q\ & ( \G15|SAIDA[1]~DUPLICATE_q\ & ( \G14|SAIDA[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datae => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	dataf => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	combout => \G16|Mux11~1_combout\);

-- Location: FF_X35_Y9_N50
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~137_q\);

-- Location: LABCELL_X36_Y9_N12
\G7|Reg~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~25feeder_combout\ = ( \G18|SAIDA\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G18|ALT_INV_SAIDA\(5),
	combout => \G7|Reg~25feeder_combout\);

-- Location: FF_X36_Y9_N14
\G7|Reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G7|Reg~25feeder_combout\,
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~25_q\);

-- Location: FF_X34_Y9_N20
\G7|Reg~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(5),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~41_q\);

-- Location: MLABCELL_X34_Y9_N18
\G7|Reg~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~163_combout\ = ( \G7|Reg~41_q\ & ( \G4|rs[0]~en_q\ & ( (!\G4|rt[0]~reg0_q\ & !\G7|Reg~25_q\) ) ) ) # ( !\G7|Reg~41_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~25_q\) # (\G4|rt[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110011111100111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~25_q\,
	datae => \G7|ALT_INV_Reg~41_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~163_combout\);

-- Location: LABCELL_X35_Y9_N15
\G7|Reg~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~195_combout\ = ( \G4|rs[0]~en_q\ & ( !\G7|Reg~163_combout\ ) ) # ( !\G4|rs[0]~en_q\ & ( (!\G7|Reg~163_combout\ & (\G7|Reg~137_q\)) # (\G7|Reg~163_combout\ & ((\G7|Reg~121_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~137_q\,
	datac => \G7|ALT_INV_Reg~163_combout\,
	datad => \G7|ALT_INV_Reg~121_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~195_combout\);

-- Location: FF_X29_Y7_N22
\G17|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~195_combout\,
	sload => VCC,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~235_q\);

-- Location: MLABCELL_X25_Y8_N12
\G17|ram~251feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~251feeder_combout\ = ( \G7|Reg~195_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~195_combout\,
	combout => \G17|ram~251feeder_combout\);

-- Location: FF_X25_Y8_N13
\G17|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~251feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~251_q\);

-- Location: FF_X37_Y8_N8
\G17|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~195_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~267_q\);

-- Location: LABCELL_X31_Y7_N45
\G17|ram~203feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~203feeder_combout\ = ( \G7|Reg~195_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~195_combout\,
	combout => \G17|ram~203feeder_combout\);

-- Location: FF_X31_Y7_N46
\G17|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~203feeder_combout\,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~203_q\);

-- Location: LABCELL_X27_Y7_N51
\G17|ram~171feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~171feeder_combout\ = ( \G7|Reg~195_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~195_combout\,
	combout => \G17|ram~171feeder_combout\);

-- Location: FF_X27_Y7_N53
\G17|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~171feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~171_q\);

-- Location: FF_X30_Y5_N46
\G17|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~195_combout\,
	sload => VCC,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~187_q\);

-- Location: LABCELL_X31_Y6_N48
\G17|ram~155feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~155feeder_combout\ = ( \G7|Reg~195_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~195_combout\,
	combout => \G17|ram~155feeder_combout\);

-- Location: FF_X31_Y6_N49
\G17|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~155feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~155_q\);

-- Location: LABCELL_X37_Y8_N24
\G17|ram~487\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~487_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~155_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~171_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~187_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~203_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~203_q\,
	datab => \G17|ALT_INV_ram~171_q\,
	datac => \G17|ALT_INV_ram~187_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~155_q\,
	combout => \G17|ram~487_combout\);

-- Location: LABCELL_X29_Y7_N0
\G17|ram~219feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~219feeder_combout\ = \G7|Reg~195_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~195_combout\,
	combout => \G17|ram~219feeder_combout\);

-- Location: FF_X29_Y7_N2
\G17|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~219feeder_combout\,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~219_q\);

-- Location: LABCELL_X37_Y8_N6
\G17|ram~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~345_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~487_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~487_combout\ & ((\G17|ram~219_q\))) # (\G17|ram~487_combout\ & (\G17|ram~235_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~487_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~487_combout\ & (\G17|ram~251_q\)) # (\G17|ram~487_combout\ & ((\G17|ram~267_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~235_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~251_q\,
	datad => \G17|ALT_INV_ram~267_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~487_combout\,
	datag => \G17|ALT_INV_ram~219_q\,
	combout => \G17|ram~345_combout\);

-- Location: FF_X30_Y6_N26
\G17|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~195_combout\,
	sload => VCC,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~283_q\);

-- Location: LABCELL_X27_Y8_N33
\G17|ram~107feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~107feeder_combout\ = ( \G7|Reg~195_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~195_combout\,
	combout => \G17|ram~107feeder_combout\);

-- Location: FF_X27_Y8_N34
\G17|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~107feeder_combout\,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~107_q\);

-- Location: FF_X27_Y7_N29
\G17|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~195_combout\,
	sload => VCC,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~123_q\);

-- Location: FF_X37_Y8_N13
\G17|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~195_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~139_q\);

-- Location: FF_X27_Y8_N26
\G17|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~195_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~75_q\);

-- Location: FF_X33_Y8_N19
\G17|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~195_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~43_q\);

-- Location: LABCELL_X27_Y8_N3
\G17|ram~59feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~59feeder_combout\ = ( \G7|Reg~195_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~195_combout\,
	combout => \G17|ram~59feeder_combout\);

-- Location: FF_X27_Y8_N5
\G17|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~59feeder_combout\,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~59_q\);

-- Location: LABCELL_X30_Y6_N3
\G17|ram~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~27feeder_combout\ = ( \G7|Reg~195_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~195_combout\,
	combout => \G17|ram~27feeder_combout\);

-- Location: FF_X30_Y6_N4
\G17|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~27feeder_combout\,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~27_q\);

-- Location: LABCELL_X27_Y8_N24
\G17|ram~483\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~483_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~27_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~43_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~59_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~75_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~75_q\,
	datab => \G17|ALT_INV_ram~43_q\,
	datac => \G17|ALT_INV_ram~59_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~27_q\,
	combout => \G17|ram~483_combout\);

-- Location: MLABCELL_X28_Y6_N48
\G17|ram~91feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~91feeder_combout\ = ( \G7|Reg~195_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~195_combout\,
	combout => \G17|ram~91feeder_combout\);

-- Location: FF_X28_Y6_N49
\G17|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~91feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~91_q\);

-- Location: LABCELL_X37_Y8_N12
\G17|ram~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~341_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~483_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~483_combout\ & ((\G17|ram~91_q\))) # (\G17|ram~483_combout\ & (\G17|ram~107_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~483_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~483_combout\ & (\G17|ram~123_q\)) # (\G17|ram~483_combout\ & ((\G17|ram~139_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~107_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~123_q\,
	datad => \G17|ALT_INV_ram~139_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~483_combout\,
	datag => \G17|ALT_INV_ram~91_q\,
	combout => \G17|ram~341_combout\);

-- Location: LABCELL_X37_Y8_N36
\G17|ram~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~349_combout\ = ( \G16|Mux11~5_combout\ & ( \G17|ram~341_combout\ & ( (\G17|ram~283_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( \G17|ram~341_combout\ & ( ((!\G16|Mux12~2_combout\) # ((\G17|ram~283_q\ & \G17|ram~303_combout\))) 
-- # (\G17|ram~345_combout\) ) ) ) # ( \G16|Mux11~5_combout\ & ( !\G17|ram~341_combout\ & ( (\G17|ram~283_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( !\G17|ram~341_combout\ & ( (!\G17|ram~345_combout\ & (\G17|ram~283_q\ & 
-- (\G17|ram~303_combout\))) # (\G17|ram~345_combout\ & (((\G17|ram~283_q\ & \G17|ram~303_combout\)) # (\G16|Mux12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110000001111111111010101110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~345_combout\,
	datab => \G17|ALT_INV_ram~283_q\,
	datac => \G17|ALT_INV_ram~303_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	datae => \G16|ALT_INV_Mux11~5_combout\,
	dataf => \G17|ALT_INV_ram~341_combout\,
	combout => \G17|ram~349_combout\);

-- Location: LABCELL_X33_Y8_N39
\G14|SAIDA[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[5]~feeder_combout\ = \G7|Reg~195_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~195_combout\,
	combout => \G14|SAIDA[5]~feeder_combout\);

-- Location: FF_X33_Y8_N40
\G14|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[5]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(5));

-- Location: LABCELL_X37_Y8_N51
\G16|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~2_combout\ = ( \G7|Reg~211_combout\ & ( \G14|SAIDA\(5) & ( (!\G15|SAIDA[0]~DUPLICATE_q\ & (\G16|Mux0~0_combout\ & !\G15|SAIDA[1]~DUPLICATE_q\)) # (\G15|SAIDA[0]~DUPLICATE_q\ & ((\G15|SAIDA[1]~DUPLICATE_q\))) ) ) ) # ( !\G7|Reg~211_combout\ & ( 
-- \G14|SAIDA\(5) & ( (!\G15|SAIDA[0]~DUPLICATE_q\ & (\G16|Mux0~0_combout\ & !\G15|SAIDA[1]~DUPLICATE_q\)) ) ) ) # ( \G7|Reg~211_combout\ & ( !\G14|SAIDA\(5) & ( (!\G15|SAIDA[0]~DUPLICATE_q\ & (\G16|Mux0~0_combout\ & !\G15|SAIDA[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000000000001010000000000000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datac => \G16|ALT_INV_Mux0~0_combout\,
	datad => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datae => \G7|ALT_INV_Reg~211_combout\,
	dataf => \G14|ALT_INV_SAIDA\(5),
	combout => \G16|Mux10~2_combout\);

-- Location: LABCELL_X31_Y8_N9
\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( \G7|Reg~213_combout\ ) + ( \G14|SAIDA[3]~DUPLICATE_q\ ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( \G7|Reg~213_combout\ ) + ( \G14|SAIDA[3]~DUPLICATE_q\ ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[3]~DUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~213_combout\,
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

-- Location: LABCELL_X31_Y8_N12
\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( \G7|Reg~212_combout\ ) + ( \G14|SAIDA\(4) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( \G7|Reg~212_combout\ ) + ( \G14|SAIDA\(4) ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA\(4),
	datad => \G7|ALT_INV_Reg~212_combout\,
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

-- Location: LABCELL_X31_Y8_N15
\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( \G7|Reg~211_combout\ ) + ( \G14|SAIDA\(5) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( \G7|Reg~211_combout\ ) + ( \G14|SAIDA\(5) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(5),
	datad => \G7|ALT_INV_Reg~211_combout\,
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

-- Location: FF_X33_Y6_N1
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~26_q\);

-- Location: FF_X33_Y6_N35
\G7|Reg~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(6),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~42_q\);

-- Location: LABCELL_X33_Y6_N33
\G7|Reg~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~162_combout\ = ( \G7|Reg~42_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~26_q\ & !\G4|rt[0]~reg0_q\) ) ) ) # ( !\G7|Reg~42_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~26_q\) # (\G4|rt[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~26_q\,
	datac => \G4|ALT_INV_rt[0]~reg0_q\,
	datae => \G7|ALT_INV_Reg~42_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~162_combout\);

-- Location: FF_X34_Y6_N2
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~138_q\);

-- Location: FF_X34_Y6_N31
\G7|Reg~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(6),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~122_q\);

-- Location: LABCELL_X33_Y6_N0
\G7|Reg~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~194_combout\ = ( \G7|Reg~122_q\ & ( \G4|rs[0]~en_q\ & ( !\G7|Reg~162_combout\ ) ) ) # ( !\G7|Reg~122_q\ & ( \G4|rs[0]~en_q\ & ( !\G7|Reg~162_combout\ ) ) ) # ( \G7|Reg~122_q\ & ( !\G4|rs[0]~en_q\ & ( (\G7|Reg~138_q\) # (\G7|Reg~162_combout\) ) ) ) 
-- # ( !\G7|Reg~122_q\ & ( !\G4|rs[0]~en_q\ & ( (!\G7|Reg~162_combout\ & \G7|Reg~138_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~162_combout\,
	datac => \G7|ALT_INV_Reg~138_q\,
	datae => \G7|ALT_INV_Reg~122_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~194_combout\);

-- Location: FF_X29_Y6_N35
\G17|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~194_combout\,
	sload => VCC,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~284_q\);

-- Location: FF_X29_Y7_N50
\G17|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~194_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~268_q\);

-- Location: FF_X25_Y8_N17
\G17|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~194_combout\,
	sload => VCC,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~252_q\);

-- Location: FF_X29_Y7_N44
\G17|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~194_combout\,
	sload => VCC,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~236_q\);

-- Location: LABCELL_X27_Y7_N33
\G17|ram~172feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~172feeder_combout\ = ( \G7|Reg~194_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~194_combout\,
	combout => \G17|ram~172feeder_combout\);

-- Location: FF_X27_Y7_N34
\G17|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~172feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~172_q\);

-- Location: FF_X30_Y7_N32
\G17|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~194_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~204_q\);

-- Location: LABCELL_X30_Y5_N9
\G17|ram~188feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~188feeder_combout\ = ( \G7|Reg~194_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~194_combout\,
	combout => \G17|ram~188feeder_combout\);

-- Location: FF_X30_Y5_N11
\G17|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~188feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~188_q\);

-- Location: LABCELL_X30_Y5_N48
\G17|ram~156feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~156feeder_combout\ = ( \G7|Reg~194_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~194_combout\,
	combout => \G17|ram~156feeder_combout\);

-- Location: FF_X30_Y5_N49
\G17|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~156feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~156_q\);

-- Location: LABCELL_X30_Y7_N30
\G17|ram~495\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~495_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~156_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~172_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~188_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~204_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~172_q\,
	datab => \G17|ALT_INV_ram~204_q\,
	datac => \G17|ALT_INV_ram~188_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~156_q\,
	combout => \G17|ram~495_combout\);

-- Location: FF_X29_Y7_N56
\G17|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~194_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~220_q\);

-- Location: LABCELL_X29_Y7_N48
\G17|ram~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~354_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~495_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~495_combout\ & (\G17|ram~220_q\)) # (\G17|ram~495_combout\ & ((\G17|ram~236_q\)))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~495_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~495_combout\ & ((\G17|ram~252_q\))) # (\G17|ram~495_combout\ & (\G17|ram~268_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~268_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~252_q\,
	datad => \G17|ALT_INV_ram~236_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~495_combout\,
	datag => \G17|ALT_INV_ram~220_q\,
	combout => \G17|ram~354_combout\);

-- Location: FF_X28_Y7_N26
\G17|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~194_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~140_q\);

-- Location: LABCELL_X27_Y8_N36
\G17|ram~108feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~108feeder_combout\ = \G7|Reg~194_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~194_combout\,
	combout => \G17|ram~108feeder_combout\);

-- Location: FF_X27_Y8_N37
\G17|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~108feeder_combout\,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~108_q\);

-- Location: LABCELL_X27_Y7_N24
\G17|ram~124feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~124feeder_combout\ = \G7|Reg~194_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~194_combout\,
	combout => \G17|ram~124feeder_combout\);

-- Location: FF_X27_Y7_N25
\G17|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~124feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~124_q\);

-- Location: FF_X27_Y8_N20
\G17|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~194_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~76_q\);

-- Location: LABCELL_X31_Y9_N45
\G17|ram~44feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~44feeder_combout\ = ( \G7|Reg~194_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~194_combout\,
	combout => \G17|ram~44feeder_combout\);

-- Location: FF_X31_Y9_N47
\G17|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~44feeder_combout\,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~44_q\);

-- Location: LABCELL_X27_Y8_N0
\G17|ram~60feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~60feeder_combout\ = \G7|Reg~194_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~194_combout\,
	combout => \G17|ram~60feeder_combout\);

-- Location: FF_X27_Y8_N1
\G17|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~60feeder_combout\,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~60_q\);

-- Location: FF_X30_Y6_N7
\G17|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~194_combout\,
	sload => VCC,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~28_q\);

-- Location: LABCELL_X27_Y8_N18
\G17|ram~491\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~491_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~28_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~44_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~60_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~76_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~76_q\,
	datab => \G17|ALT_INV_ram~44_q\,
	datac => \G17|ALT_INV_ram~60_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~28_q\,
	combout => \G17|ram~491_combout\);

-- Location: LABCELL_X27_Y7_N6
\G17|ram~92feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~92feeder_combout\ = ( \G7|Reg~194_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~194_combout\,
	combout => \G17|ram~92feeder_combout\);

-- Location: FF_X27_Y7_N8
\G17|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~92feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~92_q\);

-- Location: MLABCELL_X28_Y7_N24
\G17|ram~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~350_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~491_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~491_combout\ & ((\G17|ram~92_q\))) # (\G17|ram~491_combout\ & (\G17|ram~108_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~491_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~491_combout\ & ((\G17|ram~124_q\))) # (\G17|ram~491_combout\ & (\G17|ram~140_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~140_q\,
	datab => \G17|ALT_INV_ram~108_q\,
	datac => \G17|ALT_INV_ram~124_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~491_combout\,
	datag => \G17|ALT_INV_ram~92_q\,
	combout => \G17|ram~350_combout\);

-- Location: MLABCELL_X28_Y7_N48
\G17|ram~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~358_combout\ = ( \G16|Mux11~5_combout\ & ( \G17|ram~350_combout\ & ( (\G17|ram~284_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( \G17|ram~350_combout\ & ( (!\G16|Mux12~2_combout\) # (((\G17|ram~284_q\ & \G17|ram~303_combout\)) 
-- # (\G17|ram~354_combout\)) ) ) ) # ( \G16|Mux11~5_combout\ & ( !\G17|ram~350_combout\ & ( (\G17|ram~284_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( !\G17|ram~350_combout\ & ( (!\G16|Mux12~2_combout\ & (\G17|ram~284_q\ & 
-- (\G17|ram~303_combout\))) # (\G16|Mux12~2_combout\ & (((\G17|ram~284_q\ & \G17|ram~303_combout\)) # (\G17|ram~354_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110000001110101011111111110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G17|ALT_INV_ram~284_q\,
	datac => \G17|ALT_INV_ram~303_combout\,
	datad => \G17|ALT_INV_ram~354_combout\,
	datae => \G16|ALT_INV_Mux11~5_combout\,
	dataf => \G17|ALT_INV_ram~350_combout\,
	combout => \G17|ram~358_combout\);

-- Location: LABCELL_X31_Y7_N30
\G14|SAIDA[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[6]~feeder_combout\ = ( \G7|Reg~194_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~194_combout\,
	combout => \G14|SAIDA[6]~feeder_combout\);

-- Location: FF_X31_Y7_N31
\G14|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[6]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(6));

-- Location: LABCELL_X31_Y7_N0
\G16|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~1_combout\ = ( \G15|SAIDA[0]~DUPLICATE_q\ & ( \G7|Reg~210_combout\ & ( (\G15|SAIDA[1]~DUPLICATE_q\ & \G14|SAIDA\(6)) ) ) ) # ( !\G15|SAIDA[0]~DUPLICATE_q\ & ( \G7|Reg~210_combout\ & ( (\G16|Mux0~0_combout\ & !\G15|SAIDA[1]~DUPLICATE_q\) ) ) ) # 
-- ( !\G15|SAIDA[0]~DUPLICATE_q\ & ( !\G7|Reg~210_combout\ & ( (\G16|Mux0~0_combout\ & (!\G15|SAIDA[1]~DUPLICATE_q\ & \G14|SAIDA\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000001000100010001000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux0~0_combout\,
	datab => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datac => \G14|ALT_INV_SAIDA\(6),
	datae => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	dataf => \G7|ALT_INV_Reg~210_combout\,
	combout => \G16|Mux9~1_combout\);

-- Location: LABCELL_X31_Y8_N18
\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( \G7|Reg~210_combout\ ) + ( \G14|SAIDA\(6) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( \G7|Reg~210_combout\ ) + ( \G14|SAIDA\(6) ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(6),
	datad => \G7|ALT_INV_Reg~210_combout\,
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

-- Location: FF_X34_Y6_N53
\G7|Reg~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(7),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~123_q\);

-- Location: FF_X34_Y6_N46
\G7|Reg~139DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(7),
	sload => VCC,
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~139DUPLICATE_q\);

-- Location: FF_X33_Y6_N25
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~27_q\);

-- Location: FF_X33_Y6_N56
\G7|Reg~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(7),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~43_q\);

-- Location: LABCELL_X33_Y6_N54
\G7|Reg~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~161_combout\ = ( \G7|Reg~43_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~27_q\ & !\G4|rt[0]~reg0_q\) ) ) ) # ( !\G7|Reg~43_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~27_q\) # (\G4|rt[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100111111111100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~27_q\,
	datad => \G4|ALT_INV_rt[0]~reg0_q\,
	datae => \G7|ALT_INV_Reg~43_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~161_combout\);

-- Location: LABCELL_X33_Y6_N27
\G7|Reg~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~193_combout\ = ( !\G7|Reg~161_combout\ & ( \G4|rs[0]~en_q\ ) ) # ( \G7|Reg~161_combout\ & ( !\G4|rs[0]~en_q\ & ( \G7|Reg~123_q\ ) ) ) # ( !\G7|Reg~161_combout\ & ( !\G4|rs[0]~en_q\ & ( \G7|Reg~139DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~123_q\,
	datac => \G7|ALT_INV_Reg~139DUPLICATE_q\,
	datae => \G7|ALT_INV_Reg~161_combout\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~193_combout\);

-- Location: LABCELL_X29_Y6_N3
\G17|ram~285feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~285feeder_combout\ = ( \G7|Reg~193_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~193_combout\,
	combout => \G17|ram~285feeder_combout\);

-- Location: FF_X29_Y6_N4
\G17|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~285feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~285_q\);

-- Location: FF_X29_Y8_N56
\G17|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~269_q\);

-- Location: MLABCELL_X25_Y8_N30
\G17|ram~253feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~253feeder_combout\ = ( \G7|Reg~193_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~193_combout\,
	combout => \G17|ram~253feeder_combout\);

-- Location: FF_X25_Y8_N32
\G17|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~253feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~253_q\);

-- Location: FF_X29_Y7_N14
\G17|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~237_q\);

-- Location: FF_X30_Y8_N13
\G17|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~205_q\);

-- Location: FF_X30_Y7_N13
\G17|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~173_q\);

-- Location: LABCELL_X30_Y5_N42
\G17|ram~189feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~189feeder_combout\ = ( \G7|Reg~193_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~193_combout\,
	combout => \G17|ram~189feeder_combout\);

-- Location: FF_X30_Y5_N44
\G17|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~189feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~189_q\);

-- Location: LABCELL_X31_Y6_N9
\G17|ram~157feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~157feeder_combout\ = ( \G7|Reg~193_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~193_combout\,
	combout => \G17|ram~157feeder_combout\);

-- Location: FF_X31_Y6_N11
\G17|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~157feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~157_q\);

-- Location: LABCELL_X30_Y8_N12
\G17|ram~503\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~503_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~157_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~173_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~189_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~205_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~205_q\,
	datab => \G17|ALT_INV_ram~173_q\,
	datac => \G17|ALT_INV_ram~189_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	datag => \G17|ALT_INV_ram~157_q\,
	combout => \G17|ram~503_combout\);

-- Location: FF_X29_Y7_N25
\G17|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~221_q\);

-- Location: LABCELL_X29_Y8_N54
\G17|ram~363\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~363_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~503_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~503_combout\ & (\G17|ram~221_q\)) # (\G17|ram~503_combout\ & ((\G17|ram~237_q\)))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~503_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~503_combout\ & ((\G17|ram~253_q\))) # (\G17|ram~503_combout\ & (\G17|ram~269_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~269_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~253_q\,
	datad => \G17|ALT_INV_ram~237_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~503_combout\,
	datag => \G17|ALT_INV_ram~221_q\,
	combout => \G17|ram~363_combout\);

-- Location: FF_X29_Y8_N20
\G17|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~141_q\);

-- Location: FF_X28_Y6_N46
\G17|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~125_q\);

-- Location: LABCELL_X27_Y8_N15
\G17|ram~109feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~109feeder_combout\ = ( \G7|Reg~193_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~193_combout\,
	combout => \G17|ram~109feeder_combout\);

-- Location: FF_X27_Y8_N16
\G17|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~109feeder_combout\,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~109_q\);

-- Location: FF_X25_Y8_N2
\G17|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~77_q\);

-- Location: FF_X30_Y6_N31
\G17|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~45_q\);

-- Location: FF_X30_Y8_N46
\G17|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~61_q\);

-- Location: FF_X30_Y6_N13
\G17|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~29_q\);

-- Location: MLABCELL_X25_Y8_N0
\G17|ram~499\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~499_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~29_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~45_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~61_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~77_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~77_q\,
	datab => \G17|ALT_INV_ram~45_q\,
	datac => \G17|ALT_INV_ram~61_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~29_q\,
	combout => \G17|ram~499_combout\);

-- Location: FF_X28_Y6_N52
\G17|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~193_combout\,
	sload => VCC,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~93_q\);

-- Location: LABCELL_X29_Y8_N18
\G17|ram~359\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~359_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~499_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~499_combout\ & (\G17|ram~93_q\)) # (\G17|ram~499_combout\ & ((\G17|ram~109_q\)))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~499_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~499_combout\ & ((\G17|ram~125_q\))) # (\G17|ram~499_combout\ & (\G17|ram~141_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~141_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~125_q\,
	datad => \G17|ALT_INV_ram~109_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~499_combout\,
	datag => \G17|ALT_INV_ram~93_q\,
	combout => \G17|ram~359_combout\);

-- Location: LABCELL_X29_Y8_N6
\G17|ram~367\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~367_combout\ = ( \G17|ram~363_combout\ & ( \G17|ram~359_combout\ & ( (!\G16|Mux11~5_combout\) # ((\G17|ram~303_combout\ & \G17|ram~285_q\)) ) ) ) # ( !\G17|ram~363_combout\ & ( \G17|ram~359_combout\ & ( (!\G17|ram~303_combout\ & 
-- (!\G16|Mux12~2_combout\ & ((!\G16|Mux11~5_combout\)))) # (\G17|ram~303_combout\ & (((!\G16|Mux12~2_combout\ & !\G16|Mux11~5_combout\)) # (\G17|ram~285_q\))) ) ) ) # ( \G17|ram~363_combout\ & ( !\G17|ram~359_combout\ & ( (!\G17|ram~303_combout\ & 
-- (\G16|Mux12~2_combout\ & ((!\G16|Mux11~5_combout\)))) # (\G17|ram~303_combout\ & (((\G16|Mux12~2_combout\ & !\G16|Mux11~5_combout\)) # (\G17|ram~285_q\))) ) ) ) # ( !\G17|ram~363_combout\ & ( !\G17|ram~359_combout\ & ( (\G17|ram~303_combout\ & 
-- \G17|ram~285_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101110000010111001101000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~303_combout\,
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G17|ALT_INV_ram~285_q\,
	datad => \G16|ALT_INV_Mux11~5_combout\,
	datae => \G17|ALT_INV_ram~363_combout\,
	dataf => \G17|ALT_INV_ram~359_combout\,
	combout => \G17|ram~367_combout\);

-- Location: MLABCELL_X34_Y7_N3
\G16|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~3_combout\ = ( \G15|SAIDA[0]~DUPLICATE_q\ & ( (\G16|Mux0~0_combout\ & (!\G15|SAIDA[1]~DUPLICATE_q\ & !\G15|SAIDA\(2))) ) ) # ( !\G15|SAIDA[0]~DUPLICATE_q\ & ( (\G16|Mux0~0_combout\ & (!\G15|SAIDA[1]~DUPLICATE_q\ & \G15|SAIDA\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux0~0_combout\,
	datab => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datad => \G15|ALT_INV_SAIDA\(2),
	dataf => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	combout => \G16|Mux0~3_combout\);

-- Location: MLABCELL_X34_Y7_N9
\G16|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~1_combout\ = ( \G15|SAIDA[0]~DUPLICATE_q\ & ( !\G15|SAIDA\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(2),
	dataf => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	combout => \G16|Mux0~1_combout\);

-- Location: MLABCELL_X34_Y7_N0
\G16|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~2_combout\ = ( \G16|Mux0~1_combout\ & ( (\G16|Mux0~0_combout\ & \G15|SAIDA[1]~DUPLICATE_q\) ) ) # ( !\G16|Mux0~1_combout\ & ( \G16|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux0~0_combout\,
	datab => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	dataf => \G16|ALT_INV_Mux0~1_combout\,
	combout => \G16|Mux0~2_combout\);

-- Location: LABCELL_X31_Y5_N12
\G14|SAIDA[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[7]~feeder_combout\ = ( \G7|Reg~193_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~193_combout\,
	combout => \G14|SAIDA[7]~feeder_combout\);

-- Location: FF_X31_Y5_N13
\G14|SAIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[7]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(7));

-- Location: LABCELL_X35_Y8_N12
\G16|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~17_sumout\ = SUM(( !\G14|SAIDA[4]~DUPLICATE_q\ $ (\G7|Reg~212_combout\) ) + ( \G16|Add1~15\ ) + ( \G16|Add1~14\ ))
-- \G16|Add1~18\ = CARRY(( !\G14|SAIDA[4]~DUPLICATE_q\ $ (\G7|Reg~212_combout\) ) + ( \G16|Add1~15\ ) + ( \G16|Add1~14\ ))
-- \G16|Add1~19\ = SHARE((!\G14|SAIDA[4]~DUPLICATE_q\ & \G7|Reg~212_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA[4]~DUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~212_combout\,
	cin => \G16|Add1~14\,
	sharein => \G16|Add1~15\,
	sumout => \G16|Add1~17_sumout\,
	cout => \G16|Add1~18\,
	shareout => \G16|Add1~19\);

-- Location: LABCELL_X35_Y8_N15
\G16|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~21_sumout\ = SUM(( !\G14|SAIDA\(5) $ (\G7|Reg~211_combout\) ) + ( \G16|Add1~19\ ) + ( \G16|Add1~18\ ))
-- \G16|Add1~22\ = CARRY(( !\G14|SAIDA\(5) $ (\G7|Reg~211_combout\) ) + ( \G16|Add1~19\ ) + ( \G16|Add1~18\ ))
-- \G16|Add1~23\ = SHARE((!\G14|SAIDA\(5) & \G7|Reg~211_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(5),
	datad => \G7|ALT_INV_Reg~211_combout\,
	cin => \G16|Add1~18\,
	sharein => \G16|Add1~19\,
	sumout => \G16|Add1~21_sumout\,
	cout => \G16|Add1~22\,
	shareout => \G16|Add1~23\);

-- Location: LABCELL_X35_Y8_N18
\G16|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~25_sumout\ = SUM(( !\G7|Reg~210_combout\ $ (\G14|SAIDA\(6)) ) + ( \G16|Add1~23\ ) + ( \G16|Add1~22\ ))
-- \G16|Add1~26\ = CARRY(( !\G7|Reg~210_combout\ $ (\G14|SAIDA\(6)) ) + ( \G16|Add1~23\ ) + ( \G16|Add1~22\ ))
-- \G16|Add1~27\ = SHARE((\G7|Reg~210_combout\ & !\G14|SAIDA\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~210_combout\,
	datac => \G14|ALT_INV_SAIDA\(6),
	cin => \G16|Add1~22\,
	sharein => \G16|Add1~23\,
	sumout => \G16|Add1~25_sumout\,
	cout => \G16|Add1~26\,
	shareout => \G16|Add1~27\);

-- Location: LABCELL_X35_Y8_N21
\G16|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~29_sumout\ = SUM(( !\G14|SAIDA\(7) $ (\G7|Reg~209_combout\) ) + ( \G16|Add1~27\ ) + ( \G16|Add1~26\ ))
-- \G16|Add1~30\ = CARRY(( !\G14|SAIDA\(7) $ (\G7|Reg~209_combout\) ) + ( \G16|Add1~27\ ) + ( \G16|Add1~26\ ))
-- \G16|Add1~31\ = SHARE((!\G14|SAIDA\(7) & \G7|Reg~209_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(7),
	datad => \G7|ALT_INV_Reg~209_combout\,
	cin => \G16|Add1~26\,
	sharein => \G16|Add1~27\,
	sumout => \G16|Add1~29_sumout\,
	cout => \G16|Add1~30\,
	shareout => \G16|Add1~31\);

-- Location: MLABCELL_X34_Y7_N6
\G16|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~4_combout\ = ( \G15|SAIDA[1]~DUPLICATE_q\ & ( (!\G15|SAIDA\(2) & \G15|SAIDA[0]~DUPLICATE_q\) ) ) # ( !\G15|SAIDA[1]~DUPLICATE_q\ & ( !\G15|SAIDA[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(2),
	datab => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	dataf => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	combout => \G16|Mux0~4_combout\);

-- Location: LABCELL_X31_Y8_N21
\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( \G14|SAIDA\(7) ) + ( \G7|Reg~209_combout\ ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( \G14|SAIDA\(7) ) + ( \G7|Reg~209_combout\ ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~209_combout\,
	datad => \G14|ALT_INV_SAIDA\(7),
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

-- Location: MLABCELL_X34_Y7_N24
\G16|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux8~0_combout\ = ( \G7|Reg~209_combout\ & ( \G16|Add0~29_sumout\ & ( ((\G16|Mux0~4_combout\ & ((!\G16|Mux0~1_combout\) # (\G14|SAIDA\(7))))) # (\G16|Mux0~3_combout\) ) ) ) # ( !\G7|Reg~209_combout\ & ( \G16|Add0~29_sumout\ & ( (!\G16|Mux0~3_combout\ 
-- & (\G16|Mux0~4_combout\ & ((!\G16|Mux0~1_combout\)))) # (\G16|Mux0~3_combout\ & (((\G14|SAIDA\(7))))) ) ) ) # ( \G7|Reg~209_combout\ & ( !\G16|Add0~29_sumout\ & ( ((\G16|Mux0~4_combout\ & (\G14|SAIDA\(7) & \G16|Mux0~1_combout\))) # (\G16|Mux0~3_combout\) 
-- ) ) ) # ( !\G7|Reg~209_combout\ & ( !\G16|Add0~29_sumout\ & ( (\G16|Mux0~3_combout\ & \G14|SAIDA\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101011100100111000001010111011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux0~3_combout\,
	datab => \G16|ALT_INV_Mux0~4_combout\,
	datac => \G14|ALT_INV_SAIDA\(7),
	datad => \G16|ALT_INV_Mux0~1_combout\,
	datae => \G7|ALT_INV_Reg~209_combout\,
	dataf => \G16|ALT_INV_Add0~29_sumout\,
	combout => \G16|Mux8~0_combout\);

-- Location: MLABCELL_X34_Y7_N15
\G16|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux8~1_combout\ = ( \G16|Add1~29_sumout\ & ( \G16|Mux8~0_combout\ & ( (\G16|Mux0~2_combout\) # (\G16|Mux0~3_combout\) ) ) ) # ( !\G16|Add1~29_sumout\ & ( \G16|Mux8~0_combout\ & ( \G16|Mux0~2_combout\ ) ) ) # ( \G16|Add1~29_sumout\ & ( 
-- !\G16|Mux8~0_combout\ & ( (\G16|Mux0~3_combout\ & !\G16|Mux0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Mux0~2_combout\,
	datae => \G16|ALT_INV_Add1~29_sumout\,
	dataf => \G16|ALT_INV_Mux8~0_combout\,
	combout => \G16|Mux8~1_combout\);

-- Location: FF_X29_Y8_N7
\G18|SAIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~367_combout\,
	asdata => \G16|Mux8~1_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(7));

-- Location: FF_X34_Y6_N47
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~139_q\);

-- Location: FF_X34_Y6_N59
\G7|Reg~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(7),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~75_q\);

-- Location: MLABCELL_X34_Y6_N15
\G7|Reg~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~177_combout\ = ( \G4|rd[0]~reg0_q\ & ( (!\G7|Reg~75_q\ & \G4|rd[0]~enDUPLICATE_q\) ) ) # ( !\G4|rd[0]~reg0_q\ & ( (!\G7|Reg~27_q\ & \G4|rd[0]~enDUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~27_q\,
	datac => \G7|ALT_INV_Reg~75_q\,
	datad => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~177_combout\);

-- Location: MLABCELL_X34_Y6_N51
\G7|Reg~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~209_combout\ = ( \G7|Reg~177_combout\ & ( (!\G4|rd[0]~enDUPLICATE_q\ & \G7|Reg~123_q\) ) ) # ( !\G7|Reg~177_combout\ & ( (\G7|Reg~139_q\) # (\G4|rd[0]~enDUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~139_q\,
	datad => \G7|ALT_INV_Reg~123_q\,
	dataf => \G7|ALT_INV_Reg~177_combout\,
	combout => \G7|Reg~209_combout\);

-- Location: MLABCELL_X34_Y8_N12
\G16|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~17_sumout\ = SUM(( !\G7|Reg~211_combout\ ) + ( GND ) + ( \G16|Add2~14\ ))
-- \G16|Add2~18\ = CARRY(( !\G7|Reg~211_combout\ ) + ( GND ) + ( \G16|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~211_combout\,
	cin => \G16|Add2~14\,
	sumout => \G16|Add2~17_sumout\,
	cout => \G16|Add2~18\);

-- Location: MLABCELL_X34_Y8_N15
\G16|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~21_sumout\ = SUM(( !\G7|Reg~210_combout\ ) + ( GND ) + ( \G16|Add2~18\ ))
-- \G16|Add2~22\ = CARRY(( !\G7|Reg~210_combout\ ) + ( GND ) + ( \G16|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Reg~210_combout\,
	cin => \G16|Add2~18\,
	sumout => \G16|Add2~21_sumout\,
	cout => \G16|Add2~22\);

-- Location: MLABCELL_X34_Y8_N18
\G16|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~25_sumout\ = SUM(( !\G7|Reg~209_combout\ ) + ( GND ) + ( \G16|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Reg~209_combout\,
	cin => \G16|Add2~22\,
	sumout => \G16|Add2~25_sumout\);

-- Location: LABCELL_X29_Y7_N42
\G16|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~0_combout\ = ( \G16|Add1~25_sumout\ & ( (\G16|Mux10~0_combout\ & (((!\G15|SAIDA[1]~DUPLICATE_q\) # (\G16|Add2~25_sumout\)) # (\G15|SAIDA[0]~DUPLICATE_q\))) ) ) # ( !\G16|Add1~25_sumout\ & ( (!\G15|SAIDA[0]~DUPLICATE_q\ & (\G16|Mux10~0_combout\ & 
-- (\G15|SAIDA[1]~DUPLICATE_q\ & \G16|Add2~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000110001001100110011000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datab => \G16|ALT_INV_Mux10~0_combout\,
	datac => \G15|ALT_INV_SAIDA[1]~DUPLICATE_q\,
	datad => \G16|ALT_INV_Add2~25_sumout\,
	dataf => \G16|ALT_INV_Add1~25_sumout\,
	combout => \G16|Mux9~0_combout\);

-- Location: LABCELL_X29_Y7_N24
\G16|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~2_combout\ = ( \G16|Mux15~6_combout\ & ( \G16|Mux9~0_combout\ ) ) # ( !\G16|Mux15~6_combout\ & ( \G16|Mux9~0_combout\ & ( (\G16|Mux15~5_combout\ & \G16|Add0~25_sumout\) ) ) ) # ( \G16|Mux15~6_combout\ & ( !\G16|Mux9~0_combout\ & ( 
-- \G16|Mux9~1_combout\ ) ) ) # ( !\G16|Mux15~6_combout\ & ( !\G16|Mux9~0_combout\ & ( (\G16|Mux15~5_combout\ & \G16|Add0~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010101010100000000001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux9~1_combout\,
	datab => \G16|ALT_INV_Mux15~5_combout\,
	datad => \G16|ALT_INV_Add0~25_sumout\,
	datae => \G16|ALT_INV_Mux15~6_combout\,
	dataf => \G16|ALT_INV_Mux9~0_combout\,
	combout => \G16|Mux9~2_combout\);

-- Location: FF_X28_Y7_N49
\G18|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~358_combout\,
	asdata => \G16|Mux9~2_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(6));

-- Location: FF_X34_Y6_N32
\G7|Reg~122DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(6),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~122DUPLICATE_q\);

-- Location: FF_X34_Y6_N7
\G7|Reg~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(6),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~74_q\);

-- Location: MLABCELL_X34_Y6_N33
\G7|Reg~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~178_combout\ = ( !\G7|Reg~74_q\ & ( \G4|rd[0]~reg0_q\ & ( \G4|rd[0]~enDUPLICATE_q\ ) ) ) # ( \G7|Reg~74_q\ & ( !\G4|rd[0]~reg0_q\ & ( (!\G7|Reg~26_q\ & \G4|rd[0]~enDUPLICATE_q\) ) ) ) # ( !\G7|Reg~74_q\ & ( !\G4|rd[0]~reg0_q\ & ( (!\G7|Reg~26_q\ & 
-- \G4|rd[0]~enDUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~26_q\,
	datad => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datae => \G7|ALT_INV_Reg~74_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~178_combout\);

-- Location: MLABCELL_X34_Y6_N0
\G7|Reg~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~210_combout\ = ( \G7|Reg~178_combout\ & ( (\G7|Reg~122DUPLICATE_q\ & !\G4|rd[0]~enDUPLICATE_q\) ) ) # ( !\G7|Reg~178_combout\ & ( (\G7|Reg~138_q\) # (\G4|rd[0]~enDUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~122DUPLICATE_q\,
	datac => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~138_q\,
	dataf => \G7|ALT_INV_Reg~178_combout\,
	combout => \G7|Reg~210_combout\);

-- Location: LABCELL_X36_Y8_N18
\G16|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~1_combout\ = ( \G16|Add2~21_sumout\ & ( \G16|Add1~21_sumout\ & ( \G16|Mux10~0_combout\ ) ) ) # ( !\G16|Add2~21_sumout\ & ( \G16|Add1~21_sumout\ & ( (\G16|Mux10~0_combout\ & ((!\G15|SAIDA\(1)) # (\G15|SAIDA[0]~DUPLICATE_q\))) ) ) ) # ( 
-- \G16|Add2~21_sumout\ & ( !\G16|Add1~21_sumout\ & ( (\G16|Mux10~0_combout\ & (\G15|SAIDA\(1) & !\G15|SAIDA[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000001000101010001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux10~0_combout\,
	datab => \G15|ALT_INV_SAIDA\(1),
	datac => \G15|ALT_INV_SAIDA[0]~DUPLICATE_q\,
	datae => \G16|ALT_INV_Add2~21_sumout\,
	dataf => \G16|ALT_INV_Add1~21_sumout\,
	combout => \G16|Mux10~1_combout\);

-- Location: LABCELL_X37_Y8_N42
\G16|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~3_combout\ = ( \G16|Add0~21_sumout\ & ( \G16|Mux10~1_combout\ & ( (\G16|Mux15~5_combout\) # (\G16|Mux15~6_combout\) ) ) ) # ( !\G16|Add0~21_sumout\ & ( \G16|Mux10~1_combout\ & ( \G16|Mux15~6_combout\ ) ) ) # ( \G16|Add0~21_sumout\ & ( 
-- !\G16|Mux10~1_combout\ & ( (!\G16|Mux15~6_combout\ & (\G16|Mux15~5_combout\)) # (\G16|Mux15~6_combout\ & ((\G16|Mux10~2_combout\))) ) ) ) # ( !\G16|Add0~21_sumout\ & ( !\G16|Mux10~1_combout\ & ( (\G16|Mux15~6_combout\ & \G16|Mux10~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001001110010011101010101010101010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~6_combout\,
	datab => \G16|ALT_INV_Mux15~5_combout\,
	datac => \G16|ALT_INV_Mux10~2_combout\,
	datae => \G16|ALT_INV_Add0~21_sumout\,
	dataf => \G16|ALT_INV_Mux10~1_combout\,
	combout => \G16|Mux10~3_combout\);

-- Location: FF_X37_Y8_N37
\G18|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~349_combout\,
	asdata => \G16|Mux10~3_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(5));

-- Location: FF_X35_Y9_N17
\G7|Reg~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(5),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~121_q\);

-- Location: FF_X35_Y9_N23
\G7|Reg~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(5),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~73_q\);

-- Location: LABCELL_X35_Y9_N21
\G7|Reg~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~179_combout\ = ( \G4|rd[0]~reg0_q\ & ( (\G4|rd[0]~en_q\ & !\G7|Reg~73_q\) ) ) # ( !\G4|rd[0]~reg0_q\ & ( (\G4|rd[0]~en_q\ & !\G7|Reg~25_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G7|ALT_INV_Reg~25_q\,
	datad => \G7|ALT_INV_Reg~73_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~179_combout\);

-- Location: LABCELL_X35_Y9_N18
\G7|Reg~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~211_combout\ = ( \G7|Reg~179_combout\ & ( (\G7|Reg~121_q\ & !\G4|rd[0]~en_q\) ) ) # ( !\G7|Reg~179_combout\ & ( (\G7|Reg~137_q\) # (\G4|rd[0]~en_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~121_q\,
	datab => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G7|ALT_INV_Reg~137_q\,
	dataf => \G7|ALT_INV_Reg~179_combout\,
	combout => \G7|Reg~211_combout\);

-- Location: LABCELL_X29_Y8_N30
\G16|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~4_combout\ = ( \G16|Add2~17_sumout\ & ( \G16|Add1~17_sumout\ & ( (\G16|Mux15~6_combout\ & (((\G16|Mux11~1_combout\) # (\G16|Mux11~2_combout\)) # (\G16|Mux11~3_combout\))) ) ) ) # ( !\G16|Add2~17_sumout\ & ( \G16|Add1~17_sumout\ & ( 
-- (\G16|Mux15~6_combout\ & ((\G16|Mux11~2_combout\) # (\G16|Mux11~3_combout\))) ) ) ) # ( \G16|Add2~17_sumout\ & ( !\G16|Add1~17_sumout\ & ( (\G16|Mux15~6_combout\ & ((\G16|Mux11~1_combout\) # (\G16|Mux11~3_combout\))) ) ) ) # ( !\G16|Add2~17_sumout\ & ( 
-- !\G16|Add1~17_sumout\ & ( (\G16|Mux11~3_combout\ & \G16|Mux15~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000111100000111000001110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~3_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G16|ALT_INV_Mux15~6_combout\,
	datad => \G16|ALT_INV_Mux11~1_combout\,
	datae => \G16|ALT_INV_Add2~17_sumout\,
	dataf => \G16|ALT_INV_Add1~17_sumout\,
	combout => \G16|Mux11~4_combout\);

-- Location: MLABCELL_X28_Y8_N0
\G17|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~578_combout\ = ( \G17|ram~571_combout\ & ( \G17|ram~449_combout\ & ( (\G16|Mux13~2_combout\ & (\G16|Mux12~2_combout\ & (!\G16|Mux11~4_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G16|ALT_INV_Mux11~4_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G17|ALT_INV_ram~571_combout\,
	dataf => \G17|ALT_INV_ram~449_combout\,
	combout => \G17|ram~578_combout\);

-- Location: FF_X29_Y7_N13
\G17|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~234feeder_combout\,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~234_q\);

-- Location: MLABCELL_X25_Y8_N45
\G17|ram~250feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~250feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~250feeder_combout\);

-- Location: FF_X25_Y8_N46
\G17|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~250feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~250_q\);

-- Location: FF_X29_Y6_N49
\G17|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~196_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~266_q\);

-- Location: LABCELL_X30_Y7_N51
\G17|ram~202feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~202feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~202feeder_combout\);

-- Location: FF_X30_Y7_N52
\G17|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~202feeder_combout\,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~202_q\);

-- Location: LABCELL_X30_Y7_N57
\G17|ram~186feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~186feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~186feeder_combout\);

-- Location: FF_X30_Y7_N58
\G17|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~186feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~186_q\);

-- Location: LABCELL_X27_Y6_N27
\G17|ram~170feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~170feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~170feeder_combout\);

-- Location: FF_X27_Y6_N29
\G17|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~170feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~170_q\);

-- Location: LABCELL_X31_Y6_N24
\G17|ram~154feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~154feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~154feeder_combout\);

-- Location: FF_X31_Y6_N25
\G17|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~154feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~154_q\);

-- Location: LABCELL_X29_Y6_N24
\G17|ram~479\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~479_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux15~4_combout\ & (((\G17|ram~154_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\) # (\G17|ram~170_q\))))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- (!\G16|Mux15~4_combout\ & (((\G17|ram~186_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~202_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~4_combout\,
	datab => \G17|ALT_INV_ram~202_q\,
	datac => \G17|ALT_INV_ram~186_q\,
	datad => \G17|ALT_INV_ram~170_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~154_q\,
	combout => \G17|ram~479_combout\);

-- Location: FF_X29_Y7_N34
\G17|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~196_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~218_q\);

-- Location: LABCELL_X29_Y6_N48
\G17|ram~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~336_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~479_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~479_combout\ & ((\G17|ram~218_q\))) # (\G17|ram~479_combout\ & (\G17|ram~234_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~479_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~479_combout\ & (\G17|ram~250_q\)) # (\G17|ram~479_combout\ & ((\G17|ram~266_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~234_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~250_q\,
	datad => \G17|ALT_INV_ram~266_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~479_combout\,
	datag => \G17|ALT_INV_ram~218_q\,
	combout => \G17|ram~336_combout\);

-- Location: LABCELL_X29_Y6_N12
\G17|ram~282feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~282feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~282feeder_combout\);

-- Location: FF_X29_Y6_N14
\G17|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~282feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~282_q\);

-- Location: FF_X28_Y6_N26
\G17|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~196_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~138_q\);

-- Location: MLABCELL_X28_Y6_N33
\G17|ram~122feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~122feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~122feeder_combout\);

-- Location: FF_X28_Y6_N35
\G17|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~122feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~122_q\);

-- Location: FF_X27_Y8_N38
\G17|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~196_combout\,
	sload => VCC,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~106_q\);

-- Location: FF_X33_Y8_N55
\G17|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~196_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~42_q\);

-- Location: FF_X27_Y6_N17
\G17|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~196_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~74_q\);

-- Location: LABCELL_X31_Y9_N57
\G17|ram~58feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~58feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~58feeder_combout\);

-- Location: FF_X31_Y9_N58
\G17|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~58feeder_combout\,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~58_q\);

-- Location: LABCELL_X30_Y6_N0
\G17|ram~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~26feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~26feeder_combout\);

-- Location: FF_X30_Y6_N2
\G17|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~26feeder_combout\,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~26_q\);

-- Location: LABCELL_X27_Y6_N15
\G17|ram~475\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~475_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~26_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~42_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~58_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~74_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~42_q\,
	datab => \G17|ALT_INV_ram~74_q\,
	datac => \G17|ALT_INV_ram~58_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~26_q\,
	combout => \G17|ram~475_combout\);

-- Location: MLABCELL_X28_Y6_N0
\G17|ram~90feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~90feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G17|ram~90feeder_combout\);

-- Location: FF_X28_Y6_N2
\G17|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~90feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~90_q\);

-- Location: MLABCELL_X28_Y6_N24
\G17|ram~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~332_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~475_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~475_combout\ & (\G17|ram~90_q\)) # (\G17|ram~475_combout\ & ((\G17|ram~106_q\)))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~475_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~475_combout\ & ((\G17|ram~122_q\))) # (\G17|ram~475_combout\ & (\G17|ram~138_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~138_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~122_q\,
	datad => \G17|ALT_INV_ram~106_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~475_combout\,
	datag => \G17|ALT_INV_ram~90_q\,
	combout => \G17|ram~332_combout\);

-- Location: LABCELL_X29_Y6_N36
\G17|ram~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~340_combout\ = ( \G16|Mux11~5_combout\ & ( \G17|ram~332_combout\ & ( (\G17|ram~282_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( \G17|ram~332_combout\ & ( ((!\G16|Mux12~2_combout\) # ((\G17|ram~282_q\ & \G17|ram~303_combout\))) 
-- # (\G17|ram~336_combout\) ) ) ) # ( \G16|Mux11~5_combout\ & ( !\G17|ram~332_combout\ & ( (\G17|ram~282_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( !\G17|ram~332_combout\ & ( (!\G17|ram~336_combout\ & (\G17|ram~282_q\ & 
-- ((\G17|ram~303_combout\)))) # (\G17|ram~336_combout\ & (((\G17|ram~282_q\ & \G17|ram~303_combout\)) # (\G16|Mux12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000000000011001111110101111101110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~336_combout\,
	datab => \G17|ALT_INV_ram~282_q\,
	datac => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G17|ALT_INV_ram~303_combout\,
	datae => \G16|ALT_INV_Mux11~5_combout\,
	dataf => \G17|ALT_INV_ram~332_combout\,
	combout => \G17|ram~340_combout\);

-- Location: FF_X29_Y6_N37
\G18|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~340_combout\,
	asdata => \G16|Mux11~5_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(4));

-- Location: FF_X35_Y9_N5
\G7|Reg~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(4),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~120_q\);

-- Location: FF_X35_Y7_N56
\G7|Reg~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(4),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~40_q\);

-- Location: LABCELL_X35_Y7_N54
\G7|Reg~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~164_combout\ = ( \G7|Reg~40_q\ & ( \G4|rs[0]~en_q\ & ( (!\G4|rt[0]~reg0_q\ & !\G7|Reg~24_q\) ) ) ) # ( !\G7|Reg~40_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~24_q\) # (\G4|rt[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~24_q\,
	datae => \G7|ALT_INV_Reg~40_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~164_combout\);

-- Location: LABCELL_X35_Y9_N27
\G7|Reg~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~196_combout\ = ( \G4|rs[0]~en_q\ & ( !\G7|Reg~164_combout\ ) ) # ( !\G4|rs[0]~en_q\ & ( (!\G7|Reg~164_combout\ & ((\G7|Reg~136_q\))) # (\G7|Reg~164_combout\ & (\G7|Reg~120_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~120_q\,
	datac => \G7|ALT_INV_Reg~164_combout\,
	datad => \G7|ALT_INV_Reg~136_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~196_combout\);

-- Location: LABCELL_X33_Y8_N0
\G14|SAIDA[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[4]~feeder_combout\ = ( \G7|Reg~196_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~196_combout\,
	combout => \G14|SAIDA[4]~feeder_combout\);

-- Location: FF_X33_Y8_N2
\G14|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[4]~feeder_combout\,
	asdata => \G8|SAIDA\(3),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(4));

-- Location: LABCELL_X31_Y8_N48
\G16|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~0_combout\ = ( \G16|Add0~17_sumout\ & ( \G16|Mux15~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Mux15~0_combout\,
	dataf => \G16|ALT_INV_Add0~17_sumout\,
	combout => \G16|Mux11~0_combout\);

-- Location: LABCELL_X30_Y6_N24
\G17|ram~450\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~450_combout\ = ( \G16|Mux11~4_combout\ & ( \G17|ram~448_combout\ & ( (\G17|ram~449_combout\ & (!\G16|Mux12~1_combout\ & !\G16|Mux12~0_combout\)) ) ) ) # ( !\G16|Mux11~4_combout\ & ( \G17|ram~448_combout\ & ( (\G17|ram~449_combout\ & 
-- (\G16|Mux11~0_combout\ & (!\G16|Mux12~1_combout\ & !\G16|Mux12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~449_combout\,
	datab => \G16|ALT_INV_Mux11~0_combout\,
	datac => \G16|ALT_INV_Mux12~1_combout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G16|ALT_INV_Mux11~4_combout\,
	dataf => \G17|ALT_INV_ram~448_combout\,
	combout => \G17|ram~450_combout\);

-- Location: FF_X29_Y6_N55
\G17|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~280feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~280_q\);

-- Location: LABCELL_X29_Y9_N57
\G17|ram~232feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~232feeder_combout\ = ( \G7|Reg~198_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~198_combout\,
	combout => \G17|ram~232feeder_combout\);

-- Location: FF_X29_Y9_N59
\G17|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~232feeder_combout\,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~232_q\);

-- Location: FF_X25_Y8_N43
\G17|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~198_combout\,
	sload => VCC,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~248_q\);

-- Location: FF_X29_Y9_N1
\G17|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~198_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~264_q\);

-- Location: FF_X29_Y9_N13
\G17|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~198_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~200_q\);

-- Location: FF_X28_Y10_N52
\G17|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~198_combout\,
	sload => VCC,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~184_q\);

-- Location: LABCELL_X27_Y7_N57
\G17|ram~168feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~168feeder_combout\ = ( \G7|Reg~198_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~198_combout\,
	combout => \G17|ram~168feeder_combout\);

-- Location: FF_X27_Y7_N59
\G17|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~168feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~168_q\);

-- Location: LABCELL_X31_Y6_N51
\G17|ram~152feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~152feeder_combout\ = ( \G7|Reg~198_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~198_combout\,
	combout => \G17|ram~152feeder_combout\);

-- Location: FF_X31_Y6_N52
\G17|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~152feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~152_q\);

-- Location: LABCELL_X29_Y9_N12
\G17|ram~463\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~463_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux15~4_combout\ & (((\G17|ram~152_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\) # (\G17|ram~168_q\))))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- (!\G16|Mux15~4_combout\ & (((\G17|ram~184_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~200_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~4_combout\,
	datab => \G17|ALT_INV_ram~200_q\,
	datac => \G17|ALT_INV_ram~184_q\,
	datad => \G17|ALT_INV_ram~168_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~152_q\,
	combout => \G17|ram~463_combout\);

-- Location: FF_X29_Y7_N40
\G17|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~198_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~216_q\);

-- Location: LABCELL_X29_Y9_N0
\G17|ram~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~318_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~463_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~463_combout\ & ((\G17|ram~216_q\))) # (\G17|ram~463_combout\ & (\G17|ram~232_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~463_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~463_combout\ & (\G17|ram~248_q\)) # (\G17|ram~463_combout\ & ((\G17|ram~264_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~232_q\,
	datac => \G17|ALT_INV_ram~248_q\,
	datad => \G17|ALT_INV_ram~264_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~463_combout\,
	datag => \G17|ALT_INV_ram~216_q\,
	combout => \G17|ram~318_combout\);

-- Location: FF_X27_Y8_N17
\G17|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~198_combout\,
	sload => VCC,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~104_q\);

-- Location: LABCELL_X27_Y7_N27
\G17|ram~120feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~120feeder_combout\ = ( \G7|Reg~198_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~198_combout\,
	combout => \G17|ram~120feeder_combout\);

-- Location: FF_X27_Y7_N28
\G17|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~120feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~120_q\);

-- Location: FF_X28_Y7_N19
\G17|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~198_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~136_q\);

-- Location: FF_X27_Y8_N50
\G17|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~198_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~72_q\);

-- Location: LABCELL_X30_Y6_N33
\G17|ram~40feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~40feeder_combout\ = ( \G7|Reg~198_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~198_combout\,
	combout => \G17|ram~40feeder_combout\);

-- Location: FF_X30_Y6_N34
\G17|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~40feeder_combout\,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~40_q\);

-- Location: FF_X27_Y8_N2
\G17|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~198_combout\,
	sload => VCC,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~56_q\);

-- Location: LABCELL_X30_Y6_N21
\G17|ram~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~24feeder_combout\ = ( \G7|Reg~198_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~198_combout\,
	combout => \G17|ram~24feeder_combout\);

-- Location: FF_X30_Y6_N22
\G17|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~24feeder_combout\,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~24_q\);

-- Location: LABCELL_X27_Y8_N48
\G17|ram~459\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~459_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~24_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~40_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~56_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~72_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~72_q\,
	datab => \G17|ALT_INV_ram~40_q\,
	datac => \G17|ALT_INV_ram~56_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~24_q\,
	combout => \G17|ram~459_combout\);

-- Location: LABCELL_X27_Y7_N42
\G17|ram~88feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~88feeder_combout\ = ( \G7|Reg~198_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~198_combout\,
	combout => \G17|ram~88feeder_combout\);

-- Location: FF_X27_Y7_N43
\G17|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~88feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~88_q\);

-- Location: MLABCELL_X28_Y7_N18
\G17|ram~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~314_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~459_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~459_combout\ & ((\G17|ram~88_q\))) # (\G17|ram~459_combout\ & (\G17|ram~104_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~459_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~459_combout\ & (\G17|ram~120_q\)) # (\G17|ram~459_combout\ & ((\G17|ram~136_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~104_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~120_q\,
	datad => \G17|ALT_INV_ram~136_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~459_combout\,
	datag => \G17|ALT_INV_ram~88_q\,
	combout => \G17|ram~314_combout\);

-- Location: MLABCELL_X28_Y7_N36
\G17|ram~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~322_combout\ = ( \G17|ram~318_combout\ & ( \G17|ram~314_combout\ & ( (!\G16|Mux11~5_combout\) # ((\G17|ram~280_q\ & \G17|ram~303_combout\)) ) ) ) # ( !\G17|ram~318_combout\ & ( \G17|ram~314_combout\ & ( (!\G16|Mux12~2_combout\ & 
-- ((!\G16|Mux11~5_combout\) # ((\G17|ram~280_q\ & \G17|ram~303_combout\)))) # (\G16|Mux12~2_combout\ & (\G17|ram~280_q\ & (\G17|ram~303_combout\))) ) ) ) # ( \G17|ram~318_combout\ & ( !\G17|ram~314_combout\ & ( (!\G16|Mux12~2_combout\ & (\G17|ram~280_q\ & 
-- (\G17|ram~303_combout\))) # (\G16|Mux12~2_combout\ & ((!\G16|Mux11~5_combout\) # ((\G17|ram~280_q\ & \G17|ram~303_combout\)))) ) ) ) # ( !\G17|ram~318_combout\ & ( !\G17|ram~314_combout\ & ( (\G17|ram~280_q\ & \G17|ram~303_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101110000001110101011000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G17|ALT_INV_ram~280_q\,
	datac => \G17|ALT_INV_ram~303_combout\,
	datad => \G16|ALT_INV_Mux11~5_combout\,
	datae => \G17|ALT_INV_ram~318_combout\,
	dataf => \G17|ALT_INV_ram~314_combout\,
	combout => \G17|ram~322_combout\);

-- Location: FF_X28_Y7_N37
\G18|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~322_combout\,
	asdata => \G16|Mux13~2_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(2));

-- Location: FF_X34_Y8_N41
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~134_q\);

-- Location: FF_X36_Y8_N22
\G7|Reg~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(2),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~38_q\);

-- Location: LABCELL_X36_Y8_N57
\G7|Reg~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~166_combout\ = ( \G4|rt[0]~reg0_q\ & ( (\G4|rs[0]~en_q\ & !\G7|Reg~38_q\) ) ) # ( !\G4|rt[0]~reg0_q\ & ( (\G4|rs[0]~en_q\ & !\G7|Reg~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G7|ALT_INV_Reg~38_q\,
	datad => \G7|ALT_INV_Reg~22_q\,
	dataf => \G4|ALT_INV_rt[0]~reg0_q\,
	combout => \G7|Reg~166_combout\);

-- Location: LABCELL_X36_Y8_N54
\G7|Reg~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~198_combout\ = ( \G7|Reg~118_q\ & ( (!\G4|rs[0]~en_q\ & ((\G7|Reg~166_combout\) # (\G7|Reg~134_q\))) # (\G4|rs[0]~en_q\ & ((!\G7|Reg~166_combout\))) ) ) # ( !\G7|Reg~118_q\ & ( (!\G7|Reg~166_combout\ & ((\G7|Reg~134_q\) # (\G4|rs[0]~en_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000001011111101010100101111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G7|ALT_INV_Reg~134_q\,
	datad => \G7|ALT_INV_Reg~166_combout\,
	dataf => \G7|ALT_INV_Reg~118_q\,
	combout => \G7|Reg~198_combout\);

-- Location: LABCELL_X31_Y7_N36
\G14|SAIDA[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[2]~feeder_combout\ = \G7|Reg~198_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~198_combout\,
	combout => \G14|SAIDA[2]~feeder_combout\);

-- Location: FF_X31_Y7_N38
\G14|SAIDA[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[2]~feeder_combout\,
	asdata => \G8|SAIDA\(2),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA[2]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y8_N36
\G16|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~1_combout\ = ( \G16|Mux15~6_combout\ & ( (!\G14|SAIDA[2]~DUPLICATE_q\ & (\G16|Mux15~5_combout\ & ((\G7|Reg~214_combout\)))) # (\G14|SAIDA[2]~DUPLICATE_q\ & (((\G16|Mux15~7_combout\ & \G7|Reg~214_combout\)) # (\G16|Mux15~5_combout\))) ) ) # ( 
-- !\G16|Mux15~6_combout\ & ( (\G14|SAIDA[2]~DUPLICATE_q\ & (\G16|Mux15~7_combout\ & \G7|Reg~214_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100010001001101110001000100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[2]~DUPLICATE_q\,
	datab => \G16|ALT_INV_Mux15~5_combout\,
	datac => \G16|ALT_INV_Mux15~7_combout\,
	datad => \G7|ALT_INV_Reg~214_combout\,
	dataf => \G16|ALT_INV_Mux15~6_combout\,
	combout => \G16|Mux13~1_combout\);

-- Location: LABCELL_X31_Y8_N54
\G16|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~2_combout\ = ( \G16|Add1~9_sumout\ & ( \G16|Mux13~0_combout\ ) ) # ( !\G16|Add1~9_sumout\ & ( \G16|Mux13~0_combout\ ) ) # ( \G16|Add1~9_sumout\ & ( !\G16|Mux13~0_combout\ & ( (((\G16|Mux15~0_combout\ & \G16|Add0~9_sumout\)) # 
-- (\G16|Mux13~1_combout\)) # (\G16|Mux15~1_combout\) ) ) ) # ( !\G16|Add1~9_sumout\ & ( !\G16|Mux13~0_combout\ & ( ((\G16|Mux15~0_combout\ & \G16|Add0~9_sumout\)) # (\G16|Mux13~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111010111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~1_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G16|ALT_INV_Mux13~1_combout\,
	datad => \G16|ALT_INV_Add0~9_sumout\,
	datae => \G16|ALT_INV_Add1~9_sumout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	combout => \G16|Mux13~2_combout\);

-- Location: LABCELL_X29_Y8_N36
\G17|ram~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~303_combout\ = ( !\G16|Mux12~0_combout\ & ( \G17|ram~302_combout\ & ( (!\G16|Mux12~1_combout\ & (!\G16|Mux13~2_combout\ & ((\G16|Mux11~4_combout\) # (\G16|Mux11~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~1_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G16|ALT_INV_Mux11~4_combout\,
	datae => \G16|ALT_INV_Mux12~0_combout\,
	dataf => \G17|ALT_INV_ram~302_combout\,
	combout => \G17|ram~303_combout\);

-- Location: LABCELL_X29_Y6_N0
\G17|ram~281feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~281feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~281feeder_combout\);

-- Location: FF_X29_Y6_N1
\G17|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~281feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~281_q\);

-- Location: FF_X29_Y7_N47
\G17|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~197_combout\,
	sload => VCC,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~233_q\);

-- Location: MLABCELL_X25_Y8_N27
\G17|ram~249feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~249feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~249feeder_combout\);

-- Location: FF_X25_Y8_N28
\G17|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~249feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~249_q\);

-- Location: FF_X28_Y7_N32
\G17|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~197_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~265_q\);

-- Location: FF_X30_Y7_N26
\G17|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~197_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~201_q\);

-- Location: LABCELL_X27_Y7_N48
\G17|ram~169feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~169feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~169feeder_combout\);

-- Location: FF_X27_Y7_N49
\G17|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~169feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~169_q\);

-- Location: LABCELL_X30_Y5_N36
\G17|ram~185feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~185feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~185feeder_combout\);

-- Location: FF_X30_Y5_N38
\G17|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~185feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~185_q\);

-- Location: LABCELL_X31_Y6_N18
\G17|ram~153feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~153feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~153feeder_combout\);

-- Location: FF_X31_Y6_N19
\G17|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~153feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~153_q\);

-- Location: LABCELL_X30_Y7_N24
\G17|ram~471\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~471_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~153_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~169_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~185_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~201_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~201_q\,
	datab => \G17|ALT_INV_ram~169_q\,
	datac => \G17|ALT_INV_ram~185_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~153_q\,
	combout => \G17|ram~471_combout\);

-- Location: FF_X29_Y7_N31
\G17|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~197_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~217_q\);

-- Location: MLABCELL_X28_Y7_N30
\G17|ram~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~327_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~471_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~471_combout\ & ((\G17|ram~217_q\))) # (\G17|ram~471_combout\ & (\G17|ram~233_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~471_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~471_combout\ & (\G17|ram~249_q\)) # (\G17|ram~471_combout\ & ((\G17|ram~265_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~233_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~249_q\,
	datad => \G17|ALT_INV_ram~265_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~471_combout\,
	datag => \G17|ALT_INV_ram~217_q\,
	combout => \G17|ram~327_combout\);

-- Location: LABCELL_X27_Y8_N30
\G17|ram~105feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~105feeder_combout\ = \G7|Reg~197_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~105feeder_combout\);

-- Location: FF_X27_Y8_N32
\G17|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~105feeder_combout\,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~105_q\);

-- Location: MLABCELL_X28_Y6_N54
\G17|ram~121feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~121feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~121feeder_combout\);

-- Location: FF_X28_Y6_N55
\G17|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~121feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~121_q\);

-- Location: FF_X28_Y7_N13
\G17|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~197_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~137_q\);

-- Location: LABCELL_X31_Y9_N0
\G17|ram~41feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~41feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~41feeder_combout\);

-- Location: FF_X31_Y9_N1
\G17|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~41feeder_combout\,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~41_q\);

-- Location: FF_X27_Y8_N8
\G17|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~197_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~73_q\);

-- Location: LABCELL_X31_Y9_N48
\G17|ram~57feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~57feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~57feeder_combout\);

-- Location: FF_X31_Y9_N49
\G17|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~57feeder_combout\,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~57_q\);

-- Location: FF_X30_Y6_N1
\G17|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~197_combout\,
	sload => VCC,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~25_q\);

-- Location: LABCELL_X27_Y8_N6
\G17|ram~467\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~467_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~25_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~41_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~57_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~73_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~41_q\,
	datab => \G17|ALT_INV_ram~73_q\,
	datac => \G17|ALT_INV_ram~57_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~25_q\,
	combout => \G17|ram~467_combout\);

-- Location: MLABCELL_X28_Y6_N15
\G17|ram~89feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~89feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G17|ram~89feeder_combout\);

-- Location: FF_X28_Y6_N16
\G17|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~89feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~89_q\);

-- Location: MLABCELL_X28_Y7_N12
\G17|ram~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~323_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~467_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~467_combout\ & ((\G17|ram~89_q\))) # (\G17|ram~467_combout\ & (\G17|ram~105_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~467_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~467_combout\ & (\G17|ram~121_q\)) # (\G17|ram~467_combout\ & ((\G17|ram~137_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~105_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~121_q\,
	datad => \G17|ALT_INV_ram~137_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~467_combout\,
	datag => \G17|ALT_INV_ram~89_q\,
	combout => \G17|ram~323_combout\);

-- Location: MLABCELL_X28_Y7_N54
\G17|ram~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~331_combout\ = ( \G16|Mux12~2_combout\ & ( \G17|ram~323_combout\ & ( (!\G17|ram~303_combout\ & (((\G17|ram~327_combout\ & !\G16|Mux11~5_combout\)))) # (\G17|ram~303_combout\ & (((\G17|ram~327_combout\ & !\G16|Mux11~5_combout\)) # 
-- (\G17|ram~281_q\))) ) ) ) # ( !\G16|Mux12~2_combout\ & ( \G17|ram~323_combout\ & ( (!\G16|Mux11~5_combout\) # ((\G17|ram~303_combout\ & \G17|ram~281_q\)) ) ) ) # ( \G16|Mux12~2_combout\ & ( !\G17|ram~323_combout\ & ( (!\G17|ram~303_combout\ & 
-- (((\G17|ram~327_combout\ & !\G16|Mux11~5_combout\)))) # (\G17|ram~303_combout\ & (((\G17|ram~327_combout\ & !\G16|Mux11~5_combout\)) # (\G17|ram~281_q\))) ) ) ) # ( !\G16|Mux12~2_combout\ & ( !\G17|ram~323_combout\ & ( (\G17|ram~303_combout\ & 
-- \G17|ram~281_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001000111111111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~303_combout\,
	datab => \G17|ALT_INV_ram~281_q\,
	datac => \G17|ALT_INV_ram~327_combout\,
	datad => \G16|ALT_INV_Mux11~5_combout\,
	datae => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G17|ALT_INV_ram~323_combout\,
	combout => \G17|ram~331_combout\);

-- Location: FF_X28_Y7_N55
\G18|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~331_combout\,
	asdata => \G16|Mux12~2_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(3));

-- Location: FF_X35_Y9_N7
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~135_q\);

-- Location: FF_X34_Y9_N41
\G7|Reg~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(3),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~39_q\);

-- Location: FF_X34_Y9_N50
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~23DUPLICATE_q\);

-- Location: MLABCELL_X34_Y9_N39
\G7|Reg~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~165_combout\ = ( \G7|Reg~23DUPLICATE_q\ & ( (\G4|rs[0]~en_q\ & (\G4|rt[0]~reg0_q\ & !\G7|Reg~39_q\)) ) ) # ( !\G7|Reg~23DUPLICATE_q\ & ( (\G4|rs[0]~en_q\ & ((!\G4|rt[0]~reg0_q\) # (!\G7|Reg~39_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G4|ALT_INV_rt[0]~reg0_q\,
	datad => \G7|ALT_INV_Reg~39_q\,
	dataf => \G7|ALT_INV_Reg~23DUPLICATE_q\,
	combout => \G7|Reg~165_combout\);

-- Location: MLABCELL_X34_Y9_N36
\G7|Reg~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~197_combout\ = ( \G7|Reg~165_combout\ & ( (!\G4|rs[0]~en_q\ & \G7|Reg~119_q\) ) ) # ( !\G7|Reg~165_combout\ & ( (\G7|Reg~135_q\) # (\G4|rs[0]~en_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	datac => \G7|ALT_INV_Reg~135_q\,
	datad => \G7|ALT_INV_Reg~119_q\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G7|Reg~197_combout\);

-- Location: LABCELL_X33_Y8_N9
\G14|SAIDA[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[3]~feeder_combout\ = ( \G7|Reg~197_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~197_combout\,
	combout => \G14|SAIDA[3]~feeder_combout\);

-- Location: FF_X33_Y8_N11
\G14|SAIDA[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[3]~feeder_combout\,
	asdata => \G8|SAIDA\(3),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA[3]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y8_N24
\G16|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~1_combout\ = ( \G16|Mux15~6_combout\ & ( \G16|Add0~13_sumout\ & ( (!\G16|Mux15~5_combout\ & (\G16|Mux15~7_combout\ & (\G14|SAIDA[3]~DUPLICATE_q\ & \G7|Reg~213_combout\))) # (\G16|Mux15~5_combout\ & (((\G7|Reg~213_combout\) # 
-- (\G14|SAIDA[3]~DUPLICATE_q\)))) ) ) ) # ( !\G16|Mux15~6_combout\ & ( \G16|Add0~13_sumout\ & ( ((\G16|Mux15~7_combout\ & (\G14|SAIDA[3]~DUPLICATE_q\ & \G7|Reg~213_combout\))) # (\G16|Mux15~5_combout\) ) ) ) # ( \G16|Mux15~6_combout\ & ( 
-- !\G16|Add0~13_sumout\ & ( (!\G16|Mux15~5_combout\ & (\G16|Mux15~7_combout\ & (\G14|SAIDA[3]~DUPLICATE_q\ & \G7|Reg~213_combout\))) # (\G16|Mux15~5_combout\ & (((\G7|Reg~213_combout\) # (\G14|SAIDA[3]~DUPLICATE_q\)))) ) ) ) # ( !\G16|Mux15~6_combout\ & ( 
-- !\G16|Add0~13_sumout\ & ( (\G16|Mux15~7_combout\ & (\G14|SAIDA[3]~DUPLICATE_q\ & \G7|Reg~213_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000001010101011101010101010101110000010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~5_combout\,
	datab => \G16|ALT_INV_Mux15~7_combout\,
	datac => \G14|ALT_INV_SAIDA[3]~DUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~213_combout\,
	datae => \G16|ALT_INV_Mux15~6_combout\,
	dataf => \G16|ALT_INV_Add0~13_sumout\,
	combout => \G16|Mux12~1_combout\);

-- Location: LABCELL_X29_Y8_N12
\G16|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~2_combout\ = ( \G16|Mux12~0_combout\ ) # ( !\G16|Mux12~0_combout\ & ( \G16|Mux12~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux12~1_combout\,
	dataf => \G16|ALT_INV_Mux12~0_combout\,
	combout => \G16|Mux12~2_combout\);

-- Location: LABCELL_X29_Y6_N57
\G17|ram~293feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~293feeder_combout\ = ( \G7|Reg~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~185_combout\,
	combout => \G17|ram~293feeder_combout\);

-- Location: FF_X29_Y6_N59
\G17|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~293feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~293_q\);

-- Location: LABCELL_X29_Y7_N45
\G17|ram~245feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~245feeder_combout\ = \G7|Reg~185_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~185_combout\,
	combout => \G17|ram~245feeder_combout\);

-- Location: FF_X29_Y7_N46
\G17|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~245feeder_combout\,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~245_q\);

-- Location: FF_X25_Y8_N19
\G17|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~185_combout\,
	sload => VCC,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~261_q\);

-- Location: FF_X29_Y6_N19
\G17|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~185_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~277_q\);

-- Location: FF_X30_Y7_N2
\G17|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~185_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~213_q\);

-- Location: LABCELL_X27_Y7_N54
\G17|ram~181feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~181feeder_combout\ = ( \G7|Reg~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~185_combout\,
	combout => \G17|ram~181feeder_combout\);

-- Location: FF_X27_Y7_N55
\G17|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~181feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~181_q\);

-- Location: LABCELL_X30_Y7_N54
\G17|ram~197feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~197feeder_combout\ = ( \G7|Reg~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~185_combout\,
	combout => \G17|ram~197feeder_combout\);

-- Location: FF_X30_Y7_N56
\G17|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~197feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~197_q\);

-- Location: LABCELL_X31_Y6_N6
\G17|ram~165feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~165feeder_combout\ = ( \G7|Reg~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~185_combout\,
	combout => \G17|ram~165feeder_combout\);

-- Location: FF_X31_Y6_N7
\G17|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~165feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~165_q\);

-- Location: LABCELL_X30_Y7_N0
\G17|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~567_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~165_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~181_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~197_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~213_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~213_q\,
	datab => \G17|ALT_INV_ram~181_q\,
	datac => \G17|ALT_INV_ram~197_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~165_q\,
	combout => \G17|ram~567_combout\);

-- Location: LABCELL_X29_Y7_N3
\G17|ram~229feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~229feeder_combout\ = ( \G7|Reg~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~185_combout\,
	combout => \G17|ram~229feeder_combout\);

-- Location: FF_X29_Y7_N4
\G17|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~229feeder_combout\,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~229_q\);

-- Location: LABCELL_X29_Y6_N18
\G17|ram~435\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~435_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~567_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~567_combout\ & ((\G17|ram~229_q\))) # (\G17|ram~567_combout\ & (\G17|ram~245_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~567_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~567_combout\ & (\G17|ram~261_q\)) # (\G17|ram~567_combout\ & ((\G17|ram~277_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~245_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~261_q\,
	datad => \G17|ALT_INV_ram~277_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~567_combout\,
	datag => \G17|ALT_INV_ram~229_q\,
	combout => \G17|ram~435_combout\);

-- Location: FF_X28_Y6_N20
\G17|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~185_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~149_q\);

-- Location: LABCELL_X27_Y8_N39
\G17|ram~117feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~117feeder_combout\ = ( \G7|Reg~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~185_combout\,
	combout => \G17|ram~117feeder_combout\);

-- Location: FF_X27_Y8_N41
\G17|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~117feeder_combout\,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~117_q\);

-- Location: MLABCELL_X28_Y6_N57
\G17|ram~133feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~133feeder_combout\ = ( \G7|Reg~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~185_combout\,
	combout => \G17|ram~133feeder_combout\);

-- Location: FF_X28_Y6_N59
\G17|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~133feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~133_q\);

-- Location: FF_X33_Y8_N22
\G17|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~185_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~53_q\);

-- Location: FF_X27_Y8_N44
\G17|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~185_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~85_q\);

-- Location: FF_X27_Y8_N4
\G17|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~185_combout\,
	sload => VCC,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~69_q\);

-- Location: FF_X30_Y6_N11
\G17|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~185_combout\,
	sload => VCC,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~37_q\);

-- Location: LABCELL_X27_Y8_N42
\G17|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~563_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~37_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~53_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~69_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~85_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~53_q\,
	datab => \G17|ALT_INV_ram~85_q\,
	datac => \G17|ALT_INV_ram~69_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~37_q\,
	combout => \G17|ram~563_combout\);

-- Location: MLABCELL_X28_Y6_N39
\G17|ram~101feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~101feeder_combout\ = ( \G7|Reg~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~185_combout\,
	combout => \G17|ram~101feeder_combout\);

-- Location: FF_X28_Y6_N40
\G17|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~101feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~101_q\);

-- Location: MLABCELL_X28_Y6_N18
\G17|ram~431\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~431_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~563_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~563_combout\ & ((\G17|ram~101_q\))) # (\G17|ram~563_combout\ & (\G17|ram~117_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~563_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~563_combout\ & ((\G17|ram~133_q\))) # (\G17|ram~563_combout\ & (\G17|ram~149_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~149_q\,
	datab => \G17|ALT_INV_ram~117_q\,
	datac => \G17|ALT_INV_ram~133_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~563_combout\,
	datag => \G17|ALT_INV_ram~101_q\,
	combout => \G17|ram~431_combout\);

-- Location: LABCELL_X29_Y6_N42
\G17|ram~439\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~439_combout\ = ( \G16|Mux11~5_combout\ & ( \G17|ram~431_combout\ & ( (\G17|ram~293_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( \G17|ram~431_combout\ & ( (!\G16|Mux12~2_combout\) # (((\G17|ram~293_q\ & \G17|ram~303_combout\)) 
-- # (\G17|ram~435_combout\)) ) ) ) # ( \G16|Mux11~5_combout\ & ( !\G17|ram~431_combout\ & ( (\G17|ram~293_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( !\G17|ram~431_combout\ & ( (!\G16|Mux12~2_combout\ & (\G17|ram~293_q\ & 
-- ((\G17|ram~303_combout\)))) # (\G16|Mux12~2_combout\ & (((\G17|ram~293_q\ & \G17|ram~303_combout\)) # (\G17|ram~435_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000000000011001110101111101111110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G17|ALT_INV_ram~293_q\,
	datac => \G17|ALT_INV_ram~435_combout\,
	datad => \G17|ALT_INV_ram~303_combout\,
	datae => \G16|ALT_INV_Mux11~5_combout\,
	dataf => \G17|ALT_INV_ram~431_combout\,
	combout => \G17|ram~439_combout\);

-- Location: LABCELL_X33_Y7_N54
\G16|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~0_combout\ = ( !\G16|Mux0~1_combout\ & ( !\G16|Mux0~3_combout\ & ( \G16|Mux0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G16|ALT_INV_Mux0~4_combout\,
	datae => \G16|ALT_INV_Mux0~1_combout\,
	dataf => \G16|ALT_INV_Mux0~3_combout\,
	combout => \G16|Mux7~0_combout\);

-- Location: FF_X35_Y9_N53
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~147_q\);

-- Location: FF_X35_Y9_N20
\G7|Reg~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(15),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~83_q\);

-- Location: FF_X33_Y6_N53
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~35_q\);

-- Location: LABCELL_X35_Y9_N36
\G7|Reg~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~169_combout\ = ( \G7|Reg~35_q\ & ( (\G4|rd[0]~reg0_q\ & (\G4|rd[0]~en_q\ & !\G7|Reg~83_q\)) ) ) # ( !\G7|Reg~35_q\ & ( (\G4|rd[0]~en_q\ & ((!\G4|rd[0]~reg0_q\) # (!\G7|Reg~83_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datab => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G7|ALT_INV_Reg~83_q\,
	dataf => \G7|ALT_INV_Reg~35_q\,
	combout => \G7|Reg~169_combout\);

-- Location: LABCELL_X35_Y9_N33
\G7|Reg~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~201_combout\ = ( \G7|Reg~169_combout\ & ( (!\G4|rd[0]~en_q\ & \G7|Reg~131_q\) ) ) # ( !\G7|Reg~169_combout\ & ( (\G4|rd[0]~en_q\) # (\G7|Reg~147_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~147_q\,
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G7|ALT_INV_Reg~131_q\,
	dataf => \G7|ALT_INV_Reg~169_combout\,
	combout => \G7|Reg~201_combout\);

-- Location: MLABCELL_X34_Y7_N36
\G16|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~1_combout\ = ( \G16|Mux0~4_combout\ & ( \G16|Mux0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux0~1_combout\,
	dataf => \G16|ALT_INV_Mux0~4_combout\,
	combout => \G16|Mux7~1_combout\);

-- Location: LABCELL_X33_Y8_N42
\G16|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~5_combout\ = ( \G16|Mux0~3_combout\ & ( (\G14|SAIDA\(15)) # (\G7|Reg~201_combout\) ) ) # ( !\G16|Mux0~3_combout\ & ( (\G7|Reg~201_combout\ & (\G16|Mux7~1_combout\ & \G14|SAIDA\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~201_combout\,
	datac => \G16|ALT_INV_Mux7~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(15),
	dataf => \G16|ALT_INV_Mux0~3_combout\,
	combout => \G16|Mux0~5_combout\);

-- Location: FF_X29_Y5_N13
\G17|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~186_combout\,
	sload => VCC,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~292_q\);

-- Location: FF_X28_Y9_N1
\G17|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~186_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~148_q\);

-- Location: MLABCELL_X34_Y9_N24
\G17|ram~116feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~116feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~116feeder_combout\);

-- Location: FF_X34_Y9_N26
\G17|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~116feeder_combout\,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~116_q\);

-- Location: LABCELL_X27_Y9_N36
\G17|ram~132feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~132feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~132feeder_combout\);

-- Location: FF_X27_Y9_N37
\G17|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~132feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~132_q\);

-- Location: FF_X28_Y8_N38
\G17|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~186_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~84_q\);

-- Location: FF_X33_Y8_N25
\G17|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~186_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~52_q\);

-- Location: LABCELL_X31_Y9_N51
\G17|ram~68feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~68feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~68feeder_combout\);

-- Location: FF_X31_Y9_N52
\G17|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~68feeder_combout\,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~68_q\);

-- Location: LABCELL_X30_Y6_N18
\G17|ram~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~36feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~36feeder_combout\);

-- Location: FF_X30_Y6_N19
\G17|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~36feeder_combout\,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~36_q\);

-- Location: MLABCELL_X28_Y8_N36
\G17|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~555_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~36_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~52_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~68_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~84_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~84_q\,
	datab => \G17|ALT_INV_ram~52_q\,
	datac => \G17|ALT_INV_ram~68_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~36_q\,
	combout => \G17|ram~555_combout\);

-- Location: LABCELL_X27_Y9_N48
\G17|ram~100feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~100feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~100feeder_combout\);

-- Location: FF_X27_Y9_N49
\G17|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~100feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~100_q\);

-- Location: MLABCELL_X28_Y9_N0
\G17|ram~422\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~422_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~555_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~555_combout\ & ((\G17|ram~100_q\))) # (\G17|ram~555_combout\ & (\G17|ram~116_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~555_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~555_combout\ & ((\G17|ram~132_q\))) # (\G17|ram~555_combout\ & (\G17|ram~148_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~148_q\,
	datab => \G17|ALT_INV_ram~116_q\,
	datac => \G17|ALT_INV_ram~132_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~555_combout\,
	datag => \G17|ALT_INV_ram~100_q\,
	combout => \G17|ram~422_combout\);

-- Location: FF_X28_Y9_N32
\G17|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~186_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~276_q\);

-- Location: MLABCELL_X25_Y8_N48
\G17|ram~260feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~260feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~260feeder_combout\);

-- Location: FF_X25_Y8_N50
\G17|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~260feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~260_q\);

-- Location: LABCELL_X29_Y9_N51
\G17|ram~244feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~244feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~244feeder_combout\);

-- Location: FF_X29_Y9_N52
\G17|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~244feeder_combout\,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~244_q\);

-- Location: LABCELL_X27_Y7_N12
\G17|ram~180feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~180feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~180feeder_combout\);

-- Location: FF_X27_Y7_N13
\G17|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~180feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~180_q\);

-- Location: LABCELL_X31_Y7_N6
\G17|ram~196feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~196feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~196feeder_combout\);

-- Location: FF_X31_Y7_N7
\G17|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~196feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~196_q\);

-- Location: FF_X29_Y9_N32
\G17|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~186_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~212_q\);

-- Location: LABCELL_X31_Y6_N45
\G17|ram~164feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~164feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G17|ram~164feeder_combout\);

-- Location: FF_X31_Y6_N46
\G17|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~164feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~164_q\);

-- Location: LABCELL_X29_Y9_N30
\G17|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~559_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux15~4_combout\ & (((\G17|ram~164_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~180_q\))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- (!\G16|Mux15~4_combout\ & (((\G17|ram~196_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\) # (\G17|ram~212_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~4_combout\,
	datab => \G17|ALT_INV_ram~180_q\,
	datac => \G17|ALT_INV_ram~196_q\,
	datad => \G17|ALT_INV_ram~212_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~164_q\,
	combout => \G17|ram~559_combout\);

-- Location: FF_X29_Y7_N38
\G17|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~186_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~228_q\);

-- Location: MLABCELL_X28_Y9_N30
\G17|ram~426\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~426_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~559_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~559_combout\ & (\G17|ram~228_q\)) # (\G17|ram~559_combout\ & ((\G17|ram~244_q\)))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~559_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~559_combout\ & ((\G17|ram~260_q\))) # (\G17|ram~559_combout\ & (\G17|ram~276_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~276_q\,
	datac => \G17|ALT_INV_ram~260_q\,
	datad => \G17|ALT_INV_ram~244_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~559_combout\,
	datag => \G17|ALT_INV_ram~228_q\,
	combout => \G17|ram~426_combout\);

-- Location: MLABCELL_X28_Y9_N6
\G17|ram~430\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~430_combout\ = ( \G17|ram~422_combout\ & ( \G17|ram~426_combout\ & ( (!\G16|Mux11~5_combout\) # ((\G17|ram~303_combout\ & \G17|ram~292_q\)) ) ) ) # ( !\G17|ram~422_combout\ & ( \G17|ram~426_combout\ & ( (!\G16|Mux11~5_combout\ & 
-- (((\G17|ram~303_combout\ & \G17|ram~292_q\)) # (\G16|Mux12~2_combout\))) # (\G16|Mux11~5_combout\ & (((\G17|ram~303_combout\ & \G17|ram~292_q\)))) ) ) ) # ( \G17|ram~422_combout\ & ( !\G17|ram~426_combout\ & ( (!\G16|Mux11~5_combout\ & 
-- ((!\G16|Mux12~2_combout\) # ((\G17|ram~303_combout\ & \G17|ram~292_q\)))) # (\G16|Mux11~5_combout\ & (((\G17|ram~303_combout\ & \G17|ram~292_q\)))) ) ) ) # ( !\G17|ram~422_combout\ & ( !\G17|ram~426_combout\ & ( (\G17|ram~303_combout\ & \G17|ram~292_q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111100010001000111100100010001011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~5_combout\,
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G17|ALT_INV_ram~303_combout\,
	datad => \G17|ALT_INV_ram~292_q\,
	datae => \G17|ALT_INV_ram~422_combout\,
	dataf => \G17|ALT_INV_ram~426_combout\,
	combout => \G17|ram~430_combout\);

-- Location: FF_X35_Y9_N58
\G7|Reg~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(14),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~130_q\);

-- Location: FF_X35_Y9_N41
\G7|Reg~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(14),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~82_q\);

-- Location: FF_X33_Y6_N5
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~34_q\);

-- Location: LABCELL_X35_Y9_N39
\G7|Reg~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~170_combout\ = ( \G7|Reg~34_q\ & ( (\G4|rd[0]~reg0_q\ & (\G4|rd[0]~en_q\ & !\G7|Reg~82_q\)) ) ) # ( !\G7|Reg~34_q\ & ( (\G4|rd[0]~en_q\ & ((!\G4|rd[0]~reg0_q\) # (!\G7|Reg~82_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G7|ALT_INV_Reg~82_q\,
	dataf => \G7|ALT_INV_Reg~34_q\,
	combout => \G7|Reg~170_combout\);

-- Location: LABCELL_X35_Y9_N57
\G7|Reg~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~202_combout\ = ( \G7|Reg~170_combout\ & ( (!\G4|rd[0]~en_q\ & \G7|Reg~130_q\) ) ) # ( !\G7|Reg~170_combout\ & ( (\G4|rd[0]~en_q\) # (\G7|Reg~146_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~146_q\,
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G7|ALT_INV_Reg~130_q\,
	dataf => \G7|ALT_INV_Reg~170_combout\,
	combout => \G7|Reg~202_combout\);

-- Location: LABCELL_X35_Y9_N9
\G16|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~0_combout\ = ( \G16|Mux0~3_combout\ & ( (\G7|Reg~202_combout\) # (\G14|SAIDA\(14)) ) ) # ( !\G16|Mux0~3_combout\ & ( (\G14|SAIDA\(14) & (\G7|Reg~202_combout\ & \G16|Mux7~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(14),
	datac => \G7|ALT_INV_Reg~202_combout\,
	datad => \G16|ALT_INV_Mux7~1_combout\,
	dataf => \G16|ALT_INV_Mux0~3_combout\,
	combout => \G16|Mux1~0_combout\);

-- Location: LABCELL_X29_Y6_N30
\G17|ram~291feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~291feeder_combout\ = ( \G7|Reg~187_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~187_combout\,
	combout => \G17|ram~291feeder_combout\);

-- Location: FF_X29_Y6_N31
\G17|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~291feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~291_q\);

-- Location: FF_X33_Y8_N34
\G17|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~187_combout\,
	sload => VCC,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~115_q\);

-- Location: LABCELL_X27_Y9_N9
\G17|ram~131feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~131feeder_combout\ = ( \G7|Reg~187_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~187_combout\,
	combout => \G17|ram~131feeder_combout\);

-- Location: FF_X27_Y9_N10
\G17|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~131feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~131_q\);

-- Location: FF_X28_Y8_N44
\G17|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~187_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~147_q\);

-- Location: FF_X33_Y8_N29
\G17|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~187_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~51_q\);

-- Location: FF_X28_Y8_N13
\G17|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~187_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~83_q\);

-- Location: LABCELL_X31_Y9_N9
\G17|ram~67feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~67feeder_combout\ = ( \G7|Reg~187_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~187_combout\,
	combout => \G17|ram~67feeder_combout\);

-- Location: FF_X31_Y9_N10
\G17|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~67feeder_combout\,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~67_q\);

-- Location: FF_X30_Y6_N5
\G17|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~187_combout\,
	sload => VCC,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~35_q\);

-- Location: MLABCELL_X28_Y8_N12
\G17|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~547_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~35_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~51_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~67_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~83_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~51_q\,
	datab => \G17|ALT_INV_ram~83_q\,
	datac => \G17|ALT_INV_ram~67_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~35_q\,
	combout => \G17|ram~547_combout\);

-- Location: LABCELL_X27_Y9_N3
\G17|ram~99feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~99feeder_combout\ = ( \G7|Reg~187_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~187_combout\,
	combout => \G17|ram~99feeder_combout\);

-- Location: FF_X27_Y9_N4
\G17|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~99feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~99_q\);

-- Location: MLABCELL_X28_Y8_N42
\G17|ram~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~413_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~547_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~547_combout\ & ((\G17|ram~99_q\))) # (\G17|ram~547_combout\ & (\G17|ram~115_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~547_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~547_combout\ & (\G17|ram~131_q\)) # (\G17|ram~547_combout\ & ((\G17|ram~147_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~115_q\,
	datac => \G17|ALT_INV_ram~131_q\,
	datad => \G17|ALT_INV_ram~147_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~547_combout\,
	datag => \G17|ALT_INV_ram~99_q\,
	combout => \G17|ram~413_combout\);

-- Location: LABCELL_X29_Y9_N48
\G17|ram~243feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~243feeder_combout\ = ( \G7|Reg~187_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~187_combout\,
	combout => \G17|ram~243feeder_combout\);

-- Location: FF_X29_Y9_N50
\G17|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~243feeder_combout\,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~243_q\);

-- Location: MLABCELL_X25_Y8_N51
\G17|ram~259feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~259feeder_combout\ = ( \G7|Reg~187_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~187_combout\,
	combout => \G17|ram~259feeder_combout\);

-- Location: FF_X25_Y8_N52
\G17|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~259feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~259_q\);

-- Location: FF_X29_Y9_N44
\G17|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~187_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~275_q\);

-- Location: FF_X27_Y7_N38
\G17|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~187_combout\,
	sload => VCC,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~179_q\);

-- Location: LABCELL_X30_Y5_N33
\G17|ram~195feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~195feeder_combout\ = ( \G7|Reg~187_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~187_combout\,
	combout => \G17|ram~195feeder_combout\);

-- Location: FF_X30_Y5_N35
\G17|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~195feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~195_q\);

-- Location: FF_X29_Y9_N7
\G17|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~187_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~211_q\);

-- Location: FF_X31_Y6_N37
\G17|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~187_combout\,
	sload => VCC,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~163_q\);

-- Location: LABCELL_X29_Y9_N6
\G17|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~551_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux15~4_combout\ & (((\G17|ram~163_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~179_q\))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- (!\G16|Mux15~4_combout\ & (((\G17|ram~195_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\) # (\G17|ram~211_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~4_combout\,
	datab => \G17|ALT_INV_ram~179_q\,
	datac => \G17|ALT_INV_ram~195_q\,
	datad => \G17|ALT_INV_ram~211_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~163_q\,
	combout => \G17|ram~551_combout\);

-- Location: LABCELL_X29_Y7_N54
\G17|ram~227feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~227feeder_combout\ = ( \G7|Reg~187_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~187_combout\,
	combout => \G17|ram~227feeder_combout\);

-- Location: FF_X29_Y7_N55
\G17|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~227feeder_combout\,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~227_q\);

-- Location: LABCELL_X29_Y9_N42
\G17|ram~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~417_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~551_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~551_combout\ & ((\G17|ram~227_q\))) # (\G17|ram~551_combout\ & (\G17|ram~243_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~551_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~551_combout\ & (\G17|ram~259_q\)) # (\G17|ram~551_combout\ & ((\G17|ram~275_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~243_q\,
	datac => \G17|ALT_INV_ram~259_q\,
	datad => \G17|ALT_INV_ram~275_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~551_combout\,
	datag => \G17|ALT_INV_ram~227_q\,
	combout => \G17|ram~417_combout\);

-- Location: MLABCELL_X28_Y8_N18
\G17|ram~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~421_combout\ = ( \G16|Mux11~5_combout\ & ( \G17|ram~417_combout\ & ( (\G17|ram~291_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( \G17|ram~417_combout\ & ( (((\G17|ram~291_q\ & \G17|ram~303_combout\)) # (\G17|ram~413_combout\)) 
-- # (\G16|Mux12~2_combout\) ) ) ) # ( \G16|Mux11~5_combout\ & ( !\G17|ram~417_combout\ & ( (\G17|ram~291_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( !\G17|ram~417_combout\ & ( (!\G16|Mux12~2_combout\ & (((\G17|ram~291_q\ & 
-- \G17|ram~303_combout\)) # (\G17|ram~413_combout\))) # (\G16|Mux12~2_combout\ & (\G17|ram~291_q\ & ((\G17|ram~303_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111011000000000011001101011111011111110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G17|ALT_INV_ram~291_q\,
	datac => \G17|ALT_INV_ram~413_combout\,
	datad => \G17|ALT_INV_ram~303_combout\,
	datae => \G16|ALT_INV_Mux11~5_combout\,
	dataf => \G17|ALT_INV_ram~417_combout\,
	combout => \G17|ram~421_combout\);

-- Location: FF_X34_Y7_N55
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~145_q\);

-- Location: FF_X34_Y7_N53
\G7|Reg~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G7|Reg~129feeder_combout\,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~129_q\);

-- Location: FF_X35_Y9_N47
\G7|Reg~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(13),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~81_q\);

-- Location: FF_X35_Y7_N2
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~33_q\);

-- Location: LABCELL_X35_Y9_N45
\G7|Reg~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~171_combout\ = ( \G7|Reg~33_q\ & ( (\G4|rd[0]~en_q\ & (\G4|rd[0]~reg0_q\ & !\G7|Reg~81_q\)) ) ) # ( !\G7|Reg~33_q\ & ( (\G4|rd[0]~en_q\ & ((!\G4|rd[0]~reg0_q\) # (!\G7|Reg~81_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G4|ALT_INV_rd[0]~reg0_q\,
	datad => \G7|ALT_INV_Reg~81_q\,
	dataf => \G7|ALT_INV_Reg~33_q\,
	combout => \G7|Reg~171_combout\);

-- Location: LABCELL_X35_Y9_N42
\G7|Reg~203\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~203_combout\ = ( \G7|Reg~171_combout\ & ( (!\G4|rd[0]~en_q\ & \G7|Reg~129_q\) ) ) # ( !\G7|Reg~171_combout\ & ( (\G4|rd[0]~en_q\) # (\G7|Reg~145_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~145_q\,
	datab => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G7|ALT_INV_Reg~129_q\,
	dataf => \G7|ALT_INV_Reg~171_combout\,
	combout => \G7|Reg~203_combout\);

-- Location: MLABCELL_X34_Y9_N30
\G16|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux2~0_combout\ = ( \G7|Reg~203_combout\ & ( \G16|Mux0~3_combout\ ) ) # ( !\G7|Reg~203_combout\ & ( \G16|Mux0~3_combout\ & ( \G14|SAIDA\(13) ) ) ) # ( \G7|Reg~203_combout\ & ( !\G16|Mux0~3_combout\ & ( (\G14|SAIDA\(13) & \G16|Mux7~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA\(13),
	datac => \G16|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg~203_combout\,
	dataf => \G16|ALT_INV_Mux0~3_combout\,
	combout => \G16|Mux2~0_combout\);

-- Location: LABCELL_X31_Y6_N30
\G17|ram~290feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~290feeder_combout\ = ( \G7|Reg~188_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~188_combout\,
	combout => \G17|ram~290feeder_combout\);

-- Location: FF_X31_Y6_N31
\G17|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~290feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~290_q\);

-- Location: LABCELL_X29_Y9_N39
\G17|ram~242feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~242feeder_combout\ = ( \G7|Reg~188_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~188_combout\,
	combout => \G17|ram~242feeder_combout\);

-- Location: FF_X29_Y9_N41
\G17|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~242feeder_combout\,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~242_q\);

-- Location: MLABCELL_X25_Y8_N57
\G17|ram~258feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~258feeder_combout\ = ( \G7|Reg~188_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~188_combout\,
	combout => \G17|ram~258feeder_combout\);

-- Location: FF_X25_Y8_N58
\G17|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~258feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~258_q\);

-- Location: FF_X28_Y9_N43
\G17|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~274_q\);

-- Location: FF_X30_Y7_N19
\G17|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~178_q\);

-- Location: FF_X29_Y9_N25
\G17|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~210_q\);

-- Location: LABCELL_X33_Y7_N51
\G17|ram~194feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~194feeder_combout\ = ( \G7|Reg~188_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~188_combout\,
	combout => \G17|ram~194feeder_combout\);

-- Location: FF_X33_Y7_N52
\G17|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~194feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~194_q\);

-- Location: LABCELL_X31_Y6_N57
\G17|ram~162feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~162feeder_combout\ = ( \G7|Reg~188_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~188_combout\,
	combout => \G17|ram~162feeder_combout\);

-- Location: FF_X31_Y6_N58
\G17|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~162feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~162_q\);

-- Location: LABCELL_X31_Y9_N18
\G17|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~543_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~162_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~178_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~194_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~210_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~178_q\,
	datab => \G17|ALT_INV_ram~210_q\,
	datac => \G17|ALT_INV_ram~194_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	datag => \G17|ALT_INV_ram~162_q\,
	combout => \G17|ram~543_combout\);

-- Location: FF_X29_Y7_N5
\G17|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~226_q\);

-- Location: MLABCELL_X28_Y9_N42
\G17|ram~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~408_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~543_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~543_combout\ & ((\G17|ram~226_q\))) # (\G17|ram~543_combout\ & (\G17|ram~242_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~543_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~543_combout\ & (\G17|ram~258_q\)) # (\G17|ram~543_combout\ & ((\G17|ram~274_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~242_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~258_q\,
	datad => \G17|ALT_INV_ram~274_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~543_combout\,
	datag => \G17|ALT_INV_ram~226_q\,
	combout => \G17|ram~408_combout\);

-- Location: FF_X28_Y9_N26
\G17|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~146_q\);

-- Location: FF_X27_Y9_N46
\G17|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~130_q\);

-- Location: FF_X27_Y9_N16
\G17|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~114_q\);

-- Location: FF_X30_Y6_N35
\G17|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~50_q\);

-- Location: FF_X31_Y9_N11
\G17|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~66_q\);

-- Location: LABCELL_X27_Y6_N39
\G17|ram~82feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~82feeder_combout\ = ( \G7|Reg~188_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~188_combout\,
	combout => \G17|ram~82feeder_combout\);

-- Location: FF_X27_Y6_N40
\G17|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~82feeder_combout\,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~82_q\);

-- Location: LABCELL_X30_Y6_N39
\G17|ram~34feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~34feeder_combout\ = ( \G7|Reg~188_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~188_combout\,
	combout => \G17|ram~34feeder_combout\);

-- Location: FF_X30_Y6_N40
\G17|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~34feeder_combout\,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~34_q\);

-- Location: LABCELL_X29_Y9_N24
\G17|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~539_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux15~4_combout\ & (((\G17|ram~34_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\))) # (\G17|ram~50_q\))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- (!\G16|Mux15~4_combout\ & (((\G17|ram~66_q\ & ((!\G16|Mux13~2_combout\)))))) # (\G16|Mux15~4_combout\ & ((((\G16|Mux13~2_combout\) # (\G17|ram~82_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~4_combout\,
	datab => \G17|ALT_INV_ram~50_q\,
	datac => \G17|ALT_INV_ram~66_q\,
	datad => \G17|ALT_INV_ram~82_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~34_q\,
	combout => \G17|ram~539_combout\);

-- Location: FF_X27_Y9_N58
\G17|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~188_combout\,
	sload => VCC,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~98_q\);

-- Location: MLABCELL_X28_Y9_N24
\G17|ram~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~404_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~539_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~539_combout\ & (\G17|ram~98_q\)) # (\G17|ram~539_combout\ & ((\G17|ram~114_q\)))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~539_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~539_combout\ & ((\G17|ram~130_q\))) # (\G17|ram~539_combout\ & (\G17|ram~146_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~146_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~130_q\,
	datad => \G17|ALT_INV_ram~114_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~539_combout\,
	datag => \G17|ALT_INV_ram~98_q\,
	combout => \G17|ram~404_combout\);

-- Location: MLABCELL_X28_Y9_N36
\G17|ram~412\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~412_combout\ = ( \G17|ram~303_combout\ & ( \G17|ram~404_combout\ & ( ((!\G16|Mux11~5_combout\ & ((!\G16|Mux12~2_combout\) # (\G17|ram~408_combout\)))) # (\G17|ram~290_q\) ) ) ) # ( !\G17|ram~303_combout\ & ( \G17|ram~404_combout\ & ( 
-- (!\G16|Mux11~5_combout\ & ((!\G16|Mux12~2_combout\) # (\G17|ram~408_combout\))) ) ) ) # ( \G17|ram~303_combout\ & ( !\G17|ram~404_combout\ & ( ((\G17|ram~408_combout\ & (!\G16|Mux11~5_combout\ & \G16|Mux12~2_combout\))) # (\G17|ram~290_q\) ) ) ) # ( 
-- !\G17|ram~303_combout\ & ( !\G17|ram~404_combout\ & ( (\G17|ram~408_combout\ & (!\G16|Mux11~5_combout\ & \G16|Mux12~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000010101010111010111110000001100001111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~290_q\,
	datab => \G17|ALT_INV_ram~408_combout\,
	datac => \G16|ALT_INV_Mux11~5_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	datae => \G17|ALT_INV_ram~303_combout\,
	dataf => \G17|ALT_INV_ram~404_combout\,
	combout => \G17|ram~412_combout\);

-- Location: FF_X34_Y6_N17
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~144_q\);

-- Location: LABCELL_X35_Y6_N51
\G7|Reg~80feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~80feeder_combout\ = ( \G18|SAIDA\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G18|ALT_INV_SAIDA\(12),
	combout => \G7|Reg~80feeder_combout\);

-- Location: FF_X35_Y6_N53
\G7|Reg~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G7|Reg~80feeder_combout\,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~80_q\);

-- Location: FF_X35_Y7_N23
\G7|Reg~32DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(12),
	sload => VCC,
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~32DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N6
\G7|Reg~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~172_combout\ = ( \G7|Reg~32DUPLICATE_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & (\G4|rd[0]~reg0_q\ & !\G7|Reg~80_q\)) ) ) # ( !\G7|Reg~32DUPLICATE_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & ((!\G4|rd[0]~reg0_q\) # (!\G7|Reg~80_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datab => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~80_q\,
	dataf => \G7|ALT_INV_Reg~32DUPLICATE_q\,
	combout => \G7|Reg~172_combout\);

-- Location: MLABCELL_X34_Y6_N18
\G7|Reg~204\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~204_combout\ = ( \G7|Reg~172_combout\ & ( (!\G4|rd[0]~enDUPLICATE_q\ & \G7|Reg~128_q\) ) ) # ( !\G7|Reg~172_combout\ & ( (\G7|Reg~144_q\) # (\G4|rd[0]~enDUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~144_q\,
	datad => \G7|ALT_INV_Reg~128_q\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G7|Reg~204_combout\);

-- Location: LABCELL_X27_Y6_N45
\G17|ram~289feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~289feeder_combout\ = ( \G7|Reg~189_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~189_combout\,
	combout => \G17|ram~289feeder_combout\);

-- Location: FF_X27_Y6_N46
\G17|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~289feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~289_q\);

-- Location: LABCELL_X27_Y9_N30
\G17|ram~113feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~113feeder_combout\ = ( \G7|Reg~189_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~189_combout\,
	combout => \G17|ram~113feeder_combout\);

-- Location: FF_X27_Y9_N31
\G17|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~113feeder_combout\,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~113_q\);

-- Location: MLABCELL_X28_Y10_N9
\G17|ram~129feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~129feeder_combout\ = ( \G7|Reg~189_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~189_combout\,
	combout => \G17|ram~129feeder_combout\);

-- Location: FF_X28_Y10_N10
\G17|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~129feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~129_q\);

-- Location: FF_X30_Y10_N43
\G17|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~145_q\);

-- Location: FF_X31_Y9_N34
\G17|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~49_q\);

-- Location: LABCELL_X27_Y6_N9
\G17|ram~81feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~81feeder_combout\ = ( \G7|Reg~189_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~189_combout\,
	combout => \G17|ram~81feeder_combout\);

-- Location: FF_X27_Y6_N10
\G17|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~81feeder_combout\,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~81_q\);

-- Location: FF_X30_Y8_N22
\G17|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~65_q\);

-- Location: LABCELL_X30_Y6_N36
\G17|ram~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~33feeder_combout\ = ( \G7|Reg~189_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~189_combout\,
	combout => \G17|ram~33feeder_combout\);

-- Location: FF_X30_Y6_N37
\G17|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~33feeder_combout\,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~33_q\);

-- Location: LABCELL_X31_Y10_N51
\G17|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~531_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~33_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~49_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~65_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~81_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~49_q\,
	datab => \G17|ALT_INV_ram~81_q\,
	datac => \G17|ALT_INV_ram~65_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	datag => \G17|ALT_INV_ram~33_q\,
	combout => \G17|ram~531_combout\);

-- Location: MLABCELL_X28_Y10_N27
\G17|ram~97feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~97feeder_combout\ = ( \G7|Reg~189_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~189_combout\,
	combout => \G17|ram~97feeder_combout\);

-- Location: FF_X28_Y10_N28
\G17|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~97feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~97_q\);

-- Location: LABCELL_X30_Y10_N42
\G17|ram~395\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~395_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~531_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~531_combout\ & ((\G17|ram~97_q\))) # (\G17|ram~531_combout\ & (\G17|ram~113_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~531_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~531_combout\ & (\G17|ram~129_q\)) # (\G17|ram~531_combout\ & ((\G17|ram~145_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~113_q\,
	datac => \G17|ALT_INV_ram~129_q\,
	datad => \G17|ALT_INV_ram~145_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~531_combout\,
	datag => \G17|ALT_INV_ram~97_q\,
	combout => \G17|ram~395_combout\);

-- Location: FF_X29_Y9_N40
\G17|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~241_q\);

-- Location: FF_X25_Y8_N55
\G17|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~257_q\);

-- Location: FF_X30_Y10_N14
\G17|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~273_q\);

-- Location: FF_X27_Y7_N31
\G17|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~177_q\);

-- Location: FF_X30_Y8_N37
\G17|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~209_q\);

-- Location: LABCELL_X30_Y5_N24
\G17|ram~193feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~193feeder_combout\ = ( \G7|Reg~189_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~189_combout\,
	combout => \G17|ram~193feeder_combout\);

-- Location: FF_X30_Y5_N25
\G17|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~193feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~193_q\);

-- Location: FF_X31_Y6_N22
\G17|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~161_q\);

-- Location: LABCELL_X30_Y8_N36
\G17|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~535_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~161_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~177_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~193_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~209_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~177_q\,
	datab => \G17|ALT_INV_ram~209_q\,
	datac => \G17|ALT_INV_ram~193_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	datag => \G17|ALT_INV_ram~161_q\,
	combout => \G17|ram~535_combout\);

-- Location: FF_X29_Y7_N10
\G17|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~189_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~225_q\);

-- Location: LABCELL_X30_Y10_N12
\G17|ram~399\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~399_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~535_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~535_combout\ & ((\G17|ram~225_q\))) # (\G17|ram~535_combout\ & (\G17|ram~241_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~535_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~535_combout\ & (\G17|ram~257_q\)) # (\G17|ram~535_combout\ & ((\G17|ram~273_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~241_q\,
	datac => \G17|ALT_INV_ram~257_q\,
	datad => \G17|ALT_INV_ram~273_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~535_combout\,
	datag => \G17|ALT_INV_ram~225_q\,
	combout => \G17|ram~399_combout\);

-- Location: LABCELL_X30_Y10_N54
\G17|ram~403\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~403_combout\ = ( \G16|Mux12~2_combout\ & ( \G17|ram~399_combout\ & ( (!\G16|Mux11~5_combout\) # ((\G17|ram~289_q\ & \G17|ram~303_combout\)) ) ) ) # ( !\G16|Mux12~2_combout\ & ( \G17|ram~399_combout\ & ( (!\G17|ram~289_q\ & (!\G16|Mux11~5_combout\ 
-- & ((\G17|ram~395_combout\)))) # (\G17|ram~289_q\ & (((!\G16|Mux11~5_combout\ & \G17|ram~395_combout\)) # (\G17|ram~303_combout\))) ) ) ) # ( \G16|Mux12~2_combout\ & ( !\G17|ram~399_combout\ & ( (\G17|ram~289_q\ & \G17|ram~303_combout\) ) ) ) # ( 
-- !\G16|Mux12~2_combout\ & ( !\G17|ram~399_combout\ & ( (!\G17|ram~289_q\ & (!\G16|Mux11~5_combout\ & ((\G17|ram~395_combout\)))) # (\G17|ram~289_q\ & (((!\G16|Mux11~5_combout\ & \G17|ram~395_combout\)) # (\G17|ram~303_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001010000010100000101110011011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~289_q\,
	datab => \G16|ALT_INV_Mux11~5_combout\,
	datac => \G17|ALT_INV_ram~303_combout\,
	datad => \G17|ALT_INV_ram~395_combout\,
	datae => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G17|ALT_INV_ram~399_combout\,
	combout => \G17|ram~403_combout\);

-- Location: FF_X34_Y6_N29
\G7|Reg~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(11),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~127_q\);

-- Location: FF_X35_Y7_N8
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~31_q\);

-- Location: FF_X34_Y6_N56
\G7|Reg~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(11),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~79_q\);

-- Location: MLABCELL_X34_Y6_N54
\G7|Reg~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~173_combout\ = ( \G4|rd[0]~reg0_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & !\G7|Reg~79_q\) ) ) # ( !\G4|rd[0]~reg0_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & !\G7|Reg~31_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~31_q\,
	datad => \G7|ALT_INV_Reg~79_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~173_combout\);

-- Location: MLABCELL_X34_Y6_N27
\G7|Reg~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~205_combout\ = ( \G7|Reg~173_combout\ & ( (!\G4|rd[0]~enDUPLICATE_q\ & \G7|Reg~127_q\) ) ) # ( !\G7|Reg~173_combout\ & ( (\G7|Reg~143_q\) # (\G4|rd[0]~enDUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~143_q\,
	datad => \G7|ALT_INV_Reg~127_q\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G7|Reg~205_combout\);

-- Location: MLABCELL_X34_Y6_N42
\G16|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux4~0_combout\ = ( \G16|Mux7~1_combout\ & ( (!\G14|SAIDA\(11) & (\G16|Mux0~3_combout\ & \G7|Reg~205_combout\)) # (\G14|SAIDA\(11) & ((\G7|Reg~205_combout\) # (\G16|Mux0~3_combout\))) ) ) # ( !\G16|Mux7~1_combout\ & ( (\G16|Mux0~3_combout\ & 
-- ((\G7|Reg~205_combout\) # (\G14|SAIDA\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(11),
	datab => \G16|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg~205_combout\,
	dataf => \G16|ALT_INV_Mux7~1_combout\,
	combout => \G16|Mux4~0_combout\);

-- Location: FF_X34_Y6_N25
\G7|Reg~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(10),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~126_q\);

-- Location: FF_X35_Y7_N49
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~142_q\);

-- Location: LABCELL_X35_Y7_N30
\G7|Reg~30feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~30feeder_combout\ = ( \G18|SAIDA\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G18|ALT_INV_SAIDA\(10),
	combout => \G7|Reg~30feeder_combout\);

-- Location: FF_X35_Y7_N32
\G7|Reg~30DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G7|Reg~30feeder_combout\,
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~30DUPLICATE_q\);

-- Location: FF_X35_Y7_N17
\G7|Reg~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(10),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~46_q\);

-- Location: LABCELL_X35_Y7_N15
\G7|Reg~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~158_combout\ = ( \G7|Reg~46_q\ & ( \G4|rs[0]~en_q\ & ( (!\G4|rt[0]~reg0_q\ & !\G7|Reg~30DUPLICATE_q\) ) ) ) # ( !\G7|Reg~46_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~30DUPLICATE_q\) # (\G4|rt[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~30DUPLICATE_q\,
	datae => \G7|ALT_INV_Reg~46_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~158_combout\);

-- Location: LABCELL_X35_Y7_N48
\G7|Reg~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~190_combout\ = ( \G7|Reg~142_q\ & ( \G7|Reg~158_combout\ & ( (\G7|Reg~126_q\ & !\G4|rs[0]~en_q\) ) ) ) # ( !\G7|Reg~142_q\ & ( \G7|Reg~158_combout\ & ( (\G7|Reg~126_q\ & !\G4|rs[0]~en_q\) ) ) ) # ( \G7|Reg~142_q\ & ( !\G7|Reg~158_combout\ ) ) # ( 
-- !\G7|Reg~142_q\ & ( !\G7|Reg~158_combout\ & ( \G4|rs[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~126_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	datae => \G7|ALT_INV_Reg~142_q\,
	dataf => \G7|ALT_INV_Reg~158_combout\,
	combout => \G7|Reg~190_combout\);

-- Location: LABCELL_X31_Y5_N39
\G17|ram~288feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~288feeder_combout\ = ( \G7|Reg~190_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~190_combout\,
	combout => \G17|ram~288feeder_combout\);

-- Location: FF_X31_Y5_N40
\G17|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~288feeder_combout\,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~288_q\);

-- Location: LABCELL_X29_Y9_N54
\G17|ram~240feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~240feeder_combout\ = ( \G7|Reg~190_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~190_combout\,
	combout => \G17|ram~240feeder_combout\);

-- Location: FF_X29_Y9_N56
\G17|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~240feeder_combout\,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~240_q\);

-- Location: MLABCELL_X25_Y8_N39
\G17|ram~256feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~256feeder_combout\ = ( \G7|Reg~190_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~190_combout\,
	combout => \G17|ram~256feeder_combout\);

-- Location: FF_X25_Y8_N40
\G17|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~256feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~256_q\);

-- Location: FF_X30_Y10_N37
\G17|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~190_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~272_q\);

-- Location: FF_X30_Y8_N26
\G17|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~190_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~208_q\);

-- Location: LABCELL_X27_Y7_N21
\G17|ram~176feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~176feeder_combout\ = ( \G7|Reg~190_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~190_combout\,
	combout => \G17|ram~176feeder_combout\);

-- Location: FF_X27_Y7_N22
\G17|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~176feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~176_q\);

-- Location: LABCELL_X31_Y7_N24
\G17|ram~192feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~192feeder_combout\ = ( \G7|Reg~190_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~190_combout\,
	combout => \G17|ram~192feeder_combout\);

-- Location: FF_X31_Y7_N25
\G17|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~192feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~192_q\);

-- Location: FF_X31_Y6_N56
\G17|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~190_combout\,
	sload => VCC,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~160_q\);

-- Location: LABCELL_X30_Y8_N24
\G17|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~527_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~160_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~176_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~192_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~208_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~208_q\,
	datab => \G17|ALT_INV_ram~176_q\,
	datac => \G17|ALT_INV_ram~192_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	datag => \G17|ALT_INV_ram~160_q\,
	combout => \G17|ram~527_combout\);

-- Location: FF_X29_Y7_N1
\G17|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~190_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~224_q\);

-- Location: LABCELL_X30_Y10_N36
\G17|ram~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~390_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~527_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~527_combout\ & ((\G17|ram~224_q\))) # (\G17|ram~527_combout\ & (\G17|ram~240_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~527_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~527_combout\ & (\G17|ram~256_q\)) # (\G17|ram~527_combout\ & ((\G17|ram~272_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~240_q\,
	datac => \G17|ALT_INV_ram~256_q\,
	datad => \G17|ALT_INV_ram~272_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~527_combout\,
	datag => \G17|ALT_INV_ram~224_q\,
	combout => \G17|ram~390_combout\);

-- Location: FF_X30_Y10_N8
\G17|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~190_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~144_q\);

-- Location: LABCELL_X27_Y7_N0
\G17|ram~128feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~128feeder_combout\ = ( \G7|Reg~190_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~190_combout\,
	combout => \G17|ram~128feeder_combout\);

-- Location: FF_X27_Y7_N2
\G17|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~128feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~128_q\);

-- Location: FF_X27_Y8_N35
\G17|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~190_combout\,
	sload => VCC,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~112_q\);

-- Location: LABCELL_X31_Y9_N30
\G17|ram~48feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~48feeder_combout\ = ( \G7|Reg~190_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~190_combout\,
	combout => \G17|ram~48feeder_combout\);

-- Location: FF_X31_Y9_N31
\G17|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~48feeder_combout\,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~48_q\);

-- Location: FF_X31_Y10_N47
\G17|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~190_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~80_q\);

-- Location: FF_X30_Y8_N56
\G17|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~190_combout\,
	sload => VCC,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~64_q\);

-- Location: FF_X30_Y6_N20
\G17|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~190_combout\,
	sload => VCC,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~32_q\);

-- Location: LABCELL_X31_Y10_N45
\G17|ram~523\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~523_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~32_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~48_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~64_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~80_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~48_q\,
	datab => \G17|ALT_INV_ram~80_q\,
	datac => \G17|ALT_INV_ram~64_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	datag => \G17|ALT_INV_ram~32_q\,
	combout => \G17|ram~523_combout\);

-- Location: MLABCELL_X28_Y6_N12
\G17|ram~96feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~96feeder_combout\ = ( \G7|Reg~190_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~190_combout\,
	combout => \G17|ram~96feeder_combout\);

-- Location: FF_X28_Y6_N13
\G17|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~96feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~96_q\);

-- Location: LABCELL_X30_Y10_N6
\G17|ram~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~386_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~523_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~523_combout\ & (\G17|ram~96_q\)) # (\G17|ram~523_combout\ & ((\G17|ram~112_q\)))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~523_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~523_combout\ & ((\G17|ram~128_q\))) # (\G17|ram~523_combout\ & (\G17|ram~144_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~144_q\,
	datac => \G17|ALT_INV_ram~128_q\,
	datad => \G17|ALT_INV_ram~112_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~523_combout\,
	datag => \G17|ALT_INV_ram~96_q\,
	combout => \G17|ram~386_combout\);

-- Location: LABCELL_X30_Y10_N48
\G17|ram~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~394_combout\ = ( \G17|ram~390_combout\ & ( \G17|ram~386_combout\ & ( (!\G16|Mux11~5_combout\) # ((\G17|ram~288_q\ & \G17|ram~303_combout\)) ) ) ) # ( !\G17|ram~390_combout\ & ( \G17|ram~386_combout\ & ( (!\G16|Mux12~2_combout\ & 
-- ((!\G16|Mux11~5_combout\) # ((\G17|ram~288_q\ & \G17|ram~303_combout\)))) # (\G16|Mux12~2_combout\ & (\G17|ram~288_q\ & (\G17|ram~303_combout\))) ) ) ) # ( \G17|ram~390_combout\ & ( !\G17|ram~386_combout\ & ( (!\G16|Mux12~2_combout\ & (\G17|ram~288_q\ & 
-- (\G17|ram~303_combout\))) # (\G16|Mux12~2_combout\ & ((!\G16|Mux11~5_combout\) # ((\G17|ram~288_q\ & \G17|ram~303_combout\)))) ) ) ) # ( !\G17|ram~390_combout\ & ( !\G17|ram~386_combout\ & ( (\G17|ram~288_q\ & \G17|ram~303_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101110000001110101011000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~2_combout\,
	datab => \G17|ALT_INV_ram~288_q\,
	datac => \G17|ALT_INV_ram~303_combout\,
	datad => \G16|ALT_INV_Mux11~5_combout\,
	datae => \G17|ALT_INV_ram~390_combout\,
	dataf => \G17|ALT_INV_ram~386_combout\,
	combout => \G17|ram~394_combout\);

-- Location: LABCELL_X31_Y5_N45
\G14|SAIDA[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[10]~feeder_combout\ = ( \G7|Reg~190_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~190_combout\,
	combout => \G14|SAIDA[10]~feeder_combout\);

-- Location: FF_X31_Y5_N46
\G14|SAIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[10]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(10));

-- Location: MLABCELL_X34_Y6_N3
\G16|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux5~0_combout\ = ( \G16|Mux7~1_combout\ & ( (!\G14|SAIDA\(10) & (\G16|Mux0~3_combout\ & \G7|Reg~206_combout\)) # (\G14|SAIDA\(10) & ((\G7|Reg~206_combout\) # (\G16|Mux0~3_combout\))) ) ) # ( !\G16|Mux7~1_combout\ & ( (\G16|Mux0~3_combout\ & 
-- ((\G7|Reg~206_combout\) # (\G14|SAIDA\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(10),
	datac => \G16|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg~206_combout\,
	dataf => \G16|ALT_INV_Mux7~1_combout\,
	combout => \G16|Mux5~0_combout\);

-- Location: FF_X29_Y6_N7
\G17|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~191_combout\,
	sload => VCC,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~287_q\);

-- Location: FF_X27_Y8_N31
\G17|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~191_combout\,
	sload => VCC,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~111_q\);

-- Location: MLABCELL_X28_Y10_N45
\G17|ram~127feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~127feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~127feeder_combout\);

-- Location: FF_X28_Y10_N47
\G17|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~127feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~127_q\);

-- Location: FF_X30_Y10_N29
\G17|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~191_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~143_q\);

-- Location: LABCELL_X31_Y9_N36
\G17|ram~47feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~47feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~47feeder_combout\);

-- Location: FF_X31_Y9_N37
\G17|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~47feeder_combout\,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~47_q\);

-- Location: FF_X28_Y8_N11
\G17|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~191_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~79_q\);

-- Location: LABCELL_X30_Y8_N21
\G17|ram~63feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~63feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~63feeder_combout\);

-- Location: FF_X30_Y8_N23
\G17|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~63feeder_combout\,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~63_q\);

-- Location: LABCELL_X30_Y6_N51
\G17|ram~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~31feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~31feeder_combout\);

-- Location: FF_X30_Y6_N52
\G17|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~31feeder_combout\,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~31_q\);

-- Location: LABCELL_X31_Y10_N12
\G17|ram~515\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~515_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~31_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~47_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~63_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~79_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~47_q\,
	datab => \G17|ALT_INV_ram~79_q\,
	datac => \G17|ALT_INV_ram~63_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~31_q\,
	combout => \G17|ram~515_combout\);

-- Location: MLABCELL_X28_Y10_N3
\G17|ram~95feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~95feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~95feeder_combout\);

-- Location: FF_X28_Y10_N5
\G17|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~95feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~95_q\);

-- Location: LABCELL_X30_Y10_N27
\G17|ram~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~377_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~515_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~515_combout\ & ((\G17|ram~95_q\))) # (\G17|ram~515_combout\ & (\G17|ram~111_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~515_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~515_combout\ & (\G17|ram~127_q\)) # (\G17|ram~515_combout\ & ((\G17|ram~143_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~111_q\,
	datac => \G17|ALT_INV_ram~127_q\,
	datad => \G17|ALT_INV_ram~143_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~515_combout\,
	datag => \G17|ALT_INV_ram~95_q\,
	combout => \G17|ram~377_combout\);

-- Location: LABCELL_X29_Y7_N18
\G17|ram~239feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~239feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~239feeder_combout\);

-- Location: FF_X29_Y7_N19
\G17|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~239feeder_combout\,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~239_q\);

-- Location: MLABCELL_X25_Y8_N33
\G17|ram~255feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~255feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~255feeder_combout\);

-- Location: FF_X25_Y8_N34
\G17|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~255feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~255_q\);

-- Location: FF_X29_Y10_N14
\G17|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~191_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~271_q\);

-- Location: FF_X27_Y7_N16
\G17|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~191_combout\,
	sload => VCC,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~175_q\);

-- Location: FF_X30_Y8_N32
\G17|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~191_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~207_q\);

-- Location: LABCELL_X31_Y7_N57
\G17|ram~191feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~191feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~191feeder_combout\);

-- Location: FF_X31_Y7_N58
\G17|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~191feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~191_q\);

-- Location: LABCELL_X31_Y6_N27
\G17|ram~159feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~159feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~159feeder_combout\);

-- Location: FF_X31_Y6_N28
\G17|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~159feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~159_q\);

-- Location: LABCELL_X30_Y8_N30
\G17|ram~519\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~519_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~159_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~175_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~191_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~207_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~175_q\,
	datab => \G17|ALT_INV_ram~207_q\,
	datac => \G17|ALT_INV_ram~191_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	datag => \G17|ALT_INV_ram~159_q\,
	combout => \G17|ram~519_combout\);

-- Location: LABCELL_X29_Y7_N6
\G17|ram~223feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~223feeder_combout\ = ( \G7|Reg~191_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~191_combout\,
	combout => \G17|ram~223feeder_combout\);

-- Location: FF_X29_Y7_N7
\G17|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~223feeder_combout\,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~223_q\);

-- Location: LABCELL_X29_Y10_N12
\G17|ram~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~381_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~519_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~519_combout\ & ((\G17|ram~223_q\))) # (\G17|ram~519_combout\ & (\G17|ram~239_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~519_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~519_combout\ & (\G17|ram~255_q\)) # (\G17|ram~519_combout\ & ((\G17|ram~271_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~239_q\,
	datac => \G17|ALT_INV_ram~255_q\,
	datad => \G17|ALT_INV_ram~271_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~519_combout\,
	datag => \G17|ALT_INV_ram~223_q\,
	combout => \G17|ram~381_combout\);

-- Location: LABCELL_X29_Y10_N54
\G17|ram~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~385_combout\ = ( \G16|Mux11~5_combout\ & ( \G17|ram~381_combout\ & ( (\G17|ram~287_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( \G17|ram~381_combout\ & ( (((\G17|ram~287_q\ & \G17|ram~303_combout\)) # (\G17|ram~377_combout\)) 
-- # (\G16|Mux12~2_combout\) ) ) ) # ( \G16|Mux11~5_combout\ & ( !\G17|ram~381_combout\ & ( (\G17|ram~287_q\ & \G17|ram~303_combout\) ) ) ) # ( !\G16|Mux11~5_combout\ & ( !\G17|ram~381_combout\ & ( (!\G17|ram~287_q\ & (!\G16|Mux12~2_combout\ & 
-- (\G17|ram~377_combout\))) # (\G17|ram~287_q\ & (((!\G16|Mux12~2_combout\ & \G17|ram~377_combout\)) # (\G17|ram~303_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011101000000000101010100111111011111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~287_q\,
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G17|ALT_INV_ram~377_combout\,
	datad => \G17|ALT_INV_ram~303_combout\,
	datae => \G16|ALT_INV_Mux11~5_combout\,
	dataf => \G17|ALT_INV_ram~381_combout\,
	combout => \G17|ram~385_combout\);

-- Location: FF_X34_Y6_N13
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~141_q\);

-- Location: FF_X34_Y6_N41
\G7|Reg~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(9),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~77_q\);

-- Location: FF_X33_Y6_N50
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~29_q\);

-- Location: MLABCELL_X34_Y6_N39
\G7|Reg~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~175_combout\ = ( \G7|Reg~29_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & (\G4|rd[0]~reg0_q\ & !\G7|Reg~77_q\)) ) ) # ( !\G7|Reg~29_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & ((!\G4|rd[0]~reg0_q\) # (!\G7|Reg~77_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G4|ALT_INV_rd[0]~reg0_q\,
	datad => \G7|ALT_INV_Reg~77_q\,
	dataf => \G7|ALT_INV_Reg~29_q\,
	combout => \G7|Reg~175_combout\);

-- Location: MLABCELL_X34_Y6_N21
\G7|Reg~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~207_combout\ = ( \G7|Reg~175_combout\ & ( (!\G4|rd[0]~enDUPLICATE_q\ & \G7|Reg~125_q\) ) ) # ( !\G7|Reg~175_combout\ & ( (\G7|Reg~141_q\) # (\G4|rd[0]~enDUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~141_q\,
	datad => \G7|ALT_INV_Reg~125_q\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G7|Reg~207_combout\);

-- Location: LABCELL_X33_Y7_N33
\G16|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux6~0_combout\ = ( \G16|Mux7~1_combout\ & ( \G16|Mux0~3_combout\ & ( (\G7|Reg~207_combout\) # (\G14|SAIDA\(9)) ) ) ) # ( !\G16|Mux7~1_combout\ & ( \G16|Mux0~3_combout\ & ( (\G7|Reg~207_combout\) # (\G14|SAIDA\(9)) ) ) ) # ( \G16|Mux7~1_combout\ & ( 
-- !\G16|Mux0~3_combout\ & ( (\G14|SAIDA\(9) & \G7|Reg~207_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(9),
	datac => \G7|ALT_INV_Reg~207_combout\,
	datae => \G16|ALT_INV_Mux7~1_combout\,
	dataf => \G16|ALT_INV_Mux0~3_combout\,
	combout => \G16|Mux6~0_combout\);

-- Location: FF_X30_Y6_N28
\G17|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~286_q\);

-- Location: FF_X27_Y8_N40
\G17|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~110_q\);

-- Location: MLABCELL_X28_Y10_N21
\G17|ram~126feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~126feeder_combout\ = ( \G7|Reg~192_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~192_combout\,
	combout => \G17|ram~126feeder_combout\);

-- Location: FF_X28_Y10_N22
\G17|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~126feeder_combout\,
	ena => \G17|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~126_q\);

-- Location: FF_X29_Y10_N37
\G17|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~142_q\);

-- Location: FF_X33_Y8_N59
\G17|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~46_q\);

-- Location: FF_X28_Y8_N32
\G17|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~78_q\);

-- Location: FF_X30_Y8_N58
\G17|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~62_q\);

-- Location: FF_X30_Y6_N50
\G17|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~30_q\);

-- Location: MLABCELL_X28_Y8_N30
\G17|ram~507\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~507_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~4_combout\ & (((\G17|ram~30_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~46_q\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~4_combout\ & (((\G17|ram~62_q\ & !\G16|Mux13~2_combout\)))) # (\G16|Mux15~4_combout\ & (((\G16|Mux13~2_combout\)) # (\G17|ram~78_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~46_q\,
	datab => \G17|ALT_INV_ram~78_q\,
	datac => \G17|ALT_INV_ram~62_q\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	datag => \G17|ALT_INV_ram~30_q\,
	combout => \G17|ram~507_combout\);

-- Location: MLABCELL_X28_Y10_N12
\G17|ram~94feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~94feeder_combout\ = ( \G7|Reg~192_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~192_combout\,
	combout => \G17|ram~94feeder_combout\);

-- Location: FF_X28_Y10_N13
\G17|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~94feeder_combout\,
	ena => \G17|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~94_q\);

-- Location: LABCELL_X29_Y10_N36
\G17|ram~368\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~368_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~507_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~507_combout\ & ((\G17|ram~94_q\))) # (\G17|ram~507_combout\ & (\G17|ram~110_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~507_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~507_combout\ & (\G17|ram~126_q\)) # (\G17|ram~507_combout\ & ((\G17|ram~142_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~2_combout\,
	datab => \G17|ALT_INV_ram~110_q\,
	datac => \G17|ALT_INV_ram~126_q\,
	datad => \G17|ALT_INV_ram~142_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~507_combout\,
	datag => \G17|ALT_INV_ram~94_q\,
	combout => \G17|ram~368_combout\);

-- Location: FF_X29_Y7_N16
\G17|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~238_q\);

-- Location: MLABCELL_X25_Y8_N36
\G17|ram~254feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~254feeder_combout\ = ( \G7|Reg~192_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~192_combout\,
	combout => \G17|ram~254feeder_combout\);

-- Location: FF_X25_Y8_N37
\G17|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~254feeder_combout\,
	ena => \G17|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~254_q\);

-- Location: FF_X29_Y10_N44
\G17|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~270_q\);

-- Location: LABCELL_X27_Y7_N36
\G17|ram~174feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~174feeder_combout\ = ( \G7|Reg~192_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~192_combout\,
	combout => \G17|ram~174feeder_combout\);

-- Location: FF_X27_Y7_N37
\G17|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~174feeder_combout\,
	ena => \G17|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~174_q\);

-- Location: FF_X30_Y8_N8
\G17|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~206_q\);

-- Location: MLABCELL_X28_Y10_N57
\G17|ram~190feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~190feeder_combout\ = ( \G7|Reg~192_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~192_combout\,
	combout => \G17|ram~190feeder_combout\);

-- Location: FF_X28_Y10_N58
\G17|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~190feeder_combout\,
	ena => \G17|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~190_q\);

-- Location: LABCELL_X31_Y6_N0
\G17|ram~158feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~158feeder_combout\ = ( \G7|Reg~192_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~192_combout\,
	combout => \G17|ram~158feeder_combout\);

-- Location: FF_X31_Y6_N1
\G17|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~158feeder_combout\,
	ena => \G17|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~158_q\);

-- Location: LABCELL_X30_Y8_N6
\G17|ram~511\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~511_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~158_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~174_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & ((!\G16|Mux15~4_combout\ & ((\G17|ram~190_q\))) # (\G16|Mux15~4_combout\ & (\G17|ram~206_q\)))) # (\G16|Mux13~2_combout\ & (((\G16|Mux15~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~174_q\,
	datab => \G17|ALT_INV_ram~206_q\,
	datac => \G17|ALT_INV_ram~190_q\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	datag => \G17|ALT_INV_ram~158_q\,
	combout => \G17|ram~511_combout\);

-- Location: FF_X29_Y7_N28
\G17|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G7|Reg~192_combout\,
	sload => VCC,
	ena => \G17|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G17|ram~222_q\);

-- Location: LABCELL_X29_Y10_N42
\G17|ram~372\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~372_combout\ = ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux13~2_combout\ & ((((\G17|ram~511_combout\))))) # (\G16|Mux13~2_combout\ & (((!\G17|ram~511_combout\ & ((\G17|ram~222_q\))) # (\G17|ram~511_combout\ & (\G17|ram~238_q\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~2_combout\ & (((\G17|ram~511_combout\)))) # (\G16|Mux13~2_combout\ & ((!\G17|ram~511_combout\ & (\G17|ram~254_q\)) # (\G17|ram~511_combout\ & ((\G17|ram~270_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~238_q\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|ALT_INV_ram~254_q\,
	datad => \G17|ALT_INV_ram~270_q\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~511_combout\,
	datag => \G17|ALT_INV_ram~222_q\,
	combout => \G17|ram~372_combout\);

-- Location: LABCELL_X29_Y10_N24
\G17|ram~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~376_combout\ = ( \G17|ram~368_combout\ & ( \G17|ram~372_combout\ & ( (!\G16|Mux11~5_combout\) # ((\G17|ram~286_q\ & \G17|ram~303_combout\)) ) ) ) # ( !\G17|ram~368_combout\ & ( \G17|ram~372_combout\ & ( (!\G17|ram~286_q\ & (\G16|Mux12~2_combout\ 
-- & (!\G16|Mux11~5_combout\))) # (\G17|ram~286_q\ & (((\G16|Mux12~2_combout\ & !\G16|Mux11~5_combout\)) # (\G17|ram~303_combout\))) ) ) ) # ( \G17|ram~368_combout\ & ( !\G17|ram~372_combout\ & ( (!\G17|ram~286_q\ & (!\G16|Mux12~2_combout\ & 
-- (!\G16|Mux11~5_combout\))) # (\G17|ram~286_q\ & (((!\G16|Mux12~2_combout\ & !\G16|Mux11~5_combout\)) # (\G17|ram~303_combout\))) ) ) ) # ( !\G17|ram~368_combout\ & ( !\G17|ram~372_combout\ & ( (\G17|ram~286_q\ & \G17|ram~303_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101110000001101010100110000011101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~286_q\,
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G16|ALT_INV_Mux11~5_combout\,
	datad => \G17|ALT_INV_ram~303_combout\,
	datae => \G17|ALT_INV_ram~368_combout\,
	dataf => \G17|ALT_INV_ram~372_combout\,
	combout => \G17|ram~376_combout\);

-- Location: FF_X33_Y6_N38
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~140_q\);

-- Location: FF_X34_Y6_N35
\G7|Reg~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(8),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~124_q\);

-- Location: FF_X33_Y6_N16
\G7|Reg~28DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(8),
	sload => VCC,
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~28DUPLICATE_q\);

-- Location: FF_X34_Y6_N11
\G7|Reg~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(8),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~76_q\);

-- Location: MLABCELL_X34_Y6_N9
\G7|Reg~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~176_combout\ = ( \G4|rd[0]~reg0_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & !\G7|Reg~76_q\) ) ) # ( !\G4|rd[0]~reg0_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & !\G7|Reg~28DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~28DUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~76_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~176_combout\);

-- Location: MLABCELL_X34_Y6_N57
\G7|Reg~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~208_combout\ = ( \G7|Reg~176_combout\ & ( (!\G4|rd[0]~enDUPLICATE_q\ & \G7|Reg~124_q\) ) ) # ( !\G7|Reg~176_combout\ & ( (\G7|Reg~140_q\) # (\G4|rd[0]~enDUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datab => \G7|ALT_INV_Reg~140_q\,
	datac => \G7|ALT_INV_Reg~124_q\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	combout => \G7|Reg~208_combout\);

-- Location: LABCELL_X31_Y8_N24
\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( \G7|Reg~208_combout\ ) + ( \G14|SAIDA\(8) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( \G7|Reg~208_combout\ ) + ( \G14|SAIDA\(8) ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(8),
	datad => \G7|ALT_INV_Reg~208_combout\,
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

-- Location: LABCELL_X33_Y7_N39
\G16|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~2_combout\ = ( \G16|Mux7~1_combout\ & ( \G16|Mux0~3_combout\ & ( (\G14|SAIDA\(8)) # (\G7|Reg~208_combout\) ) ) ) # ( !\G16|Mux7~1_combout\ & ( \G16|Mux0~3_combout\ & ( (\G14|SAIDA\(8)) # (\G7|Reg~208_combout\) ) ) ) # ( \G16|Mux7~1_combout\ & ( 
-- !\G16|Mux0~3_combout\ & ( (\G7|Reg~208_combout\ & \G14|SAIDA\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~208_combout\,
	datac => \G14|ALT_INV_SAIDA\(8),
	datae => \G16|ALT_INV_Mux7~1_combout\,
	dataf => \G16|ALT_INV_Mux0~3_combout\,
	combout => \G16|Mux7~2_combout\);

-- Location: LABCELL_X35_Y8_N24
\G16|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~33_sumout\ = SUM(( !\G14|SAIDA\(8) $ (\G7|Reg~208_combout\) ) + ( \G16|Add1~31\ ) + ( \G16|Add1~30\ ))
-- \G16|Add1~34\ = CARRY(( !\G14|SAIDA\(8) $ (\G7|Reg~208_combout\) ) + ( \G16|Add1~31\ ) + ( \G16|Add1~30\ ))
-- \G16|Add1~35\ = SHARE((!\G14|SAIDA\(8) & \G7|Reg~208_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA\(8),
	datac => \G7|ALT_INV_Reg~208_combout\,
	cin => \G16|Add1~30\,
	sharein => \G16|Add1~31\,
	sumout => \G16|Add1~33_sumout\,
	cout => \G16|Add1~34\,
	shareout => \G16|Add1~35\);

-- Location: LABCELL_X29_Y10_N33
\G16|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~3_combout\ = ( \G16|Mux0~3_combout\ & ( \G16|Add1~33_sumout\ & ( (!\G16|Mux0~2_combout\) # (((\G16|Mux7~0_combout\ & \G16|Add0~33_sumout\)) # (\G16|Mux7~2_combout\)) ) ) ) # ( !\G16|Mux0~3_combout\ & ( \G16|Add1~33_sumout\ & ( 
-- (\G16|Mux0~2_combout\ & (((\G16|Mux7~0_combout\ & \G16|Add0~33_sumout\)) # (\G16|Mux7~2_combout\))) ) ) ) # ( \G16|Mux0~3_combout\ & ( !\G16|Add1~33_sumout\ & ( (\G16|Mux0~2_combout\ & (((\G16|Mux7~0_combout\ & \G16|Add0~33_sumout\)) # 
-- (\G16|Mux7~2_combout\))) ) ) ) # ( !\G16|Mux0~3_combout\ & ( !\G16|Add1~33_sumout\ & ( (\G16|Mux0~2_combout\ & (((\G16|Mux7~0_combout\ & \G16|Add0~33_sumout\)) # (\G16|Mux7~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100000001001100111100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux7~0_combout\,
	datab => \G16|ALT_INV_Mux0~2_combout\,
	datac => \G16|ALT_INV_Add0~33_sumout\,
	datad => \G16|ALT_INV_Mux7~2_combout\,
	datae => \G16|ALT_INV_Mux0~3_combout\,
	dataf => \G16|ALT_INV_Add1~33_sumout\,
	combout => \G16|Mux7~3_combout\);

-- Location: FF_X29_Y10_N25
\G18|SAIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~376_combout\,
	asdata => \G16|Mux7~3_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(8));

-- Location: FF_X33_Y6_N17
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~28_q\);

-- Location: FF_X33_Y6_N11
\G7|Reg~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(8),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~44_q\);

-- Location: LABCELL_X33_Y6_N9
\G7|Reg~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~160_combout\ = ( \G7|Reg~44_q\ & ( \G4|rs[0]~en_q\ & ( (!\G4|rt[0]~reg0_q\ & !\G7|Reg~28_q\) ) ) ) # ( !\G7|Reg~44_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~28_q\) # (\G4|rt[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110011111100111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~28_q\,
	datae => \G7|ALT_INV_Reg~44_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~160_combout\);

-- Location: LABCELL_X33_Y6_N36
\G7|Reg~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~192_combout\ = ( \G7|Reg~140_q\ & ( \G4|rs[0]~en_q\ & ( !\G7|Reg~160_combout\ ) ) ) # ( !\G7|Reg~140_q\ & ( \G4|rs[0]~en_q\ & ( !\G7|Reg~160_combout\ ) ) ) # ( \G7|Reg~140_q\ & ( !\G4|rs[0]~en_q\ & ( (!\G7|Reg~160_combout\) # (\G7|Reg~124_q\) ) ) 
-- ) # ( !\G7|Reg~140_q\ & ( !\G4|rs[0]~en_q\ & ( (\G7|Reg~160_combout\ & \G7|Reg~124_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~160_combout\,
	datac => \G7|ALT_INV_Reg~124_q\,
	datae => \G7|ALT_INV_Reg~140_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~192_combout\);

-- Location: LABCELL_X31_Y7_N15
\G14|SAIDA[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[8]~feeder_combout\ = \G7|Reg~192_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Reg~192_combout\,
	combout => \G14|SAIDA[8]~feeder_combout\);

-- Location: FF_X31_Y7_N16
\G14|SAIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[8]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(8));

-- Location: LABCELL_X31_Y8_N27
\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( \G7|Reg~207_combout\ ) + ( \G14|SAIDA\(9) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( \G7|Reg~207_combout\ ) + ( \G14|SAIDA\(9) ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(9),
	datad => \G7|ALT_INV_Reg~207_combout\,
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

-- Location: LABCELL_X35_Y8_N27
\G16|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~37_sumout\ = SUM(( !\G14|SAIDA\(9) $ (\G7|Reg~207_combout\) ) + ( \G16|Add1~35\ ) + ( \G16|Add1~34\ ))
-- \G16|Add1~38\ = CARRY(( !\G14|SAIDA\(9) $ (\G7|Reg~207_combout\) ) + ( \G16|Add1~35\ ) + ( \G16|Add1~34\ ))
-- \G16|Add1~39\ = SHARE((!\G14|SAIDA\(9) & \G7|Reg~207_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(9),
	datad => \G7|ALT_INV_Reg~207_combout\,
	cin => \G16|Add1~34\,
	sharein => \G16|Add1~35\,
	sumout => \G16|Add1~37_sumout\,
	cout => \G16|Add1~38\,
	shareout => \G16|Add1~39\);

-- Location: LABCELL_X29_Y10_N48
\G16|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux6~1_combout\ = ( \G16|Add0~37_sumout\ & ( \G16|Add1~37_sumout\ & ( (!\G16|Mux0~2_combout\ & (\G16|Mux0~3_combout\)) # (\G16|Mux0~2_combout\ & (((\G16|Mux6~0_combout\) # (\G16|Mux7~0_combout\)))) ) ) ) # ( !\G16|Add0~37_sumout\ & ( 
-- \G16|Add1~37_sumout\ & ( (!\G16|Mux0~2_combout\ & (\G16|Mux0~3_combout\)) # (\G16|Mux0~2_combout\ & ((\G16|Mux6~0_combout\))) ) ) ) # ( \G16|Add0~37_sumout\ & ( !\G16|Add1~37_sumout\ & ( (\G16|Mux0~2_combout\ & ((\G16|Mux6~0_combout\) # 
-- (\G16|Mux7~0_combout\))) ) ) ) # ( !\G16|Add0~37_sumout\ & ( !\G16|Add1~37_sumout\ & ( (\G16|Mux0~2_combout\ & \G16|Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000110011001101000100011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux0~3_combout\,
	datab => \G16|ALT_INV_Mux0~2_combout\,
	datac => \G16|ALT_INV_Mux7~0_combout\,
	datad => \G16|ALT_INV_Mux6~0_combout\,
	datae => \G16|ALT_INV_Add0~37_sumout\,
	dataf => \G16|ALT_INV_Add1~37_sumout\,
	combout => \G16|Mux6~1_combout\);

-- Location: FF_X29_Y10_N55
\G18|SAIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~385_combout\,
	asdata => \G16|Mux6~1_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(9));

-- Location: FF_X34_Y6_N23
\G7|Reg~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(9),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~125_q\);

-- Location: FF_X33_Y6_N23
\G7|Reg~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(9),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~45_q\);

-- Location: LABCELL_X33_Y6_N21
\G7|Reg~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~159_combout\ = ( \G7|Reg~45_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~29_q\ & !\G4|rt[0]~reg0_q\) ) ) ) # ( !\G7|Reg~45_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~29_q\) # (\G4|rt[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101011111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~29_q\,
	datac => \G4|ALT_INV_rt[0]~reg0_q\,
	datae => \G7|ALT_INV_Reg~45_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~159_combout\);

-- Location: LABCELL_X33_Y6_N48
\G7|Reg~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~191_combout\ = ( \G7|Reg~159_combout\ & ( (\G7|Reg~125_q\ & !\G4|rs[0]~en_q\) ) ) # ( !\G7|Reg~159_combout\ & ( (\G4|rs[0]~en_q\) # (\G7|Reg~141_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111010100000101000000111111001111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~125_q\,
	datab => \G7|ALT_INV_Reg~141_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	datae => \G7|ALT_INV_Reg~159_combout\,
	combout => \G7|Reg~191_combout\);

-- Location: LABCELL_X33_Y7_N24
\G14|SAIDA[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[9]~feeder_combout\ = \G7|Reg~191_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~191_combout\,
	combout => \G14|SAIDA[9]~feeder_combout\);

-- Location: FF_X33_Y7_N26
\G14|SAIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[9]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(9));

-- Location: LABCELL_X31_Y8_N30
\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( \G14|SAIDA\(10) ) + ( \G7|Reg~206_combout\ ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( \G14|SAIDA\(10) ) + ( \G7|Reg~206_combout\ ) + ( \G16|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~206_combout\,
	datad => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

-- Location: LABCELL_X35_Y8_N30
\G16|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~41_sumout\ = SUM(( !\G14|SAIDA\(10) $ (\G7|Reg~206_combout\) ) + ( \G16|Add1~39\ ) + ( \G16|Add1~38\ ))
-- \G16|Add1~42\ = CARRY(( !\G14|SAIDA\(10) $ (\G7|Reg~206_combout\) ) + ( \G16|Add1~39\ ) + ( \G16|Add1~38\ ))
-- \G16|Add1~43\ = SHARE((!\G14|SAIDA\(10) & \G7|Reg~206_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(10),
	datad => \G7|ALT_INV_Reg~206_combout\,
	cin => \G16|Add1~38\,
	sharein => \G16|Add1~39\,
	sumout => \G16|Add1~41_sumout\,
	cout => \G16|Add1~42\,
	shareout => \G16|Add1~43\);

-- Location: LABCELL_X31_Y10_N30
\G16|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux5~1_combout\ = ( \G16|Add0~41_sumout\ & ( \G16|Add1~41_sumout\ & ( (!\G16|Mux0~2_combout\ & (((\G16|Mux0~3_combout\)))) # (\G16|Mux0~2_combout\ & (((\G16|Mux5~0_combout\)) # (\G16|Mux7~0_combout\))) ) ) ) # ( !\G16|Add0~41_sumout\ & ( 
-- \G16|Add1~41_sumout\ & ( (!\G16|Mux0~2_combout\ & (\G16|Mux0~3_combout\)) # (\G16|Mux0~2_combout\ & ((\G16|Mux5~0_combout\))) ) ) ) # ( \G16|Add0~41_sumout\ & ( !\G16|Add1~41_sumout\ & ( (\G16|Mux0~2_combout\ & ((\G16|Mux5~0_combout\) # 
-- (\G16|Mux7~0_combout\))) ) ) ) # ( !\G16|Add0~41_sumout\ & ( !\G16|Add1~41_sumout\ & ( (\G16|Mux0~2_combout\ & \G16|Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000001010000111100110000001111110011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux7~0_combout\,
	datab => \G16|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Mux0~2_combout\,
	datad => \G16|ALT_INV_Mux5~0_combout\,
	datae => \G16|ALT_INV_Add0~41_sumout\,
	dataf => \G16|ALT_INV_Add1~41_sumout\,
	combout => \G16|Mux5~1_combout\);

-- Location: FF_X30_Y10_N49
\G18|SAIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~394_combout\,
	asdata => \G16|Mux5~1_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(10));

-- Location: FF_X34_Y6_N38
\G7|Reg~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(10),
	sload => VCC,
	ena => \G7|Reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~78_q\);

-- Location: FF_X35_Y7_N31
\G7|Reg~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G7|Reg~30feeder_combout\,
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~30_q\);

-- Location: MLABCELL_X34_Y6_N36
\G7|Reg~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~174_combout\ = ( \G7|Reg~30_q\ & ( (\G4|rd[0]~reg0_q\ & (\G4|rd[0]~enDUPLICATE_q\ & !\G7|Reg~78_q\)) ) ) # ( !\G7|Reg~30_q\ & ( (\G4|rd[0]~enDUPLICATE_q\ & ((!\G4|rd[0]~reg0_q\) # (!\G7|Reg~78_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~78_q\,
	dataf => \G7|ALT_INV_Reg~30_q\,
	combout => \G7|Reg~174_combout\);

-- Location: MLABCELL_X34_Y6_N24
\G7|Reg~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~206_combout\ = ( \G7|Reg~142_q\ & ( (!\G7|Reg~174_combout\) # ((!\G4|rd[0]~enDUPLICATE_q\ & \G7|Reg~126_q\)) ) ) # ( !\G7|Reg~142_q\ & ( (!\G4|rd[0]~enDUPLICATE_q\ & (\G7|Reg~174_combout\ & \G7|Reg~126_q\)) # (\G4|rd[0]~enDUPLICATE_q\ & 
-- (!\G7|Reg~174_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011010010100000101101011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~enDUPLICATE_q\,
	datac => \G7|ALT_INV_Reg~174_combout\,
	datad => \G7|ALT_INV_Reg~126_q\,
	dataf => \G7|ALT_INV_Reg~142_q\,
	combout => \G7|Reg~206_combout\);

-- Location: LABCELL_X31_Y8_N33
\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( \G7|Reg~205_combout\ ) + ( \G14|SAIDA\(11) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( \G7|Reg~205_combout\ ) + ( \G14|SAIDA\(11) ) + ( \G16|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(11),
	datad => \G7|ALT_INV_Reg~205_combout\,
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

-- Location: LABCELL_X35_Y8_N33
\G16|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~45_sumout\ = SUM(( !\G14|SAIDA\(11) $ (\G7|Reg~205_combout\) ) + ( \G16|Add1~43\ ) + ( \G16|Add1~42\ ))
-- \G16|Add1~46\ = CARRY(( !\G14|SAIDA\(11) $ (\G7|Reg~205_combout\) ) + ( \G16|Add1~43\ ) + ( \G16|Add1~42\ ))
-- \G16|Add1~47\ = SHARE((!\G14|SAIDA\(11) & \G7|Reg~205_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(11),
	datad => \G7|ALT_INV_Reg~205_combout\,
	cin => \G16|Add1~42\,
	sharein => \G16|Add1~43\,
	sumout => \G16|Add1~45_sumout\,
	cout => \G16|Add1~46\,
	shareout => \G16|Add1~47\);

-- Location: LABCELL_X31_Y10_N24
\G16|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux4~1_combout\ = ( \G16|Add0~45_sumout\ & ( \G16|Add1~45_sumout\ & ( (!\G16|Mux0~2_combout\ & (((\G16|Mux0~3_combout\)))) # (\G16|Mux0~2_combout\ & (((\G16|Mux7~0_combout\)) # (\G16|Mux4~0_combout\))) ) ) ) # ( !\G16|Add0~45_sumout\ & ( 
-- \G16|Add1~45_sumout\ & ( (!\G16|Mux0~2_combout\ & ((\G16|Mux0~3_combout\))) # (\G16|Mux0~2_combout\ & (\G16|Mux4~0_combout\)) ) ) ) # ( \G16|Add0~45_sumout\ & ( !\G16|Add1~45_sumout\ & ( (\G16|Mux0~2_combout\ & ((\G16|Mux7~0_combout\) # 
-- (\G16|Mux4~0_combout\))) ) ) ) # ( !\G16|Add0~45_sumout\ & ( !\G16|Add1~45_sumout\ & ( (\G16|Mux0~2_combout\ & \G16|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101010001010100010001101110110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux0~2_combout\,
	datab => \G16|ALT_INV_Mux4~0_combout\,
	datac => \G16|ALT_INV_Mux7~0_combout\,
	datad => \G16|ALT_INV_Mux0~3_combout\,
	datae => \G16|ALT_INV_Add0~45_sumout\,
	dataf => \G16|ALT_INV_Add1~45_sumout\,
	combout => \G16|Mux4~1_combout\);

-- Location: FF_X30_Y10_N55
\G18|SAIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~403_combout\,
	asdata => \G16|Mux4~1_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(11));

-- Location: FF_X34_Y6_N44
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~143_q\);

-- Location: FF_X35_Y7_N38
\G7|Reg~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(11),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~47_q\);

-- Location: LABCELL_X35_Y7_N36
\G7|Reg~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~157_combout\ = ( \G7|Reg~47_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~31_q\ & !\G4|rt[0]~reg0_q\) ) ) ) # ( !\G7|Reg~47_q\ & ( \G4|rs[0]~en_q\ & ( (!\G7|Reg~31_q\) # (\G4|rt[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~31_q\,
	datac => \G4|ALT_INV_rt[0]~reg0_q\,
	datae => \G7|ALT_INV_Reg~47_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~157_combout\);

-- Location: LABCELL_X33_Y6_N12
\G7|Reg~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~189_combout\ = ( \G7|Reg~127_q\ & ( \G7|Reg~157_combout\ & ( !\G4|rs[0]~en_q\ ) ) ) # ( \G7|Reg~127_q\ & ( !\G7|Reg~157_combout\ & ( (\G4|rs[0]~en_q\) # (\G7|Reg~143_q\) ) ) ) # ( !\G7|Reg~127_q\ & ( !\G7|Reg~157_combout\ & ( (\G4|rs[0]~en_q\) # 
-- (\G7|Reg~143_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~143_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	datae => \G7|ALT_INV_Reg~127_q\,
	dataf => \G7|ALT_INV_Reg~157_combout\,
	combout => \G7|Reg~189_combout\);

-- Location: LABCELL_X31_Y7_N39
\G14|SAIDA[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[11]~feeder_combout\ = ( \G7|Reg~189_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~189_combout\,
	combout => \G14|SAIDA[11]~feeder_combout\);

-- Location: FF_X31_Y7_N40
\G14|SAIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[11]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(11));

-- Location: LABCELL_X31_Y8_N36
\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( \G7|Reg~204_combout\ ) + ( \G14|SAIDA\(12) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( \G7|Reg~204_combout\ ) + ( \G14|SAIDA\(12) ) + ( \G16|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(12),
	datad => \G7|ALT_INV_Reg~204_combout\,
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

-- Location: MLABCELL_X34_Y6_N48
\G16|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux3~0_combout\ = ( \G16|Mux7~1_combout\ & ( (!\G7|Reg~204_combout\ & (\G14|SAIDA\(12) & \G16|Mux0~3_combout\)) # (\G7|Reg~204_combout\ & ((\G16|Mux0~3_combout\) # (\G14|SAIDA\(12)))) ) ) # ( !\G16|Mux7~1_combout\ & ( (\G16|Mux0~3_combout\ & 
-- ((\G14|SAIDA\(12)) # (\G7|Reg~204_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~204_combout\,
	datac => \G14|ALT_INV_SAIDA\(12),
	datad => \G16|ALT_INV_Mux0~3_combout\,
	dataf => \G16|ALT_INV_Mux7~1_combout\,
	combout => \G16|Mux3~0_combout\);

-- Location: LABCELL_X35_Y8_N36
\G16|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~49_sumout\ = SUM(( !\G14|SAIDA\(12) $ (\G7|Reg~204_combout\) ) + ( \G16|Add1~47\ ) + ( \G16|Add1~46\ ))
-- \G16|Add1~50\ = CARRY(( !\G14|SAIDA\(12) $ (\G7|Reg~204_combout\) ) + ( \G16|Add1~47\ ) + ( \G16|Add1~46\ ))
-- \G16|Add1~51\ = SHARE((!\G14|SAIDA\(12) & \G7|Reg~204_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA\(12),
	datad => \G7|ALT_INV_Reg~204_combout\,
	cin => \G16|Add1~46\,
	sharein => \G16|Add1~47\,
	sumout => \G16|Add1~49_sumout\,
	cout => \G16|Add1~50\,
	shareout => \G16|Add1~51\);

-- Location: MLABCELL_X28_Y9_N48
\G16|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux3~1_combout\ = ( \G16|Mux7~0_combout\ & ( \G16|Add1~49_sumout\ & ( (!\G16|Mux0~2_combout\ & (((\G16|Mux0~3_combout\)))) # (\G16|Mux0~2_combout\ & (((\G16|Mux3~0_combout\)) # (\G16|Add0~49_sumout\))) ) ) ) # ( !\G16|Mux7~0_combout\ & ( 
-- \G16|Add1~49_sumout\ & ( (!\G16|Mux0~2_combout\ & (\G16|Mux0~3_combout\)) # (\G16|Mux0~2_combout\ & ((\G16|Mux3~0_combout\))) ) ) ) # ( \G16|Mux7~0_combout\ & ( !\G16|Add1~49_sumout\ & ( (\G16|Mux0~2_combout\ & ((\G16|Mux3~0_combout\) # 
-- (\G16|Add0~49_sumout\))) ) ) ) # ( !\G16|Mux7~0_combout\ & ( !\G16|Add1~49_sumout\ & ( (\G16|Mux0~2_combout\ & \G16|Mux3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000001010000111100110000001111110011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~49_sumout\,
	datab => \G16|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Mux0~2_combout\,
	datad => \G16|ALT_INV_Mux3~0_combout\,
	datae => \G16|ALT_INV_Mux7~0_combout\,
	dataf => \G16|ALT_INV_Add1~49_sumout\,
	combout => \G16|Mux3~1_combout\);

-- Location: FF_X28_Y9_N37
\G18|SAIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~412_combout\,
	asdata => \G16|Mux3~1_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(12));

-- Location: FF_X34_Y6_N19
\G7|Reg~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(12),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~128_q\);

-- Location: FF_X35_Y7_N22
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
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~32_q\);

-- Location: FF_X35_Y7_N29
\G7|Reg~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(12),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~48_q\);

-- Location: LABCELL_X35_Y7_N27
\G7|Reg~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~156_combout\ = ( \G4|rs[0]~en_q\ & ( (!\G4|rt[0]~reg0_q\ & (!\G7|Reg~32_q\)) # (\G4|rt[0]~reg0_q\ & ((!\G7|Reg~48_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101101000001111010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~32_q\,
	datad => \G7|ALT_INV_Reg~48_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~156_combout\);

-- Location: LABCELL_X35_Y7_N18
\G7|Reg~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~188_combout\ = ( \G7|Reg~144_q\ & ( \G7|Reg~156_combout\ & ( (\G7|Reg~128_q\ & !\G4|rs[0]~en_q\) ) ) ) # ( !\G7|Reg~144_q\ & ( \G7|Reg~156_combout\ & ( (\G7|Reg~128_q\ & !\G4|rs[0]~en_q\) ) ) ) # ( \G7|Reg~144_q\ & ( !\G7|Reg~156_combout\ ) ) # ( 
-- !\G7|Reg~144_q\ & ( !\G7|Reg~156_combout\ & ( \G4|rs[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~128_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	datae => \G7|ALT_INV_Reg~144_q\,
	dataf => \G7|ALT_INV_Reg~156_combout\,
	combout => \G7|Reg~188_combout\);

-- Location: LABCELL_X35_Y6_N39
\G14|SAIDA[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[12]~feeder_combout\ = ( \G7|Reg~188_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~188_combout\,
	combout => \G14|SAIDA[12]~feeder_combout\);

-- Location: FF_X35_Y6_N40
\G14|SAIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[12]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(12));

-- Location: LABCELL_X35_Y8_N39
\G16|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~53_sumout\ = SUM(( !\G14|SAIDA\(13) $ (\G7|Reg~203_combout\) ) + ( \G16|Add1~51\ ) + ( \G16|Add1~50\ ))
-- \G16|Add1~54\ = CARRY(( !\G14|SAIDA\(13) $ (\G7|Reg~203_combout\) ) + ( \G16|Add1~51\ ) + ( \G16|Add1~50\ ))
-- \G16|Add1~55\ = SHARE((!\G14|SAIDA\(13) & \G7|Reg~203_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(13),
	datac => \G7|ALT_INV_Reg~203_combout\,
	cin => \G16|Add1~50\,
	sharein => \G16|Add1~51\,
	sumout => \G16|Add1~53_sumout\,
	cout => \G16|Add1~54\,
	shareout => \G16|Add1~55\);

-- Location: LABCELL_X31_Y8_N39
\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( \G7|Reg~203_combout\ ) + ( \G14|SAIDA\(13) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( \G7|Reg~203_combout\ ) + ( \G14|SAIDA\(13) ) + ( \G16|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA\(13),
	datad => \G7|ALT_INV_Reg~203_combout\,
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

-- Location: MLABCELL_X34_Y9_N45
\G16|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux2~1_combout\ = ( \G16|Add1~53_sumout\ & ( \G16|Add0~53_sumout\ & ( (!\G16|Mux0~2_combout\ & (\G16|Mux0~3_combout\)) # (\G16|Mux0~2_combout\ & (((\G16|Mux7~0_combout\) # (\G16|Mux2~0_combout\)))) ) ) ) # ( !\G16|Add1~53_sumout\ & ( 
-- \G16|Add0~53_sumout\ & ( (\G16|Mux0~2_combout\ & ((\G16|Mux7~0_combout\) # (\G16|Mux2~0_combout\))) ) ) ) # ( \G16|Add1~53_sumout\ & ( !\G16|Add0~53_sumout\ & ( (!\G16|Mux0~2_combout\ & (\G16|Mux0~3_combout\)) # (\G16|Mux0~2_combout\ & 
-- ((\G16|Mux2~0_combout\))) ) ) ) # ( !\G16|Add1~53_sumout\ & ( !\G16|Add0~53_sumout\ & ( (\G16|Mux0~2_combout\ & \G16|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001110100011100000011001100110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux0~3_combout\,
	datab => \G16|ALT_INV_Mux0~2_combout\,
	datac => \G16|ALT_INV_Mux2~0_combout\,
	datad => \G16|ALT_INV_Mux7~0_combout\,
	datae => \G16|ALT_INV_Add1~53_sumout\,
	dataf => \G16|ALT_INV_Add0~53_sumout\,
	combout => \G16|Mux2~1_combout\);

-- Location: FF_X28_Y8_N19
\G18|SAIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~421_combout\,
	asdata => \G16|Mux2~1_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(13));

-- Location: MLABCELL_X34_Y7_N51
\G7|Reg~129feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~129feeder_combout\ = ( \G18|SAIDA\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G18|ALT_INV_SAIDA\(13),
	combout => \G7|Reg~129feeder_combout\);

-- Location: FF_X34_Y7_N52
\G7|Reg~129DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G7|Reg~129feeder_combout\,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~129DUPLICATE_q\);

-- Location: FF_X35_Y7_N26
\G7|Reg~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(13),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~49_q\);

-- Location: LABCELL_X35_Y7_N24
\G7|Reg~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~155_combout\ = ( \G4|rs[0]~en_q\ & ( (!\G4|rt[0]~reg0_q\ & (!\G7|Reg~33_q\)) # (\G4|rt[0]~reg0_q\ & ((!\G7|Reg~49_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101101000001111010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~33_q\,
	datad => \G7|ALT_INV_Reg~49_q\,
	dataf => \G4|ALT_INV_rs[0]~en_q\,
	combout => \G7|Reg~155_combout\);

-- Location: MLABCELL_X34_Y7_N54
\G7|Reg~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~187_combout\ = ( \G7|Reg~145_q\ & ( \G7|Reg~155_combout\ & ( (\G7|Reg~129DUPLICATE_q\ & !\G4|rs[0]~en_q\) ) ) ) # ( !\G7|Reg~145_q\ & ( \G7|Reg~155_combout\ & ( (\G7|Reg~129DUPLICATE_q\ & !\G4|rs[0]~en_q\) ) ) ) # ( \G7|Reg~145_q\ & ( 
-- !\G7|Reg~155_combout\ ) ) # ( !\G7|Reg~145_q\ & ( !\G7|Reg~155_combout\ & ( \G4|rs[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~129DUPLICATE_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	datae => \G7|ALT_INV_Reg~145_q\,
	dataf => \G7|ALT_INV_Reg~155_combout\,
	combout => \G7|Reg~187_combout\);

-- Location: LABCELL_X33_Y7_N21
\G14|SAIDA[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[13]~feeder_combout\ = \G7|Reg~187_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~187_combout\,
	combout => \G14|SAIDA[13]~feeder_combout\);

-- Location: FF_X33_Y7_N22
\G14|SAIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[13]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(13));

-- Location: LABCELL_X35_Y8_N42
\G16|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~57_sumout\ = SUM(( !\G7|Reg~202_combout\ $ (\G14|SAIDA\(14)) ) + ( \G16|Add1~55\ ) + ( \G16|Add1~54\ ))
-- \G16|Add1~58\ = CARRY(( !\G7|Reg~202_combout\ $ (\G14|SAIDA\(14)) ) + ( \G16|Add1~55\ ) + ( \G16|Add1~54\ ))
-- \G16|Add1~59\ = SHARE((\G7|Reg~202_combout\ & !\G14|SAIDA\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~202_combout\,
	datac => \G14|ALT_INV_SAIDA\(14),
	cin => \G16|Add1~54\,
	sharein => \G16|Add1~55\,
	sumout => \G16|Add1~57_sumout\,
	cout => \G16|Add1~58\,
	shareout => \G16|Add1~59\);

-- Location: LABCELL_X31_Y8_N42
\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( \G7|Reg~202_combout\ ) + ( \G14|SAIDA\(14) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( \G7|Reg~202_combout\ ) + ( \G14|SAIDA\(14) ) + ( \G16|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(14),
	datad => \G7|ALT_INV_Reg~202_combout\,
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

-- Location: MLABCELL_X34_Y9_N0
\G16|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~1_combout\ = ( \G16|Add1~57_sumout\ & ( \G16|Add0~57_sumout\ & ( (!\G16|Mux0~2_combout\ & (((\G16|Mux0~3_combout\)))) # (\G16|Mux0~2_combout\ & (((\G16|Mux1~0_combout\)) # (\G16|Mux7~0_combout\))) ) ) ) # ( !\G16|Add1~57_sumout\ & ( 
-- \G16|Add0~57_sumout\ & ( (\G16|Mux0~2_combout\ & ((\G16|Mux1~0_combout\) # (\G16|Mux7~0_combout\))) ) ) ) # ( \G16|Add1~57_sumout\ & ( !\G16|Add0~57_sumout\ & ( (!\G16|Mux0~2_combout\ & (\G16|Mux0~3_combout\)) # (\G16|Mux0~2_combout\ & 
-- ((\G16|Mux1~0_combout\))) ) ) ) # ( !\G16|Add1~57_sumout\ & ( !\G16|Add0~57_sumout\ & ( (\G16|Mux1~0_combout\ & \G16|Mux0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110000111100000000010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux7~0_combout\,
	datab => \G16|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Mux1~0_combout\,
	datad => \G16|ALT_INV_Mux0~2_combout\,
	datae => \G16|ALT_INV_Add1~57_sumout\,
	dataf => \G16|ALT_INV_Add0~57_sumout\,
	combout => \G16|Mux1~1_combout\);

-- Location: FF_X28_Y9_N7
\G18|SAIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~430_combout\,
	asdata => \G16|Mux1~1_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(14));

-- Location: FF_X35_Y9_N26
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
	ena => \G7|Reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~146_q\);

-- Location: FF_X33_Y6_N4
\G7|Reg~34DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(14),
	sload => VCC,
	ena => \G7|Reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~34DUPLICATE_q\);

-- Location: FF_X33_Y6_N47
\G7|Reg~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(14),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~50_q\);

-- Location: LABCELL_X33_Y6_N45
\G7|Reg~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~154_combout\ = (\G4|rs[0]~en_q\ & ((!\G4|rt[0]~reg0_q\ & (!\G7|Reg~34DUPLICATE_q\)) # (\G4|rt[0]~reg0_q\ & ((!\G7|Reg~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101000000010100010100000001010001010000000101000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~en_q\,
	datab => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~34DUPLICATE_q\,
	datad => \G7|ALT_INV_Reg~50_q\,
	combout => \G7|Reg~154_combout\);

-- Location: LABCELL_X35_Y9_N54
\G7|Reg~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~186_combout\ = ( \G7|Reg~154_combout\ & ( (\G7|Reg~130_q\ & !\G4|rs[0]~en_q\) ) ) # ( !\G7|Reg~154_combout\ & ( (\G4|rs[0]~en_q\) # (\G7|Reg~146_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~146_q\,
	datab => \G7|ALT_INV_Reg~130_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~154_combout\,
	combout => \G7|Reg~186_combout\);

-- Location: LABCELL_X35_Y6_N30
\G14|SAIDA[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[14]~feeder_combout\ = ( \G7|Reg~186_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~186_combout\,
	combout => \G14|SAIDA[14]~feeder_combout\);

-- Location: FF_X35_Y6_N31
\G14|SAIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[14]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(14));

-- Location: LABCELL_X31_Y8_N45
\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( \G7|Reg~201_combout\ ) + ( \G14|SAIDA\(15) ) + ( \G16|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~201_combout\,
	datac => \G14|ALT_INV_SAIDA\(15),
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

-- Location: LABCELL_X29_Y6_N9
\G16|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~6_combout\ = ( \G16|Add0~61_sumout\ & ( \G16|Add1~61_sumout\ & ( (!\G16|Mux0~2_combout\ & (((\G16|Mux0~3_combout\)))) # (\G16|Mux0~2_combout\ & (((\G16|Mux0~5_combout\)) # (\G16|Mux7~0_combout\))) ) ) ) # ( !\G16|Add0~61_sumout\ & ( 
-- \G16|Add1~61_sumout\ & ( (!\G16|Mux0~2_combout\ & (\G16|Mux0~3_combout\)) # (\G16|Mux0~2_combout\ & ((\G16|Mux0~5_combout\))) ) ) ) # ( \G16|Add0~61_sumout\ & ( !\G16|Add1~61_sumout\ & ( (\G16|Mux0~2_combout\ & ((\G16|Mux0~5_combout\) # 
-- (\G16|Mux7~0_combout\))) ) ) ) # ( !\G16|Add0~61_sumout\ & ( !\G16|Add1~61_sumout\ & ( (\G16|Mux0~5_combout\ & \G16|Mux0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000101111100110011000011110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux7~0_combout\,
	datab => \G16|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Mux0~5_combout\,
	datad => \G16|ALT_INV_Mux0~2_combout\,
	datae => \G16|ALT_INV_Add0~61_sumout\,
	dataf => \G16|ALT_INV_Add1~61_sumout\,
	combout => \G16|Mux0~6_combout\);

-- Location: FF_X29_Y6_N43
\G18|SAIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G17|ram~439_combout\,
	asdata => \G16|Mux0~6_combout\,
	sload => \G5|memparareg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G18|SAIDA\(15));

-- Location: FF_X35_Y9_N35
\G7|Reg~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(15),
	sload => VCC,
	ena => \G7|Reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~131_q\);

-- Location: FF_X33_Y6_N44
\G7|Reg~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA\(15),
	sload => VCC,
	ena => \G7|Reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~51_q\);

-- Location: LABCELL_X33_Y6_N42
\G7|Reg~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~153_combout\ = ( \G7|Reg~35_q\ & ( (\G4|rt[0]~reg0_q\ & (\G4|rs[0]~en_q\ & !\G7|Reg~51_q\)) ) ) # ( !\G7|Reg~35_q\ & ( (\G4|rs[0]~en_q\ & ((!\G4|rt[0]~reg0_q\) # (!\G7|Reg~51_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	datad => \G7|ALT_INV_Reg~51_q\,
	dataf => \G7|ALT_INV_Reg~35_q\,
	combout => \G7|Reg~153_combout\);

-- Location: LABCELL_X35_Y9_N30
\G7|Reg~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~185_combout\ = ( \G7|Reg~153_combout\ & ( (\G7|Reg~131_q\ & !\G4|rs[0]~en_q\) ) ) # ( !\G7|Reg~153_combout\ & ( (\G4|rs[0]~en_q\) # (\G7|Reg~147_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~131_q\,
	datab => \G7|ALT_INV_Reg~147_q\,
	datac => \G4|ALT_INV_rs[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~153_combout\,
	combout => \G7|Reg~185_combout\);

-- Location: LABCELL_X33_Y7_N12
\G14|SAIDA[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[15]~feeder_combout\ = ( \G7|Reg~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G7|ALT_INV_Reg~185_combout\,
	combout => \G14|SAIDA[15]~feeder_combout\);

-- Location: FF_X33_Y7_N13
\G14|SAIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G14|SAIDA[15]~feeder_combout\,
	asdata => \G8|SAIDA\(1),
	sload => \G5|escrevereg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G14|SAIDA\(15));

-- Location: LABCELL_X35_Y8_N45
\G16|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~61_sumout\ = SUM(( !\G14|SAIDA\(15) $ (\G7|Reg~201_combout\) ) + ( \G16|Add1~59\ ) + ( \G16|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(15),
	datad => \G7|ALT_INV_Reg~201_combout\,
	cin => \G16|Add1~58\,
	sharein => \G16|Add1~59\,
	sumout => \G16|Add1~61_sumout\);

-- Location: LABCELL_X36_Y7_N45
\G16|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~2_combout\ = ( !\G16|Add1~33_sumout\ & ( !\G16|Add1~41_sumout\ & ( (!\G16|Add1~37_sumout\ & (!\G16|Add1~29_sumout\ & !\G16|Add1~25_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Add1~37_sumout\,
	datac => \G16|ALT_INV_Add1~29_sumout\,
	datad => \G16|ALT_INV_Add1~25_sumout\,
	datae => \G16|ALT_INV_Add1~33_sumout\,
	dataf => \G16|ALT_INV_Add1~41_sumout\,
	combout => \G16|Equal1~2_combout\);

-- Location: MLABCELL_X34_Y7_N18
\G16|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~0_combout\ = ( !\G16|Add1~1_sumout\ & ( !\G16|Add1~13_sumout\ & ( (!\G16|Add1~9_sumout\ & (!\G16|Add1~17_sumout\ & !\G16|Add1~5_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Add1~9_sumout\,
	datac => \G16|ALT_INV_Add1~17_sumout\,
	datad => \G16|ALT_INV_Add1~5_sumout\,
	datae => \G16|ALT_INV_Add1~1_sumout\,
	dataf => \G16|ALT_INV_Add1~13_sumout\,
	combout => \G16|Equal1~0_combout\);

-- Location: LABCELL_X35_Y7_N45
\G16|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~1_combout\ = ( !\G16|Add1~49_sumout\ & ( !\G16|Add1~57_sumout\ & ( (!\G16|Add1~21_sumout\ & (!\G16|Add1~45_sumout\ & (\G16|Equal1~0_combout\ & !\G16|Add1~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~21_sumout\,
	datab => \G16|ALT_INV_Add1~45_sumout\,
	datac => \G16|ALT_INV_Equal1~0_combout\,
	datad => \G16|ALT_INV_Add1~53_sumout\,
	datae => \G16|ALT_INV_Add1~49_sumout\,
	dataf => \G16|ALT_INV_Add1~57_sumout\,
	combout => \G16|Equal1~1_combout\);

-- Location: LABCELL_X36_Y7_N24
\G11|S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|S1~0_combout\ = ( \G16|Equal1~2_combout\ & ( \G16|Equal1~1_combout\ & ( (\G5|origalu[2]~4_combout\ & ((!\G16|Add1~61_sumout\ & ((\G16|ZeroULA~1_combout\))) # (\G16|Add1~61_sumout\ & (\G16|ZeroULA~0_combout\)))) ) ) ) # ( !\G16|Equal1~2_combout\ & ( 
-- \G16|Equal1~1_combout\ & ( (\G16|ZeroULA~0_combout\ & \G5|origalu[2]~4_combout\) ) ) ) # ( \G16|Equal1~2_combout\ & ( !\G16|Equal1~1_combout\ & ( (\G16|ZeroULA~0_combout\ & \G5|origalu[2]~4_combout\) ) ) ) # ( !\G16|Equal1~2_combout\ & ( 
-- !\G16|Equal1~1_combout\ & ( (\G16|ZeroULA~0_combout\ & \G5|origalu[2]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~0_combout\,
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \G16|ALT_INV_Add1~61_sumout\,
	datad => \G5|ALT_INV_origalu[2]~4_combout\,
	datae => \G16|ALT_INV_Equal1~2_combout\,
	dataf => \G16|ALT_INV_Equal1~1_combout\,
	combout => \G11|S1~0_combout\);

-- Location: FF_X36_Y7_N26
\G11|S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G11|S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G11|S1~q\);

-- Location: FF_X59_Y4_N53
\G12|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[1]~feeder_combout\,
	asdata => \G10|SAIDA\(1),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(1));

-- Location: LABCELL_X57_Y7_N39
\G13|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~1_combout\ = ( !\G5|origalu[2]~4_combout\ & ( \G12|SAIDA\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G5|ALT_INV_origalu[2]~4_combout\,
	dataf => \G12|ALT_INV_SAIDA\(1),
	combout => \G13|SAIDA~1_combout\);

-- Location: FF_X57_Y7_N41
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

-- Location: FF_X56_Y8_N10
\G1|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(1));

-- Location: LABCELL_X56_Y8_N15
\G4|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux5~1_combout\ = ( \G1|pout\(1) & ( \G4|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux5~0_combout\,
	dataf => \G1|ALT_INV_pout\(1),
	combout => \G4|Mux5~1_combout\);

-- Location: FF_X56_Y8_N17
\G4|rs[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rs[1]~reg0_q\);

-- Location: LABCELL_X36_Y7_N48
\G5|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Equal0~1_combout\ = ( !\G4|rs[1]~reg0_q\ & ( \G4|rs[0]~en_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rs[0]~en_q\,
	dataf => \G4|ALT_INV_rs[1]~reg0_q\,
	combout => \G5|Equal0~1_combout\);

-- Location: LABCELL_X36_Y7_N51
\G5|jump~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|jump~2_combout\ = ( !\G5|Equal2~0_combout\ & ( !\G5|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_Equal0~1_combout\,
	dataf => \G5|ALT_INV_Equal2~0_combout\,
	combout => \G5|jump~2_combout\);

-- Location: MLABCELL_X39_Y8_N42
\G5|origalu[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[2]~reg0feeder_combout\ = ( \G5|jump~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G5|ALT_INV_jump~2_combout\,
	combout => \G5|origalu[2]~reg0feeder_combout\);

-- Location: FF_X39_Y8_N43
\G5|origalu[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|origalu[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|origalu[2]~reg0_q\);

-- Location: MLABCELL_X39_Y8_N27
\G5|origalu[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[2]~4_combout\ = ( \G5|origalu[2]~reg0_q\ & ( \G5|regdest~enDUPLICATE_q\ ) ) # ( \G5|origalu[2]~reg0_q\ & ( !\G5|regdest~enDUPLICATE_q\ ) ) # ( !\G5|origalu[2]~reg0_q\ & ( !\G5|regdest~enDUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G5|ALT_INV_origalu[2]~reg0_q\,
	dataf => \G5|ALT_INV_regdest~enDUPLICATE_q\,
	combout => \G5|origalu[2]~4_combout\);

-- Location: LABCELL_X56_Y8_N18
\G2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|saida[0]~0_combout\ = !\G1|pout\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(0),
	combout => \G2|saida[0]~0_combout\);

-- Location: FF_X56_Y8_N20
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

-- Location: LABCELL_X56_Y8_N36
\G12|SAIDA[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA[0]~feeder_combout\ = \G2|saida\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(0),
	combout => \G12|SAIDA[0]~feeder_combout\);

-- Location: LABCELL_X56_Y8_N39
\G10|SAIDA[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|SAIDA[0]~feeder_combout\ = \G2|saida\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(0),
	combout => \G10|SAIDA[0]~feeder_combout\);

-- Location: FF_X56_Y8_N40
\G10|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|SAIDA[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(0));

-- Location: FF_X56_Y8_N37
\G12|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G12|SAIDA[0]~feeder_combout\,
	asdata => \G10|SAIDA\(0),
	sload => \G11|S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12|SAIDA\(0));

-- Location: LABCELL_X56_Y8_N21
\G13|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~0_combout\ = ( \G12|SAIDA\(0) & ( !\G5|origalu[2]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu[2]~4_combout\,
	dataf => \G12|ALT_INV_SAIDA\(0),
	combout => \G13|SAIDA~0_combout\);

-- Location: FF_X56_Y8_N23
\G13|SAIDA[0]~DUPLICATE\ : dffeas
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
	q => \G13|SAIDA[0]~DUPLICATE_q\);

-- Location: FF_X56_Y8_N50
\G1|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA[0]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(0));

-- Location: LABCELL_X56_Y8_N42
\G4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux5~0_combout\ = ( !\G1|pout[3]~DUPLICATE_q\ & ( !\G1|pout\(2) & ( (\G1|pout\(0) & \G4|Mux3~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(0),
	datad => \G4|ALT_INV_Mux3~2_combout\,
	datae => \G1|ALT_INV_pout[3]~DUPLICATE_q\,
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G4|Mux5~0_combout\);

-- Location: FF_X56_Y8_N44
\G4|rs[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rs[0]~reg0_q\);

-- Location: FF_X36_Y7_N32
\G5|regdest~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|regdest~reg0DUPLICATE_q\);

-- Location: FF_X56_Y8_N19
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

-- Location: FF_X59_Y4_N1
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

-- Location: FF_X60_Y4_N4
\G1|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G13|SAIDA\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(4));

-- Location: FF_X60_Y4_N19
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

-- Location: FF_X59_Y4_N58
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

-- Location: FF_X60_Y4_N13
\G1|pout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|pout[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(13));

-- Location: FF_X56_Y8_N22
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

-- Location: FF_X60_Y4_N52
\G13|SAIDA[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[4]~feeder_combout\,
	asdata => VCC,
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA[4]~DUPLICATE_q\);

-- Location: FF_X60_Y4_N43
\G13|SAIDA[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[7]~feeder_combout\,
	asdata => VCC,
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA[7]~DUPLICATE_q\);

-- Location: FF_X60_Y4_N40
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
	sload => \G5|origalu[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G13|SAIDA[12]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y16_N0
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


