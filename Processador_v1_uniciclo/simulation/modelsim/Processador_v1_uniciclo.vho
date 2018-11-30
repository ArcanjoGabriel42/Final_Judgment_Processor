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

-- DATE "11/29/2018 19:48:30"

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
	Saida_adress_to_RAM_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END DataPath;

-- Design Ports Information
-- SomadorToPc_outWaveform[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[10]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[11]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[12]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[14]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[15]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[8]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[9]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[10]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[11]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[12]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[14]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[15]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[9]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[10]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[12]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[13]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[14]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[9]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[11]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[13]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[14]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[15]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[5]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[9]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[10]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[11]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[4]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[8]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[9]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[11]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[13]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[14]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[15]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[9]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[10]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[13]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[14]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[15]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[7]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[9]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[12]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[13]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[14]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[15]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[6]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[8]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[9]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[10]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[11]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[12]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[13]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \Clock_Sistema~inputCLKENA0_outclk\ : std_logic;
SIGNAL \G4|rt[0]~enfeeder_combout\ : std_logic;
SIGNAL \G4|rt[0]~en_q\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G13|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G13|SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G13|SAIDA[4]~4_combout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G13|SAIDA[5]~5_combout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G13|SAIDA[6]~6_combout\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G13|SAIDA[7]~7_combout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G13|SAIDA[8]~8_combout\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G13|SAIDA[9]~9_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G13|SAIDA[10]~10_combout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G13|SAIDA[11]~11_combout\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G13|SAIDA[12]~12_combout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G13|SAIDA[13]~13_combout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G1|pout[15]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Add0~58\ : std_logic;
SIGNAL \G2|Add0~61_sumout\ : std_logic;
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G4|op[1]~reg0_q\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G13|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G4|op[0]~reg0_q\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G13|SAIDA[3]~3_combout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|Mux4~0_combout\ : std_logic;
SIGNAL \G4|rs[0]~reg0_q\ : std_logic;
SIGNAL \G4|Mux3~0_combout\ : std_logic;
SIGNAL \G4|rs[2]~reg0_q\ : std_logic;
SIGNAL \G4|Mux5~0_combout\ : std_logic;
SIGNAL \G4|rd[2]~3_combout\ : std_logic;
SIGNAL \G4|rd[0]~reg0_q\ : std_logic;
SIGNAL \G4|rd[0]~enfeeder_combout\ : std_logic;
SIGNAL \G4|rd[0]~en_q\ : std_logic;
SIGNAL \G4|rt[0]~reg0_q\ : std_logic;
SIGNAL \G4|Mux6~0_combout\ : std_logic;
SIGNAL \G4|funct[0]~reg0_q\ : std_logic;
SIGNAL \G4|Mux2~0_combout\ : std_logic;
SIGNAL \G4|funct[2]~reg0_q\ : std_logic;
SIGNAL \G4|tipoi[0]~reg0_q\ : std_logic;
SIGNAL \G4|tipoi[0]~enfeeder_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~en_q\ : std_logic;
SIGNAL \G4|tipoi[2]~reg0_q\ : std_logic;
SIGNAL \G4|tipoi[3]~reg0_q\ : std_logic;
SIGNAL \G5|Equal0~0_combout\ : std_logic;
SIGNAL \G16|Mux12~0_combout\ : std_logic;
SIGNAL \G4|tipoi[2]~7_combout\ : std_logic;
SIGNAL \G16|Mux11~0_combout\ : std_logic;
SIGNAL \G7|Reg~152_combout\ : std_logic;
SIGNAL \G4|tipoi[3]~6_combout\ : std_logic;
SIGNAL \G7|Reg~181_combout\ : std_logic;
SIGNAL \G7|Reg~39_q\ : std_logic;
SIGNAL \G7|Reg~167_combout\ : std_logic;
SIGNAL \G7|Reg~150_combout\ : std_logic;
SIGNAL \G7|Reg~149_combout\ : std_logic;
SIGNAL \G7|Reg~36_q\ : std_logic;
SIGNAL \G7|Reg~164_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~8_combout\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G16|Mux11~2_combout\ : std_logic;
SIGNAL \G16|Mux11~1_combout\ : std_logic;
SIGNAL \G16|Mux11~3_combout\ : std_logic;
SIGNAL \G18|SAIDA[3]~6_combout\ : std_logic;
SIGNAL \G16|Add1~66_cout\ : std_logic;
SIGNAL \G16|Add1~17_sumout\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G16|Mux15~0_combout\ : std_logic;
SIGNAL \G5|Equal2~0_combout\ : std_logic;
SIGNAL \G16|Mux11~4_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \G17|ram~259_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \G17|ram~35_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \G17|ram~51_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \G17|ram~19_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \G17|ram~3_combout\ : std_logic;
SIGNAL \G17|ram~428_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \G17|ram~99_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \G17|ram~115_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \G17|ram~83_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \G17|ram~67_combout\ : std_logic;
SIGNAL \G17|ram~300_combout\ : std_logic;
SIGNAL \rtl~16_combout\ : std_logic;
SIGNAL \G17|ram~163_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \G17|ram~179_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \G17|ram~147_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \G17|ram~131_combout\ : std_logic;
SIGNAL \G17|ram~424_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \G17|ram~227_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \G17|ram~211_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \G17|ram~243_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \G17|ram~195_combout\ : std_logic;
SIGNAL \G17|ram~296_combout\ : std_logic;
SIGNAL \G18|SAIDA[3]~7_combout\ : std_logic;
SIGNAL \G7|Reg~180_combout\ : std_logic;
SIGNAL \G7|Reg~23_q\ : std_logic;
SIGNAL \G7|Reg~151_combout\ : std_logic;
SIGNAL \G16|Add1~18\ : std_logic;
SIGNAL \G16|Add1~14\ : std_logic;
SIGNAL \G16|Add1~10\ : std_logic;
SIGNAL \G16|Add1~5_sumout\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G16|Mux12~1_combout\ : std_logic;
SIGNAL \G18|SAIDA[0]~1_combout\ : std_logic;
SIGNAL \G17|ram~210_combout\ : std_logic;
SIGNAL \G17|ram~162_combout\ : std_logic;
SIGNAL \G17|ram~146_combout\ : std_logic;
SIGNAL \G17|ram~178_combout\ : std_logic;
SIGNAL \G17|ram~130_combout\ : std_logic;
SIGNAL \G17|ram~420_combout\ : std_logic;
SIGNAL \G17|ram~226_combout\ : std_logic;
SIGNAL \G17|ram~242_combout\ : std_logic;
SIGNAL \G17|ram~194_combout\ : std_logic;
SIGNAL \G17|ram~292_combout\ : std_logic;
SIGNAL \G17|ram~258_combout\ : std_logic;
SIGNAL \G17|ram~34_combout\ : std_logic;
SIGNAL \G17|ram~18_combout\ : std_logic;
SIGNAL \G17|ram~50_combout\ : std_logic;
SIGNAL \G17|ram~2_combout\ : std_logic;
SIGNAL \G17|ram~416_combout\ : std_logic;
SIGNAL \G17|ram~98_combout\ : std_logic;
SIGNAL \G17|ram~114_combout\ : std_logic;
SIGNAL \G17|ram~82_combout\ : std_logic;
SIGNAL \G17|ram~66_combout\ : std_logic;
SIGNAL \G17|ram~288_combout\ : std_logic;
SIGNAL \G18|SAIDA[2]~5_combout\ : std_logic;
SIGNAL \G7|Reg~22_q\ : std_logic;
SIGNAL \G7|Reg~38_q\ : std_logic;
SIGNAL \G7|Reg~166_combout\ : std_logic;
SIGNAL \G16|Add1~9_sumout\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G16|Mux13~0_combout\ : std_logic;
SIGNAL \G18|SAIDA[0]~2_combout\ : std_logic;
SIGNAL \G17|ram~257_combout\ : std_logic;
SIGNAL \G17|ram~161_combout\ : std_logic;
SIGNAL \G17|ram~177_combout\ : std_logic;
SIGNAL \G17|ram~145_combout\ : std_logic;
SIGNAL \G17|ram~129_combout\ : std_logic;
SIGNAL \G17|ram~412_combout\ : std_logic;
SIGNAL \G17|ram~225_combout\ : std_logic;
SIGNAL \G17|ram~241_combout\ : std_logic;
SIGNAL \G17|ram~209_combout\ : std_logic;
SIGNAL \G17|ram~193_combout\ : std_logic;
SIGNAL \G17|ram~284_combout\ : std_logic;
SIGNAL \G17|ram~113_combout\ : std_logic;
SIGNAL \G17|ram~97_combout\ : std_logic;
SIGNAL \G17|ram~81_combout\ : std_logic;
SIGNAL \G17|ram~17_combout\ : std_logic;
SIGNAL \G17|ram~33_combout\ : std_logic;
SIGNAL \G17|ram~49_combout\ : std_logic;
SIGNAL \G17|ram~1_combout\ : std_logic;
SIGNAL \G17|ram~408_combout\ : std_logic;
SIGNAL \G17|ram~65_combout\ : std_logic;
SIGNAL \G17|ram~280_combout\ : std_logic;
SIGNAL \G18|SAIDA[1]~4_combout\ : std_logic;
SIGNAL \G7|Reg~21_q\ : std_logic;
SIGNAL \G7|Reg~37_q\ : std_logic;
SIGNAL \G7|Reg~165_combout\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G16|Mux14~0_combout\ : std_logic;
SIGNAL \G16|Add1~13_sumout\ : std_logic;
SIGNAL \G16|Mux14~1_combout\ : std_logic;
SIGNAL \G17|ram~260_combout\ : std_logic;
SIGNAL \G18|SAIDA[4]~8_combout\ : std_logic;
SIGNAL \G17|ram~148_combout\ : std_logic;
SIGNAL \G17|ram~164_combout\ : std_logic;
SIGNAL \G17|ram~180_combout\ : std_logic;
SIGNAL \G17|ram~132_combout\ : std_logic;
SIGNAL \G17|ram~436_combout\ : std_logic;
SIGNAL \G17|ram~228_combout\ : std_logic;
SIGNAL \G17|ram~212_combout\ : std_logic;
SIGNAL \G17|ram~244_combout\ : std_logic;
SIGNAL \G17|ram~196_combout\ : std_logic;
SIGNAL \G17|ram~308_combout\ : std_logic;
SIGNAL \G17|ram~116_combout\ : std_logic;
SIGNAL \G17|ram~52_combout\ : std_logic;
SIGNAL \G17|ram~36_combout\ : std_logic;
SIGNAL \G17|ram~20_combout\ : std_logic;
SIGNAL \G17|ram~4_combout\ : std_logic;
SIGNAL \G17|ram~432_combout\ : std_logic;
SIGNAL \G17|ram~100_combout\ : std_logic;
SIGNAL \G17|ram~84_combout\ : std_logic;
SIGNAL \G17|ram~68_combout\ : std_logic;
SIGNAL \G17|ram~304_combout\ : std_logic;
SIGNAL \G18|SAIDA[4]~9_combout\ : std_logic;
SIGNAL \G7|Reg~24_q\ : std_logic;
SIGNAL \G7|Reg~40_q\ : std_logic;
SIGNAL \G7|Reg~168_combout\ : std_logic;
SIGNAL \G16|Add1~6\ : std_logic;
SIGNAL \G16|Add1~1_sumout\ : std_logic;
SIGNAL \G18|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G17|ram~176_combout\ : std_logic;
SIGNAL \G17|ram~160_combout\ : std_logic;
SIGNAL \G17|ram~144_combout\ : std_logic;
SIGNAL \G17|ram~128_combout\ : std_logic;
SIGNAL \G17|ram~404_combout\ : std_logic;
SIGNAL \G17|ram~224_combout\ : std_logic;
SIGNAL \G17|ram~208_combout\ : std_logic;
SIGNAL \G17|ram~240_combout\ : std_logic;
SIGNAL \G17|ram~192_combout\ : std_logic;
SIGNAL \G17|ram~276_combout\ : std_logic;
SIGNAL \G17|ram~256_combout\ : std_logic;
SIGNAL \G17|ram~80_combout\ : std_logic;
SIGNAL \G17|ram~16_combout\ : std_logic;
SIGNAL \G17|ram~32_combout\ : std_logic;
SIGNAL \G17|ram~48_combout\ : std_logic;
SIGNAL \G17|ram~0_combout\ : std_logic;
SIGNAL \G17|ram~400_combout\ : std_logic;
SIGNAL \G17|ram~96_combout\ : std_logic;
SIGNAL \G17|ram~112_combout\ : std_logic;
SIGNAL \G17|ram~64_combout\ : std_logic;
SIGNAL \G17|ram~272_combout\ : std_logic;
SIGNAL \G18|SAIDA[0]~3_combout\ : std_logic;
SIGNAL \G7|Reg~20_q\ : std_logic;
SIGNAL \G7|Reg~148_combout\ : std_logic;
SIGNAL \G7|Reg~41_q\ : std_logic;
SIGNAL \G7|Reg~169_combout\ : std_logic;
SIGNAL \G17|ram~261_combout\ : std_logic;
SIGNAL \G17|ram~165_combout\ : std_logic;
SIGNAL \G17|ram~181_combout\ : std_logic;
SIGNAL \G17|ram~149_combout\ : std_logic;
SIGNAL \G17|ram~133_combout\ : std_logic;
SIGNAL \G17|ram~444_combout\ : std_logic;
SIGNAL \G17|ram~213_combout\ : std_logic;
SIGNAL \G17|ram~229_combout\ : std_logic;
SIGNAL \G17|ram~245_combout\ : std_logic;
SIGNAL \G17|ram~197_combout\ : std_logic;
SIGNAL \G17|ram~316_combout\ : std_logic;
SIGNAL \G17|ram~37_combout\ : std_logic;
SIGNAL \G17|ram~21_combout\ : std_logic;
SIGNAL \G17|ram~53_combout\ : std_logic;
SIGNAL \G17|ram~5_combout\ : std_logic;
SIGNAL \G17|ram~440_combout\ : std_logic;
SIGNAL \G17|ram~101_combout\ : std_logic;
SIGNAL \G17|ram~117_combout\ : std_logic;
SIGNAL \G17|ram~85_combout\ : std_logic;
SIGNAL \G17|ram~69_combout\ : std_logic;
SIGNAL \G17|ram~312_combout\ : std_logic;
SIGNAL \G18|SAIDA[5]~10_combout\ : std_logic;
SIGNAL \G7|Reg~25_q\ : std_logic;
SIGNAL \G7|Reg~153_combout\ : std_logic;
SIGNAL \G7|Reg~42_q\ : std_logic;
SIGNAL \G7|Reg~170_combout\ : std_logic;
SIGNAL \G17|ram~262_combout\ : std_logic;
SIGNAL \G17|ram~246_combout\ : std_logic;
SIGNAL \G17|ram~150_combout\ : std_logic;
SIGNAL \G17|ram~166_combout\ : std_logic;
SIGNAL \G17|ram~182_combout\ : std_logic;
SIGNAL \G17|ram~134_combout\ : std_logic;
SIGNAL \G17|ram~452_combout\ : std_logic;
SIGNAL \G17|ram~230_combout\ : std_logic;
SIGNAL \G17|ram~214_combout\ : std_logic;
SIGNAL \G17|ram~198_combout\ : std_logic;
SIGNAL \G17|ram~324_combout\ : std_logic;
SIGNAL \G17|ram~118_combout\ : std_logic;
SIGNAL \G17|ram~102_combout\ : std_logic;
SIGNAL \G17|ram~86_combout\ : std_logic;
SIGNAL \G17|ram~38_combout\ : std_logic;
SIGNAL \G17|ram~22_combout\ : std_logic;
SIGNAL \G17|ram~54_combout\ : std_logic;
SIGNAL \G17|ram~6_combout\ : std_logic;
SIGNAL \G17|ram~448_combout\ : std_logic;
SIGNAL \G17|ram~70_combout\ : std_logic;
SIGNAL \G17|ram~320_combout\ : std_logic;
SIGNAL \G18|SAIDA[6]~11_combout\ : std_logic;
SIGNAL \G7|Reg~26_q\ : std_logic;
SIGNAL \G7|Reg~154_combout\ : std_logic;
SIGNAL \G7|Reg~43_q\ : std_logic;
SIGNAL \G7|Reg~171_combout\ : std_logic;
SIGNAL \G17|ram~263_combout\ : std_logic;
SIGNAL \G17|ram~167_combout\ : std_logic;
SIGNAL \G17|ram~151_combout\ : std_logic;
SIGNAL \G17|ram~183_combout\ : std_logic;
SIGNAL \G17|ram~135_combout\ : std_logic;
SIGNAL \G17|ram~460_combout\ : std_logic;
SIGNAL \G17|ram~231_combout\ : std_logic;
SIGNAL \G17|ram~247_combout\ : std_logic;
SIGNAL \G17|ram~215_combout\ : std_logic;
SIGNAL \G17|ram~199_combout\ : std_logic;
SIGNAL \G17|ram~332_combout\ : std_logic;
SIGNAL \G17|ram~119_combout\ : std_logic;
SIGNAL \G17|ram~103_combout\ : std_logic;
SIGNAL \G17|ram~39_combout\ : std_logic;
SIGNAL \G17|ram~55_combout\ : std_logic;
SIGNAL \G17|ram~23_combout\ : std_logic;
SIGNAL \G17|ram~7_combout\ : std_logic;
SIGNAL \G17|ram~456_combout\ : std_logic;
SIGNAL \G17|ram~87_combout\ : std_logic;
SIGNAL \G17|ram~71_combout\ : std_logic;
SIGNAL \G17|ram~328_combout\ : std_logic;
SIGNAL \G18|SAIDA[7]~12_combout\ : std_logic;
SIGNAL \G7|Reg~27_q\ : std_logic;
SIGNAL \G7|Reg~155_combout\ : std_logic;
SIGNAL \G7|Reg~44_q\ : std_logic;
SIGNAL \G7|Reg~172_combout\ : std_logic;
SIGNAL \G17|ram~264_combout\ : std_logic;
SIGNAL \G17|ram~168_combout\ : std_logic;
SIGNAL \G17|ram~152_combout\ : std_logic;
SIGNAL \G17|ram~184_combout\ : std_logic;
SIGNAL \G17|ram~136_combout\ : std_logic;
SIGNAL \G17|ram~468_combout\ : std_logic;
SIGNAL \G17|ram~232_combout\ : std_logic;
SIGNAL \G17|ram~248_combout\ : std_logic;
SIGNAL \G17|ram~216_combout\ : std_logic;
SIGNAL \G17|ram~200_combout\ : std_logic;
SIGNAL \G17|ram~340_combout\ : std_logic;
SIGNAL \G17|ram~88_combout\ : std_logic;
SIGNAL \G17|ram~120_combout\ : std_logic;
SIGNAL \G17|ram~104_combout\ : std_logic;
SIGNAL \G17|ram~40_combout\ : std_logic;
SIGNAL \G17|ram~24_combout\ : std_logic;
SIGNAL \G17|ram~56_combout\ : std_logic;
SIGNAL \G17|ram~8_combout\ : std_logic;
SIGNAL \G17|ram~464_combout\ : std_logic;
SIGNAL \G17|ram~72_combout\ : std_logic;
SIGNAL \G17|ram~336_combout\ : std_logic;
SIGNAL \G18|SAIDA[8]~13_combout\ : std_logic;
SIGNAL \G7|Reg~28_q\ : std_logic;
SIGNAL \G7|Reg~156_combout\ : std_logic;
SIGNAL \G7|Reg~45_q\ : std_logic;
SIGNAL \G7|Reg~173_combout\ : std_logic;
SIGNAL \G17|ram~185_combout\ : std_logic;
SIGNAL \G17|ram~169_combout\ : std_logic;
SIGNAL \G17|ram~153_combout\ : std_logic;
SIGNAL \G17|ram~137_combout\ : std_logic;
SIGNAL \G17|ram~476_combout\ : std_logic;
SIGNAL \G17|ram~233_combout\ : std_logic;
SIGNAL \G17|ram~217_combout\ : std_logic;
SIGNAL \G17|ram~249_combout\ : std_logic;
SIGNAL \G17|ram~201_combout\ : std_logic;
SIGNAL \G17|ram~348_combout\ : std_logic;
SIGNAL \G17|ram~265_combout\ : std_logic;
SIGNAL \G17|ram~25_combout\ : std_logic;
SIGNAL \G17|ram~41_combout\ : std_logic;
SIGNAL \G17|ram~57_combout\ : std_logic;
SIGNAL \G17|ram~9_combout\ : std_logic;
SIGNAL \G17|ram~472_combout\ : std_logic;
SIGNAL \G17|ram~121_combout\ : std_logic;
SIGNAL \G17|ram~105_combout\ : std_logic;
SIGNAL \G17|ram~89_combout\ : std_logic;
SIGNAL \G17|ram~73_combout\ : std_logic;
SIGNAL \G17|ram~344_combout\ : std_logic;
SIGNAL \G18|SAIDA[9]~14_combout\ : std_logic;
SIGNAL \G7|Reg~29_q\ : std_logic;
SIGNAL \G7|Reg~157_combout\ : std_logic;
SIGNAL \G7|Reg~46_q\ : std_logic;
SIGNAL \G7|Reg~174_combout\ : std_logic;
SIGNAL \G17|ram~250_combout\ : std_logic;
SIGNAL \G17|ram~170_combout\ : std_logic;
SIGNAL \G17|ram~186_combout\ : std_logic;
SIGNAL \G17|ram~154_combout\ : std_logic;
SIGNAL \G17|ram~138_combout\ : std_logic;
SIGNAL \G17|ram~484_combout\ : std_logic;
SIGNAL \G17|ram~234_combout\ : std_logic;
SIGNAL \G17|ram~218_combout\ : std_logic;
SIGNAL \G17|ram~202_combout\ : std_logic;
SIGNAL \G17|ram~356_combout\ : std_logic;
SIGNAL \G17|ram~266_combout\ : std_logic;
SIGNAL \G17|ram~58_combout\ : std_logic;
SIGNAL \G17|ram~42_combout\ : std_logic;
SIGNAL \G17|ram~26_combout\ : std_logic;
SIGNAL \G17|ram~10_combout\ : std_logic;
SIGNAL \G17|ram~480_combout\ : std_logic;
SIGNAL \G17|ram~122_combout\ : std_logic;
SIGNAL \G17|ram~106_combout\ : std_logic;
SIGNAL \G17|ram~90_combout\ : std_logic;
SIGNAL \G17|ram~74_combout\ : std_logic;
SIGNAL \G17|ram~352_combout\ : std_logic;
SIGNAL \G18|SAIDA[10]~15_combout\ : std_logic;
SIGNAL \G7|Reg~30_q\ : std_logic;
SIGNAL \G7|Reg~158_combout\ : std_logic;
SIGNAL \G7|Reg~47_q\ : std_logic;
SIGNAL \G7|Reg~175_combout\ : std_logic;
SIGNAL \G17|ram~267_combout\ : std_logic;
SIGNAL \G17|ram~251_combout\ : std_logic;
SIGNAL \G17|ram~219_combout\ : std_logic;
SIGNAL \G17|ram~235_combout\ : std_logic;
SIGNAL \G17|ram~155_combout\ : std_logic;
SIGNAL \G17|ram~187_combout\ : std_logic;
SIGNAL \G17|ram~171_combout\ : std_logic;
SIGNAL \G17|ram~139_combout\ : std_logic;
SIGNAL \G17|ram~492_combout\ : std_logic;
SIGNAL \G17|ram~203_combout\ : std_logic;
SIGNAL \G17|ram~364_combout\ : std_logic;
SIGNAL \G17|ram~123_combout\ : std_logic;
SIGNAL \G17|ram~91_combout\ : std_logic;
SIGNAL \G17|ram~107_combout\ : std_logic;
SIGNAL \G17|ram~59_combout\ : std_logic;
SIGNAL \G17|ram~43_combout\ : std_logic;
SIGNAL \G17|ram~27_combout\ : std_logic;
SIGNAL \G17|ram~11_combout\ : std_logic;
SIGNAL \G17|ram~488_combout\ : std_logic;
SIGNAL \G17|ram~75_combout\ : std_logic;
SIGNAL \G17|ram~360_combout\ : std_logic;
SIGNAL \G18|SAIDA[11]~16_combout\ : std_logic;
SIGNAL \G7|Reg~31_q\ : std_logic;
SIGNAL \G7|Reg~159_combout\ : std_logic;
SIGNAL \G7|Reg~48_q\ : std_logic;
SIGNAL \G7|Reg~176_combout\ : std_logic;
SIGNAL \G17|ram~268_combout\ : std_logic;
SIGNAL \G17|ram~252_combout\ : std_logic;
SIGNAL \G17|ram~156_combout\ : std_logic;
SIGNAL \G17|ram~172_combout\ : std_logic;
SIGNAL \G17|ram~188_combout\ : std_logic;
SIGNAL \G17|ram~140_combout\ : std_logic;
SIGNAL \G17|ram~500_combout\ : std_logic;
SIGNAL \G17|ram~236_combout\ : std_logic;
SIGNAL \G17|ram~220_combout\ : std_logic;
SIGNAL \G17|ram~204_combout\ : std_logic;
SIGNAL \G17|ram~372_combout\ : std_logic;
SIGNAL \G17|ram~92_combout\ : std_logic;
SIGNAL \G17|ram~124_combout\ : std_logic;
SIGNAL \G17|ram~108_combout\ : std_logic;
SIGNAL \G17|ram~60_combout\ : std_logic;
SIGNAL \G17|ram~44_combout\ : std_logic;
SIGNAL \G17|ram~28_combout\ : std_logic;
SIGNAL \G17|ram~12_combout\ : std_logic;
SIGNAL \G17|ram~496_combout\ : std_logic;
SIGNAL \G17|ram~76_combout\ : std_logic;
SIGNAL \G17|ram~368_combout\ : std_logic;
SIGNAL \G18|SAIDA[12]~17_combout\ : std_logic;
SIGNAL \G7|Reg~32_q\ : std_logic;
SIGNAL \G7|Reg~160_combout\ : std_logic;
SIGNAL \G7|Reg~49_q\ : std_logic;
SIGNAL \G7|Reg~177_combout\ : std_logic;
SIGNAL \G17|ram~173_combout\ : std_logic;
SIGNAL \G17|ram~189_combout\ : std_logic;
SIGNAL \G17|ram~157_combout\ : std_logic;
SIGNAL \G17|ram~141_combout\ : std_logic;
SIGNAL \G17|ram~508_combout\ : std_logic;
SIGNAL \G17|ram~237_combout\ : std_logic;
SIGNAL \G17|ram~253_combout\ : std_logic;
SIGNAL \G17|ram~221_combout\ : std_logic;
SIGNAL \G17|ram~205_combout\ : std_logic;
SIGNAL \G17|ram~380_combout\ : std_logic;
SIGNAL \G17|ram~269_combout\ : std_logic;
SIGNAL \G17|ram~61_combout\ : std_logic;
SIGNAL \G17|ram~45_combout\ : std_logic;
SIGNAL \G17|ram~29_combout\ : std_logic;
SIGNAL \G17|ram~13_combout\ : std_logic;
SIGNAL \G17|ram~504_combout\ : std_logic;
SIGNAL \G17|ram~109_combout\ : std_logic;
SIGNAL \G17|ram~93_combout\ : std_logic;
SIGNAL \G17|ram~125_combout\ : std_logic;
SIGNAL \G17|ram~77_combout\ : std_logic;
SIGNAL \G17|ram~376_combout\ : std_logic;
SIGNAL \G18|SAIDA[13]~18_combout\ : std_logic;
SIGNAL \G7|Reg~33_q\ : std_logic;
SIGNAL \G7|Reg~161_combout\ : std_logic;
SIGNAL \G7|Reg~50_q\ : std_logic;
SIGNAL \G7|Reg~178_combout\ : std_logic;
SIGNAL \G17|ram~270_combout\ : std_logic;
SIGNAL \G17|ram~190_combout\ : std_logic;
SIGNAL \G17|ram~174_combout\ : std_logic;
SIGNAL \G17|ram~158_combout\ : std_logic;
SIGNAL \G17|ram~142_combout\ : std_logic;
SIGNAL \G17|ram~516_combout\ : std_logic;
SIGNAL \G17|ram~254_combout\ : std_logic;
SIGNAL \G17|ram~238_combout\ : std_logic;
SIGNAL \G17|ram~222_combout\ : std_logic;
SIGNAL \G17|ram~206_combout\ : std_logic;
SIGNAL \G17|ram~388_combout\ : std_logic;
SIGNAL \G17|ram~126_combout\ : std_logic;
SIGNAL \G17|ram~110_combout\ : std_logic;
SIGNAL \G17|ram~30_combout\ : std_logic;
SIGNAL \G17|ram~46_combout\ : std_logic;
SIGNAL \G17|ram~62_combout\ : std_logic;
SIGNAL \G17|ram~14_combout\ : std_logic;
SIGNAL \G17|ram~512_combout\ : std_logic;
SIGNAL \G17|ram~94_combout\ : std_logic;
SIGNAL \G17|ram~78_combout\ : std_logic;
SIGNAL \G17|ram~384_combout\ : std_logic;
SIGNAL \G18|SAIDA[14]~19_combout\ : std_logic;
SIGNAL \G7|Reg~34_q\ : std_logic;
SIGNAL \G7|Reg~162_combout\ : std_logic;
SIGNAL \G7|Reg~51_q\ : std_logic;
SIGNAL \G7|Reg~179_combout\ : std_logic;
SIGNAL \G17|ram~271_combout\ : std_logic;
SIGNAL \G17|ram~223_combout\ : std_logic;
SIGNAL \G17|ram~255_combout\ : std_logic;
SIGNAL \G17|ram~239_combout\ : std_logic;
SIGNAL \G17|ram~159_combout\ : std_logic;
SIGNAL \G17|ram~175_combout\ : std_logic;
SIGNAL \G17|ram~191_combout\ : std_logic;
SIGNAL \G17|ram~143_combout\ : std_logic;
SIGNAL \G17|ram~524_combout\ : std_logic;
SIGNAL \G17|ram~207_combout\ : std_logic;
SIGNAL \G17|ram~396_combout\ : std_logic;
SIGNAL \G17|ram~95_combout\ : std_logic;
SIGNAL \G17|ram~31_combout\ : std_logic;
SIGNAL \G17|ram~47_combout\ : std_logic;
SIGNAL \G17|ram~63_combout\ : std_logic;
SIGNAL \G17|ram~15_combout\ : std_logic;
SIGNAL \G17|ram~520_combout\ : std_logic;
SIGNAL \G17|ram~111_combout\ : std_logic;
SIGNAL \G17|ram~127_combout\ : std_logic;
SIGNAL \G17|ram~79_combout\ : std_logic;
SIGNAL \G17|ram~392_combout\ : std_logic;
SIGNAL \G18|SAIDA[15]~20_combout\ : std_logic;
SIGNAL \G7|Reg~35_q\ : std_logic;
SIGNAL \G7|Reg~163_combout\ : std_logic;
SIGNAL \G6|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G6|SAIDA[2]~1_combout\ : std_logic;
SIGNAL \G16|Add1~2\ : std_logic;
SIGNAL \G16|Add1~21_sumout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G16|Mux10~0_combout\ : std_logic;
SIGNAL \G16|Mux10~1_combout\ : std_logic;
SIGNAL \G16|Add1~22\ : std_logic;
SIGNAL \G16|Add1~25_sumout\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G16|Mux9~0_combout\ : std_logic;
SIGNAL \G16|Mux9~1_combout\ : std_logic;
SIGNAL \G16|Add1~26\ : std_logic;
SIGNAL \G16|Add1~29_sumout\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G16|Mux8~0_combout\ : std_logic;
SIGNAL \G16|Mux8~1_combout\ : std_logic;
SIGNAL \G16|Add1~30\ : std_logic;
SIGNAL \G16|Add1~33_sumout\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G16|Mux7~0_combout\ : std_logic;
SIGNAL \G16|Add1~34\ : std_logic;
SIGNAL \G16|Add1~37_sumout\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G16|Mux6~0_combout\ : std_logic;
SIGNAL \G16|Add1~38\ : std_logic;
SIGNAL \G16|Add1~41_sumout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G16|Mux5~0_combout\ : std_logic;
SIGNAL \G16|Add1~42\ : std_logic;
SIGNAL \G16|Add1~45_sumout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G16|Mux4~0_combout\ : std_logic;
SIGNAL \G16|Add1~46\ : std_logic;
SIGNAL \G16|Add1~49_sumout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G16|Mux3~0_combout\ : std_logic;
SIGNAL \G16|Add1~50\ : std_logic;
SIGNAL \G16|Add1~53_sumout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G16|Mux2~0_combout\ : std_logic;
SIGNAL \G16|Add1~54\ : std_logic;
SIGNAL \G16|Add1~57_sumout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G16|Mux1~0_combout\ : std_logic;
SIGNAL \G16|Add1~58\ : std_logic;
SIGNAL \G16|Add1~61_sumout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G16|Mux0~0_combout\ : std_logic;
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|ALT_INV_pout[15]~DUPLICATE_q\ : std_logic;
SIGNAL \G17|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~143_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~191_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~47_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~15_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~63_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~31_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~142_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~190_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~46_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~14_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~62_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~30_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~141_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~189_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~45_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~13_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~61_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~29_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~140_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~188_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~44_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~12_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~60_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~28_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~139_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~187_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~43_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~11_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~59_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~27_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~138_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~186_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~42_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~10_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~58_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~26_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~137_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~185_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~41_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~9_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~57_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~25_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~136_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~184_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~40_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~8_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~56_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~24_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~135_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~183_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~39_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~7_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~55_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~23_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~134_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~182_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~38_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~6_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~54_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~22_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~133_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~37_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~5_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~53_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~21_combout\ : std_logic;
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
SIGNAL \G17|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~128_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~32_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~0_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~48_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~16_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~239_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~207_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~255_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~223_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~111_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~79_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~127_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~95_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~238_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~206_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~254_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~222_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~110_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~78_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~126_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~94_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~237_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~205_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~253_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~221_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~109_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~77_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~125_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~93_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~236_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~204_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~252_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~220_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~108_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~76_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~124_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~92_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~235_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~203_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~251_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~219_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~107_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~75_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~123_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~91_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~234_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~202_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~250_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~218_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~106_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~74_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~122_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~90_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~233_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~201_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~249_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~217_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~105_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~73_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~121_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~89_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~232_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~200_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~248_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~216_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~104_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~72_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~120_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~88_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~231_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~199_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~247_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~215_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~103_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~71_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~119_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~87_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~230_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~198_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~246_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~214_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~102_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~70_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~118_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~86_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~229_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~197_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~245_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~213_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~101_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~69_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~117_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~85_combout\ : std_logic;
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
SIGNAL \G17|ALT_INV_ram~224_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~192_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~240_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~208_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~96_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~64_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~112_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~80_combout\ : std_logic;
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
SIGNAL \G17|ALT_INV_ram~260_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~259_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~258_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~257_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~256_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~16_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~15_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~14_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~13_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~12_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~11_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~10_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~9_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~8_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~7_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~6_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~5_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~4_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~3_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~2_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~1_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[2]~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[4]~8_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[3]~6_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[0]~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[0]~8_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[0]~reg0_q\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[2]~7_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[2]~reg0_q\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[0]~1_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[3]~6_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[3]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[0]~en_q\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_funct[0]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_funct[2]~reg0_q\ : std_logic;
SIGNAL \G5|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rs[2]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_rs[0]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_op[0]~reg0_q\ : std_logic;
SIGNAL \G4|ALT_INV_op[1]~reg0_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~179_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~51_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~178_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~50_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~177_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~49_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~176_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~48_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~175_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~47_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~174_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~46_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~173_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~45_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~172_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~44_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~171_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~43_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~170_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~42_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~169_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~41_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~168_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~40_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~167_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~39_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~166_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~38_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~165_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~37_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~164_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rt[0]~en_q\ : std_logic;
SIGNAL \G4|ALT_INV_rt[0]~reg0_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~36_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~163_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~35_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~162_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~34_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~161_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~33_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~160_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~32_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~159_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~31_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~158_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~30_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~157_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~29_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~156_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~28_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~155_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~27_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~154_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~26_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~153_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~25_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~152_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~24_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~151_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~23_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~150_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~22_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~149_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~21_q\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~148_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~20_q\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~en_q\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~reg0_q\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~524_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~520_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~516_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~512_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~508_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~504_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~500_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~496_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~492_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~488_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~484_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~480_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~476_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~472_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~468_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~464_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~460_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~456_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~452_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~448_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~444_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~440_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~436_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~432_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~428_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~424_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~420_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~416_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~412_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~408_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~404_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~400_combout\ : std_logic;
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
SIGNAL \G16|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~396_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~392_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~388_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~384_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~380_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~376_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~372_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~368_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~364_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~360_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~356_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~352_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~348_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~344_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~340_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~336_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~332_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~328_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~324_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~320_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~316_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~312_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~308_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~304_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~300_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~296_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~292_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~288_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~284_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~280_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~276_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~272_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_Add0~1_sumout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\G1|ALT_INV_pout[15]~DUPLICATE_q\ <= NOT \G1|pout[15]~DUPLICATE_q\;
\G17|ALT_INV_ram~175_combout\ <= NOT \G17|ram~175_combout\;
\G17|ALT_INV_ram~143_combout\ <= NOT \G17|ram~143_combout\;
\G17|ALT_INV_ram~191_combout\ <= NOT \G17|ram~191_combout\;
\G17|ALT_INV_ram~159_combout\ <= NOT \G17|ram~159_combout\;
\G17|ALT_INV_ram~47_combout\ <= NOT \G17|ram~47_combout\;
\G17|ALT_INV_ram~15_combout\ <= NOT \G17|ram~15_combout\;
\G17|ALT_INV_ram~63_combout\ <= NOT \G17|ram~63_combout\;
\G17|ALT_INV_ram~31_combout\ <= NOT \G17|ram~31_combout\;
\G17|ALT_INV_ram~174_combout\ <= NOT \G17|ram~174_combout\;
\G17|ALT_INV_ram~142_combout\ <= NOT \G17|ram~142_combout\;
\G17|ALT_INV_ram~190_combout\ <= NOT \G17|ram~190_combout\;
\G17|ALT_INV_ram~158_combout\ <= NOT \G17|ram~158_combout\;
\G17|ALT_INV_ram~46_combout\ <= NOT \G17|ram~46_combout\;
\G17|ALT_INV_ram~14_combout\ <= NOT \G17|ram~14_combout\;
\G17|ALT_INV_ram~62_combout\ <= NOT \G17|ram~62_combout\;
\G17|ALT_INV_ram~30_combout\ <= NOT \G17|ram~30_combout\;
\G17|ALT_INV_ram~173_combout\ <= NOT \G17|ram~173_combout\;
\G17|ALT_INV_ram~141_combout\ <= NOT \G17|ram~141_combout\;
\G17|ALT_INV_ram~189_combout\ <= NOT \G17|ram~189_combout\;
\G17|ALT_INV_ram~157_combout\ <= NOT \G17|ram~157_combout\;
\G17|ALT_INV_ram~45_combout\ <= NOT \G17|ram~45_combout\;
\G17|ALT_INV_ram~13_combout\ <= NOT \G17|ram~13_combout\;
\G17|ALT_INV_ram~61_combout\ <= NOT \G17|ram~61_combout\;
\G17|ALT_INV_ram~29_combout\ <= NOT \G17|ram~29_combout\;
\G17|ALT_INV_ram~172_combout\ <= NOT \G17|ram~172_combout\;
\G17|ALT_INV_ram~140_combout\ <= NOT \G17|ram~140_combout\;
\G17|ALT_INV_ram~188_combout\ <= NOT \G17|ram~188_combout\;
\G17|ALT_INV_ram~156_combout\ <= NOT \G17|ram~156_combout\;
\G17|ALT_INV_ram~44_combout\ <= NOT \G17|ram~44_combout\;
\G17|ALT_INV_ram~12_combout\ <= NOT \G17|ram~12_combout\;
\G17|ALT_INV_ram~60_combout\ <= NOT \G17|ram~60_combout\;
\G17|ALT_INV_ram~28_combout\ <= NOT \G17|ram~28_combout\;
\G17|ALT_INV_ram~171_combout\ <= NOT \G17|ram~171_combout\;
\G17|ALT_INV_ram~139_combout\ <= NOT \G17|ram~139_combout\;
\G17|ALT_INV_ram~187_combout\ <= NOT \G17|ram~187_combout\;
\G17|ALT_INV_ram~155_combout\ <= NOT \G17|ram~155_combout\;
\G17|ALT_INV_ram~43_combout\ <= NOT \G17|ram~43_combout\;
\G17|ALT_INV_ram~11_combout\ <= NOT \G17|ram~11_combout\;
\G17|ALT_INV_ram~59_combout\ <= NOT \G17|ram~59_combout\;
\G17|ALT_INV_ram~27_combout\ <= NOT \G17|ram~27_combout\;
\G17|ALT_INV_ram~170_combout\ <= NOT \G17|ram~170_combout\;
\G17|ALT_INV_ram~138_combout\ <= NOT \G17|ram~138_combout\;
\G17|ALT_INV_ram~186_combout\ <= NOT \G17|ram~186_combout\;
\G17|ALT_INV_ram~154_combout\ <= NOT \G17|ram~154_combout\;
\G17|ALT_INV_ram~42_combout\ <= NOT \G17|ram~42_combout\;
\G17|ALT_INV_ram~10_combout\ <= NOT \G17|ram~10_combout\;
\G17|ALT_INV_ram~58_combout\ <= NOT \G17|ram~58_combout\;
\G17|ALT_INV_ram~26_combout\ <= NOT \G17|ram~26_combout\;
\G17|ALT_INV_ram~169_combout\ <= NOT \G17|ram~169_combout\;
\G17|ALT_INV_ram~137_combout\ <= NOT \G17|ram~137_combout\;
\G17|ALT_INV_ram~185_combout\ <= NOT \G17|ram~185_combout\;
\G17|ALT_INV_ram~153_combout\ <= NOT \G17|ram~153_combout\;
\G17|ALT_INV_ram~41_combout\ <= NOT \G17|ram~41_combout\;
\G17|ALT_INV_ram~9_combout\ <= NOT \G17|ram~9_combout\;
\G17|ALT_INV_ram~57_combout\ <= NOT \G17|ram~57_combout\;
\G17|ALT_INV_ram~25_combout\ <= NOT \G17|ram~25_combout\;
\G17|ALT_INV_ram~168_combout\ <= NOT \G17|ram~168_combout\;
\G17|ALT_INV_ram~136_combout\ <= NOT \G17|ram~136_combout\;
\G17|ALT_INV_ram~184_combout\ <= NOT \G17|ram~184_combout\;
\G17|ALT_INV_ram~152_combout\ <= NOT \G17|ram~152_combout\;
\G17|ALT_INV_ram~40_combout\ <= NOT \G17|ram~40_combout\;
\G17|ALT_INV_ram~8_combout\ <= NOT \G17|ram~8_combout\;
\G17|ALT_INV_ram~56_combout\ <= NOT \G17|ram~56_combout\;
\G17|ALT_INV_ram~24_combout\ <= NOT \G17|ram~24_combout\;
\G17|ALT_INV_ram~167_combout\ <= NOT \G17|ram~167_combout\;
\G17|ALT_INV_ram~135_combout\ <= NOT \G17|ram~135_combout\;
\G17|ALT_INV_ram~183_combout\ <= NOT \G17|ram~183_combout\;
\G17|ALT_INV_ram~151_combout\ <= NOT \G17|ram~151_combout\;
\G17|ALT_INV_ram~39_combout\ <= NOT \G17|ram~39_combout\;
\G17|ALT_INV_ram~7_combout\ <= NOT \G17|ram~7_combout\;
\G17|ALT_INV_ram~55_combout\ <= NOT \G17|ram~55_combout\;
\G17|ALT_INV_ram~23_combout\ <= NOT \G17|ram~23_combout\;
\G17|ALT_INV_ram~166_combout\ <= NOT \G17|ram~166_combout\;
\G17|ALT_INV_ram~134_combout\ <= NOT \G17|ram~134_combout\;
\G17|ALT_INV_ram~182_combout\ <= NOT \G17|ram~182_combout\;
\G17|ALT_INV_ram~150_combout\ <= NOT \G17|ram~150_combout\;
\G17|ALT_INV_ram~38_combout\ <= NOT \G17|ram~38_combout\;
\G17|ALT_INV_ram~6_combout\ <= NOT \G17|ram~6_combout\;
\G17|ALT_INV_ram~54_combout\ <= NOT \G17|ram~54_combout\;
\G17|ALT_INV_ram~22_combout\ <= NOT \G17|ram~22_combout\;
\G17|ALT_INV_ram~165_combout\ <= NOT \G17|ram~165_combout\;
\G17|ALT_INV_ram~133_combout\ <= NOT \G17|ram~133_combout\;
\G17|ALT_INV_ram~181_combout\ <= NOT \G17|ram~181_combout\;
\G17|ALT_INV_ram~149_combout\ <= NOT \G17|ram~149_combout\;
\G17|ALT_INV_ram~37_combout\ <= NOT \G17|ram~37_combout\;
\G17|ALT_INV_ram~5_combout\ <= NOT \G17|ram~5_combout\;
\G17|ALT_INV_ram~53_combout\ <= NOT \G17|ram~53_combout\;
\G17|ALT_INV_ram~21_combout\ <= NOT \G17|ram~21_combout\;
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
\G17|ALT_INV_ram~160_combout\ <= NOT \G17|ram~160_combout\;
\G17|ALT_INV_ram~128_combout\ <= NOT \G17|ram~128_combout\;
\G17|ALT_INV_ram~176_combout\ <= NOT \G17|ram~176_combout\;
\G17|ALT_INV_ram~144_combout\ <= NOT \G17|ram~144_combout\;
\G17|ALT_INV_ram~32_combout\ <= NOT \G17|ram~32_combout\;
\G17|ALT_INV_ram~0_combout\ <= NOT \G17|ram~0_combout\;
\G17|ALT_INV_ram~48_combout\ <= NOT \G17|ram~48_combout\;
\G17|ALT_INV_ram~16_combout\ <= NOT \G17|ram~16_combout\;
\G17|ALT_INV_ram~239_combout\ <= NOT \G17|ram~239_combout\;
\G17|ALT_INV_ram~207_combout\ <= NOT \G17|ram~207_combout\;
\G17|ALT_INV_ram~255_combout\ <= NOT \G17|ram~255_combout\;
\G17|ALT_INV_ram~223_combout\ <= NOT \G17|ram~223_combout\;
\G17|ALT_INV_ram~111_combout\ <= NOT \G17|ram~111_combout\;
\G17|ALT_INV_ram~79_combout\ <= NOT \G17|ram~79_combout\;
\G17|ALT_INV_ram~127_combout\ <= NOT \G17|ram~127_combout\;
\G17|ALT_INV_ram~95_combout\ <= NOT \G17|ram~95_combout\;
\G17|ALT_INV_ram~238_combout\ <= NOT \G17|ram~238_combout\;
\G17|ALT_INV_ram~206_combout\ <= NOT \G17|ram~206_combout\;
\G17|ALT_INV_ram~254_combout\ <= NOT \G17|ram~254_combout\;
\G17|ALT_INV_ram~222_combout\ <= NOT \G17|ram~222_combout\;
\G17|ALT_INV_ram~110_combout\ <= NOT \G17|ram~110_combout\;
\G17|ALT_INV_ram~78_combout\ <= NOT \G17|ram~78_combout\;
\G17|ALT_INV_ram~126_combout\ <= NOT \G17|ram~126_combout\;
\G17|ALT_INV_ram~94_combout\ <= NOT \G17|ram~94_combout\;
\G17|ALT_INV_ram~237_combout\ <= NOT \G17|ram~237_combout\;
\G17|ALT_INV_ram~205_combout\ <= NOT \G17|ram~205_combout\;
\G17|ALT_INV_ram~253_combout\ <= NOT \G17|ram~253_combout\;
\G17|ALT_INV_ram~221_combout\ <= NOT \G17|ram~221_combout\;
\G17|ALT_INV_ram~109_combout\ <= NOT \G17|ram~109_combout\;
\G17|ALT_INV_ram~77_combout\ <= NOT \G17|ram~77_combout\;
\G17|ALT_INV_ram~125_combout\ <= NOT \G17|ram~125_combout\;
\G17|ALT_INV_ram~93_combout\ <= NOT \G17|ram~93_combout\;
\G17|ALT_INV_ram~236_combout\ <= NOT \G17|ram~236_combout\;
\G17|ALT_INV_ram~204_combout\ <= NOT \G17|ram~204_combout\;
\G17|ALT_INV_ram~252_combout\ <= NOT \G17|ram~252_combout\;
\G17|ALT_INV_ram~220_combout\ <= NOT \G17|ram~220_combout\;
\G17|ALT_INV_ram~108_combout\ <= NOT \G17|ram~108_combout\;
\G17|ALT_INV_ram~76_combout\ <= NOT \G17|ram~76_combout\;
\G17|ALT_INV_ram~124_combout\ <= NOT \G17|ram~124_combout\;
\G17|ALT_INV_ram~92_combout\ <= NOT \G17|ram~92_combout\;
\G17|ALT_INV_ram~235_combout\ <= NOT \G17|ram~235_combout\;
\G17|ALT_INV_ram~203_combout\ <= NOT \G17|ram~203_combout\;
\G17|ALT_INV_ram~251_combout\ <= NOT \G17|ram~251_combout\;
\G17|ALT_INV_ram~219_combout\ <= NOT \G17|ram~219_combout\;
\G17|ALT_INV_ram~107_combout\ <= NOT \G17|ram~107_combout\;
\G17|ALT_INV_ram~75_combout\ <= NOT \G17|ram~75_combout\;
\G17|ALT_INV_ram~123_combout\ <= NOT \G17|ram~123_combout\;
\G17|ALT_INV_ram~91_combout\ <= NOT \G17|ram~91_combout\;
\G17|ALT_INV_ram~234_combout\ <= NOT \G17|ram~234_combout\;
\G17|ALT_INV_ram~202_combout\ <= NOT \G17|ram~202_combout\;
\G17|ALT_INV_ram~250_combout\ <= NOT \G17|ram~250_combout\;
\G17|ALT_INV_ram~218_combout\ <= NOT \G17|ram~218_combout\;
\G17|ALT_INV_ram~106_combout\ <= NOT \G17|ram~106_combout\;
\G17|ALT_INV_ram~74_combout\ <= NOT \G17|ram~74_combout\;
\G17|ALT_INV_ram~122_combout\ <= NOT \G17|ram~122_combout\;
\G17|ALT_INV_ram~90_combout\ <= NOT \G17|ram~90_combout\;
\G17|ALT_INV_ram~233_combout\ <= NOT \G17|ram~233_combout\;
\G17|ALT_INV_ram~201_combout\ <= NOT \G17|ram~201_combout\;
\G17|ALT_INV_ram~249_combout\ <= NOT \G17|ram~249_combout\;
\G17|ALT_INV_ram~217_combout\ <= NOT \G17|ram~217_combout\;
\G17|ALT_INV_ram~105_combout\ <= NOT \G17|ram~105_combout\;
\G17|ALT_INV_ram~73_combout\ <= NOT \G17|ram~73_combout\;
\G17|ALT_INV_ram~121_combout\ <= NOT \G17|ram~121_combout\;
\G17|ALT_INV_ram~89_combout\ <= NOT \G17|ram~89_combout\;
\G17|ALT_INV_ram~232_combout\ <= NOT \G17|ram~232_combout\;
\G17|ALT_INV_ram~200_combout\ <= NOT \G17|ram~200_combout\;
\G17|ALT_INV_ram~248_combout\ <= NOT \G17|ram~248_combout\;
\G17|ALT_INV_ram~216_combout\ <= NOT \G17|ram~216_combout\;
\G17|ALT_INV_ram~104_combout\ <= NOT \G17|ram~104_combout\;
\G17|ALT_INV_ram~72_combout\ <= NOT \G17|ram~72_combout\;
\G17|ALT_INV_ram~120_combout\ <= NOT \G17|ram~120_combout\;
\G17|ALT_INV_ram~88_combout\ <= NOT \G17|ram~88_combout\;
\G17|ALT_INV_ram~231_combout\ <= NOT \G17|ram~231_combout\;
\G17|ALT_INV_ram~199_combout\ <= NOT \G17|ram~199_combout\;
\G17|ALT_INV_ram~247_combout\ <= NOT \G17|ram~247_combout\;
\G17|ALT_INV_ram~215_combout\ <= NOT \G17|ram~215_combout\;
\G17|ALT_INV_ram~103_combout\ <= NOT \G17|ram~103_combout\;
\G17|ALT_INV_ram~71_combout\ <= NOT \G17|ram~71_combout\;
\G17|ALT_INV_ram~119_combout\ <= NOT \G17|ram~119_combout\;
\G17|ALT_INV_ram~87_combout\ <= NOT \G17|ram~87_combout\;
\G17|ALT_INV_ram~230_combout\ <= NOT \G17|ram~230_combout\;
\G17|ALT_INV_ram~198_combout\ <= NOT \G17|ram~198_combout\;
\G17|ALT_INV_ram~246_combout\ <= NOT \G17|ram~246_combout\;
\G17|ALT_INV_ram~214_combout\ <= NOT \G17|ram~214_combout\;
\G17|ALT_INV_ram~102_combout\ <= NOT \G17|ram~102_combout\;
\G17|ALT_INV_ram~70_combout\ <= NOT \G17|ram~70_combout\;
\G17|ALT_INV_ram~118_combout\ <= NOT \G17|ram~118_combout\;
\G17|ALT_INV_ram~86_combout\ <= NOT \G17|ram~86_combout\;
\G17|ALT_INV_ram~229_combout\ <= NOT \G17|ram~229_combout\;
\G17|ALT_INV_ram~197_combout\ <= NOT \G17|ram~197_combout\;
\G17|ALT_INV_ram~245_combout\ <= NOT \G17|ram~245_combout\;
\G17|ALT_INV_ram~213_combout\ <= NOT \G17|ram~213_combout\;
\G17|ALT_INV_ram~101_combout\ <= NOT \G17|ram~101_combout\;
\G17|ALT_INV_ram~69_combout\ <= NOT \G17|ram~69_combout\;
\G17|ALT_INV_ram~117_combout\ <= NOT \G17|ram~117_combout\;
\G17|ALT_INV_ram~85_combout\ <= NOT \G17|ram~85_combout\;
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
\G17|ALT_INV_ram~224_combout\ <= NOT \G17|ram~224_combout\;
\G17|ALT_INV_ram~192_combout\ <= NOT \G17|ram~192_combout\;
\G17|ALT_INV_ram~240_combout\ <= NOT \G17|ram~240_combout\;
\G17|ALT_INV_ram~208_combout\ <= NOT \G17|ram~208_combout\;
\G17|ALT_INV_ram~96_combout\ <= NOT \G17|ram~96_combout\;
\G17|ALT_INV_ram~64_combout\ <= NOT \G17|ram~64_combout\;
\G17|ALT_INV_ram~112_combout\ <= NOT \G17|ram~112_combout\;
\G17|ALT_INV_ram~80_combout\ <= NOT \G17|ram~80_combout\;
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
\G17|ALT_INV_ram~260_combout\ <= NOT \G17|ram~260_combout\;
\G17|ALT_INV_ram~259_combout\ <= NOT \G17|ram~259_combout\;
\G17|ALT_INV_ram~258_combout\ <= NOT \G17|ram~258_combout\;
\G17|ALT_INV_ram~257_combout\ <= NOT \G17|ram~257_combout\;
\G17|ALT_INV_ram~256_combout\ <= NOT \G17|ram~256_combout\;
\G4|ALT_INV_Mux1~0_combout\ <= NOT \G4|Mux1~0_combout\;
\ALT_INV_rtl~16_combout\ <= NOT \rtl~16_combout\;
\ALT_INV_rtl~15_combout\ <= NOT \rtl~15_combout\;
\ALT_INV_rtl~14_combout\ <= NOT \rtl~14_combout\;
\ALT_INV_rtl~13_combout\ <= NOT \rtl~13_combout\;
\ALT_INV_rtl~12_combout\ <= NOT \rtl~12_combout\;
\ALT_INV_rtl~11_combout\ <= NOT \rtl~11_combout\;
\ALT_INV_rtl~10_combout\ <= NOT \rtl~10_combout\;
\ALT_INV_rtl~9_combout\ <= NOT \rtl~9_combout\;
\ALT_INV_rtl~8_combout\ <= NOT \rtl~8_combout\;
\ALT_INV_rtl~7_combout\ <= NOT \rtl~7_combout\;
\ALT_INV_rtl~6_combout\ <= NOT \rtl~6_combout\;
\ALT_INV_rtl~5_combout\ <= NOT \rtl~5_combout\;
\ALT_INV_rtl~4_combout\ <= NOT \rtl~4_combout\;
\ALT_INV_rtl~3_combout\ <= NOT \rtl~3_combout\;
\ALT_INV_rtl~2_combout\ <= NOT \rtl~2_combout\;
\ALT_INV_rtl~1_combout\ <= NOT \rtl~1_combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\G5|ALT_INV_Equal2~0_combout\ <= NOT \G5|Equal2~0_combout\;
\G4|ALT_INV_rd[2]~3_combout\ <= NOT \G4|rd[2]~3_combout\;
\G4|ALT_INV_Mux0~3_combout\ <= NOT \G4|Mux0~3_combout\;
\G4|ALT_INV_Mux0~2_combout\ <= NOT \G4|Mux0~2_combout\;
\G4|ALT_INV_Mux0~1_combout\ <= NOT \G4|Mux0~1_combout\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
\G16|ALT_INV_Mux8~0_combout\ <= NOT \G16|Mux8~0_combout\;
\G16|ALT_INV_Mux9~0_combout\ <= NOT \G16|Mux9~0_combout\;
\G16|ALT_INV_Mux10~0_combout\ <= NOT \G16|Mux10~0_combout\;
\G18|ALT_INV_SAIDA[4]~8_combout\ <= NOT \G18|SAIDA[4]~8_combout\;
\G18|ALT_INV_SAIDA[3]~6_combout\ <= NOT \G18|SAIDA[3]~6_combout\;
\G18|ALT_INV_SAIDA[0]~2_combout\ <= NOT \G18|SAIDA[0]~2_combout\;
\G16|ALT_INV_Mux11~4_combout\ <= NOT \G16|Mux11~4_combout\;
\G4|ALT_INV_tipoi[0]~8_combout\ <= NOT \G4|tipoi[0]~8_combout\;
\G4|ALT_INV_tipoi[0]~reg0_q\ <= NOT \G4|tipoi[0]~reg0_q\;
\G16|ALT_INV_Mux14~1_combout\ <= NOT \G16|Mux14~1_combout\;
\G16|ALT_INV_Mux14~0_combout\ <= NOT \G16|Mux14~0_combout\;
\G4|ALT_INV_tipoi[2]~7_combout\ <= NOT \G4|tipoi[2]~7_combout\;
\G4|ALT_INV_tipoi[2]~reg0_q\ <= NOT \G4|tipoi[2]~reg0_q\;
\G18|ALT_INV_SAIDA[0]~1_combout\ <= NOT \G18|SAIDA[0]~1_combout\;
\G18|ALT_INV_SAIDA[0]~0_combout\ <= NOT \G18|SAIDA[0]~0_combout\;
\G4|ALT_INV_tipoi[3]~6_combout\ <= NOT \G4|tipoi[3]~6_combout\;
\G16|ALT_INV_Mux12~0_combout\ <= NOT \G16|Mux12~0_combout\;
\G16|ALT_INV_Mux11~3_combout\ <= NOT \G16|Mux11~3_combout\;
\G16|ALT_INV_Mux11~2_combout\ <= NOT \G16|Mux11~2_combout\;
\G16|ALT_INV_Mux11~1_combout\ <= NOT \G16|Mux11~1_combout\;
\G4|ALT_INV_tipoi[3]~reg0_q\ <= NOT \G4|tipoi[3]~reg0_q\;
\G4|ALT_INV_tipoi[0]~en_q\ <= NOT \G4|tipoi[0]~en_q\;
\G16|ALT_INV_Mux11~0_combout\ <= NOT \G16|Mux11~0_combout\;
\G4|ALT_INV_funct[0]~reg0_q\ <= NOT \G4|funct[0]~reg0_q\;
\G4|ALT_INV_funct[2]~reg0_q\ <= NOT \G4|funct[2]~reg0_q\;
\G5|ALT_INV_Equal0~0_combout\ <= NOT \G5|Equal0~0_combout\;
\G4|ALT_INV_rs[2]~reg0_q\ <= NOT \G4|rs[2]~reg0_q\;
\G4|ALT_INV_rs[0]~reg0_q\ <= NOT \G4|rs[0]~reg0_q\;
\G4|ALT_INV_op[0]~reg0_q\ <= NOT \G4|op[0]~reg0_q\;
\G4|ALT_INV_op[1]~reg0_q\ <= NOT \G4|op[1]~reg0_q\;
\G7|ALT_INV_Reg~179_combout\ <= NOT \G7|Reg~179_combout\;
\G7|ALT_INV_Reg~51_q\ <= NOT \G7|Reg~51_q\;
\G7|ALT_INV_Reg~178_combout\ <= NOT \G7|Reg~178_combout\;
\G7|ALT_INV_Reg~50_q\ <= NOT \G7|Reg~50_q\;
\G7|ALT_INV_Reg~177_combout\ <= NOT \G7|Reg~177_combout\;
\G7|ALT_INV_Reg~49_q\ <= NOT \G7|Reg~49_q\;
\G7|ALT_INV_Reg~176_combout\ <= NOT \G7|Reg~176_combout\;
\G7|ALT_INV_Reg~48_q\ <= NOT \G7|Reg~48_q\;
\G7|ALT_INV_Reg~175_combout\ <= NOT \G7|Reg~175_combout\;
\G7|ALT_INV_Reg~47_q\ <= NOT \G7|Reg~47_q\;
\G7|ALT_INV_Reg~174_combout\ <= NOT \G7|Reg~174_combout\;
\G7|ALT_INV_Reg~46_q\ <= NOT \G7|Reg~46_q\;
\G7|ALT_INV_Reg~173_combout\ <= NOT \G7|Reg~173_combout\;
\G7|ALT_INV_Reg~45_q\ <= NOT \G7|Reg~45_q\;
\G7|ALT_INV_Reg~172_combout\ <= NOT \G7|Reg~172_combout\;
\G7|ALT_INV_Reg~44_q\ <= NOT \G7|Reg~44_q\;
\G7|ALT_INV_Reg~171_combout\ <= NOT \G7|Reg~171_combout\;
\G7|ALT_INV_Reg~43_q\ <= NOT \G7|Reg~43_q\;
\G7|ALT_INV_Reg~170_combout\ <= NOT \G7|Reg~170_combout\;
\G7|ALT_INV_Reg~42_q\ <= NOT \G7|Reg~42_q\;
\G7|ALT_INV_Reg~169_combout\ <= NOT \G7|Reg~169_combout\;
\G7|ALT_INV_Reg~41_q\ <= NOT \G7|Reg~41_q\;
\G7|ALT_INV_Reg~168_combout\ <= NOT \G7|Reg~168_combout\;
\G7|ALT_INV_Reg~40_q\ <= NOT \G7|Reg~40_q\;
\G7|ALT_INV_Reg~167_combout\ <= NOT \G7|Reg~167_combout\;
\G7|ALT_INV_Reg~39_q\ <= NOT \G7|Reg~39_q\;
\G7|ALT_INV_Reg~166_combout\ <= NOT \G7|Reg~166_combout\;
\G7|ALT_INV_Reg~38_q\ <= NOT \G7|Reg~38_q\;
\G7|ALT_INV_Reg~165_combout\ <= NOT \G7|Reg~165_combout\;
\G7|ALT_INV_Reg~37_q\ <= NOT \G7|Reg~37_q\;
\G7|ALT_INV_Reg~164_combout\ <= NOT \G7|Reg~164_combout\;
\G4|ALT_INV_rt[0]~en_q\ <= NOT \G4|rt[0]~en_q\;
\G4|ALT_INV_rt[0]~reg0_q\ <= NOT \G4|rt[0]~reg0_q\;
\G7|ALT_INV_Reg~36_q\ <= NOT \G7|Reg~36_q\;
\G7|ALT_INV_Reg~163_combout\ <= NOT \G7|Reg~163_combout\;
\G7|ALT_INV_Reg~35_q\ <= NOT \G7|Reg~35_q\;
\G7|ALT_INV_Reg~162_combout\ <= NOT \G7|Reg~162_combout\;
\G7|ALT_INV_Reg~34_q\ <= NOT \G7|Reg~34_q\;
\G7|ALT_INV_Reg~161_combout\ <= NOT \G7|Reg~161_combout\;
\G7|ALT_INV_Reg~33_q\ <= NOT \G7|Reg~33_q\;
\G7|ALT_INV_Reg~160_combout\ <= NOT \G7|Reg~160_combout\;
\G7|ALT_INV_Reg~32_q\ <= NOT \G7|Reg~32_q\;
\G7|ALT_INV_Reg~159_combout\ <= NOT \G7|Reg~159_combout\;
\G7|ALT_INV_Reg~31_q\ <= NOT \G7|Reg~31_q\;
\G7|ALT_INV_Reg~158_combout\ <= NOT \G7|Reg~158_combout\;
\G7|ALT_INV_Reg~30_q\ <= NOT \G7|Reg~30_q\;
\G7|ALT_INV_Reg~157_combout\ <= NOT \G7|Reg~157_combout\;
\G7|ALT_INV_Reg~29_q\ <= NOT \G7|Reg~29_q\;
\G7|ALT_INV_Reg~156_combout\ <= NOT \G7|Reg~156_combout\;
\G7|ALT_INV_Reg~28_q\ <= NOT \G7|Reg~28_q\;
\G7|ALT_INV_Reg~155_combout\ <= NOT \G7|Reg~155_combout\;
\G7|ALT_INV_Reg~27_q\ <= NOT \G7|Reg~27_q\;
\G7|ALT_INV_Reg~154_combout\ <= NOT \G7|Reg~154_combout\;
\G7|ALT_INV_Reg~26_q\ <= NOT \G7|Reg~26_q\;
\G7|ALT_INV_Reg~153_combout\ <= NOT \G7|Reg~153_combout\;
\G7|ALT_INV_Reg~25_q\ <= NOT \G7|Reg~25_q\;
\G7|ALT_INV_Reg~152_combout\ <= NOT \G7|Reg~152_combout\;
\G7|ALT_INV_Reg~24_q\ <= NOT \G7|Reg~24_q\;
\G7|ALT_INV_Reg~151_combout\ <= NOT \G7|Reg~151_combout\;
\G7|ALT_INV_Reg~23_q\ <= NOT \G7|Reg~23_q\;
\G7|ALT_INV_Reg~150_combout\ <= NOT \G7|Reg~150_combout\;
\G7|ALT_INV_Reg~22_q\ <= NOT \G7|Reg~22_q\;
\G7|ALT_INV_Reg~149_combout\ <= NOT \G7|Reg~149_combout\;
\G7|ALT_INV_Reg~21_q\ <= NOT \G7|Reg~21_q\;
\G7|ALT_INV_Reg~148_combout\ <= NOT \G7|Reg~148_combout\;
\G7|ALT_INV_Reg~20_q\ <= NOT \G7|Reg~20_q\;
\G4|ALT_INV_rd[0]~en_q\ <= NOT \G4|rd[0]~en_q\;
\G4|ALT_INV_rd[0]~reg0_q\ <= NOT \G4|rd[0]~reg0_q\;
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
\G16|ALT_INV_Mux12~1_combout\ <= NOT \G16|Mux12~1_combout\;
\G16|ALT_INV_Mux13~0_combout\ <= NOT \G16|Mux13~0_combout\;
\G16|ALT_INV_Mux15~0_combout\ <= NOT \G16|Mux15~0_combout\;
\G17|ALT_INV_ram~524_combout\ <= NOT \G17|ram~524_combout\;
\G17|ALT_INV_ram~520_combout\ <= NOT \G17|ram~520_combout\;
\G17|ALT_INV_ram~516_combout\ <= NOT \G17|ram~516_combout\;
\G17|ALT_INV_ram~512_combout\ <= NOT \G17|ram~512_combout\;
\G17|ALT_INV_ram~508_combout\ <= NOT \G17|ram~508_combout\;
\G17|ALT_INV_ram~504_combout\ <= NOT \G17|ram~504_combout\;
\G17|ALT_INV_ram~500_combout\ <= NOT \G17|ram~500_combout\;
\G17|ALT_INV_ram~496_combout\ <= NOT \G17|ram~496_combout\;
\G17|ALT_INV_ram~492_combout\ <= NOT \G17|ram~492_combout\;
\G17|ALT_INV_ram~488_combout\ <= NOT \G17|ram~488_combout\;
\G17|ALT_INV_ram~484_combout\ <= NOT \G17|ram~484_combout\;
\G17|ALT_INV_ram~480_combout\ <= NOT \G17|ram~480_combout\;
\G17|ALT_INV_ram~476_combout\ <= NOT \G17|ram~476_combout\;
\G17|ALT_INV_ram~472_combout\ <= NOT \G17|ram~472_combout\;
\G17|ALT_INV_ram~468_combout\ <= NOT \G17|ram~468_combout\;
\G17|ALT_INV_ram~464_combout\ <= NOT \G17|ram~464_combout\;
\G17|ALT_INV_ram~460_combout\ <= NOT \G17|ram~460_combout\;
\G17|ALT_INV_ram~456_combout\ <= NOT \G17|ram~456_combout\;
\G17|ALT_INV_ram~452_combout\ <= NOT \G17|ram~452_combout\;
\G17|ALT_INV_ram~448_combout\ <= NOT \G17|ram~448_combout\;
\G17|ALT_INV_ram~444_combout\ <= NOT \G17|ram~444_combout\;
\G17|ALT_INV_ram~440_combout\ <= NOT \G17|ram~440_combout\;
\G17|ALT_INV_ram~436_combout\ <= NOT \G17|ram~436_combout\;
\G17|ALT_INV_ram~432_combout\ <= NOT \G17|ram~432_combout\;
\G17|ALT_INV_ram~428_combout\ <= NOT \G17|ram~428_combout\;
\G17|ALT_INV_ram~424_combout\ <= NOT \G17|ram~424_combout\;
\G17|ALT_INV_ram~420_combout\ <= NOT \G17|ram~420_combout\;
\G17|ALT_INV_ram~416_combout\ <= NOT \G17|ram~416_combout\;
\G17|ALT_INV_ram~412_combout\ <= NOT \G17|ram~412_combout\;
\G17|ALT_INV_ram~408_combout\ <= NOT \G17|ram~408_combout\;
\G17|ALT_INV_ram~404_combout\ <= NOT \G17|ram~404_combout\;
\G17|ALT_INV_ram~400_combout\ <= NOT \G17|ram~400_combout\;
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
\G16|ALT_INV_Add0~25_sumout\ <= NOT \G16|Add0~25_sumout\;
\G16|ALT_INV_Add1~25_sumout\ <= NOT \G16|Add1~25_sumout\;
\G16|ALT_INV_Add0~21_sumout\ <= NOT \G16|Add0~21_sumout\;
\G16|ALT_INV_Add1~21_sumout\ <= NOT \G16|Add1~21_sumout\;
\G17|ALT_INV_ram~396_combout\ <= NOT \G17|ram~396_combout\;
\G17|ALT_INV_ram~392_combout\ <= NOT \G17|ram~392_combout\;
\G17|ALT_INV_ram~388_combout\ <= NOT \G17|ram~388_combout\;
\G17|ALT_INV_ram~384_combout\ <= NOT \G17|ram~384_combout\;
\G17|ALT_INV_ram~380_combout\ <= NOT \G17|ram~380_combout\;
\G17|ALT_INV_ram~376_combout\ <= NOT \G17|ram~376_combout\;
\G17|ALT_INV_ram~372_combout\ <= NOT \G17|ram~372_combout\;
\G17|ALT_INV_ram~368_combout\ <= NOT \G17|ram~368_combout\;
\G17|ALT_INV_ram~364_combout\ <= NOT \G17|ram~364_combout\;
\G17|ALT_INV_ram~360_combout\ <= NOT \G17|ram~360_combout\;
\G17|ALT_INV_ram~356_combout\ <= NOT \G17|ram~356_combout\;
\G17|ALT_INV_ram~352_combout\ <= NOT \G17|ram~352_combout\;
\G17|ALT_INV_ram~348_combout\ <= NOT \G17|ram~348_combout\;
\G17|ALT_INV_ram~344_combout\ <= NOT \G17|ram~344_combout\;
\G17|ALT_INV_ram~340_combout\ <= NOT \G17|ram~340_combout\;
\G17|ALT_INV_ram~336_combout\ <= NOT \G17|ram~336_combout\;
\G17|ALT_INV_ram~332_combout\ <= NOT \G17|ram~332_combout\;
\G17|ALT_INV_ram~328_combout\ <= NOT \G17|ram~328_combout\;
\G17|ALT_INV_ram~324_combout\ <= NOT \G17|ram~324_combout\;
\G17|ALT_INV_ram~320_combout\ <= NOT \G17|ram~320_combout\;
\G17|ALT_INV_ram~316_combout\ <= NOT \G17|ram~316_combout\;
\G17|ALT_INV_ram~312_combout\ <= NOT \G17|ram~312_combout\;
\G17|ALT_INV_ram~308_combout\ <= NOT \G17|ram~308_combout\;
\G17|ALT_INV_ram~304_combout\ <= NOT \G17|ram~304_combout\;
\G17|ALT_INV_ram~300_combout\ <= NOT \G17|ram~300_combout\;
\G17|ALT_INV_ram~296_combout\ <= NOT \G17|ram~296_combout\;
\G17|ALT_INV_ram~292_combout\ <= NOT \G17|ram~292_combout\;
\G17|ALT_INV_ram~288_combout\ <= NOT \G17|ram~288_combout\;
\G17|ALT_INV_ram~284_combout\ <= NOT \G17|ram~284_combout\;
\G17|ALT_INV_ram~280_combout\ <= NOT \G17|ram~280_combout\;
\G16|ALT_INV_Add1~17_sumout\ <= NOT \G16|Add1~17_sumout\;
\G16|ALT_INV_Add0~17_sumout\ <= NOT \G16|Add0~17_sumout\;
\G16|ALT_INV_Add1~13_sumout\ <= NOT \G16|Add1~13_sumout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G16|ALT_INV_Add1~9_sumout\ <= NOT \G16|Add1~9_sumout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G17|ALT_INV_ram~276_combout\ <= NOT \G17|ram~276_combout\;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G16|ALT_INV_Add1~5_sumout\ <= NOT \G16|Add1~5_sumout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
\G16|ALT_INV_Add1~1_sumout\ <= NOT \G16|Add1~1_sumout\;
\G17|ALT_INV_ram~272_combout\ <= NOT \G17|ram~272_combout\;
\G2|ALT_INV_Add0~53_sumout\ <= NOT \G2|Add0~53_sumout\;
\G2|ALT_INV_Add0~49_sumout\ <= NOT \G2|Add0~49_sumout\;
\G2|ALT_INV_Add0~45_sumout\ <= NOT \G2|Add0~45_sumout\;
\G2|ALT_INV_Add0~41_sumout\ <= NOT \G2|Add0~41_sumout\;
\G2|ALT_INV_Add0~37_sumout\ <= NOT \G2|Add0~37_sumout\;
\G2|ALT_INV_Add0~33_sumout\ <= NOT \G2|Add0~33_sumout\;
\G2|ALT_INV_Add0~29_sumout\ <= NOT \G2|Add0~29_sumout\;
\G2|ALT_INV_Add0~25_sumout\ <= NOT \G2|Add0~25_sumout\;
\G2|ALT_INV_Add0~21_sumout\ <= NOT \G2|Add0~21_sumout\;
\G2|ALT_INV_Add0~17_sumout\ <= NOT \G2|Add0~17_sumout\;
\G2|ALT_INV_Add0~13_sumout\ <= NOT \G2|Add0~13_sumout\;
\G2|ALT_INV_Add0~9_sumout\ <= NOT \G2|Add0~9_sumout\;
\G2|ALT_INV_Add0~5_sumout\ <= NOT \G2|Add0~5_sumout\;
\G2|ALT_INV_Add0~1_sumout\ <= NOT \G2|Add0~1_sumout\;

-- Location: IOOBUF_X32_Y81_N19
\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[0]~reg0_q\,
	oe => \G4|rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(0));

-- Location: IOOBUF_X40_Y81_N36
\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[1]~reg0_q\,
	oe => \G4|rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(1));

-- Location: IOOBUF_X32_Y0_N36
\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~reg0_q\,
	oe => \G4|rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(2));

-- Location: IOOBUF_X54_Y0_N36
\Instruction_to_Control_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[0]~reg0_q\,
	oe => \G4|rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(0));

-- Location: IOOBUF_X40_Y81_N2
\Instruction_to_Control_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[1]~reg0_q\,
	oe => \G4|rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(1));

-- Location: IOOBUF_X62_Y81_N53
\Instruction_to_Control_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(2));

-- Location: IOOBUF_X60_Y81_N2
\Instruction_to_Control_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(3));

-- Location: IOOBUF_X6_Y0_N36
\Instruction_to_register1_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~reg0_q\,
	oe => \G4|rd[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(0));

-- Location: IOOBUF_X6_Y0_N53
\Instruction_to_register1_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~reg0_q\,
	oe => \G4|rd[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(1));

-- Location: IOOBUF_X38_Y0_N36
\Instruction_to_register1_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rd[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(2));

-- Location: IOOBUF_X32_Y0_N53
\Instruction_to_register2_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~reg0_q\,
	oe => \G4|rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(0));

-- Location: IOOBUF_X76_Y81_N19
\Instruction_to_register2_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(1));

-- Location: IOOBUF_X68_Y81_N36
\Instruction_to_register2_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(2));

-- Location: IOOBUF_X36_Y0_N19
\Instruction_to_controlULA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|funct[0]~reg0_q\,
	oe => \G4|rd[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(0));

-- Location: IOOBUF_X38_Y0_N53
\Instruction_to_controlULA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rd[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(1));

-- Location: IOOBUF_X36_Y0_N2
\Instruction_to_controlULA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|funct[2]~reg0_q\,
	oe => \G4|rd[0]~en_q\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(2));

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X86_Y81_N2
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

-- Location: IOOBUF_X89_Y8_N22
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

-- Location: IOOBUF_X30_Y81_N36
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

-- Location: IOOBUF_X30_Y81_N2
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

-- Location: IOOBUF_X86_Y81_N53
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

-- Location: IOOBUF_X70_Y81_N19
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

-- Location: IOOBUF_X88_Y81_N20
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

-- Location: IOOBUF_X84_Y81_N2
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

-- Location: IOOBUF_X89_Y38_N56
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

-- Location: IOOBUF_X89_Y36_N22
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

-- Location: IOOBUF_X84_Y81_N53
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

-- Location: IOOBUF_X34_Y81_N42
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X89_Y37_N56
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

-- Location: IOOBUF_X74_Y81_N59
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

-- Location: IOOBUF_X70_Y81_N53
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

-- Location: IOOBUF_X86_Y81_N19
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

-- Location: IOOBUF_X52_Y0_N19
\SomadorToPc_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(0));

-- Location: IOOBUF_X58_Y0_N42
\SomadorToPc_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(1));

-- Location: IOOBUF_X68_Y0_N53
\SomadorToPc_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(2));

-- Location: IOOBUF_X52_Y81_N19
\SomadorToPc_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(3));

-- Location: IOOBUF_X60_Y0_N36
\SomadorToPc_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(4));

-- Location: IOOBUF_X58_Y81_N42
\SomadorToPc_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(5));

-- Location: IOOBUF_X56_Y81_N36
\SomadorToPc_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(6));

-- Location: IOOBUF_X62_Y0_N36
\SomadorToPc_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(7));

-- Location: IOOBUF_X54_Y81_N53
\SomadorToPc_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(8));

-- Location: IOOBUF_X58_Y81_N59
\SomadorToPc_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(9));

-- Location: IOOBUF_X89_Y35_N79
\SomadorToPc_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(10));

-- Location: IOOBUF_X64_Y0_N53
\SomadorToPc_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(11));

-- Location: IOOBUF_X89_Y4_N62
\SomadorToPc_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(12));

-- Location: IOOBUF_X60_Y81_N36
\SomadorToPc_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(13));

-- Location: IOOBUF_X89_Y4_N96
\SomadorToPc_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(14));

-- Location: IOOBUF_X68_Y0_N36
\SomadorToPc_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(15));

-- Location: IOOBUF_X54_Y0_N19
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

-- Location: IOOBUF_X50_Y0_N76
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

-- Location: IOOBUF_X89_Y6_N22
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X56_Y0_N36
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

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X62_Y0_N19
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X56_Y0_N53
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

-- Location: IOOBUF_X56_Y0_N19
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X54_Y0_N2
\SaidaPc_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout[15]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SaidaPc_outWaveform(15));

-- Location: IOOBUF_X89_Y6_N39
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

-- Location: IOOBUF_X4_Y0_N53
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X2_Y0_N76
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X2_Y0_N93
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

-- Location: IOOBUF_X89_Y8_N56
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X89_Y9_N39
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

-- Location: IOOBUF_X89_Y6_N5
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

-- Location: IOOBUF_X68_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X6_Y0_N19
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

-- Location: IOOBUF_X8_Y0_N53
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

-- Location: IOOBUF_X8_Y0_N2
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

-- Location: IOOBUF_X8_Y0_N36
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X28_Y0_N19
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

-- Location: IOOBUF_X28_Y0_N53
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

-- Location: IOOBUF_X26_Y0_N59
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

-- Location: IOOBUF_X6_Y0_N2
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

-- Location: IOOBUF_X4_Y0_N36
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

-- Location: IOOBUF_X30_Y0_N36
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

-- Location: IOOBUF_X4_Y0_N2
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

-- Location: IOOBUF_X32_Y0_N19
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

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X30_Y0_N53
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

-- Location: IOOBUF_X30_Y0_N19
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

-- Location: IOOBUF_X32_Y81_N2
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

-- Location: IOOBUF_X60_Y81_N19
\multiplexador_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rt[0]~en_q\,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X40_Y0_N19
\multiplexador_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|SAIDA[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X34_Y0_N93
\Data_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X72_Y0_N19
\Data_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X28_Y81_N2
\Data_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[2]~5_combout\,
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
	i => \G18|SAIDA[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(3));

-- Location: IOOBUF_X26_Y81_N42
\Data_to_writeRegister_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(4));

-- Location: IOOBUF_X40_Y0_N53
\Data_to_writeRegister_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[5]~10_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(5));

-- Location: IOOBUF_X34_Y0_N59
\Data_to_writeRegister_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[6]~11_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(6));

-- Location: IOOBUF_X34_Y0_N42
\Data_to_writeRegister_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[7]~12_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(7));

-- Location: IOOBUF_X4_Y0_N19
\Data_to_writeRegister_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[8]~13_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(8));

-- Location: IOOBUF_X2_Y0_N42
\Data_to_writeRegister_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[9]~14_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(9));

-- Location: IOOBUF_X30_Y81_N53
\Data_to_writeRegister_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[10]~15_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(10));

-- Location: IOOBUF_X26_Y81_N93
\Data_to_writeRegister_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[11]~16_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(11));

-- Location: IOOBUF_X32_Y81_N36
\Data_to_writeRegister_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[12]~17_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(12));

-- Location: IOOBUF_X26_Y81_N76
\Data_to_writeRegister_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[13]~18_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(13));

-- Location: IOOBUF_X89_Y35_N96
\Data_to_writeRegister_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[14]~19_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(14));

-- Location: IOOBUF_X32_Y0_N2
\Data_to_writeRegister_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[15]~20_combout\,
	devoe => ww_devoe,
	o => ww_Data_to_writeRegister_outWaveform(15));

-- Location: IOOBUF_X52_Y0_N2
\Saida_mult_to_mult_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(0));

-- Location: IOOBUF_X58_Y0_N59
\Saida_mult_to_mult_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(1));

-- Location: IOOBUF_X68_Y0_N2
\Saida_mult_to_mult_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(2));

-- Location: IOOBUF_X52_Y81_N2
\Saida_mult_to_mult_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(3));

-- Location: IOOBUF_X60_Y0_N53
\Saida_mult_to_mult_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(4));

-- Location: IOOBUF_X58_Y81_N76
\Saida_mult_to_mult_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(5));

-- Location: IOOBUF_X56_Y81_N2
\Saida_mult_to_mult_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(6));

-- Location: IOOBUF_X62_Y0_N2
\Saida_mult_to_mult_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(7));

-- Location: IOOBUF_X56_Y81_N19
\Saida_mult_to_mult_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(8));

-- Location: IOOBUF_X58_Y81_N93
\Saida_mult_to_mult_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(9));

-- Location: IOOBUF_X89_Y35_N45
\Saida_mult_to_mult_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(10));

-- Location: IOOBUF_X64_Y0_N19
\Saida_mult_to_mult_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(11));

-- Location: IOOBUF_X89_Y4_N45
\Saida_mult_to_mult_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(12));

-- Location: IOOBUF_X60_Y81_N53
\Saida_mult_to_mult_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(13));

-- Location: IOOBUF_X89_Y4_N79
\Saida_mult_to_mult_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(14));

-- Location: IOOBUF_X70_Y0_N19
\Saida_mult_to_mult_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_mult_to_mult_outWaveform(15));

-- Location: IOOBUF_X50_Y0_N42
\Saida_to_PC_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(0));

-- Location: IOOBUF_X50_Y0_N93
\Saida_to_PC_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(1));

-- Location: IOOBUF_X62_Y81_N2
\Saida_to_PC_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(2));

-- Location: IOOBUF_X50_Y0_N59
\Saida_to_PC_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(3));

-- Location: IOOBUF_X70_Y0_N36
\Saida_to_PC_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(4));

-- Location: IOOBUF_X66_Y0_N76
\Saida_to_PC_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(5));

-- Location: IOOBUF_X62_Y0_N53
\Saida_to_PC_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(6));

-- Location: IOOBUF_X66_Y0_N59
\Saida_to_PC_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(7));

-- Location: IOOBUF_X54_Y0_N53
\Saida_to_PC_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(8));

-- Location: IOOBUF_X64_Y0_N36
\Saida_to_PC_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[9]~9_combout\,
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
	i => \G13|SAIDA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(10));

-- Location: IOOBUF_X64_Y0_N2
\Saida_to_PC_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(11));

-- Location: IOOBUF_X56_Y81_N53
\Saida_to_PC_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(12));

-- Location: IOOBUF_X70_Y0_N53
\Saida_to_PC_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(13));

-- Location: IOOBUF_X72_Y0_N36
\Saida_to_PC_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(14));

-- Location: IOOBUF_X70_Y0_N2
\Saida_to_PC_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_Saida_to_PC_outWaveform(15));

-- Location: IOOBUF_X26_Y0_N93
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

-- Location: IOOBUF_X26_Y0_N42
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

-- Location: IOOBUF_X26_Y0_N76
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

-- Location: IOOBUF_X28_Y0_N36
\Saida_adress_to_RAM_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux12~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(3));

-- Location: IOOBUF_X89_Y9_N22
\Saida_adress_to_RAM_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux11~4_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(4));

-- Location: IOOBUF_X34_Y81_N76
\Saida_adress_to_RAM_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(5));

-- Location: IOOBUF_X26_Y81_N59
\Saida_adress_to_RAM_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux9~1_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(6));

-- Location: IOOBUF_X30_Y81_N19
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X89_Y9_N5
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X38_Y81_N2
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

-- Location: IOOBUF_X28_Y81_N19
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

-- Location: IOOBUF_X28_Y81_N36
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

-- Location: IOOBUF_X34_Y81_N59
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

-- Location: IOOBUF_X32_Y81_N53
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

-- Location: LABCELL_X16_Y7_N3
\G4|rt[0]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[0]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \G4|rt[0]~enfeeder_combout\);

-- Location: FF_X16_Y7_N5
\G4|rt[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|rt[0]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rt[0]~en_q\);

-- Location: LABCELL_X56_Y4_N0
\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(0) ) + ( VCC ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(0),
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

-- Location: LABCELL_X56_Y4_N3
\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(1) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(1) ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(1),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

-- Location: LABCELL_X50_Y4_N21
\G13|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[1]~1_combout\ = ( \G4|rt[0]~en_q\ & ( \G2|Add0~5_sumout\ & ( (!\G4|op[0]~reg0_q\) # (!\G4|op[1]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~reg0_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datae => \G4|ALT_INV_rt[0]~en_q\,
	dataf => \G2|ALT_INV_Add0~5_sumout\,
	combout => \G13|SAIDA[1]~1_combout\);

-- Location: FF_X50_Y4_N23
\G1|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(1));

-- Location: LABCELL_X56_Y4_N6
\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(2),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);

-- Location: LABCELL_X57_Y4_N48
\G13|SAIDA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[2]~2_combout\ = ( \G4|op[0]~reg0_q\ & ( (!\G4|rt[0]~en_q\) # ((\G2|Add0~9_sumout\) # (\G4|op[1]~reg0_q\)) ) ) # ( !\G4|op[0]~reg0_q\ & ( (!\G4|rt[0]~en_q\) # (\G2|Add0~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datab => \G4|ALT_INV_op[1]~reg0_q\,
	datad => \G2|ALT_INV_Add0~9_sumout\,
	dataf => \G4|ALT_INV_op[0]~reg0_q\,
	combout => \G13|SAIDA[2]~2_combout\);

-- Location: FF_X57_Y4_N50
\G1|pout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(2));

-- Location: LABCELL_X56_Y4_N9
\G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~13_sumout\ = SUM(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~10\ ))
-- \G2|Add0~14\ = CARRY(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(3),
	cin => \G2|Add0~10\,
	sumout => \G2|Add0~13_sumout\,
	cout => \G2|Add0~14\);

-- Location: LABCELL_X56_Y4_N12
\G2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~17_sumout\ = SUM(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~14\ ))
-- \G2|Add0~18\ = CARRY(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(4),
	cin => \G2|Add0~14\,
	sumout => \G2|Add0~17_sumout\,
	cout => \G2|Add0~18\);

-- Location: LABCELL_X57_Y4_N21
\G13|SAIDA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[4]~4_combout\ = ( \G4|op[0]~reg0_q\ & ( \G2|Add0~17_sumout\ ) ) # ( !\G4|op[0]~reg0_q\ & ( \G2|Add0~17_sumout\ ) ) # ( \G4|op[0]~reg0_q\ & ( !\G2|Add0~17_sumout\ & ( (!\G4|rt[0]~en_q\) # (\G4|op[1]~reg0_q\) ) ) ) # ( !\G4|op[0]~reg0_q\ & ( 
-- !\G2|Add0~17_sumout\ & ( !\G4|rt[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datae => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G2|ALT_INV_Add0~17_sumout\,
	combout => \G13|SAIDA[4]~4_combout\);

-- Location: FF_X57_Y4_N23
\G1|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(4));

-- Location: LABCELL_X56_Y4_N15
\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(5),
	cin => \G2|Add0~18\,
	sumout => \G2|Add0~21_sumout\,
	cout => \G2|Add0~22\);

-- Location: LABCELL_X57_Y4_N36
\G13|SAIDA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[5]~5_combout\ = ( \G4|op[0]~reg0_q\ & ( \G2|Add0~21_sumout\ ) ) # ( !\G4|op[0]~reg0_q\ & ( \G2|Add0~21_sumout\ ) ) # ( \G4|op[0]~reg0_q\ & ( !\G2|Add0~21_sumout\ & ( (!\G4|rt[0]~en_q\) # (\G4|op[1]~reg0_q\) ) ) ) # ( !\G4|op[0]~reg0_q\ & ( 
-- !\G2|Add0~21_sumout\ & ( !\G4|rt[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_op[1]~reg0_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datae => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G2|ALT_INV_Add0~21_sumout\,
	combout => \G13|SAIDA[5]~5_combout\);

-- Location: FF_X57_Y4_N38
\G1|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(5));

-- Location: LABCELL_X56_Y4_N18
\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(6),
	cin => \G2|Add0~22\,
	sumout => \G2|Add0~25_sumout\,
	cout => \G2|Add0~26\);

-- Location: LABCELL_X57_Y4_N57
\G13|SAIDA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[6]~6_combout\ = ( \G4|op[0]~reg0_q\ & ( \G2|Add0~25_sumout\ ) ) # ( !\G4|op[0]~reg0_q\ & ( \G2|Add0~25_sumout\ ) ) # ( \G4|op[0]~reg0_q\ & ( !\G2|Add0~25_sumout\ & ( (!\G4|rt[0]~en_q\) # (\G4|op[1]~reg0_q\) ) ) ) # ( !\G4|op[0]~reg0_q\ & ( 
-- !\G2|Add0~25_sumout\ & ( !\G4|rt[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datae => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G2|ALT_INV_Add0~25_sumout\,
	combout => \G13|SAIDA[6]~6_combout\);

-- Location: FF_X57_Y4_N59
\G1|pout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(6));

-- Location: LABCELL_X56_Y4_N21
\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(7),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);

-- Location: LABCELL_X57_Y4_N0
\G13|SAIDA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[7]~7_combout\ = ( \G2|Add0~29_sumout\ & ( \G4|op[1]~reg0_q\ ) ) # ( !\G2|Add0~29_sumout\ & ( \G4|op[1]~reg0_q\ & ( (!\G4|rt[0]~en_q\) # (\G4|op[0]~reg0_q\) ) ) ) # ( \G2|Add0~29_sumout\ & ( !\G4|op[1]~reg0_q\ ) ) # ( !\G2|Add0~29_sumout\ & ( 
-- !\G4|op[1]~reg0_q\ & ( !\G4|rt[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_op[0]~reg0_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datae => \G2|ALT_INV_Add0~29_sumout\,
	dataf => \G4|ALT_INV_op[1]~reg0_q\,
	combout => \G13|SAIDA[7]~7_combout\);

-- Location: FF_X57_Y4_N2
\G1|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(7));

-- Location: LABCELL_X56_Y4_N24
\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(8),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

-- Location: LABCELL_X57_Y4_N45
\G13|SAIDA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[8]~8_combout\ = ( \G4|op[0]~reg0_q\ & ( \G2|Add0~33_sumout\ ) ) # ( !\G4|op[0]~reg0_q\ & ( \G2|Add0~33_sumout\ ) ) # ( \G4|op[0]~reg0_q\ & ( !\G2|Add0~33_sumout\ & ( (!\G4|rt[0]~en_q\) # (\G4|op[1]~reg0_q\) ) ) ) # ( !\G4|op[0]~reg0_q\ & ( 
-- !\G2|Add0~33_sumout\ & ( !\G4|rt[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datae => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G2|ALT_INV_Add0~33_sumout\,
	combout => \G13|SAIDA[8]~8_combout\);

-- Location: FF_X57_Y4_N47
\G1|pout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(8));

-- Location: LABCELL_X56_Y4_N27
\G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~37_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~34\ ))
-- \G2|Add0~38\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~34\,
	sumout => \G2|Add0~37_sumout\,
	cout => \G2|Add0~38\);

-- Location: LABCELL_X57_Y4_N12
\G13|SAIDA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[9]~9_combout\ = ( \G4|op[1]~reg0_q\ & ( (!\G4|rt[0]~en_q\) # ((\G2|Add0~37_sumout\) # (\G4|op[0]~reg0_q\)) ) ) # ( !\G4|op[1]~reg0_q\ & ( (!\G4|rt[0]~en_q\) # (\G2|Add0~37_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datab => \G4|ALT_INV_op[0]~reg0_q\,
	datac => \G2|ALT_INV_Add0~37_sumout\,
	dataf => \G4|ALT_INV_op[1]~reg0_q\,
	combout => \G13|SAIDA[9]~9_combout\);

-- Location: FF_X57_Y4_N14
\G1|pout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(9));

-- Location: LABCELL_X56_Y4_N54
\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = ( !\G1|pout\(5) & ( !\G1|pout\(8) & ( (!\G1|pout\(7) & (!\G1|pout\(9) & (!\G1|pout\(4) & !\G1|pout\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(7),
	datab => \G1|ALT_INV_pout\(9),
	datac => \G1|ALT_INV_pout\(4),
	datad => \G1|ALT_INV_pout\(6),
	datae => \G1|ALT_INV_pout\(5),
	dataf => \G1|ALT_INV_pout\(8),
	combout => \G4|Mux0~0_combout\);

-- Location: LABCELL_X56_Y4_N30
\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(10),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

-- Location: LABCELL_X57_Y4_N33
\G13|SAIDA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[10]~10_combout\ = ( \G4|op[0]~reg0_q\ & ( \G2|Add0~41_sumout\ ) ) # ( !\G4|op[0]~reg0_q\ & ( \G2|Add0~41_sumout\ ) ) # ( \G4|op[0]~reg0_q\ & ( !\G2|Add0~41_sumout\ & ( (!\G4|rt[0]~en_q\) # (\G4|op[1]~reg0_q\) ) ) ) # ( !\G4|op[0]~reg0_q\ & ( 
-- !\G2|Add0~41_sumout\ & ( !\G4|rt[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datae => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G2|ALT_INV_Add0~41_sumout\,
	combout => \G13|SAIDA[10]~10_combout\);

-- Location: FF_X57_Y4_N35
\G1|pout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(10));

-- Location: LABCELL_X56_Y4_N33
\G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~45_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~42\ ))
-- \G2|Add0~46\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~42\,
	sumout => \G2|Add0~45_sumout\,
	cout => \G2|Add0~46\);

-- Location: LABCELL_X57_Y4_N24
\G13|SAIDA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[11]~11_combout\ = ( \G2|Add0~45_sumout\ & ( \G4|op[1]~reg0_q\ ) ) # ( !\G2|Add0~45_sumout\ & ( \G4|op[1]~reg0_q\ & ( (!\G4|rt[0]~en_q\) # (\G4|op[0]~reg0_q\) ) ) ) # ( \G2|Add0~45_sumout\ & ( !\G4|op[1]~reg0_q\ ) ) # ( !\G2|Add0~45_sumout\ & ( 
-- !\G4|op[1]~reg0_q\ & ( !\G4|rt[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_op[0]~reg0_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datae => \G2|ALT_INV_Add0~45_sumout\,
	dataf => \G4|ALT_INV_op[1]~reg0_q\,
	combout => \G13|SAIDA[11]~11_combout\);

-- Location: FF_X57_Y4_N26
\G1|pout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(11));

-- Location: LABCELL_X56_Y4_N36
\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~46\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(12),
	cin => \G2|Add0~46\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

-- Location: LABCELL_X57_Y4_N51
\G13|SAIDA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[12]~12_combout\ = ( \G2|Add0~49_sumout\ ) # ( !\G2|Add0~49_sumout\ & ( (!\G4|rt[0]~en_q\) # ((\G4|op[1]~reg0_q\ & \G4|op[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datab => \G4|ALT_INV_op[1]~reg0_q\,
	datac => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G2|ALT_INV_Add0~49_sumout\,
	combout => \G13|SAIDA[12]~12_combout\);

-- Location: FF_X57_Y4_N53
\G1|pout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(12));

-- Location: LABCELL_X56_Y4_N39
\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(13),
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

-- Location: LABCELL_X57_Y4_N6
\G13|SAIDA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[13]~13_combout\ = ( \G4|op[0]~reg0_q\ & ( \G2|Add0~53_sumout\ ) ) # ( !\G4|op[0]~reg0_q\ & ( \G2|Add0~53_sumout\ ) ) # ( \G4|op[0]~reg0_q\ & ( !\G2|Add0~53_sumout\ & ( (!\G4|rt[0]~en_q\) # (\G4|op[1]~reg0_q\) ) ) ) # ( !\G4|op[0]~reg0_q\ & ( 
-- !\G2|Add0~53_sumout\ & ( !\G4|rt[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_op[1]~reg0_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datae => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G2|ALT_INV_Add0~53_sumout\,
	combout => \G13|SAIDA[13]~13_combout\);

-- Location: FF_X57_Y4_N8
\G1|pout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(13));

-- Location: LABCELL_X56_Y4_N42
\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~54\ ))
-- \G2|Add0~58\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~54\,
	sumout => \G2|Add0~57_sumout\,
	cout => \G2|Add0~58\);

-- Location: FF_X56_Y4_N53
\G1|pout[14]\ : dffeas
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
	q => \G1|pout\(14));

-- Location: FF_X56_Y4_N58
\G1|pout[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~61_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout[15]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N45
\G2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~61_sumout\ = SUM(( \G1|pout[15]~DUPLICATE_q\ ) + ( GND ) + ( \G2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout[15]~DUPLICATE_q\,
	cin => \G2|Add0~58\,
	sumout => \G2|Add0~61_sumout\);

-- Location: FF_X56_Y4_N59
\G1|pout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|Add0~61_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(15));

-- Location: LABCELL_X56_Y4_N48
\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( !\G1|pout\(13) & ( !\G1|pout\(10) & ( (!\G1|pout\(14) & (!\G1|pout\(15) & (!\G1|pout\(12) & !\G1|pout\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(14),
	datab => \G1|ALT_INV_pout\(15),
	datac => \G1|ALT_INV_pout\(12),
	datad => \G1|ALT_INV_pout\(11),
	datae => \G1|ALT_INV_pout\(13),
	dataf => \G1|ALT_INV_pout\(10),
	combout => \G4|Mux0~1_combout\);

-- Location: LABCELL_X16_Y6_N51
\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (\G1|pout\(0) & (!\G1|pout\(2) & (\G1|pout\(1) & !\G1|pout\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(1),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux0~3_combout\);

-- Location: FF_X16_Y6_N38
\G4|op[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|op[1]~reg0_q\);

-- Location: LABCELL_X50_Y4_N39
\G13|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[0]~0_combout\ = ( \G4|rt[0]~en_q\ & ( \G2|Add0~1_sumout\ & ( (!\G4|op[0]~reg0_q\) # (!\G4|op[1]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~reg0_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datae => \G4|ALT_INV_rt[0]~en_q\,
	dataf => \G2|ALT_INV_Add0~1_sumout\,
	combout => \G13|SAIDA[0]~0_combout\);

-- Location: FF_X50_Y4_N41
\G1|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(0));

-- Location: LABCELL_X16_Y6_N3
\G4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~0_combout\ = ( \G1|pout\(1) & ( \G4|Mux0~1_combout\ & ( (\G4|Mux0~0_combout\ & (!\G1|pout\(3) & (!\G1|pout\(0) $ (!\G1|pout\(2))))) ) ) ) # ( !\G1|pout\(1) & ( \G4|Mux0~1_combout\ & ( (\G4|Mux0~0_combout\ & !\G1|pout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G1|ALT_INV_pout\(3),
	datae => \G1|ALT_INV_pout\(1),
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux1~0_combout\);

-- Location: FF_X16_Y6_N2
\G4|op[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|op[0]~reg0_q\);

-- Location: LABCELL_X50_Y4_N51
\G13|SAIDA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[3]~3_combout\ = ( \G4|rt[0]~en_q\ & ( \G2|Add0~13_sumout\ ) ) # ( !\G4|rt[0]~en_q\ & ( \G2|Add0~13_sumout\ ) ) # ( \G4|rt[0]~en_q\ & ( !\G2|Add0~13_sumout\ & ( (\G4|op[0]~reg0_q\ & \G4|op[1]~reg0_q\) ) ) ) # ( !\G4|rt[0]~en_q\ & ( 
-- !\G2|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~reg0_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datae => \G4|ALT_INV_rt[0]~en_q\,
	dataf => \G2|ALT_INV_Add0~13_sumout\,
	combout => \G13|SAIDA[3]~3_combout\);

-- Location: FF_X50_Y4_N53
\G1|pout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G13|SAIDA[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(3));

-- Location: MLABCELL_X21_Y6_N21
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

-- Location: MLABCELL_X21_Y6_N12
\G4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux4~0_combout\ = ( \G4|Mux0~2_combout\ & ( !\G1|pout\(2) & ( (!\G1|pout\(3) & \G1|pout\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(3),
	datac => \G1|ALT_INV_pout\(0),
	datae => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G4|Mux4~0_combout\);

-- Location: FF_X21_Y6_N13
\G4|rs[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rs[0]~reg0_q\);

-- Location: MLABCELL_X21_Y6_N18
\G4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux3~0_combout\ = ( \G1|pout\(2) & ( (\G4|Mux0~2_combout\ & (!\G1|pout\(0) & !\G1|pout\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G1|ALT_INV_pout\(0),
	datad => \G1|ALT_INV_pout\(3),
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G4|Mux3~0_combout\);

-- Location: FF_X21_Y6_N19
\G4|rs[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rs[2]~reg0_q\);

-- Location: MLABCELL_X21_Y6_N39
\G4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux5~0_combout\ = ( \G4|Mux0~2_combout\ & ( !\G1|pout\(2) & ( (\G1|pout\(1) & (!\G1|pout\(3) & !\G1|pout\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(1),
	datab => \G1|ALT_INV_pout\(3),
	datad => \G1|ALT_INV_pout\(0),
	datae => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G4|Mux5~0_combout\);

-- Location: LABCELL_X16_Y6_N27
\G4|rd[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[2]~3_combout\ = ( \G4|Mux0~3_combout\ ) # ( !\G4|Mux0~3_combout\ & ( \G4|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G4|ALT_INV_Mux1~0_combout\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G4|rd[2]~3_combout\);

-- Location: FF_X17_Y6_N56
\G4|rd[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux5~0_combout\,
	sload => VCC,
	ena => \G4|ALT_INV_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rd[0]~reg0_q\);

-- Location: LABCELL_X17_Y6_N12
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

-- Location: FF_X17_Y6_N14
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

-- Location: FF_X16_Y9_N26
\G4|rt[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|rt[0]~reg0_q\);

-- Location: LABCELL_X16_Y6_N39
\G4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux6~0_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(3) & ((!\G1|pout\(1)) # ((!\G1|pout\(2) & !\G1|pout\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(3),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(0),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux6~0_combout\);

-- Location: FF_X16_Y6_N20
\G4|funct[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux6~0_combout\,
	sload => VCC,
	ena => \G4|ALT_INV_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|funct[0]~reg0_q\);

-- Location: MLABCELL_X21_Y6_N33
\G4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux2~0_combout\ = ( !\G1|pout\(3) & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(1) & (\G4|Mux0~0_combout\ & (!\G1|pout\(2) $ (\G1|pout\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(1),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G1|ALT_INV_pout\(0),
	datae => \G1|ALT_INV_pout\(3),
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux2~0_combout\);

-- Location: FF_X18_Y7_N38
\G4|funct[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux2~0_combout\,
	sload => VCC,
	ena => \G4|ALT_INV_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|funct[2]~reg0_q\);

-- Location: FF_X17_Y7_N49
\G4|tipoi[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux6~0_combout\,
	sload => VCC,
	ena => \G4|rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|tipoi[0]~reg0_q\);

-- Location: LABCELL_X17_Y7_N51
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

-- Location: FF_X17_Y7_N53
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

-- Location: FF_X18_Y7_N11
\G4|tipoi[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux2~0_combout\,
	sload => VCC,
	ena => \G4|rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|tipoi[2]~reg0_q\);

-- Location: FF_X16_Y6_N14
\G4|tipoi[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|Mux5~0_combout\,
	sload => VCC,
	ena => \G4|rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|tipoi[3]~reg0_q\);

-- Location: LABCELL_X16_Y7_N0
\G5|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Equal0~0_combout\ = ( !\G4|op[1]~reg0_q\ & ( (\G4|rt[0]~en_q\ & !\G4|op[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datad => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G4|ALT_INV_op[1]~reg0_q\,
	combout => \G5|Equal0~0_combout\);

-- Location: LABCELL_X17_Y6_N48
\G16|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~0_combout\ = ( \G4|rt[0]~en_q\ & ( (!\G4|op[1]~reg0_q\ & (\G4|rd[0]~en_q\ & !\G4|op[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[1]~reg0_q\,
	datab => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G4|ALT_INV_rt[0]~en_q\,
	combout => \G16|Mux12~0_combout\);

-- Location: LABCELL_X17_Y7_N54
\G4|tipoi[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[2]~7_combout\ = ( \G4|tipoi[0]~en_q\ & ( !\G4|tipoi[2]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G4|ALT_INV_tipoi[2]~reg0_q\,
	dataf => \G4|ALT_INV_tipoi[0]~en_q\,
	combout => \G4|tipoi[2]~7_combout\);

-- Location: LABCELL_X18_Y7_N6
\G16|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~0_combout\ = ( !\G4|funct[2]~reg0_q\ & ( !\G4|op[0]~reg0_q\ & ( (!\G4|op[1]~reg0_q\ & (\G4|funct[0]~reg0_q\ & (\G4|rd[0]~en_q\ & \G4|rt[0]~en_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[1]~reg0_q\,
	datab => \G4|ALT_INV_funct[0]~reg0_q\,
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G4|ALT_INV_rt[0]~en_q\,
	datae => \G4|ALT_INV_funct[2]~reg0_q\,
	dataf => \G4|ALT_INV_op[0]~reg0_q\,
	combout => \G16|Mux11~0_combout\);

-- Location: LABCELL_X17_Y6_N15
\G7|Reg~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~152_combout\ = ( \G7|Reg~24_q\ & ( (\G4|rd[0]~en_q\ & !\G4|rd[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~24_q\,
	combout => \G7|Reg~152_combout\);

-- Location: LABCELL_X16_Y6_N33
\G4|tipoi[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[3]~6_combout\ = ( !\G4|tipoi[3]~reg0_q\ & ( \G4|tipoi[0]~en_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G4|ALT_INV_tipoi[0]~en_q\,
	dataf => \G4|ALT_INV_tipoi[3]~reg0_q\,
	combout => \G4|tipoi[3]~6_combout\);

-- Location: MLABCELL_X21_Y8_N54
\G7|Reg~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~181_combout\ = ( \G4|rt[0]~reg0_q\ & ( \G4|rt[0]~en_q\ & ( (!\G4|op[1]~reg0_q\ & (((!\G4|rs[2]~reg0_q\ & \G4|rs[0]~reg0_q\)) # (\G4|op[0]~reg0_q\))) ) ) ) # ( !\G4|rt[0]~reg0_q\ & ( \G4|rt[0]~en_q\ & ( (!\G4|op[0]~reg0_q\ & (!\G4|rs[2]~reg0_q\ & 
-- (!\G4|op[1]~reg0_q\ & \G4|rs[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[2]~reg0_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datad => \G4|ALT_INV_rs[0]~reg0_q\,
	datae => \G4|ALT_INV_rt[0]~reg0_q\,
	dataf => \G4|ALT_INV_rt[0]~en_q\,
	combout => \G7|Reg~181_combout\);

-- Location: FF_X17_Y5_N14
\G7|Reg~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[3]~7_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~39_q\);

-- Location: LABCELL_X17_Y5_N21
\G7|Reg~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~167_combout\ = ( \G7|Reg~39_q\ & ( (\G4|rt[0]~en_q\ & ((\G7|Reg~23_q\) # (\G4|rt[0]~reg0_q\))) ) ) # ( !\G7|Reg~39_q\ & ( (!\G4|rt[0]~reg0_q\ & (\G7|Reg~23_q\ & \G4|rt[0]~en_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~23_q\,
	datad => \G4|ALT_INV_rt[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~39_q\,
	combout => \G7|Reg~167_combout\);

-- Location: LABCELL_X17_Y6_N51
\G7|Reg~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~150_combout\ = ( \G7|Reg~22_q\ & ( (\G4|rd[0]~en_q\ & !\G4|rd[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~22_q\,
	combout => \G7|Reg~150_combout\);

-- Location: LABCELL_X17_Y6_N27
\G7|Reg~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~149_combout\ = ( \G7|Reg~21_q\ & ( (\G4|rd[0]~en_q\ & !\G4|rd[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~21_q\,
	combout => \G7|Reg~149_combout\);

-- Location: FF_X15_Y7_N41
\G7|Reg~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[0]~3_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~36_q\);

-- Location: MLABCELL_X15_Y7_N24
\G7|Reg~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~164_combout\ = ( \G7|Reg~36_q\ & ( (\G4|rt[0]~en_q\ & ((\G4|rt[0]~reg0_q\) # (\G7|Reg~20_q\))) ) ) # ( !\G7|Reg~36_q\ & ( (\G7|Reg~20_q\ & (\G4|rt[0]~en_q\ & !\G4|rt[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~20_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datad => \G4|ALT_INV_rt[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~36_q\,
	combout => \G7|Reg~164_combout\);

-- Location: LABCELL_X17_Y7_N48
\G4|tipoi[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[0]~8_combout\ = ( \G4|tipoi[0]~en_q\ & ( !\G4|tipoi[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G4|ALT_INV_tipoi[0]~reg0_q\,
	dataf => \G4|ALT_INV_tipoi[0]~en_q\,
	combout => \G4|tipoi[0]~8_combout\);

-- Location: LABCELL_X17_Y7_N0
\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( \G7|Reg~148_combout\ ) + ( (!\G5|Equal0~0_combout\ & (\G7|Reg~164_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~8_combout\))) ) + ( !VCC ))
-- \G16|Add0~18\ = CARRY(( \G7|Reg~148_combout\ ) + ( (!\G5|Equal0~0_combout\ & (\G7|Reg~164_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~8_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~164_combout\,
	datad => \G7|ALT_INV_Reg~148_combout\,
	dataf => \G4|ALT_INV_tipoi[0]~8_combout\,
	cin => GND,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

-- Location: LABCELL_X17_Y7_N3
\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( \G7|Reg~149_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((\G7|Reg~165_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~14\ = CARRY(( \G7|Reg~149_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((\G7|Reg~165_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100011101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~165_combout\,
	datad => \G7|ALT_INV_Reg~149_combout\,
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

-- Location: LABCELL_X17_Y7_N6
\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & (\G7|Reg~166_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[2]~7_combout\))) ) + ( \G7|Reg~150_combout\ ) + ( \G16|Add0~14\ ))
-- \G16|Add0~10\ = CARRY(( (!\G5|Equal0~0_combout\ & (\G7|Reg~166_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[2]~7_combout\))) ) + ( \G7|Reg~150_combout\ ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000111011101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~166_combout\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~150_combout\,
	datad => \G4|ALT_INV_tipoi[2]~7_combout\,
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

-- Location: LABCELL_X17_Y7_N9
\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & (\G7|Reg~167_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[3]~6_combout\))) ) + ( \G7|Reg~151_combout\ ) + ( \G16|Add0~10\ ))
-- \G16|Add0~6\ = CARRY(( (!\G5|Equal0~0_combout\ & (\G7|Reg~167_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[3]~6_combout\))) ) + ( \G7|Reg~151_combout\ ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~167_combout\,
	datad => \G4|ALT_INV_tipoi[3]~6_combout\,
	dataf => \G7|ALT_INV_Reg~151_combout\,
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

-- Location: LABCELL_X17_Y7_N12
\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & (\G7|Reg~168_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[3]~6_combout\))) ) + ( \G7|Reg~152_combout\ ) + ( \G16|Add0~6\ ))
-- \G16|Add0~2\ = CARRY(( (!\G5|Equal0~0_combout\ & (\G7|Reg~168_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[3]~6_combout\))) ) + ( \G7|Reg~152_combout\ ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000111011101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~168_combout\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~152_combout\,
	datad => \G4|ALT_INV_tipoi[3]~6_combout\,
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

-- Location: LABCELL_X16_Y6_N30
\G16|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~2_combout\ = ( \G4|rt[0]~en_q\ & ( (!\G4|funct[0]~reg0_q\ & (\G4|rd[0]~en_q\ & (!\G4|op[1]~reg0_q\ & !\G4|op[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[0]~reg0_q\,
	datab => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datad => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G4|ALT_INV_rt[0]~en_q\,
	combout => \G16|Mux11~2_combout\);

-- Location: LABCELL_X16_Y6_N9
\G16|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~1_combout\ = ( !\G4|tipoi[3]~reg0_q\ & ( (\G4|tipoi[0]~en_q\ & ((!\G7|Reg~24_q\) # ((!\G4|rd[0]~en_q\) # (\G4|rd[0]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~24_q\,
	datab => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G4|ALT_INV_tipoi[0]~en_q\,
	datad => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G4|ALT_INV_tipoi[3]~reg0_q\,
	combout => \G16|Mux11~1_combout\);

-- Location: LABCELL_X18_Y7_N3
\G16|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~3_combout\ = ( \G16|Mux11~1_combout\ & ( (\G16|Add0~1_sumout\ & (\G16|Mux11~2_combout\ & !\G4|funct[2]~reg0_q\)) ) ) # ( !\G16|Mux11~1_combout\ & ( (\G16|Mux11~2_combout\ & ((\G4|funct[2]~reg0_q\) # (\G16|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~1_sumout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G4|ALT_INV_funct[2]~reg0_q\,
	dataf => \G16|ALT_INV_Mux11~1_combout\,
	combout => \G16|Mux11~3_combout\);

-- Location: LABCELL_X17_Y5_N30
\G18|SAIDA[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[3]~6_combout\ = ( \G16|Add1~1_sumout\ & ( (\G16|Mux12~1_combout\ & (!\G16|Mux11~0_combout\ & !\G16|Mux11~3_combout\)) ) ) # ( !\G16|Add1~1_sumout\ & ( (\G16|Mux12~1_combout\ & !\G16|Mux11~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G16|ALT_INV_Mux11~3_combout\,
	dataf => \G16|ALT_INV_Add1~1_sumout\,
	combout => \G18|SAIDA[3]~6_combout\);

-- Location: LABCELL_X16_Y7_N6
\G16|Add1~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add1~66_cout\);

-- Location: LABCELL_X16_Y7_N9
\G16|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~17_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & (!\G7|Reg~164_combout\)) # (\G5|Equal0~0_combout\ & ((\G4|tipoi[0]~8_combout\))) ) + ( \G7|Reg~148_combout\ ) + ( \G16|Add1~66_cout\ ))
-- \G16|Add1~18\ = CARRY(( (!\G5|Equal0~0_combout\ & (!\G7|Reg~164_combout\)) # (\G5|Equal0~0_combout\ & ((\G4|tipoi[0]~8_combout\))) ) + ( \G7|Reg~148_combout\ ) + ( \G16|Add1~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal0~0_combout\,
	datab => \G7|ALT_INV_Reg~148_combout\,
	datac => \G7|ALT_INV_Reg~164_combout\,
	datad => \G4|ALT_INV_tipoi[0]~8_combout\,
	cin => \G16|Add1~66_cout\,
	sumout => \G16|Add1~17_sumout\,
	cout => \G16|Add1~18\);

-- Location: LABCELL_X18_Y7_N24
\G16|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~17_sumout\)))) # (\G4|funct[2]~reg0_q\ & ((!\G4|tipoi[0]~8_combout\) # ((\G7|Reg~148_combout\)))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- ((\G16|Mux12~0_combout\ & (\G16|Add1~17_sumout\ & ((!\G4|funct[2]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001100100010001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~8_combout\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G16|ALT_INV_Add1~17_sumout\,
	datad => \G7|ALT_INV_Reg~148_combout\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G4|ALT_INV_funct[2]~reg0_q\,
	datag => \G16|ALT_INV_Add0~17_sumout\,
	combout => \G16|Mux15~0_combout\);

-- Location: LABCELL_X17_Y6_N54
\G5|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Equal2~0_combout\ = ( \G4|rt[0]~en_q\ & ( (\G4|op[1]~reg0_q\ & !\G4|op[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[1]~reg0_q\,
	datac => \G4|ALT_INV_op[0]~reg0_q\,
	dataf => \G4|ALT_INV_rt[0]~en_q\,
	combout => \G5|Equal2~0_combout\);

-- Location: LABCELL_X18_Y7_N39
\G16|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~4_combout\ = ( \G4|funct[2]~reg0_q\ & ( \G16|Mux11~2_combout\ & ( (!\G16|Mux11~1_combout\) # ((\G16|Add1~1_sumout\ & \G16|Mux11~0_combout\)) ) ) ) # ( !\G4|funct[2]~reg0_q\ & ( \G16|Mux11~2_combout\ & ( ((\G16|Add1~1_sumout\ & 
-- \G16|Mux11~0_combout\)) # (\G16|Add0~1_sumout\) ) ) ) # ( \G4|funct[2]~reg0_q\ & ( !\G16|Mux11~2_combout\ & ( (\G16|Add1~1_sumout\ & \G16|Mux11~0_combout\) ) ) ) # ( !\G4|funct[2]~reg0_q\ & ( !\G16|Mux11~2_combout\ & ( (\G16|Add1~1_sumout\ & 
-- \G16|Mux11~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001111111111111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~1_sumout\,
	datab => \G16|ALT_INV_Mux11~0_combout\,
	datac => \G16|ALT_INV_Mux11~1_combout\,
	datad => \G16|ALT_INV_Add0~1_sumout\,
	datae => \G4|ALT_INV_funct[2]~reg0_q\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \G16|Mux11~4_combout\);

-- Location: LABCELL_X18_Y9_N6
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( !\G16|Mux13~0_combout\ & ( \G16|Mux11~4_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux12~1_combout\ & (!\G16|Mux14~1_combout\ & \G5|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G5|ALT_INV_Equal2~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G16|ALT_INV_Mux11~4_combout\,
	combout => \rtl~0_combout\);

-- Location: LABCELL_X18_Y9_N33
\G17|ram~259\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~259_combout\ = ( \G7|Reg~167_combout\ & ( (\rtl~0_combout\) # (\G17|ram~259_combout\) ) ) # ( !\G7|Reg~167_combout\ & ( (\G17|ram~259_combout\ & !\rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~259_combout\,
	datab => \ALT_INV_rtl~0_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~259_combout\);

-- Location: LABCELL_X17_Y9_N51
\rtl~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = ( !\G16|Mux15~0_combout\ & ( \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (!\G16|Mux12~1_combout\ & (!\G16|Mux11~4_combout\ & \G5|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G16|ALT_INV_Mux11~4_combout\,
	datad => \G5|ALT_INV_Equal2~0_combout\,
	datae => \G16|ALT_INV_Mux15~0_combout\,
	dataf => \G16|ALT_INV_Mux14~1_combout\,
	combout => \rtl~12_combout\);

-- Location: LABCELL_X16_Y5_N45
\G17|ram~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~35_combout\ = ( \G17|ram~35_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\G17|ram~35_combout\ & ( \G7|Reg~167_combout\ & ( \rtl~12_combout\ ) ) ) # ( \G17|ram~35_combout\ & ( !\G7|Reg~167_combout\ & ( !\rtl~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~12_combout\,
	datae => \G17|ALT_INV_ram~35_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~35_combout\);

-- Location: LABCELL_X17_Y9_N6
\rtl~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = ( !\G16|Mux13~0_combout\ & ( \G16|Mux14~1_combout\ & ( (\G5|Equal2~0_combout\ & (!\G16|Mux11~4_combout\ & (\G16|Mux15~0_combout\ & !\G16|Mux12~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal2~0_combout\,
	datab => \G16|ALT_INV_Mux11~4_combout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Mux12~1_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G16|ALT_INV_Mux14~1_combout\,
	combout => \rtl~10_combout\);

-- Location: LABCELL_X16_Y5_N48
\G17|ram~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~51_combout\ = ( \rtl~10_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\rtl~10_combout\ & ( \G7|Reg~167_combout\ & ( \G17|ram~51_combout\ ) ) ) # ( !\rtl~10_combout\ & ( !\G7|Reg~167_combout\ & ( \G17|ram~51_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~51_combout\,
	datae => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~51_combout\);

-- Location: LABCELL_X17_Y9_N48
\rtl~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = ( !\G16|Mux14~1_combout\ & ( \G16|Mux15~0_combout\ & ( (!\G16|Mux13~0_combout\ & (!\G16|Mux12~1_combout\ & (\G5|Equal2~0_combout\ & !\G16|Mux11~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G5|ALT_INV_Equal2~0_combout\,
	datad => \G16|ALT_INV_Mux11~4_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \rtl~9_combout\);

-- Location: LABCELL_X16_Y5_N30
\G17|ram~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~19_combout\ = ( \rtl~9_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\rtl~9_combout\ & ( \G7|Reg~167_combout\ & ( \G17|ram~19_combout\ ) ) ) # ( !\rtl~9_combout\ & ( !\G7|Reg~167_combout\ & ( \G17|ram~19_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~19_combout\,
	datae => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~19_combout\);

-- Location: LABCELL_X18_Y9_N36
\rtl~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = ( !\G16|Mux13~0_combout\ & ( \G5|Equal2~0_combout\ & ( (!\G16|Mux11~4_combout\ & (!\G16|Mux12~1_combout\ & (!\G16|Mux14~1_combout\ & !\G16|Mux15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~4_combout\,
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G5|ALT_INV_Equal2~0_combout\,
	combout => \rtl~11_combout\);

-- Location: LABCELL_X17_Y5_N6
\G17|ram~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~3_combout\ = ( \G7|Reg~167_combout\ & ( (\rtl~11_combout\) # (\G17|ram~3_combout\) ) ) # ( !\G7|Reg~167_combout\ & ( (\G17|ram~3_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~3_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~3_combout\);

-- Location: LABCELL_X17_Y5_N0
\G17|ram~428\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~428_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~3_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~19_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~35_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~51_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~35_combout\,
	datad => \G17|ALT_INV_ram~51_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~19_combout\,
	datag => \G17|ALT_INV_ram~3_combout\,
	combout => \G17|ram~428_combout\);

-- Location: LABCELL_X18_Y8_N42
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \G16|Mux14~1_combout\ & ( !\G16|Mux12~1_combout\ & ( (\G5|Equal2~0_combout\ & (!\G16|Mux11~4_combout\ & (!\G16|Mux15~0_combout\ & \G16|Mux13~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal2~0_combout\,
	datab => \G16|ALT_INV_Mux11~4_combout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux12~1_combout\,
	combout => \rtl~4_combout\);

-- Location: LABCELL_X16_Y5_N3
\G17|ram~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~99_combout\ = ( \G17|ram~99_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\G17|ram~99_combout\ & ( \G7|Reg~167_combout\ & ( \rtl~4_combout\ ) ) ) # ( \G17|ram~99_combout\ & ( !\G7|Reg~167_combout\ & ( !\rtl~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_rtl~4_combout\,
	datae => \G17|ALT_INV_ram~99_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~99_combout\);

-- Location: LABCELL_X18_Y8_N54
\rtl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = ( \G16|Mux14~1_combout\ & ( !\G16|Mux12~1_combout\ & ( (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\ & (\G5|Equal2~0_combout\ & !\G16|Mux11~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G5|ALT_INV_Equal2~0_combout\,
	datad => \G16|ALT_INV_Mux11~4_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux12~1_combout\,
	combout => \rtl~2_combout\);

-- Location: LABCELL_X16_Y5_N9
\G17|ram~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~115_combout\ = ( \rtl~2_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\rtl~2_combout\ & ( \G7|Reg~167_combout\ & ( \G17|ram~115_combout\ ) ) ) # ( !\rtl~2_combout\ & ( !\G7|Reg~167_combout\ & ( \G17|ram~115_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~115_combout\,
	datae => \ALT_INV_rtl~2_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~115_combout\);

-- Location: LABCELL_X17_Y9_N9
\rtl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = ( !\G16|Mux14~1_combout\ & ( \G16|Mux13~0_combout\ & ( (\G5|Equal2~0_combout\ & (!\G16|Mux11~4_combout\ & (!\G16|Mux12~1_combout\ & \G16|Mux15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal2~0_combout\,
	datab => \G16|ALT_INV_Mux11~4_combout\,
	datac => \G16|ALT_INV_Mux12~1_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	combout => \rtl~1_combout\);

-- Location: LABCELL_X16_Y5_N18
\G17|ram~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~83_combout\ = ( \G7|Reg~167_combout\ & ( (\rtl~1_combout\) # (\G17|ram~83_combout\) ) ) # ( !\G7|Reg~167_combout\ & ( (\G17|ram~83_combout\ & !\rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~83_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~83_combout\);

-- Location: LABCELL_X18_Y9_N9
\rtl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = ( !\G16|Mux11~4_combout\ & ( \G16|Mux13~0_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux12~1_combout\ & (\G5|Equal2~0_combout\ & !\G16|Mux14~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G5|ALT_INV_Equal2~0_combout\,
	datad => \G16|ALT_INV_Mux14~1_combout\,
	datae => \G16|ALT_INV_Mux11~4_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	combout => \rtl~3_combout\);

-- Location: LABCELL_X18_Y8_N27
\G17|ram~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~67_combout\ = ( \rtl~3_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~67_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~167_combout\,
	datad => \G17|ALT_INV_ram~67_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~67_combout\);

-- Location: LABCELL_X17_Y5_N54
\G17|ram~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~300_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~428_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~67_combout\))) # (\G17|ram~428_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~83_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~428_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~99_combout\))) # (\G17|ram~428_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~115_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~428_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~99_combout\,
	datad => \G17|ALT_INV_ram~115_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~83_combout\,
	datag => \G17|ALT_INV_ram~67_combout\,
	combout => \G17|ram~300_combout\);

-- Location: LABCELL_X18_Y7_N21
\rtl~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~16_combout\ = ( !\G16|Mux15~0_combout\ & ( \G16|Mux14~1_combout\ & ( (\G5|Equal2~0_combout\ & (\G16|Mux12~1_combout\ & (!\G16|Mux11~4_combout\ & !\G16|Mux13~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal2~0_combout\,
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G16|ALT_INV_Mux11~4_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux15~0_combout\,
	dataf => \G16|ALT_INV_Mux14~1_combout\,
	combout => \rtl~16_combout\);

-- Location: LABCELL_X17_Y5_N33
\G17|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~163_combout\ = ( \G7|Reg~167_combout\ & ( (\rtl~16_combout\) # (\G17|ram~163_combout\) ) ) # ( !\G7|Reg~167_combout\ & ( (\G17|ram~163_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~163_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~163_combout\);

-- Location: LABCELL_X18_Y7_N54
\rtl~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = ( !\G16|Mux13~0_combout\ & ( \G16|Mux15~0_combout\ & ( (\G5|Equal2~0_combout\ & (\G16|Mux14~1_combout\ & (\G16|Mux12~1_combout\ & !\G16|Mux11~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal2~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Mux12~1_combout\,
	datad => \G16|ALT_INV_Mux11~4_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \rtl~14_combout\);

-- Location: LABCELL_X17_Y5_N9
\G17|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~179_combout\ = ( \G7|Reg~167_combout\ & ( (\rtl~14_combout\) # (\G17|ram~179_combout\) ) ) # ( !\G7|Reg~167_combout\ & ( (\G17|ram~179_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~179_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~179_combout\);

-- Location: LABCELL_X18_Y7_N18
\rtl~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = ( !\G16|Mux14~1_combout\ & ( \G16|Mux15~0_combout\ & ( (\G5|Equal2~0_combout\ & (\G16|Mux12~1_combout\ & (!\G16|Mux13~0_combout\ & !\G16|Mux11~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal2~0_combout\,
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G16|ALT_INV_Mux13~0_combout\,
	datad => \G16|ALT_INV_Mux11~4_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \rtl~13_combout\);

-- Location: LABCELL_X17_Y5_N18
\G17|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~147_combout\ = ( \rtl~13_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~147_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~147_combout\,
	datac => \G7|ALT_INV_Reg~167_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~147_combout\);

-- Location: LABCELL_X18_Y6_N30
\rtl~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = ( !\G16|Mux14~1_combout\ & ( !\G16|Mux13~0_combout\ & ( (\G5|Equal2~0_combout\ & (!\G16|Mux15~0_combout\ & (!\G16|Mux11~4_combout\ & \G16|Mux12~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal2~0_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G16|ALT_INV_Mux11~4_combout\,
	datad => \G16|ALT_INV_Mux12~1_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	combout => \rtl~15_combout\);

-- Location: LABCELL_X17_Y5_N48
\G17|ram~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~131_combout\ = ( \G7|Reg~167_combout\ & ( (\rtl~15_combout\) # (\G17|ram~131_combout\) ) ) # ( !\G7|Reg~167_combout\ & ( (\G17|ram~131_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~131_combout\,
	datac => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~131_combout\);

-- Location: LABCELL_X17_Y5_N42
\G17|ram~424\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~424_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~131_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~147_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~163_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~179_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~163_combout\,
	datad => \G17|ALT_INV_ram~179_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~147_combout\,
	datag => \G17|ALT_INV_ram~131_combout\,
	combout => \G17|ram~424_combout\);

-- Location: LABCELL_X18_Y7_N57
\rtl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = ( !\G16|Mux15~0_combout\ & ( \G16|Mux13~0_combout\ & ( (\G5|Equal2~0_combout\ & (\G16|Mux14~1_combout\ & (!\G16|Mux11~4_combout\ & \G16|Mux12~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal2~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Mux11~4_combout\,
	datad => \G16|ALT_INV_Mux12~1_combout\,
	datae => \G16|ALT_INV_Mux15~0_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	combout => \rtl~8_combout\);

-- Location: LABCELL_X16_Y5_N57
\G17|ram~227\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~227_combout\ = ( \rtl~8_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\rtl~8_combout\ & ( \G7|Reg~167_combout\ & ( \G17|ram~227_combout\ ) ) ) # ( !\rtl~8_combout\ & ( !\G7|Reg~167_combout\ & ( \G17|ram~227_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~227_combout\,
	datae => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~227_combout\);

-- Location: LABCELL_X16_Y6_N15
\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = ( !\G16|Mux11~4_combout\ & ( !\G16|Mux14~1_combout\ & ( (\G16|Mux13~0_combout\ & (\G5|Equal2~0_combout\ & (\G16|Mux12~1_combout\ & \G16|Mux15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G5|ALT_INV_Equal2~0_combout\,
	datac => \G16|ALT_INV_Mux12~1_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux11~4_combout\,
	dataf => \G16|ALT_INV_Mux14~1_combout\,
	combout => \rtl~5_combout\);

-- Location: LABCELL_X16_Y5_N24
\G17|ram~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~211_combout\ = ( \rtl~5_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\rtl~5_combout\ & ( \G7|Reg~167_combout\ & ( \G17|ram~211_combout\ ) ) ) # ( !\rtl~5_combout\ & ( !\G7|Reg~167_combout\ & ( \G17|ram~211_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~211_combout\,
	datae => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~211_combout\);

-- Location: LABCELL_X18_Y9_N24
\rtl~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = ( \G16|Mux13~0_combout\ & ( \G5|Equal2~0_combout\ & ( (\G16|Mux14~1_combout\ & (\G16|Mux12~1_combout\ & (\G16|Mux15~0_combout\ & !\G16|Mux11~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~1_combout\,
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Mux11~4_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G5|ALT_INV_Equal2~0_combout\,
	combout => \rtl~6_combout\);

-- Location: LABCELL_X17_Y5_N39
\G17|ram~243\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~243_combout\ = ( \G7|Reg~167_combout\ & ( (\rtl~6_combout\) # (\G17|ram~243_combout\) ) ) # ( !\G7|Reg~167_combout\ & ( (\G17|ram~243_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~243_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Reg~167_combout\,
	combout => \G17|ram~243_combout\);

-- Location: LABCELL_X18_Y8_N45
\rtl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = ( \G16|Mux12~1_combout\ & ( !\G16|Mux14~1_combout\ & ( (\G5|Equal2~0_combout\ & (!\G16|Mux11~4_combout\ & (\G16|Mux13~0_combout\ & !\G16|Mux15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal2~0_combout\,
	datab => \G16|ALT_INV_Mux11~4_combout\,
	datac => \G16|ALT_INV_Mux13~0_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux12~1_combout\,
	dataf => \G16|ALT_INV_Mux14~1_combout\,
	combout => \rtl~7_combout\);

-- Location: LABCELL_X17_Y5_N36
\G17|ram~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~195_combout\ = ( \rtl~7_combout\ & ( \G7|Reg~167_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~195_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~167_combout\,
	datad => \G17|ALT_INV_ram~195_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~195_combout\);

-- Location: LABCELL_X17_Y5_N24
\G17|ram~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~296_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~424_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~424_combout\ & (\G17|ram~195_combout\)) # (\G17|ram~424_combout\ & (((\G17|ram~211_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~424_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~424_combout\ & (\G17|ram~227_combout\)) # (\G17|ram~424_combout\ & (((\G17|ram~243_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~424_combout\,
	datac => \G17|ALT_INV_ram~227_combout\,
	datad => \G17|ALT_INV_ram~211_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~243_combout\,
	datag => \G17|ALT_INV_ram~195_combout\,
	combout => \G17|ram~296_combout\);

-- Location: LABCELL_X17_Y5_N15
\G18|SAIDA[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[3]~7_combout\ = ( \G17|ram~300_combout\ & ( \G17|ram~296_combout\ & ( (((\G18|SAIDA[0]~2_combout\ & \G17|ram~259_combout\)) # (\G18|SAIDA[0]~0_combout\)) # (\G18|SAIDA[3]~6_combout\) ) ) ) # ( !\G17|ram~300_combout\ & ( \G17|ram~296_combout\ & 
-- ( ((\G18|SAIDA[0]~2_combout\ & \G17|ram~259_combout\)) # (\G18|SAIDA[3]~6_combout\) ) ) ) # ( \G17|ram~300_combout\ & ( !\G17|ram~296_combout\ & ( ((\G18|SAIDA[0]~2_combout\ & \G17|ram~259_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( 
-- !\G17|ram~300_combout\ & ( !\G17|ram~296_combout\ & ( (\G18|SAIDA[0]~2_combout\ & \G17|ram~259_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111111100110111001101110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datab => \G18|ALT_INV_SAIDA[3]~6_combout\,
	datac => \G17|ALT_INV_ram~259_combout\,
	datad => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datae => \G17|ALT_INV_ram~300_combout\,
	dataf => \G17|ALT_INV_ram~296_combout\,
	combout => \G18|SAIDA[3]~7_combout\);

-- Location: MLABCELL_X21_Y8_N48
\G7|Reg~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~180_combout\ = ( \G4|rt[0]~reg0_q\ & ( \G4|rt[0]~en_q\ & ( (!\G4|op[0]~reg0_q\ & (!\G4|rs[2]~reg0_q\ & (!\G4|op[1]~reg0_q\ & !\G4|rs[0]~reg0_q\))) ) ) ) # ( !\G4|rt[0]~reg0_q\ & ( \G4|rt[0]~en_q\ & ( (!\G4|op[1]~reg0_q\ & (((!\G4|rs[2]~reg0_q\ & 
-- !\G4|rs[0]~reg0_q\)) # (\G4|op[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000010100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~reg0_q\,
	datab => \G4|ALT_INV_rs[2]~reg0_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	datad => \G4|ALT_INV_rs[0]~reg0_q\,
	datae => \G4|ALT_INV_rt[0]~reg0_q\,
	dataf => \G4|ALT_INV_rt[0]~en_q\,
	combout => \G7|Reg~180_combout\);

-- Location: FF_X17_Y5_N50
\G7|Reg~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[3]~7_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~23_q\);

-- Location: LABCELL_X16_Y6_N45
\G7|Reg~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~151_combout\ = ( \G7|Reg~23_q\ & ( (\G4|rd[0]~en_q\ & !\G4|rd[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~23_q\,
	combout => \G7|Reg~151_combout\);

-- Location: LABCELL_X16_Y7_N12
\G16|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~13_sumout\ = SUM(( \G7|Reg~149_combout\ ) + ( (!\G5|Equal0~0_combout\ & (!\G7|Reg~165_combout\)) # (\G5|Equal0~0_combout\ & ((\G4|tipoi[0]~en_q\))) ) + ( \G16|Add1~18\ ))
-- \G16|Add1~14\ = CARRY(( \G7|Reg~149_combout\ ) + ( (!\G5|Equal0~0_combout\ & (!\G7|Reg~165_combout\)) # (\G5|Equal0~0_combout\ & ((\G4|tipoi[0]~en_q\))) ) + ( \G16|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~165_combout\,
	datad => \G7|ALT_INV_Reg~149_combout\,
	dataf => \G4|ALT_INV_tipoi[0]~en_q\,
	cin => \G16|Add1~18\,
	sumout => \G16|Add1~13_sumout\,
	cout => \G16|Add1~14\);

-- Location: LABCELL_X16_Y7_N15
\G16|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~9_sumout\ = SUM(( \G7|Reg~150_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~166_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[2]~7_combout\)) ) + ( \G16|Add1~14\ ))
-- \G16|Add1~10\ = CARRY(( \G7|Reg~150_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~166_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[2]~7_combout\)) ) + ( \G16|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_tipoi[2]~7_combout\,
	datac => \G7|ALT_INV_Reg~166_combout\,
	datad => \G7|ALT_INV_Reg~150_combout\,
	cin => \G16|Add1~14\,
	sumout => \G16|Add1~9_sumout\,
	cout => \G16|Add1~10\);

-- Location: LABCELL_X16_Y7_N18
\G16|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~5_sumout\ = SUM(( \G7|Reg~151_combout\ ) + ( (!\G5|Equal0~0_combout\ & (!\G7|Reg~167_combout\)) # (\G5|Equal0~0_combout\ & ((\G4|tipoi[3]~6_combout\))) ) + ( \G16|Add1~10\ ))
-- \G16|Add1~6\ = CARRY(( \G7|Reg~151_combout\ ) + ( (!\G5|Equal0~0_combout\ & (!\G7|Reg~167_combout\)) # (\G5|Equal0~0_combout\ & ((\G4|tipoi[3]~6_combout\))) ) + ( \G16|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal0~0_combout\,
	datab => \G7|ALT_INV_Reg~167_combout\,
	datac => \G4|ALT_INV_tipoi[3]~6_combout\,
	datad => \G7|ALT_INV_Reg~151_combout\,
	cin => \G16|Add1~10\,
	sumout => \G16|Add1~5_sumout\,
	cout => \G16|Add1~6\);

-- Location: LABCELL_X18_Y7_N30
\G16|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~1_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~5_sumout\)))) # (\G4|funct[2]~reg0_q\ & (((!\G4|tipoi[3]~6_combout\)) # (\G7|Reg~151_combout\))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- (!\G4|funct[2]~reg0_q\ & (((\G16|Add1~5_sumout\ & (\G16|Mux12~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001011111000000000000101000000000000110110000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[2]~reg0_q\,
	datab => \G7|ALT_INV_Reg~151_combout\,
	datac => \G16|ALT_INV_Add1~5_sumout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G4|ALT_INV_tipoi[3]~6_combout\,
	datag => \G16|ALT_INV_Add0~5_sumout\,
	combout => \G16|Mux12~1_combout\);

-- Location: LABCELL_X19_Y7_N9
\G18|SAIDA[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~1_combout\ = ( !\G16|Mux11~3_combout\ & ( (\G16|Mux12~1_combout\ & (\G5|Equal0~0_combout\ & ((!\G16|Mux11~0_combout\) # (!\G16|Add1~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000000100010001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~1_combout\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G16|ALT_INV_Add1~1_sumout\,
	dataf => \G16|ALT_INV_Mux11~3_combout\,
	combout => \G18|SAIDA[0]~1_combout\);

-- Location: LABCELL_X16_Y6_N42
\G17|ram~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~210_combout\ = ( \G7|Reg~166_combout\ & ( (\G17|ram~210_combout\) # (\rtl~5_combout\) ) ) # ( !\G7|Reg~166_combout\ & ( (!\rtl~5_combout\ & \G17|ram~210_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~5_combout\,
	datad => \G17|ALT_INV_ram~210_combout\,
	dataf => \G7|ALT_INV_Reg~166_combout\,
	combout => \G17|ram~210_combout\);

-- Location: LABCELL_X17_Y6_N36
\G17|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~162_combout\ = ( \rtl~16_combout\ & ( \G7|Reg~166_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~162_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~166_combout\,
	datad => \G17|ALT_INV_ram~162_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~162_combout\);

-- Location: LABCELL_X17_Y6_N39
\G17|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~146_combout\ = ( \rtl~13_combout\ & ( \G7|Reg~166_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~146_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~166_combout\,
	datac => \G17|ALT_INV_ram~146_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~146_combout\);

-- Location: LABCELL_X18_Y6_N42
\G17|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~178_combout\ = ( \rtl~14_combout\ & ( \G7|Reg~166_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~178_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~166_combout\,
	datab => \G17|ALT_INV_ram~178_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~178_combout\);

-- Location: LABCELL_X18_Y6_N36
\G17|ram~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~130_combout\ = ( \G7|Reg~166_combout\ & ( (\G17|ram~130_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Reg~166_combout\ & ( (!\rtl~15_combout\ & \G17|ram~130_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~15_combout\,
	datad => \G17|ALT_INV_ram~130_combout\,
	dataf => \G7|ALT_INV_Reg~166_combout\,
	combout => \G17|ram~130_combout\);

-- Location: LABCELL_X17_Y6_N42
\G17|ram~420\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~420_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~130_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~146_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~162_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~178_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~162_combout\,
	datad => \G17|ALT_INV_ram~146_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~178_combout\,
	datag => \G17|ALT_INV_ram~130_combout\,
	combout => \G17|ram~420_combout\);

-- Location: LABCELL_X18_Y6_N21
\G17|ram~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~226_combout\ = ( \rtl~8_combout\ & ( \G7|Reg~166_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~226_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~166_combout\,
	datad => \G17|ALT_INV_ram~226_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~226_combout\);

-- Location: LABCELL_X18_Y6_N12
\G17|ram~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~242_combout\ = ( \G7|Reg~166_combout\ & ( (\rtl~6_combout\) # (\G17|ram~242_combout\) ) ) # ( !\G7|Reg~166_combout\ & ( (\G17|ram~242_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~242_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Reg~166_combout\,
	combout => \G17|ram~242_combout\);

-- Location: LABCELL_X18_Y6_N9
\G17|ram~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~194_combout\ = ( \rtl~7_combout\ & ( \G7|Reg~166_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~194_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~166_combout\,
	datac => \G17|ALT_INV_ram~194_combout\,
	datae => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~194_combout\);

-- Location: LABCELL_X17_Y6_N0
\G17|ram~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~292_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~420_combout\ & (((\G17|ram~194_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~420_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~210_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~420_combout\ & (\G17|ram~226_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~420_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~242_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~210_combout\,
	datab => \G17|ALT_INV_ram~420_combout\,
	datac => \G17|ALT_INV_ram~226_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~242_combout\,
	datag => \G17|ALT_INV_ram~194_combout\,
	combout => \G17|ram~292_combout\);

-- Location: LABCELL_X18_Y9_N3
\G17|ram~258\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~258_combout\ = (!\rtl~0_combout\ & ((\G17|ram~258_combout\))) # (\rtl~0_combout\ & (\G7|Reg~166_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~166_combout\,
	datac => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~258_combout\,
	combout => \G17|ram~258_combout\);

-- Location: LABCELL_X16_Y6_N6
\G17|ram~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~34_combout\ = ( \G7|Reg~166_combout\ & ( (\rtl~12_combout\) # (\G17|ram~34_combout\) ) ) # ( !\G7|Reg~166_combout\ & ( (\G17|ram~34_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~34_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G7|ALT_INV_Reg~166_combout\,
	combout => \G17|ram~34_combout\);

-- Location: LABCELL_X17_Y6_N57
\G17|ram~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~18_combout\ = ( \G7|Reg~166_combout\ & ( (\rtl~9_combout\) # (\G17|ram~18_combout\) ) ) # ( !\G7|Reg~166_combout\ & ( (\G17|ram~18_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~18_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Reg~166_combout\,
	combout => \G17|ram~18_combout\);

-- Location: LABCELL_X16_Y6_N24
\G17|ram~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~50_combout\ = ( \G7|Reg~166_combout\ & ( (\rtl~10_combout\) # (\G17|ram~50_combout\) ) ) # ( !\G7|Reg~166_combout\ & ( (\G17|ram~50_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~50_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Reg~166_combout\,
	combout => \G17|ram~50_combout\);

-- Location: LABCELL_X18_Y6_N27
\G17|ram~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~2_combout\ = ( \rtl~11_combout\ & ( \G7|Reg~166_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~2_combout\,
	datab => \G7|ALT_INV_Reg~166_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~2_combout\);

-- Location: LABCELL_X17_Y6_N18
\G17|ram~416\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~416_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~2_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~18_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~34_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~50_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~34_combout\,
	datad => \G17|ALT_INV_ram~18_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~50_combout\,
	datag => \G17|ALT_INV_ram~2_combout\,
	combout => \G17|ram~416_combout\);

-- Location: LABCELL_X18_Y6_N24
\G17|ram~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~98_combout\ = ( \rtl~4_combout\ & ( \G7|Reg~166_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~98_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~166_combout\,
	datac => \G17|ALT_INV_ram~98_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~98_combout\);

-- Location: LABCELL_X18_Y8_N39
\G17|ram~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~114_combout\ = ( \G17|ram~114_combout\ & ( (!\rtl~2_combout\) # (\G7|Reg~166_combout\) ) ) # ( !\G17|ram~114_combout\ & ( (\G7|Reg~166_combout\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~166_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~114_combout\,
	combout => \G17|ram~114_combout\);

-- Location: LABCELL_X18_Y6_N54
\G17|ram~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~82_combout\ = ( \G7|Reg~166_combout\ & ( (\rtl~1_combout\) # (\G17|ram~82_combout\) ) ) # ( !\G7|Reg~166_combout\ & ( (\G17|ram~82_combout\ & !\rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~82_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G7|ALT_INV_Reg~166_combout\,
	combout => \G17|ram~82_combout\);

-- Location: LABCELL_X16_Y6_N54
\G17|ram~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~66_combout\ = ( \G7|Reg~166_combout\ & ( (\rtl~3_combout\) # (\G17|ram~66_combout\) ) ) # ( !\G7|Reg~166_combout\ & ( (\G17|ram~66_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~66_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G7|ALT_INV_Reg~166_combout\,
	combout => \G17|ram~66_combout\);

-- Location: LABCELL_X17_Y6_N30
\G17|ram~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~288_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~416_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~66_combout\))) # (\G17|ram~416_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~82_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~416_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~98_combout\))) # (\G17|ram~416_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~114_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~416_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~98_combout\,
	datad => \G17|ALT_INV_ram~114_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~82_combout\,
	datag => \G17|ALT_INV_ram~66_combout\,
	combout => \G17|ram~288_combout\);

-- Location: LABCELL_X17_Y6_N9
\G18|SAIDA[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[2]~5_combout\ = ( \G17|ram~258_combout\ & ( \G17|ram~288_combout\ & ( (((\G18|SAIDA[0]~1_combout\ & \G17|ram~292_combout\)) # (\G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( !\G17|ram~258_combout\ & ( \G17|ram~288_combout\ & 
-- ( ((\G18|SAIDA[0]~1_combout\ & \G17|ram~292_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G17|ram~258_combout\ & ( !\G17|ram~288_combout\ & ( ((\G18|SAIDA[0]~1_combout\ & \G17|ram~292_combout\)) # (\G18|SAIDA[0]~2_combout\) ) ) ) # ( 
-- !\G17|ram~258_combout\ & ( !\G17|ram~288_combout\ & ( (\G18|SAIDA[0]~1_combout\ & \G17|ram~292_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110011111101010101010111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datad => \G17|ALT_INV_ram~292_combout\,
	datae => \G17|ALT_INV_ram~258_combout\,
	dataf => \G17|ALT_INV_ram~288_combout\,
	combout => \G18|SAIDA[2]~5_combout\);

-- Location: FF_X17_Y6_N41
\G7|Reg~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[2]~5_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~22_q\);

-- Location: FF_X17_Y6_N8
\G7|Reg~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[2]~5_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~38_q\);

-- Location: LABCELL_X17_Y6_N24
\G7|Reg~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~166_combout\ = ( \G7|Reg~38_q\ & ( (\G4|rt[0]~en_q\ & ((\G4|rt[0]~reg0_q\) # (\G7|Reg~22_q\))) ) ) # ( !\G7|Reg~38_q\ & ( (\G7|Reg~22_q\ & (\G4|rt[0]~en_q\ & !\G4|rt[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~22_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datad => \G4|ALT_INV_rt[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~38_q\,
	combout => \G7|Reg~166_combout\);

-- Location: LABCELL_X18_Y7_N48
\G16|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~9_sumout\)))) # (\G4|funct[2]~reg0_q\ & (((!\G4|tipoi[2]~7_combout\)) # (\G7|Reg~150_combout\))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- (!\G4|funct[2]~reg0_q\ & (\G16|Mux12~0_combout\ & (\G16|Add1~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100110011000000100000001000000001001000110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[2]~reg0_q\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G16|ALT_INV_Add1~9_sumout\,
	datad => \G16|ALT_INV_Add0~9_sumout\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G4|ALT_INV_tipoi[2]~7_combout\,
	datag => \G7|ALT_INV_Reg~150_combout\,
	combout => \G16|Mux13~0_combout\);

-- Location: LABCELL_X18_Y7_N42
\G18|SAIDA[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~2_combout\ = ( \G5|Equal0~0_combout\ & ( !\G16|Mux15~0_combout\ & ( (!\G16|Mux13~0_combout\ & (\G16|Mux11~4_combout\ & (!\G16|Mux12~1_combout\ & !\G16|Mux14~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux11~4_combout\,
	datac => \G16|ALT_INV_Mux12~1_combout\,
	datad => \G16|ALT_INV_Mux14~1_combout\,
	datae => \G5|ALT_INV_Equal0~0_combout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G18|SAIDA[0]~2_combout\);

-- Location: LABCELL_X18_Y9_N15
\G17|ram~257\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~257_combout\ = ( \G7|Reg~165_combout\ & ( (\G17|ram~257_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Reg~165_combout\ & ( (!\rtl~0_combout\ & \G17|ram~257_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~0_combout\,
	datac => \G17|ALT_INV_ram~257_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~257_combout\);

-- Location: LABCELL_X16_Y8_N51
\G17|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~161_combout\ = ( \G7|Reg~165_combout\ & ( (\G17|ram~161_combout\) # (\rtl~16_combout\) ) ) # ( !\G7|Reg~165_combout\ & ( (!\rtl~16_combout\ & \G17|ram~161_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~161_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~161_combout\);

-- Location: LABCELL_X16_Y8_N9
\G17|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~177_combout\ = ( \G7|Reg~165_combout\ & ( (\rtl~14_combout\) # (\G17|ram~177_combout\) ) ) # ( !\G7|Reg~165_combout\ & ( (\G17|ram~177_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~177_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~177_combout\);

-- Location: LABCELL_X16_Y8_N48
\G17|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~145_combout\ = ( \G7|Reg~165_combout\ & ( (\G17|ram~145_combout\) # (\rtl~13_combout\) ) ) # ( !\G7|Reg~165_combout\ & ( (!\rtl~13_combout\ & \G17|ram~145_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~13_combout\,
	datac => \G17|ALT_INV_ram~145_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~145_combout\);

-- Location: LABCELL_X16_Y8_N3
\G17|ram~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~129_combout\ = ( \G7|Reg~165_combout\ & ( (\G17|ram~129_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Reg~165_combout\ & ( (!\rtl~15_combout\ & \G17|ram~129_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~15_combout\,
	datad => \G17|ALT_INV_ram~129_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~129_combout\);

-- Location: LABCELL_X16_Y8_N12
\G17|ram~412\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~412_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~129_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~145_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~161_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~177_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~161_combout\,
	datad => \G17|ALT_INV_ram~177_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~145_combout\,
	datag => \G17|ALT_INV_ram~129_combout\,
	combout => \G17|ram~412_combout\);

-- Location: LABCELL_X16_Y8_N33
\G17|ram~225\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~225_combout\ = ( \G7|Reg~165_combout\ & ( (\G17|ram~225_combout\) # (\rtl~8_combout\) ) ) # ( !\G7|Reg~165_combout\ & ( (!\rtl~8_combout\ & \G17|ram~225_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~8_combout\,
	datac => \G17|ALT_INV_ram~225_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~225_combout\);

-- Location: LABCELL_X16_Y8_N30
\G17|ram~241\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~241_combout\ = ( \G7|Reg~165_combout\ & ( (\rtl~6_combout\) # (\G17|ram~241_combout\) ) ) # ( !\G7|Reg~165_combout\ & ( (\G17|ram~241_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~241_combout\,
	datac => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~241_combout\);

-- Location: LABCELL_X16_Y6_N21
\G17|ram~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~209_combout\ = ( \G17|ram~209_combout\ & ( \G7|Reg~165_combout\ ) ) # ( !\G17|ram~209_combout\ & ( \G7|Reg~165_combout\ & ( \rtl~5_combout\ ) ) ) # ( \G17|ram~209_combout\ & ( !\G7|Reg~165_combout\ & ( !\rtl~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~5_combout\,
	datae => \G17|ALT_INV_ram~209_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~209_combout\);

-- Location: LABCELL_X16_Y8_N0
\G17|ram~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~193_combout\ = ( \rtl~7_combout\ & ( \G7|Reg~165_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~193_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~165_combout\,
	datad => \G17|ALT_INV_ram~193_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~193_combout\);

-- Location: LABCELL_X16_Y8_N54
\G17|ram~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~284_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~412_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~412_combout\ & (\G17|ram~193_combout\)) # (\G17|ram~412_combout\ & (((\G17|ram~209_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~412_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~412_combout\ & (\G17|ram~225_combout\)) # (\G17|ram~412_combout\ & (((\G17|ram~241_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000100110001001100011011100110111001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~412_combout\,
	datac => \G17|ALT_INV_ram~225_combout\,
	datad => \G17|ALT_INV_ram~241_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~209_combout\,
	datag => \G17|ALT_INV_ram~193_combout\,
	combout => \G17|ram~284_combout\);

-- Location: LABCELL_X19_Y8_N21
\G17|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~113_combout\ = (!\rtl~2_combout\ & ((\G17|ram~113_combout\))) # (\rtl~2_combout\ & (\G7|Reg~165_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~2_combout\,
	datac => \G7|ALT_INV_Reg~165_combout\,
	datad => \G17|ALT_INV_ram~113_combout\,
	combout => \G17|ram~113_combout\);

-- Location: LABCELL_X19_Y8_N45
\G17|ram~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~97_combout\ = ( \G17|ram~97_combout\ & ( \G7|Reg~165_combout\ ) ) # ( !\G17|ram~97_combout\ & ( \G7|Reg~165_combout\ & ( \rtl~4_combout\ ) ) ) # ( \G17|ram~97_combout\ & ( !\G7|Reg~165_combout\ & ( !\rtl~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~4_combout\,
	datae => \G17|ALT_INV_ram~97_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~97_combout\);

-- Location: LABCELL_X16_Y9_N27
\G17|ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~81_combout\ = ( \rtl~1_combout\ & ( \G7|Reg~165_combout\ ) ) # ( !\rtl~1_combout\ & ( \G7|Reg~165_combout\ & ( \G17|ram~81_combout\ ) ) ) # ( !\rtl~1_combout\ & ( !\G7|Reg~165_combout\ & ( \G17|ram~81_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~81_combout\,
	datae => \ALT_INV_rtl~1_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~81_combout\);

-- Location: LABCELL_X16_Y8_N6
\G17|ram~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~17_combout\ = ( \rtl~9_combout\ & ( \G7|Reg~165_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~165_combout\,
	datac => \G17|ALT_INV_ram~17_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~17_combout\);

-- Location: LABCELL_X16_Y9_N33
\G17|ram~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~33_combout\ = ( \rtl~12_combout\ & ( \G7|Reg~165_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~33_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~33_combout\,
	datac => \G7|ALT_INV_Reg~165_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~33_combout\);

-- Location: LABCELL_X16_Y8_N45
\G17|ram~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~49_combout\ = ( \G7|Reg~165_combout\ & ( (\rtl~10_combout\) # (\G17|ram~49_combout\) ) ) # ( !\G7|Reg~165_combout\ & ( (\G17|ram~49_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~49_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Reg~165_combout\,
	combout => \G17|ram~49_combout\);

-- Location: MLABCELL_X15_Y9_N18
\G17|ram~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~1_combout\ = ( \rtl~11_combout\ & ( \G7|Reg~165_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~165_combout\,
	datac => \G17|ALT_INV_ram~1_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~1_combout\);

-- Location: LABCELL_X16_Y8_N36
\G17|ram~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~408_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~1_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~17_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (\G17|ram~33_combout\ & ((!\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\) # (\G17|ram~49_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~17_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~33_combout\,
	datad => \G17|ALT_INV_ram~49_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~1_combout\,
	combout => \G17|ram~408_combout\);

-- Location: MLABCELL_X15_Y9_N33
\G17|ram~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~65_combout\ = ( \rtl~3_combout\ & ( \G7|Reg~165_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~65_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~65_combout\,
	datac => \G7|ALT_INV_Reg~165_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~65_combout\);

-- Location: LABCELL_X16_Y8_N18
\G17|ram~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~280_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~408_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~408_combout\ & (\G17|ram~65_combout\)) # (\G17|ram~408_combout\ & ((\G17|ram~81_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~408_combout\))))) # (\G16|Mux13~0_combout\ & (((!\G17|ram~408_combout\ & ((\G17|ram~97_combout\))) # (\G17|ram~408_combout\ & (\G17|ram~113_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~113_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~97_combout\,
	datad => \G17|ALT_INV_ram~81_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~408_combout\,
	datag => \G17|ALT_INV_ram~65_combout\,
	combout => \G17|ram~280_combout\);

-- Location: LABCELL_X16_Y8_N24
\G18|SAIDA[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~4_combout\ = ( \G17|ram~284_combout\ & ( \G17|ram~280_combout\ & ( (((\G18|SAIDA[0]~2_combout\ & \G17|ram~257_combout\)) # (\G18|SAIDA[0]~0_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( !\G17|ram~284_combout\ & ( \G17|ram~280_combout\ & 
-- ( ((\G18|SAIDA[0]~2_combout\ & \G17|ram~257_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G17|ram~284_combout\ & ( !\G17|ram~280_combout\ & ( ((\G18|SAIDA[0]~2_combout\ & \G17|ram~257_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( 
-- !\G17|ram~284_combout\ & ( !\G17|ram~280_combout\ & ( (\G18|SAIDA[0]~2_combout\ & \G17|ram~257_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datab => \G17|ALT_INV_ram~257_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datad => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datae => \G17|ALT_INV_ram~284_combout\,
	dataf => \G17|ALT_INV_ram~280_combout\,
	combout => \G18|SAIDA[1]~4_combout\);

-- Location: FF_X16_Y8_N8
\G7|Reg~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[1]~4_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~21_q\);

-- Location: FF_X16_Y8_N35
\G7|Reg~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[1]~4_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~37_q\);

-- Location: LABCELL_X16_Y8_N42
\G7|Reg~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~165_combout\ = ( \G7|Reg~37_q\ & ( (\G4|rt[0]~en_q\ & ((\G4|rt[0]~reg0_q\) # (\G7|Reg~21_q\))) ) ) # ( !\G7|Reg~37_q\ & ( (\G7|Reg~21_q\ & (\G4|rt[0]~en_q\ & !\G4|rt[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~21_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datad => \G4|ALT_INV_rt[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~37_q\,
	combout => \G7|Reg~165_combout\);

-- Location: LABCELL_X16_Y6_N57
\G16|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~0_combout\ = ( \G7|Reg~21_q\ & ( (\G4|tipoi[0]~en_q\ & ((!\G4|rd[0]~en_q\) # (\G4|rd[0]~reg0_q\))) ) ) # ( !\G7|Reg~21_q\ & ( \G4|tipoi[0]~en_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datad => \G4|ALT_INV_tipoi[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~21_q\,
	combout => \G16|Mux14~0_combout\);

-- Location: LABCELL_X18_Y7_N12
\G16|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~1_combout\ = ( \G16|Mux14~0_combout\ & ( \G16|Add1~13_sumout\ & ( (\G16|Mux12~0_combout\ & (!\G4|funct[2]~reg0_q\ & ((\G16|Add0~13_sumout\) # (\G4|funct[0]~reg0_q\)))) ) ) ) # ( !\G16|Mux14~0_combout\ & ( \G16|Add1~13_sumout\ & ( 
-- (\G16|Mux12~0_combout\ & ((!\G4|funct[0]~reg0_q\ & ((\G16|Add0~13_sumout\) # (\G4|funct[2]~reg0_q\))) # (\G4|funct[0]~reg0_q\ & (!\G4|funct[2]~reg0_q\)))) ) ) ) # ( \G16|Mux14~0_combout\ & ( !\G16|Add1~13_sumout\ & ( (!\G4|funct[0]~reg0_q\ & 
-- (\G16|Mux12~0_combout\ & (!\G4|funct[2]~reg0_q\ & \G16|Add0~13_sumout\))) ) ) ) # ( !\G16|Mux14~0_combout\ & ( !\G16|Add1~13_sumout\ & ( (!\G4|funct[0]~reg0_q\ & (\G16|Mux12~0_combout\ & ((\G16|Add0~13_sumout\) # (\G4|funct[2]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000000010000000010010001100100001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[0]~reg0_q\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G4|ALT_INV_funct[2]~reg0_q\,
	datad => \G16|ALT_INV_Add0~13_sumout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Add1~13_sumout\,
	combout => \G16|Mux14~1_combout\);

-- Location: LABCELL_X17_Y8_N3
\G17|ram~260\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~260_combout\ = ( \G7|Reg~168_combout\ & ( (\G17|ram~260_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Reg~168_combout\ & ( (!\rtl~0_combout\ & \G17|ram~260_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~260_combout\,
	dataf => \G7|ALT_INV_Reg~168_combout\,
	combout => \G17|ram~260_combout\);

-- Location: LABCELL_X17_Y8_N54
\G18|SAIDA[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[4]~8_combout\ = ( !\G16|Mux15~0_combout\ & ( (!\G16|Mux14~1_combout\ & (!\G16|Mux13~0_combout\ & \G17|ram~260_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Mux13~0_combout\,
	datad => \G17|ALT_INV_ram~260_combout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G18|SAIDA[4]~8_combout\);

-- Location: LABCELL_X17_Y8_N48
\G17|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~148_combout\ = ( \rtl~13_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~148_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~168_combout\,
	datac => \G17|ALT_INV_ram~148_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~148_combout\);

-- Location: LABCELL_X17_Y8_N0
\G17|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~164_combout\ = ( \rtl~16_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~164_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~164_combout\,
	datab => \G7|ALT_INV_Reg~168_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~164_combout\);

-- Location: LABCELL_X17_Y8_N51
\G17|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~180_combout\ = ( \rtl~14_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~180_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~180_combout\,
	datac => \G7|ALT_INV_Reg~168_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~180_combout\);

-- Location: LABCELL_X17_Y8_N57
\G17|ram~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~132_combout\ = ( \G7|Reg~168_combout\ & ( (\rtl~15_combout\) # (\G17|ram~132_combout\) ) ) # ( !\G7|Reg~168_combout\ & ( (\G17|ram~132_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~132_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Reg~168_combout\,
	combout => \G17|ram~132_combout\);

-- Location: LABCELL_X17_Y8_N12
\G17|ram~436\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~436_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~132_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~148_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (\G17|ram~164_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~0_combout\ & (((\G17|ram~180_combout\) # (\G16|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~148_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~164_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~180_combout\,
	datag => \G17|ALT_INV_ram~132_combout\,
	combout => \G17|ram~436_combout\);

-- Location: LABCELL_X17_Y8_N36
\G17|ram~228\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~228_combout\ = ( \rtl~8_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~228_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~168_combout\,
	datad => \G17|ALT_INV_ram~228_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~228_combout\);

-- Location: LABCELL_X17_Y8_N27
\G17|ram~212\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~212_combout\ = ( \rtl~5_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~212_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~168_combout\,
	datad => \G17|ALT_INV_ram~212_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~212_combout\);

-- Location: LABCELL_X17_Y8_N30
\G17|ram~244\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~244_combout\ = ( \G7|Reg~168_combout\ & ( (\rtl~6_combout\) # (\G17|ram~244_combout\) ) ) # ( !\G7|Reg~168_combout\ & ( (\G17|ram~244_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~244_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Reg~168_combout\,
	combout => \G17|ram~244_combout\);

-- Location: LABCELL_X17_Y8_N33
\G17|ram~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~196_combout\ = ( \G7|Reg~168_combout\ & ( (\G17|ram~196_combout\) # (\rtl~7_combout\) ) ) # ( !\G7|Reg~168_combout\ & ( (!\rtl~7_combout\ & \G17|ram~196_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~7_combout\,
	datad => \G17|ALT_INV_ram~196_combout\,
	dataf => \G7|ALT_INV_Reg~168_combout\,
	combout => \G17|ram~196_combout\);

-- Location: LABCELL_X17_Y8_N42
\G17|ram~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~308_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~436_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~436_combout\ & (\G17|ram~196_combout\)) # (\G17|ram~436_combout\ & (((\G17|ram~212_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~436_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~436_combout\ & (\G17|ram~228_combout\)) # (\G17|ram~436_combout\ & (((\G17|ram~244_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~436_combout\,
	datac => \G17|ALT_INV_ram~228_combout\,
	datad => \G17|ALT_INV_ram~212_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~244_combout\,
	datag => \G17|ALT_INV_ram~196_combout\,
	combout => \G17|ram~308_combout\);

-- Location: LABCELL_X18_Y8_N30
\G17|ram~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~116_combout\ = ( \G7|Reg~168_combout\ & ( (\rtl~2_combout\) # (\G17|ram~116_combout\) ) ) # ( !\G7|Reg~168_combout\ & ( (\G17|ram~116_combout\ & !\rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~116_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G7|ALT_INV_Reg~168_combout\,
	combout => \G17|ram~116_combout\);

-- Location: LABCELL_X18_Y8_N3
\G17|ram~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~52_combout\ = ( \rtl~10_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~52_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~52_combout\,
	datab => \G7|ALT_INV_Reg~168_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~52_combout\);

-- Location: LABCELL_X18_Y8_N24
\G17|ram~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~36_combout\ = ( \rtl~12_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~168_combout\,
	datac => \G17|ALT_INV_ram~36_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~36_combout\);

-- Location: LABCELL_X18_Y8_N18
\G17|ram~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~20_combout\ = ( \rtl~9_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~20_combout\,
	datab => \G7|ALT_INV_Reg~168_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~20_combout\);

-- Location: LABCELL_X17_Y8_N6
\G17|ram~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~4_combout\ = ( \G7|Reg~168_combout\ & ( (\rtl~11_combout\) # (\G17|ram~4_combout\) ) ) # ( !\G7|Reg~168_combout\ & ( (\G17|ram~4_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~4_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G7|ALT_INV_Reg~168_combout\,
	combout => \G17|ram~4_combout\);

-- Location: LABCELL_X18_Y8_N6
\G17|ram~432\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~432_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~0_combout\ & (\G17|ram~4_combout\ & ((!\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\) # (\G17|ram~20_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~36_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~52_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~52_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~36_combout\,
	datad => \G17|ALT_INV_ram~20_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~4_combout\,
	combout => \G17|ram~432_combout\);

-- Location: LABCELL_X18_Y8_N21
\G17|ram~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~100_combout\ = ( \rtl~4_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~100_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~168_combout\,
	datad => \G17|ALT_INV_ram~100_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~100_combout\);

-- Location: LABCELL_X17_Y8_N24
\G17|ram~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~84_combout\ = ( \rtl~1_combout\ & ( \G7|Reg~168_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~84_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~168_combout\,
	datac => \G17|ALT_INV_ram~84_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~84_combout\);

-- Location: LABCELL_X17_Y8_N9
\G17|ram~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~68_combout\ = ( \G7|Reg~168_combout\ & ( (\rtl~3_combout\) # (\G17|ram~68_combout\) ) ) # ( !\G7|Reg~168_combout\ & ( (\G17|ram~68_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~68_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G7|ALT_INV_Reg~168_combout\,
	combout => \G17|ram~68_combout\);

-- Location: LABCELL_X18_Y8_N48
\G17|ram~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~304_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G17|ram~432_combout\ & (\G17|ram~68_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~432_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~84_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~432_combout\ & (((\G17|ram~100_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~432_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~116_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~116_combout\,
	datab => \G17|ALT_INV_ram~432_combout\,
	datac => \G17|ALT_INV_ram~100_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~84_combout\,
	datag => \G17|ALT_INV_ram~68_combout\,
	combout => \G17|ram~304_combout\);

-- Location: LABCELL_X17_Y8_N21
\G18|SAIDA[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[4]~9_combout\ = ( \G16|Mux11~4_combout\ & ( \G17|ram~304_combout\ & ( (!\G5|Equal0~0_combout\) # ((\G18|SAIDA[4]~8_combout\ & !\G16|Mux12~1_combout\)) ) ) ) # ( !\G16|Mux11~4_combout\ & ( \G17|ram~304_combout\ & ( (\G5|Equal0~0_combout\ & 
-- ((!\G16|Mux12~1_combout\) # (\G17|ram~308_combout\))) ) ) ) # ( \G16|Mux11~4_combout\ & ( !\G17|ram~304_combout\ & ( (!\G5|Equal0~0_combout\) # ((\G18|SAIDA[4]~8_combout\ & !\G16|Mux12~1_combout\)) ) ) ) # ( !\G16|Mux11~4_combout\ & ( 
-- !\G17|ram~304_combout\ & ( (\G17|ram~308_combout\ & (\G5|Equal0~0_combout\ & \G16|Mux12~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111101011111000000001111000000111111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[4]~8_combout\,
	datab => \G17|ALT_INV_ram~308_combout\,
	datac => \G5|ALT_INV_Equal0~0_combout\,
	datad => \G16|ALT_INV_Mux12~1_combout\,
	datae => \G16|ALT_INV_Mux11~4_combout\,
	dataf => \G17|ALT_INV_ram~304_combout\,
	combout => \G18|SAIDA[4]~9_combout\);

-- Location: FF_X17_Y8_N2
\G7|Reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[4]~9_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~24_q\);

-- Location: FF_X17_Y8_N20
\G7|Reg~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[4]~9_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~40_q\);

-- Location: LABCELL_X17_Y8_N39
\G7|Reg~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~168_combout\ = ( \G7|Reg~40_q\ & ( (\G4|rt[0]~en_q\ & ((\G4|rt[0]~reg0_q\) # (\G7|Reg~24_q\))) ) ) # ( !\G7|Reg~40_q\ & ( (\G7|Reg~24_q\ & (\G4|rt[0]~en_q\ & !\G4|rt[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~24_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datad => \G4|ALT_INV_rt[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~40_q\,
	combout => \G7|Reg~168_combout\);

-- Location: LABCELL_X16_Y7_N21
\G16|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~1_sumout\ = SUM(( \G7|Reg~152_combout\ ) + ( (!\G5|Equal0~0_combout\ & (!\G7|Reg~168_combout\)) # (\G5|Equal0~0_combout\ & ((\G4|tipoi[3]~6_combout\))) ) + ( \G16|Add1~6\ ))
-- \G16|Add1~2\ = CARRY(( \G7|Reg~152_combout\ ) + ( (!\G5|Equal0~0_combout\ & (!\G7|Reg~168_combout\)) # (\G5|Equal0~0_combout\ & ((\G4|tipoi[3]~6_combout\))) ) + ( \G16|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~168_combout\,
	datad => \G7|ALT_INV_Reg~152_combout\,
	dataf => \G4|ALT_INV_tipoi[3]~6_combout\,
	cin => \G16|Add1~6\,
	sumout => \G16|Add1~1_sumout\,
	cout => \G16|Add1~2\);

-- Location: LABCELL_X19_Y7_N0
\G18|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~0_combout\ = ( !\G16|Mux11~3_combout\ & ( (\G5|Equal0~0_combout\ & (!\G16|Mux12~1_combout\ & ((!\G16|Add1~1_sumout\) # (!\G16|Mux11~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000100000001100000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~1_sumout\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G16|ALT_INV_Mux12~1_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	dataf => \G16|ALT_INV_Mux11~3_combout\,
	combout => \G18|SAIDA[0]~0_combout\);

-- Location: MLABCELL_X15_Y7_N57
\G17|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~176_combout\ = ( \G7|Reg~164_combout\ & ( (\G17|ram~176_combout\) # (\rtl~14_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (!\rtl~14_combout\ & \G17|ram~176_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~14_combout\,
	datad => \G17|ALT_INV_ram~176_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~176_combout\);

-- Location: LABCELL_X13_Y7_N54
\G17|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~160_combout\ = ( \rtl~16_combout\ & ( \G7|Reg~164_combout\ ) ) # ( !\rtl~16_combout\ & ( \G7|Reg~164_combout\ & ( \G17|ram~160_combout\ ) ) ) # ( !\rtl~16_combout\ & ( !\G7|Reg~164_combout\ & ( \G17|ram~160_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~160_combout\,
	datae => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~160_combout\);

-- Location: LABCELL_X13_Y7_N24
\G17|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~144_combout\ = ( \rtl~13_combout\ & ( \G7|Reg~164_combout\ ) ) # ( !\rtl~13_combout\ & ( \G7|Reg~164_combout\ & ( \G17|ram~144_combout\ ) ) ) # ( !\rtl~13_combout\ & ( !\G7|Reg~164_combout\ & ( \G17|ram~144_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~144_combout\,
	datae => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~144_combout\);

-- Location: MLABCELL_X15_Y7_N51
\G17|ram~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~128_combout\ = ( \G7|Reg~164_combout\ & ( (\rtl~15_combout\) # (\G17|ram~128_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (\G17|ram~128_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~128_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~128_combout\);

-- Location: MLABCELL_X15_Y7_N6
\G17|ram~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~404_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (((!\G16|Mux15~0_combout\ & (\G17|ram~128_combout\)) # (\G16|Mux15~0_combout\ & ((\G17|ram~144_combout\)))))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~0_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (((!\G16|Mux15~0_combout\ & ((\G17|ram~160_combout\))) # (\G16|Mux15~0_combout\ & (\G17|ram~176_combout\))))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001010101111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~176_combout\,
	datac => \G17|ALT_INV_ram~160_combout\,
	datad => \G17|ALT_INV_ram~144_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	datag => \G17|ALT_INV_ram~128_combout\,
	combout => \G17|ram~404_combout\);

-- Location: LABCELL_X19_Y7_N15
\G17|ram~224\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~224_combout\ = ( \G7|Reg~164_combout\ & ( (\G17|ram~224_combout\) # (\rtl~8_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (!\rtl~8_combout\ & \G17|ram~224_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~8_combout\,
	datac => \G17|ALT_INV_ram~224_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~224_combout\);

-- Location: MLABCELL_X15_Y6_N36
\G17|ram~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~208_combout\ = ( \rtl~5_combout\ & ( \G7|Reg~164_combout\ ) ) # ( !\rtl~5_combout\ & ( \G7|Reg~164_combout\ & ( \G17|ram~208_combout\ ) ) ) # ( !\rtl~5_combout\ & ( !\G7|Reg~164_combout\ & ( \G17|ram~208_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~208_combout\,
	datae => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~208_combout\);

-- Location: MLABCELL_X15_Y7_N27
\G17|ram~240\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~240_combout\ = ( \rtl~6_combout\ & ( \G7|Reg~164_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~240_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~164_combout\,
	datad => \G17|ALT_INV_ram~240_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~240_combout\);

-- Location: LABCELL_X19_Y7_N6
\G17|ram~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~192_combout\ = ( \G7|Reg~164_combout\ & ( (\rtl~7_combout\) # (\G17|ram~192_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (\G17|ram~192_combout\ & !\rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~192_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~192_combout\);

-- Location: MLABCELL_X15_Y7_N30
\G17|ram~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~276_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~404_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~404_combout\ & (\G17|ram~192_combout\)) # (\G17|ram~404_combout\ & (((\G17|ram~208_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~404_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~404_combout\ & (\G17|ram~224_combout\)) # (\G17|ram~404_combout\ & (((\G17|ram~240_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~404_combout\,
	datac => \G17|ALT_INV_ram~224_combout\,
	datad => \G17|ALT_INV_ram~208_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~240_combout\,
	datag => \G17|ALT_INV_ram~192_combout\,
	combout => \G17|ram~276_combout\);

-- Location: LABCELL_X18_Y9_N12
\G17|ram~256\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~256_combout\ = ( \G17|ram~256_combout\ & ( (!\rtl~0_combout\) # (\G7|Reg~164_combout\) ) ) # ( !\G17|ram~256_combout\ & ( (\G7|Reg~164_combout\ & \rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~164_combout\,
	datab => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~256_combout\,
	combout => \G17|ram~256_combout\);

-- Location: MLABCELL_X15_Y7_N48
\G17|ram~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~80_combout\ = ( \G17|ram~80_combout\ & ( (!\rtl~1_combout\) # (\G7|Reg~164_combout\) ) ) # ( !\G17|ram~80_combout\ & ( (\G7|Reg~164_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~164_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~80_combout\,
	combout => \G17|ram~80_combout\);

-- Location: MLABCELL_X15_Y7_N36
\G17|ram~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~16_combout\ = ( \G7|Reg~164_combout\ & ( (\rtl~9_combout\) # (\G17|ram~16_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (\G17|ram~16_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~16_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~16_combout\);

-- Location: MLABCELL_X15_Y7_N54
\G17|ram~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~32_combout\ = ( \G7|Reg~164_combout\ & ( (\G17|ram~32_combout\) # (\rtl~12_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (!\rtl~12_combout\ & \G17|ram~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~12_combout\,
	datad => \G17|ALT_INV_ram~32_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~32_combout\);

-- Location: MLABCELL_X15_Y7_N0
\G17|ram~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~48_combout\ = ( \G7|Reg~164_combout\ & ( (\G17|ram~48_combout\) # (\rtl~10_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (!\rtl~10_combout\ & \G17|ram~48_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~10_combout\,
	datad => \G17|ALT_INV_ram~48_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~48_combout\);

-- Location: MLABCELL_X15_Y7_N3
\G17|ram~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~0_combout\ = ( \G7|Reg~164_combout\ & ( (\G17|ram~0_combout\) # (\rtl~11_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (!\rtl~11_combout\ & \G17|ram~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~11_combout\,
	datad => \G17|ALT_INV_ram~0_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~0_combout\);

-- Location: MLABCELL_X15_Y7_N42
\G17|ram~400\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~400_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~0_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~16_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (\G17|ram~32_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~0_combout\ & (((\G17|ram~48_combout\) # (\G16|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~16_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~32_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~48_combout\,
	datag => \G17|ALT_INV_ram~0_combout\,
	combout => \G17|ram~400_combout\);

-- Location: LABCELL_X18_Y8_N33
\G17|ram~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~96_combout\ = ( \G7|Reg~164_combout\ & ( (\rtl~4_combout\) # (\G17|ram~96_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (\G17|ram~96_combout\ & !\rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~96_combout\,
	datac => \ALT_INV_rtl~4_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~96_combout\);

-- Location: MLABCELL_X15_Y7_N39
\G17|ram~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~112_combout\ = ( \G17|ram~112_combout\ & ( (!\rtl~2_combout\) # (\G7|Reg~164_combout\) ) ) # ( !\G17|ram~112_combout\ & ( (\G7|Reg~164_combout\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~164_combout\,
	datac => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~112_combout\,
	combout => \G17|ram~112_combout\);

-- Location: LABCELL_X18_Y9_N21
\G17|ram~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~64_combout\ = ( \G7|Reg~164_combout\ & ( (\G17|ram~64_combout\) # (\rtl~3_combout\) ) ) # ( !\G7|Reg~164_combout\ & ( (!\rtl~3_combout\ & \G17|ram~64_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~3_combout\,
	datad => \G17|ALT_INV_ram~64_combout\,
	dataf => \G7|ALT_INV_Reg~164_combout\,
	combout => \G17|ram~64_combout\);

-- Location: MLABCELL_X15_Y7_N18
\G17|ram~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~272_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~400_combout\ & (((\G17|ram~64_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~400_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~80_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~400_combout\ & (\G17|ram~96_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~400_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~112_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~80_combout\,
	datab => \G17|ALT_INV_ram~400_combout\,
	datac => \G17|ALT_INV_ram~96_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~112_combout\,
	datag => \G17|ALT_INV_ram~64_combout\,
	combout => \G17|ram~272_combout\);

-- Location: MLABCELL_X15_Y7_N15
\G18|SAIDA[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~3_combout\ = ( \G18|SAIDA[0]~2_combout\ & ( \G17|ram~272_combout\ & ( (((\G18|SAIDA[0]~1_combout\ & \G17|ram~276_combout\)) # (\G17|ram~256_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( !\G18|SAIDA[0]~2_combout\ & ( \G17|ram~272_combout\ 
-- & ( ((\G18|SAIDA[0]~1_combout\ & \G17|ram~276_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G18|SAIDA[0]~2_combout\ & ( !\G17|ram~272_combout\ & ( ((\G18|SAIDA[0]~1_combout\ & \G17|ram~276_combout\)) # (\G17|ram~256_combout\) ) ) ) # ( 
-- !\G18|SAIDA[0]~2_combout\ & ( !\G17|ram~272_combout\ & ( (\G18|SAIDA[0]~1_combout\ & \G17|ram~276_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111111111101010111010101110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datac => \G17|ALT_INV_ram~276_combout\,
	datad => \G17|ALT_INV_ram~256_combout\,
	datae => \G18|ALT_INV_SAIDA[0]~2_combout\,
	dataf => \G17|ALT_INV_ram~272_combout\,
	combout => \G18|SAIDA[0]~3_combout\);

-- Location: FF_X15_Y7_N14
\G7|Reg~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[0]~3_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~20_q\);

-- Location: LABCELL_X17_Y7_N57
\G7|Reg~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~148_combout\ = ( \G4|rd[0]~en_q\ & ( (\G7|Reg~20_q\ & !\G4|rd[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~20_q\,
	datad => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G4|ALT_INV_rd[0]~en_q\,
	combout => \G7|Reg~148_combout\);

-- Location: FF_X19_Y6_N25
\G7|Reg~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[5]~10_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~41_q\);

-- Location: LABCELL_X19_Y6_N12
\G7|Reg~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~169_combout\ = ( \G7|Reg~41_q\ & ( (\G4|rt[0]~en_q\ & ((\G7|Reg~25_q\) # (\G4|rt[0]~reg0_q\))) ) ) # ( !\G7|Reg~41_q\ & ( (!\G4|rt[0]~reg0_q\ & (\G4|rt[0]~en_q\ & \G7|Reg~25_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datad => \G7|ALT_INV_Reg~25_q\,
	dataf => \G7|ALT_INV_Reg~41_q\,
	combout => \G7|Reg~169_combout\);

-- Location: LABCELL_X18_Y9_N30
\G17|ram~261\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~261_combout\ = ( \G17|ram~261_combout\ & ( (!\rtl~0_combout\) # (\G7|Reg~169_combout\) ) ) # ( !\G17|ram~261_combout\ & ( (\rtl~0_combout\ & \G7|Reg~169_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~0_combout\,
	datad => \G7|ALT_INV_Reg~169_combout\,
	dataf => \G17|ALT_INV_ram~261_combout\,
	combout => \G17|ram~261_combout\);

-- Location: LABCELL_X19_Y6_N36
\G17|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~165_combout\ = ( \rtl~16_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~165_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~169_combout\,
	datac => \G17|ALT_INV_ram~165_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~165_combout\);

-- Location: LABCELL_X19_Y6_N39
\G17|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~181_combout\ = ( \rtl~14_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~181_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~181_combout\,
	datac => \G7|ALT_INV_Reg~169_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~181_combout\);

-- Location: LABCELL_X19_Y6_N21
\G17|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~149_combout\ = ( \rtl~13_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~149_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~169_combout\,
	datad => \G17|ALT_INV_ram~149_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~149_combout\);

-- Location: LABCELL_X18_Y6_N48
\G17|ram~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~133_combout\ = ( \G7|Reg~169_combout\ & ( (\G17|ram~133_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Reg~169_combout\ & ( (!\rtl~15_combout\ & \G17|ram~133_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~15_combout\,
	datac => \G17|ALT_INV_ram~133_combout\,
	dataf => \G7|ALT_INV_Reg~169_combout\,
	combout => \G17|ram~133_combout\);

-- Location: LABCELL_X19_Y6_N0
\G17|ram~444\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~444_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~133_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~149_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~165_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~181_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~165_combout\,
	datad => \G17|ALT_INV_ram~181_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~149_combout\,
	datag => \G17|ALT_INV_ram~133_combout\,
	combout => \G17|ram~444_combout\);

-- Location: LABCELL_X19_Y6_N6
\G17|ram~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~213_combout\ = ( \rtl~5_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~213_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~213_combout\,
	datac => \G7|ALT_INV_Reg~169_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~213_combout\);

-- Location: LABCELL_X19_Y7_N57
\G17|ram~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~229_combout\ = ( \G7|Reg~169_combout\ & ( (\rtl~8_combout\) # (\G17|ram~229_combout\) ) ) # ( !\G7|Reg~169_combout\ & ( (\G17|ram~229_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~229_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Reg~169_combout\,
	combout => \G17|ram~229_combout\);

-- Location: LABCELL_X19_Y6_N48
\G17|ram~245\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~245_combout\ = ( \G7|Reg~169_combout\ & ( (\rtl~6_combout\) # (\G17|ram~245_combout\) ) ) # ( !\G7|Reg~169_combout\ & ( (\G17|ram~245_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~245_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Reg~169_combout\,
	combout => \G17|ram~245_combout\);

-- Location: LABCELL_X19_Y8_N39
\G17|ram~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~197_combout\ = ( \rtl~7_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~197_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~169_combout\,
	datac => \G17|ALT_INV_ram~197_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~197_combout\);

-- Location: LABCELL_X19_Y6_N54
\G17|ram~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~316_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~444_combout\ & (((\G17|ram~197_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~444_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~213_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~444_combout\ & (((\G17|ram~229_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~444_combout\ & ((((!\G16|Mux13~0_combout\) # (\G17|ram~245_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~444_combout\,
	datab => \G17|ALT_INV_ram~213_combout\,
	datac => \G17|ALT_INV_ram~229_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~245_combout\,
	datag => \G17|ALT_INV_ram~197_combout\,
	combout => \G17|ram~316_combout\);

-- Location: LABCELL_X18_Y8_N15
\G17|ram~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~37_combout\ = ( \rtl~12_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~37_combout\,
	datad => \G7|ALT_INV_Reg~169_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~37_combout\);

-- Location: LABCELL_X18_Y8_N0
\G17|ram~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~21_combout\ = ( \rtl~9_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~169_combout\,
	datad => \G17|ALT_INV_ram~21_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~21_combout\);

-- Location: LABCELL_X18_Y6_N18
\G17|ram~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~53_combout\ = ( \rtl~10_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~53_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~169_combout\,
	datac => \G17|ALT_INV_ram~53_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~53_combout\);

-- Location: LABCELL_X19_Y6_N9
\G17|ram~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~5_combout\ = ( \rtl~11_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~169_combout\,
	datac => \G17|ALT_INV_ram~5_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~5_combout\);

-- Location: LABCELL_X19_Y6_N42
\G17|ram~440\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~440_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~5_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~21_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~37_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~53_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~37_combout\,
	datad => \G17|ALT_INV_ram~21_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~53_combout\,
	datag => \G17|ALT_INV_ram~5_combout\,
	combout => \G17|ram~440_combout\);

-- Location: LABCELL_X19_Y6_N15
\G17|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~101_combout\ = ( \rtl~4_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~101_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~169_combout\,
	datac => \G17|ALT_INV_ram~101_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~101_combout\);

-- Location: LABCELL_X19_Y6_N18
\G17|ram~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~117_combout\ = ( \rtl~2_combout\ & ( \G7|Reg~169_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~117_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~117_combout\,
	datac => \G7|ALT_INV_Reg~169_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~117_combout\);

-- Location: LABCELL_X18_Y6_N3
\G17|ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~85_combout\ = ( \G17|ram~85_combout\ & ( \rtl~1_combout\ & ( \G7|Reg~169_combout\ ) ) ) # ( !\G17|ram~85_combout\ & ( \rtl~1_combout\ & ( \G7|Reg~169_combout\ ) ) ) # ( \G17|ram~85_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~169_combout\,
	datae => \G17|ALT_INV_ram~85_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~85_combout\);

-- Location: LABCELL_X19_Y6_N51
\G17|ram~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~69_combout\ = ( \G17|ram~69_combout\ & ( (!\rtl~3_combout\) # (\G7|Reg~169_combout\) ) ) # ( !\G17|ram~69_combout\ & ( (\G7|Reg~169_combout\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~169_combout\,
	datac => \ALT_INV_rtl~3_combout\,
	dataf => \G17|ALT_INV_ram~69_combout\,
	combout => \G17|ram~69_combout\);

-- Location: LABCELL_X19_Y6_N30
\G17|ram~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~312_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~440_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~440_combout\ & (\G17|ram~69_combout\)) # (\G17|ram~440_combout\ & (((\G17|ram~85_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~440_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~440_combout\ & (\G17|ram~101_combout\)) # (\G17|ram~440_combout\ & (((\G17|ram~117_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000100110001001100011011100110111001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~440_combout\,
	datac => \G17|ALT_INV_ram~101_combout\,
	datad => \G17|ALT_INV_ram~117_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~85_combout\,
	datag => \G17|ALT_INV_ram~69_combout\,
	combout => \G17|ram~312_combout\);

-- Location: LABCELL_X19_Y6_N27
\G18|SAIDA[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[5]~10_combout\ = ( \G17|ram~316_combout\ & ( \G17|ram~312_combout\ & ( (((\G17|ram~261_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~0_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( !\G17|ram~316_combout\ & ( \G17|ram~312_combout\ & 
-- ( ((\G17|ram~261_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G17|ram~316_combout\ & ( !\G17|ram~312_combout\ & ( ((\G17|ram~261_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( 
-- !\G17|ram~316_combout\ & ( !\G17|ram~312_combout\ & ( (\G17|ram~261_combout\ & \G18|SAIDA[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101111100110011001111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G17|ALT_INV_ram~261_combout\,
	datad => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datae => \G17|ALT_INV_ram~316_combout\,
	dataf => \G17|ALT_INV_ram~312_combout\,
	combout => \G18|SAIDA[5]~10_combout\);

-- Location: FF_X19_Y6_N13
\G7|Reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[5]~10_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~25_q\);

-- Location: LABCELL_X17_Y4_N21
\G7|Reg~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~153_combout\ = ( !\G4|rd[0]~reg0_q\ & ( (\G4|rd[0]~en_q\ & \G7|Reg~25_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G7|ALT_INV_Reg~25_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~153_combout\);

-- Location: FF_X19_Y5_N56
\G7|Reg~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[6]~11_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~42_q\);

-- Location: LABCELL_X19_Y5_N27
\G7|Reg~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~170_combout\ = ( \G4|rt[0]~en_q\ & ( (!\G4|rt[0]~reg0_q\ & ((\G7|Reg~26_q\))) # (\G4|rt[0]~reg0_q\ & (\G7|Reg~42_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~42_q\,
	datac => \G4|ALT_INV_rt[0]~reg0_q\,
	datad => \G7|ALT_INV_Reg~26_q\,
	dataf => \G4|ALT_INV_rt[0]~en_q\,
	combout => \G7|Reg~170_combout\);

-- Location: LABCELL_X19_Y5_N48
\G17|ram~262\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~262_combout\ = ( \G7|Reg~170_combout\ & ( (\rtl~0_combout\) # (\G17|ram~262_combout\) ) ) # ( !\G7|Reg~170_combout\ & ( (\G17|ram~262_combout\ & !\rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~262_combout\,
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \G7|ALT_INV_Reg~170_combout\,
	combout => \G17|ram~262_combout\);

-- Location: LABCELL_X19_Y7_N42
\G17|ram~246\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~246_combout\ = ( \rtl~6_combout\ & ( \G7|Reg~170_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~246_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~246_combout\,
	datac => \G7|ALT_INV_Reg~170_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~246_combout\);

-- Location: LABCELL_X19_Y5_N24
\G17|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~150_combout\ = ( \rtl~13_combout\ & ( \G7|Reg~170_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~150_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~170_combout\,
	datac => \G17|ALT_INV_ram~150_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~150_combout\);

-- Location: LABCELL_X19_Y5_N6
\G17|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~166_combout\ = ( \rtl~16_combout\ & ( \G7|Reg~170_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~166_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~170_combout\,
	datad => \G17|ALT_INV_ram~166_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~166_combout\);

-- Location: MLABCELL_X21_Y5_N51
\G17|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~182_combout\ = ( \rtl~14_combout\ & ( \G7|Reg~170_combout\ ) ) # ( !\rtl~14_combout\ & ( \G7|Reg~170_combout\ & ( \G17|ram~182_combout\ ) ) ) # ( !\rtl~14_combout\ & ( !\G7|Reg~170_combout\ & ( \G17|ram~182_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~182_combout\,
	datae => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Reg~170_combout\,
	combout => \G17|ram~182_combout\);

-- Location: LABCELL_X18_Y6_N39
\G17|ram~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~134_combout\ = ( \G7|Reg~170_combout\ & ( (\G17|ram~134_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Reg~170_combout\ & ( (!\rtl~15_combout\ & \G17|ram~134_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~15_combout\,
	datac => \G17|ALT_INV_ram~134_combout\,
	dataf => \G7|ALT_INV_Reg~170_combout\,
	combout => \G17|ram~134_combout\);

-- Location: LABCELL_X19_Y5_N30
\G17|ram~452\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~452_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~134_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~150_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (\G17|ram~166_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~0_combout\ & (((\G17|ram~182_combout\) # (\G16|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~150_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~166_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~182_combout\,
	datag => \G17|ALT_INV_ram~134_combout\,
	combout => \G17|ram~452_combout\);

-- Location: LABCELL_X18_Y7_N0
\G17|ram~230\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~230_combout\ = ( \G7|Reg~170_combout\ & ( (\rtl~8_combout\) # (\G17|ram~230_combout\) ) ) # ( !\G7|Reg~170_combout\ & ( (\G17|ram~230_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~230_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Reg~170_combout\,
	combout => \G17|ram~230_combout\);

-- Location: LABCELL_X19_Y5_N18
\G17|ram~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~214_combout\ = ( \G7|Reg~170_combout\ & ( (\rtl~5_combout\) # (\G17|ram~214_combout\) ) ) # ( !\G7|Reg~170_combout\ & ( (\G17|ram~214_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~214_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Reg~170_combout\,
	combout => \G17|ram~214_combout\);

-- Location: LABCELL_X19_Y7_N12
\G17|ram~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~198_combout\ = ( \G17|ram~198_combout\ & ( (!\rtl~7_combout\) # (\G7|Reg~170_combout\) ) ) # ( !\G17|ram~198_combout\ & ( (\G7|Reg~170_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~170_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~198_combout\,
	combout => \G17|ram~198_combout\);

-- Location: LABCELL_X19_Y5_N0
\G17|ram~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~324_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G17|ram~452_combout\ & (\G17|ram~198_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~452_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~214_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~452_combout\ & (((\G17|ram~230_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~452_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~246_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~246_combout\,
	datab => \G17|ALT_INV_ram~452_combout\,
	datac => \G17|ALT_INV_ram~230_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~214_combout\,
	datag => \G17|ALT_INV_ram~198_combout\,
	combout => \G17|ram~324_combout\);

-- Location: LABCELL_X19_Y5_N21
\G17|ram~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~118_combout\ = ( \rtl~2_combout\ & ( \G7|Reg~170_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~118_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~170_combout\,
	datad => \G17|ALT_INV_ram~118_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~118_combout\);

-- Location: LABCELL_X19_Y5_N9
\G17|ram~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~102_combout\ = ( \rtl~4_combout\ & ( \G7|Reg~170_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~102_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~170_combout\,
	datac => \G17|ALT_INV_ram~102_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~102_combout\);

-- Location: LABCELL_X18_Y5_N57
\G17|ram~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~86_combout\ = ( \rtl~1_combout\ & ( \G7|Reg~170_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~86_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~170_combout\,
	datad => \G17|ALT_INV_ram~86_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~86_combout\);

-- Location: LABCELL_X19_Y5_N51
\G17|ram~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~38_combout\ = ( \G7|Reg~170_combout\ & ( (\G17|ram~38_combout\) # (\rtl~12_combout\) ) ) # ( !\G7|Reg~170_combout\ & ( (!\rtl~12_combout\ & \G17|ram~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~12_combout\,
	datad => \G17|ALT_INV_ram~38_combout\,
	dataf => \G7|ALT_INV_Reg~170_combout\,
	combout => \G17|ram~38_combout\);

-- Location: LABCELL_X16_Y5_N12
\G17|ram~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~22_combout\ = ( \G7|Reg~170_combout\ & ( \rtl~9_combout\ ) ) # ( \G7|Reg~170_combout\ & ( !\rtl~9_combout\ & ( \G17|ram~22_combout\ ) ) ) # ( !\G7|Reg~170_combout\ & ( !\rtl~9_combout\ & ( \G17|ram~22_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~22_combout\,
	datae => \G7|ALT_INV_Reg~170_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~22_combout\);

-- Location: LABCELL_X18_Y6_N45
\G17|ram~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~54_combout\ = ( \rtl~10_combout\ & ( \G7|Reg~170_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~54_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~170_combout\,
	datad => \G17|ALT_INV_ram~54_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~54_combout\);

-- Location: LABCELL_X19_Y7_N36
\G17|ram~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~6_combout\ = ( \rtl~11_combout\ & ( \G7|Reg~170_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~170_combout\,
	datad => \G17|ALT_INV_ram~6_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~6_combout\);

-- Location: LABCELL_X19_Y5_N42
\G17|ram~448\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~448_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~6_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~22_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~38_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~54_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~38_combout\,
	datad => \G17|ALT_INV_ram~22_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~54_combout\,
	datag => \G17|ALT_INV_ram~6_combout\,
	combout => \G17|ram~448_combout\);

-- Location: LABCELL_X19_Y5_N36
\G17|ram~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~70_combout\ = ( \G7|Reg~170_combout\ & ( (\G17|ram~70_combout\) # (\rtl~3_combout\) ) ) # ( !\G7|Reg~170_combout\ & ( (!\rtl~3_combout\ & \G17|ram~70_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~3_combout\,
	datad => \G17|ALT_INV_ram~70_combout\,
	dataf => \G7|ALT_INV_Reg~170_combout\,
	combout => \G17|ram~70_combout\);

-- Location: LABCELL_X19_Y5_N12
\G17|ram~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~320_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~448_combout\))))) # (\G16|Mux13~0_combout\ & (((!\G17|ram~448_combout\ & (\G17|ram~70_combout\)) # (\G17|ram~448_combout\ & ((\G17|ram~86_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~448_combout\))))) # (\G16|Mux13~0_combout\ & (((!\G17|ram~448_combout\ & ((\G17|ram~102_combout\))) # (\G17|ram~448_combout\ & (\G17|ram~118_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~118_combout\,
	datac => \G17|ALT_INV_ram~102_combout\,
	datad => \G17|ALT_INV_ram~86_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~448_combout\,
	datag => \G17|ALT_INV_ram~70_combout\,
	combout => \G17|ram~320_combout\);

-- Location: LABCELL_X19_Y5_N57
\G18|SAIDA[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[6]~11_combout\ = ( \G17|ram~324_combout\ & ( \G17|ram~320_combout\ & ( (((\G17|ram~262_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~0_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( !\G17|ram~324_combout\ & ( \G17|ram~320_combout\ & 
-- ( ((\G17|ram~262_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G17|ram~324_combout\ & ( !\G17|ram~320_combout\ & ( ((\G17|ram~262_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( 
-- !\G17|ram~324_combout\ & ( !\G17|ram~320_combout\ & ( (\G17|ram~262_combout\ & \G18|SAIDA[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101111100110011001111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G17|ALT_INV_ram~262_combout\,
	datad => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datae => \G17|ALT_INV_ram~324_combout\,
	dataf => \G17|ALT_INV_ram~320_combout\,
	combout => \G18|SAIDA[6]~11_combout\);

-- Location: FF_X19_Y5_N28
\G7|Reg~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[6]~11_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~26_q\);

-- Location: LABCELL_X17_Y4_N27
\G7|Reg~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~154_combout\ = ( \G4|rd[0]~en_q\ & ( !\G4|rd[0]~reg0_q\ & ( \G7|Reg~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~26_q\,
	datae => \G4|ALT_INV_rd[0]~en_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~154_combout\);

-- Location: FF_X18_Y5_N7
\G7|Reg~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[7]~12_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~43_q\);

-- Location: LABCELL_X18_Y5_N54
\G7|Reg~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~171_combout\ = ( \G7|Reg~43_q\ & ( (\G4|rt[0]~en_q\ & ((\G7|Reg~27_q\) # (\G4|rt[0]~reg0_q\))) ) ) # ( !\G7|Reg~43_q\ & ( (\G4|rt[0]~en_q\ & (!\G4|rt[0]~reg0_q\ & \G7|Reg~27_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datac => \G4|ALT_INV_rt[0]~reg0_q\,
	datad => \G7|ALT_INV_Reg~27_q\,
	dataf => \G7|ALT_INV_Reg~43_q\,
	combout => \G7|Reg~171_combout\);

-- Location: LABCELL_X19_Y7_N48
\G17|ram~263\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~263_combout\ = ( \rtl~0_combout\ & ( \G17|ram~263_combout\ & ( \G7|Reg~171_combout\ ) ) ) # ( !\rtl~0_combout\ & ( \G17|ram~263_combout\ ) ) # ( \rtl~0_combout\ & ( !\G17|ram~263_combout\ & ( \G7|Reg~171_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~171_combout\,
	datae => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~263_combout\,
	combout => \G17|ram~263_combout\);

-- Location: LABCELL_X17_Y5_N51
\G17|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~167_combout\ = ( \G7|Reg~171_combout\ & ( (\rtl~16_combout\) # (\G17|ram~167_combout\) ) ) # ( !\G7|Reg~171_combout\ & ( (\G17|ram~167_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~167_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Reg~171_combout\,
	combout => \G17|ram~167_combout\);

-- Location: LABCELL_X18_Y5_N39
\G17|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~151_combout\ = ( \G7|Reg~171_combout\ & ( (\rtl~13_combout\) # (\G17|ram~151_combout\) ) ) # ( !\G7|Reg~171_combout\ & ( (\G17|ram~151_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~151_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Reg~171_combout\,
	combout => \G17|ram~151_combout\);

-- Location: LABCELL_X18_Y5_N12
\G17|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~183_combout\ = ( \rtl~14_combout\ & ( \G7|Reg~171_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~183_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~171_combout\,
	datad => \G17|ALT_INV_ram~183_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~183_combout\);

-- Location: LABCELL_X18_Y6_N51
\G17|ram~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~135_combout\ = ( \G17|ram~135_combout\ & ( (!\rtl~15_combout\) # (\G7|Reg~171_combout\) ) ) # ( !\G17|ram~135_combout\ & ( (\G7|Reg~171_combout\ & \rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~171_combout\,
	datab => \ALT_INV_rtl~15_combout\,
	dataf => \G17|ALT_INV_ram~135_combout\,
	combout => \G17|ram~135_combout\);

-- Location: LABCELL_X18_Y5_N24
\G17|ram~460\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~460_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~135_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~151_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~167_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~183_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~167_combout\,
	datad => \G17|ALT_INV_ram~151_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~183_combout\,
	datag => \G17|ALT_INV_ram~135_combout\,
	combout => \G17|ram~460_combout\);

-- Location: LABCELL_X19_Y7_N39
\G17|ram~231\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~231_combout\ = ( \G7|Reg~171_combout\ & ( (\rtl~8_combout\) # (\G17|ram~231_combout\) ) ) # ( !\G7|Reg~171_combout\ & ( (\G17|ram~231_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~231_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Reg~171_combout\,
	combout => \G17|ram~231_combout\);

-- Location: LABCELL_X19_Y7_N54
\G17|ram~247\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~247_combout\ = ( \rtl~6_combout\ & ( \G7|Reg~171_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~247_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~171_combout\,
	datad => \G17|ALT_INV_ram~247_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~247_combout\);

-- Location: LABCELL_X18_Y6_N15
\G17|ram~215\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~215_combout\ = ( \G17|ram~215_combout\ & ( (!\rtl~5_combout\) # (\G7|Reg~171_combout\) ) ) # ( !\G17|ram~215_combout\ & ( (\G7|Reg~171_combout\ & \rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~171_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G17|ALT_INV_ram~215_combout\,
	combout => \G17|ram~215_combout\);

-- Location: LABCELL_X18_Y8_N36
\G17|ram~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~199_combout\ = ( \G7|Reg~171_combout\ & ( (\rtl~7_combout\) # (\G17|ram~199_combout\) ) ) # ( !\G7|Reg~171_combout\ & ( (\G17|ram~199_combout\ & !\rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~199_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G7|ALT_INV_Reg~171_combout\,
	combout => \G17|ram~199_combout\);

-- Location: LABCELL_X18_Y5_N0
\G17|ram~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~332_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~460_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~199_combout\))) # (\G17|ram~460_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~215_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~460_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~231_combout\))) # (\G17|ram~460_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~247_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~460_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~231_combout\,
	datad => \G17|ALT_INV_ram~247_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~215_combout\,
	datag => \G17|ALT_INV_ram~199_combout\,
	combout => \G17|ram~332_combout\);

-- Location: LABCELL_X18_Y5_N36
\G17|ram~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~119_combout\ = ( \G7|Reg~171_combout\ & ( (\rtl~2_combout\) # (\G17|ram~119_combout\) ) ) # ( !\G7|Reg~171_combout\ & ( (\G17|ram~119_combout\ & !\rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~119_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G7|ALT_INV_Reg~171_combout\,
	combout => \G17|ram~119_combout\);

-- Location: LABCELL_X18_Y5_N18
\G17|ram~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~103_combout\ = ( \G7|Reg~171_combout\ & ( (\rtl~4_combout\) # (\G17|ram~103_combout\) ) ) # ( !\G7|Reg~171_combout\ & ( (\G17|ram~103_combout\ & !\rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~103_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G7|ALT_INV_Reg~171_combout\,
	combout => \G17|ram~103_combout\);

-- Location: LABCELL_X18_Y5_N21
\G17|ram~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~39_combout\ = ( \rtl~12_combout\ & ( \G7|Reg~171_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~39_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~171_combout\,
	datad => \G17|ALT_INV_ram~39_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~39_combout\);

-- Location: LABCELL_X18_Y5_N15
\G17|ram~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~55_combout\ = ( \rtl~10_combout\ & ( \G7|Reg~171_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~55_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~171_combout\,
	datac => \G17|ALT_INV_ram~55_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~55_combout\);

-- Location: LABCELL_X18_Y5_N42
\G17|ram~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~23_combout\ = ( \G7|Reg~171_combout\ & ( (\rtl~9_combout\) # (\G17|ram~23_combout\) ) ) # ( !\G7|Reg~171_combout\ & ( (\G17|ram~23_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~23_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Reg~171_combout\,
	combout => \G17|ram~23_combout\);

-- Location: LABCELL_X18_Y5_N45
\G17|ram~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~7_combout\ = ( \rtl~11_combout\ & ( \G7|Reg~171_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~171_combout\,
	datac => \G17|ALT_INV_ram~7_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~7_combout\);

-- Location: LABCELL_X18_Y5_N48
\G17|ram~456\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~456_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~7_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~23_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~39_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~55_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~39_combout\,
	datad => \G17|ALT_INV_ram~55_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~23_combout\,
	datag => \G17|ALT_INV_ram~7_combout\,
	combout => \G17|ram~456_combout\);

-- Location: LABCELL_X18_Y6_N57
\G17|ram~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~87_combout\ = ( \rtl~1_combout\ & ( \G7|Reg~171_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~87_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~171_combout\,
	datad => \G17|ALT_INV_ram~87_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~87_combout\);

-- Location: LABCELL_X19_Y5_N39
\G17|ram~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~71_combout\ = ( \rtl~3_combout\ & ( \G7|Reg~171_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~71_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~71_combout\,
	datac => \G7|ALT_INV_Reg~171_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~71_combout\);

-- Location: LABCELL_X18_Y5_N30
\G17|ram~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~328_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~456_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~456_combout\ & (\G17|ram~71_combout\)) # (\G17|ram~456_combout\ & ((\G17|ram~87_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~456_combout\))))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~456_combout\ & (((\G17|ram~103_combout\)))) # (\G17|ram~456_combout\ & (\G17|ram~119_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001100000000111101110100000011111111110000001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~119_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~103_combout\,
	datad => \G17|ALT_INV_ram~456_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~87_combout\,
	datag => \G17|ALT_INV_ram~71_combout\,
	combout => \G17|ram~328_combout\);

-- Location: LABCELL_X18_Y5_N9
\G18|SAIDA[7]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[7]~12_combout\ = ( \G18|SAIDA[0]~0_combout\ & ( \G17|ram~328_combout\ ) ) # ( !\G18|SAIDA[0]~0_combout\ & ( \G17|ram~328_combout\ & ( (!\G18|SAIDA[0]~1_combout\ & (\G17|ram~263_combout\ & (\G18|SAIDA[0]~2_combout\))) # (\G18|SAIDA[0]~1_combout\ 
-- & (((\G17|ram~263_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G17|ram~332_combout\))) ) ) ) # ( \G18|SAIDA[0]~0_combout\ & ( !\G17|ram~328_combout\ & ( (!\G18|SAIDA[0]~1_combout\ & (\G17|ram~263_combout\ & (\G18|SAIDA[0]~2_combout\))) # 
-- (\G18|SAIDA[0]~1_combout\ & (((\G17|ram~263_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G17|ram~332_combout\))) ) ) ) # ( !\G18|SAIDA[0]~0_combout\ & ( !\G17|ram~328_combout\ & ( (!\G18|SAIDA[0]~1_combout\ & (\G17|ram~263_combout\ & 
-- (\G18|SAIDA[0]~2_combout\))) # (\G18|SAIDA[0]~1_combout\ & (((\G17|ram~263_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G17|ram~332_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datab => \G17|ALT_INV_ram~263_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datad => \G17|ALT_INV_ram~332_combout\,
	datae => \G18|ALT_INV_SAIDA[0]~0_combout\,
	dataf => \G17|ALT_INV_ram~328_combout\,
	combout => \G18|SAIDA[7]~12_combout\);

-- Location: FF_X18_Y5_N55
\G7|Reg~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[7]~12_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~27_q\);

-- Location: LABCELL_X17_Y4_N33
\G7|Reg~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~155_combout\ = ( \G4|rd[0]~en_q\ & ( !\G4|rd[0]~reg0_q\ & ( \G7|Reg~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~27_q\,
	datae => \G4|ALT_INV_rd[0]~en_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~155_combout\);

-- Location: FF_X15_Y8_N26
\G7|Reg~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[8]~13_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~44_q\);

-- Location: MLABCELL_X15_Y8_N24
\G7|Reg~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~172_combout\ = ( \G7|Reg~28_q\ & ( (\G4|rt[0]~en_q\ & ((!\G4|rt[0]~reg0_q\) # (\G7|Reg~44_q\))) ) ) # ( !\G7|Reg~28_q\ & ( (\G4|rt[0]~en_q\ & (\G4|rt[0]~reg0_q\ & \G7|Reg~44_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datac => \G4|ALT_INV_rt[0]~reg0_q\,
	datad => \G7|ALT_INV_Reg~44_q\,
	dataf => \G7|ALT_INV_Reg~28_q\,
	combout => \G7|Reg~172_combout\);

-- Location: LABCELL_X19_Y8_N24
\G17|ram~264\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~264_combout\ = ( \rtl~0_combout\ & ( \G7|Reg~172_combout\ ) ) # ( !\rtl~0_combout\ & ( \G7|Reg~172_combout\ & ( \G17|ram~264_combout\ ) ) ) # ( !\rtl~0_combout\ & ( !\G7|Reg~172_combout\ & ( \G17|ram~264_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~264_combout\,
	datae => \ALT_INV_rtl~0_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~264_combout\);

-- Location: MLABCELL_X15_Y8_N18
\G17|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~168_combout\ = ( \G7|Reg~172_combout\ & ( (\G17|ram~168_combout\) # (\rtl~16_combout\) ) ) # ( !\G7|Reg~172_combout\ & ( (!\rtl~16_combout\ & \G17|ram~168_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~168_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~168_combout\);

-- Location: MLABCELL_X15_Y8_N12
\G17|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~152_combout\ = ( \G7|Reg~172_combout\ & ( (\rtl~13_combout\) # (\G17|ram~152_combout\) ) ) # ( !\G7|Reg~172_combout\ & ( (\G17|ram~152_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~152_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~152_combout\);

-- Location: MLABCELL_X15_Y8_N6
\G17|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~184_combout\ = ( \G7|Reg~172_combout\ & ( (\G17|ram~184_combout\) # (\rtl~14_combout\) ) ) # ( !\G7|Reg~172_combout\ & ( (!\rtl~14_combout\ & \G17|ram~184_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~14_combout\,
	datad => \G17|ALT_INV_ram~184_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~184_combout\);

-- Location: MLABCELL_X15_Y8_N0
\G17|ram~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~136_combout\ = ( \G7|Reg~172_combout\ & ( (\G17|ram~136_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Reg~172_combout\ & ( (!\rtl~15_combout\ & \G17|ram~136_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~15_combout\,
	datad => \G17|ALT_INV_ram~136_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~136_combout\);

-- Location: MLABCELL_X15_Y8_N36
\G17|ram~468\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~468_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~136_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~152_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~168_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~184_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~168_combout\,
	datad => \G17|ALT_INV_ram~152_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~184_combout\,
	datag => \G17|ALT_INV_ram~136_combout\,
	combout => \G17|ram~468_combout\);

-- Location: MLABCELL_X15_Y9_N51
\G17|ram~232\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~232_combout\ = ( \rtl~8_combout\ & ( \G7|Reg~172_combout\ ) ) # ( !\rtl~8_combout\ & ( \G7|Reg~172_combout\ & ( \G17|ram~232_combout\ ) ) ) # ( !\rtl~8_combout\ & ( !\G7|Reg~172_combout\ & ( \G17|ram~232_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~232_combout\,
	datae => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~232_combout\);

-- Location: LABCELL_X19_Y8_N9
\G17|ram~248\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~248_combout\ = ( \rtl~6_combout\ & ( \G7|Reg~172_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~248_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~172_combout\,
	datac => \G17|ALT_INV_ram~248_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~248_combout\);

-- Location: MLABCELL_X15_Y8_N21
\G17|ram~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~216_combout\ = ( \rtl~5_combout\ & ( \G7|Reg~172_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~216_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~172_combout\,
	datad => \G17|ALT_INV_ram~216_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~216_combout\);

-- Location: MLABCELL_X15_Y8_N3
\G17|ram~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~200_combout\ = ( \G7|Reg~172_combout\ & ( (\G17|ram~200_combout\) # (\rtl~7_combout\) ) ) # ( !\G7|Reg~172_combout\ & ( (!\rtl~7_combout\ & \G17|ram~200_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~7_combout\,
	datad => \G17|ALT_INV_ram~200_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~200_combout\);

-- Location: MLABCELL_X15_Y8_N42
\G17|ram~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~340_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~468_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~200_combout\))) # (\G17|ram~468_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~216_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~468_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~232_combout\))) # (\G17|ram~468_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~248_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~468_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~232_combout\,
	datad => \G17|ALT_INV_ram~248_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~216_combout\,
	datag => \G17|ALT_INV_ram~200_combout\,
	combout => \G17|ram~340_combout\);

-- Location: LABCELL_X16_Y9_N12
\G17|ram~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~88_combout\ = ( \G7|Reg~172_combout\ & ( (\rtl~1_combout\) # (\G17|ram~88_combout\) ) ) # ( !\G7|Reg~172_combout\ & ( (\G17|ram~88_combout\ & !\rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~88_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~88_combout\);

-- Location: MLABCELL_X15_Y8_N15
\G17|ram~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~120_combout\ = ( \G7|Reg~172_combout\ & ( (\rtl~2_combout\) # (\G17|ram~120_combout\) ) ) # ( !\G7|Reg~172_combout\ & ( (\G17|ram~120_combout\ & !\rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~120_combout\,
	datac => \ALT_INV_rtl~2_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~120_combout\);

-- Location: LABCELL_X18_Y8_N12
\G17|ram~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~104_combout\ = ( \rtl~4_combout\ & ( \G7|Reg~172_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~104_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~104_combout\,
	datac => \G7|ALT_INV_Reg~172_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~104_combout\);

-- Location: LABCELL_X16_Y9_N39
\G17|ram~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~40_combout\ = ( \rtl~12_combout\ & ( \G7|Reg~172_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~40_combout\,
	datad => \G7|ALT_INV_Reg~172_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~40_combout\);

-- Location: MLABCELL_X15_Y8_N9
\G17|ram~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~24_combout\ = (!\rtl~9_combout\ & ((\G17|ram~24_combout\))) # (\rtl~9_combout\ & (\G7|Reg~172_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~172_combout\,
	datac => \G17|ALT_INV_ram~24_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~24_combout\);

-- Location: LABCELL_X16_Y9_N42
\G17|ram~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~56_combout\ = ( \G7|Reg~172_combout\ & ( (\rtl~10_combout\) # (\G17|ram~56_combout\) ) ) # ( !\G7|Reg~172_combout\ & ( (\G17|ram~56_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~56_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~56_combout\);

-- Location: MLABCELL_X15_Y8_N27
\G17|ram~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~8_combout\ = ( \rtl~11_combout\ & ( \G7|Reg~172_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~172_combout\,
	datad => \G17|ALT_INV_ram~8_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~8_combout\);

-- Location: MLABCELL_X15_Y8_N48
\G17|ram~464\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~464_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~8_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~24_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~40_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~56_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~40_combout\,
	datad => \G17|ALT_INV_ram~24_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~56_combout\,
	datag => \G17|ALT_INV_ram~8_combout\,
	combout => \G17|ram~464_combout\);

-- Location: MLABCELL_X15_Y9_N57
\G17|ram~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~72_combout\ = ( \G17|ram~72_combout\ & ( \G7|Reg~172_combout\ ) ) # ( !\G17|ram~72_combout\ & ( \G7|Reg~172_combout\ & ( \rtl~3_combout\ ) ) ) # ( \G17|ram~72_combout\ & ( !\G7|Reg~172_combout\ & ( !\rtl~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~3_combout\,
	datae => \G17|ALT_INV_ram~72_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	combout => \G17|ram~72_combout\);

-- Location: MLABCELL_X15_Y8_N30
\G17|ram~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~336_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~464_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~464_combout\ & ((\G17|ram~72_combout\))) # (\G17|ram~464_combout\ & (\G17|ram~88_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~464_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~464_combout\ & ((\G17|ram~104_combout\))) # (\G17|ram~464_combout\ & (\G17|ram~120_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~88_combout\,
	datab => \G17|ALT_INV_ram~120_combout\,
	datac => \G17|ALT_INV_ram~104_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~464_combout\,
	datag => \G17|ALT_INV_ram~72_combout\,
	combout => \G17|ram~336_combout\);

-- Location: MLABCELL_X15_Y8_N57
\G18|SAIDA[8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[8]~13_combout\ = ( \G17|ram~340_combout\ & ( \G17|ram~336_combout\ & ( (((\G17|ram~264_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~0_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( !\G17|ram~340_combout\ & ( \G17|ram~336_combout\ & 
-- ( ((\G17|ram~264_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G17|ram~340_combout\ & ( !\G17|ram~336_combout\ & ( ((\G17|ram~264_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( 
-- !\G17|ram~340_combout\ & ( !\G17|ram~336_combout\ & ( (\G17|ram~264_combout\ & \G18|SAIDA[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~264_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datad => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datae => \G17|ALT_INV_ram~340_combout\,
	dataf => \G17|ALT_INV_ram~336_combout\,
	combout => \G18|SAIDA[8]~13_combout\);

-- Location: FF_X15_Y8_N56
\G7|Reg~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[8]~13_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~28_q\);

-- Location: MLABCELL_X21_Y8_N6
\G7|Reg~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~156_combout\ = ( \G4|rd[0]~en_q\ & ( (\G7|Reg~28_q\ & !\G4|rd[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~28_q\,
	datac => \G4|ALT_INV_rd[0]~reg0_q\,
	datae => \G4|ALT_INV_rd[0]~en_q\,
	combout => \G7|Reg~156_combout\);

-- Location: FF_X17_Y10_N19
\G7|Reg~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[9]~14_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~45_q\);

-- Location: LABCELL_X16_Y10_N24
\G7|Reg~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~173_combout\ = ( \G7|Reg~29_q\ & ( (\G4|rt[0]~en_q\ & ((!\G4|rt[0]~reg0_q\) # (\G7|Reg~45_q\))) ) ) # ( !\G7|Reg~29_q\ & ( (\G4|rt[0]~en_q\ & (\G7|Reg~45_q\ & \G4|rt[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datab => \G7|ALT_INV_Reg~45_q\,
	datac => \G4|ALT_INV_rt[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~29_q\,
	combout => \G7|Reg~173_combout\);

-- Location: LABCELL_X16_Y10_N30
\G17|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~185_combout\ = ( \G7|Reg~173_combout\ & ( (\rtl~14_combout\) # (\G17|ram~185_combout\) ) ) # ( !\G7|Reg~173_combout\ & ( (\G17|ram~185_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~185_combout\,
	datac => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~185_combout\);

-- Location: LABCELL_X16_Y10_N45
\G17|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~169_combout\ = ( \rtl~16_combout\ & ( \G7|Reg~173_combout\ ) ) # ( !\rtl~16_combout\ & ( \G7|Reg~173_combout\ & ( \G17|ram~169_combout\ ) ) ) # ( !\rtl~16_combout\ & ( !\G7|Reg~173_combout\ & ( \G17|ram~169_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~169_combout\,
	datae => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~169_combout\);

-- Location: LABCELL_X17_Y10_N9
\G17|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~153_combout\ = ( \rtl~13_combout\ & ( \G7|Reg~173_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~153_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~173_combout\,
	datac => \G17|ALT_INV_ram~153_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~153_combout\);

-- Location: LABCELL_X17_Y10_N48
\G17|ram~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~137_combout\ = ( \G7|Reg~173_combout\ & ( (\G17|ram~137_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Reg~173_combout\ & ( (!\rtl~15_combout\ & \G17|ram~137_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~15_combout\,
	datad => \G17|ALT_INV_ram~137_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~137_combout\);

-- Location: LABCELL_X17_Y10_N30
\G17|ram~476\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~476_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~137_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\) # (\G17|ram~153_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~169_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~185_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G17|ALT_INV_ram~185_combout\,
	datac => \G17|ALT_INV_ram~169_combout\,
	datad => \G17|ALT_INV_ram~153_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~137_combout\,
	combout => \G17|ram~476_combout\);

-- Location: LABCELL_X16_Y10_N18
\G17|ram~233\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~233_combout\ = ( \G7|Reg~173_combout\ & ( (\rtl~8_combout\) # (\G17|ram~233_combout\) ) ) # ( !\G7|Reg~173_combout\ & ( (\G17|ram~233_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~233_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~233_combout\);

-- Location: LABCELL_X17_Y10_N6
\G17|ram~217\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~217_combout\ = ( \G7|Reg~173_combout\ & ( (\rtl~5_combout\) # (\G17|ram~217_combout\) ) ) # ( !\G7|Reg~173_combout\ & ( (\G17|ram~217_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~217_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~217_combout\);

-- Location: LABCELL_X16_Y10_N12
\G17|ram~249\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~249_combout\ = ( \rtl~6_combout\ & ( \G7|Reg~173_combout\ ) ) # ( !\rtl~6_combout\ & ( \G7|Reg~173_combout\ & ( \G17|ram~249_combout\ ) ) ) # ( !\rtl~6_combout\ & ( !\G7|Reg~173_combout\ & ( \G17|ram~249_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~249_combout\,
	datae => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~249_combout\);

-- Location: LABCELL_X16_Y10_N33
\G17|ram~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~201_combout\ = ( \G7|Reg~173_combout\ & ( (\rtl~7_combout\) # (\G17|ram~201_combout\) ) ) # ( !\G7|Reg~173_combout\ & ( (\G17|ram~201_combout\ & !\rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~201_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~201_combout\);

-- Location: LABCELL_X17_Y10_N54
\G17|ram~348\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~348_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~476_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~476_combout\ & (\G17|ram~201_combout\)) # (\G17|ram~476_combout\ & (((\G17|ram~217_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~476_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~476_combout\ & (\G17|ram~233_combout\)) # (\G17|ram~476_combout\ & (((\G17|ram~249_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~476_combout\,
	datac => \G17|ALT_INV_ram~233_combout\,
	datad => \G17|ALT_INV_ram~217_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~249_combout\,
	datag => \G17|ALT_INV_ram~201_combout\,
	combout => \G17|ram~348_combout\);

-- Location: LABCELL_X18_Y9_N51
\G17|ram~265\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~265_combout\ = ( \G17|ram~265_combout\ & ( (!\rtl~0_combout\) # (\G7|Reg~173_combout\) ) ) # ( !\G17|ram~265_combout\ & ( (\G7|Reg~173_combout\ & \rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~173_combout\,
	datac => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~265_combout\,
	combout => \G17|ram~265_combout\);

-- Location: LABCELL_X16_Y10_N21
\G17|ram~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~25_combout\ = ( \rtl~9_combout\ & ( \G7|Reg~173_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~173_combout\,
	datad => \G17|ALT_INV_ram~25_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~25_combout\);

-- Location: LABCELL_X16_Y10_N27
\G17|ram~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~41_combout\ = ( \rtl~12_combout\ & ( \G7|Reg~173_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~173_combout\,
	datad => \G17|ALT_INV_ram~41_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~41_combout\);

-- Location: LABCELL_X16_Y10_N39
\G17|ram~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~57_combout\ = ( \rtl~10_combout\ & ( \G7|Reg~173_combout\ ) ) # ( !\rtl~10_combout\ & ( \G7|Reg~173_combout\ & ( \G17|ram~57_combout\ ) ) ) # ( !\rtl~10_combout\ & ( !\G7|Reg~173_combout\ & ( \G17|ram~57_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~57_combout\,
	datae => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~57_combout\);

-- Location: LABCELL_X16_Y10_N3
\G17|ram~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~9_combout\ = ( \G17|ram~9_combout\ & ( \G7|Reg~173_combout\ ) ) # ( !\G17|ram~9_combout\ & ( \G7|Reg~173_combout\ & ( \rtl~11_combout\ ) ) ) # ( \G17|ram~9_combout\ & ( !\G7|Reg~173_combout\ & ( !\rtl~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~11_combout\,
	datae => \G17|ALT_INV_ram~9_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~9_combout\);

-- Location: LABCELL_X17_Y10_N24
\G17|ram~472\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~472_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~9_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~25_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~41_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~57_combout\) # (\G16|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G17|ALT_INV_ram~25_combout\,
	datac => \G17|ALT_INV_ram~41_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~57_combout\,
	datag => \G17|ALT_INV_ram~9_combout\,
	combout => \G17|ram~472_combout\);

-- Location: LABCELL_X17_Y10_N42
\G17|ram~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~121_combout\ = ( \G7|Reg~173_combout\ & ( (\rtl~2_combout\) # (\G17|ram~121_combout\) ) ) # ( !\G7|Reg~173_combout\ & ( (\G17|ram~121_combout\ & !\rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~121_combout\,
	datac => \ALT_INV_rtl~2_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~121_combout\);

-- Location: LABCELL_X16_Y10_N57
\G17|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~105_combout\ = ( \G17|ram~105_combout\ & ( \G7|Reg~173_combout\ ) ) # ( !\G17|ram~105_combout\ & ( \G7|Reg~173_combout\ & ( \rtl~4_combout\ ) ) ) # ( \G17|ram~105_combout\ & ( !\G7|Reg~173_combout\ & ( !\rtl~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_rtl~4_combout\,
	datae => \G17|ALT_INV_ram~105_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~105_combout\);

-- Location: LABCELL_X16_Y10_N9
\G17|ram~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~89_combout\ = ( \G7|Reg~173_combout\ & ( (\G17|ram~89_combout\) # (\rtl~1_combout\) ) ) # ( !\G7|Reg~173_combout\ & ( (!\rtl~1_combout\ & \G17|ram~89_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~1_combout\,
	datac => \G17|ALT_INV_ram~89_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	combout => \G17|ram~89_combout\);

-- Location: LABCELL_X16_Y10_N6
\G17|ram~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~73_combout\ = ( \G17|ram~73_combout\ & ( (!\rtl~3_combout\) # (\G7|Reg~173_combout\) ) ) # ( !\G17|ram~73_combout\ & ( (\G7|Reg~173_combout\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~173_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G17|ALT_INV_ram~73_combout\,
	combout => \G17|ram~73_combout\);

-- Location: LABCELL_X17_Y10_N12
\G17|ram~344\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~344_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~472_combout\ & (((\G17|ram~73_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~472_combout\ & ((((!\G16|Mux13~0_combout\) # (\G17|ram~89_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~472_combout\ & (((\G17|ram~105_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~472_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~121_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001010010101010001101101010101010111110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~472_combout\,
	datab => \G17|ALT_INV_ram~121_combout\,
	datac => \G17|ALT_INV_ram~105_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~89_combout\,
	datag => \G17|ALT_INV_ram~73_combout\,
	combout => \G17|ram~344_combout\);

-- Location: LABCELL_X17_Y10_N21
\G18|SAIDA[9]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[9]~14_combout\ = ( \G18|SAIDA[0]~1_combout\ & ( \G17|ram~344_combout\ & ( (((\G18|SAIDA[0]~2_combout\ & \G17|ram~265_combout\)) # (\G18|SAIDA[0]~0_combout\)) # (\G17|ram~348_combout\) ) ) ) # ( !\G18|SAIDA[0]~1_combout\ & ( 
-- \G17|ram~344_combout\ & ( ((\G18|SAIDA[0]~2_combout\ & \G17|ram~265_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G18|SAIDA[0]~1_combout\ & ( !\G17|ram~344_combout\ & ( ((\G18|SAIDA[0]~2_combout\ & \G17|ram~265_combout\)) # (\G17|ram~348_combout\) ) 
-- ) ) # ( !\G18|SAIDA[0]~1_combout\ & ( !\G17|ram~344_combout\ & ( (\G18|SAIDA[0]~2_combout\ & \G17|ram~265_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010111011100001111001111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~348_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G17|ALT_INV_ram~265_combout\,
	datae => \G18|ALT_INV_SAIDA[0]~1_combout\,
	dataf => \G17|ALT_INV_ram~344_combout\,
	combout => \G18|SAIDA[9]~14_combout\);

-- Location: FF_X17_Y10_N11
\G7|Reg~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[9]~14_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~29_q\);

-- Location: MLABCELL_X21_Y8_N15
\G7|Reg~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~157_combout\ = ( \G4|rd[0]~en_q\ & ( \G7|Reg~29_q\ & ( !\G4|rd[0]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~reg0_q\,
	datae => \G4|ALT_INV_rd[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~29_q\,
	combout => \G7|Reg~157_combout\);

-- Location: FF_X19_Y10_N25
\G7|Reg~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[10]~15_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~46_q\);

-- Location: LABCELL_X19_Y10_N12
\G7|Reg~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~174_combout\ = ( \G7|Reg~46_q\ & ( (\G4|rt[0]~en_q\ & ((\G7|Reg~30_q\) # (\G4|rt[0]~reg0_q\))) ) ) # ( !\G7|Reg~46_q\ & ( (!\G4|rt[0]~reg0_q\ & (\G4|rt[0]~en_q\ & \G7|Reg~30_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datad => \G7|ALT_INV_Reg~30_q\,
	dataf => \G7|ALT_INV_Reg~46_q\,
	combout => \G7|Reg~174_combout\);

-- Location: LABCELL_X19_Y8_N12
\G17|ram~250\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~250_combout\ = ( \rtl~6_combout\ & ( \G7|Reg~174_combout\ ) ) # ( !\rtl~6_combout\ & ( \G17|ram~250_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~174_combout\,
	datab => \G17|ALT_INV_ram~250_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~250_combout\);

-- Location: LABCELL_X19_Y10_N54
\G17|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~170_combout\ = ( \G7|Reg~174_combout\ & ( (\rtl~16_combout\) # (\G17|ram~170_combout\) ) ) # ( !\G7|Reg~174_combout\ & ( (\G17|ram~170_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~170_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Reg~174_combout\,
	combout => \G17|ram~170_combout\);

-- Location: LABCELL_X19_Y10_N30
\G17|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~186_combout\ = ( \G7|Reg~174_combout\ & ( (\rtl~14_combout\) # (\G17|ram~186_combout\) ) ) # ( !\G7|Reg~174_combout\ & ( (\G17|ram~186_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~186_combout\,
	datac => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Reg~174_combout\,
	combout => \G17|ram~186_combout\);

-- Location: LABCELL_X19_Y10_N51
\G17|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~154_combout\ = ( \G7|Reg~174_combout\ & ( (\rtl~13_combout\) # (\G17|ram~154_combout\) ) ) # ( !\G7|Reg~174_combout\ & ( (\G17|ram~154_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~154_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Reg~174_combout\,
	combout => \G17|ram~154_combout\);

-- Location: LABCELL_X19_Y10_N42
\G17|ram~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~138_combout\ = ( \rtl~15_combout\ & ( \G7|Reg~174_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~138_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~174_combout\,
	datad => \G17|ALT_INV_ram~138_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~138_combout\);

-- Location: LABCELL_X19_Y10_N6
\G17|ram~484\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~484_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~138_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~154_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~170_combout\))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~186_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~170_combout\,
	datad => \G17|ALT_INV_ram~186_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~154_combout\,
	datag => \G17|ALT_INV_ram~138_combout\,
	combout => \G17|ram~484_combout\);

-- Location: LABCELL_X19_Y8_N0
\G17|ram~234\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~234_combout\ = ( \G7|Reg~174_combout\ & ( \rtl~8_combout\ ) ) # ( \G7|Reg~174_combout\ & ( !\rtl~8_combout\ & ( \G17|ram~234_combout\ ) ) ) # ( !\G7|Reg~174_combout\ & ( !\rtl~8_combout\ & ( \G17|ram~234_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~234_combout\,
	datae => \G7|ALT_INV_Reg~174_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~234_combout\);

-- Location: LABCELL_X19_Y8_N57
\G17|ram~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~218_combout\ = ( \G17|ram~218_combout\ & ( \rtl~5_combout\ & ( \G7|Reg~174_combout\ ) ) ) # ( !\G17|ram~218_combout\ & ( \rtl~5_combout\ & ( \G7|Reg~174_combout\ ) ) ) # ( \G17|ram~218_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~174_combout\,
	datae => \G17|ALT_INV_ram~218_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~218_combout\);

-- Location: LABCELL_X19_Y8_N15
\G17|ram~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~202_combout\ = ( \rtl~7_combout\ & ( \G7|Reg~174_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~202_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~174_combout\,
	datac => \G17|ALT_INV_ram~202_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~202_combout\);

-- Location: LABCELL_X19_Y10_N36
\G17|ram~356\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~356_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G17|ram~484_combout\ & (\G17|ram~202_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~484_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~218_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~484_combout\ & (((\G17|ram~234_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~484_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~250_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~250_combout\,
	datab => \G17|ALT_INV_ram~484_combout\,
	datac => \G17|ALT_INV_ram~234_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~218_combout\,
	datag => \G17|ALT_INV_ram~202_combout\,
	combout => \G17|ram~356_combout\);

-- Location: LABCELL_X18_Y9_N57
\G17|ram~266\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~266_combout\ = ( \G7|Reg~174_combout\ & ( (\G17|ram~266_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Reg~174_combout\ & ( (!\rtl~0_combout\ & \G17|ram~266_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~266_combout\,
	dataf => \G7|ALT_INV_Reg~174_combout\,
	combout => \G17|ram~266_combout\);

-- Location: LABCELL_X19_Y10_N15
\G17|ram~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~58_combout\ = ( \rtl~10_combout\ & ( \G7|Reg~174_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~58_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~174_combout\,
	datac => \G17|ALT_INV_ram~58_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~58_combout\);

-- Location: LABCELL_X18_Y10_N27
\G17|ram~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~42_combout\ = ( \rtl~12_combout\ & ( \G7|Reg~174_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~42_combout\,
	datac => \G7|ALT_INV_Reg~174_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~42_combout\);

-- Location: LABCELL_X19_Y10_N48
\G17|ram~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~26_combout\ = ( \rtl~9_combout\ & ( \G7|Reg~174_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~174_combout\,
	datad => \G17|ALT_INV_ram~26_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~26_combout\);

-- Location: LABCELL_X19_Y10_N57
\G17|ram~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~10_combout\ = ( \rtl~11_combout\ & ( \G7|Reg~174_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~174_combout\,
	datad => \G17|ALT_INV_ram~10_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~10_combout\);

-- Location: LABCELL_X19_Y10_N0
\G17|ram~480\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~480_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~10_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~26_combout\) # (\G16|Mux13~0_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~42_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~58_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001010101000110110101010101011111010101010001101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G17|ALT_INV_ram~58_combout\,
	datac => \G17|ALT_INV_ram~42_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~26_combout\,
	datag => \G17|ALT_INV_ram~10_combout\,
	combout => \G17|ram~480_combout\);

-- Location: LABCELL_X19_Y10_N45
\G17|ram~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~122_combout\ = ( \rtl~2_combout\ & ( \G7|Reg~174_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~122_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~174_combout\,
	datad => \G17|ALT_INV_ram~122_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~122_combout\);

-- Location: LABCELL_X19_Y8_N18
\G17|ram~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~106_combout\ = ( \G17|ram~106_combout\ & ( (!\rtl~4_combout\) # (\G7|Reg~174_combout\) ) ) # ( !\G17|ram~106_combout\ & ( (\G7|Reg~174_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~174_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~106_combout\,
	combout => \G17|ram~106_combout\);

-- Location: LABCELL_X18_Y10_N57
\G17|ram~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~90_combout\ = ( \rtl~1_combout\ & ( \G7|Reg~174_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~90_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~174_combout\,
	datad => \G17|ALT_INV_ram~90_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~90_combout\);

-- Location: LABCELL_X18_Y9_N42
\G17|ram~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~74_combout\ = ( \G7|Reg~174_combout\ & ( (\G17|ram~74_combout\) # (\rtl~3_combout\) ) ) # ( !\G7|Reg~174_combout\ & ( (!\rtl~3_combout\ & \G17|ram~74_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~3_combout\,
	datad => \G17|ALT_INV_ram~74_combout\,
	dataf => \G7|ALT_INV_Reg~174_combout\,
	combout => \G17|ram~74_combout\);

-- Location: LABCELL_X19_Y10_N18
\G17|ram~352\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~352_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~480_combout\ & (((\G17|ram~74_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~480_combout\ & ((((!\G16|Mux13~0_combout\) # (\G17|ram~90_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~480_combout\ & (((\G17|ram~106_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~480_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~122_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001010010101010001101101010101010111110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~480_combout\,
	datab => \G17|ALT_INV_ram~122_combout\,
	datac => \G17|ALT_INV_ram~106_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~90_combout\,
	datag => \G17|ALT_INV_ram~74_combout\,
	combout => \G17|ram~352_combout\);

-- Location: LABCELL_X19_Y10_N27
\G18|SAIDA[10]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[10]~15_combout\ = ( \G18|SAIDA[0]~0_combout\ & ( \G17|ram~352_combout\ ) ) # ( !\G18|SAIDA[0]~0_combout\ & ( \G17|ram~352_combout\ & ( (!\G17|ram~356_combout\ & (\G18|SAIDA[0]~2_combout\ & ((\G17|ram~266_combout\)))) # (\G17|ram~356_combout\ & 
-- (((\G18|SAIDA[0]~2_combout\ & \G17|ram~266_combout\)) # (\G18|SAIDA[0]~1_combout\))) ) ) ) # ( \G18|SAIDA[0]~0_combout\ & ( !\G17|ram~352_combout\ & ( (!\G17|ram~356_combout\ & (\G18|SAIDA[0]~2_combout\ & ((\G17|ram~266_combout\)))) # 
-- (\G17|ram~356_combout\ & (((\G18|SAIDA[0]~2_combout\ & \G17|ram~266_combout\)) # (\G18|SAIDA[0]~1_combout\))) ) ) ) # ( !\G18|SAIDA[0]~0_combout\ & ( !\G17|ram~352_combout\ & ( (!\G17|ram~356_combout\ & (\G18|SAIDA[0]~2_combout\ & 
-- ((\G17|ram~266_combout\)))) # (\G17|ram~356_combout\ & (((\G18|SAIDA[0]~2_combout\ & \G17|ram~266_combout\)) # (\G18|SAIDA[0]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~356_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datad => \G17|ALT_INV_ram~266_combout\,
	datae => \G18|ALT_INV_SAIDA[0]~0_combout\,
	dataf => \G17|ALT_INV_ram~352_combout\,
	combout => \G18|SAIDA[10]~15_combout\);

-- Location: FF_X19_Y10_N13
\G7|Reg~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[10]~15_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~30_q\);

-- Location: LABCELL_X17_Y4_N12
\G7|Reg~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~158_combout\ = ( \G7|Reg~30_q\ & ( !\G4|rd[0]~reg0_q\ & ( \G4|rd[0]~en_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rd[0]~en_q\,
	datae => \G7|ALT_INV_Reg~30_q\,
	dataf => \G4|ALT_INV_rd[0]~reg0_q\,
	combout => \G7|Reg~158_combout\);

-- Location: FF_X16_Y9_N49
\G7|Reg~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[11]~16_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~47_q\);

-- Location: LABCELL_X16_Y9_N45
\G7|Reg~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~175_combout\ = ( \G7|Reg~31_q\ & ( (\G4|rt[0]~en_q\ & ((!\G4|rt[0]~reg0_q\) # (\G7|Reg~47_q\))) ) ) # ( !\G7|Reg~31_q\ & ( (\G4|rt[0]~reg0_q\ & (\G4|rt[0]~en_q\ & \G7|Reg~47_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~reg0_q\,
	datab => \G4|ALT_INV_rt[0]~en_q\,
	datac => \G7|ALT_INV_Reg~47_q\,
	dataf => \G7|ALT_INV_Reg~31_q\,
	combout => \G7|Reg~175_combout\);

-- Location: MLABCELL_X15_Y9_N42
\G17|ram~267\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~267_combout\ = ( \rtl~0_combout\ & ( \G17|ram~267_combout\ & ( \G7|Reg~175_combout\ ) ) ) # ( !\rtl~0_combout\ & ( \G17|ram~267_combout\ ) ) # ( \rtl~0_combout\ & ( !\G17|ram~267_combout\ & ( \G7|Reg~175_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~175_combout\,
	datae => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~267_combout\,
	combout => \G17|ram~267_combout\);

-- Location: LABCELL_X17_Y9_N27
\G17|ram~251\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~251_combout\ = ( \G7|Reg~175_combout\ & ( (\rtl~6_combout\) # (\G17|ram~251_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (\G17|ram~251_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~251_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~251_combout\);

-- Location: MLABCELL_X15_Y9_N3
\G17|ram~219\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~219_combout\ = ( \rtl~5_combout\ & ( \G7|Reg~175_combout\ ) ) # ( !\rtl~5_combout\ & ( \G7|Reg~175_combout\ & ( \G17|ram~219_combout\ ) ) ) # ( !\rtl~5_combout\ & ( !\G7|Reg~175_combout\ & ( \G17|ram~219_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~219_combout\,
	datae => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~219_combout\);

-- Location: MLABCELL_X15_Y9_N15
\G17|ram~235\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~235_combout\ = ( \rtl~8_combout\ & ( \G7|Reg~175_combout\ ) ) # ( !\rtl~8_combout\ & ( \G7|Reg~175_combout\ & ( \G17|ram~235_combout\ ) ) ) # ( !\rtl~8_combout\ & ( !\G7|Reg~175_combout\ & ( \G17|ram~235_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~235_combout\,
	datae => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~235_combout\);

-- Location: LABCELL_X17_Y9_N21
\G17|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~155_combout\ = ( \G7|Reg~175_combout\ & ( (\G17|ram~155_combout\) # (\rtl~13_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (!\rtl~13_combout\ & \G17|ram~155_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~13_combout\,
	datad => \G17|ALT_INV_ram~155_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~155_combout\);

-- Location: LABCELL_X17_Y9_N39
\G17|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~187_combout\ = ( \rtl~14_combout\ & ( \G7|Reg~175_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~187_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~175_combout\,
	datac => \G17|ALT_INV_ram~187_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~187_combout\);

-- Location: LABCELL_X17_Y9_N24
\G17|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~171_combout\ = ( \G7|Reg~175_combout\ & ( (\G17|ram~171_combout\) # (\rtl~16_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (!\rtl~16_combout\ & \G17|ram~171_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~171_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~171_combout\);

-- Location: LABCELL_X17_Y9_N54
\G17|ram~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~139_combout\ = ( \G7|Reg~175_combout\ & ( (\rtl~15_combout\) # (\G17|ram~139_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (\G17|ram~139_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~139_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~139_combout\);

-- Location: LABCELL_X17_Y9_N30
\G17|ram~492\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~492_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~139_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~155_combout\)))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~171_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~187_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~155_combout\,
	datab => \G17|ALT_INV_ram~187_combout\,
	datac => \G17|ALT_INV_ram~171_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~139_combout\,
	combout => \G17|ram~492_combout\);

-- Location: LABCELL_X16_Y9_N15
\G17|ram~203\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~203_combout\ = ( \rtl~7_combout\ & ( \G7|Reg~175_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~203_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~175_combout\,
	datac => \G17|ALT_INV_ram~203_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~203_combout\);

-- Location: LABCELL_X16_Y9_N57
\G17|ram~364\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~364_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~492_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~492_combout\ & ((\G17|ram~203_combout\))) # (\G17|ram~492_combout\ & (\G17|ram~219_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~492_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~492_combout\ & ((\G17|ram~235_combout\))) # (\G17|ram~492_combout\ & (\G17|ram~251_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~251_combout\,
	datab => \G17|ALT_INV_ram~219_combout\,
	datac => \G17|ALT_INV_ram~235_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~492_combout\,
	datag => \G17|ALT_INV_ram~203_combout\,
	combout => \G17|ram~364_combout\);

-- Location: LABCELL_X16_Y9_N36
\G17|ram~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~123_combout\ = ( \G7|Reg~175_combout\ & ( (\rtl~2_combout\) # (\G17|ram~123_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (\G17|ram~123_combout\ & !\rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~123_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~123_combout\);

-- Location: LABCELL_X17_Y9_N15
\G17|ram~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~91_combout\ = ( \G7|Reg~175_combout\ & ( (\G17|ram~91_combout\) # (\rtl~1_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (!\rtl~1_combout\ & \G17|ram~91_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~1_combout\,
	datad => \G17|ALT_INV_ram~91_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~91_combout\);

-- Location: LABCELL_X16_Y9_N3
\G17|ram~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~107_combout\ = ( \G7|Reg~175_combout\ & ( (\rtl~4_combout\) # (\G17|ram~107_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (\G17|ram~107_combout\ & !\rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~107_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~107_combout\);

-- Location: LABCELL_X17_Y9_N18
\G17|ram~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~59_combout\ = ( \G7|Reg~175_combout\ & ( (\G17|ram~59_combout\) # (\rtl~10_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (!\rtl~10_combout\ & \G17|ram~59_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~10_combout\,
	datac => \G17|ALT_INV_ram~59_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~59_combout\);

-- Location: LABCELL_X16_Y9_N0
\G17|ram~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~43_combout\ = ( \G7|Reg~175_combout\ & ( (\G17|ram~43_combout\) # (\rtl~12_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (!\rtl~12_combout\ & \G17|ram~43_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~12_combout\,
	datad => \G17|ALT_INV_ram~43_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~43_combout\);

-- Location: LABCELL_X17_Y9_N12
\G17|ram~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~27_combout\ = ( \G7|Reg~175_combout\ & ( (\rtl~9_combout\) # (\G17|ram~27_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (\G17|ram~27_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~27_combout\,
	datac => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~27_combout\);

-- Location: LABCELL_X16_Y9_N21
\G17|ram~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~11_combout\ = ( \G7|Reg~175_combout\ & ( (\G17|ram~11_combout\) # (\rtl~11_combout\) ) ) # ( !\G7|Reg~175_combout\ & ( (!\rtl~11_combout\ & \G17|ram~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~11_combout\,
	datad => \G17|ALT_INV_ram~11_combout\,
	dataf => \G7|ALT_INV_Reg~175_combout\,
	combout => \G17|ram~11_combout\);

-- Location: LABCELL_X17_Y9_N42
\G17|ram~488\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~488_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~0_combout\ & (\G17|ram~11_combout\ & ((!\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\) # (\G17|ram~27_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~43_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~59_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~59_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~43_combout\,
	datad => \G17|ALT_INV_ram~27_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~11_combout\,
	combout => \G17|ram~488_combout\);

-- Location: LABCELL_X17_Y9_N36
\G17|ram~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~75_combout\ = ( \rtl~3_combout\ & ( \G7|Reg~175_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~75_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~175_combout\,
	datac => \G17|ALT_INV_ram~75_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~75_combout\);

-- Location: LABCELL_X16_Y9_N9
\G17|ram~360\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~360_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~488_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~488_combout\ & ((\G17|ram~75_combout\))) # (\G17|ram~488_combout\ & (\G17|ram~91_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~488_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~488_combout\ & ((\G17|ram~107_combout\))) # (\G17|ram~488_combout\ & (\G17|ram~123_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~123_combout\,
	datab => \G17|ALT_INV_ram~91_combout\,
	datac => \G17|ALT_INV_ram~107_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~488_combout\,
	datag => \G17|ALT_INV_ram~75_combout\,
	combout => \G17|ram~360_combout\);

-- Location: LABCELL_X16_Y9_N51
\G18|SAIDA[11]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[11]~16_combout\ = ( \G17|ram~364_combout\ & ( \G17|ram~360_combout\ & ( (((\G18|SAIDA[0]~2_combout\ & \G17|ram~267_combout\)) # (\G18|SAIDA[0]~1_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( !\G17|ram~364_combout\ & ( \G17|ram~360_combout\ 
-- & ( ((\G18|SAIDA[0]~2_combout\ & \G17|ram~267_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G17|ram~364_combout\ & ( !\G17|ram~360_combout\ & ( ((\G18|SAIDA[0]~2_combout\ & \G17|ram~267_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( 
-- !\G17|ram~364_combout\ & ( !\G17|ram~360_combout\ & ( (\G18|SAIDA[0]~2_combout\ & \G17|ram~267_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110101111100110011011101110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datad => \G17|ALT_INV_ram~267_combout\,
	datae => \G17|ALT_INV_ram~364_combout\,
	dataf => \G17|ALT_INV_ram~360_combout\,
	combout => \G18|SAIDA[11]~16_combout\);

-- Location: FF_X16_Y9_N20
\G7|Reg~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[11]~16_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~31_q\);

-- Location: LABCELL_X22_Y9_N6
\G7|Reg~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~159_combout\ = ( \G4|rd[0]~en_q\ & ( (!\G4|rd[0]~reg0_q\ & \G7|Reg~31_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~31_q\,
	dataf => \G4|ALT_INV_rd[0]~en_q\,
	combout => \G7|Reg~159_combout\);

-- Location: FF_X21_Y7_N56
\G7|Reg~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[12]~17_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~48_q\);

-- Location: LABCELL_X22_Y7_N57
\G7|Reg~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~176_combout\ = ( \G7|Reg~48_q\ & ( (\G4|rt[0]~en_q\ & ((\G7|Reg~32_q\) # (\G4|rt[0]~reg0_q\))) ) ) # ( !\G7|Reg~48_q\ & ( (!\G4|rt[0]~reg0_q\ & (\G7|Reg~32_q\ & \G4|rt[0]~en_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~reg0_q\,
	datab => \G7|ALT_INV_Reg~32_q\,
	datad => \G4|ALT_INV_rt[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~48_q\,
	combout => \G7|Reg~176_combout\);

-- Location: MLABCELL_X21_Y7_N33
\G17|ram~268\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~268_combout\ = ( \G17|ram~268_combout\ & ( (!\rtl~0_combout\) # (\G7|Reg~176_combout\) ) ) # ( !\G17|ram~268_combout\ & ( (\G7|Reg~176_combout\ & \rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~176_combout\,
	datac => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~268_combout\,
	combout => \G17|ram~268_combout\);

-- Location: MLABCELL_X21_Y7_N27
\G17|ram~252\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~252_combout\ = ( \G7|Reg~176_combout\ & ( (\G17|ram~252_combout\) # (\rtl~6_combout\) ) ) # ( !\G7|Reg~176_combout\ & ( (!\rtl~6_combout\ & \G17|ram~252_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~6_combout\,
	datad => \G17|ALT_INV_ram~252_combout\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	combout => \G17|ram~252_combout\);

-- Location: LABCELL_X22_Y7_N30
\G17|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~156_combout\ = ( \rtl~13_combout\ & ( \G7|Reg~176_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~156_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~176_combout\,
	datad => \G17|ALT_INV_ram~156_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~156_combout\);

-- Location: LABCELL_X22_Y7_N0
\G17|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~172_combout\ = ( \rtl~16_combout\ & ( \G7|Reg~176_combout\ ) ) # ( !\rtl~16_combout\ & ( \G7|Reg~176_combout\ & ( \G17|ram~172_combout\ ) ) ) # ( !\rtl~16_combout\ & ( !\G7|Reg~176_combout\ & ( \G17|ram~172_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~172_combout\,
	datae => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	combout => \G17|ram~172_combout\);

-- Location: LABCELL_X22_Y7_N27
\G17|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~188_combout\ = ( \G17|ram~188_combout\ & ( \G7|Reg~176_combout\ ) ) # ( !\G17|ram~188_combout\ & ( \G7|Reg~176_combout\ & ( \rtl~14_combout\ ) ) ) # ( \G17|ram~188_combout\ & ( !\G7|Reg~176_combout\ & ( !\rtl~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~14_combout\,
	datae => \G17|ALT_INV_ram~188_combout\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	combout => \G17|ram~188_combout\);

-- Location: MLABCELL_X21_Y7_N9
\G17|ram~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~140_combout\ = ( \rtl~15_combout\ & ( \G7|Reg~176_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~140_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~176_combout\,
	datac => \G17|ALT_INV_ram~140_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~140_combout\);

-- Location: MLABCELL_X21_Y7_N42
\G17|ram~500\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~500_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~140_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~156_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (\G17|ram~172_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~0_combout\ & (((\G17|ram~188_combout\) # (\G16|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~156_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~172_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~188_combout\,
	datag => \G17|ALT_INV_ram~140_combout\,
	combout => \G17|ram~500_combout\);

-- Location: LABCELL_X19_Y7_N30
\G17|ram~236\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~236_combout\ = ( \rtl~8_combout\ & ( \G17|ram~236_combout\ & ( \G7|Reg~176_combout\ ) ) ) # ( !\rtl~8_combout\ & ( \G17|ram~236_combout\ ) ) # ( \rtl~8_combout\ & ( !\G17|ram~236_combout\ & ( \G7|Reg~176_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~176_combout\,
	datae => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~236_combout\,
	combout => \G17|ram~236_combout\);

-- Location: MLABCELL_X21_Y7_N24
\G17|ram~220\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~220_combout\ = ( \G7|Reg~176_combout\ & ( (\G17|ram~220_combout\) # (\rtl~5_combout\) ) ) # ( !\G7|Reg~176_combout\ & ( (!\rtl~5_combout\ & \G17|ram~220_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~5_combout\,
	datac => \G17|ALT_INV_ram~220_combout\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	combout => \G17|ram~220_combout\);

-- Location: LABCELL_X19_Y7_N27
\G17|ram~204\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~204_combout\ = ( \rtl~7_combout\ & ( \G17|ram~204_combout\ & ( \G7|Reg~176_combout\ ) ) ) # ( !\rtl~7_combout\ & ( \G17|ram~204_combout\ ) ) # ( \rtl~7_combout\ & ( !\G17|ram~204_combout\ & ( \G7|Reg~176_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~176_combout\,
	datae => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~204_combout\,
	combout => \G17|ram~204_combout\);

-- Location: MLABCELL_X21_Y7_N0
\G17|ram~372\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~372_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G17|ram~500_combout\ & (\G17|ram~204_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~500_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~220_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~500_combout\ & (((\G17|ram~236_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~500_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~252_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~252_combout\,
	datab => \G17|ALT_INV_ram~500_combout\,
	datac => \G17|ALT_INV_ram~236_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~220_combout\,
	datag => \G17|ALT_INV_ram~204_combout\,
	combout => \G17|ram~372_combout\);

-- Location: MLABCELL_X21_Y7_N51
\G17|ram~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~92_combout\ = ( \G17|ram~92_combout\ & ( (!\rtl~1_combout\) # (\G7|Reg~176_combout\) ) ) # ( !\G17|ram~92_combout\ & ( (\G7|Reg~176_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~176_combout\,
	datac => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~92_combout\,
	combout => \G17|ram~92_combout\);

-- Location: MLABCELL_X21_Y7_N57
\G17|ram~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~124_combout\ = ( \G7|Reg~176_combout\ & ( (\G17|ram~124_combout\) # (\rtl~2_combout\) ) ) # ( !\G7|Reg~176_combout\ & ( (!\rtl~2_combout\ & \G17|ram~124_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~2_combout\,
	datad => \G17|ALT_INV_ram~124_combout\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	combout => \G17|ram~124_combout\);

-- Location: LABCELL_X22_Y7_N48
\G17|ram~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~108_combout\ = ( \rtl~4_combout\ & ( \G7|Reg~176_combout\ ) ) # ( !\rtl~4_combout\ & ( \G7|Reg~176_combout\ & ( \G17|ram~108_combout\ ) ) ) # ( !\rtl~4_combout\ & ( !\G7|Reg~176_combout\ & ( \G17|ram~108_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~108_combout\,
	datae => \ALT_INV_rtl~4_combout\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	combout => \G17|ram~108_combout\);

-- Location: MLABCELL_X21_Y7_N54
\G17|ram~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~60_combout\ = ( \rtl~10_combout\ & ( \G7|Reg~176_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~60_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~176_combout\,
	datac => \G17|ALT_INV_ram~60_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~60_combout\);

-- Location: MLABCELL_X21_Y7_N48
\G17|ram~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~44_combout\ = ( \G17|ram~44_combout\ & ( (!\rtl~12_combout\) # (\G7|Reg~176_combout\) ) ) # ( !\G17|ram~44_combout\ & ( (\G7|Reg~176_combout\ & \rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~176_combout\,
	datac => \ALT_INV_rtl~12_combout\,
	dataf => \G17|ALT_INV_ram~44_combout\,
	combout => \G17|ram~44_combout\);

-- Location: MLABCELL_X21_Y7_N30
\G17|ram~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~28_combout\ = ( \G17|ram~28_combout\ & ( (!\rtl~9_combout\) # (\G7|Reg~176_combout\) ) ) # ( !\G17|ram~28_combout\ & ( (\G7|Reg~176_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~176_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~28_combout\,
	combout => \G17|ram~28_combout\);

-- Location: MLABCELL_X21_Y7_N6
\G17|ram~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~12_combout\ = ( \G7|Reg~176_combout\ & ( (\rtl~11_combout\) # (\G17|ram~12_combout\) ) ) # ( !\G7|Reg~176_combout\ & ( (\G17|ram~12_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~12_combout\,
	datac => \ALT_INV_rtl~11_combout\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	combout => \G17|ram~12_combout\);

-- Location: MLABCELL_X21_Y7_N36
\G17|ram~496\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~496_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~0_combout\ & (\G17|ram~12_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~0_combout\ & (((\G17|ram~28_combout\) # (\G16|Mux13~0_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~44_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~60_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000111010011001100111111001100110001110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~60_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~44_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~28_combout\,
	datag => \G17|ALT_INV_ram~12_combout\,
	combout => \G17|ram~496_combout\);

-- Location: LABCELL_X22_Y7_N36
\G17|ram~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~76_combout\ = ( \G17|ram~76_combout\ & ( \G7|Reg~176_combout\ ) ) # ( !\G17|ram~76_combout\ & ( \G7|Reg~176_combout\ & ( \rtl~3_combout\ ) ) ) # ( \G17|ram~76_combout\ & ( !\G7|Reg~176_combout\ & ( !\rtl~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_rtl~3_combout\,
	datae => \G17|ALT_INV_ram~76_combout\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	combout => \G17|ram~76_combout\);

-- Location: MLABCELL_X21_Y7_N12
\G17|ram~368\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~368_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~496_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~496_combout\ & ((\G17|ram~76_combout\))) # (\G17|ram~496_combout\ & (\G17|ram~92_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~496_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~496_combout\ & ((\G17|ram~108_combout\))) # (\G17|ram~496_combout\ & (\G17|ram~124_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~92_combout\,
	datab => \G17|ALT_INV_ram~124_combout\,
	datac => \G17|ALT_INV_ram~108_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~496_combout\,
	datag => \G17|ALT_INV_ram~76_combout\,
	combout => \G17|ram~368_combout\);

-- Location: MLABCELL_X21_Y7_N21
\G18|SAIDA[12]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[12]~17_combout\ = ( \G18|SAIDA[0]~2_combout\ & ( \G17|ram~368_combout\ & ( (((\G18|SAIDA[0]~1_combout\ & \G17|ram~372_combout\)) # (\G17|ram~268_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( !\G18|SAIDA[0]~2_combout\ & ( 
-- \G17|ram~368_combout\ & ( ((\G18|SAIDA[0]~1_combout\ & \G17|ram~372_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G18|SAIDA[0]~2_combout\ & ( !\G17|ram~368_combout\ & ( ((\G18|SAIDA[0]~1_combout\ & \G17|ram~372_combout\)) # (\G17|ram~268_combout\) ) 
-- ) ) # ( !\G18|SAIDA[0]~2_combout\ & ( !\G17|ram~368_combout\ & ( (\G18|SAIDA[0]~1_combout\ & \G17|ram~372_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011111101010101011101110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datac => \G17|ALT_INV_ram~268_combout\,
	datad => \G17|ALT_INV_ram~372_combout\,
	datae => \G18|ALT_INV_SAIDA[0]~2_combout\,
	dataf => \G17|ALT_INV_ram~368_combout\,
	combout => \G18|SAIDA[12]~17_combout\);

-- Location: FF_X21_Y7_N20
\G7|Reg~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[12]~17_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~32_q\);

-- Location: LABCELL_X22_Y7_N21
\G7|Reg~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~160_combout\ = ( \G7|Reg~32_q\ & ( \G4|rd[0]~en_q\ & ( !\G4|rd[0]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rd[0]~reg0_q\,
	datae => \G7|ALT_INV_Reg~32_q\,
	dataf => \G4|ALT_INV_rd[0]~en_q\,
	combout => \G7|Reg~160_combout\);

-- Location: FF_X18_Y10_N50
\G7|Reg~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[13]~18_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~49_q\);

-- Location: LABCELL_X17_Y10_N0
\G7|Reg~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~177_combout\ = ( \G7|Reg~33_q\ & ( (\G4|rt[0]~en_q\ & ((!\G4|rt[0]~reg0_q\) # (\G7|Reg~49_q\))) ) ) # ( !\G7|Reg~33_q\ & ( (\G4|rt[0]~reg0_q\ & (\G7|Reg~49_q\ & \G4|rt[0]~en_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~49_q\,
	datad => \G4|ALT_INV_rt[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~33_q\,
	combout => \G7|Reg~177_combout\);

-- Location: LABCELL_X18_Y10_N24
\G17|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~173_combout\ = ( \rtl~16_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~173_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~177_combout\,
	datac => \G17|ALT_INV_ram~173_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~173_combout\);

-- Location: LABCELL_X16_Y10_N48
\G17|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~189_combout\ = ( \G17|ram~189_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\G17|ram~189_combout\ & ( \G7|Reg~177_combout\ & ( \rtl~14_combout\ ) ) ) # ( \G17|ram~189_combout\ & ( !\G7|Reg~177_combout\ & ( !\rtl~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~14_combout\,
	datae => \G17|ALT_INV_ram~189_combout\,
	dataf => \G7|ALT_INV_Reg~177_combout\,
	combout => \G17|ram~189_combout\);

-- Location: LABCELL_X18_Y10_N6
\G17|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~157_combout\ = ( \G7|Reg~177_combout\ & ( (\rtl~13_combout\) # (\G17|ram~157_combout\) ) ) # ( !\G7|Reg~177_combout\ & ( (\G17|ram~157_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~157_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Reg~177_combout\,
	combout => \G17|ram~157_combout\);

-- Location: LABCELL_X18_Y10_N39
\G17|ram~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~141_combout\ = ( \G17|ram~141_combout\ & ( (!\rtl~15_combout\) # (\G7|Reg~177_combout\) ) ) # ( !\G17|ram~141_combout\ & ( (\G7|Reg~177_combout\ & \rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~177_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G17|ALT_INV_ram~141_combout\,
	combout => \G17|ram~141_combout\);

-- Location: LABCELL_X18_Y10_N12
\G17|ram~508\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~508_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~141_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~157_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~0_combout\ & (\G17|ram~173_combout\)) # (\G16|Mux15~0_combout\ & (((\G17|ram~189_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~173_combout\,
	datad => \G17|ALT_INV_ram~189_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~157_combout\,
	datag => \G17|ALT_INV_ram~141_combout\,
	combout => \G17|ram~508_combout\);

-- Location: LABCELL_X18_Y10_N18
\G17|ram~237\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~237_combout\ = ( \G17|ram~237_combout\ & ( (!\rtl~8_combout\) # (\G7|Reg~177_combout\) ) ) # ( !\G17|ram~237_combout\ & ( (\G7|Reg~177_combout\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~177_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~237_combout\,
	combout => \G17|ram~237_combout\);

-- Location: LABCELL_X18_Y9_N48
\G17|ram~253\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~253_combout\ = ( \G17|ram~253_combout\ & ( (!\rtl~6_combout\) # (\G7|Reg~177_combout\) ) ) # ( !\G17|ram~253_combout\ & ( (\G7|Reg~177_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~177_combout\,
	datac => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~253_combout\,
	combout => \G17|ram~253_combout\);

-- Location: LABCELL_X17_Y10_N3
\G17|ram~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~221_combout\ = ( \G7|Reg~177_combout\ & ( (\rtl~5_combout\) # (\G17|ram~221_combout\) ) ) # ( !\G7|Reg~177_combout\ & ( (\G17|ram~221_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~221_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Reg~177_combout\,
	combout => \G17|ram~221_combout\);

-- Location: LABCELL_X17_Y10_N39
\G17|ram~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~205_combout\ = ( \G17|ram~205_combout\ & ( (!\rtl~7_combout\) # (\G7|Reg~177_combout\) ) ) # ( !\G17|ram~205_combout\ & ( (\G7|Reg~177_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~177_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~205_combout\,
	combout => \G17|ram~205_combout\);

-- Location: LABCELL_X18_Y10_N42
\G17|ram~380\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~380_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~508_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~508_combout\ & (\G17|ram~205_combout\)) # (\G17|ram~508_combout\ & (((\G17|ram~221_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~508_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~508_combout\ & (\G17|ram~237_combout\)) # (\G17|ram~508_combout\ & (((\G17|ram~253_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000100110001001100011011100110111001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~508_combout\,
	datac => \G17|ALT_INV_ram~237_combout\,
	datad => \G17|ALT_INV_ram~253_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~221_combout\,
	datag => \G17|ALT_INV_ram~205_combout\,
	combout => \G17|ram~380_combout\);

-- Location: LABCELL_X17_Y9_N0
\G17|ram~269\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~269_combout\ = ( \rtl~0_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\rtl~0_combout\ & ( \G17|ram~269_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~177_combout\,
	datad => \G17|ALT_INV_ram~269_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~269_combout\);

-- Location: LABCELL_X18_Y10_N36
\G17|ram~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~61_combout\ = ( \rtl~10_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~61_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~177_combout\,
	datad => \G17|ALT_INV_ram~61_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~61_combout\);

-- Location: LABCELL_X18_Y10_N54
\G17|ram~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~45_combout\ = ( \rtl~12_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~177_combout\,
	datad => \G17|ALT_INV_ram~45_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~45_combout\);

-- Location: LABCELL_X18_Y10_N9
\G17|ram~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~29_combout\ = ( \rtl~9_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~177_combout\,
	datac => \G17|ALT_INV_ram~29_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~29_combout\);

-- Location: LABCELL_X18_Y10_N21
\G17|ram~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~13_combout\ = ( \G17|ram~13_combout\ & ( (!\rtl~11_combout\) # (\G7|Reg~177_combout\) ) ) # ( !\G17|ram~13_combout\ & ( (\G7|Reg~177_combout\ & \rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~177_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G17|ALT_INV_ram~13_combout\,
	combout => \G17|ram~13_combout\);

-- Location: LABCELL_X18_Y10_N0
\G17|ram~504\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~504_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~0_combout\ & (\G17|ram~13_combout\ & ((!\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\) # (\G17|ram~29_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~45_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~61_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~61_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~45_combout\,
	datad => \G17|ALT_INV_ram~29_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~13_combout\,
	combout => \G17|ram~504_combout\);

-- Location: LABCELL_X19_Y10_N33
\G17|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~109_combout\ = ( \rtl~4_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~109_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~109_combout\,
	datac => \G7|ALT_INV_Reg~177_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~109_combout\);

-- Location: LABCELL_X17_Y10_N45
\G17|ram~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~93_combout\ = ( \rtl~1_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~93_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~177_combout\,
	datad => \G17|ALT_INV_ram~93_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~93_combout\);

-- Location: LABCELL_X17_Y10_N36
\G17|ram~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~125_combout\ = ( \rtl~2_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~125_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~177_combout\,
	datac => \G17|ALT_INV_ram~125_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~125_combout\);

-- Location: LABCELL_X17_Y10_N51
\G17|ram~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~77_combout\ = ( \rtl~3_combout\ & ( \G7|Reg~177_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~77_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~77_combout\,
	datac => \G7|ALT_INV_Reg~177_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~77_combout\);

-- Location: LABCELL_X18_Y10_N30
\G17|ram~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~376_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~504_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~77_combout\))) # (\G17|ram~504_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~93_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~504_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~109_combout\))) # (\G17|ram~504_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~125_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001010111010001100100011001000110010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~504_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~109_combout\,
	datad => \G17|ALT_INV_ram~93_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~125_combout\,
	datag => \G17|ALT_INV_ram~77_combout\,
	combout => \G17|ram~376_combout\);

-- Location: LABCELL_X18_Y10_N51
\G18|SAIDA[13]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[13]~18_combout\ = ( \G18|SAIDA[0]~0_combout\ & ( \G17|ram~376_combout\ ) ) # ( !\G18|SAIDA[0]~0_combout\ & ( \G17|ram~376_combout\ & ( (!\G18|SAIDA[0]~2_combout\ & (\G17|ram~380_combout\ & ((\G18|SAIDA[0]~1_combout\)))) # 
-- (\G18|SAIDA[0]~2_combout\ & (((\G17|ram~380_combout\ & \G18|SAIDA[0]~1_combout\)) # (\G17|ram~269_combout\))) ) ) ) # ( \G18|SAIDA[0]~0_combout\ & ( !\G17|ram~376_combout\ & ( (!\G18|SAIDA[0]~2_combout\ & (\G17|ram~380_combout\ & 
-- ((\G18|SAIDA[0]~1_combout\)))) # (\G18|SAIDA[0]~2_combout\ & (((\G17|ram~380_combout\ & \G18|SAIDA[0]~1_combout\)) # (\G17|ram~269_combout\))) ) ) ) # ( !\G18|SAIDA[0]~0_combout\ & ( !\G17|ram~376_combout\ & ( (!\G18|SAIDA[0]~2_combout\ & 
-- (\G17|ram~380_combout\ & ((\G18|SAIDA[0]~1_combout\)))) # (\G18|SAIDA[0]~2_combout\ & (((\G17|ram~380_combout\ & \G18|SAIDA[0]~1_combout\)) # (\G17|ram~269_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datab => \G17|ALT_INV_ram~380_combout\,
	datac => \G17|ALT_INV_ram~269_combout\,
	datad => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datae => \G18|ALT_INV_SAIDA[0]~0_combout\,
	dataf => \G17|ALT_INV_ram~376_combout\,
	combout => \G18|SAIDA[13]~18_combout\);

-- Location: FF_X18_Y10_N26
\G7|Reg~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[13]~18_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~33_q\);

-- Location: LABCELL_X16_Y9_N18
\G7|Reg~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~161_combout\ = ( \G4|rd[0]~en_q\ & ( (\G7|Reg~33_q\ & !\G4|rd[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~33_q\,
	datab => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G4|ALT_INV_rd[0]~en_q\,
	combout => \G7|Reg~161_combout\);

-- Location: FF_X19_Y9_N13
\G7|Reg~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[14]~19_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~50_q\);

-- Location: LABCELL_X19_Y9_N9
\G7|Reg~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~178_combout\ = ( \G7|Reg~34_q\ & ( (\G4|rt[0]~en_q\ & ((!\G4|rt[0]~reg0_q\) # (\G7|Reg~50_q\))) ) ) # ( !\G7|Reg~34_q\ & ( (\G7|Reg~50_q\ & (\G4|rt[0]~en_q\ & \G4|rt[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~50_q\,
	datac => \G4|ALT_INV_rt[0]~en_q\,
	datad => \G4|ALT_INV_rt[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~34_q\,
	combout => \G7|Reg~178_combout\);

-- Location: LABCELL_X18_Y9_N54
\G17|ram~270\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~270_combout\ = ( \G7|Reg~178_combout\ & ( (\G17|ram~270_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Reg~178_combout\ & ( (!\rtl~0_combout\ & \G17|ram~270_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~270_combout\,
	dataf => \G7|ALT_INV_Reg~178_combout\,
	combout => \G17|ram~270_combout\);

-- Location: LABCELL_X19_Y7_N45
\G17|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~190_combout\ = ( \G7|Reg~178_combout\ & ( (\G17|ram~190_combout\) # (\rtl~14_combout\) ) ) # ( !\G7|Reg~178_combout\ & ( (!\rtl~14_combout\ & \G17|ram~190_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~14_combout\,
	datad => \G17|ALT_INV_ram~190_combout\,
	dataf => \G7|ALT_INV_Reg~178_combout\,
	combout => \G17|ram~190_combout\);

-- Location: LABCELL_X19_Y9_N33
\G17|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~174_combout\ = ( \G17|ram~174_combout\ & ( (!\rtl~16_combout\) # (\G7|Reg~178_combout\) ) ) # ( !\G17|ram~174_combout\ & ( (\G7|Reg~178_combout\ & \rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~178_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G17|ALT_INV_ram~174_combout\,
	combout => \G17|ram~174_combout\);

-- Location: LABCELL_X19_Y7_N21
\G17|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~158_combout\ = ( \G17|ram~158_combout\ & ( \G7|Reg~178_combout\ ) ) # ( !\G17|ram~158_combout\ & ( \G7|Reg~178_combout\ & ( \rtl~13_combout\ ) ) ) # ( \G17|ram~158_combout\ & ( !\G7|Reg~178_combout\ & ( !\rtl~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~13_combout\,
	datae => \G17|ALT_INV_ram~158_combout\,
	dataf => \G7|ALT_INV_Reg~178_combout\,
	combout => \G17|ram~158_combout\);

-- Location: LABCELL_X19_Y9_N57
\G17|ram~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~142_combout\ = ( \G7|Reg~178_combout\ & ( (\rtl~15_combout\) # (\G17|ram~142_combout\) ) ) # ( !\G7|Reg~178_combout\ & ( (\G17|ram~142_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~142_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Reg~178_combout\,
	combout => \G17|ram~142_combout\);

-- Location: LABCELL_X19_Y9_N24
\G17|ram~516\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~516_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux15~0_combout\ & (\G17|ram~142_combout\ & ((!\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\) # (\G17|ram~158_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~174_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~190_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~190_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~174_combout\,
	datad => \G17|ALT_INV_ram~158_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~142_combout\,
	combout => \G17|ram~516_combout\);

-- Location: LABCELL_X19_Y9_N39
\G17|ram~254\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~254_combout\ = ( \G7|Reg~178_combout\ & ( (\G17|ram~254_combout\) # (\rtl~6_combout\) ) ) # ( !\G7|Reg~178_combout\ & ( (!\rtl~6_combout\ & \G17|ram~254_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~6_combout\,
	datac => \G17|ALT_INV_ram~254_combout\,
	dataf => \G7|ALT_INV_Reg~178_combout\,
	combout => \G17|ram~254_combout\);

-- Location: LABCELL_X19_Y9_N30
\G17|ram~238\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~238_combout\ = ( \G17|ram~238_combout\ & ( (!\rtl~8_combout\) # (\G7|Reg~178_combout\) ) ) # ( !\G17|ram~238_combout\ & ( (\G7|Reg~178_combout\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~178_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~238_combout\,
	combout => \G17|ram~238_combout\);

-- Location: LABCELL_X19_Y9_N36
\G17|ram~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~222_combout\ = ( \G7|Reg~178_combout\ & ( (\G17|ram~222_combout\) # (\rtl~5_combout\) ) ) # ( !\G7|Reg~178_combout\ & ( (!\rtl~5_combout\ & \G17|ram~222_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~5_combout\,
	datad => \G17|ALT_INV_ram~222_combout\,
	dataf => \G7|ALT_INV_Reg~178_combout\,
	combout => \G17|ram~222_combout\);

-- Location: LABCELL_X19_Y9_N54
\G17|ram~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~206_combout\ = ( \rtl~7_combout\ & ( \G7|Reg~178_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~206_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~178_combout\,
	datad => \G17|ALT_INV_ram~206_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~206_combout\);

-- Location: LABCELL_X19_Y9_N0
\G17|ram~388\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~388_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~516_combout\ & (((\G17|ram~206_combout\ & ((\G16|Mux13~0_combout\)))))) # (\G17|ram~516_combout\ & ((((!\G16|Mux13~0_combout\) # (\G17|ram~222_combout\))))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G17|ram~516_combout\ & (((\G17|ram~238_combout\ & ((\G16|Mux13~0_combout\)))))) # (\G17|ram~516_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~254_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~516_combout\,
	datab => \G17|ALT_INV_ram~254_combout\,
	datac => \G17|ALT_INV_ram~238_combout\,
	datad => \G17|ALT_INV_ram~222_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~206_combout\,
	combout => \G17|ram~388_combout\);

-- Location: LABCELL_X19_Y9_N21
\G17|ram~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~126_combout\ = ( \rtl~2_combout\ & ( \G7|Reg~178_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~126_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~178_combout\,
	datad => \G17|ALT_INV_ram~126_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~126_combout\);

-- Location: LABCELL_X19_Y8_N48
\G17|ram~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~110_combout\ = ( \rtl~4_combout\ & ( \G17|ram~110_combout\ & ( \G7|Reg~178_combout\ ) ) ) # ( !\rtl~4_combout\ & ( \G17|ram~110_combout\ ) ) # ( \rtl~4_combout\ & ( !\G17|ram~110_combout\ & ( \G7|Reg~178_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~178_combout\,
	datae => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~110_combout\,
	combout => \G17|ram~110_combout\);

-- Location: LABCELL_X18_Y9_N45
\G17|ram~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~30_combout\ = ( \G7|Reg~178_combout\ & ( (\G17|ram~30_combout\) # (\rtl~9_combout\) ) ) # ( !\G7|Reg~178_combout\ & ( (!\rtl~9_combout\ & \G17|ram~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~9_combout\,
	datad => \G17|ALT_INV_ram~30_combout\,
	dataf => \G7|ALT_INV_Reg~178_combout\,
	combout => \G17|ram~30_combout\);

-- Location: LABCELL_X18_Y9_N18
\G17|ram~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~46_combout\ = ( \G7|Reg~178_combout\ & ( (\G17|ram~46_combout\) # (\rtl~12_combout\) ) ) # ( !\G7|Reg~178_combout\ & ( (!\rtl~12_combout\ & \G17|ram~46_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~12_combout\,
	datac => \G17|ALT_INV_ram~46_combout\,
	dataf => \G7|ALT_INV_Reg~178_combout\,
	combout => \G17|ram~46_combout\);

-- Location: LABCELL_X16_Y9_N30
\G17|ram~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~62_combout\ = ( \G17|ram~62_combout\ & ( (!\rtl~10_combout\) # (\G7|Reg~178_combout\) ) ) # ( !\G17|ram~62_combout\ & ( (\G7|Reg~178_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~178_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~62_combout\,
	combout => \G17|ram~62_combout\);

-- Location: LABCELL_X18_Y9_N0
\G17|ram~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~14_combout\ = (!\rtl~11_combout\ & ((\G17|ram~14_combout\))) # (\rtl~11_combout\ & (\G7|Reg~178_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~178_combout\,
	datac => \G17|ALT_INV_ram~14_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~14_combout\);

-- Location: LABCELL_X19_Y9_N48
\G17|ram~512\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~512_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~14_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~30_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (\G17|ram~46_combout\ & ((!\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\) # (\G17|ram~62_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~30_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G17|ALT_INV_ram~46_combout\,
	datad => \G17|ALT_INV_ram~62_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~14_combout\,
	combout => \G17|ram~512_combout\);

-- Location: LABCELL_X19_Y9_N18
\G17|ram~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~94_combout\ = ( \rtl~1_combout\ & ( \G7|Reg~178_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~94_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~94_combout\,
	datac => \G7|ALT_INV_Reg~178_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~94_combout\);

-- Location: LABCELL_X19_Y9_N6
\G17|ram~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~78_combout\ = ( \rtl~3_combout\ & ( \G7|Reg~178_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~78_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~178_combout\,
	datad => \G17|ALT_INV_ram~78_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~78_combout\);

-- Location: LABCELL_X19_Y9_N42
\G17|ram~384\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~384_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~512_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~512_combout\ & (\G17|ram~78_combout\)) # (\G17|ram~512_combout\ & ((\G17|ram~94_combout\)))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~512_combout\))))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~512_combout\ & (((\G17|ram~110_combout\)))) # (\G17|ram~512_combout\ & (\G17|ram~126_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001100000000111101110100000011111111110000001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~126_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~110_combout\,
	datad => \G17|ALT_INV_ram~512_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~94_combout\,
	datag => \G17|ALT_INV_ram~78_combout\,
	combout => \G17|ram~384_combout\);

-- Location: LABCELL_X19_Y9_N15
\G18|SAIDA[14]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[14]~19_combout\ = ( \G18|SAIDA[0]~2_combout\ & ( \G17|ram~384_combout\ & ( (((\G18|SAIDA[0]~1_combout\ & \G17|ram~388_combout\)) # (\G18|SAIDA[0]~0_combout\)) # (\G17|ram~270_combout\) ) ) ) # ( !\G18|SAIDA[0]~2_combout\ & ( 
-- \G17|ram~384_combout\ & ( ((\G18|SAIDA[0]~1_combout\ & \G17|ram~388_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G18|SAIDA[0]~2_combout\ & ( !\G17|ram~384_combout\ & ( ((\G18|SAIDA[0]~1_combout\ & \G17|ram~388_combout\)) # (\G17|ram~270_combout\) ) 
-- ) ) # ( !\G18|SAIDA[0]~2_combout\ & ( !\G17|ram~384_combout\ & ( (\G18|SAIDA[0]~1_combout\ & \G17|ram~388_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101111100110011001111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~270_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datad => \G17|ALT_INV_ram~388_combout\,
	datae => \G18|ALT_INV_SAIDA[0]~2_combout\,
	dataf => \G17|ALT_INV_ram~384_combout\,
	combout => \G18|SAIDA[14]~19_combout\);

-- Location: FF_X19_Y9_N20
\G7|Reg~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[14]~19_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~34_q\);

-- Location: LABCELL_X22_Y9_N3
\G7|Reg~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~162_combout\ = ( \G7|Reg~34_q\ & ( (\G4|rd[0]~en_q\ & !\G4|rd[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~34_q\,
	combout => \G7|Reg~162_combout\);

-- Location: FF_X21_Y9_N20
\G7|Reg~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[15]~20_combout\,
	sload => VCC,
	ena => \G7|Reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~51_q\);

-- Location: LABCELL_X17_Y9_N3
\G7|Reg~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~179_combout\ = ( \G7|Reg~35_q\ & ( (\G4|rt[0]~en_q\ & ((!\G4|rt[0]~reg0_q\) # (\G7|Reg~51_q\))) ) ) # ( !\G7|Reg~35_q\ & ( (\G4|rt[0]~reg0_q\ & (\G7|Reg~51_q\ & \G4|rt[0]~en_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~reg0_q\,
	datac => \G7|ALT_INV_Reg~51_q\,
	datad => \G4|ALT_INV_rt[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~35_q\,
	combout => \G7|Reg~179_combout\);

-- Location: LABCELL_X22_Y9_N18
\G17|ram~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~271_combout\ = ( \rtl~0_combout\ & ( \G17|ram~271_combout\ & ( \G7|Reg~179_combout\ ) ) ) # ( !\rtl~0_combout\ & ( \G17|ram~271_combout\ ) ) # ( \rtl~0_combout\ & ( !\G17|ram~271_combout\ & ( \G7|Reg~179_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~179_combout\,
	datae => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~271_combout\,
	combout => \G17|ram~271_combout\);

-- Location: MLABCELL_X21_Y9_N51
\G17|ram~223\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~223_combout\ = ( \G17|ram~223_combout\ & ( (!\rtl~5_combout\) # (\G7|Reg~179_combout\) ) ) # ( !\G17|ram~223_combout\ & ( (\G7|Reg~179_combout\ & \rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~179_combout\,
	datac => \ALT_INV_rtl~5_combout\,
	dataf => \G17|ALT_INV_ram~223_combout\,
	combout => \G17|ram~223_combout\);

-- Location: MLABCELL_X21_Y9_N24
\G17|ram~255\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~255_combout\ = ( \G17|ram~255_combout\ & ( (!\rtl~6_combout\) # (\G7|Reg~179_combout\) ) ) # ( !\G17|ram~255_combout\ & ( (\G7|Reg~179_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~179_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~255_combout\,
	combout => \G17|ram~255_combout\);

-- Location: LABCELL_X19_Y8_N6
\G17|ram~239\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~239_combout\ = ( \rtl~8_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~239_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~179_combout\,
	datad => \G17|ALT_INV_ram~239_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~239_combout\);

-- Location: MLABCELL_X21_Y9_N45
\G17|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~159_combout\ = ( \rtl~13_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~159_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~179_combout\,
	datad => \G17|ALT_INV_ram~159_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~159_combout\);

-- Location: LABCELL_X22_Y9_N0
\G17|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~175_combout\ = ( \rtl~16_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~175_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~179_combout\,
	datad => \G17|ALT_INV_ram~175_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~175_combout\);

-- Location: LABCELL_X22_Y9_N9
\G17|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~191_combout\ = ( \G17|ram~191_combout\ & ( (!\rtl~14_combout\) # (\G7|Reg~179_combout\) ) ) # ( !\G17|ram~191_combout\ & ( (\G7|Reg~179_combout\ & \rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~179_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G17|ALT_INV_ram~191_combout\,
	combout => \G17|ram~191_combout\);

-- Location: LABCELL_X17_Y9_N57
\G17|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~143_combout\ = ( \G7|Reg~179_combout\ & ( (\rtl~15_combout\) # (\G17|ram~143_combout\) ) ) # ( !\G7|Reg~179_combout\ & ( (\G17|ram~143_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~143_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Reg~179_combout\,
	combout => \G17|ram~143_combout\);

-- Location: MLABCELL_X21_Y9_N6
\G17|ram~524\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~524_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~143_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~159_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~175_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~0_combout\ & ((((\G17|ram~191_combout\) # (\G16|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G17|ALT_INV_ram~159_combout\,
	datac => \G17|ALT_INV_ram~175_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~191_combout\,
	datag => \G17|ALT_INV_ram~143_combout\,
	combout => \G17|ram~524_combout\);

-- Location: LABCELL_X19_Y8_N33
\G17|ram~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~207_combout\ = ( \rtl~7_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~207_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~179_combout\,
	datad => \G17|ALT_INV_ram~207_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~207_combout\);

-- Location: MLABCELL_X21_Y9_N0
\G17|ram~396\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~396_combout\ = ( !\G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~524_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~524_combout\ & ((\G17|ram~207_combout\))) # (\G17|ram~524_combout\ & (\G17|ram~223_combout\))))) ) ) # ( 
-- \G16|Mux14~1_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~524_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~524_combout\ & ((\G17|ram~239_combout\))) # (\G17|ram~524_combout\ & (\G17|ram~255_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~223_combout\,
	datab => \G17|ALT_INV_ram~255_combout\,
	datac => \G17|ALT_INV_ram~239_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~524_combout\,
	datag => \G17|ALT_INV_ram~207_combout\,
	combout => \G17|ram~396_combout\);

-- Location: MLABCELL_X21_Y9_N54
\G17|ram~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~95_combout\ = ( \rtl~1_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~95_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~179_combout\,
	datad => \G17|ALT_INV_ram~95_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~95_combout\);

-- Location: MLABCELL_X21_Y9_N42
\G17|ram~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~31_combout\ = ( \G17|ram~31_combout\ & ( (!\rtl~9_combout\) # (\G7|Reg~179_combout\) ) ) # ( !\G17|ram~31_combout\ & ( (\G7|Reg~179_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~179_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~31_combout\,
	combout => \G17|ram~31_combout\);

-- Location: MLABCELL_X21_Y9_N27
\G17|ram~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~47_combout\ = ( \rtl~12_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~47_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~179_combout\,
	datad => \G17|ALT_INV_ram~47_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~47_combout\);

-- Location: MLABCELL_X21_Y9_N39
\G17|ram~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~63_combout\ = ( \G17|ram~63_combout\ & ( (!\rtl~10_combout\) # (\G7|Reg~179_combout\) ) ) # ( !\G17|ram~63_combout\ & ( (\G7|Reg~179_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~179_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~63_combout\,
	combout => \G17|ram~63_combout\);

-- Location: MLABCELL_X21_Y9_N57
\G17|ram~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~15_combout\ = ( \rtl~11_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~179_combout\,
	datad => \G17|ALT_INV_ram~15_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~15_combout\);

-- Location: MLABCELL_X21_Y9_N30
\G17|ram~520\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~520_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G16|Mux15~0_combout\ & (((\G17|ram~15_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~31_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- (!\G16|Mux15~0_combout\ & (((\G17|ram~47_combout\ & ((!\G16|Mux13~0_combout\)))))) # (\G16|Mux15~0_combout\ & ((((\G16|Mux13~0_combout\) # (\G17|ram~63_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G17|ALT_INV_ram~31_combout\,
	datac => \G17|ALT_INV_ram~47_combout\,
	datad => \G17|ALT_INV_ram~63_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~15_combout\,
	combout => \G17|ram~520_combout\);

-- Location: MLABCELL_X21_Y9_N36
\G17|ram~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~111_combout\ = ( \rtl~4_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~111_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~179_combout\,
	datac => \G17|ALT_INV_ram~111_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~111_combout\);

-- Location: MLABCELL_X21_Y9_N48
\G17|ram~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~127_combout\ = ( \rtl~2_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~127_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~179_combout\,
	datac => \G17|ALT_INV_ram~127_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~127_combout\);

-- Location: LABCELL_X22_Y9_N54
\G17|ram~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~79_combout\ = ( \rtl~3_combout\ & ( \G7|Reg~179_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~79_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~179_combout\,
	datad => \G17|ALT_INV_ram~79_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~79_combout\);

-- Location: MLABCELL_X21_Y9_N12
\G17|ram~392\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~392_combout\ = ( !\G16|Mux14~1_combout\ & ( (!\G17|ram~520_combout\ & (((\G17|ram~79_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~520_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~95_combout\))) ) ) # ( \G16|Mux14~1_combout\ & ( 
-- ((!\G17|ram~520_combout\ & (\G17|ram~111_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~520_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~127_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~95_combout\,
	datab => \G17|ALT_INV_ram~520_combout\,
	datac => \G17|ALT_INV_ram~111_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G17|ALT_INV_ram~127_combout\,
	datag => \G17|ALT_INV_ram~79_combout\,
	combout => \G17|ram~392_combout\);

-- Location: MLABCELL_X21_Y9_N21
\G18|SAIDA[15]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[15]~20_combout\ = ( \G17|ram~396_combout\ & ( \G17|ram~392_combout\ & ( (((\G17|ram~271_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~0_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( !\G17|ram~396_combout\ & ( \G17|ram~392_combout\ 
-- & ( ((\G17|ram~271_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~0_combout\) ) ) ) # ( \G17|ram~396_combout\ & ( !\G17|ram~392_combout\ & ( ((\G17|ram~271_combout\ & \G18|SAIDA[0]~2_combout\)) # (\G18|SAIDA[0]~1_combout\) ) ) ) # ( 
-- !\G17|ram~396_combout\ & ( !\G17|ram~392_combout\ & ( (\G17|ram~271_combout\ & \G18|SAIDA[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~271_combout\,
	datab => \G18|ALT_INV_SAIDA[0]~2_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~1_combout\,
	datad => \G18|ALT_INV_SAIDA[0]~0_combout\,
	datae => \G17|ALT_INV_ram~396_combout\,
	dataf => \G17|ALT_INV_ram~392_combout\,
	combout => \G18|SAIDA[15]~20_combout\);

-- Location: FF_X21_Y9_N38
\G7|Reg~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G18|SAIDA[15]~20_combout\,
	sload => VCC,
	ena => \G7|Reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|Reg~35_q\);

-- Location: LABCELL_X22_Y9_N57
\G7|Reg~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~163_combout\ = ( \G7|Reg~35_q\ & ( (\G4|rd[0]~en_q\ & !\G4|rd[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~en_q\,
	datac => \G4|ALT_INV_rd[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~35_q\,
	combout => \G7|Reg~163_combout\);

-- Location: MLABCELL_X21_Y8_N42
\G6|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[0]~0_combout\ = ( \G4|rt[0]~reg0_q\ & ( \G4|rt[0]~en_q\ & ( ((\G4|op[0]~reg0_q\) # (\G4|rs[0]~reg0_q\)) # (\G4|op[1]~reg0_q\) ) ) ) # ( !\G4|rt[0]~reg0_q\ & ( \G4|rt[0]~en_q\ & ( (!\G4|op[1]~reg0_q\ & (\G4|rs[0]~reg0_q\ & !\G4|op[0]~reg0_q\)) ) 
-- ) ) # ( \G4|rt[0]~reg0_q\ & ( !\G4|rt[0]~en_q\ ) ) # ( !\G4|rt[0]~reg0_q\ & ( !\G4|rt[0]~en_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100000001000000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[1]~reg0_q\,
	datab => \G4|ALT_INV_rs[0]~reg0_q\,
	datac => \G4|ALT_INV_op[0]~reg0_q\,
	datae => \G4|ALT_INV_rt[0]~reg0_q\,
	dataf => \G4|ALT_INV_rt[0]~en_q\,
	combout => \G6|SAIDA[0]~0_combout\);

-- Location: LABCELL_X57_Y4_N15
\G6|SAIDA[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[2]~1_combout\ = ( \G4|rs[2]~reg0_q\ & ( (!\G4|rt[0]~en_q\) # ((!\G4|op[0]~reg0_q\ & !\G4|op[1]~reg0_q\)) ) ) # ( !\G4|rs[2]~reg0_q\ & ( !\G4|rt[0]~en_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rt[0]~en_q\,
	datab => \G4|ALT_INV_op[0]~reg0_q\,
	datac => \G4|ALT_INV_op[1]~reg0_q\,
	dataf => \G4|ALT_INV_rs[2]~reg0_q\,
	combout => \G6|SAIDA[2]~1_combout\);

-- Location: LABCELL_X16_Y7_N24
\G16|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~21_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~169_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~153_combout\ ) + ( \G16|Add1~2\ ))
-- \G16|Add1~22\ = CARRY(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~169_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~153_combout\ ) + ( \G16|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~153_combout\,
	datad => \G7|ALT_INV_Reg~169_combout\,
	cin => \G16|Add1~2\,
	sumout => \G16|Add1~21_sumout\,
	cout => \G16|Add1~22\);

-- Location: LABCELL_X17_Y7_N15
\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & (\G7|Reg~169_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~en_q\))) ) + ( \G7|Reg~153_combout\ ) + ( \G16|Add0~2\ ))
-- \G16|Add0~22\ = CARRY(( (!\G5|Equal0~0_combout\ & (\G7|Reg~169_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~en_q\))) ) + ( \G7|Reg~153_combout\ ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~169_combout\,
	datad => \G4|ALT_INV_tipoi[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~153_combout\,
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

-- Location: MLABCELL_X15_Y9_N36
\G16|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~0_combout\ = ( \G16|Add0~21_sumout\ & ( (\G4|tipoi[0]~en_q\ & (\G4|funct[2]~reg0_q\ & !\G7|Reg~153_combout\)) ) ) # ( !\G16|Add0~21_sumout\ & ( (!\G4|funct[2]~reg0_q\) # ((\G4|tipoi[0]~en_q\ & !\G7|Reg~153_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110000111100111111000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_tipoi[0]~en_q\,
	datac => \G4|ALT_INV_funct[2]~reg0_q\,
	datad => \G7|ALT_INV_Reg~153_combout\,
	dataf => \G16|ALT_INV_Add0~21_sumout\,
	combout => \G16|Mux10~0_combout\);

-- Location: MLABCELL_X15_Y9_N39
\G16|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~1_combout\ = ( \G16|Mux10~0_combout\ & ( (\G16|Add1~21_sumout\ & \G16|Mux11~0_combout\) ) ) # ( !\G16|Mux10~0_combout\ & ( ((\G16|Add1~21_sumout\ & \G16|Mux11~0_combout\)) # (\G16|Mux11~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~21_sumout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	dataf => \G16|ALT_INV_Mux10~0_combout\,
	combout => \G16|Mux10~1_combout\);

-- Location: LABCELL_X16_Y7_N27
\G16|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~25_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~170_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~154_combout\ ) + ( \G16|Add1~22\ ))
-- \G16|Add1~26\ = CARRY(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~170_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~154_combout\ ) + ( \G16|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~154_combout\,
	datad => \G7|ALT_INV_Reg~170_combout\,
	cin => \G16|Add1~22\,
	sumout => \G16|Add1~25_sumout\,
	cout => \G16|Add1~26\);

-- Location: LABCELL_X17_Y7_N18
\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & (\G7|Reg~170_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~en_q\))) ) + ( \G7|Reg~154_combout\ ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( (!\G5|Equal0~0_combout\ & (\G7|Reg~170_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~en_q\))) ) + ( \G7|Reg~154_combout\ ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~170_combout\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_tipoi[0]~en_q\,
	dataf => \G7|ALT_INV_Reg~154_combout\,
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

-- Location: LABCELL_X17_Y4_N45
\G16|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~0_combout\ = ( \G4|tipoi[0]~en_q\ & ( \G16|Add0~25_sumout\ & ( (!\G7|Reg~154_combout\ & \G4|funct[2]~reg0_q\) ) ) ) # ( \G4|tipoi[0]~en_q\ & ( !\G16|Add0~25_sumout\ & ( (!\G7|Reg~154_combout\) # (!\G4|funct[2]~reg0_q\) ) ) ) # ( 
-- !\G4|tipoi[0]~en_q\ & ( !\G16|Add0~25_sumout\ & ( !\G4|funct[2]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg~154_combout\,
	datad => \G4|ALT_INV_funct[2]~reg0_q\,
	datae => \G4|ALT_INV_tipoi[0]~en_q\,
	dataf => \G16|ALT_INV_Add0~25_sumout\,
	combout => \G16|Mux9~0_combout\);

-- Location: MLABCELL_X15_Y9_N9
\G16|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~1_combout\ = ( \G16|Mux11~0_combout\ & ( \G16|Mux9~0_combout\ & ( \G16|Add1~25_sumout\ ) ) ) # ( \G16|Mux11~0_combout\ & ( !\G16|Mux9~0_combout\ & ( (\G16|Add1~25_sumout\) # (\G16|Mux11~2_combout\) ) ) ) # ( !\G16|Mux11~0_combout\ & ( 
-- !\G16|Mux9~0_combout\ & ( \G16|Mux11~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G16|ALT_INV_Add1~25_sumout\,
	datae => \G16|ALT_INV_Mux11~0_combout\,
	dataf => \G16|ALT_INV_Mux9~0_combout\,
	combout => \G16|Mux9~1_combout\);

-- Location: LABCELL_X16_Y7_N30
\G16|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~29_sumout\ = SUM(( \G7|Reg~155_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~171_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G16|Add1~26\ ))
-- \G16|Add1~30\ = CARRY(( \G7|Reg~155_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~171_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G16|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101110111000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~155_combout\,
	dataf => \G7|ALT_INV_Reg~171_combout\,
	cin => \G16|Add1~26\,
	sumout => \G16|Add1~29_sumout\,
	cout => \G16|Add1~30\);

-- Location: LABCELL_X17_Y7_N21
\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( \G7|Reg~155_combout\ ) + ( (!\G5|Equal0~0_combout\ & (\G7|Reg~171_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~en_q\))) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( \G7|Reg~155_combout\ ) + ( (!\G5|Equal0~0_combout\ & (\G7|Reg~171_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~en_q\))) ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~171_combout\,
	datad => \G7|ALT_INV_Reg~155_combout\,
	dataf => \G4|ALT_INV_tipoi[0]~en_q\,
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

-- Location: MLABCELL_X15_Y9_N24
\G16|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux8~0_combout\ = ( \G16|Add0~29_sumout\ & ( \G4|funct[2]~reg0_q\ & ( (!\G7|Reg~155_combout\ & \G4|tipoi[0]~en_q\) ) ) ) # ( !\G16|Add0~29_sumout\ & ( \G4|funct[2]~reg0_q\ & ( (!\G7|Reg~155_combout\ & \G4|tipoi[0]~en_q\) ) ) ) # ( 
-- !\G16|Add0~29_sumout\ & ( !\G4|funct[2]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg~155_combout\,
	datad => \G4|ALT_INV_tipoi[0]~en_q\,
	datae => \G16|ALT_INV_Add0~29_sumout\,
	dataf => \G4|ALT_INV_funct[2]~reg0_q\,
	combout => \G16|Mux8~0_combout\);

-- Location: MLABCELL_X15_Y9_N30
\G16|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux8~1_combout\ = ( \G16|Mux8~0_combout\ & ( (\G16|Add1~29_sumout\ & \G16|Mux11~0_combout\) ) ) # ( !\G16|Mux8~0_combout\ & ( ((\G16|Add1~29_sumout\ & \G16|Mux11~0_combout\)) # (\G16|Mux11~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G16|ALT_INV_Add1~29_sumout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	dataf => \G16|ALT_INV_Mux8~0_combout\,
	combout => \G16|Mux8~1_combout\);

-- Location: LABCELL_X16_Y7_N33
\G16|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~33_sumout\ = SUM(( \G7|Reg~156_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~172_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G16|Add1~30\ ))
-- \G16|Add1~34\ = CARRY(( \G7|Reg~156_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~172_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G16|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101110111000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~156_combout\,
	dataf => \G7|ALT_INV_Reg~172_combout\,
	cin => \G16|Add1~30\,
	sumout => \G16|Add1~33_sumout\,
	cout => \G16|Add1~34\);

-- Location: LABCELL_X17_Y7_N24
\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((\G7|Reg~172_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~156_combout\ ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( (!\G5|Equal0~0_combout\ & ((\G7|Reg~172_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~156_combout\ ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~172_combout\,
	dataf => \G7|ALT_INV_Reg~156_combout\,
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

-- Location: LABCELL_X22_Y9_N36
\G16|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~33_sumout\)))) # (\G4|funct[2]~reg0_q\ & ((!\G4|tipoi[0]~en_q\) # ((\G7|Reg~156_combout\)))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- (\G16|Mux12~0_combout\ & (((\G16|Add1~33_sumout\ & ((!\G4|funct[2]~reg0_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010101000100010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~0_combout\,
	datab => \G4|ALT_INV_tipoi[0]~en_q\,
	datac => \G16|ALT_INV_Add1~33_sumout\,
	datad => \G7|ALT_INV_Reg~156_combout\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G4|ALT_INV_funct[2]~reg0_q\,
	datag => \G16|ALT_INV_Add0~33_sumout\,
	combout => \G16|Mux7~0_combout\);

-- Location: LABCELL_X16_Y7_N36
\G16|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~37_sumout\ = SUM(( \G7|Reg~157_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~173_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G16|Add1~34\ ))
-- \G16|Add1~38\ = CARRY(( \G7|Reg~157_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~173_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G16|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101110111000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~157_combout\,
	dataf => \G7|ALT_INV_Reg~173_combout\,
	cin => \G16|Add1~34\,
	sumout => \G16|Add1~37_sumout\,
	cout => \G16|Add1~38\);

-- Location: LABCELL_X17_Y7_N27
\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((\G7|Reg~173_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~157_combout\ ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( (!\G5|Equal0~0_combout\ & ((\G7|Reg~173_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~157_combout\ ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~173_combout\,
	dataf => \G7|ALT_INV_Reg~157_combout\,
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

-- Location: LABCELL_X22_Y9_N48
\G16|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux6~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~37_sumout\)))) # (\G4|funct[2]~reg0_q\ & (((!\G4|tipoi[0]~en_q\)) # (\G7|Reg~157_combout\))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- ((\G16|Mux12~0_combout\ & (\G16|Add1~37_sumout\ & ((!\G4|funct[2]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001100110011000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~157_combout\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G16|ALT_INV_Add1~37_sumout\,
	datad => \G4|ALT_INV_tipoi[0]~en_q\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G4|ALT_INV_funct[2]~reg0_q\,
	datag => \G16|ALT_INV_Add0~37_sumout\,
	combout => \G16|Mux6~0_combout\);

-- Location: LABCELL_X16_Y7_N39
\G16|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~41_sumout\ = SUM(( \G7|Reg~158_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~174_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G16|Add1~38\ ))
-- \G16|Add1~42\ = CARRY(( \G7|Reg~158_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~174_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G16|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101110111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datad => \G7|ALT_INV_Reg~158_combout\,
	dataf => \G7|ALT_INV_Reg~174_combout\,
	cin => \G16|Add1~38\,
	sumout => \G16|Add1~41_sumout\,
	cout => \G16|Add1~42\);

-- Location: LABCELL_X17_Y7_N30
\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( \G7|Reg~158_combout\ ) + ( (!\G5|Equal0~0_combout\ & (\G7|Reg~174_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~en_q\))) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( \G7|Reg~158_combout\ ) + ( (!\G5|Equal0~0_combout\ & (\G7|Reg~174_combout\)) # (\G5|Equal0~0_combout\ & ((!\G4|tipoi[0]~en_q\))) ) + ( \G16|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~174_combout\,
	datad => \G7|ALT_INV_Reg~158_combout\,
	dataf => \G4|ALT_INV_tipoi[0]~en_q\,
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

-- Location: LABCELL_X17_Y4_N36
\G16|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux5~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~41_sumout\)))) # (\G4|funct[2]~reg0_q\ & ((!\G4|tipoi[0]~en_q\) # ((\G7|Reg~158_combout\)))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- ((\G16|Mux12~0_combout\ & (\G16|Add1~41_sumout\ & ((!\G4|funct[2]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001100100010001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G16|ALT_INV_Add1~41_sumout\,
	datad => \G7|ALT_INV_Reg~158_combout\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G4|ALT_INV_funct[2]~reg0_q\,
	datag => \G16|ALT_INV_Add0~41_sumout\,
	combout => \G16|Mux5~0_combout\);

-- Location: LABCELL_X16_Y7_N42
\G16|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~45_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~175_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~159_combout\ ) + ( \G16|Add1~42\ ))
-- \G16|Add1~46\ = CARRY(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~175_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~159_combout\ ) + ( \G16|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~175_combout\,
	dataf => \G7|ALT_INV_Reg~159_combout\,
	cin => \G16|Add1~42\,
	sumout => \G16|Add1~45_sumout\,
	cout => \G16|Add1~46\);

-- Location: LABCELL_X17_Y7_N33
\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((\G7|Reg~175_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~159_combout\ ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( (!\G5|Equal0~0_combout\ & ((\G7|Reg~175_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~159_combout\ ) + ( \G16|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~175_combout\,
	dataf => \G7|ALT_INV_Reg~159_combout\,
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

-- Location: MLABCELL_X21_Y8_N39
\G16|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux4~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~45_sumout\)))) # (\G4|funct[2]~reg0_q\ & ((!\G4|tipoi[0]~en_q\) # ((\G7|Reg~159_combout\)))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- ((!\G4|funct[2]~reg0_q\ & (\G16|Add1~45_sumout\ & (\G16|Mux12~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000101110000000000000110000000000001111110000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G4|ALT_INV_funct[2]~reg0_q\,
	datac => \G16|ALT_INV_Add1~45_sumout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~159_combout\,
	datag => \G16|ALT_INV_Add0~45_sumout\,
	combout => \G16|Mux4~0_combout\);

-- Location: LABCELL_X16_Y7_N45
\G16|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~49_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~176_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~160_combout\ ) + ( \G16|Add1~46\ ))
-- \G16|Add1~50\ = CARRY(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~176_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~160_combout\ ) + ( \G16|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~160_combout\,
	datad => \G7|ALT_INV_Reg~176_combout\,
	cin => \G16|Add1~46\,
	sumout => \G16|Add1~49_sumout\,
	cout => \G16|Add1~50\);

-- Location: LABCELL_X17_Y7_N36
\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( \G7|Reg~160_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((\G7|Reg~176_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( \G7|Reg~160_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((\G7|Reg~176_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G16|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111010001000100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~160_combout\,
	dataf => \G7|ALT_INV_Reg~176_combout\,
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

-- Location: LABCELL_X22_Y9_N12
\G16|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux3~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (\G16|Add0~49_sumout\)) # (\G4|funct[2]~reg0_q\ & (((!\G4|tipoi[0]~en_q\) # (\G7|Reg~160_combout\)))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- (!\G4|funct[2]~reg0_q\ & (\G16|Mux12~0_combout\ & (\G16|Add1~49_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001001100000010000000100000001000010011000100110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[2]~reg0_q\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G16|ALT_INV_Add1~49_sumout\,
	datad => \G4|ALT_INV_tipoi[0]~en_q\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G7|ALT_INV_Reg~160_combout\,
	datag => \G16|ALT_INV_Add0~49_sumout\,
	combout => \G16|Mux3~0_combout\);

-- Location: LABCELL_X16_Y7_N48
\G16|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~53_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~177_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~161_combout\ ) + ( \G16|Add1~50\ ))
-- \G16|Add1~54\ = CARRY(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~177_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~161_combout\ ) + ( \G16|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_tipoi[0]~en_q\,
	datad => \G7|ALT_INV_Reg~177_combout\,
	dataf => \G7|ALT_INV_Reg~161_combout\,
	cin => \G16|Add1~50\,
	sumout => \G16|Add1~53_sumout\,
	cout => \G16|Add1~54\);

-- Location: LABCELL_X17_Y7_N39
\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( \G7|Reg~161_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((\G7|Reg~177_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( \G7|Reg~161_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((\G7|Reg~177_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G16|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111010001000100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~161_combout\,
	dataf => \G7|ALT_INV_Reg~177_combout\,
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

-- Location: LABCELL_X22_Y9_N30
\G16|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux2~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~53_sumout\)))) # (\G4|funct[2]~reg0_q\ & (((!\G4|tipoi[0]~en_q\)) # (\G7|Reg~161_combout\))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- (((\G16|Add1~53_sumout\ & (\G16|Mux12~0_combout\ & !\G4|funct[2]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111100000000110111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~161_combout\,
	datab => \G4|ALT_INV_tipoi[0]~en_q\,
	datac => \G16|ALT_INV_Add1~53_sumout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G4|ALT_INV_funct[2]~reg0_q\,
	datag => \G16|ALT_INV_Add0~53_sumout\,
	combout => \G16|Mux2~0_combout\);

-- Location: LABCELL_X16_Y7_N51
\G16|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~57_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~178_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~162_combout\ ) + ( \G16|Add1~54\ ))
-- \G16|Add1~58\ = CARRY(( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~178_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~162_combout\ ) + ( \G16|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datad => \G7|ALT_INV_Reg~178_combout\,
	dataf => \G7|ALT_INV_Reg~162_combout\,
	cin => \G16|Add1~54\,
	sumout => \G16|Add1~57_sumout\,
	cout => \G16|Add1~58\);

-- Location: LABCELL_X17_Y7_N42
\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( \G7|Reg~162_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((\G7|Reg~178_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( \G7|Reg~162_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((\G7|Reg~178_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G16|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100011101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~178_combout\,
	datad => \G7|ALT_INV_Reg~162_combout\,
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

-- Location: LABCELL_X22_Y9_N24
\G16|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~57_sumout\)))) # (\G4|funct[2]~reg0_q\ & (((!\G4|tipoi[0]~en_q\)) # (\G7|Reg~162_combout\))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- (!\G4|funct[2]~reg0_q\ & (((\G16|Add1~57_sumout\ & (\G16|Mux12~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001011111000000000000101000000000000110110000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[2]~reg0_q\,
	datab => \G7|ALT_INV_Reg~162_combout\,
	datac => \G16|ALT_INV_Add1~57_sumout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G4|ALT_INV_tipoi[0]~en_q\,
	datag => \G16|ALT_INV_Add0~57_sumout\,
	combout => \G16|Mux1~0_combout\);

-- Location: LABCELL_X16_Y7_N54
\G16|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~61_sumout\ = SUM(( \G7|Reg~163_combout\ ) + ( (!\G5|Equal0~0_combout\ & ((!\G7|Reg~179_combout\))) # (\G5|Equal0~0_combout\ & (\G4|tipoi[0]~en_q\)) ) + ( \G16|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011100010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~179_combout\,
	datad => \G7|ALT_INV_Reg~163_combout\,
	cin => \G16|Add1~58\,
	sumout => \G16|Add1~61_sumout\);

-- Location: LABCELL_X17_Y7_N45
\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( (!\G5|Equal0~0_combout\ & ((\G7|Reg~179_combout\))) # (\G5|Equal0~0_combout\ & (!\G4|tipoi[0]~en_q\)) ) + ( \G7|Reg~163_combout\ ) + ( \G16|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_tipoi[0]~en_q\,
	datab => \G5|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg~179_combout\,
	dataf => \G7|ALT_INV_Reg~163_combout\,
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

-- Location: LABCELL_X22_Y9_N42
\G16|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~0_combout\ = ( !\G4|funct[0]~reg0_q\ & ( (\G16|Mux12~0_combout\ & ((!\G4|funct[2]~reg0_q\ & (((\G16|Add0~61_sumout\)))) # (\G4|funct[2]~reg0_q\ & (((!\G4|tipoi[0]~en_q\)) # (\G7|Reg~163_combout\))))) ) ) # ( \G4|funct[0]~reg0_q\ & ( 
-- (\G16|Mux12~0_combout\ & (((\G16|Add1~61_sumout\ & ((!\G4|funct[2]~reg0_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010101010101000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~0_combout\,
	datab => \G7|ALT_INV_Reg~163_combout\,
	datac => \G16|ALT_INV_Add1~61_sumout\,
	datad => \G4|ALT_INV_tipoi[0]~en_q\,
	datae => \G4|ALT_INV_funct[0]~reg0_q\,
	dataf => \G4|ALT_INV_funct[2]~reg0_q\,
	datag => \G16|ALT_INV_Add0~61_sumout\,
	combout => \G16|Mux0~0_combout\);

-- Location: LABCELL_X1_Y6_N0
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


