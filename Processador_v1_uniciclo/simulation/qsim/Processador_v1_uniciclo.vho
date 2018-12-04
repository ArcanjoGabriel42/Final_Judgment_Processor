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

-- DATE "12/04/2018 00:28:54"

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
	out_Saida_OperacaoDaULA : BUFFER std_logic_vector(6 DOWNTO 0);
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
SIGNAL ww_out_Saida_OperacaoDaULA : std_logic_vector(6 DOWNTO 0);
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
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \SomadorToPc_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[15]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[15]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[15]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[15]~output_o\ : std_logic;
SIGNAL \multiplexador_to_writeRegister_outWaveform[0]~output_o\ : std_logic;
SIGNAL \multiplexador_to_writeRegister_outWaveform[1]~output_o\ : std_logic;
SIGNAL \multiplexador_to_writeRegister_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_multiplexador_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_multiplexador_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_multiplexador_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[11]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[0]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[1]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[2]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[3]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[4]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[5]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[6]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Flag_regdest_OUT~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[0]~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[1]~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[2]~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[3]~output_o\ : std_logic;
SIGNAL \Flag_memparareg_OUT~output_o\ : std_logic;
SIGNAL \Flag_escrevereg_OUT~output_o\ : std_logic;
SIGNAL \Flag_lemem_OUT~output_o\ : std_logic;
SIGNAL \Flag_escrevemem_OUT~output_o\ : std_logic;
SIGNAL \Flag_branch_OUT~output_o\ : std_logic;
SIGNAL \Flag_aluSRC_OUT~output_o\ : std_logic;
SIGNAL \Flag_jump_OUT~output_o\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G4|Mux7~0_combout\ : std_logic;
SIGNAL \G13|SAIDA~5_combout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G13|SAIDA~6_combout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G13|SAIDA~7_combout\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G13|SAIDA~8_combout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G13|SAIDA~9_combout\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G13|SAIDA~10_combout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G13|SAIDA~11_combout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G13|SAIDA~12_combout\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G13|SAIDA~13_combout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G13|SAIDA~14_combout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G13|SAIDA~15_combout\ : std_logic;
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G13|SAIDA~4_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G13|SAIDA~3_combout\ : std_logic;
SIGNAL \G4|Mux7~1_combout\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G13|SAIDA~2_combout\ : std_logic;
SIGNAL \G4|Mux9~0_combout\ : std_logic;
SIGNAL \G13|SAIDA~1_combout\ : std_logic;
SIGNAL \G4|Mux8~0_combout\ : std_logic;
SIGNAL \G5|Mux9~1_combout\ : std_logic;
SIGNAL \G13|SAIDA~0_combout\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G4|Equal0~0_combout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|rd[0]~0_combout\ : std_logic;
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G4|Mux6~0_combout\ : std_logic;
SIGNAL \G6|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G4|Mux7~2_combout\ : std_logic;
SIGNAL \G6|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G5|Mux6~0_combout\ : std_logic;
SIGNAL \G7|Mux15~0_combout\ : std_logic;
SIGNAL \G4|Mux2~0_combout\ : std_logic;
SIGNAL \G7|Reg[3][0]~5_combout\ : std_logic;
SIGNAL \G7|Reg[3][0]~combout\ : std_logic;
SIGNAL \G4|rs~0_combout\ : std_logic;
SIGNAL \G7|Mux20~0_combout\ : std_logic;
SIGNAL \G7|Mux20~2_combout\ : std_logic;
SIGNAL \G6|SAIDA[0]~2_combout\ : std_logic;
SIGNAL \G4|Mux3~0_combout\ : std_logic;
SIGNAL \G7|Decoder0~0_combout\ : std_logic;
SIGNAL \G7|Reg~4_combout\ : std_logic;
SIGNAL \G7|Mux20~4_combout\ : std_logic;
SIGNAL \G7|Reg[2][0]~6_combout\ : std_logic;
SIGNAL \G7|Reg[2][0]~combout\ : std_logic;
SIGNAL \G7|Reg~3_combout\ : std_logic;
SIGNAL \G14|SAIDA~0_combout\ : std_logic;
SIGNAL \G14|SAIDA~1_combout\ : std_logic;
SIGNAL \G14|SAIDA~2_combout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G4|op[0]~0_combout\ : std_logic;
SIGNAL \G4|op[1]~1_combout\ : std_logic;
SIGNAL \G5|Mux8~0_combout\ : std_logic;
SIGNAL \G7|Mux20~1_combout\ : std_logic;
SIGNAL \G7|Mux20~3_combout\ : std_logic;
SIGNAL \G7|Mux31~0_combout\ : std_logic;
SIGNAL \G7|Mux20~5_combout\ : std_logic;
SIGNAL \G7|Reg~0_combout\ : std_logic;
SIGNAL \G7|Mux29~0_combout\ : std_logic;
SIGNAL \G7|Mux31~1_combout\ : std_logic;
SIGNAL \G7|Mux31~2_combout\ : std_logic;
SIGNAL \G4|op[2]~2_combout\ : std_logic;
SIGNAL \G5|Mux0~0_combout\ : std_logic;
SIGNAL \G16|process_0~0_combout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G4|funct[2]~1_combout\ : std_logic;
SIGNAL \G16|Add2~1_sumout\ : std_logic;
SIGNAL \G4|funct[0]~0_combout\ : std_logic;
SIGNAL \G7|Mux15~4_combout\ : std_logic;
SIGNAL \G16|Add1~66_cout\ : std_logic;
SIGNAL \G16|Add1~1_sumout\ : std_logic;
SIGNAL \G16|Mux15~4_combout\ : std_logic;
SIGNAL \G16|Mux15~0_combout\ : std_logic;
SIGNAL \G16|Mux15~1_combout\ : std_logic;
SIGNAL \G16|process_0~1_combout\ : std_logic;
SIGNAL \G7|Reg~1_combout\ : std_logic;
SIGNAL \G7|Reg[3][1]~combout\ : std_logic;
SIGNAL \G7|Reg[2][1]~combout\ : std_logic;
SIGNAL \G7|Mux30~0_combout\ : std_logic;
SIGNAL \G7|Mux30~1_combout\ : std_logic;
SIGNAL \G7|Reg[3][2]~combout\ : std_logic;
SIGNAL \G7|Mux29~1_combout\ : std_logic;
SIGNAL \G7|Reg[2][2]~combout\ : std_logic;
SIGNAL \G7|Mux29~2_combout\ : std_logic;
SIGNAL \G7|Mux29~3_combout\ : std_logic;
SIGNAL \G7|Mux16~0_combout\ : std_logic;
SIGNAL \G7|Reg[3][3]~combout\ : std_logic;
SIGNAL \G7|Reg[2][3]~combout\ : std_logic;
SIGNAL \G7|Mux28~0_combout\ : std_logic;
SIGNAL \G7|Mux28~1_combout\ : std_logic;
SIGNAL \G7|Mux28~2_combout\ : std_logic;
SIGNAL \G7|Reg[3][4]~combout\ : std_logic;
SIGNAL \G7|Reg[2][4]~combout\ : std_logic;
SIGNAL \G7|Mux27~0_combout\ : std_logic;
SIGNAL \G7|Mux27~1_combout\ : std_logic;
SIGNAL \G7|Mux27~2_combout\ : std_logic;
SIGNAL \G7|Reg[3][5]~combout\ : std_logic;
SIGNAL \G7|Reg[2][5]~combout\ : std_logic;
SIGNAL \G7|Mux26~0_combout\ : std_logic;
SIGNAL \G7|Mux26~1_combout\ : std_logic;
SIGNAL \G7|Mux26~2_combout\ : std_logic;
SIGNAL \G7|Reg[3][6]~combout\ : std_logic;
SIGNAL \G7|Reg[2][6]~combout\ : std_logic;
SIGNAL \G7|Mux25~0_combout\ : std_logic;
SIGNAL \G7|Mux25~1_combout\ : std_logic;
SIGNAL \G7|Mux25~2_combout\ : std_logic;
SIGNAL \G14|SAIDA~4_combout\ : std_logic;
SIGNAL \G7|Reg[3][7]~combout\ : std_logic;
SIGNAL \G7|Reg[2][7]~combout\ : std_logic;
SIGNAL \G14|SAIDA~32_combout\ : std_logic;
SIGNAL \G14|SAIDA~13_combout\ : std_logic;
SIGNAL \G4|rd[0]~1_combout\ : std_logic;
SIGNAL \G7|Mux15~2_combout\ : std_logic;
SIGNAL \G16|Splitter~13_combout\ : std_logic;
SIGNAL \G14|SAIDA~30_combout\ : std_logic;
SIGNAL \G14|SAIDA~11_combout\ : std_logic;
SIGNAL \G14|SAIDA~31_combout\ : std_logic;
SIGNAL \G14|SAIDA~12_combout\ : std_logic;
SIGNAL \G14|SAIDA~29_combout\ : std_logic;
SIGNAL \G14|SAIDA~10_combout\ : std_logic;
SIGNAL \G14|SAIDA~3_combout\ : std_logic;
SIGNAL \G14|SAIDA~27_combout\ : std_logic;
SIGNAL \G14|SAIDA~28_combout\ : std_logic;
SIGNAL \G14|SAIDA~9_combout\ : std_logic;
SIGNAL \G14|SAIDA~6_combout\ : std_logic;
SIGNAL \G14|SAIDA~7_combout\ : std_logic;
SIGNAL \G14|SAIDA~8_combout\ : std_logic;
SIGNAL \G14|SAIDA~26_combout\ : std_logic;
SIGNAL \G14|SAIDA~5_combout\ : std_logic;
SIGNAL \G16|Add2~2\ : std_logic;
SIGNAL \G16|Add2~6\ : std_logic;
SIGNAL \G16|Add2~10\ : std_logic;
SIGNAL \G16|Add2~14\ : std_logic;
SIGNAL \G16|Add2~18\ : std_logic;
SIGNAL \G16|Add2~22\ : std_logic;
SIGNAL \G16|Add2~26\ : std_logic;
SIGNAL \G16|Add2~29_sumout\ : std_logic;
SIGNAL \G16|Prod~27_combout\ : std_logic;
SIGNAL \G16|Add2~25_sumout\ : std_logic;
SIGNAL \G16|Prod~20_combout\ : std_logic;
SIGNAL \G16|Add2~21_sumout\ : std_logic;
SIGNAL \G16|Prod~14_combout\ : std_logic;
SIGNAL \G16|Add2~17_sumout\ : std_logic;
SIGNAL \G16|Prod~9_combout\ : std_logic;
SIGNAL \G16|Add2~13_sumout\ : std_logic;
SIGNAL \G16|Add2~9_sumout\ : std_logic;
SIGNAL \G7|Mux14~0_combout\ : std_logic;
SIGNAL \G16|Add2~5_sumout\ : std_logic;
SIGNAL \G16|Prod~1_combout\ : std_logic;
SIGNAL \G16|Add4~34_cout\ : std_logic;
SIGNAL \G16|Add4~2\ : std_logic;
SIGNAL \G16|Add4~6\ : std_logic;
SIGNAL \G16|Add4~10\ : std_logic;
SIGNAL \G16|Add4~14\ : std_logic;
SIGNAL \G16|Add4~18\ : std_logic;
SIGNAL \G16|Add4~22\ : std_logic;
SIGNAL \G16|Add4~25_sumout\ : std_logic;
SIGNAL \G16|Prod~5_combout\ : std_logic;
SIGNAL \G16|Add3~2\ : std_logic;
SIGNAL \G16|Add3~6\ : std_logic;
SIGNAL \G16|Add3~10\ : std_logic;
SIGNAL \G16|Add3~14\ : std_logic;
SIGNAL \G16|Add3~18\ : std_logic;
SIGNAL \G16|Add3~22\ : std_logic;
SIGNAL \G16|Add3~25_sumout\ : std_logic;
SIGNAL \G16|Prod~28_combout\ : std_logic;
SIGNAL \G16|Add4~21_sumout\ : std_logic;
SIGNAL \G16|Add3~21_sumout\ : std_logic;
SIGNAL \G16|Prod~21_combout\ : std_logic;
SIGNAL \G16|Add4~17_sumout\ : std_logic;
SIGNAL \G16|Add3~17_sumout\ : std_logic;
SIGNAL \G16|Prod~15_combout\ : std_logic;
SIGNAL \G16|Add4~13_sumout\ : std_logic;
SIGNAL \G16|Add3~13_sumout\ : std_logic;
SIGNAL \G16|Prod~10_combout\ : std_logic;
SIGNAL \G16|Add4~9_sumout\ : std_logic;
SIGNAL \G16|Add3~9_sumout\ : std_logic;
SIGNAL \G16|Prod~6_combout\ : std_logic;
SIGNAL \G16|Add4~5_sumout\ : std_logic;
SIGNAL \G16|Add3~5_sumout\ : std_logic;
SIGNAL \G16|Prod~3_combout\ : std_logic;
SIGNAL \G16|Add6~34_cout\ : std_logic;
SIGNAL \G16|Add6~2\ : std_logic;
SIGNAL \G16|Add6~6\ : std_logic;
SIGNAL \G16|Add6~10\ : std_logic;
SIGNAL \G16|Add6~14\ : std_logic;
SIGNAL \G16|Add6~18\ : std_logic;
SIGNAL \G16|Add6~21_sumout\ : std_logic;
SIGNAL \G16|Add5~2\ : std_logic;
SIGNAL \G16|Add5~6\ : std_logic;
SIGNAL \G16|Add5~10\ : std_logic;
SIGNAL \G16|Add5~14\ : std_logic;
SIGNAL \G16|Add5~18\ : std_logic;
SIGNAL \G16|Add5~21_sumout\ : std_logic;
SIGNAL \G16|Prod~29_combout\ : std_logic;
SIGNAL \G16|Add6~17_sumout\ : std_logic;
SIGNAL \G16|Add5~17_sumout\ : std_logic;
SIGNAL \G16|Prod~22_combout\ : std_logic;
SIGNAL \G16|Add6~13_sumout\ : std_logic;
SIGNAL \G16|Add5~13_sumout\ : std_logic;
SIGNAL \G16|Prod~16_combout\ : std_logic;
SIGNAL \G16|Add6~9_sumout\ : std_logic;
SIGNAL \G16|Add5~9_sumout\ : std_logic;
SIGNAL \G16|Prod~11_combout\ : std_logic;
SIGNAL \G16|Add6~5_sumout\ : std_logic;
SIGNAL \G16|Add5~5_sumout\ : std_logic;
SIGNAL \G16|Prod~7_combout\ : std_logic;
SIGNAL \G16|Add8~34_cout\ : std_logic;
SIGNAL \G16|Add8~2\ : std_logic;
SIGNAL \G16|Add8~6\ : std_logic;
SIGNAL \G16|Add8~10\ : std_logic;
SIGNAL \G16|Add8~14\ : std_logic;
SIGNAL \G16|Add8~17_sumout\ : std_logic;
SIGNAL \G16|Add7~2\ : std_logic;
SIGNAL \G16|Add7~6\ : std_logic;
SIGNAL \G16|Add7~10\ : std_logic;
SIGNAL \G16|Add7~14\ : std_logic;
SIGNAL \G16|Add7~17_sumout\ : std_logic;
SIGNAL \G16|Prod~30_combout\ : std_logic;
SIGNAL \G16|Add8~13_sumout\ : std_logic;
SIGNAL \G16|Add7~13_sumout\ : std_logic;
SIGNAL \G16|Prod~23_combout\ : std_logic;
SIGNAL \G16|Add8~9_sumout\ : std_logic;
SIGNAL \G16|Add7~9_sumout\ : std_logic;
SIGNAL \G16|Prod~17_combout\ : std_logic;
SIGNAL \G16|Add8~5_sumout\ : std_logic;
SIGNAL \G16|Add7~5_sumout\ : std_logic;
SIGNAL \G16|Prod~12_combout\ : std_logic;
SIGNAL \G16|Add10~34_cout\ : std_logic;
SIGNAL \G16|Add10~2\ : std_logic;
SIGNAL \G16|Add10~6\ : std_logic;
SIGNAL \G16|Add10~10\ : std_logic;
SIGNAL \G16|Add10~13_sumout\ : std_logic;
SIGNAL \G16|Add9~2\ : std_logic;
SIGNAL \G16|Add9~6\ : std_logic;
SIGNAL \G16|Add9~10\ : std_logic;
SIGNAL \G16|Add9~13_sumout\ : std_logic;
SIGNAL \G16|Prod~31_combout\ : std_logic;
SIGNAL \G16|Add10~9_sumout\ : std_logic;
SIGNAL \G16|Add9~9_sumout\ : std_logic;
SIGNAL \G16|Prod~24_combout\ : std_logic;
SIGNAL \G16|Add10~5_sumout\ : std_logic;
SIGNAL \G16|Add9~5_sumout\ : std_logic;
SIGNAL \G16|Prod~18_combout\ : std_logic;
SIGNAL \G16|Add12~34_cout\ : std_logic;
SIGNAL \G16|Add12~2\ : std_logic;
SIGNAL \G16|Add12~6\ : std_logic;
SIGNAL \G16|Add12~9_sumout\ : std_logic;
SIGNAL \G16|Add11~2\ : std_logic;
SIGNAL \G16|Add11~6\ : std_logic;
SIGNAL \G16|Add11~9_sumout\ : std_logic;
SIGNAL \G16|Prod~32_combout\ : std_logic;
SIGNAL \G16|Add12~5_sumout\ : std_logic;
SIGNAL \G16|Add11~5_sumout\ : std_logic;
SIGNAL \G16|Prod~25_combout\ : std_logic;
SIGNAL \G16|Add14~34_cout\ : std_logic;
SIGNAL \G16|Add14~2\ : std_logic;
SIGNAL \G16|Add14~5_sumout\ : std_logic;
SIGNAL \G16|Add13~2\ : std_logic;
SIGNAL \G16|Add13~5_sumout\ : std_logic;
SIGNAL \G16|Prod~33_combout\ : std_logic;
SIGNAL \G16|Add15~1_sumout\ : std_logic;
SIGNAL \G16|Add16~34_cout\ : std_logic;
SIGNAL \G16|Add16~1_sumout\ : std_logic;
SIGNAL \G4|funct[0]~2_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~43_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~44_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~45_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~46_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~0_combout\ : std_logic;
SIGNAL \G18|SAIDA~7_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~47_combout\ : std_logic;
SIGNAL \G18|SAIDA~8_combout\ : std_logic;
SIGNAL \G16|Add1~2\ : std_logic;
SIGNAL \G16|Add1~6\ : std_logic;
SIGNAL \G16|Add1~10\ : std_logic;
SIGNAL \G16|Add1~14\ : std_logic;
SIGNAL \G16|Add1~18\ : std_logic;
SIGNAL \G16|Add1~22\ : std_logic;
SIGNAL \G16|Add1~26\ : std_logic;
SIGNAL \G16|Add1~29_sumout\ : std_logic;
SIGNAL \G18|SAIDA~9_combout\ : std_logic;
SIGNAL \G18|SAIDA~10_combout\ : std_logic;
SIGNAL \G7|Mux24~0_combout\ : std_logic;
SIGNAL \G7|Mux24~1_combout\ : std_logic;
SIGNAL \G7|Mux24~2_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~1_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~4_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~5_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~6_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~7_combout\ : std_logic;
SIGNAL \G7|Reg[3][8]~combout\ : std_logic;
SIGNAL \G7|Reg[2][8]~combout\ : std_logic;
SIGNAL \G14|SAIDA~33_combout\ : std_logic;
SIGNAL \G14|SAIDA~14_combout\ : std_logic;
SIGNAL \G16|Splitter~14_combout\ : std_logic;
SIGNAL \G16|Add4~26\ : std_logic;
SIGNAL \G16|Add4~29_sumout\ : std_logic;
SIGNAL \G16|Add3~26\ : std_logic;
SIGNAL \G16|Add3~29_sumout\ : std_logic;
SIGNAL \G16|Prod~34_combout\ : std_logic;
SIGNAL \G16|Add6~22\ : std_logic;
SIGNAL \G16|Add6~25_sumout\ : std_logic;
SIGNAL \G16|Add5~22\ : std_logic;
SIGNAL \G16|Add5~25_sumout\ : std_logic;
SIGNAL \G16|Prod~35_combout\ : std_logic;
SIGNAL \G16|Add8~18\ : std_logic;
SIGNAL \G16|Add8~21_sumout\ : std_logic;
SIGNAL \G16|Add7~18\ : std_logic;
SIGNAL \G16|Add7~21_sumout\ : std_logic;
SIGNAL \G16|Prod~36_combout\ : std_logic;
SIGNAL \G16|Add10~14\ : std_logic;
SIGNAL \G16|Add10~17_sumout\ : std_logic;
SIGNAL \G16|Add9~14\ : std_logic;
SIGNAL \G16|Add9~17_sumout\ : std_logic;
SIGNAL \G16|Prod~37_combout\ : std_logic;
SIGNAL \G16|Add12~10\ : std_logic;
SIGNAL \G16|Add12~13_sumout\ : std_logic;
SIGNAL \G16|Add11~10\ : std_logic;
SIGNAL \G16|Add11~13_sumout\ : std_logic;
SIGNAL \G16|Prod~38_combout\ : std_logic;
SIGNAL \G16|Add14~6\ : std_logic;
SIGNAL \G16|Add14~9_sumout\ : std_logic;
SIGNAL \G16|Add13~6\ : std_logic;
SIGNAL \G16|Add13~9_sumout\ : std_logic;
SIGNAL \G16|Prod~39_combout\ : std_logic;
SIGNAL \G16|Add15~2\ : std_logic;
SIGNAL \G16|Add15~5_sumout\ : std_logic;
SIGNAL \G16|Add16~2\ : std_logic;
SIGNAL \G16|Add16~5_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[8]~48_combout\ : std_logic;
SIGNAL \G16|Add1~30\ : std_logic;
SIGNAL \G16|Add1~33_sumout\ : std_logic;
SIGNAL \G18|SAIDA~14_combout\ : std_logic;
SIGNAL \G18|SAIDA~11_combout\ : std_logic;
SIGNAL \G7|Mux23~0_combout\ : std_logic;
SIGNAL \G7|Mux23~1_combout\ : std_logic;
SIGNAL \G7|Mux23~2_combout\ : std_logic;
SIGNAL \G7|Reg[3][9]~combout\ : std_logic;
SIGNAL \G7|Reg[2][9]~combout\ : std_logic;
SIGNAL \G14|SAIDA~34_combout\ : std_logic;
SIGNAL \G14|SAIDA~15_combout\ : std_logic;
SIGNAL \G16|Splitter~15_combout\ : std_logic;
SIGNAL \G16|Add6~26\ : std_logic;
SIGNAL \G16|Add6~29_sumout\ : std_logic;
SIGNAL \G16|Add5~26\ : std_logic;
SIGNAL \G16|Add5~29_sumout\ : std_logic;
SIGNAL \G16|Prod~40_combout\ : std_logic;
SIGNAL \G16|Add8~22\ : std_logic;
SIGNAL \G16|Add8~25_sumout\ : std_logic;
SIGNAL \G16|Add7~22\ : std_logic;
SIGNAL \G16|Add7~25_sumout\ : std_logic;
SIGNAL \G16|Prod~41_combout\ : std_logic;
SIGNAL \G16|Add10~18\ : std_logic;
SIGNAL \G16|Add10~21_sumout\ : std_logic;
SIGNAL \G16|Add9~18\ : std_logic;
SIGNAL \G16|Add9~21_sumout\ : std_logic;
SIGNAL \G16|Prod~42_combout\ : std_logic;
SIGNAL \G16|Add12~14\ : std_logic;
SIGNAL \G16|Add12~17_sumout\ : std_logic;
SIGNAL \G16|Add11~14\ : std_logic;
SIGNAL \G16|Add11~17_sumout\ : std_logic;
SIGNAL \G16|Prod~43_combout\ : std_logic;
SIGNAL \G16|Add14~10\ : std_logic;
SIGNAL \G16|Add14~13_sumout\ : std_logic;
SIGNAL \G16|Add13~10\ : std_logic;
SIGNAL \G16|Add13~13_sumout\ : std_logic;
SIGNAL \G16|Prod~44_combout\ : std_logic;
SIGNAL \G16|Add15~6\ : std_logic;
SIGNAL \G16|Add15~9_sumout\ : std_logic;
SIGNAL \G16|Add16~6\ : std_logic;
SIGNAL \G16|Add16~9_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[9]~49_combout\ : std_logic;
SIGNAL \G16|Add1~34\ : std_logic;
SIGNAL \G16|Add1~37_sumout\ : std_logic;
SIGNAL \G18|SAIDA~17_combout\ : std_logic;
SIGNAL \G7|Mux22~0_combout\ : std_logic;
SIGNAL \G7|Mux22~1_combout\ : std_logic;
SIGNAL \G7|Mux22~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA~18_combout\ : std_logic;
SIGNAL \G18|SAIDA~19_combout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G7|Mux6~0_combout\ : std_logic;
SIGNAL \G16|Splitter~1_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~2_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~3_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[9]~14_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~8_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[9]~15_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[9]~16_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA~15_combout\ : std_logic;
SIGNAL \G18|SAIDA~16_combout\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G7|Mux7~0_combout\ : std_logic;
SIGNAL \G16|Splitter~0_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[8]~11_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[8]~12_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[8]~13_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA~12_combout\ : std_logic;
SIGNAL \G18|SAIDA~13_combout\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G7|Mux8~0_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~56_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~9_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~10_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \G16|Add1~25_sumout\ : std_logic;
SIGNAL \G16|Add13~1_sumout\ : std_logic;
SIGNAL \G16|Add14~1_sumout\ : std_logic;
SIGNAL \G16|Prod~26_combout\ : std_logic;
SIGNAL \G16|Splitter~12_combout\ : std_logic;
SIGNAL \G16|Mux9~1_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~42_combout\ : std_logic;
SIGNAL \G16|Mux9~2_combout\ : std_logic;
SIGNAL \G18|SAIDA~6_combout\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G7|Mux9~0_combout\ : std_logic;
SIGNAL \G16|Mux9~3_combout\ : std_logic;
SIGNAL \G16|Mux9~0_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \G4|funct[2]~3_combout\ : std_logic;
SIGNAL \G16|Add1~21_sumout\ : std_logic;
SIGNAL \G16|Add11~1_sumout\ : std_logic;
SIGNAL \G16|Add12~1_sumout\ : std_logic;
SIGNAL \G16|Prod~19_combout\ : std_logic;
SIGNAL \G16|Splitter~11_combout\ : std_logic;
SIGNAL \G16|Mux10~1_combout\ : std_logic;
SIGNAL \G16|Mux10~2_combout\ : std_logic;
SIGNAL \G18|SAIDA~5_combout\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G7|Mux10~0_combout\ : std_logic;
SIGNAL \G16|Mux10~3_combout\ : std_logic;
SIGNAL \G16|Mux10~0_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \G16|Add1~17_sumout\ : std_logic;
SIGNAL \G16|Add9~1_sumout\ : std_logic;
SIGNAL \G16|Add10~1_sumout\ : std_logic;
SIGNAL \G16|Prod~13_combout\ : std_logic;
SIGNAL \G16|Splitter~10_combout\ : std_logic;
SIGNAL \G16|Mux11~1_combout\ : std_logic;
SIGNAL \G16|Mux11~2_combout\ : std_logic;
SIGNAL \G18|SAIDA~4_combout\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G7|Mux11~0_combout\ : std_logic;
SIGNAL \G16|Mux11~3_combout\ : std_logic;
SIGNAL \G16|Mux11~0_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \G16|Add1~13_sumout\ : std_logic;
SIGNAL \G16|Add7~1_sumout\ : std_logic;
SIGNAL \G16|Add8~1_sumout\ : std_logic;
SIGNAL \G16|Prod~8_combout\ : std_logic;
SIGNAL \G16|Splitter~9_combout\ : std_logic;
SIGNAL \G16|Mux12~2_combout\ : std_logic;
SIGNAL \G16|Mux12~3_combout\ : std_logic;
SIGNAL \G18|SAIDA~3_combout\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G7|Mux12~0_combout\ : std_logic;
SIGNAL \G16|Mux12~4_combout\ : std_logic;
SIGNAL \G16|Mux12~0_combout\ : std_logic;
SIGNAL \G16|Mux12~1_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \G16|Add1~9_sumout\ : std_logic;
SIGNAL \G16|Add5~1_sumout\ : std_logic;
SIGNAL \G16|Add6~1_sumout\ : std_logic;
SIGNAL \G16|Prod~4_combout\ : std_logic;
SIGNAL \G16|Splitter~8_combout\ : std_logic;
SIGNAL \G16|Mux13~2_combout\ : std_logic;
SIGNAL \G16|Mux13~3_combout\ : std_logic;
SIGNAL \G18|SAIDA~2_combout\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G7|Mux13~0_combout\ : std_logic;
SIGNAL \G16|Mux13~4_combout\ : std_logic;
SIGNAL \G16|Mux13~0_combout\ : std_logic;
SIGNAL \G16|Mux13~1_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \G7|Mux14~2_combout\ : std_logic;
SIGNAL \G16|Add1~5_sumout\ : std_logic;
SIGNAL \G16|Add3~1_sumout\ : std_logic;
SIGNAL \G16|Add4~1_sumout\ : std_logic;
SIGNAL \G16|Prod~2_combout\ : std_logic;
SIGNAL \G16|Splitter~7_combout\ : std_logic;
SIGNAL \G16|Mux14~2_combout\ : std_logic;
SIGNAL \G16|Mux14~3_combout\ : std_logic;
SIGNAL \G18|SAIDA~1_combout\ : std_logic;
SIGNAL \G7|Reg~2_combout\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G7|Mux14~1_combout\ : std_logic;
SIGNAL \G16|Mux14~4_combout\ : std_logic;
SIGNAL \G16|Mux14~0_combout\ : std_logic;
SIGNAL \G16|Mux14~1_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \G16|Prod~0_combout\ : std_logic;
SIGNAL \G16|Splitter~6_combout\ : std_logic;
SIGNAL \G16|Mux15~2_combout\ : std_logic;
SIGNAL \G16|Mux15~3_combout\ : std_logic;
SIGNAL \G18|SAIDA~0_combout\ : std_logic;
SIGNAL \G7|Mux15~1_combout\ : std_logic;
SIGNAL \G7|Reg[3][10]~combout\ : std_logic;
SIGNAL \G7|Reg[2][10]~combout\ : std_logic;
SIGNAL \G14|SAIDA~16_combout\ : std_logic;
SIGNAL \G14|SAIDA~17_combout\ : std_logic;
SIGNAL \G14|SAIDA~18_combout\ : std_logic;
SIGNAL \G16|Splitter~16_combout\ : std_logic;
SIGNAL \G16|Add8~26\ : std_logic;
SIGNAL \G16|Add8~29_sumout\ : std_logic;
SIGNAL \G16|Add7~26\ : std_logic;
SIGNAL \G16|Add7~29_sumout\ : std_logic;
SIGNAL \G16|Prod~45_combout\ : std_logic;
SIGNAL \G16|Add10~22\ : std_logic;
SIGNAL \G16|Add10~25_sumout\ : std_logic;
SIGNAL \G16|Add9~22\ : std_logic;
SIGNAL \G16|Add9~25_sumout\ : std_logic;
SIGNAL \G16|Prod~46_combout\ : std_logic;
SIGNAL \G16|Add12~18\ : std_logic;
SIGNAL \G16|Add12~21_sumout\ : std_logic;
SIGNAL \G16|Add11~18\ : std_logic;
SIGNAL \G16|Add11~21_sumout\ : std_logic;
SIGNAL \G16|Prod~47_combout\ : std_logic;
SIGNAL \G16|Add14~14\ : std_logic;
SIGNAL \G16|Add14~17_sumout\ : std_logic;
SIGNAL \G16|Add13~14\ : std_logic;
SIGNAL \G16|Add13~17_sumout\ : std_logic;
SIGNAL \G16|Prod~48_combout\ : std_logic;
SIGNAL \G16|Add15~10\ : std_logic;
SIGNAL \G16|Add15~13_sumout\ : std_logic;
SIGNAL \G16|Add16~10\ : std_logic;
SIGNAL \G16|Add16~13_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~50_combout\ : std_logic;
SIGNAL \G16|Add1~38\ : std_logic;
SIGNAL \G16|Add1~41_sumout\ : std_logic;
SIGNAL \G18|SAIDA~20_combout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G7|Mux21~0_combout\ : std_logic;
SIGNAL \G7|Mux21~1_combout\ : std_logic;
SIGNAL \G7|Mux21~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA~21_combout\ : std_logic;
SIGNAL \G18|SAIDA~22_combout\ : std_logic;
SIGNAL \G7|Mux5~0_combout\ : std_logic;
SIGNAL \G7|Reg[3][11]~combout\ : std_logic;
SIGNAL \G7|Reg[2][11]~combout\ : std_logic;
SIGNAL \G14|SAIDA~19_combout\ : std_logic;
SIGNAL \G14|SAIDA~20_combout\ : std_logic;
SIGNAL \G14|SAIDA~21_combout\ : std_logic;
SIGNAL \G16|Splitter~17_combout\ : std_logic;
SIGNAL \G16|Add10~26\ : std_logic;
SIGNAL \G16|Add10~29_sumout\ : std_logic;
SIGNAL \G16|Add9~26\ : std_logic;
SIGNAL \G16|Add9~29_sumout\ : std_logic;
SIGNAL \G16|Prod~49_combout\ : std_logic;
SIGNAL \G16|Add12~22\ : std_logic;
SIGNAL \G16|Add12~25_sumout\ : std_logic;
SIGNAL \G16|Add11~22\ : std_logic;
SIGNAL \G16|Add11~25_sumout\ : std_logic;
SIGNAL \G16|Prod~50_combout\ : std_logic;
SIGNAL \G16|Add14~18\ : std_logic;
SIGNAL \G16|Add14~21_sumout\ : std_logic;
SIGNAL \G16|Add13~18\ : std_logic;
SIGNAL \G16|Add13~21_sumout\ : std_logic;
SIGNAL \G16|Prod~51_combout\ : std_logic;
SIGNAL \G16|Add15~14\ : std_logic;
SIGNAL \G16|Add15~17_sumout\ : std_logic;
SIGNAL \G16|Add16~14\ : std_logic;
SIGNAL \G16|Add16~17_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[11]~51_combout\ : std_logic;
SIGNAL \G16|Add1~42\ : std_logic;
SIGNAL \G16|Add1~45_sumout\ : std_logic;
SIGNAL \G18|SAIDA~23_combout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G7|Mux20~6_combout\ : std_logic;
SIGNAL \G7|Mux20~7_combout\ : std_logic;
SIGNAL \G7|Mux20~8_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA~24_combout\ : std_logic;
SIGNAL \G18|SAIDA~25_combout\ : std_logic;
SIGNAL \G7|Mux4~0_combout\ : std_logic;
SIGNAL \G7|Reg[3][12]~combout\ : std_logic;
SIGNAL \G7|Reg[2][12]~combout\ : std_logic;
SIGNAL \G14|SAIDA~35_combout\ : std_logic;
SIGNAL \G14|SAIDA~22_combout\ : std_logic;
SIGNAL \G16|Splitter~18_combout\ : std_logic;
SIGNAL \G16|Add12~26\ : std_logic;
SIGNAL \G16|Add12~29_sumout\ : std_logic;
SIGNAL \G16|Add11~26\ : std_logic;
SIGNAL \G16|Add11~29_sumout\ : std_logic;
SIGNAL \G16|Prod~52_combout\ : std_logic;
SIGNAL \G16|Add14~22\ : std_logic;
SIGNAL \G16|Add14~25_sumout\ : std_logic;
SIGNAL \G16|Add13~22\ : std_logic;
SIGNAL \G16|Add13~25_sumout\ : std_logic;
SIGNAL \G16|Prod~53_combout\ : std_logic;
SIGNAL \G16|Add15~18\ : std_logic;
SIGNAL \G16|Add15~21_sumout\ : std_logic;
SIGNAL \G16|Add16~18\ : std_logic;
SIGNAL \G16|Add16~21_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[12]~52_combout\ : std_logic;
SIGNAL \G16|Add1~46\ : std_logic;
SIGNAL \G16|Add1~49_sumout\ : std_logic;
SIGNAL \G18|SAIDA~26_combout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G7|Mux19~0_combout\ : std_logic;
SIGNAL \G7|Mux19~1_combout\ : std_logic;
SIGNAL \G7|Mux19~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA~27_combout\ : std_logic;
SIGNAL \G18|SAIDA~28_combout\ : std_logic;
SIGNAL \G7|Mux3~0_combout\ : std_logic;
SIGNAL \G7|Reg[3][13]~combout\ : std_logic;
SIGNAL \G7|Reg[2][13]~combout\ : std_logic;
SIGNAL \G14|SAIDA~36_combout\ : std_logic;
SIGNAL \G14|SAIDA~23_combout\ : std_logic;
SIGNAL \G16|Splitter~19_combout\ : std_logic;
SIGNAL \G16|Add14~26\ : std_logic;
SIGNAL \G16|Add14~29_sumout\ : std_logic;
SIGNAL \G16|Add13~26\ : std_logic;
SIGNAL \G16|Add13~29_sumout\ : std_logic;
SIGNAL \G16|Prod~54_combout\ : std_logic;
SIGNAL \G16|Add15~22\ : std_logic;
SIGNAL \G16|Add15~25_sumout\ : std_logic;
SIGNAL \G16|Add16~22\ : std_logic;
SIGNAL \G16|Add16~25_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~53_combout\ : std_logic;
SIGNAL \G16|Add1~50\ : std_logic;
SIGNAL \G16|Add1~53_sumout\ : std_logic;
SIGNAL \G18|SAIDA~29_combout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G7|Mux18~0_combout\ : std_logic;
SIGNAL \G7|Mux18~1_combout\ : std_logic;
SIGNAL \G7|Mux18~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA~30_combout\ : std_logic;
SIGNAL \G18|SAIDA~31_combout\ : std_logic;
SIGNAL \G7|Mux2~0_combout\ : std_logic;
SIGNAL \G7|Reg[3][14]~combout\ : std_logic;
SIGNAL \G7|Reg[2][14]~combout\ : std_logic;
SIGNAL \G7|Mux17~0_combout\ : std_logic;
SIGNAL \G7|Mux17~1_combout\ : std_logic;
SIGNAL \G7|Mux17~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \G14|SAIDA~37_combout\ : std_logic;
SIGNAL \G14|SAIDA~24_combout\ : std_logic;
SIGNAL \G16|Add1~54\ : std_logic;
SIGNAL \G16|Add1~57_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~54_combout\ : std_logic;
SIGNAL \G7|Mux15~3_combout\ : std_logic;
SIGNAL \G18|SAIDA~32_combout\ : std_logic;
SIGNAL \G18|SAIDA~33_combout\ : std_logic;
SIGNAL \G18|SAIDA~34_combout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~55_combout\ : std_logic;
SIGNAL \G18|SAIDA~43_combout\ : std_logic;
SIGNAL \G18|SAIDA~35_combout\ : std_logic;
SIGNAL \G16|Add15~26\ : std_logic;
SIGNAL \G16|Add15~29_sumout\ : std_logic;
SIGNAL \G16|Add16~26\ : std_logic;
SIGNAL \G16|Add16~29_sumout\ : std_logic;
SIGNAL \G18|SAIDA~36_combout\ : std_logic;
SIGNAL \G18|SAIDA~37_combout\ : std_logic;
SIGNAL \G18|SAIDA~38_combout\ : std_logic;
SIGNAL \G7|Mux1~0_combout\ : std_logic;
SIGNAL \G7|Reg[3][15]~combout\ : std_logic;
SIGNAL \G7|Reg[2][15]~combout\ : std_logic;
SIGNAL \G7|Mux16~1_combout\ : std_logic;
SIGNAL \G7|Mux16~2_combout\ : std_logic;
SIGNAL \G7|Mux16~3_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \G14|SAIDA~38_combout\ : std_logic;
SIGNAL \G14|SAIDA~25_combout\ : std_logic;
SIGNAL \G16|Add1~58\ : std_logic;
SIGNAL \G16|Add1~61_sumout\ : std_logic;
SIGNAL \G18|SAIDA~39_combout\ : std_logic;
SIGNAL \G18|SAIDA~40_combout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G18|SAIDA~41_combout\ : std_logic;
SIGNAL \G18|SAIDA~42_combout\ : std_logic;
SIGNAL \G7|Mux0~0_combout\ : std_logic;
SIGNAL \G4|rs[1]~1_combout\ : std_logic;
SIGNAL \G4|rs[2]~2_combout\ : std_logic;
SIGNAL \G4|rt[0]~0_combout\ : std_logic;
SIGNAL \G4|rt[1]~1_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~0_combout\ : std_logic;
SIGNAL \G4|tipoi[2]~1_combout\ : std_logic;
SIGNAL \G16|Splitter~2_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~17_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~18_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~19_combout\ : std_logic;
SIGNAL \G16|Splitter~3_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[11]~20_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[11]~21_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[11]~22_combout\ : std_logic;
SIGNAL \G16|Splitter~4_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[12]~23_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[12]~24_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[12]~25_combout\ : std_logic;
SIGNAL \G16|Splitter~5_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~26_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~27_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~28_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~29_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~30_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~31_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~32_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~33_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~34_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~35_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~36_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~37_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~38_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~39_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~40_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~41_combout\ : std_logic;
SIGNAL \G5|Mux7~0_combout\ : std_logic;
SIGNAL \G5|Mux11~0_combout\ : std_logic;
SIGNAL \G5|Mux10~0_combout\ : std_logic;
SIGNAL \G5|Mux9~0_combout\ : std_logic;
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G3|resshift\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G14|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~56_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~6_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_funct[2]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_funct[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_op[2]~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_op[1]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_op[0]~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~7_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~6_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~2_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~5_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rs~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~8_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~7_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~4_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~3_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~42_combout\ : std_logic;
SIGNAL \G4|ALT_INV_funct[2]~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_funct[0]~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~6_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[0]~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~40_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~39_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~37_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~36_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~35_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~34_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~33_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~32_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~31_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~30_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~29_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~27_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~26_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~54_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[12]~24_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[12]~23_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~53_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~52_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[11]~21_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[11]~20_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~51_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~50_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~49_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~18_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~17_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~48_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~47_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~46_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~45_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[9]~15_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[9]~14_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~44_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~43_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~42_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~41_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~40_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[8]~12_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[8]~11_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~39_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~38_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~37_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~36_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~35_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~34_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~9_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~8_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~7_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~6_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~33_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~32_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~31_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~30_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~29_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~28_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~27_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~26_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~25_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~24_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~23_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~22_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~21_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~20_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~19_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~18_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~17_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~16_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~15_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~14_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~13_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~12_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~11_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~10_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~9_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~8_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~7_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~28_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~27_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~26_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~25_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~24_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~23_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~22_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~21_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~20_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~19_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~18_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~17_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~16_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~15_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~14_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~13_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~12_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~11_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~10_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~9_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~8_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~7_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~6_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~5_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~4_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~3_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~2_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~1_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~0_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~15_combout\ : std_logic;
SIGNAL \G3|ALT_INV_resshift\ : std_logic_vector(15 DOWNTO 14);
SIGNAL \G13|ALT_INV_SAIDA~14_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~13_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~12_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~11_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~10_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~9_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~8_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~7_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~6_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~5_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~4_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~3_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~2_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~1_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][0]~6_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][0]~5_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~42_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~41_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~40_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~39_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~38_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~37_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~36_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~35_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~55_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~34_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~33_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~32_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~54_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~31_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~30_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~29_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~53_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~19_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~28_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~27_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~26_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[12]~52_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~18_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~25_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~24_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~23_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[11]~51_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~17_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~22_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~21_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~20_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~50_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~16_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~19_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~18_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~17_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[9]~49_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~15_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~16_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~15_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~14_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[8]~48_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~14_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~13_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~12_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~11_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~10_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~9_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~8_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~47_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~7_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~46_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~45_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~44_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~43_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~13_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~6_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~12_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~11_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~10_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~9_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G7|ALT_INV_Reg[2][15]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][15]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][14]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][14]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][13]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][13]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][12]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][12]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][11]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][11]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][10]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][10]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][9]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][9]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][8]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][8]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][7]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][7]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][6]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][6]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][5]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][5]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][4]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][4]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][3]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][3]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][2]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][2]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][1]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][1]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[2][0]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][0]~combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|ALT_INV_SAIDA~43_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~38_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~37_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~36_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~35_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~34_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~33_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~32_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~31_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~30_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~29_combout\ : std_logic;
SIGNAL \ALT_INV_Clock_Sistema~input_o\ : std_logic;

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
out_Saida_OperacaoDaULA <= ww_out_Saida_OperacaoDaULA;
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

\G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \G7|Mux31~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \G7|Mux30~1_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \G7|Mux29~3_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \G7|Mux28~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \G7|Mux27~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \G7|Mux26~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \G7|Mux25~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \G7|Mux24~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \G7|Mux23~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \G7|Mux22~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \G7|Mux21~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \G7|Mux20~8_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \G7|Mux19~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \G7|Mux18~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \G7|Mux17~2_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \G7|Mux16~3_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~16_combout\ & \G16|Saida_to_Dados[8]~13_combout\ & \G16|Saida_to_Dados[7]~10_combout\ & \G16|Mux9~0_combout\ & \G16|Mux10~0_combout\ & \G16|Mux11~0_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~1_combout\ & \G16|Mux14~1_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);
\G16|ALT_INV_Add3~21_sumout\ <= NOT \G16|Add3~21_sumout\;
\G16|ALT_INV_Add4~21_sumout\ <= NOT \G16|Add4~21_sumout\;
\G16|ALT_INV_Add2~25_sumout\ <= NOT \G16|Add2~25_sumout\;
\G16|ALT_INV_Add1~25_sumout\ <= NOT \G16|Add1~25_sumout\;
\G16|ALT_INV_Add0~25_sumout\ <= NOT \G16|Add0~25_sumout\;
\G16|ALT_INV_Add12~1_sumout\ <= NOT \G16|Add12~1_sumout\;
\G16|ALT_INV_Add11~1_sumout\ <= NOT \G16|Add11~1_sumout\;
\G16|ALT_INV_Add9~5_sumout\ <= NOT \G16|Add9~5_sumout\;
\G16|ALT_INV_Add10~5_sumout\ <= NOT \G16|Add10~5_sumout\;
\G16|ALT_INV_Add7~9_sumout\ <= NOT \G16|Add7~9_sumout\;
\G16|ALT_INV_Add8~9_sumout\ <= NOT \G16|Add8~9_sumout\;
\G16|ALT_INV_Add5~13_sumout\ <= NOT \G16|Add5~13_sumout\;
\G16|ALT_INV_Add6~13_sumout\ <= NOT \G16|Add6~13_sumout\;
\G16|ALT_INV_Add3~17_sumout\ <= NOT \G16|Add3~17_sumout\;
\G16|ALT_INV_Add4~17_sumout\ <= NOT \G16|Add4~17_sumout\;
\G16|ALT_INV_Add2~21_sumout\ <= NOT \G16|Add2~21_sumout\;
\G16|ALT_INV_Add1~21_sumout\ <= NOT \G16|Add1~21_sumout\;
\G16|ALT_INV_Add0~21_sumout\ <= NOT \G16|Add0~21_sumout\;
\G16|ALT_INV_Add10~1_sumout\ <= NOT \G16|Add10~1_sumout\;
\G16|ALT_INV_Add9~1_sumout\ <= NOT \G16|Add9~1_sumout\;
\G16|ALT_INV_Add7~5_sumout\ <= NOT \G16|Add7~5_sumout\;
\G16|ALT_INV_Add8~5_sumout\ <= NOT \G16|Add8~5_sumout\;
\G16|ALT_INV_Add5~9_sumout\ <= NOT \G16|Add5~9_sumout\;
\G16|ALT_INV_Add6~9_sumout\ <= NOT \G16|Add6~9_sumout\;
\G16|ALT_INV_Add3~13_sumout\ <= NOT \G16|Add3~13_sumout\;
\G16|ALT_INV_Add4~13_sumout\ <= NOT \G16|Add4~13_sumout\;
\G16|ALT_INV_Add2~17_sumout\ <= NOT \G16|Add2~17_sumout\;
\G16|ALT_INV_Add1~17_sumout\ <= NOT \G16|Add1~17_sumout\;
\G16|ALT_INV_Add0~17_sumout\ <= NOT \G16|Add0~17_sumout\;
\G16|ALT_INV_Add8~1_sumout\ <= NOT \G16|Add8~1_sumout\;
\G16|ALT_INV_Add7~1_sumout\ <= NOT \G16|Add7~1_sumout\;
\G16|ALT_INV_Add5~5_sumout\ <= NOT \G16|Add5~5_sumout\;
\G16|ALT_INV_Add6~5_sumout\ <= NOT \G16|Add6~5_sumout\;
\G16|ALT_INV_Add3~9_sumout\ <= NOT \G16|Add3~9_sumout\;
\G16|ALT_INV_Add2~13_sumout\ <= NOT \G16|Add2~13_sumout\;
\G16|ALT_INV_Add4~9_sumout\ <= NOT \G16|Add4~9_sumout\;
\G16|ALT_INV_Add1~13_sumout\ <= NOT \G16|Add1~13_sumout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G16|ALT_INV_Add6~1_sumout\ <= NOT \G16|Add6~1_sumout\;
\G16|ALT_INV_Add5~1_sumout\ <= NOT \G16|Add5~1_sumout\;
\G16|ALT_INV_Add3~5_sumout\ <= NOT \G16|Add3~5_sumout\;
\G16|ALT_INV_Add4~5_sumout\ <= NOT \G16|Add4~5_sumout\;
\G16|ALT_INV_Add2~9_sumout\ <= NOT \G16|Add2~9_sumout\;
\G16|ALT_INV_Add1~9_sumout\ <= NOT \G16|Add1~9_sumout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G16|ALT_INV_Add4~1_sumout\ <= NOT \G16|Add4~1_sumout\;
\G16|ALT_INV_Add2~5_sumout\ <= NOT \G16|Add2~5_sumout\;
\G16|ALT_INV_Add3~1_sumout\ <= NOT \G16|Add3~1_sumout\;
\G16|ALT_INV_Add1~5_sumout\ <= NOT \G16|Add1~5_sumout\;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G16|ALT_INV_Add2~1_sumout\ <= NOT \G16|Add2~1_sumout\;
\G16|ALT_INV_Add1~1_sumout\ <= NOT \G16|Add1~1_sumout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
\G16|ALT_INV_Add13~17_sumout\ <= NOT \G16|Add13~17_sumout\;
\G16|ALT_INV_Add14~17_sumout\ <= NOT \G16|Add14~17_sumout\;
\G16|ALT_INV_Add11~21_sumout\ <= NOT \G16|Add11~21_sumout\;
\G16|ALT_INV_Add12~21_sumout\ <= NOT \G16|Add12~21_sumout\;
\G16|ALT_INV_Add9~25_sumout\ <= NOT \G16|Add9~25_sumout\;
\G16|ALT_INV_Add10~25_sumout\ <= NOT \G16|Add10~25_sumout\;
\G16|ALT_INV_Add7~29_sumout\ <= NOT \G16|Add7~29_sumout\;
\G16|ALT_INV_Add8~29_sumout\ <= NOT \G16|Add8~29_sumout\;
\G16|ALT_INV_Add15~13_sumout\ <= NOT \G16|Add15~13_sumout\;
\G16|ALT_INV_Add0~41_sumout\ <= NOT \G16|Add0~41_sumout\;
\G16|ALT_INV_Add1~37_sumout\ <= NOT \G16|Add1~37_sumout\;
\G16|ALT_INV_Add16~9_sumout\ <= NOT \G16|Add16~9_sumout\;
\G16|ALT_INV_Add13~13_sumout\ <= NOT \G16|Add13~13_sumout\;
\G16|ALT_INV_Add14~13_sumout\ <= NOT \G16|Add14~13_sumout\;
\G16|ALT_INV_Add11~17_sumout\ <= NOT \G16|Add11~17_sumout\;
\G16|ALT_INV_Add12~17_sumout\ <= NOT \G16|Add12~17_sumout\;
\G16|ALT_INV_Add9~21_sumout\ <= NOT \G16|Add9~21_sumout\;
\G16|ALT_INV_Add10~21_sumout\ <= NOT \G16|Add10~21_sumout\;
\G16|ALT_INV_Add7~25_sumout\ <= NOT \G16|Add7~25_sumout\;
\G16|ALT_INV_Add8~25_sumout\ <= NOT \G16|Add8~25_sumout\;
\G16|ALT_INV_Add5~29_sumout\ <= NOT \G16|Add5~29_sumout\;
\G16|ALT_INV_Add6~29_sumout\ <= NOT \G16|Add6~29_sumout\;
\G16|ALT_INV_Add15~9_sumout\ <= NOT \G16|Add15~9_sumout\;
\G16|ALT_INV_Add0~37_sumout\ <= NOT \G16|Add0~37_sumout\;
\G16|ALT_INV_Add1~33_sumout\ <= NOT \G16|Add1~33_sumout\;
\G16|ALT_INV_Add16~5_sumout\ <= NOT \G16|Add16~5_sumout\;
\G16|ALT_INV_Add13~9_sumout\ <= NOT \G16|Add13~9_sumout\;
\G16|ALT_INV_Add14~9_sumout\ <= NOT \G16|Add14~9_sumout\;
\G16|ALT_INV_Add11~13_sumout\ <= NOT \G16|Add11~13_sumout\;
\G16|ALT_INV_Add12~13_sumout\ <= NOT \G16|Add12~13_sumout\;
\G16|ALT_INV_Add9~17_sumout\ <= NOT \G16|Add9~17_sumout\;
\G16|ALT_INV_Add10~17_sumout\ <= NOT \G16|Add10~17_sumout\;
\G16|ALT_INV_Add7~21_sumout\ <= NOT \G16|Add7~21_sumout\;
\G16|ALT_INV_Add8~21_sumout\ <= NOT \G16|Add8~21_sumout\;
\G16|ALT_INV_Add5~25_sumout\ <= NOT \G16|Add5~25_sumout\;
\G16|ALT_INV_Add6~25_sumout\ <= NOT \G16|Add6~25_sumout\;
\G16|ALT_INV_Add3~29_sumout\ <= NOT \G16|Add3~29_sumout\;
\G16|ALT_INV_Add4~29_sumout\ <= NOT \G16|Add4~29_sumout\;
\G16|ALT_INV_Add15~5_sumout\ <= NOT \G16|Add15~5_sumout\;
\G16|ALT_INV_Add0~33_sumout\ <= NOT \G16|Add0~33_sumout\;
\G16|ALT_INV_Add1~29_sumout\ <= NOT \G16|Add1~29_sumout\;
\G16|ALT_INV_Add16~1_sumout\ <= NOT \G16|Add16~1_sumout\;
\G16|ALT_INV_Add13~5_sumout\ <= NOT \G16|Add13~5_sumout\;
\G16|ALT_INV_Add14~5_sumout\ <= NOT \G16|Add14~5_sumout\;
\G16|ALT_INV_Add11~9_sumout\ <= NOT \G16|Add11~9_sumout\;
\G16|ALT_INV_Add12~9_sumout\ <= NOT \G16|Add12~9_sumout\;
\G16|ALT_INV_Add9~13_sumout\ <= NOT \G16|Add9~13_sumout\;
\G16|ALT_INV_Add10~13_sumout\ <= NOT \G16|Add10~13_sumout\;
\G16|ALT_INV_Add7~17_sumout\ <= NOT \G16|Add7~17_sumout\;
\G16|ALT_INV_Add8~17_sumout\ <= NOT \G16|Add8~17_sumout\;
\G16|ALT_INV_Add5~21_sumout\ <= NOT \G16|Add5~21_sumout\;
\G16|ALT_INV_Add6~21_sumout\ <= NOT \G16|Add6~21_sumout\;
\G16|ALT_INV_Add3~25_sumout\ <= NOT \G16|Add3~25_sumout\;
\G16|ALT_INV_Add4~25_sumout\ <= NOT \G16|Add4~25_sumout\;
\G16|ALT_INV_Add2~29_sumout\ <= NOT \G16|Add2~29_sumout\;
\G16|ALT_INV_Add15~1_sumout\ <= NOT \G16|Add15~1_sumout\;
\G16|ALT_INV_Add0~29_sumout\ <= NOT \G16|Add0~29_sumout\;
\G16|ALT_INV_Add14~1_sumout\ <= NOT \G16|Add14~1_sumout\;
\G16|ALT_INV_Add13~1_sumout\ <= NOT \G16|Add13~1_sumout\;
\G16|ALT_INV_Add11~5_sumout\ <= NOT \G16|Add11~5_sumout\;
\G16|ALT_INV_Add12~5_sumout\ <= NOT \G16|Add12~5_sumout\;
\G16|ALT_INV_Add9~9_sumout\ <= NOT \G16|Add9~9_sumout\;
\G16|ALT_INV_Add10~9_sumout\ <= NOT \G16|Add10~9_sumout\;
\G16|ALT_INV_Add7~13_sumout\ <= NOT \G16|Add7~13_sumout\;
\G16|ALT_INV_Add8~13_sumout\ <= NOT \G16|Add8~13_sumout\;
\G16|ALT_INV_Add5~17_sumout\ <= NOT \G16|Add5~17_sumout\;
\G16|ALT_INV_Add6~17_sumout\ <= NOT \G16|Add6~17_sumout\;
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
\G16|ALT_INV_Mux15~4_combout\ <= NOT \G16|Mux15~4_combout\;
\G16|ALT_INV_Mux14~4_combout\ <= NOT \G16|Mux14~4_combout\;
\G16|ALT_INV_Mux13~4_combout\ <= NOT \G16|Mux13~4_combout\;
\G16|ALT_INV_Mux12~4_combout\ <= NOT \G16|Mux12~4_combout\;
\G16|ALT_INV_Mux11~3_combout\ <= NOT \G16|Mux11~3_combout\;
\G16|ALT_INV_Mux10~3_combout\ <= NOT \G16|Mux10~3_combout\;
\G16|ALT_INV_Mux9~3_combout\ <= NOT \G16|Mux9~3_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~56_combout\ <= NOT \G16|Saida_to_Dados[7]~56_combout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a15~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a14~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a13~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a12~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a11~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a10~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a9~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a8~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\G16|ALT_INV_Add0~61_sumout\ <= NOT \G16|Add0~61_sumout\;
\G16|ALT_INV_Add1~61_sumout\ <= NOT \G16|Add1~61_sumout\;
\G16|ALT_INV_Add16~29_sumout\ <= NOT \G16|Add16~29_sumout\;
\G16|ALT_INV_Add15~29_sumout\ <= NOT \G16|Add15~29_sumout\;
\G16|ALT_INV_Add0~57_sumout\ <= NOT \G16|Add0~57_sumout\;
\G16|ALT_INV_Add1~57_sumout\ <= NOT \G16|Add1~57_sumout\;
\G16|ALT_INV_Add1~53_sumout\ <= NOT \G16|Add1~53_sumout\;
\G16|ALT_INV_Add16~25_sumout\ <= NOT \G16|Add16~25_sumout\;
\G16|ALT_INV_Add13~29_sumout\ <= NOT \G16|Add13~29_sumout\;
\G16|ALT_INV_Add14~29_sumout\ <= NOT \G16|Add14~29_sumout\;
\G16|ALT_INV_Add15~25_sumout\ <= NOT \G16|Add15~25_sumout\;
\G16|ALT_INV_Add0~53_sumout\ <= NOT \G16|Add0~53_sumout\;
\G16|ALT_INV_Add1~49_sumout\ <= NOT \G16|Add1~49_sumout\;
\G16|ALT_INV_Add16~21_sumout\ <= NOT \G16|Add16~21_sumout\;
\G16|ALT_INV_Add13~25_sumout\ <= NOT \G16|Add13~25_sumout\;
\G16|ALT_INV_Add14~25_sumout\ <= NOT \G16|Add14~25_sumout\;
\G16|ALT_INV_Add11~29_sumout\ <= NOT \G16|Add11~29_sumout\;
\G16|ALT_INV_Add12~29_sumout\ <= NOT \G16|Add12~29_sumout\;
\G16|ALT_INV_Add15~21_sumout\ <= NOT \G16|Add15~21_sumout\;
\G16|ALT_INV_Add0~49_sumout\ <= NOT \G16|Add0~49_sumout\;
\G16|ALT_INV_Add1~45_sumout\ <= NOT \G16|Add1~45_sumout\;
\G16|ALT_INV_Add16~17_sumout\ <= NOT \G16|Add16~17_sumout\;
\G16|ALT_INV_Add13~21_sumout\ <= NOT \G16|Add13~21_sumout\;
\G16|ALT_INV_Add14~21_sumout\ <= NOT \G16|Add14~21_sumout\;
\G16|ALT_INV_Add11~25_sumout\ <= NOT \G16|Add11~25_sumout\;
\G16|ALT_INV_Add12~25_sumout\ <= NOT \G16|Add12~25_sumout\;
\G16|ALT_INV_Add9~29_sumout\ <= NOT \G16|Add9~29_sumout\;
\G16|ALT_INV_Add10~29_sumout\ <= NOT \G16|Add10~29_sumout\;
\G16|ALT_INV_Add15~17_sumout\ <= NOT \G16|Add15~17_sumout\;
\G16|ALT_INV_Add0~45_sumout\ <= NOT \G16|Add0~45_sumout\;
\G16|ALT_INV_Add1~41_sumout\ <= NOT \G16|Add1~41_sumout\;
\G16|ALT_INV_Add16~13_sumout\ <= NOT \G16|Add16~13_sumout\;
\G16|ALT_INV_Prod~6_combout\ <= NOT \G16|Prod~6_combout\;
\G16|ALT_INV_Prod~5_combout\ <= NOT \G16|Prod~5_combout\;
\G16|ALT_INV_Mux13~0_combout\ <= NOT \G16|Mux13~0_combout\;
\G16|ALT_INV_Prod~4_combout\ <= NOT \G16|Prod~4_combout\;
\G16|ALT_INV_Prod~3_combout\ <= NOT \G16|Prod~3_combout\;
\G16|ALT_INV_Mux14~0_combout\ <= NOT \G16|Mux14~0_combout\;
\G16|ALT_INV_Prod~2_combout\ <= NOT \G16|Prod~2_combout\;
\G16|ALT_INV_Prod~1_combout\ <= NOT \G16|Prod~1_combout\;
\G16|ALT_INV_Mux15~0_combout\ <= NOT \G16|Mux15~0_combout\;
\G16|ALT_INV_Prod~0_combout\ <= NOT \G16|Prod~0_combout\;
\G16|ALT_INV_process_0~0_combout\ <= NOT \G16|process_0~0_combout\;
\G5|ALT_INV_Mux0~0_combout\ <= NOT \G5|Mux0~0_combout\;
\G4|ALT_INV_funct[2]~1_combout\ <= NOT \G4|funct[2]~1_combout\;
\G4|ALT_INV_Mux1~0_combout\ <= NOT \G4|Mux1~0_combout\;
\G4|ALT_INV_funct[0]~0_combout\ <= NOT \G4|funct[0]~0_combout\;
\G4|ALT_INV_Mux2~0_combout\ <= NOT \G4|Mux2~0_combout\;
\G4|ALT_INV_Equal0~0_combout\ <= NOT \G4|Equal0~0_combout\;
\G4|ALT_INV_op[2]~2_combout\ <= NOT \G4|op[2]~2_combout\;
\G4|ALT_INV_op[1]~1_combout\ <= NOT \G4|op[1]~1_combout\;
\G4|ALT_INV_op[0]~0_combout\ <= NOT \G4|op[0]~0_combout\;
\G7|ALT_INV_Mux16~2_combout\ <= NOT \G7|Mux16~2_combout\;
\G7|ALT_INV_Mux16~1_combout\ <= NOT \G7|Mux16~1_combout\;
\G7|ALT_INV_Mux17~1_combout\ <= NOT \G7|Mux17~1_combout\;
\G7|ALT_INV_Mux17~0_combout\ <= NOT \G7|Mux17~0_combout\;
\G7|ALT_INV_Mux18~1_combout\ <= NOT \G7|Mux18~1_combout\;
\G7|ALT_INV_Mux18~0_combout\ <= NOT \G7|Mux18~0_combout\;
\G7|ALT_INV_Mux19~1_combout\ <= NOT \G7|Mux19~1_combout\;
\G7|ALT_INV_Mux19~0_combout\ <= NOT \G7|Mux19~0_combout\;
\G7|ALT_INV_Mux20~7_combout\ <= NOT \G7|Mux20~7_combout\;
\G7|ALT_INV_Mux20~6_combout\ <= NOT \G7|Mux20~6_combout\;
\G7|ALT_INV_Mux21~1_combout\ <= NOT \G7|Mux21~1_combout\;
\G7|ALT_INV_Mux21~0_combout\ <= NOT \G7|Mux21~0_combout\;
\G7|ALT_INV_Mux22~1_combout\ <= NOT \G7|Mux22~1_combout\;
\G7|ALT_INV_Mux22~0_combout\ <= NOT \G7|Mux22~0_combout\;
\G7|ALT_INV_Mux23~1_combout\ <= NOT \G7|Mux23~1_combout\;
\G7|ALT_INV_Mux23~0_combout\ <= NOT \G7|Mux23~0_combout\;
\G7|ALT_INV_Mux24~1_combout\ <= NOT \G7|Mux24~1_combout\;
\G7|ALT_INV_Mux24~0_combout\ <= NOT \G7|Mux24~0_combout\;
\G7|ALT_INV_Mux25~1_combout\ <= NOT \G7|Mux25~1_combout\;
\G7|ALT_INV_Mux25~0_combout\ <= NOT \G7|Mux25~0_combout\;
\G7|ALT_INV_Mux26~1_combout\ <= NOT \G7|Mux26~1_combout\;
\G7|ALT_INV_Mux26~0_combout\ <= NOT \G7|Mux26~0_combout\;
\G7|ALT_INV_Mux27~1_combout\ <= NOT \G7|Mux27~1_combout\;
\G7|ALT_INV_Mux27~0_combout\ <= NOT \G7|Mux27~0_combout\;
\G7|ALT_INV_Mux28~1_combout\ <= NOT \G7|Mux28~1_combout\;
\G7|ALT_INV_Mux28~0_combout\ <= NOT \G7|Mux28~0_combout\;
\G7|ALT_INV_Mux16~0_combout\ <= NOT \G7|Mux16~0_combout\;
\G7|ALT_INV_Mux29~2_combout\ <= NOT \G7|Mux29~2_combout\;
\G7|ALT_INV_Mux29~1_combout\ <= NOT \G7|Mux29~1_combout\;
\G7|ALT_INV_Mux30~0_combout\ <= NOT \G7|Mux30~0_combout\;
\G7|ALT_INV_Reg~2_combout\ <= NOT \G7|Reg~2_combout\;
\G7|ALT_INV_Reg~1_combout\ <= NOT \G7|Reg~1_combout\;
\G7|ALT_INV_Mux31~1_combout\ <= NOT \G7|Mux31~1_combout\;
\G7|ALT_INV_Mux29~0_combout\ <= NOT \G7|Mux29~0_combout\;
\G7|ALT_INV_Reg~0_combout\ <= NOT \G7|Reg~0_combout\;
\G7|ALT_INV_Mux20~5_combout\ <= NOT \G7|Mux20~5_combout\;
\G7|ALT_INV_Mux20~4_combout\ <= NOT \G7|Mux20~4_combout\;
\G7|ALT_INV_Mux31~0_combout\ <= NOT \G7|Mux31~0_combout\;
\G7|ALT_INV_Mux20~3_combout\ <= NOT \G7|Mux20~3_combout\;
\G7|ALT_INV_Mux20~2_combout\ <= NOT \G7|Mux20~2_combout\;
\G7|ALT_INV_Mux20~1_combout\ <= NOT \G7|Mux20~1_combout\;
\G7|ALT_INV_Mux20~0_combout\ <= NOT \G7|Mux20~0_combout\;
\G4|ALT_INV_rs~0_combout\ <= NOT \G4|rs~0_combout\;
\G7|ALT_INV_Mux0~0_combout\ <= NOT \G7|Mux0~0_combout\;
\G7|ALT_INV_Mux1~0_combout\ <= NOT \G7|Mux1~0_combout\;
\G7|ALT_INV_Mux2~0_combout\ <= NOT \G7|Mux2~0_combout\;
\G7|ALT_INV_Mux3~0_combout\ <= NOT \G7|Mux3~0_combout\;
\G7|ALT_INV_Mux4~0_combout\ <= NOT \G7|Mux4~0_combout\;
\G7|ALT_INV_Mux5~0_combout\ <= NOT \G7|Mux5~0_combout\;
\G7|ALT_INV_Mux6~0_combout\ <= NOT \G7|Mux6~0_combout\;
\G7|ALT_INV_Mux7~0_combout\ <= NOT \G7|Mux7~0_combout\;
\G7|ALT_INV_Mux8~0_combout\ <= NOT \G7|Mux8~0_combout\;
\G7|ALT_INV_Mux9~0_combout\ <= NOT \G7|Mux9~0_combout\;
\G7|ALT_INV_Mux10~0_combout\ <= NOT \G7|Mux10~0_combout\;
\G7|ALT_INV_Mux11~0_combout\ <= NOT \G7|Mux11~0_combout\;
\G7|ALT_INV_Mux12~0_combout\ <= NOT \G7|Mux12~0_combout\;
\G7|ALT_INV_Mux13~0_combout\ <= NOT \G7|Mux13~0_combout\;
\G7|ALT_INV_Mux14~1_combout\ <= NOT \G7|Mux14~1_combout\;
\G7|ALT_INV_Mux14~0_combout\ <= NOT \G7|Mux14~0_combout\;
\G7|ALT_INV_Mux15~1_combout\ <= NOT \G7|Mux15~1_combout\;
\G7|ALT_INV_Mux15~0_combout\ <= NOT \G7|Mux15~0_combout\;
\G5|ALT_INV_Mux6~0_combout\ <= NOT \G5|Mux6~0_combout\;
\G6|ALT_INV_SAIDA[1]~1_combout\ <= NOT \G6|SAIDA[1]~1_combout\;
\G4|ALT_INV_Mux7~2_combout\ <= NOT \G4|Mux7~2_combout\;
\G6|ALT_INV_SAIDA[0]~0_combout\ <= NOT \G6|SAIDA[0]~0_combout\;
\G4|ALT_INV_Mux6~0_combout\ <= NOT \G4|Mux6~0_combout\;
\G4|ALT_INV_Mux0~3_combout\ <= NOT \G4|Mux0~3_combout\;
\G4|ALT_INV_rd[0]~0_combout\ <= NOT \G4|rd[0]~0_combout\;
\G4|ALT_INV_Mux0~2_combout\ <= NOT \G4|Mux0~2_combout\;
\G4|ALT_INV_Mux7~1_combout\ <= NOT \G4|Mux7~1_combout\;
\G4|ALT_INV_Mux7~0_combout\ <= NOT \G4|Mux7~0_combout\;
\G4|ALT_INV_Mux9~0_combout\ <= NOT \G4|Mux9~0_combout\;
\G4|ALT_INV_Mux8~0_combout\ <= NOT \G4|Mux8~0_combout\;
\G4|ALT_INV_Mux3~0_combout\ <= NOT \G4|Mux3~0_combout\;
\G4|ALT_INV_Mux0~1_combout\ <= NOT \G4|Mux0~1_combout\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
\G2|ALT_INV_saida\(15) <= NOT \G2|saida\(15);
\G2|ALT_INV_saida\(14) <= NOT \G2|saida\(14);
\G2|ALT_INV_saida\(13) <= NOT \G2|saida\(13);
\G2|ALT_INV_saida\(12) <= NOT \G2|saida\(12);
\G2|ALT_INV_saida\(11) <= NOT \G2|saida\(11);
\G2|ALT_INV_saida\(10) <= NOT \G2|saida\(10);
\G16|ALT_INV_Mux13~2_combout\ <= NOT \G16|Mux13~2_combout\;
\G16|ALT_INV_Splitter~8_combout\ <= NOT \G16|Splitter~8_combout\;
\G18|ALT_INV_SAIDA~1_combout\ <= NOT \G18|SAIDA~1_combout\;
\G16|ALT_INV_Mux14~3_combout\ <= NOT \G16|Mux14~3_combout\;
\G16|ALT_INV_Mux14~2_combout\ <= NOT \G16|Mux14~2_combout\;
\G16|ALT_INV_Splitter~7_combout\ <= NOT \G16|Splitter~7_combout\;
\G7|ALT_INV_Mux14~2_combout\ <= NOT \G7|Mux14~2_combout\;
\G7|ALT_INV_Reg~4_combout\ <= NOT \G7|Reg~4_combout\;
\G7|ALT_INV_Reg~3_combout\ <= NOT \G7|Reg~3_combout\;
\G18|ALT_INV_SAIDA~0_combout\ <= NOT \G18|SAIDA~0_combout\;
\G16|ALT_INV_Mux15~3_combout\ <= NOT \G16|Mux15~3_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~42_combout\ <= NOT \G16|Saida_to_Dados[15]~42_combout\;
\G4|ALT_INV_funct[2]~3_combout\ <= NOT \G4|funct[2]~3_combout\;
\G16|ALT_INV_Mux15~2_combout\ <= NOT \G16|Mux15~2_combout\;
\G4|ALT_INV_funct[0]~2_combout\ <= NOT \G4|funct[0]~2_combout\;
\G16|ALT_INV_Splitter~6_combout\ <= NOT \G16|Splitter~6_combout\;
\G7|ALT_INV_Mux15~2_combout\ <= NOT \G7|Mux15~2_combout\;
\G4|ALT_INV_rd[0]~1_combout\ <= NOT \G4|rd[0]~1_combout\;
\G7|ALT_INV_Decoder0~0_combout\ <= NOT \G7|Decoder0~0_combout\;
\G6|ALT_INV_SAIDA[0]~2_combout\ <= NOT \G6|SAIDA[0]~2_combout\;
\G16|ALT_INV_process_0~1_combout\ <= NOT \G16|process_0~1_combout\;
\G5|ALT_INV_Mux8~0_combout\ <= NOT \G5|Mux8~0_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~40_combout\ <= NOT \G16|Saida_to_Dados[15]~40_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~39_combout\ <= NOT \G16|Saida_to_Dados[15]~39_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~37_combout\ <= NOT \G16|Saida_to_Dados[14]~37_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~36_combout\ <= NOT \G16|Saida_to_Dados[14]~36_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~35_combout\ <= NOT \G16|Saida_to_Dados[14]~35_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~34_combout\ <= NOT \G16|Saida_to_Dados[14]~34_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~33_combout\ <= NOT \G16|Saida_to_Dados[14]~33_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~32_combout\ <= NOT \G16|Saida_to_Dados[15]~32_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~31_combout\ <= NOT \G16|Saida_to_Dados[14]~31_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~30_combout\ <= NOT \G16|Saida_to_Dados[15]~30_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~29_combout\ <= NOT \G16|Saida_to_Dados[15]~29_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~27_combout\ <= NOT \G16|Saida_to_Dados[13]~27_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~26_combout\ <= NOT \G16|Saida_to_Dados[13]~26_combout\;
\G16|ALT_INV_Prod~54_combout\ <= NOT \G16|Prod~54_combout\;
\G16|ALT_INV_Splitter~5_combout\ <= NOT \G16|Splitter~5_combout\;
\G16|ALT_INV_Saida_to_Dados[12]~24_combout\ <= NOT \G16|Saida_to_Dados[12]~24_combout\;
\G16|ALT_INV_Saida_to_Dados[12]~23_combout\ <= NOT \G16|Saida_to_Dados[12]~23_combout\;
\G16|ALT_INV_Prod~53_combout\ <= NOT \G16|Prod~53_combout\;
\G16|ALT_INV_Prod~52_combout\ <= NOT \G16|Prod~52_combout\;
\G16|ALT_INV_Splitter~4_combout\ <= NOT \G16|Splitter~4_combout\;
\G16|ALT_INV_Saida_to_Dados[11]~21_combout\ <= NOT \G16|Saida_to_Dados[11]~21_combout\;
\G16|ALT_INV_Saida_to_Dados[11]~20_combout\ <= NOT \G16|Saida_to_Dados[11]~20_combout\;
\G16|ALT_INV_Prod~51_combout\ <= NOT \G16|Prod~51_combout\;
\G16|ALT_INV_Prod~50_combout\ <= NOT \G16|Prod~50_combout\;
\G16|ALT_INV_Prod~49_combout\ <= NOT \G16|Prod~49_combout\;
\G16|ALT_INV_Splitter~3_combout\ <= NOT \G16|Splitter~3_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~18_combout\ <= NOT \G16|Saida_to_Dados[10]~18_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~17_combout\ <= NOT \G16|Saida_to_Dados[10]~17_combout\;
\G16|ALT_INV_Prod~48_combout\ <= NOT \G16|Prod~48_combout\;
\G16|ALT_INV_Prod~47_combout\ <= NOT \G16|Prod~47_combout\;
\G16|ALT_INV_Prod~46_combout\ <= NOT \G16|Prod~46_combout\;
\G16|ALT_INV_Prod~45_combout\ <= NOT \G16|Prod~45_combout\;
\G16|ALT_INV_Splitter~2_combout\ <= NOT \G16|Splitter~2_combout\;
\G16|ALT_INV_Saida_to_Dados[9]~15_combout\ <= NOT \G16|Saida_to_Dados[9]~15_combout\;
\G16|ALT_INV_Saida_to_Dados[9]~14_combout\ <= NOT \G16|Saida_to_Dados[9]~14_combout\;
\G16|ALT_INV_Prod~44_combout\ <= NOT \G16|Prod~44_combout\;
\G16|ALT_INV_Prod~43_combout\ <= NOT \G16|Prod~43_combout\;
\G16|ALT_INV_Prod~42_combout\ <= NOT \G16|Prod~42_combout\;
\G16|ALT_INV_Prod~41_combout\ <= NOT \G16|Prod~41_combout\;
\G16|ALT_INV_Prod~40_combout\ <= NOT \G16|Prod~40_combout\;
\G16|ALT_INV_Splitter~1_combout\ <= NOT \G16|Splitter~1_combout\;
\G16|ALT_INV_Saida_to_Dados[8]~12_combout\ <= NOT \G16|Saida_to_Dados[8]~12_combout\;
\G16|ALT_INV_Saida_to_Dados[8]~11_combout\ <= NOT \G16|Saida_to_Dados[8]~11_combout\;
\G16|ALT_INV_Prod~39_combout\ <= NOT \G16|Prod~39_combout\;
\G16|ALT_INV_Prod~38_combout\ <= NOT \G16|Prod~38_combout\;
\G16|ALT_INV_Prod~37_combout\ <= NOT \G16|Prod~37_combout\;
\G16|ALT_INV_Prod~36_combout\ <= NOT \G16|Prod~36_combout\;
\G16|ALT_INV_Prod~35_combout\ <= NOT \G16|Prod~35_combout\;
\G16|ALT_INV_Prod~34_combout\ <= NOT \G16|Prod~34_combout\;
\G16|ALT_INV_Splitter~0_combout\ <= NOT \G16|Splitter~0_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~9_combout\ <= NOT \G16|Saida_to_Dados[7]~9_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~8_combout\ <= NOT \G16|Saida_to_Dados[7]~8_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~7_combout\ <= NOT \G16|Saida_to_Dados[7]~7_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~6_combout\ <= NOT \G16|Saida_to_Dados[13]~6_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~5_combout\ <= NOT \G16|Saida_to_Dados[13]~5_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~4_combout\ <= NOT \G16|Saida_to_Dados[13]~4_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~3_combout\ <= NOT \G16|Saida_to_Dados[13]~3_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~2_combout\ <= NOT \G16|Saida_to_Dados[13]~2_combout\;
\G16|ALT_INV_Prod~33_combout\ <= NOT \G16|Prod~33_combout\;
\G16|ALT_INV_Prod~32_combout\ <= NOT \G16|Prod~32_combout\;
\G16|ALT_INV_Prod~31_combout\ <= NOT \G16|Prod~31_combout\;
\G16|ALT_INV_Prod~30_combout\ <= NOT \G16|Prod~30_combout\;
\G16|ALT_INV_Prod~29_combout\ <= NOT \G16|Prod~29_combout\;
\G16|ALT_INV_Prod~28_combout\ <= NOT \G16|Prod~28_combout\;
\G16|ALT_INV_Prod~27_combout\ <= NOT \G16|Prod~27_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~1_combout\ <= NOT \G16|Saida_to_Dados[13]~1_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~0_combout\ <= NOT \G16|Saida_to_Dados[13]~0_combout\;
\G16|ALT_INV_Prod~26_combout\ <= NOT \G16|Prod~26_combout\;
\G16|ALT_INV_Prod~25_combout\ <= NOT \G16|Prod~25_combout\;
\G16|ALT_INV_Prod~24_combout\ <= NOT \G16|Prod~24_combout\;
\G16|ALT_INV_Prod~23_combout\ <= NOT \G16|Prod~23_combout\;
\G16|ALT_INV_Prod~22_combout\ <= NOT \G16|Prod~22_combout\;
\G16|ALT_INV_Prod~21_combout\ <= NOT \G16|Prod~21_combout\;
\G16|ALT_INV_Prod~20_combout\ <= NOT \G16|Prod~20_combout\;
\G16|ALT_INV_Prod~19_combout\ <= NOT \G16|Prod~19_combout\;
\G16|ALT_INV_Prod~18_combout\ <= NOT \G16|Prod~18_combout\;
\G16|ALT_INV_Prod~17_combout\ <= NOT \G16|Prod~17_combout\;
\G16|ALT_INV_Prod~16_combout\ <= NOT \G16|Prod~16_combout\;
\G16|ALT_INV_Prod~15_combout\ <= NOT \G16|Prod~15_combout\;
\G16|ALT_INV_Prod~14_combout\ <= NOT \G16|Prod~14_combout\;
\G16|ALT_INV_Prod~13_combout\ <= NOT \G16|Prod~13_combout\;
\G16|ALT_INV_Prod~12_combout\ <= NOT \G16|Prod~12_combout\;
\G16|ALT_INV_Prod~11_combout\ <= NOT \G16|Prod~11_combout\;
\G16|ALT_INV_Prod~10_combout\ <= NOT \G16|Prod~10_combout\;
\G16|ALT_INV_Prod~9_combout\ <= NOT \G16|Prod~9_combout\;
\G16|ALT_INV_Mux12~0_combout\ <= NOT \G16|Mux12~0_combout\;
\G16|ALT_INV_Prod~8_combout\ <= NOT \G16|Prod~8_combout\;
\G16|ALT_INV_Prod~7_combout\ <= NOT \G16|Prod~7_combout\;
\G14|ALT_INV_SAIDA~28_combout\ <= NOT \G14|SAIDA~28_combout\;
\G14|ALT_INV_SAIDA~27_combout\ <= NOT \G14|SAIDA~27_combout\;
\G14|ALT_INV_SAIDA~26_combout\ <= NOT \G14|SAIDA~26_combout\;
\G14|ALT_INV_SAIDA~25_combout\ <= NOT \G14|SAIDA~25_combout\;
\G14|ALT_INV_SAIDA~24_combout\ <= NOT \G14|SAIDA~24_combout\;
\G14|ALT_INV_SAIDA~23_combout\ <= NOT \G14|SAIDA~23_combout\;
\G14|ALT_INV_SAIDA~22_combout\ <= NOT \G14|SAIDA~22_combout\;
\G14|ALT_INV_SAIDA~21_combout\ <= NOT \G14|SAIDA~21_combout\;
\G14|ALT_INV_SAIDA~20_combout\ <= NOT \G14|SAIDA~20_combout\;
\G14|ALT_INV_SAIDA~19_combout\ <= NOT \G14|SAIDA~19_combout\;
\G14|ALT_INV_SAIDA~18_combout\ <= NOT \G14|SAIDA~18_combout\;
\G14|ALT_INV_SAIDA~17_combout\ <= NOT \G14|SAIDA~17_combout\;
\G14|ALT_INV_SAIDA~16_combout\ <= NOT \G14|SAIDA~16_combout\;
\G14|ALT_INV_SAIDA~15_combout\ <= NOT \G14|SAIDA~15_combout\;
\G14|ALT_INV_SAIDA~14_combout\ <= NOT \G14|SAIDA~14_combout\;
\G14|ALT_INV_SAIDA~13_combout\ <= NOT \G14|SAIDA~13_combout\;
\G14|ALT_INV_SAIDA~12_combout\ <= NOT \G14|SAIDA~12_combout\;
\G14|ALT_INV_SAIDA~11_combout\ <= NOT \G14|SAIDA~11_combout\;
\G14|ALT_INV_SAIDA~10_combout\ <= NOT \G14|SAIDA~10_combout\;
\G14|ALT_INV_SAIDA~9_combout\ <= NOT \G14|SAIDA~9_combout\;
\G14|ALT_INV_SAIDA~8_combout\ <= NOT \G14|SAIDA~8_combout\;
\G14|ALT_INV_SAIDA~7_combout\ <= NOT \G14|SAIDA~7_combout\;
\G14|ALT_INV_SAIDA~6_combout\ <= NOT \G14|SAIDA~6_combout\;
\G14|ALT_INV_SAIDA~5_combout\ <= NOT \G14|SAIDA~5_combout\;
\G14|ALT_INV_SAIDA~4_combout\ <= NOT \G14|SAIDA~4_combout\;
\G14|ALT_INV_SAIDA~3_combout\ <= NOT \G14|SAIDA~3_combout\;
\G7|ALT_INV_Mux15~4_combout\ <= NOT \G7|Mux15~4_combout\;
\G14|ALT_INV_SAIDA~2_combout\ <= NOT \G14|SAIDA~2_combout\;
\G14|ALT_INV_SAIDA~1_combout\ <= NOT \G14|SAIDA~1_combout\;
\G14|ALT_INV_SAIDA~0_combout\ <= NOT \G14|SAIDA~0_combout\;
\G13|ALT_INV_SAIDA~15_combout\ <= NOT \G13|SAIDA~15_combout\;
\G3|ALT_INV_resshift\(15) <= NOT \G3|resshift\(15);
\G13|ALT_INV_SAIDA~14_combout\ <= NOT \G13|SAIDA~14_combout\;
\G3|ALT_INV_resshift\(14) <= NOT \G3|resshift\(14);
\G13|ALT_INV_SAIDA~13_combout\ <= NOT \G13|SAIDA~13_combout\;
\G13|ALT_INV_SAIDA~12_combout\ <= NOT \G13|SAIDA~12_combout\;
\G13|ALT_INV_SAIDA~11_combout\ <= NOT \G13|SAIDA~11_combout\;
\G13|ALT_INV_SAIDA~10_combout\ <= NOT \G13|SAIDA~10_combout\;
\G13|ALT_INV_SAIDA~9_combout\ <= NOT \G13|SAIDA~9_combout\;
\G13|ALT_INV_SAIDA~8_combout\ <= NOT \G13|SAIDA~8_combout\;
\G13|ALT_INV_SAIDA~7_combout\ <= NOT \G13|SAIDA~7_combout\;
\G13|ALT_INV_SAIDA~6_combout\ <= NOT \G13|SAIDA~6_combout\;
\G13|ALT_INV_SAIDA~5_combout\ <= NOT \G13|SAIDA~5_combout\;
\G13|ALT_INV_SAIDA~4_combout\ <= NOT \G13|SAIDA~4_combout\;
\G13|ALT_INV_SAIDA~3_combout\ <= NOT \G13|SAIDA~3_combout\;
\G13|ALT_INV_SAIDA~2_combout\ <= NOT \G13|SAIDA~2_combout\;
\G13|ALT_INV_SAIDA~1_combout\ <= NOT \G13|SAIDA~1_combout\;
\G13|ALT_INV_SAIDA~0_combout\ <= NOT \G13|SAIDA~0_combout\;
\G7|ALT_INV_Reg[2][0]~6_combout\ <= NOT \G7|Reg[2][0]~6_combout\;
\G7|ALT_INV_Reg[3][0]~5_combout\ <= NOT \G7|Reg[3][0]~5_combout\;
\G18|ALT_INV_SAIDA~42_combout\ <= NOT \G18|SAIDA~42_combout\;
\G18|ALT_INV_SAIDA~41_combout\ <= NOT \G18|SAIDA~41_combout\;
\G18|ALT_INV_SAIDA~40_combout\ <= NOT \G18|SAIDA~40_combout\;
\G18|ALT_INV_SAIDA~39_combout\ <= NOT \G18|SAIDA~39_combout\;
\G18|ALT_INV_SAIDA~38_combout\ <= NOT \G18|SAIDA~38_combout\;
\G18|ALT_INV_SAIDA~37_combout\ <= NOT \G18|SAIDA~37_combout\;
\G18|ALT_INV_SAIDA~36_combout\ <= NOT \G18|SAIDA~36_combout\;
\G18|ALT_INV_SAIDA~35_combout\ <= NOT \G18|SAIDA~35_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~55_combout\ <= NOT \G16|Saida_to_Dados[15]~55_combout\;
\G18|ALT_INV_SAIDA~34_combout\ <= NOT \G18|SAIDA~34_combout\;
\G18|ALT_INV_SAIDA~33_combout\ <= NOT \G18|SAIDA~33_combout\;
\G18|ALT_INV_SAIDA~32_combout\ <= NOT \G18|SAIDA~32_combout\;
\G7|ALT_INV_Mux15~3_combout\ <= NOT \G7|Mux15~3_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~54_combout\ <= NOT \G16|Saida_to_Dados[15]~54_combout\;
\G18|ALT_INV_SAIDA~31_combout\ <= NOT \G18|SAIDA~31_combout\;
\G18|ALT_INV_SAIDA~30_combout\ <= NOT \G18|SAIDA~30_combout\;
\G18|ALT_INV_SAIDA~29_combout\ <= NOT \G18|SAIDA~29_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~53_combout\ <= NOT \G16|Saida_to_Dados[13]~53_combout\;
\G16|ALT_INV_Splitter~19_combout\ <= NOT \G16|Splitter~19_combout\;
\G18|ALT_INV_SAIDA~28_combout\ <= NOT \G18|SAIDA~28_combout\;
\G18|ALT_INV_SAIDA~27_combout\ <= NOT \G18|SAIDA~27_combout\;
\G18|ALT_INV_SAIDA~26_combout\ <= NOT \G18|SAIDA~26_combout\;
\G16|ALT_INV_Saida_to_Dados[12]~52_combout\ <= NOT \G16|Saida_to_Dados[12]~52_combout\;
\G16|ALT_INV_Splitter~18_combout\ <= NOT \G16|Splitter~18_combout\;
\G18|ALT_INV_SAIDA~25_combout\ <= NOT \G18|SAIDA~25_combout\;
\G18|ALT_INV_SAIDA~24_combout\ <= NOT \G18|SAIDA~24_combout\;
\G18|ALT_INV_SAIDA~23_combout\ <= NOT \G18|SAIDA~23_combout\;
\G16|ALT_INV_Saida_to_Dados[11]~51_combout\ <= NOT \G16|Saida_to_Dados[11]~51_combout\;
\G16|ALT_INV_Splitter~17_combout\ <= NOT \G16|Splitter~17_combout\;
\G18|ALT_INV_SAIDA~22_combout\ <= NOT \G18|SAIDA~22_combout\;
\G18|ALT_INV_SAIDA~21_combout\ <= NOT \G18|SAIDA~21_combout\;
\G18|ALT_INV_SAIDA~20_combout\ <= NOT \G18|SAIDA~20_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~50_combout\ <= NOT \G16|Saida_to_Dados[10]~50_combout\;
\G16|ALT_INV_Splitter~16_combout\ <= NOT \G16|Splitter~16_combout\;
\G18|ALT_INV_SAIDA~19_combout\ <= NOT \G18|SAIDA~19_combout\;
\G18|ALT_INV_SAIDA~18_combout\ <= NOT \G18|SAIDA~18_combout\;
\G18|ALT_INV_SAIDA~17_combout\ <= NOT \G18|SAIDA~17_combout\;
\G16|ALT_INV_Saida_to_Dados[9]~49_combout\ <= NOT \G16|Saida_to_Dados[9]~49_combout\;
\G16|ALT_INV_Splitter~15_combout\ <= NOT \G16|Splitter~15_combout\;
\G18|ALT_INV_SAIDA~16_combout\ <= NOT \G18|SAIDA~16_combout\;
\G18|ALT_INV_SAIDA~15_combout\ <= NOT \G18|SAIDA~15_combout\;
\G18|ALT_INV_SAIDA~14_combout\ <= NOT \G18|SAIDA~14_combout\;
\G16|ALT_INV_Saida_to_Dados[8]~48_combout\ <= NOT \G16|Saida_to_Dados[8]~48_combout\;
\G16|ALT_INV_Splitter~14_combout\ <= NOT \G16|Splitter~14_combout\;
\G18|ALT_INV_SAIDA~13_combout\ <= NOT \G18|SAIDA~13_combout\;
\G18|ALT_INV_SAIDA~12_combout\ <= NOT \G18|SAIDA~12_combout\;
\G18|ALT_INV_SAIDA~11_combout\ <= NOT \G18|SAIDA~11_combout\;
\G18|ALT_INV_SAIDA~10_combout\ <= NOT \G18|SAIDA~10_combout\;
\G18|ALT_INV_SAIDA~9_combout\ <= NOT \G18|SAIDA~9_combout\;
\G18|ALT_INV_SAIDA~8_combout\ <= NOT \G18|SAIDA~8_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~47_combout\ <= NOT \G16|Saida_to_Dados[13]~47_combout\;
\G18|ALT_INV_SAIDA~7_combout\ <= NOT \G18|SAIDA~7_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~46_combout\ <= NOT \G16|Saida_to_Dados[13]~46_combout\;
\G5|ALT_INV_Mux9~1_combout\ <= NOT \G5|Mux9~1_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~45_combout\ <= NOT \G16|Saida_to_Dados[7]~45_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~44_combout\ <= NOT \G16|Saida_to_Dados[13]~44_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~43_combout\ <= NOT \G16|Saida_to_Dados[13]~43_combout\;
\G16|ALT_INV_Splitter~13_combout\ <= NOT \G16|Splitter~13_combout\;
\G18|ALT_INV_SAIDA~6_combout\ <= NOT \G18|SAIDA~6_combout\;
\G16|ALT_INV_Mux9~2_combout\ <= NOT \G16|Mux9~2_combout\;
\G16|ALT_INV_Mux9~1_combout\ <= NOT \G16|Mux9~1_combout\;
\G16|ALT_INV_Splitter~12_combout\ <= NOT \G16|Splitter~12_combout\;
\G18|ALT_INV_SAIDA~5_combout\ <= NOT \G18|SAIDA~5_combout\;
\G16|ALT_INV_Mux10~2_combout\ <= NOT \G16|Mux10~2_combout\;
\G16|ALT_INV_Mux10~1_combout\ <= NOT \G16|Mux10~1_combout\;
\G16|ALT_INV_Splitter~11_combout\ <= NOT \G16|Splitter~11_combout\;
\G18|ALT_INV_SAIDA~4_combout\ <= NOT \G18|SAIDA~4_combout\;
\G16|ALT_INV_Mux11~2_combout\ <= NOT \G16|Mux11~2_combout\;
\G16|ALT_INV_Mux11~1_combout\ <= NOT \G16|Mux11~1_combout\;
\G16|ALT_INV_Splitter~10_combout\ <= NOT \G16|Splitter~10_combout\;
\G18|ALT_INV_SAIDA~3_combout\ <= NOT \G18|SAIDA~3_combout\;
\G16|ALT_INV_Mux12~3_combout\ <= NOT \G16|Mux12~3_combout\;
\G16|ALT_INV_Mux12~2_combout\ <= NOT \G16|Mux12~2_combout\;
\G16|ALT_INV_Splitter~9_combout\ <= NOT \G16|Splitter~9_combout\;
\G18|ALT_INV_SAIDA~2_combout\ <= NOT \G18|SAIDA~2_combout\;
\G16|ALT_INV_Mux13~3_combout\ <= NOT \G16|Mux13~3_combout\;
\G14|ALT_INV_SAIDA\(13) <= NOT \G14|SAIDA\(13);
\G14|ALT_INV_SAIDA\(12) <= NOT \G14|SAIDA\(12);
\G14|ALT_INV_SAIDA\(11) <= NOT \G14|SAIDA\(11);
\G14|ALT_INV_SAIDA\(10) <= NOT \G14|SAIDA\(10);
\G14|ALT_INV_SAIDA\(9) <= NOT \G14|SAIDA\(9);
\G14|ALT_INV_SAIDA\(8) <= NOT \G14|SAIDA\(8);
\G14|ALT_INV_SAIDA\(7) <= NOT \G14|SAIDA\(7);
\G14|ALT_INV_SAIDA\(6) <= NOT \G14|SAIDA\(6);
\G14|ALT_INV_SAIDA\(5) <= NOT \G14|SAIDA\(5);
\G14|ALT_INV_SAIDA\(4) <= NOT \G14|SAIDA\(4);
\G14|ALT_INV_SAIDA\(3) <= NOT \G14|SAIDA\(3);
\G14|ALT_INV_SAIDA\(2) <= NOT \G14|SAIDA\(2);
\G14|ALT_INV_SAIDA\(1) <= NOT \G14|SAIDA\(1);
\G14|ALT_INV_SAIDA\(0) <= NOT \G14|SAIDA\(0);
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
\G7|ALT_INV_Reg[2][15]~combout\ <= NOT \G7|Reg[2][15]~combout\;
\G7|ALT_INV_Reg[3][15]~combout\ <= NOT \G7|Reg[3][15]~combout\;
\G7|ALT_INV_Reg[2][14]~combout\ <= NOT \G7|Reg[2][14]~combout\;
\G7|ALT_INV_Reg[3][14]~combout\ <= NOT \G7|Reg[3][14]~combout\;
\G7|ALT_INV_Reg[2][13]~combout\ <= NOT \G7|Reg[2][13]~combout\;
\G7|ALT_INV_Reg[3][13]~combout\ <= NOT \G7|Reg[3][13]~combout\;
\G7|ALT_INV_Reg[2][12]~combout\ <= NOT \G7|Reg[2][12]~combout\;
\G7|ALT_INV_Reg[3][12]~combout\ <= NOT \G7|Reg[3][12]~combout\;
\G7|ALT_INV_Reg[2][11]~combout\ <= NOT \G7|Reg[2][11]~combout\;
\G7|ALT_INV_Reg[3][11]~combout\ <= NOT \G7|Reg[3][11]~combout\;
\G7|ALT_INV_Reg[2][10]~combout\ <= NOT \G7|Reg[2][10]~combout\;
\G7|ALT_INV_Reg[3][10]~combout\ <= NOT \G7|Reg[3][10]~combout\;
\G7|ALT_INV_Reg[2][9]~combout\ <= NOT \G7|Reg[2][9]~combout\;
\G7|ALT_INV_Reg[3][9]~combout\ <= NOT \G7|Reg[3][9]~combout\;
\G7|ALT_INV_Reg[2][8]~combout\ <= NOT \G7|Reg[2][8]~combout\;
\G7|ALT_INV_Reg[3][8]~combout\ <= NOT \G7|Reg[3][8]~combout\;
\G7|ALT_INV_Reg[2][7]~combout\ <= NOT \G7|Reg[2][7]~combout\;
\G7|ALT_INV_Reg[3][7]~combout\ <= NOT \G7|Reg[3][7]~combout\;
\G7|ALT_INV_Reg[2][6]~combout\ <= NOT \G7|Reg[2][6]~combout\;
\G7|ALT_INV_Reg[3][6]~combout\ <= NOT \G7|Reg[3][6]~combout\;
\G7|ALT_INV_Reg[2][5]~combout\ <= NOT \G7|Reg[2][5]~combout\;
\G7|ALT_INV_Reg[3][5]~combout\ <= NOT \G7|Reg[3][5]~combout\;
\G7|ALT_INV_Reg[2][4]~combout\ <= NOT \G7|Reg[2][4]~combout\;
\G7|ALT_INV_Reg[3][4]~combout\ <= NOT \G7|Reg[3][4]~combout\;
\G7|ALT_INV_Reg[2][3]~combout\ <= NOT \G7|Reg[2][3]~combout\;
\G7|ALT_INV_Reg[3][3]~combout\ <= NOT \G7|Reg[3][3]~combout\;
\G7|ALT_INV_Reg[2][2]~combout\ <= NOT \G7|Reg[2][2]~combout\;
\G7|ALT_INV_Reg[3][2]~combout\ <= NOT \G7|Reg[3][2]~combout\;
\G7|ALT_INV_Reg[2][1]~combout\ <= NOT \G7|Reg[2][1]~combout\;
\G7|ALT_INV_Reg[3][1]~combout\ <= NOT \G7|Reg[3][1]~combout\;
\G7|ALT_INV_Reg[2][0]~combout\ <= NOT \G7|Reg[2][0]~combout\;
\G7|ALT_INV_Reg[3][0]~combout\ <= NOT \G7|Reg[3][0]~combout\;
\G18|ALT_INV_SAIDA\(15) <= NOT \G18|SAIDA\(15);
\G18|ALT_INV_SAIDA\(14) <= NOT \G18|SAIDA\(14);
\G18|ALT_INV_SAIDA\(13) <= NOT \G18|SAIDA\(13);
\G18|ALT_INV_SAIDA\(12) <= NOT \G18|SAIDA\(12);
\G18|ALT_INV_SAIDA\(11) <= NOT \G18|SAIDA\(11);
\G18|ALT_INV_SAIDA\(10) <= NOT \G18|SAIDA\(10);
\G18|ALT_INV_SAIDA\(9) <= NOT \G18|SAIDA\(9);
\G18|ALT_INV_SAIDA\(8) <= NOT \G18|SAIDA\(8);
\G18|ALT_INV_SAIDA\(7) <= NOT \G18|SAIDA\(7);
\G18|ALT_INV_SAIDA\(6) <= NOT \G18|SAIDA\(6);
\G18|ALT_INV_SAIDA\(5) <= NOT \G18|SAIDA\(5);
\G18|ALT_INV_SAIDA\(4) <= NOT \G18|SAIDA\(4);
\G18|ALT_INV_SAIDA\(3) <= NOT \G18|SAIDA\(3);
\G18|ALT_INV_SAIDA\(2) <= NOT \G18|SAIDA\(2);
\G18|ALT_INV_SAIDA\(1) <= NOT \G18|SAIDA\(1);
\G18|ALT_INV_SAIDA\(0) <= NOT \G18|SAIDA\(0);
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
\G18|ALT_INV_SAIDA~43_combout\ <= NOT \G18|SAIDA~43_combout\;
\G14|ALT_INV_SAIDA~38_combout\ <= NOT \G14|SAIDA~38_combout\;
\G14|ALT_INV_SAIDA~37_combout\ <= NOT \G14|SAIDA~37_combout\;
\G14|ALT_INV_SAIDA~36_combout\ <= NOT \G14|SAIDA~36_combout\;
\G14|ALT_INV_SAIDA~35_combout\ <= NOT \G14|SAIDA~35_combout\;
\G14|ALT_INV_SAIDA~34_combout\ <= NOT \G14|SAIDA~34_combout\;
\G14|ALT_INV_SAIDA~33_combout\ <= NOT \G14|SAIDA~33_combout\;
\G14|ALT_INV_SAIDA~32_combout\ <= NOT \G14|SAIDA~32_combout\;
\G14|ALT_INV_SAIDA~31_combout\ <= NOT \G14|SAIDA~31_combout\;
\G14|ALT_INV_SAIDA~30_combout\ <= NOT \G14|SAIDA~30_combout\;
\G14|ALT_INV_SAIDA~29_combout\ <= NOT \G14|SAIDA~29_combout\;
\G14|ALT_INV_SAIDA\(15) <= NOT \G14|SAIDA\(15);
\G14|ALT_INV_SAIDA\(14) <= NOT \G14|SAIDA\(14);
\ALT_INV_Clock_Sistema~input_o\ <= NOT \Clock_Sistema~input_o\;

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
	o => \SomadorToPc_outWaveform[0]~output_o\);

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
	o => \SomadorToPc_outWaveform[1]~output_o\);

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
	o => \SomadorToPc_outWaveform[2]~output_o\);

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
	o => \SomadorToPc_outWaveform[3]~output_o\);

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
	o => \SomadorToPc_outWaveform[4]~output_o\);

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
	o => \SomadorToPc_outWaveform[5]~output_o\);

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
	o => \SomadorToPc_outWaveform[6]~output_o\);

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
	o => \SomadorToPc_outWaveform[7]~output_o\);

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
	o => \SomadorToPc_outWaveform[8]~output_o\);

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
	o => \SomadorToPc_outWaveform[9]~output_o\);

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
	o => \SomadorToPc_outWaveform[10]~output_o\);

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
	o => \SomadorToPc_outWaveform[11]~output_o\);

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
	o => \SomadorToPc_outWaveform[12]~output_o\);

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
	o => \SomadorToPc_outWaveform[13]~output_o\);

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
	o => \SomadorToPc_outWaveform[14]~output_o\);

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
	o => \SomadorToPc_outWaveform[15]~output_o\);

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
	o => \SaidaPc_outWaveform[0]~output_o\);

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
	o => \SaidaPc_outWaveform[1]~output_o\);

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
	o => \SaidaPc_outWaveform[2]~output_o\);

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
	o => \SaidaPc_outWaveform[3]~output_o\);

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
	o => \SaidaPc_outWaveform[4]~output_o\);

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
	o => \SaidaPc_outWaveform[5]~output_o\);

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
	o => \SaidaPc_outWaveform[6]~output_o\);

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
	o => \SaidaPc_outWaveform[7]~output_o\);

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
	o => \SaidaPc_outWaveform[8]~output_o\);

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
	o => \SaidaPc_outWaveform[9]~output_o\);

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
	o => \SaidaPc_outWaveform[10]~output_o\);

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
	o => \SaidaPc_outWaveform[11]~output_o\);

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
	o => \SaidaPc_outWaveform[12]~output_o\);

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
	o => \SaidaPc_outWaveform[13]~output_o\);

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
	o => \SaidaPc_outWaveform[14]~output_o\);

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
	o => \SaidaPc_outWaveform[15]~output_o\);

\SaidaRegA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[0]~output_o\);

\SaidaRegA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[1]~output_o\);

\SaidaRegA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[2]~output_o\);

\SaidaRegA_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[3]~output_o\);

\SaidaRegA_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[4]~output_o\);

\SaidaRegA_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[5]~output_o\);

\SaidaRegA_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[6]~output_o\);

\SaidaRegA_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[7]~output_o\);

\SaidaRegA_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[8]~output_o\);

\SaidaRegA_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[9]~output_o\);

\SaidaRegA_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[10]~output_o\);

\SaidaRegA_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[11]~output_o\);

\SaidaRegA_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[12]~output_o\);

\SaidaRegA_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[13]~output_o\);

\SaidaRegA_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[14]~output_o\);

\SaidaRegA_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[15]~output_o\);

\SaidaRegB_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux31~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[0]~output_o\);

\SaidaRegB_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[1]~output_o\);

\SaidaRegB_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[2]~output_o\);

\SaidaRegB_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux28~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[3]~output_o\);

\SaidaRegB_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux27~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[4]~output_o\);

\SaidaRegB_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux26~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[5]~output_o\);

\SaidaRegB_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux25~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[6]~output_o\);

\SaidaRegB_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux24~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[7]~output_o\);

\SaidaRegB_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux23~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[8]~output_o\);

\SaidaRegB_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux22~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[9]~output_o\);

\SaidaRegB_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux21~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[10]~output_o\);

\SaidaRegB_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux20~8_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[11]~output_o\);

\SaidaRegB_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux19~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[12]~output_o\);

\SaidaRegB_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux18~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[13]~output_o\);

\SaidaRegB_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux17~2_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[14]~output_o\);

\SaidaRegB_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[15]~output_o\);

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
	o => \multiplexador_to_writeRegister_outWaveform[0]~output_o\);

\multiplexador_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|SAIDA[1]~1_combout\,
	devoe => ww_devoe,
	o => \multiplexador_to_writeRegister_outWaveform[1]~output_o\);

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
	o => \multiplexador_to_writeRegister_outWaveform[2]~output_o\);

\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[1]~1_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_multiplexador_outWaveform[0]~output_o\);

\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[1]~1_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_multiplexador_outWaveform[1]~output_o\);

\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~2_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_multiplexador_outWaveform[2]~output_o\);

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
	o => \Instruction_to_Control_outWaveform[0]~output_o\);

\Instruction_to_Control_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[1]~1_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[1]~output_o\);

\Instruction_to_Control_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[2]~2_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[2]~output_o\);

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
	o => \Instruction_to_Control_outWaveform[3]~output_o\);

\Instruction_to_register1_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_register1_outWaveform[0]~output_o\);

\Instruction_to_register1_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register1_outWaveform[1]~output_o\);

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
	o => \Instruction_to_register1_outWaveform[2]~output_o\);

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
	o => \Instruction_to_register2_outWaveform[0]~output_o\);

\Instruction_to_register2_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[1]~1_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_register2_outWaveform[1]~output_o\);

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
	o => \Instruction_to_register2_outWaveform[2]~output_o\);

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
	o => \Instruction_to_controlULA_outWaveform[0]~output_o\);

\Instruction_to_controlULA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA_outWaveform[1]~output_o\);

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
	o => \Instruction_to_controlULA_outWaveform[2]~output_o\);

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
	o => \Instruction_to_extensorDeSinal_outWaveform[0]~output_o\);

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
	o => \Instruction_to_extensorDeSinal_outWaveform[1]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[2]~1_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[2]~output_o\);

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
	o => \Instruction_to_extensorDeSinal_outWaveform[3]~output_o\);

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
	o => \Instruction_to_extensorDeSinal_outWaveform[4]~output_o\);

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
	o => \Instruction_to_extensorDeSinal_outWaveform[5]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[0]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[1]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[2]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[3]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[4]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[5]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[6]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[7]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[8]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[9]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[10]~output_o\);

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
	o => \Instruction_to_Jump_outWaveform[11]~output_o\);

\out_Saida_OperacaoDaULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|funct[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[0]~output_o\);

\out_Saida_OperacaoDaULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[1]~output_o\);

\out_Saida_OperacaoDaULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|funct[2]~1_combout\,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[2]~output_o\);

\out_Saida_OperacaoDaULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[3]~output_o\);

\out_Saida_OperacaoDaULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[4]~output_o\);

\out_Saida_OperacaoDaULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[5]~output_o\);

\out_Saida_OperacaoDaULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[6]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[0]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[1]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[2]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[3]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[4]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[5]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[6]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[7]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[8]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[9]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[10]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[11]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[12]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[13]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[14]~output_o\);

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
	o => \Data_to_writeRegister_outWaveform[15]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[0]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[1]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[2]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[3]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[4]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[5]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[6]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[7]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[8]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[9]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[10]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[11]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[12]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[13]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[14]~output_o\);

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
	o => \Saida_mult_to_mult_outWaveform[15]~output_o\);

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
	o => \Saida_to_PC_outWaveform[0]~output_o\);

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
	o => \Saida_to_PC_outWaveform[1]~output_o\);

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
	o => \Saida_to_PC_outWaveform[2]~output_o\);

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
	o => \Saida_to_PC_outWaveform[3]~output_o\);

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
	o => \Saida_to_PC_outWaveform[4]~output_o\);

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
	o => \Saida_to_PC_outWaveform[5]~output_o\);

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
	o => \Saida_to_PC_outWaveform[6]~output_o\);

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
	o => \Saida_to_PC_outWaveform[7]~output_o\);

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
	o => \Saida_to_PC_outWaveform[8]~output_o\);

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
	o => \Saida_to_PC_outWaveform[9]~output_o\);

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
	o => \Saida_to_PC_outWaveform[10]~output_o\);

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
	o => \Saida_to_PC_outWaveform[11]~output_o\);

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
	o => \Saida_to_PC_outWaveform[12]~output_o\);

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
	o => \Saida_to_PC_outWaveform[13]~output_o\);

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
	o => \Saida_to_PC_outWaveform[14]~output_o\);

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
	o => \Saida_to_PC_outWaveform[15]~output_o\);

\Saida_adress_to_RAM_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[0]~output_o\);

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
	o => \Saida_adress_to_RAM_outWaveform[1]~output_o\);

\Saida_adress_to_RAM_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[2]~output_o\);

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
	o => \Saida_adress_to_RAM_outWaveform[3]~output_o\);

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
	o => \Saida_adress_to_RAM_outWaveform[4]~output_o\);

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
	o => \Saida_adress_to_RAM_outWaveform[5]~output_o\);

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
	o => \Saida_adress_to_RAM_outWaveform[6]~output_o\);

\Saida_adress_to_RAM_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Saida_to_Dados[7]~10_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[7]~output_o\);

\Saida_adress_to_RAM_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Saida_to_Dados[8]~13_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[8]~output_o\);

\Saida_adress_to_RAM_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Saida_to_Dados[9]~16_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[9]~output_o\);

\Saida_adress_to_RAM_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Saida_to_Dados[10]~19_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[10]~output_o\);

\Saida_adress_to_RAM_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Saida_to_Dados[11]~22_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[11]~output_o\);

\Saida_adress_to_RAM_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Saida_to_Dados[12]~25_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[12]~output_o\);

\Saida_adress_to_RAM_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Saida_to_Dados[13]~28_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[13]~output_o\);

\Saida_adress_to_RAM_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Saida_to_Dados[14]~38_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[14]~output_o\);

\Saida_adress_to_RAM_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Saida_to_Dados[15]~41_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[15]~output_o\);

\Flag_regdest_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Flag_regdest_OUT~output_o\);

\Flag_origialu_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[0]~0_combout\,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[0]~output_o\);

\Flag_origialu_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[1]~1_combout\,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[1]~output_o\);

\Flag_origialu_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|op[2]~2_combout\,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[2]~output_o\);

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
	o => \Flag_origialu_OUT[3]~output_o\);

\Flag_memparareg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Flag_memparareg_OUT~output_o\);

\Flag_escrevereg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Flag_escrevereg_OUT~output_o\);

\Flag_lemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \Flag_lemem_OUT~output_o\);

\Flag_escrevemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Flag_escrevemem_OUT~output_o\);

\Flag_branch_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \Flag_branch_OUT~output_o\);

\Flag_aluSRC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \Flag_aluSRC_OUT~output_o\);

\Flag_jump_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \Flag_jump_OUT~output_o\);

\Clock_Sistema~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_Sistema,
	o => \Clock_Sistema~input_o\);

\G12|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(0) = ( \G12|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(0) ) ) ) # ( !\G12|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(0) ) ) ) # ( \G12|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(0),
	datae => \G12|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(0));

\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))

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
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

\G2|saida[1]\ : dffeas
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
	q => \G2|saida\(1));

\G12|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(1) = ( \G12|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(1) ) ) ) # ( !\G12|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(1) ) ) ) # ( \G12|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(1),
	datae => \G12|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(1));

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

\G2|saida[3]\ : dffeas
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
	q => \G2|saida\(3));

\G12|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(3) = ( \G12|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(3) ) ) ) # ( !\G12|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(3) ) ) ) # ( \G12|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(3),
	datae => \G12|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(3));

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

\G2|saida[4]\ : dffeas
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
	q => \G2|saida\(4));

\G12|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(4) = ( \G12|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(4) ) ) ) # ( !\G12|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(4) ) ) ) # ( \G12|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(4),
	datae => \G12|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(4));

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

\G2|saida[5]\ : dffeas
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
	q => \G2|saida\(5));

\G12|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(5) = ( \G12|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(5) ) ) ) # ( !\G12|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(5) ) ) ) # ( \G12|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(5),
	datae => \G12|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(5));

\G4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux7~0_combout\ = (\G1|pout\(0) & !\G1|pout\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	combout => \G4|Mux7~0_combout\);

\G13|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~5_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( (\G12|SAIDA\(5) & (((!\G4|Mux0~0_combout\) # (\G1|pout\(3))) # (\G1|pout\(2)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( \G12|SAIDA\(5) ) ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(5) ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(5),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G13|SAIDA~5_combout\);

\G13|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(5) = ( \G13|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~5_combout\ ) ) ) # ( !\G13|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~5_combout\ ) ) ) # ( \G13|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~5_combout\,
	datae => \G13|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(5));

\G1|pout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(5) = ( \G1|pout\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(5) ) ) ) # ( !\G1|pout\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(5) ) ) ) # ( \G1|pout\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(5),
	datae => \G1|ALT_INV_pout\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(5));

\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(6),
	cin => \G2|Add0~18\,
	sumout => \G2|Add0~21_sumout\,
	cout => \G2|Add0~22\);

\G2|saida[6]\ : dffeas
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
	q => \G2|saida\(6));

\G12|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(6) = ( \G12|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(6) ) ) ) # ( !\G12|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(6) ) ) ) # ( \G12|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(6),
	datae => \G12|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(6));

\G13|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~6_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( (\G12|SAIDA\(6) & (((!\G4|Mux0~0_combout\) # (\G1|pout\(3))) # (\G1|pout\(2)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( \G12|SAIDA\(6) ) ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(6) ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(6),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G13|SAIDA~6_combout\);

\G13|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(6) = ( \G13|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~6_combout\ ) ) ) # ( !\G13|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~6_combout\ ) ) ) # ( \G13|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~6_combout\,
	datae => \G13|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(6));

\G1|pout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(6) = ( \G1|pout\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(6) ) ) ) # ( !\G1|pout\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(6) ) ) ) # ( \G1|pout\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(6),
	datae => \G1|ALT_INV_pout\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(6));

\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(7),
	cin => \G2|Add0~22\,
	sumout => \G2|Add0~25_sumout\,
	cout => \G2|Add0~26\);

\G2|saida[7]\ : dffeas
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
	q => \G2|saida\(7));

\G12|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(7) = ( \G12|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(7) ) ) ) # ( !\G12|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(7) ) ) ) # ( \G12|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(7),
	datae => \G12|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(7));

\G13|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~7_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( (\G12|SAIDA\(7) & (((!\G4|Mux0~0_combout\) # (\G1|pout\(3))) # (\G1|pout\(2)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( \G12|SAIDA\(7) ) ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(7) ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(7),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G13|SAIDA~7_combout\);

\G13|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(7) = ( \G13|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~7_combout\ ) ) ) # ( !\G13|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~7_combout\ ) ) ) # ( \G13|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~7_combout\,
	datae => \G13|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(7));

\G1|pout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(7) = ( \G1|pout\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(7) ) ) ) # ( !\G1|pout\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(7) ) ) ) # ( \G1|pout\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(7),
	datae => \G1|ALT_INV_pout\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(7));

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

\G2|saida[8]\ : dffeas
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
	q => \G2|saida\(8));

\G12|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(8) = ( \G12|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(8) ) ) ) # ( !\G12|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(8) ) ) ) # ( \G12|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(8),
	datae => \G12|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(8));

\G13|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~8_combout\ = (!\G4|Mux7~1_combout\ & (\G12|SAIDA\(8) & ((!\G4|Mux8~0_combout\) # (!\G4|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G12|ALT_INV_SAIDA\(8),
	combout => \G13|SAIDA~8_combout\);

\G13|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(8) = ( \G13|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~8_combout\ ) ) ) # ( !\G13|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~8_combout\ ) ) ) # ( \G13|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~8_combout\,
	datae => \G13|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(8));

\G1|pout[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(8) = ( \G1|pout\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(8) ) ) ) # ( !\G1|pout\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(8) ) ) ) # ( \G1|pout\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(8),
	datae => \G1|ALT_INV_pout\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(8));

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

\G2|saida[9]\ : dffeas
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
	q => \G2|saida\(9));

\G12|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(9) = ( \G12|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(9) ) ) ) # ( !\G12|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(9) ) ) ) # ( \G12|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(9),
	datae => \G12|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(9));

\G13|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~9_combout\ = (!\G4|Mux7~1_combout\ & (\G12|SAIDA\(9) & ((!\G4|Mux8~0_combout\) # (!\G4|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G12|ALT_INV_SAIDA\(9),
	combout => \G13|SAIDA~9_combout\);

\G13|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(9) = ( \G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~9_combout\ ) ) ) # ( !\G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~9_combout\ ) ) ) # ( \G13|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~9_combout\,
	datae => \G13|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(9));

\G1|pout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(9) = ( \G1|pout\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(9) ) ) ) # ( !\G1|pout\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(9) ) ) ) # ( \G1|pout\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(9),
	datae => \G1|ALT_INV_pout\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(9));

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

\G2|saida[10]\ : dffeas
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
	q => \G2|saida\(10));

\G12|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(10) = ( \G12|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(10) ) ) ) # ( !\G12|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(10) ) ) ) # ( \G12|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(10),
	datae => \G12|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(10));

\G13|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~10_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( (\G12|SAIDA\(10) & (((!\G4|Mux0~0_combout\) # (\G1|pout\(3))) # (\G1|pout\(2)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( \G12|SAIDA\(10) ) ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(10) ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(10),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G13|SAIDA~10_combout\);

\G13|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(10) = ( \G13|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~10_combout\ ) ) ) # ( !\G13|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~10_combout\ ) ) ) # ( \G13|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~10_combout\,
	datae => \G13|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(10));

\G1|pout[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(10) = ( \G1|pout\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) ) ) # ( !\G1|pout\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) ) ) # ( \G1|pout\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(10),
	datae => \G1|ALT_INV_pout\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(10));

\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

\G2|saida[11]\ : dffeas
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
	q => \G2|saida\(11));

\G12|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(11) = ( \G12|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(11) ) ) ) # ( !\G12|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(11) ) ) ) # ( \G12|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(11),
	datae => \G12|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(11));

\G13|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~11_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( (\G12|SAIDA\(11) & (((!\G4|Mux0~0_combout\) # (\G1|pout\(3))) # (\G1|pout\(2)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( \G12|SAIDA\(11) ) ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(11) ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(11),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G13|SAIDA~11_combout\);

\G13|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(11) = ( \G13|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~11_combout\ ) ) ) # ( !\G13|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~11_combout\ ) ) ) # ( \G13|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~11_combout\,
	datae => \G13|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(11));

\G1|pout[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(11) = ( \G1|pout\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(11) ) ) ) # ( !\G1|pout\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(11) ) ) ) # ( \G1|pout\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(11),
	datae => \G1|ALT_INV_pout\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(11));

\G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~45_sumout\ = SUM(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))
-- \G2|Add0~46\ = CARRY(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(12),
	cin => \G2|Add0~42\,
	sumout => \G2|Add0~45_sumout\,
	cout => \G2|Add0~46\);

\G2|saida[12]\ : dffeas
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
	q => \G2|saida\(12));

\G12|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(12) = ( \G12|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(12) ) ) ) # ( !\G12|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(12) ) ) ) # ( \G12|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(12),
	datae => \G12|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(12));

\G13|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~12_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( (\G12|SAIDA\(12) & (((!\G4|Mux0~0_combout\) # (\G1|pout\(3))) # (\G1|pout\(2)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( \G12|SAIDA\(12) ) ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(12) ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(12),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G13|SAIDA~12_combout\);

\G13|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(12) = ( \G13|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~12_combout\ ) ) ) # ( !\G13|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~12_combout\ ) ) ) # ( \G13|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~12_combout\,
	datae => \G13|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(12));

\G1|pout[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(12) = ( \G1|pout\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(12) ) ) ) # ( !\G1|pout\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(12) ) ) ) # ( \G1|pout\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(12),
	datae => \G1|ALT_INV_pout\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(12));

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

\G2|saida[13]\ : dffeas
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
	q => \G2|saida\(13));

\G12|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(13) = ( \G12|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(13) ) ) ) # ( !\G12|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(13) ) ) ) # ( \G12|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(13),
	datae => \G12|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(13));

\G13|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~13_combout\ = (\G12|SAIDA\(13) & !\G4|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(13),
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA~13_combout\);

\G13|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(13) = ( \G13|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~13_combout\ ) ) ) # ( !\G13|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~13_combout\ ) ) ) # ( \G13|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~13_combout\,
	datae => \G13|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(13));

\G1|pout[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(13) = ( \G1|pout\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(13) ) ) ) # ( !\G1|pout\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(13) ) ) ) # ( \G1|pout\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(13),
	datae => \G1|ALT_INV_pout\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(13));

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

\G2|saida[14]\ : dffeas
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
	q => \G2|saida\(14));

\G12|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(14) = ( \G12|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(14) ) ) ) # ( !\G12|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(14) ) ) ) # ( \G12|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(14),
	datae => \G12|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(14));

\G3|resshift[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|resshift\(14));

\G13|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~14_combout\ = (!\G4|Mux7~1_combout\ & (\G12|SAIDA\(14))) # (\G4|Mux7~1_combout\ & ((\G3|resshift\(14))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(14),
	datab => \G3|ALT_INV_resshift\(14),
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA~14_combout\);

\G13|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(14) = ( \G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~14_combout\ ) ) ) # ( !\G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~14_combout\ ) ) ) # ( \G13|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~14_combout\,
	datae => \G13|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(14));

\G1|pout[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(14) = ( \G1|pout\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(14) ) ) ) # ( !\G1|pout\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(14) ) ) ) # ( \G1|pout\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(14),
	datae => \G1|ALT_INV_pout\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(14));

\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(15) ) + ( GND ) + ( \G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(15),
	cin => \G2|Add0~54\,
	sumout => \G2|Add0~57_sumout\);

\G2|saida[15]\ : dffeas
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
	q => \G2|saida\(15));

\G12|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(15) = ( \G12|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(15) ) ) ) # ( !\G12|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(15) ) ) ) # ( \G12|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(15),
	datae => \G12|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(15));

\G3|resshift[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|resshift\(15));

\G13|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~15_combout\ = (!\G4|Mux7~1_combout\ & (\G12|SAIDA\(15))) # (\G4|Mux7~1_combout\ & ((\G3|resshift\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(15),
	datab => \G3|ALT_INV_resshift\(15),
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA~15_combout\);

\G13|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(15) = ( \G13|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~15_combout\ ) ) ) # ( !\G13|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~15_combout\ ) ) ) # ( \G13|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~15_combout\,
	datae => \G13|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(15));

\G1|pout[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(15) = ( \G1|pout\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(15) ) ) ) # ( !\G1|pout\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(15) ) ) ) # ( \G1|pout\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(15),
	datae => \G1|ALT_INV_pout\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(15));

\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( !\G1|pout\(14) & ( !\G1|pout\(15) & ( (!\G1|pout\(10) & (!\G1|pout\(11) & (!\G1|pout\(12) & !\G1|pout\(13)))) ) ) )

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
	combout => \G4|Mux0~1_combout\);

\G13|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~4_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( (\G12|SAIDA\(4) & (((!\G4|Mux0~0_combout\) # (\G1|pout\(3))) # (\G1|pout\(2)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( \G12|SAIDA\(4) ) ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(4) ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(4),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G13|SAIDA~4_combout\);

\G13|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(4) = ( \G13|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~4_combout\ ) ) ) # ( !\G13|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~4_combout\ ) ) ) # ( \G13|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~4_combout\,
	datae => \G13|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(4));

\G1|pout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(4) = ( \G1|pout\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(4) ) ) ) # ( !\G1|pout\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(4) ) ) ) # ( \G1|pout\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(4),
	datae => \G1|ALT_INV_pout\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(4));

\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = ( !\G1|pout\(8) & ( !\G1|pout\(9) & ( (!\G1|pout\(4) & (!\G1|pout\(5) & (!\G1|pout\(6) & !\G1|pout\(7)))) ) ) )

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
	combout => \G4|Mux0~0_combout\);

\G13|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~3_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( (\G12|SAIDA\(3) & (((!\G4|Mux0~0_combout\) # (\G1|pout\(3))) # (\G1|pout\(2)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( \G12|SAIDA\(3) ) ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(3) ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux7~0_combout\ & ( \G12|SAIDA\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(3),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G13|SAIDA~3_combout\);

\G13|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(3) = ( \G13|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~3_combout\ ) ) ) # ( !\G13|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~3_combout\ ) ) ) # ( \G13|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~3_combout\,
	datae => \G13|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(3));

\G1|pout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(3) = ( \G1|pout\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(3) ) ) ) # ( !\G1|pout\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(3) ) ) ) # ( \G1|pout\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(3),
	datae => \G1|ALT_INV_pout\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(3));

\G4|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux7~1_combout\ = ( \G4|Mux7~0_combout\ & ( (!\G1|pout\(2) & (!\G1|pout\(3) & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	datab => \G1|ALT_INV_pout\(3),
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G4|ALT_INV_Mux0~1_combout\,
	datae => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G4|Mux7~1_combout\);

\G2|saida[2]\ : dffeas
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
	q => \G2|saida\(2));

\G12|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(2) = ( \G12|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(2) ) ) ) # ( !\G12|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(2) ) ) ) # ( \G12|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(2),
	datae => \G12|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(2));

\G13|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~2_combout\ = (!\G4|Mux7~1_combout\ & (\G12|SAIDA\(2) & ((!\G4|Mux8~0_combout\) # (!\G4|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G12|ALT_INV_SAIDA\(2),
	combout => \G13|SAIDA~2_combout\);

\G13|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(2) = ( \G13|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~2_combout\ ) ) ) # ( !\G13|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~2_combout\ ) ) ) # ( \G13|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~2_combout\,
	datae => \G13|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(2));

\G1|pout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(2) = ( \G1|pout\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(2) ) ) ) # ( !\G1|pout\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(2) ) ) ) # ( \G1|pout\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(2),
	datae => \G1|ALT_INV_pout\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(2));

\G4|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux9~0_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(3) & ((!\G1|pout\(0) & (\G1|pout\(1) & \G1|pout\(2))) # (\G1|pout\(0) & ((\G1|pout\(2)) # (\G1|pout\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux9~0_combout\);

\G13|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~1_combout\ = (\G12|SAIDA\(1) & (!\G4|Mux7~1_combout\ & ((!\G4|Mux8~0_combout\) # (!\G4|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000000010101000000000001010100000000000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(1),
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA~1_combout\);

\G13|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(1) = ( \G13|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~1_combout\ ) ) ) # ( !\G13|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~1_combout\ ) ) ) # ( \G13|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~1_combout\,
	datae => \G13|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(1));

\G1|pout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(1) = ( \G1|pout\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(1) ) ) ) # ( !\G1|pout\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(1) ) ) ) # ( \G1|pout\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(1),
	datae => \G1|ALT_INV_pout\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(1));

\G4|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux8~0_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(0) & (\G1|pout\(1) & (!\G1|pout\(2) & !\G1|pout\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux8~0_combout\);

\G5|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux9~1_combout\ = (!\G4|Mux7~1_combout\ & ((!\G4|Mux8~0_combout\) # (!\G4|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G5|Mux9~1_combout\);

\G13|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~0_combout\ = (\G12|SAIDA\(0) & \G5|Mux9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(0),
	datab => \G5|ALT_INV_Mux9~1_combout\,
	combout => \G13|SAIDA~0_combout\);

\G13|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(0) = ( \G13|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~0_combout\ ) ) ) # ( !\G13|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~0_combout\ ) ) ) # ( \G13|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~0_combout\,
	datae => \G13|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(0));

\G1|pout[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(0) = ( \G1|pout\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(0) ) ) ) # ( !\G1|pout\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(0) ) ) ) # ( \G1|pout\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(0),
	datae => \G1|ALT_INV_pout\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(0));

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

\G2|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(0));

\G4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Equal0~0_combout\ = (!\G4|Mux8~0_combout\ & (!\G4|Mux9~0_combout\ & !\G4|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|Equal0~0_combout\);

\G4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~2_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(0) & (!\G1|pout\(1) & (\G1|pout\(2) & !\G1|pout\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux0~2_combout\);

\G4|rd[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~0_combout\ = ( \G4|Mux0~2_combout\ & ( (\Clock_Sistema~input_o\ & (!\G4|Mux8~0_combout\ & (!\G4|Mux9~0_combout\ & !\G4|Mux7~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux0~2_combout\,
	combout => \G4|rd[0]~0_combout\);

\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(0) & (!\G1|pout\(1) & (!\G1|pout\(3) & \G4|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux0~3_combout\);

\G4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux6~0_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(2) & (!\G1|pout\(3) & ((!\G1|pout\(0)) # (!\G1|pout\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux6~0_combout\);

\G6|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[0]~0_combout\ = ( \G4|Mux0~3_combout\ & ( \G4|Mux6~0_combout\ & ( (\Clock_Sistema~input_o\ & (((!\G4|Mux9~0_combout\) # (!\G4|Mux7~1_combout\)) # (\G4|Mux8~0_combout\))) ) ) ) # ( !\G4|Mux0~3_combout\ & ( \G4|Mux6~0_combout\ & ( 
-- (\Clock_Sistema~input_o\ & ((!\G4|Mux9~0_combout\ $ (!\G4|Mux7~1_combout\)) # (\G4|Mux8~0_combout\))) ) ) ) # ( \G4|Mux0~3_combout\ & ( !\G4|Mux6~0_combout\ & ( (\Clock_Sistema~input_o\ & (!\G4|Mux8~0_combout\ & (!\G4|Mux9~0_combout\ & 
-- !\G4|Mux7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000010101010100010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G6|SAIDA[0]~0_combout\);

\G4|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux7~2_combout\ = (!\G1|pout\(2) & (!\G1|pout\(3) & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	datab => \G1|ALT_INV_pout\(3),
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux7~2_combout\);

\G6|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[1]~1_combout\ = ( \G4|Mux7~1_combout\ & ( \G4|Mux0~3_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux7~2_combout\ & ((!\G4|Mux9~0_combout\) # (\G4|Mux8~0_combout\)))) ) ) ) # ( !\G4|Mux7~1_combout\ & ( \G4|Mux0~3_combout\ & ( 
-- (\Clock_Sistema~input_o\ & (((!\G4|Mux8~0_combout\ & !\G4|Mux9~0_combout\)) # (\G4|Mux7~2_combout\))) ) ) ) # ( \G4|Mux7~1_combout\ & ( !\G4|Mux0~3_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux7~2_combout\ & ((!\G4|Mux9~0_combout\) # 
-- (\G4|Mux8~0_combout\)))) ) ) ) # ( !\G4|Mux7~1_combout\ & ( !\G4|Mux0~3_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux7~2_combout\ & ((\G4|Mux9~0_combout\) # (\G4|Mux8~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000100010000000101010001000100010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux7~2_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux9~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G6|SAIDA[1]~1_combout\);

\G5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux6~0_combout\ = (\Clock_Sistema~input_o\ & ((\G4|Mux7~1_combout\) # (\G4|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G5|Mux6~0_combout\);

\G7|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~0_combout\ = ( \G5|Mux6~0_combout\ ) # ( !\G5|Mux6~0_combout\ & ( (!\G4|rd[0]~0_combout\ $ (!\G6|SAIDA[0]~0_combout\)) # (\G6|SAIDA[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011111111111111111111111100111100111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datae => \G5|ALT_INV_Mux6~0_combout\,
	combout => \G7|Mux15~0_combout\);

\G4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux2~0_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(3) & ((!\G1|pout\(0) & (!\G1|pout\(1) $ (\G1|pout\(2)))) # (\G1|pout\(0) & (!\G1|pout\(1) & \G1|pout\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux2~0_combout\);

\G7|Reg[3][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][0]~5_combout\ = (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & !\G5|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G5|ALT_INV_Mux6~0_combout\,
	combout => \G7|Reg[3][0]~5_combout\);

\G7|Reg[3][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][0]~combout\ = ( \G7|Reg[3][0]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(0) ) ) ) # ( !\G7|Reg[3][0]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(0) ) ) ) # ( \G7|Reg[3][0]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(0),
	datae => \G7|ALT_INV_Reg[3][0]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][0]~combout\);

\G4|rs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs~0_combout\ = (!\G4|Mux8~0_combout\ & (\G4|Mux9~0_combout\ & \G4|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|rs~0_combout\);

\G7|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~0_combout\ = (!\G4|rs~0_combout\ & ((\G4|Mux6~0_combout\) # (\G4|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux7~2_combout\,
	datab => \G4|ALT_INV_rs~0_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G7|Mux20~0_combout\);

\G7|Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~2_combout\ = (\G4|Mux7~2_combout\ & (!\G4|rs~0_combout\ & \G4|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux7~2_combout\,
	datab => \G4|ALT_INV_rs~0_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G7|Mux20~2_combout\);

\G6|SAIDA[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[0]~2_combout\ = (!\G4|rs~0_combout\ & ((!\G4|Equal0~0_combout\ & ((\G4|Mux6~0_combout\))) # (\G4|Equal0~0_combout\ & (\G4|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_rs~0_combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G6|SAIDA[0]~2_combout\);

\G4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux3~0_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(3) & ((!\G1|pout\(2) & ((\G1|pout\(1)))) # (\G1|pout\(2) & (\G1|pout\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux3~0_combout\);

\G7|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Decoder0~0_combout\ = ( \G4|Mux0~3_combout\ & ( (!\G4|rs~0_combout\ & ((\G4|Equal0~0_combout\) # (\G4|Mux7~2_combout\))) ) ) # ( !\G4|Mux0~3_combout\ & ( (!\G4|rs~0_combout\ & ((!\G4|Equal0~0_combout\ & ((\G4|Mux7~2_combout\))) # 
-- (\G4|Equal0~0_combout\ & (\G4|Mux3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001111110000000000110101000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux3~0_combout\,
	datab => \G4|ALT_INV_Mux7~2_combout\,
	datac => \G4|ALT_INV_Equal0~0_combout\,
	datad => \G4|ALT_INV_rs~0_combout\,
	datae => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Decoder0~0_combout\);

\G7|Reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~4_combout\ = (!\G4|Mux8~0_combout\ & (!\G4|Mux7~1_combout\ & (!\G6|SAIDA[0]~2_combout\ & !\G7|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux7~1_combout\,
	datac => \G6|ALT_INV_SAIDA[0]~2_combout\,
	datad => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg~4_combout\);

\G7|Mux20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~4_combout\ = (\G4|Mux7~2_combout\ & (!\G4|rs~0_combout\ & !\G4|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux7~2_combout\,
	datab => \G4|ALT_INV_rs~0_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G7|Mux20~4_combout\);

\G7|Reg[2][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][0]~6_combout\ = (!\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & !\G5|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G5|ALT_INV_Mux6~0_combout\,
	combout => \G7|Reg[2][0]~6_combout\);

\G7|Reg[2][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][0]~combout\ = ( \G7|Reg[2][0]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(0) ) ) ) # ( !\G7|Reg[2][0]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(0) ) ) ) # ( \G7|Reg[2][0]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(0),
	datae => \G7|ALT_INV_Reg[2][0]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][0]~combout\);

\G7|Reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~3_combout\ = (!\G4|Mux8~0_combout\ & (!\G4|Mux7~1_combout\ & (\G6|SAIDA[0]~2_combout\ & !\G7|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux7~1_combout\,
	datac => \G6|ALT_INV_SAIDA[0]~2_combout\,
	datad => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg~3_combout\);

\G14|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~0_combout\ = ( \G7|Reg~3_combout\ & ( (!\G7|Mux20~4_combout\ & (\G18|SAIDA\(0))) # (\G7|Mux20~4_combout\ & (((\G7|Mux20~0_combout\ & \G7|Reg[2][0]~combout\)))) ) ) # ( !\G7|Reg~3_combout\ & ( (!\G7|Mux20~0_combout\ & (\G18|SAIDA\(0) & 
-- (!\G7|Mux20~4_combout\))) # (\G7|Mux20~0_combout\ & (((!\G7|Mux20~4_combout\) # (\G7|Reg[2][0]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110011010100000101001101110000011100110101000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \G7|ALT_INV_Mux20~0_combout\,
	datac => \G7|ALT_INV_Mux20~4_combout\,
	datad => \G7|ALT_INV_Reg[2][0]~combout\,
	datae => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~0_combout\);

\G14|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~1_combout\ = ( \G7|Reg~4_combout\ & ( \G14|SAIDA~0_combout\ & ( (\G7|Mux20~2_combout\ & ((!\G7|Mux20~0_combout\ & (!\G18|SAIDA\(0))) # (\G7|Mux20~0_combout\ & ((!\G7|Reg[3][0]~combout\))))) ) ) ) # ( !\G7|Reg~4_combout\ & ( 
-- \G14|SAIDA~0_combout\ & ( (!\G7|Reg[3][0]~combout\ & (\G7|Mux20~0_combout\ & \G7|Mux20~2_combout\)) ) ) ) # ( \G7|Reg~4_combout\ & ( !\G14|SAIDA~0_combout\ & ( (!\G7|Mux20~0_combout\ & (!\G18|SAIDA\(0))) # (\G7|Mux20~0_combout\ & 
-- (((!\G7|Reg[3][0]~combout\) # (!\G7|Mux20~2_combout\)))) ) ) ) # ( !\G7|Reg~4_combout\ & ( !\G14|SAIDA~0_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Reg[3][0]~combout\) # (!\G7|Mux20~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100101011111010110000000000000011000000000010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \G7|ALT_INV_Reg[3][0]~combout\,
	datac => \G7|ALT_INV_Mux20~0_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Reg~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~0_combout\,
	combout => \G14|SAIDA~1_combout\);

\G14|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~2_combout\ = ( \G14|SAIDA~1_combout\ & ( (!\G4|Mux7~1_combout\ & (\G4|Mux2~0_combout\ & (!\G4|Mux8~0_combout\ $ (!\G4|Mux9~0_combout\)))) ) ) # ( !\G14|SAIDA~1_combout\ & ( ((!\G4|Mux8~0_combout\ $ (\G4|Mux9~0_combout\)) # 
-- (\G4|Mux2~0_combout\)) # (\G4|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111111111111000000000110000010011111111111110000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G4|ALT_INV_Mux2~0_combout\,
	datae => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~2_combout\);

\G14|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(0) = ( \G14|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~2_combout\ ) ) ) # ( !\G14|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~2_combout\ ) ) ) # ( \G14|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~2_combout\,
	datae => \G14|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(0));

\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( \G14|SAIDA\(0) ) + ( !VCC ))
-- \G16|Add0~2\ = CARRY(( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( \G14|SAIDA\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(0),
	dataf => \G14|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

\G4|op[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|op[0]~0_combout\ = (\Clock_Sistema~input_o\ & \G4|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	combout => \G4|op[0]~0_combout\);

\G4|op[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|op[1]~1_combout\ = (\Clock_Sistema~input_o\ & \G4|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	combout => \G4|op[1]~1_combout\);

\G5|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux8~0_combout\ = (!\G4|op[1]~1_combout\) # (\G4|op[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~0_combout\,
	datab => \G4|ALT_INV_op[1]~1_combout\,
	combout => \G5|Mux8~0_combout\);

\G7|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~1_combout\ = (\Clock_Sistema~input_o\ & !\G7|Mux20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G7|Mux20~1_combout\);

\G7|Mux20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~3_combout\ = (\Clock_Sistema~input_o\ & \G7|Mux20~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	combout => \G7|Mux20~3_combout\);

\G7|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~0_combout\ = ( !\G5|Mux6~0_combout\ & ( (!\G18|SAIDA\(0) & (!\G6|SAIDA[0]~0_combout\ & !\G6|SAIDA[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datac => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datae => \G5|ALT_INV_Mux6~0_combout\,
	combout => \G7|Mux31~0_combout\);

\G7|Mux20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~5_combout\ = (\Clock_Sistema~input_o\ & !\G7|Mux20~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~4_combout\,
	combout => \G7|Mux20~5_combout\);

\G7|Reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~0_combout\ = (\G6|SAIDA[0]~0_combout\ & (!\G6|SAIDA[1]~1_combout\ & !\G5|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G5|ALT_INV_Mux6~0_combout\,
	combout => \G7|Reg~0_combout\);

\G7|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\) # (\G7|Reg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000000010000010100000001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Reg~0_combout\,
	datac => \G7|ALT_INV_Mux20~2_combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	combout => \G7|Mux29~0_combout\);

\G7|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~1_combout\ = ( \G7|Mux29~0_combout\ & ( (!\G7|Mux20~5_combout\ & (((!\G7|Mux20~1_combout\ & \G7|Reg[2][0]~combout\)))) # (\G7|Mux20~5_combout\ & (\G18|SAIDA\(0))) ) ) # ( !\G7|Mux29~0_combout\ & ( (!\G7|Mux20~1_combout\) # ((\G18|SAIDA\(0) & 
-- \G7|Mux20~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101000001011100010111001101110011010000010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][0]~combout\,
	datae => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G7|Mux31~1_combout\);

\G7|Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~2_combout\ = ( \G7|Mux31~1_combout\ & ( (!\G7|Mux20~3_combout\) # ((!\G7|Mux20~1_combout\ & (\G7|Reg[3][0]~combout\)) # (\G7|Mux20~1_combout\ & ((!\G7|Mux31~0_combout\)))) ) ) # ( !\G7|Mux31~1_combout\ & ( (!\G7|Mux20~1_combout\ & 
-- (\G7|Reg[3][0]~combout\ & (\G7|Mux20~3_combout\))) # (\G7|Mux20~1_combout\ & (((!\G7|Mux31~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000100111101111111010000110111000001001111011111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][0]~combout\,
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux20~3_combout\,
	datad => \G7|ALT_INV_Mux31~0_combout\,
	datae => \G7|ALT_INV_Mux31~1_combout\,
	combout => \G7|Mux31~2_combout\);

\G4|op[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|op[2]~2_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux7~0_combout\ & ( (!\G1|pout\(2) & (!\G1|pout\(3) & (\Clock_Sistema~input_o\ & \G4|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	datab => \G1|ALT_INV_pout\(3),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G4|op[2]~2_combout\);

\G5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux0~0_combout\ = (!\G4|op[0]~0_combout\ & (!\G4|op[1]~1_combout\ & !\G4|op[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~0_combout\,
	datab => \G4|ALT_INV_op[1]~1_combout\,
	datac => \G4|ALT_INV_op[2]~2_combout\,
	combout => \G5|Mux0~0_combout\);

\G16|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|process_0~0_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux7~1_combout\ & (!\G4|Mux8~0_combout\ $ (!\G4|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000101000000000000010100000000000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G16|process_0~0_combout\);

\G4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~0_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(0) & (\G1|pout\(1) & (\G1|pout\(2) & !\G1|pout\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux1~0_combout\);

\G4|funct[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[2]~1_combout\ = (\Clock_Sistema~input_o\ & (\G4|Equal0~0_combout\ & \G4|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G4|funct[2]~1_combout\);

\G16|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~1_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(0))) ) + ( VCC ) + ( !VCC ))
-- \G16|Add2~2\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(0))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add2~1_sumout\,
	cout => \G16|Add2~2\);

\G4|funct[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[0]~0_combout\ = (\Clock_Sistema~input_o\ & (\G4|Equal0~0_combout\ & \G4|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G4|funct[0]~0_combout\);

\G7|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~4_combout\ = (!\G6|SAIDA[1]~1_combout\ & (!\G4|rd[0]~0_combout\ $ (\G6|SAIDA[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G6|ALT_INV_SAIDA[1]~1_combout\,
	combout => \G7|Mux15~4_combout\);

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

\G16|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~1_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(0)) # (\G5|Mux6~0_combout\))) ) + ( !\G14|SAIDA\(0) ) + ( \G16|Add1~66_cout\ ))
-- \G16|Add1~2\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(0)) # (\G5|Mux6~0_combout\))) ) + ( !\G14|SAIDA\(0) ) + ( \G16|Add1~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(0),
	dataf => \G14|ALT_INV_SAIDA\(0),
	cin => \G16|Add1~66_cout\,
	sumout => \G16|Add1~1_sumout\,
	cout => \G16|Add1~2\);

\G16|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~4_combout\ = ( !\G4|rd[0]~0_combout\ & ( (((!\G4|funct[0]~0_combout\ & (\G16|Add0~1_sumout\)) # (\G4|funct[0]~0_combout\ & ((\G16|Add1~1_sumout\))))) ) ) # ( \G4|rd[0]~0_combout\ & ( (\G14|SAIDA\(0) & ((!\G4|funct[0]~0_combout\ & 
-- (((\G16|Add2~1_sumout\)))) # (\G4|funct[0]~0_combout\ & (\G7|Mux15~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000000110000010100001111111111110000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \G16|ALT_INV_Add2~1_sumout\,
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G4|ALT_INV_funct[0]~0_combout\,
	datae => \G4|ALT_INV_rd[0]~0_combout\,
	dataf => \G16|ALT_INV_Add1~1_sumout\,
	datag => \G16|ALT_INV_Add0~1_sumout\,
	combout => \G16|Mux15~4_combout\);

\G16|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~0_combout\ = (!\G4|funct[2]~1_combout\ & \G16|Mux15~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_funct[2]~1_combout\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	combout => \G16|Mux15~0_combout\);

\G16|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~1_combout\ = (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & ((\G16|Mux15~0_combout\)))) # (\G16|process_0~0_combout\ & (((\G16|Add0~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001100000011010100110000001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Add0~1_sumout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G16|Mux15~1_combout\);

\G16|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|process_0~1_combout\ = (!\G4|Mux7~1_combout\ & (!\G4|Mux8~0_combout\ $ (!\G4|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G16|process_0~1_combout\);

\G7|Reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~1_combout\ = ( \G18|SAIDA\(1) & ( (!\G6|SAIDA[0]~0_combout\ & (!\G6|SAIDA[1]~1_combout\ & !\G5|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G5|ALT_INV_Mux6~0_combout\,
	datae => \G18|ALT_INV_SAIDA\(1),
	combout => \G7|Reg~1_combout\);

\G7|Reg[3][1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][1]~combout\ = ( \G7|Reg[3][1]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(1) ) ) ) # ( !\G7|Reg[3][1]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(1) ) ) ) # ( \G7|Reg[3][1]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(1),
	datae => \G7|ALT_INV_Reg[3][1]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][1]~combout\);

\G7|Reg[2][1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][1]~combout\ = ( \G7|Reg[2][1]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(1) ) ) ) # ( !\G7|Reg[2][1]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(1) ) ) ) # ( \G7|Reg[2][1]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(1),
	datae => \G7|ALT_INV_Reg[2][1]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][1]~combout\);

\G7|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~0_combout\ = ( \G7|Reg~2_combout\ & ( \G7|Reg[2][1]~combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux7~2_combout\) # ((!\G4|Mux6~0_combout\) # (\G4|rs~0_combout\)))) ) ) ) # ( !\G7|Reg~2_combout\ & ( \G7|Reg[2][1]~combout\ & ( 
-- (\Clock_Sistema~input_o\ & (\G4|Mux7~2_combout\ & (!\G4|rs~0_combout\ & !\G4|Mux6~0_combout\))) ) ) ) # ( \G7|Reg~2_combout\ & ( !\G7|Reg[2][1]~combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux7~2_combout\) # (\G4|rs~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010100010100010000000000000101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux7~2_combout\,
	datac => \G4|ALT_INV_rs~0_combout\,
	datad => \G4|ALT_INV_Mux6~0_combout\,
	datae => \G7|ALT_INV_Reg~2_combout\,
	dataf => \G7|ALT_INV_Reg[2][1]~combout\,
	combout => \G7|Mux30~0_combout\);

\G7|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~1_combout\ = ( \G7|Mux30~0_combout\ & ( (!\G7|Mux20~1_combout\) # (\G7|Reg~1_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (!\G7|Mux20~1_combout\ & (((\G7|Mux20~3_combout\ & \G7|Reg[3][1]~combout\)))) # (\G7|Mux20~1_combout\ & 
-- (\G7|Reg~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111011101110100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~1_combout\,
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux20~3_combout\,
	datad => \G7|ALT_INV_Reg[3][1]~combout\,
	datae => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G7|Mux30~1_combout\);

\G7|Reg[3][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][2]~combout\ = ( \G7|Reg[3][2]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(2) ) ) ) # ( !\G7|Reg[3][2]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(2) ) ) ) # ( \G7|Reg[3][2]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(2),
	datae => \G7|ALT_INV_Reg[3][2]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][2]~combout\);

\G7|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~1_combout\ = ( !\G18|SAIDA\(2) & ( (!\G6|SAIDA[0]~0_combout\ & (!\G6|SAIDA[1]~1_combout\ & !\G5|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G5|ALT_INV_Mux6~0_combout\,
	datae => \G18|ALT_INV_SAIDA\(2),
	combout => \G7|Mux29~1_combout\);

\G7|Reg[2][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][2]~combout\ = ( \G7|Reg[2][2]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(2) ) ) ) # ( !\G7|Reg[2][2]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(2) ) ) ) # ( \G7|Reg[2][2]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(2),
	datae => \G7|ALT_INV_Reg[2][2]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][2]~combout\);

\G7|Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~2_combout\ = ( \G7|Reg[2][2]~combout\ & ( (!\G7|Mux20~5_combout\ & (((!\G7|Mux20~1_combout\)))) # (\G7|Mux20~5_combout\ & (((!\G7|Mux20~1_combout\ & !\G7|Mux29~0_combout\)) # (\G18|SAIDA\(2)))) ) ) # ( !\G7|Reg[2][2]~combout\ & ( 
-- (!\G18|SAIDA\(2) & (!\G7|Mux20~1_combout\ & ((!\G7|Mux29~0_combout\)))) # (\G18|SAIDA\(2) & (((!\G7|Mux20~1_combout\ & !\G7|Mux29~0_combout\)) # (\G7|Mux20~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110100000101110011011100010111001101000001011100110111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(2),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Mux29~0_combout\,
	datae => \G7|ALT_INV_Reg[2][2]~combout\,
	combout => \G7|Mux29~2_combout\);

\G7|Mux29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~3_combout\ = ( \G7|Mux29~2_combout\ & ( (!\G7|Mux20~3_combout\) # ((!\G7|Mux20~1_combout\ & (\G7|Reg[3][2]~combout\)) # (\G7|Mux20~1_combout\ & ((!\G7|Mux29~1_combout\)))) ) ) # ( !\G7|Mux29~2_combout\ & ( (!\G7|Mux20~1_combout\ & 
-- (\G7|Mux20~3_combout\ & (\G7|Reg[3][2]~combout\))) # (\G7|Mux20~1_combout\ & (((!\G7|Mux29~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000010110111111100111001010111000000101101111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~1_combout\,
	datab => \G7|ALT_INV_Mux20~3_combout\,
	datac => \G7|ALT_INV_Reg[3][2]~combout\,
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G7|ALT_INV_Mux29~2_combout\,
	combout => \G7|Mux29~3_combout\);

\G7|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~0_combout\ = ( \G7|Mux20~1_combout\ & ( (!\G6|SAIDA[0]~0_combout\ & (!\G6|SAIDA[1]~1_combout\ & !\G5|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G5|ALT_INV_Mux6~0_combout\,
	datae => \G7|ALT_INV_Mux20~1_combout\,
	combout => \G7|Mux16~0_combout\);

\G7|Reg[3][3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][3]~combout\ = ( \G7|Reg[3][3]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(3) ) ) ) # ( !\G7|Reg[3][3]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(3) ) ) ) # ( \G7|Reg[3][3]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(3),
	datae => \G7|ALT_INV_Reg[3][3]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][3]~combout\);

\G7|Reg[2][3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][3]~combout\ = ( \G7|Reg[2][3]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(3) ) ) ) # ( !\G7|Reg[2][3]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(3) ) ) ) # ( \G7|Reg[2][3]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(3),
	datae => \G7|ALT_INV_Reg[2][3]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][3]~combout\);

\G7|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][3]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(3),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][3]~combout\,
	combout => \G7|Mux28~0_combout\);

\G7|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux28~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][3]~combout\,
	datad => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux28~1_combout\);

\G7|Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~2_combout\ = (!\G18|SAIDA\(3) & (!\G7|Mux20~1_combout\ & ((\G7|Mux28~1_combout\)))) # (\G18|SAIDA\(3) & (((!\G7|Mux20~1_combout\ & \G7|Mux28~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(3),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G7|Mux28~2_combout\);

\G7|Reg[3][4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][4]~combout\ = ( \G7|Reg[3][4]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(4) ) ) ) # ( !\G7|Reg[3][4]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(4) ) ) ) # ( \G7|Reg[3][4]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(4),
	datae => \G7|ALT_INV_Reg[3][4]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][4]~combout\);

\G7|Reg[2][4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][4]~combout\ = ( \G7|Reg[2][4]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(4) ) ) ) # ( !\G7|Reg[2][4]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(4) ) ) ) # ( \G7|Reg[2][4]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(4),
	datae => \G7|ALT_INV_Reg[2][4]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][4]~combout\);

\G7|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][4]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(4),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][4]~combout\,
	combout => \G7|Mux27~0_combout\);

\G7|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux27~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][4]~combout\,
	datad => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux27~1_combout\);

\G7|Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~2_combout\ = (!\G18|SAIDA\(4) & (!\G7|Mux20~1_combout\ & ((\G7|Mux27~1_combout\)))) # (\G18|SAIDA\(4) & (((!\G7|Mux20~1_combout\ & \G7|Mux27~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(4),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux27~1_combout\,
	combout => \G7|Mux27~2_combout\);

\G7|Reg[3][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][5]~combout\ = ( \G7|Reg[3][5]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(5) ) ) ) # ( !\G7|Reg[3][5]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(5) ) ) ) # ( \G7|Reg[3][5]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(5),
	datae => \G7|ALT_INV_Reg[3][5]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][5]~combout\);

\G7|Reg[2][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][5]~combout\ = ( \G7|Reg[2][5]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(5) ) ) ) # ( !\G7|Reg[2][5]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(5) ) ) ) # ( \G7|Reg[2][5]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(5),
	datae => \G7|ALT_INV_Reg[2][5]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][5]~combout\);

\G7|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][5]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(5),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][5]~combout\,
	combout => \G7|Mux26~0_combout\);

\G7|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux26~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][5]~combout\,
	datad => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G7|Mux26~1_combout\);

\G7|Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~2_combout\ = (!\G18|SAIDA\(5) & (!\G7|Mux20~1_combout\ & ((\G7|Mux26~1_combout\)))) # (\G18|SAIDA\(5) & (((!\G7|Mux20~1_combout\ & \G7|Mux26~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(5),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux26~1_combout\,
	combout => \G7|Mux26~2_combout\);

\G7|Reg[3][6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][6]~combout\ = ( \G7|Reg[3][6]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(6) ) ) ) # ( !\G7|Reg[3][6]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(6) ) ) ) # ( \G7|Reg[3][6]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(6),
	datae => \G7|ALT_INV_Reg[3][6]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][6]~combout\);

\G7|Reg[2][6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][6]~combout\ = ( \G7|Reg[2][6]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(6) ) ) ) # ( !\G7|Reg[2][6]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(6) ) ) ) # ( \G7|Reg[2][6]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(6),
	datae => \G7|ALT_INV_Reg[2][6]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][6]~combout\);

\G7|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][6]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(6),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][6]~combout\,
	combout => \G7|Mux25~0_combout\);

\G7|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux25~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][6]~combout\,
	datad => \G7|ALT_INV_Mux25~0_combout\,
	combout => \G7|Mux25~1_combout\);

\G7|Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~2_combout\ = (!\G18|SAIDA\(6) & (!\G7|Mux20~1_combout\ & ((\G7|Mux25~1_combout\)))) # (\G18|SAIDA\(6) & (((!\G7|Mux20~1_combout\ & \G7|Mux25~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(6),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux25~1_combout\,
	combout => \G7|Mux25~2_combout\);

\G14|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~4_combout\ = (!\G7|Mux20~0_combout\ & \G7|Reg~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Reg~4_combout\,
	combout => \G14|SAIDA~4_combout\);

\G7|Reg[3][7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][7]~combout\ = ( \G7|Reg[3][7]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(7) ) ) ) # ( !\G7|Reg[3][7]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(7) ) ) ) # ( \G7|Reg[3][7]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(7),
	datae => \G7|ALT_INV_Reg[3][7]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][7]~combout\);

\G7|Reg[2][7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][7]~combout\ = ( \G7|Reg[2][7]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(7) ) ) ) # ( !\G7|Reg[2][7]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(7) ) ) ) # ( \G7|Reg[2][7]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(7),
	datae => \G7|ALT_INV_Reg[2][7]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][7]~combout\);

\G14|SAIDA~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~32_combout\ = ( \G7|Reg[2][7]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][7]~combout\))) ) ) ) # ( !\G7|Reg[2][7]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][7]~combout\)))) ) ) ) # ( \G7|Reg[2][7]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][7]~combout\)))) ) ) ) # ( !\G7|Reg[2][7]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][7]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][7]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][7]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~32_combout\);

\G14|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~13_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~32_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~32_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(7)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~32_combout\ & ( (\G18|SAIDA\(7) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~32_combout\ & ( (\G18|SAIDA\(7) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(7),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~32_combout\,
	combout => \G14|SAIDA~13_combout\);

\G14|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(7) = ( \G14|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~13_combout\ ) ) ) # ( !\G14|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~13_combout\ ) ) ) # ( \G14|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~13_combout\,
	datae => \G14|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(7));

\G4|rd[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~1_combout\ = (\G4|Equal0~0_combout\ & \G4|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	combout => \G4|rd[0]~1_combout\);

\G7|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~2_combout\ = ( \G4|rd[0]~1_combout\ & ( (!\G4|Mux8~0_combout\ & (!\G4|Mux7~1_combout\ & (\G6|SAIDA[0]~2_combout\ & !\G7|Decoder0~0_combout\))) ) ) # ( !\G4|rd[0]~1_combout\ & ( (!\G4|Mux8~0_combout\ & (!\G4|Mux7~1_combout\ & 
-- (!\G6|SAIDA[0]~2_combout\ & !\G7|Decoder0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000010000000000010000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux7~1_combout\,
	datac => \G6|ALT_INV_SAIDA[0]~2_combout\,
	datad => \G7|ALT_INV_Decoder0~0_combout\,
	datae => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G7|Mux15~2_combout\);

\G16|Splitter~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~13_combout\ = (\G18|SAIDA\(7) & (\G14|SAIDA\(7) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(7),
	datab => \G14|ALT_INV_SAIDA\(7),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~13_combout\);

\G14|SAIDA~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~30_combout\ = ( \G7|Reg[2][5]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][5]~combout\))) ) ) ) # ( !\G7|Reg[2][5]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][5]~combout\)))) ) ) ) # ( \G7|Reg[2][5]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][5]~combout\)))) ) ) ) # ( !\G7|Reg[2][5]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][5]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][5]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][5]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~30_combout\);

\G14|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~11_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~30_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~30_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(5)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~30_combout\ & ( (\G18|SAIDA\(5) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~30_combout\ & ( (\G18|SAIDA\(5) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(5),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~30_combout\,
	combout => \G14|SAIDA~11_combout\);

\G14|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(5) = ( \G14|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~11_combout\ ) ) ) # ( !\G14|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~11_combout\ ) ) ) # ( \G14|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~11_combout\,
	datae => \G14|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(5));

\G14|SAIDA~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~31_combout\ = ( \G7|Reg[2][6]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][6]~combout\))) ) ) ) # ( !\G7|Reg[2][6]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][6]~combout\)))) ) ) ) # ( \G7|Reg[2][6]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][6]~combout\)))) ) ) ) # ( !\G7|Reg[2][6]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][6]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][6]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][6]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~31_combout\);

\G14|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~12_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~31_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~31_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(6)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~31_combout\ & ( (\G18|SAIDA\(6) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~31_combout\ & ( (\G18|SAIDA\(6) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(6),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~31_combout\,
	combout => \G14|SAIDA~12_combout\);

\G14|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(6) = ( \G14|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~12_combout\ ) ) ) # ( !\G14|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~12_combout\ ) ) ) # ( \G14|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~12_combout\,
	datae => \G14|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(6));

\G14|SAIDA~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~29_combout\ = ( \G7|Reg[2][4]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][4]~combout\))) ) ) ) # ( !\G7|Reg[2][4]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][4]~combout\)))) ) ) ) # ( \G7|Reg[2][4]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][4]~combout\)))) ) ) ) # ( !\G7|Reg[2][4]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][4]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][4]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][4]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~29_combout\);

\G14|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~10_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~29_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~29_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(4)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~29_combout\ & ( (\G18|SAIDA\(4) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~29_combout\ & ( (\G18|SAIDA\(4) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(4),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~29_combout\,
	combout => \G14|SAIDA~10_combout\);

\G14|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(4) = ( \G14|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~10_combout\ ) ) ) # ( !\G14|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~10_combout\ ) ) ) # ( \G14|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~10_combout\,
	datae => \G14|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(4));

\G14|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~3_combout\ = (!\G4|Mux7~1_combout\ & (\G4|Mux0~2_combout\ & (!\G4|Mux8~0_combout\ $ (!\G4|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000000000000110000000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	combout => \G14|SAIDA~3_combout\);

\G14|SAIDA~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~27_combout\ = ( \G7|Reg[2][3]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][3]~combout\))) ) ) ) # ( !\G7|Reg[2][3]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][3]~combout\)))) ) ) ) # ( \G7|Reg[2][3]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][3]~combout\)))) ) ) ) # ( !\G7|Reg[2][3]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][3]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][3]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][3]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~27_combout\);

\G14|SAIDA~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~28_combout\ = (!\G16|process_0~1_combout\ & ((\G14|SAIDA~27_combout\) # (\G14|SAIDA~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_process_0~1_combout\,
	datab => \G14|ALT_INV_SAIDA~4_combout\,
	datac => \G14|ALT_INV_SAIDA~27_combout\,
	combout => \G14|SAIDA~28_combout\);

\G14|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~9_combout\ = ( \G14|SAIDA~27_combout\ & ( \G14|SAIDA~28_combout\ & ( (((\G7|Mux20~4_combout\) # (\G7|Mux20~2_combout\)) # (\G14|SAIDA~3_combout\)) # (\G18|SAIDA\(3)) ) ) ) # ( !\G14|SAIDA~27_combout\ & ( \G14|SAIDA~28_combout\ & ( 
-- (\G14|SAIDA~3_combout\) # (\G18|SAIDA\(3)) ) ) ) # ( \G14|SAIDA~27_combout\ & ( !\G14|SAIDA~28_combout\ & ( \G14|SAIDA~3_combout\ ) ) ) # ( !\G14|SAIDA~27_combout\ & ( !\G14|SAIDA~28_combout\ & ( \G14|SAIDA~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101110111011101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA~3_combout\,
	datac => \G7|ALT_INV_Mux20~2_combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G14|ALT_INV_SAIDA~27_combout\,
	dataf => \G14|ALT_INV_SAIDA~28_combout\,
	combout => \G14|SAIDA~9_combout\);

\G14|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(3) = ( \G14|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~9_combout\ ) ) ) # ( !\G14|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~9_combout\ ) ) ) # ( \G14|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~9_combout\,
	datae => \G14|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(3));

\G14|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~6_combout\ = ( \G7|Reg~3_combout\ & ( (!\G7|Mux20~4_combout\ & (\G18|SAIDA\(2))) # (\G7|Mux20~4_combout\ & (((\G7|Mux20~0_combout\ & \G7|Reg[2][2]~combout\)))) ) ) # ( !\G7|Reg~3_combout\ & ( (!\G7|Mux20~0_combout\ & (\G18|SAIDA\(2) & 
-- (!\G7|Mux20~4_combout\))) # (\G7|Mux20~0_combout\ & (((!\G7|Mux20~4_combout\) # (\G7|Reg[2][2]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110011010100000101001101110000011100110101000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(2),
	datab => \G7|ALT_INV_Mux20~0_combout\,
	datac => \G7|ALT_INV_Mux20~4_combout\,
	datad => \G7|ALT_INV_Reg[2][2]~combout\,
	datae => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~6_combout\);

\G14|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~7_combout\ = ( \G7|Reg~4_combout\ & ( \G14|SAIDA~6_combout\ & ( (\G7|Mux20~2_combout\ & ((!\G7|Mux20~0_combout\ & (!\G18|SAIDA\(2))) # (\G7|Mux20~0_combout\ & ((!\G7|Reg[3][2]~combout\))))) ) ) ) # ( !\G7|Reg~4_combout\ & ( 
-- \G14|SAIDA~6_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & !\G7|Reg[3][2]~combout\)) ) ) ) # ( \G7|Reg~4_combout\ & ( !\G14|SAIDA~6_combout\ & ( (!\G7|Mux20~0_combout\ & (!\G18|SAIDA\(2))) # (\G7|Mux20~0_combout\ & (((!\G7|Mux20~2_combout\) 
-- # (!\G7|Reg[3][2]~combout\)))) ) ) ) # ( !\G7|Reg~4_combout\ & ( !\G14|SAIDA~6_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (!\G7|Reg[3][2]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000101110111011100000000011000000000000101100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(2),
	datab => \G7|ALT_INV_Mux20~0_combout\,
	datac => \G7|ALT_INV_Mux20~2_combout\,
	datad => \G7|ALT_INV_Reg[3][2]~combout\,
	datae => \G7|ALT_INV_Reg~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~6_combout\,
	combout => \G14|SAIDA~7_combout\);

\G14|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~8_combout\ = ( \G14|SAIDA~7_combout\ & ( (!\G4|Mux7~1_combout\ & (\G4|Mux1~0_combout\ & (!\G4|Mux8~0_combout\ $ (!\G4|Mux9~0_combout\)))) ) ) # ( !\G14|SAIDA~7_combout\ & ( ((!\G4|Mux8~0_combout\ $ (\G4|Mux9~0_combout\)) # 
-- (\G4|Mux1~0_combout\)) # (\G4|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111111111111000000000110000010011111111111110000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G4|ALT_INV_Mux1~0_combout\,
	datae => \G14|ALT_INV_SAIDA~7_combout\,
	combout => \G14|SAIDA~8_combout\);

\G14|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(2) = ( \G14|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~8_combout\ ) ) ) # ( !\G14|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~8_combout\ ) ) ) # ( \G14|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~8_combout\,
	datae => \G14|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(2));

\G14|SAIDA~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~26_combout\ = ( \G7|Reg[2][1]~combout\ & ( \G7|Reg~3_combout\ & ( (!\G7|Mux20~2_combout\ & (!\G18|SAIDA\(1) & ((!\G7|Mux20~4_combout\)))) # (\G7|Mux20~2_combout\ & (((!\G7|Reg[3][1]~combout\)))) ) ) ) # ( !\G7|Reg[2][1]~combout\ & ( 
-- \G7|Reg~3_combout\ & ( (!\G7|Mux20~2_combout\ & ((!\G18|SAIDA\(1)) # ((\G7|Mux20~4_combout\)))) # (\G7|Mux20~2_combout\ & (((!\G7|Reg[3][1]~combout\)))) ) ) ) # ( \G7|Reg[2][1]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~2_combout\ & 
-- !\G7|Reg[3][1]~combout\) ) ) ) # ( !\G7|Reg[2][1]~combout\ & ( !\G7|Reg~3_combout\ & ( (!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (!\G7|Reg[3][1]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100000011000010111000111111001011100000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(1),
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][1]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][1]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~26_combout\);

\G14|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~5_combout\ = ( \G7|Mux20~0_combout\ & ( \G14|SAIDA~26_combout\ & ( ((\G18|SAIDA\(1) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\))) # (\G14|SAIDA~3_combout\) ) ) ) # ( !\G7|Mux20~0_combout\ & ( \G14|SAIDA~26_combout\ & ( 
-- ((\G18|SAIDA\(1) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\))) # (\G14|SAIDA~3_combout\) ) ) ) # ( \G7|Mux20~0_combout\ & ( !\G14|SAIDA~26_combout\ & ( (!\G16|process_0~1_combout\) # (\G14|SAIDA~3_combout\) ) ) ) # ( !\G7|Mux20~0_combout\ & ( 
-- !\G14|SAIDA~26_combout\ & ( ((\G18|SAIDA\(1) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\))) # (\G14|SAIDA~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111110011111100111100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(1),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~3_combout\,
	datad => \G14|ALT_INV_SAIDA~4_combout\,
	datae => \G7|ALT_INV_Mux20~0_combout\,
	dataf => \G14|ALT_INV_SAIDA~26_combout\,
	combout => \G14|SAIDA~5_combout\);

\G14|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(1) = ( \G14|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~5_combout\ ) ) ) # ( !\G14|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~5_combout\ ) ) ) # ( \G14|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~5_combout\,
	datae => \G14|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(1));

\G16|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~5_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( GND ) + ( \G16|Add2~2\ ))
-- \G16|Add2~6\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( GND ) + ( \G16|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add2~2\,
	sumout => \G16|Add2~5_sumout\,
	cout => \G16|Add2~6\);

\G16|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~9_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(2)))) ) + ( GND ) + ( \G16|Add2~6\ ))
-- \G16|Add2~10\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(2)))) ) + ( GND ) + ( \G16|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add2~6\,
	sumout => \G16|Add2~9_sumout\,
	cout => \G16|Add2~10\);

\G16|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~13_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~10\ ))
-- \G16|Add2~14\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add2~10\,
	sumout => \G16|Add2~13_sumout\,
	cout => \G16|Add2~14\);

\G16|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~17_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~14\ ))
-- \G16|Add2~18\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add2~14\,
	sumout => \G16|Add2~17_sumout\,
	cout => \G16|Add2~18\);

\G16|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~21_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~18\ ))
-- \G16|Add2~22\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add2~18\,
	sumout => \G16|Add2~21_sumout\,
	cout => \G16|Add2~22\);

\G16|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~25_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~22\ ))
-- \G16|Add2~26\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add2~22\,
	sumout => \G16|Add2~25_sumout\,
	cout => \G16|Add2~26\);

\G16|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~29_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(7)) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add2~26\,
	sumout => \G16|Add2~29_sumout\);

\G16|Prod~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~27_combout\ = (\G14|SAIDA\(0) & \G16|Add2~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G16|ALT_INV_Add2~29_sumout\,
	combout => \G16|Prod~27_combout\);

\G16|Prod~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~20_combout\ = (\G14|SAIDA\(0) & \G16|Add2~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G16|ALT_INV_Add2~25_sumout\,
	combout => \G16|Prod~20_combout\);

\G16|Prod~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~14_combout\ = (\G14|SAIDA\(0) & \G16|Add2~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G16|ALT_INV_Add2~21_sumout\,
	combout => \G16|Prod~14_combout\);

\G16|Prod~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~9_combout\ = (\G14|SAIDA\(0) & \G16|Add2~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G16|ALT_INV_Add2~17_sumout\,
	combout => \G16|Prod~9_combout\);

\G7|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux14~0_combout\ = ( \G5|Mux6~0_combout\ & ( \G18|SAIDA\(1) & ( \G4|rd[0]~0_combout\ ) ) ) # ( !\G5|Mux6~0_combout\ & ( \G18|SAIDA\(1) & ( ((!\G6|SAIDA[0]~0_combout\ & !\G6|SAIDA[1]~1_combout\)) # (\G4|rd[0]~0_combout\) ) ) ) # ( \G5|Mux6~0_combout\ & 
-- ( !\G18|SAIDA\(1) & ( \G4|rd[0]~0_combout\ ) ) ) # ( !\G5|Mux6~0_combout\ & ( !\G18|SAIDA\(1) & ( (\G4|rd[0]~0_combout\ & ((!\G6|SAIDA[0]~0_combout\) # (\G6|SAIDA[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100110011001111110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datae => \G5|ALT_INV_Mux6~0_combout\,
	dataf => \G18|ALT_INV_SAIDA\(1),
	combout => \G7|Mux14~0_combout\);

\G16|Prod~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~1_combout\ = (\G14|SAIDA\(0) & \G16|Add2~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G16|ALT_INV_Add2~5_sumout\,
	combout => \G16|Prod~1_combout\);

\G16|Add4~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add4~34_cout\);

\G16|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~1_sumout\ = SUM(( \G16|Prod~1_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add4~34_cout\ ))
-- \G16|Add4~2\ = CARRY(( \G16|Prod~1_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add4~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~1_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => \G16|Add4~34_cout\,
	sumout => \G16|Add4~1_sumout\,
	cout => \G16|Add4~2\);

\G16|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~5_sumout\ = SUM(( (\G14|SAIDA\(0) & \G16|Add2~9_sumout\) ) + ( (!\Clock_Sistema~input_o\) # (!\G7|Mux14~0_combout\) ) + ( \G16|Add4~2\ ))
-- \G16|Add4~6\ = CARRY(( (\G14|SAIDA\(0) & \G16|Add2~9_sumout\) ) + ( (!\Clock_Sistema~input_o\) # (!\G7|Mux14~0_combout\) ) + ( \G16|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G16|ALT_INV_Add2~9_sumout\,
	dataf => \G7|ALT_INV_Mux14~0_combout\,
	cin => \G16|Add4~2\,
	sumout => \G16|Add4~5_sumout\,
	cout => \G16|Add4~6\);

\G16|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~9_sumout\ = SUM(( (\G14|SAIDA\(0) & \G16|Add2~13_sumout\) ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add4~6\ ))
-- \G16|Add4~10\ = CARRY(( (\G14|SAIDA\(0) & \G16|Add2~13_sumout\) ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Add2~13_sumout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add4~6\,
	sumout => \G16|Add4~9_sumout\,
	cout => \G16|Add4~10\);

\G16|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~13_sumout\ = SUM(( \G16|Prod~9_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~10\ ))
-- \G16|Add4~14\ = CARRY(( \G16|Prod~9_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~9_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add4~10\,
	sumout => \G16|Add4~13_sumout\,
	cout => \G16|Add4~14\);

\G16|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~17_sumout\ = SUM(( \G16|Prod~14_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~14\ ))
-- \G16|Add4~18\ = CARRY(( \G16|Prod~14_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~14_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add4~14\,
	sumout => \G16|Add4~17_sumout\,
	cout => \G16|Add4~18\);

\G16|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~21_sumout\ = SUM(( \G16|Prod~20_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~18\ ))
-- \G16|Add4~22\ = CARRY(( \G16|Prod~20_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~20_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add4~18\,
	sumout => \G16|Add4~21_sumout\,
	cout => \G16|Add4~22\);

\G16|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~25_sumout\ = SUM(( \G16|Prod~27_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~22\ ))
-- \G16|Add4~26\ = CARRY(( \G16|Prod~27_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~27_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add4~22\,
	sumout => \G16|Add4~25_sumout\,
	cout => \G16|Add4~26\);

\G16|Prod~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~5_combout\ = (\G14|SAIDA\(0) & \G16|Add2~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G16|ALT_INV_Add2~13_sumout\,
	combout => \G16|Prod~5_combout\);

\G16|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~1_sumout\ = SUM(( (\G14|SAIDA\(0) & \G16|Add2~5_sumout\) ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))
-- \G16|Add3~2\ = CARRY(( (\G14|SAIDA\(0) & \G16|Add2~5_sumout\) ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Add2~5_sumout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add3~1_sumout\,
	cout => \G16|Add3~2\);

\G16|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~5_sumout\ = SUM(( (\G14|SAIDA\(0) & \G16|Add2~9_sumout\) ) + ( (\Clock_Sistema~input_o\ & \G7|Mux14~0_combout\) ) + ( \G16|Add3~2\ ))
-- \G16|Add3~6\ = CARRY(( (\G14|SAIDA\(0) & \G16|Add2~9_sumout\) ) + ( (\Clock_Sistema~input_o\ & \G7|Mux14~0_combout\) ) + ( \G16|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G16|ALT_INV_Add2~9_sumout\,
	dataf => \G7|ALT_INV_Mux14~0_combout\,
	cin => \G16|Add3~2\,
	sumout => \G16|Add3~5_sumout\,
	cout => \G16|Add3~6\);

\G16|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~9_sumout\ = SUM(( \G16|Prod~5_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add3~6\ ))
-- \G16|Add3~10\ = CARRY(( \G16|Prod~5_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~5_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add3~6\,
	sumout => \G16|Add3~9_sumout\,
	cout => \G16|Add3~10\);

\G16|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~13_sumout\ = SUM(( \G16|Prod~9_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add3~10\ ))
-- \G16|Add3~14\ = CARRY(( \G16|Prod~9_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~9_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add3~10\,
	sumout => \G16|Add3~13_sumout\,
	cout => \G16|Add3~14\);

\G16|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~17_sumout\ = SUM(( \G16|Prod~14_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add3~14\ ))
-- \G16|Add3~18\ = CARRY(( \G16|Prod~14_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~14_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add3~14\,
	sumout => \G16|Add3~17_sumout\,
	cout => \G16|Add3~18\);

\G16|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~21_sumout\ = SUM(( \G16|Prod~20_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add3~18\ ))
-- \G16|Add3~22\ = CARRY(( \G16|Prod~20_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~20_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add3~18\,
	sumout => \G16|Add3~21_sumout\,
	cout => \G16|Add3~22\);

\G16|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~25_sumout\ = SUM(( \G16|Prod~27_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add3~22\ ))
-- \G16|Add3~26\ = CARRY(( \G16|Prod~27_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~27_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add3~22\,
	sumout => \G16|Add3~25_sumout\,
	cout => \G16|Add3~26\);

\G16|Prod~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~28_combout\ = ( \G16|Add3~25_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~27_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~25_sumout\))))) # (\G14|SAIDA\(0) & ((!\G14|SAIDA\(1)) # ((\G16|Prod~27_combout\)))) ) ) # ( 
-- !\G16|Add3~25_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~27_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~25_sumout\))))) # (\G14|SAIDA\(0) & (\G14|SAIDA\(1) & (\G16|Prod~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G16|ALT_INV_Prod~27_combout\,
	datad => \G16|ALT_INV_Add4~25_sumout\,
	datae => \G16|ALT_INV_Add3~25_sumout\,
	combout => \G16|Prod~28_combout\);

\G16|Prod~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~21_combout\ = ( \G16|Add3~21_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~20_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~21_sumout\))))) # (\G14|SAIDA\(0) & ((!\G14|SAIDA\(1)) # ((\G16|Prod~20_combout\)))) ) ) # ( 
-- !\G16|Add3~21_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~20_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~21_sumout\))))) # (\G14|SAIDA\(0) & (\G14|SAIDA\(1) & (\G16|Prod~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G16|ALT_INV_Prod~20_combout\,
	datad => \G16|ALT_INV_Add4~21_sumout\,
	datae => \G16|ALT_INV_Add3~21_sumout\,
	combout => \G16|Prod~21_combout\);

\G16|Prod~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~15_combout\ = ( \G16|Add3~17_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~14_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~17_sumout\))))) # (\G14|SAIDA\(0) & ((!\G14|SAIDA\(1)) # ((\G16|Prod~14_combout\)))) ) ) # ( 
-- !\G16|Add3~17_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~14_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~17_sumout\))))) # (\G14|SAIDA\(0) & (\G14|SAIDA\(1) & (\G16|Prod~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G16|ALT_INV_Prod~14_combout\,
	datad => \G16|ALT_INV_Add4~17_sumout\,
	datae => \G16|ALT_INV_Add3~17_sumout\,
	combout => \G16|Prod~15_combout\);

\G16|Prod~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~10_combout\ = ( \G16|Add3~13_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~9_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~13_sumout\))))) # (\G14|SAIDA\(0) & ((!\G14|SAIDA\(1)) # ((\G16|Prod~9_combout\)))) ) ) # ( 
-- !\G16|Add3~13_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~9_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~13_sumout\))))) # (\G14|SAIDA\(0) & (\G14|SAIDA\(1) & (\G16|Prod~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G16|ALT_INV_Prod~9_combout\,
	datad => \G16|ALT_INV_Add4~13_sumout\,
	datae => \G16|ALT_INV_Add3~13_sumout\,
	combout => \G16|Prod~10_combout\);

\G16|Prod~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~6_combout\ = ( \G16|Add3~9_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & ((\G16|Prod~5_combout\))) # (\G14|SAIDA\(1) & (\G16|Add4~9_sumout\)))) # (\G14|SAIDA\(0) & ((!\G14|SAIDA\(1)) # ((\G16|Prod~5_combout\)))) ) ) # ( !\G16|Add3~9_sumout\ 
-- & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & ((\G16|Prod~5_combout\))) # (\G14|SAIDA\(1) & (\G16|Add4~9_sumout\)))) # (\G14|SAIDA\(0) & (\G14|SAIDA\(1) & ((\G16|Prod~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010011011010001101101111100000010100110110100011011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G16|ALT_INV_Add4~9_sumout\,
	datad => \G16|ALT_INV_Prod~5_combout\,
	datae => \G16|ALT_INV_Add3~9_sumout\,
	combout => \G16|Prod~6_combout\);

\G16|Prod~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~3_combout\ = ( \G16|Add3~5_sumout\ & ( (!\G14|SAIDA\(0) & (\G14|SAIDA\(1) & ((\G16|Add4~5_sumout\)))) # (\G14|SAIDA\(0) & ((!\G14|SAIDA\(1)) # ((\G16|Add2~9_sumout\)))) ) ) # ( !\G16|Add3~5_sumout\ & ( (\G14|SAIDA\(1) & ((!\G14|SAIDA\(0) & 
-- ((\G16|Add4~5_sumout\))) # (\G14|SAIDA\(0) & (\G16|Add2~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011100000001001000110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G16|ALT_INV_Add2~9_sumout\,
	datad => \G16|ALT_INV_Add4~5_sumout\,
	datae => \G16|ALT_INV_Add3~5_sumout\,
	combout => \G16|Prod~3_combout\);

\G16|Add6~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add6~34_cout\);

\G16|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~1_sumout\ = SUM(( \G16|Prod~3_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add6~34_cout\ ))
-- \G16|Add6~2\ = CARRY(( \G16|Prod~3_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add6~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => \G16|Add6~34_cout\,
	sumout => \G16|Add6~1_sumout\,
	cout => \G16|Add6~2\);

\G16|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~5_sumout\ = SUM(( \G16|Prod~6_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add6~2\ ))
-- \G16|Add6~6\ = CARRY(( \G16|Prod~6_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~6_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add6~2\,
	sumout => \G16|Add6~5_sumout\,
	cout => \G16|Add6~6\);

\G16|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~9_sumout\ = SUM(( \G16|Prod~10_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add6~6\ ))
-- \G16|Add6~10\ = CARRY(( \G16|Prod~10_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~10_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add6~6\,
	sumout => \G16|Add6~9_sumout\,
	cout => \G16|Add6~10\);

\G16|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~13_sumout\ = SUM(( \G16|Prod~15_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~10\ ))
-- \G16|Add6~14\ = CARRY(( \G16|Prod~15_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~15_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add6~10\,
	sumout => \G16|Add6~13_sumout\,
	cout => \G16|Add6~14\);

\G16|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~17_sumout\ = SUM(( \G16|Prod~21_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~14\ ))
-- \G16|Add6~18\ = CARRY(( \G16|Prod~21_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~21_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add6~14\,
	sumout => \G16|Add6~17_sumout\,
	cout => \G16|Add6~18\);

\G16|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~21_sumout\ = SUM(( \G16|Prod~28_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~18\ ))
-- \G16|Add6~22\ = CARRY(( \G16|Prod~28_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~28_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add6~18\,
	sumout => \G16|Add6~21_sumout\,
	cout => \G16|Add6~22\);

\G16|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~1_sumout\ = SUM(( \G16|Prod~3_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))
-- \G16|Add5~2\ = CARRY(( \G16|Prod~3_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add5~1_sumout\,
	cout => \G16|Add5~2\);

\G16|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~5_sumout\ = SUM(( \G16|Prod~6_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add5~2\ ))
-- \G16|Add5~6\ = CARRY(( \G16|Prod~6_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~6_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add5~2\,
	sumout => \G16|Add5~5_sumout\,
	cout => \G16|Add5~6\);

\G16|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~9_sumout\ = SUM(( \G16|Prod~10_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add5~6\ ))
-- \G16|Add5~10\ = CARRY(( \G16|Prod~10_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~10_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add5~6\,
	sumout => \G16|Add5~9_sumout\,
	cout => \G16|Add5~10\);

\G16|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~13_sumout\ = SUM(( \G16|Prod~15_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add5~10\ ))
-- \G16|Add5~14\ = CARRY(( \G16|Prod~15_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~15_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add5~10\,
	sumout => \G16|Add5~13_sumout\,
	cout => \G16|Add5~14\);

\G16|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~17_sumout\ = SUM(( \G16|Prod~21_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add5~14\ ))
-- \G16|Add5~18\ = CARRY(( \G16|Prod~21_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~21_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add5~14\,
	sumout => \G16|Add5~17_sumout\,
	cout => \G16|Add5~18\);

\G16|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~21_sumout\ = SUM(( \G16|Prod~28_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add5~18\ ))
-- \G16|Add5~22\ = CARRY(( \G16|Prod~28_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~28_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add5~18\,
	sumout => \G16|Add5~21_sumout\,
	cout => \G16|Add5~22\);

\G16|Prod~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~29_combout\ = ( \G16|Add5~21_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~28_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~21_sumout\))))) # (\G14|SAIDA\(1) & ((!\G14|SAIDA\(2)) # ((\G16|Prod~28_combout\)))) ) ) # ( 
-- !\G16|Add5~21_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~28_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~21_sumout\))))) # (\G14|SAIDA\(1) & (\G14|SAIDA\(2) & (\G16|Prod~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G16|ALT_INV_Prod~28_combout\,
	datad => \G16|ALT_INV_Add6~21_sumout\,
	datae => \G16|ALT_INV_Add5~21_sumout\,
	combout => \G16|Prod~29_combout\);

\G16|Prod~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~22_combout\ = ( \G16|Add5~17_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~21_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~17_sumout\))))) # (\G14|SAIDA\(1) & ((!\G14|SAIDA\(2)) # ((\G16|Prod~21_combout\)))) ) ) # ( 
-- !\G16|Add5~17_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~21_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~17_sumout\))))) # (\G14|SAIDA\(1) & (\G14|SAIDA\(2) & (\G16|Prod~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G16|ALT_INV_Prod~21_combout\,
	datad => \G16|ALT_INV_Add6~17_sumout\,
	datae => \G16|ALT_INV_Add5~17_sumout\,
	combout => \G16|Prod~22_combout\);

\G16|Prod~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~16_combout\ = ( \G16|Add5~13_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~15_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~13_sumout\))))) # (\G14|SAIDA\(1) & ((!\G14|SAIDA\(2)) # ((\G16|Prod~15_combout\)))) ) ) # ( 
-- !\G16|Add5~13_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~15_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~13_sumout\))))) # (\G14|SAIDA\(1) & (\G14|SAIDA\(2) & (\G16|Prod~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G16|ALT_INV_Prod~15_combout\,
	datad => \G16|ALT_INV_Add6~13_sumout\,
	datae => \G16|ALT_INV_Add5~13_sumout\,
	combout => \G16|Prod~16_combout\);

\G16|Prod~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~11_combout\ = ( \G16|Add5~9_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~10_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~9_sumout\))))) # (\G14|SAIDA\(1) & ((!\G14|SAIDA\(2)) # ((\G16|Prod~10_combout\)))) ) ) # ( 
-- !\G16|Add5~9_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~10_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~9_sumout\))))) # (\G14|SAIDA\(1) & (\G14|SAIDA\(2) & (\G16|Prod~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G16|ALT_INV_Prod~10_combout\,
	datad => \G16|ALT_INV_Add6~9_sumout\,
	datae => \G16|ALT_INV_Add5~9_sumout\,
	combout => \G16|Prod~11_combout\);

\G16|Prod~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~7_combout\ = ( \G16|Add5~5_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~6_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~5_sumout\))))) # (\G14|SAIDA\(1) & ((!\G14|SAIDA\(2)) # ((\G16|Prod~6_combout\)))) ) ) # ( !\G16|Add5~5_sumout\ 
-- & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~6_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~5_sumout\))))) # (\G14|SAIDA\(1) & (\G14|SAIDA\(2) & (\G16|Prod~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G16|ALT_INV_Prod~6_combout\,
	datad => \G16|ALT_INV_Add6~5_sumout\,
	datae => \G16|ALT_INV_Add5~5_sumout\,
	combout => \G16|Prod~7_combout\);

\G16|Add8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add8~34_cout\);

\G16|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~1_sumout\ = SUM(( \G16|Prod~7_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add8~34_cout\ ))
-- \G16|Add8~2\ = CARRY(( \G16|Prod~7_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~7_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => \G16|Add8~34_cout\,
	sumout => \G16|Add8~1_sumout\,
	cout => \G16|Add8~2\);

\G16|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~5_sumout\ = SUM(( \G16|Prod~11_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add8~2\ ))
-- \G16|Add8~6\ = CARRY(( \G16|Prod~11_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~11_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add8~2\,
	sumout => \G16|Add8~5_sumout\,
	cout => \G16|Add8~6\);

\G16|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~9_sumout\ = SUM(( \G16|Prod~16_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add8~6\ ))
-- \G16|Add8~10\ = CARRY(( \G16|Prod~16_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~16_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add8~6\,
	sumout => \G16|Add8~9_sumout\,
	cout => \G16|Add8~10\);

\G16|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~13_sumout\ = SUM(( \G16|Prod~22_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~10\ ))
-- \G16|Add8~14\ = CARRY(( \G16|Prod~22_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~22_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add8~10\,
	sumout => \G16|Add8~13_sumout\,
	cout => \G16|Add8~14\);

\G16|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~17_sumout\ = SUM(( \G16|Prod~29_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~14\ ))
-- \G16|Add8~18\ = CARRY(( \G16|Prod~29_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~29_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add8~14\,
	sumout => \G16|Add8~17_sumout\,
	cout => \G16|Add8~18\);

\G16|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~1_sumout\ = SUM(( \G16|Prod~7_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))
-- \G16|Add7~2\ = CARRY(( \G16|Prod~7_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~7_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add7~1_sumout\,
	cout => \G16|Add7~2\);

\G16|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~5_sumout\ = SUM(( \G16|Prod~11_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add7~2\ ))
-- \G16|Add7~6\ = CARRY(( \G16|Prod~11_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~11_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add7~2\,
	sumout => \G16|Add7~5_sumout\,
	cout => \G16|Add7~6\);

\G16|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~9_sumout\ = SUM(( \G16|Prod~16_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add7~6\ ))
-- \G16|Add7~10\ = CARRY(( \G16|Prod~16_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~16_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add7~6\,
	sumout => \G16|Add7~9_sumout\,
	cout => \G16|Add7~10\);

\G16|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~13_sumout\ = SUM(( \G16|Prod~22_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add7~10\ ))
-- \G16|Add7~14\ = CARRY(( \G16|Prod~22_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~22_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add7~10\,
	sumout => \G16|Add7~13_sumout\,
	cout => \G16|Add7~14\);

\G16|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~17_sumout\ = SUM(( \G16|Prod~29_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add7~14\ ))
-- \G16|Add7~18\ = CARRY(( \G16|Prod~29_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~29_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add7~14\,
	sumout => \G16|Add7~17_sumout\,
	cout => \G16|Add7~18\);

\G16|Prod~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~30_combout\ = ( \G16|Add7~17_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~29_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~17_sumout\))))) # (\G14|SAIDA\(2) & ((!\G14|SAIDA\(3)) # ((\G16|Prod~29_combout\)))) ) ) # ( 
-- !\G16|Add7~17_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~29_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~17_sumout\))))) # (\G14|SAIDA\(2) & (\G14|SAIDA\(3) & (\G16|Prod~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G16|ALT_INV_Prod~29_combout\,
	datad => \G16|ALT_INV_Add8~17_sumout\,
	datae => \G16|ALT_INV_Add7~17_sumout\,
	combout => \G16|Prod~30_combout\);

\G16|Prod~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~23_combout\ = ( \G16|Add7~13_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~22_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~13_sumout\))))) # (\G14|SAIDA\(2) & ((!\G14|SAIDA\(3)) # ((\G16|Prod~22_combout\)))) ) ) # ( 
-- !\G16|Add7~13_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~22_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~13_sumout\))))) # (\G14|SAIDA\(2) & (\G14|SAIDA\(3) & (\G16|Prod~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G16|ALT_INV_Prod~22_combout\,
	datad => \G16|ALT_INV_Add8~13_sumout\,
	datae => \G16|ALT_INV_Add7~13_sumout\,
	combout => \G16|Prod~23_combout\);

\G16|Prod~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~17_combout\ = ( \G16|Add7~9_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~16_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~9_sumout\))))) # (\G14|SAIDA\(2) & ((!\G14|SAIDA\(3)) # ((\G16|Prod~16_combout\)))) ) ) # ( 
-- !\G16|Add7~9_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~16_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~9_sumout\))))) # (\G14|SAIDA\(2) & (\G14|SAIDA\(3) & (\G16|Prod~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G16|ALT_INV_Prod~16_combout\,
	datad => \G16|ALT_INV_Add8~9_sumout\,
	datae => \G16|ALT_INV_Add7~9_sumout\,
	combout => \G16|Prod~17_combout\);

\G16|Prod~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~12_combout\ = ( \G16|Add7~5_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~11_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~5_sumout\))))) # (\G14|SAIDA\(2) & ((!\G14|SAIDA\(3)) # ((\G16|Prod~11_combout\)))) ) ) # ( 
-- !\G16|Add7~5_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~11_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~5_sumout\))))) # (\G14|SAIDA\(2) & (\G14|SAIDA\(3) & (\G16|Prod~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G16|ALT_INV_Prod~11_combout\,
	datad => \G16|ALT_INV_Add8~5_sumout\,
	datae => \G16|ALT_INV_Add7~5_sumout\,
	combout => \G16|Prod~12_combout\);

\G16|Add10~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add10~34_cout\);

\G16|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~1_sumout\ = SUM(( \G16|Prod~12_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add10~34_cout\ ))
-- \G16|Add10~2\ = CARRY(( \G16|Prod~12_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add10~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~12_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => \G16|Add10~34_cout\,
	sumout => \G16|Add10~1_sumout\,
	cout => \G16|Add10~2\);

\G16|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~5_sumout\ = SUM(( \G16|Prod~17_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add10~2\ ))
-- \G16|Add10~6\ = CARRY(( \G16|Prod~17_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~17_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add10~2\,
	sumout => \G16|Add10~5_sumout\,
	cout => \G16|Add10~6\);

\G16|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~9_sumout\ = SUM(( \G16|Prod~23_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add10~6\ ))
-- \G16|Add10~10\ = CARRY(( \G16|Prod~23_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~23_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add10~6\,
	sumout => \G16|Add10~9_sumout\,
	cout => \G16|Add10~10\);

\G16|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~13_sumout\ = SUM(( \G16|Prod~30_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~10\ ))
-- \G16|Add10~14\ = CARRY(( \G16|Prod~30_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~30_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add10~10\,
	sumout => \G16|Add10~13_sumout\,
	cout => \G16|Add10~14\);

\G16|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~1_sumout\ = SUM(( \G16|Prod~12_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))
-- \G16|Add9~2\ = CARRY(( \G16|Prod~12_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~12_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add9~1_sumout\,
	cout => \G16|Add9~2\);

\G16|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~5_sumout\ = SUM(( \G16|Prod~17_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add9~2\ ))
-- \G16|Add9~6\ = CARRY(( \G16|Prod~17_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~17_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add9~2\,
	sumout => \G16|Add9~5_sumout\,
	cout => \G16|Add9~6\);

\G16|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~9_sumout\ = SUM(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add9~6\ ))
-- \G16|Add9~10\ = CARRY(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~23_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add9~6\,
	sumout => \G16|Add9~9_sumout\,
	cout => \G16|Add9~10\);

\G16|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~13_sumout\ = SUM(( \G16|Prod~30_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add9~10\ ))
-- \G16|Add9~14\ = CARRY(( \G16|Prod~30_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~30_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add9~10\,
	sumout => \G16|Add9~13_sumout\,
	cout => \G16|Add9~14\);

\G16|Prod~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~31_combout\ = ( \G16|Add9~13_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~30_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~13_sumout\))))) # (\G14|SAIDA\(3) & ((!\G14|SAIDA\(4)) # ((\G16|Prod~30_combout\)))) ) ) # ( 
-- !\G16|Add9~13_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~30_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~13_sumout\))))) # (\G14|SAIDA\(3) & (\G14|SAIDA\(4) & (\G16|Prod~30_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G16|ALT_INV_Prod~30_combout\,
	datad => \G16|ALT_INV_Add10~13_sumout\,
	datae => \G16|ALT_INV_Add9~13_sumout\,
	combout => \G16|Prod~31_combout\);

\G16|Prod~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~24_combout\ = ( \G16|Add9~9_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~23_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~9_sumout\))))) # (\G14|SAIDA\(3) & ((!\G14|SAIDA\(4)) # ((\G16|Prod~23_combout\)))) ) ) # ( 
-- !\G16|Add9~9_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~23_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~9_sumout\))))) # (\G14|SAIDA\(3) & (\G14|SAIDA\(4) & (\G16|Prod~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G16|ALT_INV_Prod~23_combout\,
	datad => \G16|ALT_INV_Add10~9_sumout\,
	datae => \G16|ALT_INV_Add9~9_sumout\,
	combout => \G16|Prod~24_combout\);

\G16|Prod~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~18_combout\ = ( \G16|Add9~5_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~17_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~5_sumout\))))) # (\G14|SAIDA\(3) & ((!\G14|SAIDA\(4)) # ((\G16|Prod~17_combout\)))) ) ) # ( 
-- !\G16|Add9~5_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~17_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~5_sumout\))))) # (\G14|SAIDA\(3) & (\G14|SAIDA\(4) & (\G16|Prod~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G16|ALT_INV_Prod~17_combout\,
	datad => \G16|ALT_INV_Add10~5_sumout\,
	datae => \G16|ALT_INV_Add9~5_sumout\,
	combout => \G16|Prod~18_combout\);

\G16|Add12~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add12~34_cout\);

\G16|Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~1_sumout\ = SUM(( \G16|Prod~18_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add12~34_cout\ ))
-- \G16|Add12~2\ = CARRY(( \G16|Prod~18_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add12~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~18_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => \G16|Add12~34_cout\,
	sumout => \G16|Add12~1_sumout\,
	cout => \G16|Add12~2\);

\G16|Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~5_sumout\ = SUM(( \G16|Prod~24_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add12~2\ ))
-- \G16|Add12~6\ = CARRY(( \G16|Prod~24_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~24_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add12~2\,
	sumout => \G16|Add12~5_sumout\,
	cout => \G16|Add12~6\);

\G16|Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~9_sumout\ = SUM(( \G16|Prod~31_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add12~6\ ))
-- \G16|Add12~10\ = CARRY(( \G16|Prod~31_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~31_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add12~6\,
	sumout => \G16|Add12~9_sumout\,
	cout => \G16|Add12~10\);

\G16|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~1_sumout\ = SUM(( \G16|Prod~18_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))
-- \G16|Add11~2\ = CARRY(( \G16|Prod~18_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~18_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add11~1_sumout\,
	cout => \G16|Add11~2\);

\G16|Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~5_sumout\ = SUM(( \G16|Prod~24_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add11~2\ ))
-- \G16|Add11~6\ = CARRY(( \G16|Prod~24_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~24_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add11~2\,
	sumout => \G16|Add11~5_sumout\,
	cout => \G16|Add11~6\);

\G16|Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~9_sumout\ = SUM(( \G16|Prod~31_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add11~6\ ))
-- \G16|Add11~10\ = CARRY(( \G16|Prod~31_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~31_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add11~6\,
	sumout => \G16|Add11~9_sumout\,
	cout => \G16|Add11~10\);

\G16|Prod~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~32_combout\ = ( \G16|Add11~9_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~31_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~9_sumout\))))) # (\G14|SAIDA\(4) & ((!\G14|SAIDA\(5)) # ((\G16|Prod~31_combout\)))) ) ) # ( 
-- !\G16|Add11~9_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~31_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~9_sumout\))))) # (\G14|SAIDA\(4) & (\G14|SAIDA\(5) & (\G16|Prod~31_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G16|ALT_INV_Prod~31_combout\,
	datad => \G16|ALT_INV_Add12~9_sumout\,
	datae => \G16|ALT_INV_Add11~9_sumout\,
	combout => \G16|Prod~32_combout\);

\G16|Prod~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~25_combout\ = ( \G16|Add11~5_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~24_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~5_sumout\))))) # (\G14|SAIDA\(4) & ((!\G14|SAIDA\(5)) # ((\G16|Prod~24_combout\)))) ) ) # ( 
-- !\G16|Add11~5_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~24_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~5_sumout\))))) # (\G14|SAIDA\(4) & (\G14|SAIDA\(5) & (\G16|Prod~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G16|ALT_INV_Prod~24_combout\,
	datad => \G16|ALT_INV_Add12~5_sumout\,
	datae => \G16|ALT_INV_Add11~5_sumout\,
	combout => \G16|Prod~25_combout\);

\G16|Add14~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add14~34_cout\);

\G16|Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~1_sumout\ = SUM(( \G16|Prod~25_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add14~34_cout\ ))
-- \G16|Add14~2\ = CARRY(( \G16|Prod~25_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add14~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~25_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => \G16|Add14~34_cout\,
	sumout => \G16|Add14~1_sumout\,
	cout => \G16|Add14~2\);

\G16|Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~5_sumout\ = SUM(( \G16|Prod~32_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add14~2\ ))
-- \G16|Add14~6\ = CARRY(( \G16|Prod~32_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~32_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add14~2\,
	sumout => \G16|Add14~5_sumout\,
	cout => \G16|Add14~6\);

\G16|Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~1_sumout\ = SUM(( \G16|Prod~25_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))
-- \G16|Add13~2\ = CARRY(( \G16|Prod~25_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~25_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add13~1_sumout\,
	cout => \G16|Add13~2\);

\G16|Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~5_sumout\ = SUM(( \G16|Prod~32_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add13~2\ ))
-- \G16|Add13~6\ = CARRY(( \G16|Prod~32_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~32_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add13~2\,
	sumout => \G16|Add13~5_sumout\,
	cout => \G16|Add13~6\);

\G16|Prod~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~33_combout\ = ( \G16|Add13~5_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~32_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~5_sumout\))))) # (\G14|SAIDA\(5) & ((!\G14|SAIDA\(6)) # ((\G16|Prod~32_combout\)))) ) ) # ( 
-- !\G16|Add13~5_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~32_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~5_sumout\))))) # (\G14|SAIDA\(5) & (\G14|SAIDA\(6) & (\G16|Prod~32_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G16|ALT_INV_Prod~32_combout\,
	datad => \G16|ALT_INV_Add14~5_sumout\,
	datae => \G16|ALT_INV_Add13~5_sumout\,
	combout => \G16|Prod~33_combout\);

\G16|Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~1_sumout\ = SUM(( \G16|Prod~33_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))
-- \G16|Add15~2\ = CARRY(( \G16|Prod~33_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G7|Mux15~0_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~33_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add15~1_sumout\,
	cout => \G16|Add15~2\);

\G16|Add16~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add16~34_cout\);

\G16|Add16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~1_sumout\ = SUM(( \G16|Prod~33_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add16~34_cout\ ))
-- \G16|Add16~2\ = CARRY(( \G16|Prod~33_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA\(0)))) ) + ( \G16|Add16~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~33_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => \G16|Add16~34_cout\,
	sumout => \G16|Add16~1_sumout\,
	cout => \G16|Add16~2\);

\G4|funct[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[0]~2_combout\ = (\G4|Equal0~0_combout\ & \G4|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G4|funct[0]~2_combout\);

\G16|Saida_to_Dados[13]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~43_combout\ = (!\G4|funct[0]~2_combout\ & (!\G14|SAIDA\(6) $ (!\G14|SAIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(6),
	datab => \G14|ALT_INV_SAIDA\(7),
	datac => \G4|ALT_INV_funct[0]~2_combout\,
	combout => \G16|Saida_to_Dados[13]~43_combout\);

\G16|Saida_to_Dados[13]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~44_combout\ = (!\G4|funct[0]~2_combout\ & ((!\G14|SAIDA\(6)) # (\G14|SAIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(6),
	datab => \G14|ALT_INV_SAIDA\(7),
	datac => \G4|ALT_INV_funct[0]~2_combout\,
	combout => \G16|Saida_to_Dados[13]~44_combout\);

\G16|Saida_to_Dados[7]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~45_combout\ = ( \G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add16~1_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Prod~33_combout\ ) 
-- ) ) # ( \G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add15~1_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Splitter~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~13_combout\,
	datab => \G16|ALT_INV_Add15~1_sumout\,
	datac => \G16|ALT_INV_Prod~33_combout\,
	datad => \G16|ALT_INV_Add16~1_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~43_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~44_combout\,
	combout => \G16|Saida_to_Dados[7]~45_combout\);

\G16|Saida_to_Dados[13]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~46_combout\ = (\G5|Mux9~1_combout\ & (((!\G4|Mux1~0_combout\) # (!\G4|funct[0]~2_combout\)) # (\G4|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110100000000111111010000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux9~0_combout\,
	datab => \G4|ALT_INV_Mux1~0_combout\,
	datac => \G4|ALT_INV_funct[0]~2_combout\,
	datad => \G5|ALT_INV_Mux9~1_combout\,
	combout => \G16|Saida_to_Dados[13]~46_combout\);

\G16|Saida_to_Dados[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~0_combout\ = (!\G4|Mux0~2_combout\ & (!\G4|Mux2~0_combout\ & !\G4|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G4|ALT_INV_Mux2~0_combout\,
	datac => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G16|Saida_to_Dados[13]~0_combout\);

\G18|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~7_combout\ = (!\G4|Mux8~0_combout\ & (!\G4|Mux9~0_combout\ & (!\G4|Mux7~1_combout\ & !\G16|Saida_to_Dados[13]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[13]~0_combout\,
	combout => \G18|SAIDA~7_combout\);

\G16|Saida_to_Dados[13]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~47_combout\ = (\G4|Equal0~0_combout\ & (\G16|Saida_to_Dados[13]~46_combout\ & ((\G4|Mux1~0_combout\) # (\G4|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000000101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux1~0_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[13]~46_combout\,
	combout => \G16|Saida_to_Dados[13]~47_combout\);

\G18|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~8_combout\ = (\G18|SAIDA~7_combout\ & (\G16|Saida_to_Dados[13]~47_combout\ & ((!\G16|Saida_to_Dados[13]~46_combout\) # (\G4|rd[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110100000000000011010000000000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~46_combout\,
	datac => \G18|ALT_INV_SAIDA~7_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[13]~47_combout\,
	combout => \G18|SAIDA~8_combout\);

\G16|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~5_sumout\ = SUM(( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( !\G14|SAIDA\(1) ) + ( \G16|Add1~2\ ))
-- \G16|Add1~6\ = CARRY(( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( !\G14|SAIDA\(1) ) + ( \G16|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G7|ALT_INV_Reg~1_combout\,
	dataf => \G14|ALT_INV_SAIDA\(1),
	cin => \G16|Add1~2\,
	sumout => \G16|Add1~5_sumout\,
	cout => \G16|Add1~6\);

\G16|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~9_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(2)) # (\G7|Mux15~0_combout\)) ) + ( !\G14|SAIDA\(2) ) + ( \G16|Add1~6\ ))
-- \G16|Add1~10\ = CARRY(( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(2)) # (\G7|Mux15~0_combout\)) ) + ( !\G14|SAIDA\(2) ) + ( \G16|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(2),
	dataf => \G14|ALT_INV_SAIDA\(2),
	cin => \G16|Add1~6\,
	sumout => \G16|Add1~9_sumout\,
	cout => \G16|Add1~10\);

\G16|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~13_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( !\G14|SAIDA\(3) ) + ( \G16|Add1~10\ ))
-- \G16|Add1~14\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( !\G14|SAIDA\(3) ) + ( \G16|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(3),
	dataf => \G14|ALT_INV_SAIDA\(3),
	cin => \G16|Add1~10\,
	sumout => \G16|Add1~13_sumout\,
	cout => \G16|Add1~14\);

\G16|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~17_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( !\G14|SAIDA\(4) ) + ( \G16|Add1~14\ ))
-- \G16|Add1~18\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( !\G14|SAIDA\(4) ) + ( \G16|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(4),
	dataf => \G14|ALT_INV_SAIDA\(4),
	cin => \G16|Add1~14\,
	sumout => \G16|Add1~17_sumout\,
	cout => \G16|Add1~18\);

\G16|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~21_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( !\G14|SAIDA\(5) ) + ( \G16|Add1~18\ ))
-- \G16|Add1~22\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( !\G14|SAIDA\(5) ) + ( \G16|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(5),
	dataf => \G14|ALT_INV_SAIDA\(5),
	cin => \G16|Add1~18\,
	sumout => \G16|Add1~21_sumout\,
	cout => \G16|Add1~22\);

\G16|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~25_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( !\G14|SAIDA\(6) ) + ( \G16|Add1~22\ ))
-- \G16|Add1~26\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( !\G14|SAIDA\(6) ) + ( \G16|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(6),
	dataf => \G14|ALT_INV_SAIDA\(6),
	cin => \G16|Add1~22\,
	sumout => \G16|Add1~25_sumout\,
	cout => \G16|Add1~26\);

\G16|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~29_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(7)))) ) + ( !\G14|SAIDA\(7) ) + ( \G16|Add1~26\ ))
-- \G16|Add1~30\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(7)))) ) + ( !\G14|SAIDA\(7) ) + ( \G16|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(7),
	dataf => \G14|ALT_INV_SAIDA\(7),
	cin => \G16|Add1~26\,
	sumout => \G16|Add1~29_sumout\,
	cout => \G16|Add1~30\);

\G18|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~9_combout\ = ( \G16|Saida_to_Dados[13]~47_combout\ & ( (!\G14|SAIDA\(7) & ((!\G18|SAIDA\(7)) # (!\G7|Mux15~2_combout\))) ) ) # ( !\G16|Saida_to_Dados[13]~47_combout\ & ( !\G16|Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110011001000100011110000111100001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(7),
	datab => \G14|ALT_INV_SAIDA\(7),
	datac => \G16|ALT_INV_Add1~29_sumout\,
	datad => \G7|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~47_combout\,
	combout => \G18|SAIDA~9_combout\);

\G18|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~10_combout\ = (!\G4|rd[0]~1_combout\ & (\G16|Saida_to_Dados[13]~46_combout\ & \G18|SAIDA~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~46_combout\,
	datac => \G18|ALT_INV_SAIDA~7_combout\,
	combout => \G18|SAIDA~10_combout\);

\G7|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][7]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(7),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][7]~combout\,
	combout => \G7|Mux24~0_combout\);

\G7|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux24~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][7]~combout\,
	datad => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G7|Mux24~1_combout\);

\G7|Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~2_combout\ = (!\G18|SAIDA\(7) & (!\G7|Mux20~1_combout\ & ((\G7|Mux24~1_combout\)))) # (\G18|SAIDA\(7) & (((!\G7|Mux20~1_combout\ & \G7|Mux24~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(7),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux24~1_combout\,
	combout => \G7|Mux24~2_combout\);

\G16|Saida_to_Dados[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~1_combout\ = ( \G16|Saida_to_Dados[13]~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux8~0_combout\ & \G4|Mux9~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) # ( !\G16|Saida_to_Dados[13]~0_combout\ & ( (\Clock_Sistema~input_o\ & 
-- ((!\G4|Mux8~0_combout\ $ (\G4|Mux9~0_combout\)) # (\G4|Mux7~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101010101000000010101010101000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~0_combout\,
	combout => \G16|Saida_to_Dados[13]~1_combout\);

\G16|Saida_to_Dados[13]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~4_combout\ = ( \G4|Mux2~0_combout\ & ( \G4|Mux1~0_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux8~0_combout\ $ (\G4|Mux9~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) ) # ( !\G4|Mux2~0_combout\ & ( \G4|Mux1~0_combout\ & ( 
-- (\Clock_Sistema~input_o\ & (((\G4|Mux8~0_combout\ & \G4|Mux9~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) ) # ( \G4|Mux2~0_combout\ & ( !\G4|Mux1~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux8~0_combout\ & \G4|Mux9~0_combout\)) # 
-- (\G4|Mux7~1_combout\))) ) ) ) # ( !\G4|Mux2~0_combout\ & ( !\G4|Mux1~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux8~0_combout\ & \G4|Mux9~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000010101010100000001010101010100000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux2~0_combout\,
	dataf => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G16|Saida_to_Dados[13]~4_combout\);

\G16|Saida_to_Dados[13]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~5_combout\ = (!\G4|rd[0]~0_combout\ & !\G16|Saida_to_Dados[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~4_combout\,
	combout => \G16|Saida_to_Dados[13]~5_combout\);

\G16|Saida_to_Dados[13]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~6_combout\ = ( !\G16|Saida_to_Dados[13]~4_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Equal0~0_combout\ & ((\G4|Mux1~0_combout\) # (\G4|Mux0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000000000000000000001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G4|ALT_INV_Mux1~0_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~4_combout\,
	combout => \G16|Saida_to_Dados[13]~6_combout\);

\G16|Saida_to_Dados[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~7_combout\ = (\G16|Saida_to_Dados[13]~1_combout\ & (!\G16|Saida_to_Dados[13]~5_combout\ & \G16|Saida_to_Dados[13]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[13]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~5_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[13]~6_combout\,
	combout => \G16|Saida_to_Dados[7]~7_combout\);

\G7|Reg[3][8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][8]~combout\ = ( \G7|Reg[3][8]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(8) ) ) ) # ( !\G7|Reg[3][8]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(8) ) ) ) # ( \G7|Reg[3][8]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(8),
	datae => \G7|ALT_INV_Reg[3][8]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][8]~combout\);

\G7|Reg[2][8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][8]~combout\ = ( \G7|Reg[2][8]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(8) ) ) ) # ( !\G7|Reg[2][8]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(8) ) ) ) # ( \G7|Reg[2][8]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(8),
	datae => \G7|ALT_INV_Reg[2][8]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][8]~combout\);

\G14|SAIDA~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~33_combout\ = ( \G7|Reg[2][8]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][8]~combout\))) ) ) ) # ( !\G7|Reg[2][8]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][8]~combout\)))) ) ) ) # ( \G7|Reg[2][8]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][8]~combout\)))) ) ) ) # ( !\G7|Reg[2][8]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][8]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][8]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][8]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~33_combout\);

\G14|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~14_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~33_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~33_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(8)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~33_combout\ & ( (\G18|SAIDA\(8) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~33_combout\ & ( (\G18|SAIDA\(8) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(8),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~33_combout\,
	combout => \G14|SAIDA~14_combout\);

\G14|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(8) = ( \G14|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~14_combout\ ) ) ) # ( !\G14|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~14_combout\ ) ) ) # ( \G14|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~14_combout\,
	datae => \G14|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(8));

\G16|Splitter~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~14_combout\ = (\G18|SAIDA\(8) & (\G14|SAIDA\(8) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(8),
	datab => \G14|ALT_INV_SAIDA\(8),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~14_combout\);

\G16|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~29_sumout\ = SUM(( \G16|Prod~27_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(7)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~27_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add4~26\,
	sumout => \G16|Add4~29_sumout\);

\G16|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~29_sumout\ = SUM(( \G16|Prod~27_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(7)))) ) + ( \G16|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~27_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add3~26\,
	sumout => \G16|Add3~29_sumout\);

\G16|Prod~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~34_combout\ = ( \G16|Add3~29_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~27_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~29_sumout\))))) # (\G14|SAIDA\(0) & ((!\G14|SAIDA\(1)) # ((\G16|Prod~27_combout\)))) ) ) # ( 
-- !\G16|Add3~29_sumout\ & ( (!\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Prod~27_combout\)) # (\G14|SAIDA\(1) & ((\G16|Add4~29_sumout\))))) # (\G14|SAIDA\(0) & (\G14|SAIDA\(1) & (\G16|Prod~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G16|ALT_INV_Prod~27_combout\,
	datad => \G16|ALT_INV_Add4~29_sumout\,
	datae => \G16|ALT_INV_Add3~29_sumout\,
	combout => \G16|Prod~34_combout\);

\G16|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~25_sumout\ = SUM(( \G16|Prod~34_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~22\ ))
-- \G16|Add6~26\ = CARRY(( \G16|Prod~34_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~34_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add6~22\,
	sumout => \G16|Add6~25_sumout\,
	cout => \G16|Add6~26\);

\G16|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~25_sumout\ = SUM(( \G16|Prod~34_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add5~22\ ))
-- \G16|Add5~26\ = CARRY(( \G16|Prod~34_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~34_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add5~22\,
	sumout => \G16|Add5~25_sumout\,
	cout => \G16|Add5~26\);

\G16|Prod~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~35_combout\ = ( \G16|Add5~25_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~34_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~25_sumout\))))) # (\G14|SAIDA\(1) & ((!\G14|SAIDA\(2)) # ((\G16|Prod~34_combout\)))) ) ) # ( 
-- !\G16|Add5~25_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~34_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~25_sumout\))))) # (\G14|SAIDA\(1) & (\G14|SAIDA\(2) & (\G16|Prod~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G16|ALT_INV_Prod~34_combout\,
	datad => \G16|ALT_INV_Add6~25_sumout\,
	datae => \G16|ALT_INV_Add5~25_sumout\,
	combout => \G16|Prod~35_combout\);

\G16|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~21_sumout\ = SUM(( \G16|Prod~35_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~18\ ))
-- \G16|Add8~22\ = CARRY(( \G16|Prod~35_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~35_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add8~18\,
	sumout => \G16|Add8~21_sumout\,
	cout => \G16|Add8~22\);

\G16|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~21_sumout\ = SUM(( \G16|Prod~35_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add7~18\ ))
-- \G16|Add7~22\ = CARRY(( \G16|Prod~35_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~35_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add7~18\,
	sumout => \G16|Add7~21_sumout\,
	cout => \G16|Add7~22\);

\G16|Prod~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~36_combout\ = ( \G16|Add7~21_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~35_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~21_sumout\))))) # (\G14|SAIDA\(2) & ((!\G14|SAIDA\(3)) # ((\G16|Prod~35_combout\)))) ) ) # ( 
-- !\G16|Add7~21_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~35_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~21_sumout\))))) # (\G14|SAIDA\(2) & (\G14|SAIDA\(3) & (\G16|Prod~35_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G16|ALT_INV_Prod~35_combout\,
	datad => \G16|ALT_INV_Add8~21_sumout\,
	datae => \G16|ALT_INV_Add7~21_sumout\,
	combout => \G16|Prod~36_combout\);

\G16|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~17_sumout\ = SUM(( \G16|Prod~36_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~14\ ))
-- \G16|Add10~18\ = CARRY(( \G16|Prod~36_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~36_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add10~14\,
	sumout => \G16|Add10~17_sumout\,
	cout => \G16|Add10~18\);

\G16|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~17_sumout\ = SUM(( \G16|Prod~36_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add9~14\ ))
-- \G16|Add9~18\ = CARRY(( \G16|Prod~36_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~36_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add9~14\,
	sumout => \G16|Add9~17_sumout\,
	cout => \G16|Add9~18\);

\G16|Prod~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~37_combout\ = ( \G16|Add9~17_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~36_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~17_sumout\))))) # (\G14|SAIDA\(3) & ((!\G14|SAIDA\(4)) # ((\G16|Prod~36_combout\)))) ) ) # ( 
-- !\G16|Add9~17_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~36_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~17_sumout\))))) # (\G14|SAIDA\(3) & (\G14|SAIDA\(4) & (\G16|Prod~36_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G16|ALT_INV_Prod~36_combout\,
	datad => \G16|ALT_INV_Add10~17_sumout\,
	datae => \G16|ALT_INV_Add9~17_sumout\,
	combout => \G16|Prod~37_combout\);

\G16|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~13_sumout\ = SUM(( \G16|Prod~37_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~10\ ))
-- \G16|Add12~14\ = CARRY(( \G16|Prod~37_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~37_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add12~10\,
	sumout => \G16|Add12~13_sumout\,
	cout => \G16|Add12~14\);

\G16|Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~13_sumout\ = SUM(( \G16|Prod~37_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add11~10\ ))
-- \G16|Add11~14\ = CARRY(( \G16|Prod~37_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~37_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add11~10\,
	sumout => \G16|Add11~13_sumout\,
	cout => \G16|Add11~14\);

\G16|Prod~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~38_combout\ = ( \G16|Add11~13_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~37_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~13_sumout\))))) # (\G14|SAIDA\(4) & ((!\G14|SAIDA\(5)) # ((\G16|Prod~37_combout\)))) ) ) # ( 
-- !\G16|Add11~13_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~37_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~13_sumout\))))) # (\G14|SAIDA\(4) & (\G14|SAIDA\(5) & (\G16|Prod~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G16|ALT_INV_Prod~37_combout\,
	datad => \G16|ALT_INV_Add12~13_sumout\,
	datae => \G16|ALT_INV_Add11~13_sumout\,
	combout => \G16|Prod~38_combout\);

\G16|Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~9_sumout\ = SUM(( \G16|Prod~38_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add14~6\ ))
-- \G16|Add14~10\ = CARRY(( \G16|Prod~38_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~38_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add14~6\,
	sumout => \G16|Add14~9_sumout\,
	cout => \G16|Add14~10\);

\G16|Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~9_sumout\ = SUM(( \G16|Prod~38_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add13~6\ ))
-- \G16|Add13~10\ = CARRY(( \G16|Prod~38_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~38_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add13~6\,
	sumout => \G16|Add13~9_sumout\,
	cout => \G16|Add13~10\);

\G16|Prod~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~39_combout\ = ( \G16|Add13~9_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~38_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~9_sumout\))))) # (\G14|SAIDA\(5) & ((!\G14|SAIDA\(6)) # ((\G16|Prod~38_combout\)))) ) ) # ( 
-- !\G16|Add13~9_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~38_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~9_sumout\))))) # (\G14|SAIDA\(5) & (\G14|SAIDA\(6) & (\G16|Prod~38_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G16|ALT_INV_Prod~38_combout\,
	datad => \G16|ALT_INV_Add14~9_sumout\,
	datae => \G16|ALT_INV_Add13~9_sumout\,
	combout => \G16|Prod~39_combout\);

\G16|Add15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~5_sumout\ = SUM(( \G16|Prod~39_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add15~2\ ))
-- \G16|Add15~6\ = CARRY(( \G16|Prod~39_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G16|Add15~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~39_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add15~2\,
	sumout => \G16|Add15~5_sumout\,
	cout => \G16|Add15~6\);

\G16|Add16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~5_sumout\ = SUM(( \G16|Prod~39_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add16~2\ ))
-- \G16|Add16~6\ = CARRY(( \G16|Prod~39_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~2_combout\))) ) + ( \G16|Add16~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G16|ALT_INV_Prod~39_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add16~2\,
	sumout => \G16|Add16~5_sumout\,
	cout => \G16|Add16~6\);

\G16|Saida_to_Dados[8]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[8]~48_combout\ = ( \G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add16~5_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Prod~39_combout\ ) 
-- ) ) # ( \G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add15~5_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Splitter~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~14_combout\,
	datab => \G16|ALT_INV_Add15~5_sumout\,
	datac => \G16|ALT_INV_Prod~39_combout\,
	datad => \G16|ALT_INV_Add16~5_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~43_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~44_combout\,
	combout => \G16|Saida_to_Dados[8]~48_combout\);

\G16|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~33_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(8)))) ) + ( !\G14|SAIDA\(8) ) + ( \G16|Add1~30\ ))
-- \G16|Add1~34\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(8)))) ) + ( !\G14|SAIDA\(8) ) + ( \G16|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(8),
	dataf => \G14|ALT_INV_SAIDA\(8),
	cin => \G16|Add1~30\,
	sumout => \G16|Add1~33_sumout\,
	cout => \G16|Add1~34\);

\G18|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~14_combout\ = ( \G16|Saida_to_Dados[13]~47_combout\ & ( (!\G14|SAIDA\(8) & ((!\G18|SAIDA\(8)) # (!\G7|Mux15~2_combout\))) ) ) # ( !\G16|Saida_to_Dados[13]~47_combout\ & ( !\G16|Add1~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110011001000100011110000111100001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(8),
	datab => \G14|ALT_INV_SAIDA\(8),
	datac => \G16|ALT_INV_Add1~33_sumout\,
	datad => \G7|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~47_combout\,
	combout => \G18|SAIDA~14_combout\);

\G18|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~11_combout\ = (!\G4|Mux8~0_combout\ & (!\G4|Mux9~0_combout\ & (!\G4|Mux7~1_combout\ & \G16|Saida_to_Dados[13]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[13]~0_combout\,
	combout => \G18|SAIDA~11_combout\);

\G7|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][8]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(8),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][8]~combout\,
	combout => \G7|Mux23~0_combout\);

\G7|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux23~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][8]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][8]~combout\,
	datad => \G7|ALT_INV_Mux23~0_combout\,
	combout => \G7|Mux23~1_combout\);

\G7|Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~2_combout\ = (!\G18|SAIDA\(8) & (!\G7|Mux20~1_combout\ & ((\G7|Mux23~1_combout\)))) # (\G18|SAIDA\(8) & (((!\G7|Mux20~1_combout\ & \G7|Mux23~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(8),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux23~1_combout\,
	combout => \G7|Mux23~2_combout\);

\G7|Reg[3][9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][9]~combout\ = ( \G7|Reg[3][9]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(9) ) ) ) # ( !\G7|Reg[3][9]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(9) ) ) ) # ( \G7|Reg[3][9]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(9),
	datae => \G7|ALT_INV_Reg[3][9]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][9]~combout\);

\G7|Reg[2][9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][9]~combout\ = ( \G7|Reg[2][9]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(9) ) ) ) # ( !\G7|Reg[2][9]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(9) ) ) ) # ( \G7|Reg[2][9]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(9),
	datae => \G7|ALT_INV_Reg[2][9]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][9]~combout\);

\G14|SAIDA~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~34_combout\ = ( \G7|Reg[2][9]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][9]~combout\))) ) ) ) # ( !\G7|Reg[2][9]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][9]~combout\)))) ) ) ) # ( \G7|Reg[2][9]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][9]~combout\)))) ) ) ) # ( !\G7|Reg[2][9]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][9]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][9]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][9]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~34_combout\);

\G14|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~15_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~34_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~34_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(9)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~34_combout\ & ( (\G18|SAIDA\(9) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~34_combout\ & ( (\G18|SAIDA\(9) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(9),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~34_combout\,
	combout => \G14|SAIDA~15_combout\);

\G14|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(9) = ( \G14|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~15_combout\ ) ) ) # ( !\G14|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~15_combout\ ) ) ) # ( \G14|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~15_combout\,
	datae => \G14|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(9));

\G16|Splitter~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~15_combout\ = (\G18|SAIDA\(9) & (\G14|SAIDA\(9) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(9),
	datab => \G14|ALT_INV_SAIDA\(9),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~15_combout\);

\G16|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~29_sumout\ = SUM(( \G16|Prod~34_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(7)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~34_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add6~26\,
	sumout => \G16|Add6~29_sumout\);

\G16|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~29_sumout\ = SUM(( \G16|Prod~34_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(7)))) ) + ( \G16|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~34_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add5~26\,
	sumout => \G16|Add5~29_sumout\);

\G16|Prod~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~40_combout\ = ( \G16|Add5~29_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~34_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~29_sumout\))))) # (\G14|SAIDA\(1) & ((!\G14|SAIDA\(2)) # ((\G16|Prod~34_combout\)))) ) ) # ( 
-- !\G16|Add5~29_sumout\ & ( (!\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & (\G16|Prod~34_combout\)) # (\G14|SAIDA\(2) & ((\G16|Add6~29_sumout\))))) # (\G14|SAIDA\(1) & (\G14|SAIDA\(2) & (\G16|Prod~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G16|ALT_INV_Prod~34_combout\,
	datad => \G16|ALT_INV_Add6~29_sumout\,
	datae => \G16|ALT_INV_Add5~29_sumout\,
	combout => \G16|Prod~40_combout\);

\G16|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~25_sumout\ = SUM(( \G16|Prod~40_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~22\ ))
-- \G16|Add8~26\ = CARRY(( \G16|Prod~40_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~40_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add8~22\,
	sumout => \G16|Add8~25_sumout\,
	cout => \G16|Add8~26\);

\G16|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~25_sumout\ = SUM(( \G16|Prod~40_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add7~22\ ))
-- \G16|Add7~26\ = CARRY(( \G16|Prod~40_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~40_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add7~22\,
	sumout => \G16|Add7~25_sumout\,
	cout => \G16|Add7~26\);

\G16|Prod~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~41_combout\ = ( \G16|Add7~25_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~40_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~25_sumout\))))) # (\G14|SAIDA\(2) & ((!\G14|SAIDA\(3)) # ((\G16|Prod~40_combout\)))) ) ) # ( 
-- !\G16|Add7~25_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~40_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~25_sumout\))))) # (\G14|SAIDA\(2) & (\G14|SAIDA\(3) & (\G16|Prod~40_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G16|ALT_INV_Prod~40_combout\,
	datad => \G16|ALT_INV_Add8~25_sumout\,
	datae => \G16|ALT_INV_Add7~25_sumout\,
	combout => \G16|Prod~41_combout\);

\G16|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~21_sumout\ = SUM(( \G16|Prod~41_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~18\ ))
-- \G16|Add10~22\ = CARRY(( \G16|Prod~41_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~41_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add10~18\,
	sumout => \G16|Add10~21_sumout\,
	cout => \G16|Add10~22\);

\G16|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~21_sumout\ = SUM(( \G16|Prod~41_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add9~18\ ))
-- \G16|Add9~22\ = CARRY(( \G16|Prod~41_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~41_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add9~18\,
	sumout => \G16|Add9~21_sumout\,
	cout => \G16|Add9~22\);

\G16|Prod~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~42_combout\ = ( \G16|Add9~21_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~41_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~21_sumout\))))) # (\G14|SAIDA\(3) & ((!\G14|SAIDA\(4)) # ((\G16|Prod~41_combout\)))) ) ) # ( 
-- !\G16|Add9~21_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~41_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~21_sumout\))))) # (\G14|SAIDA\(3) & (\G14|SAIDA\(4) & (\G16|Prod~41_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G16|ALT_INV_Prod~41_combout\,
	datad => \G16|ALT_INV_Add10~21_sumout\,
	datae => \G16|ALT_INV_Add9~21_sumout\,
	combout => \G16|Prod~42_combout\);

\G16|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~17_sumout\ = SUM(( \G16|Prod~42_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~14\ ))
-- \G16|Add12~18\ = CARRY(( \G16|Prod~42_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~42_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add12~14\,
	sumout => \G16|Add12~17_sumout\,
	cout => \G16|Add12~18\);

\G16|Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~17_sumout\ = SUM(( \G16|Prod~42_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add11~14\ ))
-- \G16|Add11~18\ = CARRY(( \G16|Prod~42_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~42_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add11~14\,
	sumout => \G16|Add11~17_sumout\,
	cout => \G16|Add11~18\);

\G16|Prod~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~43_combout\ = ( \G16|Add11~17_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~42_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~17_sumout\))))) # (\G14|SAIDA\(4) & ((!\G14|SAIDA\(5)) # ((\G16|Prod~42_combout\)))) ) ) # ( 
-- !\G16|Add11~17_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~42_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~17_sumout\))))) # (\G14|SAIDA\(4) & (\G14|SAIDA\(5) & (\G16|Prod~42_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G16|ALT_INV_Prod~42_combout\,
	datad => \G16|ALT_INV_Add12~17_sumout\,
	datae => \G16|ALT_INV_Add11~17_sumout\,
	combout => \G16|Prod~43_combout\);

\G16|Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~13_sumout\ = SUM(( \G16|Prod~43_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~10\ ))
-- \G16|Add14~14\ = CARRY(( \G16|Prod~43_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~43_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add14~10\,
	sumout => \G16|Add14~13_sumout\,
	cout => \G16|Add14~14\);

\G16|Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~13_sumout\ = SUM(( \G16|Prod~43_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add13~10\ ))
-- \G16|Add13~14\ = CARRY(( \G16|Prod~43_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~43_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add13~10\,
	sumout => \G16|Add13~13_sumout\,
	cout => \G16|Add13~14\);

\G16|Prod~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~44_combout\ = ( \G16|Add13~13_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~43_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~13_sumout\))))) # (\G14|SAIDA\(5) & ((!\G14|SAIDA\(6)) # ((\G16|Prod~43_combout\)))) ) ) # ( 
-- !\G16|Add13~13_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~43_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~13_sumout\))))) # (\G14|SAIDA\(5) & (\G14|SAIDA\(6) & (\G16|Prod~43_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G16|ALT_INV_Prod~43_combout\,
	datad => \G16|ALT_INV_Add14~13_sumout\,
	datae => \G16|ALT_INV_Add13~13_sumout\,
	combout => \G16|Prod~44_combout\);

\G16|Add15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~9_sumout\ = SUM(( \G16|Prod~44_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add15~6\ ))
-- \G16|Add15~10\ = CARRY(( \G16|Prod~44_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((\G18|SAIDA\(2)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add15~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~44_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add15~6\,
	sumout => \G16|Add15~9_sumout\,
	cout => \G16|Add15~10\);

\G16|Add16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~9_sumout\ = SUM(( \G16|Prod~44_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add16~6\ ))
-- \G16|Add16~10\ = CARRY(( \G16|Prod~44_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & !\G18|SAIDA\(2))) ) + ( \G16|Add16~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Prod~44_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add16~6\,
	sumout => \G16|Add16~9_sumout\,
	cout => \G16|Add16~10\);

\G16|Saida_to_Dados[9]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[9]~49_combout\ = ( \G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add16~9_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Prod~44_combout\ ) 
-- ) ) # ( \G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add15~9_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Splitter~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~15_combout\,
	datab => \G16|ALT_INV_Add15~9_sumout\,
	datac => \G16|ALT_INV_Prod~44_combout\,
	datad => \G16|ALT_INV_Add16~9_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~43_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~44_combout\,
	combout => \G16|Saida_to_Dados[9]~49_combout\);

\G16|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~37_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(9)))) ) + ( !\G14|SAIDA\(9) ) + ( \G16|Add1~34\ ))
-- \G16|Add1~38\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(9)))) ) + ( !\G14|SAIDA\(9) ) + ( \G16|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(9),
	dataf => \G14|ALT_INV_SAIDA\(9),
	cin => \G16|Add1~34\,
	sumout => \G16|Add1~37_sumout\,
	cout => \G16|Add1~38\);

\G18|SAIDA~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~17_combout\ = ( \G16|Saida_to_Dados[13]~47_combout\ & ( (!\G14|SAIDA\(9) & ((!\G18|SAIDA\(9)) # (!\G7|Mux15~2_combout\))) ) ) # ( !\G16|Saida_to_Dados[13]~47_combout\ & ( !\G16|Add1~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110011001000100011110000111100001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(9),
	datab => \G14|ALT_INV_SAIDA\(9),
	datac => \G16|ALT_INV_Add1~37_sumout\,
	datad => \G7|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~47_combout\,
	combout => \G18|SAIDA~17_combout\);

\G7|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][9]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(9),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][9]~combout\,
	combout => \G7|Mux22~0_combout\);

\G7|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux22~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][9]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][9]~combout\,
	datad => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G7|Mux22~1_combout\);

\G7|Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~2_combout\ = (!\G18|SAIDA\(9) & (!\G7|Mux20~1_combout\ & ((\G7|Mux22~1_combout\)))) # (\G18|SAIDA\(9) & (((!\G7|Mux20~1_combout\ & \G7|Mux22~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(9),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux22~1_combout\,
	combout => \G7|Mux22~2_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\G18|SAIDA~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~18_combout\ = (!\G4|Equal0~0_combout\ & (((\G16|Add0~37_sumout\ & \G18|SAIDA~11_combout\)) # (\G17|RAM_rtl_0|auto_generated|ram_block1a9~portbdataout\))) # (\G4|Equal0~0_combout\ & (\G16|Add0~37_sumout\ & (\G18|SAIDA~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~37_sumout\,
	datac => \G18|ALT_INV_SAIDA~11_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portbdataout\,
	combout => \G18|SAIDA~18_combout\);

\G18|SAIDA~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~19_combout\ = ( \G18|SAIDA~18_combout\ ) # ( !\G18|SAIDA~18_combout\ & ( (!\G18|SAIDA~8_combout\ & (\G18|SAIDA~10_combout\ & ((!\G18|SAIDA~17_combout\)))) # (\G18|SAIDA~8_combout\ & (((\G18|SAIDA~10_combout\ & !\G18|SAIDA~17_combout\)) # 
-- (\G16|Saida_to_Dados[9]~49_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101111111111111111100110111000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~8_combout\,
	datab => \G18|ALT_INV_SAIDA~10_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[9]~49_combout\,
	datad => \G18|ALT_INV_SAIDA~17_combout\,
	datae => \G18|ALT_INV_SAIDA~18_combout\,
	combout => \G18|SAIDA~19_combout\);

\G18|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(9) = ( \G18|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~19_combout\ ) ) ) # ( !\G18|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~19_combout\ ) ) ) # ( \G18|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~19_combout\,
	datae => \G18|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(9));

\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G14|SAIDA\(1) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~1_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~2_combout\)))) ) + ( \G14|SAIDA\(1) ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~2_combout\,
	datad => \G7|ALT_INV_Reg~1_combout\,
	dataf => \G14|ALT_INV_SAIDA\(1),
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # (((!\G7|Mux15~4_combout\) # (\G18|SAIDA\(2))) # (\G5|Mux6~0_combout\)) ) + ( \G14|SAIDA\(2) ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( (!\Clock_Sistema~input_o\) # (((!\G7|Mux15~4_combout\) # (\G18|SAIDA\(2))) # (\G5|Mux6~0_combout\)) ) + ( \G14|SAIDA\(2) ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(2),
	datad => \G7|ALT_INV_Mux15~4_combout\,
	dataf => \G14|ALT_INV_SAIDA\(2),
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(3) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(3) ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(3) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(3) ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(3),
	datad => \G7|ALT_INV_Mux15~4_combout\,
	dataf => \G14|ALT_INV_SAIDA\(3),
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(4) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(4) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(4) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(4) ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(4),
	datad => \G7|ALT_INV_Mux15~4_combout\,
	dataf => \G14|ALT_INV_SAIDA\(4),
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(5) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(5) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(5) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(5) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(5),
	datad => \G7|ALT_INV_Mux15~4_combout\,
	dataf => \G14|ALT_INV_SAIDA\(5),
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(6) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(6) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(6) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(6) ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(6),
	datad => \G7|ALT_INV_Mux15~4_combout\,
	dataf => \G14|ALT_INV_SAIDA\(6),
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(7) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(7) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA\(7) & \G7|Mux15~4_combout\))) ) + ( \G14|SAIDA\(7) ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(7),
	datad => \G7|ALT_INV_Mux15~4_combout\,
	dataf => \G14|ALT_INV_SAIDA\(7),
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(8)))) ) + ( \G14|SAIDA\(8) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(8)))) ) + ( \G14|SAIDA\(8) ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(8),
	dataf => \G14|ALT_INV_SAIDA\(8),
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(9)))) ) + ( \G14|SAIDA\(9) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(9)))) ) + ( \G14|SAIDA\(9) ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(9),
	dataf => \G14|ALT_INV_SAIDA\(9),
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

\G7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux6~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(9),
	combout => \G7|Mux6~0_combout\);

\G16|Splitter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~1_combout\ = (\G7|Mux6~0_combout\ & \G14|SAIDA\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux6~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(9),
	combout => \G16|Splitter~1_combout\);

\G16|Saida_to_Dados[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~2_combout\ = (!\G4|funct[0]~0_combout\ & (!\G14|SAIDA\(6) $ (!\G14|SAIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[0]~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G14|ALT_INV_SAIDA\(7),
	combout => \G16|Saida_to_Dados[13]~2_combout\);

\G16|Saida_to_Dados[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~3_combout\ = (!\G4|funct[0]~0_combout\ & ((!\G14|SAIDA\(6)) # (\G14|SAIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[0]~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G14|ALT_INV_SAIDA\(7),
	combout => \G16|Saida_to_Dados[13]~3_combout\);

\G16|Saida_to_Dados[9]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[9]~14_combout\ = ( \G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add16~9_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Prod~44_combout\ ) ) ) 
-- # ( \G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add15~9_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Splitter~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~1_combout\,
	datab => \G16|ALT_INV_Add15~9_sumout\,
	datac => \G16|ALT_INV_Prod~44_combout\,
	datad => \G16|ALT_INV_Add16~9_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~2_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~3_combout\,
	combout => \G16|Saida_to_Dados[9]~14_combout\);

\G16|Saida_to_Dados[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~8_combout\ = (\G16|Saida_to_Dados[13]~1_combout\ & \G16|Saida_to_Dados[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[13]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~5_combout\,
	combout => \G16|Saida_to_Dados[7]~8_combout\);

\G16|Saida_to_Dados[9]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[9]~15_combout\ = ( \G16|Add1~37_sumout\ & ( (\G16|Saida_to_Dados[7]~8_combout\ & (((!\G16|Saida_to_Dados[13]~6_combout\) # (\G14|SAIDA\(9))) # (\G7|Mux6~0_combout\))) ) ) # ( !\G16|Add1~37_sumout\ & ( 
-- (\G16|Saida_to_Dados[13]~6_combout\ & (\G16|Saida_to_Dados[7]~8_combout\ & ((\G14|SAIDA\(9)) # (\G7|Mux6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000011010000111100000001000000110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux6~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~6_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~8_combout\,
	datad => \G14|ALT_INV_SAIDA\(9),
	datae => \G16|ALT_INV_Add1~37_sumout\,
	combout => \G16|Saida_to_Dados[9]~15_combout\);

\G16|Saida_to_Dados[9]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[9]~16_combout\ = ( \G16|Saida_to_Dados[9]~15_combout\ ) # ( !\G16|Saida_to_Dados[9]~15_combout\ & ( (!\G16|Saida_to_Dados[13]~1_combout\ & (((\G16|Saida_to_Dados[7]~7_combout\ & \G16|Saida_to_Dados[9]~14_combout\)) # 
-- (\G16|Add0~37_sumout\))) # (\G16|Saida_to_Dados[13]~1_combout\ & (\G16|Saida_to_Dados[7]~7_combout\ & ((\G16|Saida_to_Dados[9]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111011111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[13]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~7_combout\,
	datac => \G16|ALT_INV_Add0~37_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[9]~14_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[9]~15_combout\,
	combout => \G16|Saida_to_Dados[9]~16_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\G18|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~15_combout\ = (!\G4|Equal0~0_combout\ & (((\G16|Add0~33_sumout\ & \G18|SAIDA~11_combout\)) # (\G17|RAM_rtl_0|auto_generated|ram_block1a8~portbdataout\))) # (\G4|Equal0~0_combout\ & (\G16|Add0~33_sumout\ & (\G18|SAIDA~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~33_sumout\,
	datac => \G18|ALT_INV_SAIDA~11_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portbdataout\,
	combout => \G18|SAIDA~15_combout\);

\G18|SAIDA~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~16_combout\ = ( \G18|SAIDA~15_combout\ ) # ( !\G18|SAIDA~15_combout\ & ( (!\G18|SAIDA~8_combout\ & (\G18|SAIDA~10_combout\ & ((!\G18|SAIDA~14_combout\)))) # (\G18|SAIDA~8_combout\ & (((\G18|SAIDA~10_combout\ & !\G18|SAIDA~14_combout\)) # 
-- (\G16|Saida_to_Dados[8]~48_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101111111111111111100110111000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~8_combout\,
	datab => \G18|ALT_INV_SAIDA~10_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[8]~48_combout\,
	datad => \G18|ALT_INV_SAIDA~14_combout\,
	datae => \G18|ALT_INV_SAIDA~15_combout\,
	combout => \G18|SAIDA~16_combout\);

\G18|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(8) = ( \G18|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~16_combout\ ) ) ) # ( !\G18|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~16_combout\ ) ) ) # ( \G18|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~16_combout\,
	datae => \G18|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(8));

\G7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux7~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(8),
	combout => \G7|Mux7~0_combout\);

\G16|Splitter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~0_combout\ = (\G7|Mux7~0_combout\ & \G14|SAIDA\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux7~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(8),
	combout => \G16|Splitter~0_combout\);

\G16|Saida_to_Dados[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[8]~11_combout\ = ( \G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add16~5_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Prod~39_combout\ ) ) ) 
-- # ( \G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add15~5_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Splitter~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~0_combout\,
	datab => \G16|ALT_INV_Add15~5_sumout\,
	datac => \G16|ALT_INV_Prod~39_combout\,
	datad => \G16|ALT_INV_Add16~5_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~2_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~3_combout\,
	combout => \G16|Saida_to_Dados[8]~11_combout\);

\G16|Saida_to_Dados[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[8]~12_combout\ = ( \G16|Add1~33_sumout\ & ( (\G16|Saida_to_Dados[7]~8_combout\ & (((!\G16|Saida_to_Dados[13]~6_combout\) # (\G14|SAIDA\(8))) # (\G7|Mux7~0_combout\))) ) ) # ( !\G16|Add1~33_sumout\ & ( 
-- (\G16|Saida_to_Dados[13]~6_combout\ & (\G16|Saida_to_Dados[7]~8_combout\ & ((\G14|SAIDA\(8)) # (\G7|Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000011010000111100000001000000110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux7~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~6_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~8_combout\,
	datad => \G14|ALT_INV_SAIDA\(8),
	datae => \G16|ALT_INV_Add1~33_sumout\,
	combout => \G16|Saida_to_Dados[8]~12_combout\);

\G16|Saida_to_Dados[8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[8]~13_combout\ = ( \G16|Saida_to_Dados[8]~12_combout\ ) # ( !\G16|Saida_to_Dados[8]~12_combout\ & ( (!\G16|Saida_to_Dados[13]~1_combout\ & (((\G16|Saida_to_Dados[7]~7_combout\ & \G16|Saida_to_Dados[8]~11_combout\)) # 
-- (\G16|Add0~33_sumout\))) # (\G16|Saida_to_Dados[13]~1_combout\ & (\G16|Saida_to_Dados[7]~7_combout\ & ((\G16|Saida_to_Dados[8]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111011111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[13]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~7_combout\,
	datac => \G16|ALT_INV_Add0~33_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[8]~11_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[8]~12_combout\,
	combout => \G16|Saida_to_Dados[8]~13_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\G18|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~12_combout\ = (!\G4|Equal0~0_combout\ & (((\G16|Add0~29_sumout\ & \G18|SAIDA~11_combout\)) # (\G17|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\))) # (\G4|Equal0~0_combout\ & (\G16|Add0~29_sumout\ & ((\G18|SAIDA~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111011000010100011101100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~29_sumout\,
	datac => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	datad => \G18|ALT_INV_SAIDA~11_combout\,
	combout => \G18|SAIDA~12_combout\);

\G18|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~13_combout\ = ( \G18|SAIDA~12_combout\ ) # ( !\G18|SAIDA~12_combout\ & ( (!\G16|Saida_to_Dados[7]~45_combout\ & (((!\G18|SAIDA~9_combout\ & \G18|SAIDA~10_combout\)))) # (\G16|Saida_to_Dados[7]~45_combout\ & (((!\G18|SAIDA~9_combout\ & 
-- \G18|SAIDA~10_combout\)) # (\G18|SAIDA~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110001111111111111111100010001111100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[7]~45_combout\,
	datab => \G18|ALT_INV_SAIDA~8_combout\,
	datac => \G18|ALT_INV_SAIDA~9_combout\,
	datad => \G18|ALT_INV_SAIDA~10_combout\,
	datae => \G18|ALT_INV_SAIDA~12_combout\,
	combout => \G18|SAIDA~13_combout\);

\G18|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(7) = ( \G18|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~13_combout\ ) ) ) # ( !\G18|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~13_combout\ ) ) ) # ( \G18|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~13_combout\,
	datae => \G18|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(7));

\G7|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux8~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(7),
	combout => \G7|Mux8~0_combout\);

\G16|Saida_to_Dados[7]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~56_combout\ = ( !\G4|funct[0]~0_combout\ & ( (!\G14|SAIDA\(7) & (((!\G14|SAIDA\(6) & (\G16|Prod~33_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add15~1_sumout\)))))) # (\G14|SAIDA\(7) & ((!\G14|SAIDA\(6) & (\G16|Add16~1_sumout\)) # 
-- (\G14|SAIDA\(6) & (((\G16|Prod~33_combout\)))))) ) ) # ( \G4|funct[0]~0_combout\ & ( (\G14|SAIDA\(7) & (((\G7|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000010110101000001010000010100011010101111110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(7),
	datab => \G16|ALT_INV_Add16~1_sumout\,
	datac => \G7|ALT_INV_Mux8~0_combout\,
	datad => \G16|ALT_INV_Prod~33_combout\,
	datae => \G4|ALT_INV_funct[0]~0_combout\,
	dataf => \G16|ALT_INV_Add15~1_sumout\,
	datag => \G14|ALT_INV_SAIDA\(6),
	combout => \G16|Saida_to_Dados[7]~56_combout\);

\G16|Saida_to_Dados[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~9_combout\ = ( \G16|Saida_to_Dados[7]~8_combout\ & ( (!\G16|Saida_to_Dados[13]~6_combout\ & (((\G16|Add1~29_sumout\)))) # (\G16|Saida_to_Dados[13]~6_combout\ & (((\G14|SAIDA\(7))) # (\G7|Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001111111011100000000000000000000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux8~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(7),
	datac => \G16|ALT_INV_Saida_to_Dados[13]~6_combout\,
	datad => \G16|ALT_INV_Add1~29_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[7]~8_combout\,
	combout => \G16|Saida_to_Dados[7]~9_combout\);

\G16|Saida_to_Dados[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~10_combout\ = ( \G16|Saida_to_Dados[7]~9_combout\ ) # ( !\G16|Saida_to_Dados[7]~9_combout\ & ( (!\G16|Add0~29_sumout\ & (((\G16|Saida_to_Dados[7]~56_combout\ & \G16|Saida_to_Dados[7]~7_combout\)))) # (\G16|Add0~29_sumout\ & 
-- ((!\G16|Saida_to_Dados[13]~1_combout\) # ((\G16|Saida_to_Dados[7]~56_combout\ & \G16|Saida_to_Dados[7]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001111111111111111111101000100010011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~29_sumout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~1_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~56_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[7]~7_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	combout => \G16|Saida_to_Dados[7]~10_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\G16|Prod~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~26_combout\ = ( \G16|Add14~1_sumout\ & ( (!\G14|SAIDA\(5) & (((\G16|Prod~25_combout\)) # (\G14|SAIDA\(6)))) # (\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & ((\G16|Add13~1_sumout\))) # (\G14|SAIDA\(6) & (\G16|Prod~25_combout\)))) ) ) # ( 
-- !\G16|Add14~1_sumout\ & ( (!\G14|SAIDA\(5) & (!\G14|SAIDA\(6) & (\G16|Prod~25_combout\))) # (\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & ((\G16|Add13~1_sumout\))) # (\G14|SAIDA\(6) & (\G16|Prod~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101001101001010110110111100001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G16|ALT_INV_Prod~25_combout\,
	datad => \G16|ALT_INV_Add13~1_sumout\,
	datae => \G16|ALT_INV_Add14~1_sumout\,
	combout => \G16|Prod~26_combout\);

\G16|Splitter~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~12_combout\ = (\G18|SAIDA\(6) & (\G14|SAIDA\(6) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(6),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~12_combout\);

\G16|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~1_combout\ = ( \G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Splitter~12_combout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Prod~26_combout\ ) ) ) # ( \G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( 
-- \G16|Add1~25_sumout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( \G16|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~25_sumout\,
	datab => \G16|ALT_INV_Add1~25_sumout\,
	datac => \G16|ALT_INV_Prod~26_combout\,
	datad => \G16|ALT_INV_Splitter~12_combout\,
	datae => \G4|ALT_INV_funct[0]~2_combout\,
	dataf => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G16|Mux9~1_combout\);

\G16|Saida_to_Dados[15]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~42_combout\ = (\G4|Equal0~0_combout\ & (!\G4|Mux0~2_combout\ & (!\G4|Mux2~0_combout\ & \G4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux2~0_combout\,
	datad => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G16|Saida_to_Dados[15]~42_combout\);

\G16|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~2_combout\ = (\G16|Saida_to_Dados[15]~42_combout\ & (((\G18|SAIDA\(6) & \G7|Mux15~2_combout\)) # (\G14|SAIDA\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110111000000000011011100000000001101110000000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(6),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[15]~42_combout\,
	combout => \G16|Mux9~2_combout\);

\G18|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~6_combout\ = ( \G16|Mux9~1_combout\ & ( \G16|Mux9~2_combout\ & ( (!\G4|Equal0~0_combout\ & ((\G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\))) # (\G4|Equal0~0_combout\ & (!\G16|process_0~1_combout\)) ) ) ) # ( !\G16|Mux9~1_combout\ & 
-- ( \G16|Mux9~2_combout\ & ( (!\G4|Equal0~0_combout\ & ((\G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\))) # (\G4|Equal0~0_combout\ & (!\G16|process_0~1_combout\)) ) ) ) # ( \G16|Mux9~1_combout\ & ( !\G16|Mux9~2_combout\ & ( 
-- (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\)))) # (\G4|Equal0~0_combout\ & (!\G4|Mux1~0_combout\ & (!\G16|process_0~1_combout\))) ) ) ) # ( !\G16|Mux9~1_combout\ & ( !\G16|Mux9~2_combout\ & ( 
-- (!\G4|Equal0~0_combout\ & \G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010000001110101001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_Mux1~0_combout\,
	datac => \G16|ALT_INV_process_0~1_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	datae => \G16|ALT_INV_Mux9~1_combout\,
	dataf => \G16|ALT_INV_Mux9~2_combout\,
	combout => \G18|SAIDA~6_combout\);

\G18|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(6) = ( \G18|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~6_combout\ ) ) ) # ( !\G18|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~6_combout\ ) ) ) # ( \G18|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~6_combout\,
	datae => \G18|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(6));

\G7|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux9~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(6),
	combout => \G7|Mux9~0_combout\);

\G16|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~3_combout\ = ( !\G4|rd[0]~0_combout\ & ( ((!\G4|funct[0]~0_combout\ & (\G16|Add0~25_sumout\)) # (\G4|funct[0]~0_combout\ & (((\G16|Add1~25_sumout\))))) ) ) # ( \G4|rd[0]~0_combout\ & ( (!\G4|funct[0]~0_combout\ & ((((\G16|Prod~26_combout\))))) # 
-- (\G4|funct[0]~0_combout\ & (\G7|Mux9~0_combout\ & (\G14|SAIDA\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux9~0_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G14|ALT_INV_SAIDA\(6),
	datad => \G16|ALT_INV_Prod~26_combout\,
	datae => \G4|ALT_INV_rd[0]~0_combout\,
	dataf => \G16|ALT_INV_Add1~25_sumout\,
	datag => \G16|ALT_INV_Add0~25_sumout\,
	combout => \G16|Mux9~3_combout\);

\G16|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~0_combout\ = ( \G16|Mux9~3_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & (!\G4|funct[2]~1_combout\))) # (\G16|process_0~0_combout\ & (((\G16|Add0~25_sumout\)))) ) ) # ( !\G16|Mux9~3_combout\ & ( (\G16|process_0~0_combout\ & 
-- \G16|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010000000100111100000000000011110100000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_funct[2]~1_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add0~25_sumout\,
	datae => \G16|ALT_INV_Mux9~3_combout\,
	combout => \G16|Mux9~0_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\G4|funct[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[2]~3_combout\ = (\G4|Equal0~0_combout\ & \G4|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G4|funct[2]~3_combout\);

\G16|Prod~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~19_combout\ = ( \G16|Add12~1_sumout\ & ( (!\G14|SAIDA\(4) & (((\G16|Prod~18_combout\)) # (\G14|SAIDA\(5)))) # (\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & ((\G16|Add11~1_sumout\))) # (\G14|SAIDA\(5) & (\G16|Prod~18_combout\)))) ) ) # ( 
-- !\G16|Add12~1_sumout\ & ( (!\G14|SAIDA\(4) & (!\G14|SAIDA\(5) & (\G16|Prod~18_combout\))) # (\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & ((\G16|Add11~1_sumout\))) # (\G14|SAIDA\(5) & (\G16|Prod~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101001101001010110110111100001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G16|ALT_INV_Prod~18_combout\,
	datad => \G16|ALT_INV_Add11~1_sumout\,
	datae => \G16|ALT_INV_Add12~1_sumout\,
	combout => \G16|Prod~19_combout\);

\G16|Splitter~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~11_combout\ = (\G18|SAIDA\(5) & (\G14|SAIDA\(5) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~11_combout\);

\G16|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~1_combout\ = ( \G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Splitter~11_combout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Prod~19_combout\ ) ) ) # ( \G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( 
-- \G16|Add1~21_sumout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( \G16|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~21_sumout\,
	datab => \G16|ALT_INV_Add1~21_sumout\,
	datac => \G16|ALT_INV_Prod~19_combout\,
	datad => \G16|ALT_INV_Splitter~11_combout\,
	datae => \G4|ALT_INV_funct[0]~2_combout\,
	dataf => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G16|Mux10~1_combout\);

\G16|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~2_combout\ = ( \G16|Saida_to_Dados[15]~42_combout\ & ( \G16|Mux10~1_combout\ & ( ((!\G4|funct[2]~3_combout\) # ((\G18|SAIDA\(5) & \G7|Mux15~2_combout\))) # (\G14|SAIDA\(5)) ) ) ) # ( !\G16|Saida_to_Dados[15]~42_combout\ & ( 
-- \G16|Mux10~1_combout\ & ( !\G4|funct[2]~3_combout\ ) ) ) # ( \G16|Saida_to_Dados[15]~42_combout\ & ( !\G16|Mux10~1_combout\ & ( ((\G18|SAIDA\(5) & \G7|Mux15~2_combout\)) # (\G14|SAIDA\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110011011111111111000000001111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	datad => \G4|ALT_INV_funct[2]~3_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[15]~42_combout\,
	dataf => \G16|ALT_INV_Mux10~1_combout\,
	combout => \G16|Mux10~2_combout\);

\G18|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~5_combout\ = ( \G16|Mux10~2_combout\ & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\)))) # (\G4|Equal0~0_combout\ & (((!\G16|process_0~1_combout\)) # (\G16|Add0~21_sumout\))) ) ) # ( 
-- !\G16|Mux10~2_combout\ & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\)))) # (\G4|Equal0~0_combout\ & (\G16|Add0~21_sumout\ & (\G16|process_0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~21_sumout\,
	datac => \G16|ALT_INV_process_0~1_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	datae => \G16|ALT_INV_Mux10~2_combout\,
	combout => \G18|SAIDA~5_combout\);

\G18|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(5) = ( \G18|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~5_combout\ ) ) ) # ( !\G18|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~5_combout\ ) ) ) # ( \G18|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~5_combout\,
	datae => \G18|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(5));

\G7|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux10~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(5),
	combout => \G7|Mux10~0_combout\);

\G16|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~3_combout\ = ( !\G4|rd[0]~0_combout\ & ( ((!\G4|funct[0]~0_combout\ & (\G16|Add0~21_sumout\)) # (\G4|funct[0]~0_combout\ & (((\G16|Add1~21_sumout\))))) ) ) # ( \G4|rd[0]~0_combout\ & ( (!\G4|funct[0]~0_combout\ & ((((\G16|Prod~19_combout\))))) 
-- # (\G4|funct[0]~0_combout\ & (\G7|Mux10~0_combout\ & (\G14|SAIDA\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux10~0_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G14|ALT_INV_SAIDA\(5),
	datad => \G16|ALT_INV_Prod~19_combout\,
	datae => \G4|ALT_INV_rd[0]~0_combout\,
	dataf => \G16|ALT_INV_Add1~21_sumout\,
	datag => \G16|ALT_INV_Add0~21_sumout\,
	combout => \G16|Mux10~3_combout\);

\G16|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~0_combout\ = ( \G16|Mux10~3_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & (!\G4|funct[2]~1_combout\))) # (\G16|process_0~0_combout\ & (((\G16|Add0~21_sumout\)))) ) ) # ( !\G16|Mux10~3_combout\ & ( (\G16|process_0~0_combout\ 
-- & \G16|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010000000100111100000000000011110100000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_funct[2]~1_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add0~21_sumout\,
	datae => \G16|ALT_INV_Mux10~3_combout\,
	combout => \G16|Mux10~0_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\G16|Prod~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~13_combout\ = ( \G16|Add10~1_sumout\ & ( (!\G14|SAIDA\(3) & (((\G16|Prod~12_combout\)) # (\G14|SAIDA\(4)))) # (\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & ((\G16|Add9~1_sumout\))) # (\G14|SAIDA\(4) & (\G16|Prod~12_combout\)))) ) ) # ( 
-- !\G16|Add10~1_sumout\ & ( (!\G14|SAIDA\(3) & (!\G14|SAIDA\(4) & (\G16|Prod~12_combout\))) # (\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & ((\G16|Add9~1_sumout\))) # (\G14|SAIDA\(4) & (\G16|Prod~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101001101001010110110111100001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G16|ALT_INV_Prod~12_combout\,
	datad => \G16|ALT_INV_Add9~1_sumout\,
	datae => \G16|ALT_INV_Add10~1_sumout\,
	combout => \G16|Prod~13_combout\);

\G16|Splitter~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~10_combout\ = (\G18|SAIDA\(4) & (\G14|SAIDA\(4) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~10_combout\);

\G16|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~1_combout\ = ( \G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Splitter~10_combout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Prod~13_combout\ ) ) ) # ( \G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( 
-- \G16|Add1~17_sumout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( \G16|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~17_sumout\,
	datab => \G16|ALT_INV_Add1~17_sumout\,
	datac => \G16|ALT_INV_Prod~13_combout\,
	datad => \G16|ALT_INV_Splitter~10_combout\,
	datae => \G4|ALT_INV_funct[0]~2_combout\,
	dataf => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G16|Mux11~1_combout\);

\G16|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~2_combout\ = ( \G16|Saida_to_Dados[15]~42_combout\ & ( \G16|Mux11~1_combout\ & ( ((!\G4|funct[2]~3_combout\) # ((\G18|SAIDA\(4) & \G7|Mux15~2_combout\))) # (\G14|SAIDA\(4)) ) ) ) # ( !\G16|Saida_to_Dados[15]~42_combout\ & ( 
-- \G16|Mux11~1_combout\ & ( !\G4|funct[2]~3_combout\ ) ) ) # ( \G16|Saida_to_Dados[15]~42_combout\ & ( !\G16|Mux11~1_combout\ & ( ((\G18|SAIDA\(4) & \G7|Mux15~2_combout\)) # (\G14|SAIDA\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110011011111111111000000001111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	datad => \G4|ALT_INV_funct[2]~3_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[15]~42_combout\,
	dataf => \G16|ALT_INV_Mux11~1_combout\,
	combout => \G16|Mux11~2_combout\);

\G18|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~4_combout\ = ( \G16|Mux11~2_combout\ & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\)))) # (\G4|Equal0~0_combout\ & (((!\G16|process_0~1_combout\)) # (\G16|Add0~17_sumout\))) ) ) # ( 
-- !\G16|Mux11~2_combout\ & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\)))) # (\G4|Equal0~0_combout\ & (\G16|Add0~17_sumout\ & (\G16|process_0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~17_sumout\,
	datac => \G16|ALT_INV_process_0~1_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	datae => \G16|ALT_INV_Mux11~2_combout\,
	combout => \G18|SAIDA~4_combout\);

\G18|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(4) = ( \G18|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~4_combout\ ) ) ) # ( !\G18|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~4_combout\ ) ) ) # ( \G18|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~4_combout\,
	datae => \G18|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(4));

\G7|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux11~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(4),
	combout => \G7|Mux11~0_combout\);

\G16|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~3_combout\ = ( !\G4|rd[0]~0_combout\ & ( ((!\G4|funct[0]~0_combout\ & (\G16|Add0~17_sumout\)) # (\G4|funct[0]~0_combout\ & (((\G16|Add1~17_sumout\))))) ) ) # ( \G4|rd[0]~0_combout\ & ( (!\G4|funct[0]~0_combout\ & ((((\G16|Prod~13_combout\))))) 
-- # (\G4|funct[0]~0_combout\ & (\G7|Mux11~0_combout\ & (\G14|SAIDA\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux11~0_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G14|ALT_INV_SAIDA\(4),
	datad => \G16|ALT_INV_Prod~13_combout\,
	datae => \G4|ALT_INV_rd[0]~0_combout\,
	dataf => \G16|ALT_INV_Add1~17_sumout\,
	datag => \G16|ALT_INV_Add0~17_sumout\,
	combout => \G16|Mux11~3_combout\);

\G16|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~0_combout\ = ( \G16|Mux11~3_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & (!\G4|funct[2]~1_combout\))) # (\G16|process_0~0_combout\ & (((\G16|Add0~17_sumout\)))) ) ) # ( !\G16|Mux11~3_combout\ & ( (\G16|process_0~0_combout\ 
-- & \G16|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010000000100111100000000000011110100000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_funct[2]~1_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add0~17_sumout\,
	datae => \G16|ALT_INV_Mux11~3_combout\,
	combout => \G16|Mux11~0_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\G16|Prod~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~8_combout\ = ( \G16|Add8~1_sumout\ & ( (!\G14|SAIDA\(2) & (((\G16|Prod~7_combout\)) # (\G14|SAIDA\(3)))) # (\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & ((\G16|Add7~1_sumout\))) # (\G14|SAIDA\(3) & (\G16|Prod~7_combout\)))) ) ) # ( !\G16|Add8~1_sumout\ 
-- & ( (!\G14|SAIDA\(2) & (!\G14|SAIDA\(3) & (\G16|Prod~7_combout\))) # (\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & ((\G16|Add7~1_sumout\))) # (\G14|SAIDA\(3) & (\G16|Prod~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101001101001010110110111100001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G16|ALT_INV_Prod~7_combout\,
	datad => \G16|ALT_INV_Add7~1_sumout\,
	datae => \G16|ALT_INV_Add8~1_sumout\,
	combout => \G16|Prod~8_combout\);

\G16|Splitter~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~9_combout\ = (\G18|SAIDA\(3) & (\G14|SAIDA\(3) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~9_combout\);

\G16|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~2_combout\ = ( \G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Splitter~9_combout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Prod~8_combout\ ) ) ) # ( \G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( 
-- \G16|Add1~13_sumout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( \G16|Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~13_sumout\,
	datab => \G16|ALT_INV_Add1~13_sumout\,
	datac => \G16|ALT_INV_Prod~8_combout\,
	datad => \G16|ALT_INV_Splitter~9_combout\,
	datae => \G4|ALT_INV_funct[0]~2_combout\,
	dataf => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G16|Mux12~2_combout\);

\G16|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~3_combout\ = ( \G16|Saida_to_Dados[15]~42_combout\ & ( \G16|Mux12~2_combout\ & ( ((!\G4|funct[2]~3_combout\) # ((\G18|SAIDA\(3) & \G7|Mux15~2_combout\))) # (\G14|SAIDA\(3)) ) ) ) # ( !\G16|Saida_to_Dados[15]~42_combout\ & ( 
-- \G16|Mux12~2_combout\ & ( !\G4|funct[2]~3_combout\ ) ) ) # ( \G16|Saida_to_Dados[15]~42_combout\ & ( !\G16|Mux12~2_combout\ & ( ((\G18|SAIDA\(3) & \G7|Mux15~2_combout\)) # (\G14|SAIDA\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110011011111111111000000001111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	datad => \G4|ALT_INV_funct[2]~3_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[15]~42_combout\,
	dataf => \G16|ALT_INV_Mux12~2_combout\,
	combout => \G16|Mux12~3_combout\);

\G18|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~3_combout\ = ( \G16|Mux12~3_combout\ & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\)))) # (\G4|Equal0~0_combout\ & (((!\G16|process_0~1_combout\)) # (\G16|Add0~13_sumout\))) ) ) # ( 
-- !\G16|Mux12~3_combout\ & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\)))) # (\G4|Equal0~0_combout\ & (\G16|Add0~13_sumout\ & (\G16|process_0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~13_sumout\,
	datac => \G16|ALT_INV_process_0~1_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	datae => \G16|ALT_INV_Mux12~3_combout\,
	combout => \G18|SAIDA~3_combout\);

\G18|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(3) = ( \G18|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~3_combout\ ) ) ) # ( !\G18|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~3_combout\ ) ) ) # ( \G18|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~3_combout\,
	datae => \G18|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(3));

\G7|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux12~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(3),
	combout => \G7|Mux12~0_combout\);

\G16|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~4_combout\ = ( !\G4|rd[0]~0_combout\ & ( ((!\G4|funct[0]~0_combout\ & (\G16|Add0~13_sumout\)) # (\G4|funct[0]~0_combout\ & (((\G16|Add1~13_sumout\))))) ) ) # ( \G4|rd[0]~0_combout\ & ( (!\G4|funct[0]~0_combout\ & ((((\G16|Prod~8_combout\))))) # 
-- (\G4|funct[0]~0_combout\ & (\G7|Mux12~0_combout\ & (\G14|SAIDA\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux12~0_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G14|ALT_INV_SAIDA\(3),
	datad => \G16|ALT_INV_Prod~8_combout\,
	datae => \G4|ALT_INV_rd[0]~0_combout\,
	dataf => \G16|ALT_INV_Add1~13_sumout\,
	datag => \G16|ALT_INV_Add0~13_sumout\,
	combout => \G16|Mux12~4_combout\);

\G16|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~0_combout\ = ( \G16|Mux12~4_combout\ & ( !\G4|funct[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_funct[2]~1_combout\,
	datae => \G16|ALT_INV_Mux12~4_combout\,
	combout => \G16|Mux12~0_combout\);

\G16|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~1_combout\ = (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & ((\G16|Mux12~0_combout\)))) # (\G16|process_0~0_combout\ & (((\G16|Add0~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011100000011010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	datac => \G16|ALT_INV_Add0~13_sumout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	combout => \G16|Mux12~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\G16|Prod~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~4_combout\ = ( \G16|Add6~1_sumout\ & ( (!\G14|SAIDA\(1) & (((\G16|Prod~3_combout\)) # (\G14|SAIDA\(2)))) # (\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & ((\G16|Add5~1_sumout\))) # (\G14|SAIDA\(2) & (\G16|Prod~3_combout\)))) ) ) # ( !\G16|Add6~1_sumout\ 
-- & ( (!\G14|SAIDA\(1) & (!\G14|SAIDA\(2) & (\G16|Prod~3_combout\))) # (\G14|SAIDA\(1) & ((!\G14|SAIDA\(2) & ((\G16|Add5~1_sumout\))) # (\G14|SAIDA\(2) & (\G16|Prod~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101001101001010110110111100001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G16|ALT_INV_Prod~3_combout\,
	datad => \G16|ALT_INV_Add5~1_sumout\,
	datae => \G16|ALT_INV_Add6~1_sumout\,
	combout => \G16|Prod~4_combout\);

\G16|Splitter~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~8_combout\ = (\G14|SAIDA\(2) & ((!\G7|Mux15~2_combout\) # (\G18|SAIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~8_combout\);

\G16|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~2_combout\ = ( \G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Splitter~8_combout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Prod~4_combout\ ) ) ) # ( \G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( 
-- \G16|Add1~9_sumout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( \G16|Add0~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~9_sumout\,
	datab => \G16|ALT_INV_Add1~9_sumout\,
	datac => \G16|ALT_INV_Prod~4_combout\,
	datad => \G16|ALT_INV_Splitter~8_combout\,
	datae => \G4|ALT_INV_funct[0]~2_combout\,
	dataf => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G16|Mux13~2_combout\);

\G16|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~3_combout\ = ( \G16|Saida_to_Dados[15]~42_combout\ & ( \G16|Mux13~2_combout\ & ( (!\G18|SAIDA\(2) & (!\G14|SAIDA\(2) & (\G7|Mux15~2_combout\ & \G4|funct[2]~3_combout\))) ) ) ) # ( !\G16|Saida_to_Dados[15]~42_combout\ & ( \G16|Mux13~2_combout\ & 
-- ( \G4|funct[2]~3_combout\ ) ) ) # ( \G16|Saida_to_Dados[15]~42_combout\ & ( !\G16|Mux13~2_combout\ & ( (!\G18|SAIDA\(2) & (!\G14|SAIDA\(2) & \G7|Mux15~2_combout\)) ) ) ) # ( !\G16|Saida_to_Dados[15]~42_combout\ & ( !\G16|Mux13~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000010000000100000000000111111110000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	datad => \G4|ALT_INV_funct[2]~3_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[15]~42_combout\,
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	combout => \G16|Mux13~3_combout\);

\G18|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~2_combout\ = ( \G16|Mux13~3_combout\ & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\)))) # (\G4|Equal0~0_combout\ & (\G16|Add0~9_sumout\ & (\G16|process_0~1_combout\))) ) ) # ( !\G16|Mux13~3_combout\ & 
-- ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\)))) # (\G4|Equal0~0_combout\ & (((!\G16|process_0~1_combout\)) # (\G16|Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000111111011000000011010101101010001111110110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~9_sumout\,
	datac => \G16|ALT_INV_process_0~1_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	datae => \G16|ALT_INV_Mux13~3_combout\,
	combout => \G18|SAIDA~2_combout\);

\G18|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(2) = ( \G18|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~2_combout\ ) ) ) # ( !\G18|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~2_combout\ ) ) ) # ( \G18|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~2_combout\,
	datae => \G18|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(2));

\G7|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux13~0_combout\ = (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(2)) # (\G7|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(2),
	combout => \G7|Mux13~0_combout\);

\G16|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~4_combout\ = ( !\G4|rd[0]~0_combout\ & ( ((!\G4|funct[0]~0_combout\ & (\G16|Add0~9_sumout\)) # (\G4|funct[0]~0_combout\ & (((\G16|Add1~9_sumout\))))) ) ) # ( \G4|rd[0]~0_combout\ & ( (!\G4|funct[0]~0_combout\ & ((((\G16|Prod~4_combout\))))) # 
-- (\G4|funct[0]~0_combout\ & (\G7|Mux13~0_combout\ & (\G14|SAIDA\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux13~0_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G14|ALT_INV_SAIDA\(2),
	datad => \G16|ALT_INV_Prod~4_combout\,
	datae => \G4|ALT_INV_rd[0]~0_combout\,
	dataf => \G16|ALT_INV_Add1~9_sumout\,
	datag => \G16|ALT_INV_Add0~9_sumout\,
	combout => \G16|Mux13~4_combout\);

\G16|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~0_combout\ = ( \G16|Mux13~4_combout\ & ( !\G4|funct[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_funct[2]~1_combout\,
	datae => \G16|ALT_INV_Mux13~4_combout\,
	combout => \G16|Mux13~0_combout\);

\G16|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~1_combout\ = (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & ((\G16|Mux13~0_combout\)))) # (\G16|process_0~0_combout\ & (((\G16|Add0~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011100000011010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	datac => \G16|ALT_INV_Add0~9_sumout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	combout => \G16|Mux13~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\G7|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux14~2_combout\ = (!\G18|SAIDA\(1) & (\G4|rd[0]~1_combout\ & (!\G7|Reg~3_combout\))) # (\G18|SAIDA\(1) & (((\G7|Reg~4_combout\)) # (\G4|rd[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000101110101001100010111010100110001011101010011000101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(1),
	datab => \G4|ALT_INV_rd[0]~1_combout\,
	datac => \G7|ALT_INV_Reg~3_combout\,
	datad => \G7|ALT_INV_Reg~4_combout\,
	combout => \G7|Mux14~2_combout\);

\G16|Prod~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~2_combout\ = ( \G16|Add4~1_sumout\ & ( (!\G14|SAIDA\(0) & (\G14|SAIDA\(1))) # (\G14|SAIDA\(0) & ((!\G14|SAIDA\(1) & (\G16|Add3~1_sumout\)) # (\G14|SAIDA\(1) & ((\G16|Prod~1_combout\))))) ) ) # ( !\G16|Add4~1_sumout\ & ( (!\G14|SAIDA\(1) & 
-- (\G14|SAIDA\(0) & (\G16|Add3~1_sumout\))) # (\G14|SAIDA\(1) & (((\G16|Prod~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111001001100011011100000100001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G16|ALT_INV_Add3~1_sumout\,
	datad => \G16|ALT_INV_Prod~1_combout\,
	datae => \G16|ALT_INV_Add4~1_sumout\,
	combout => \G16|Prod~2_combout\);

\G16|Splitter~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~7_combout\ = (\G14|SAIDA\(1) & \G7|Mux14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G7|ALT_INV_Mux14~2_combout\,
	combout => \G16|Splitter~7_combout\);

\G16|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~2_combout\ = ( \G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Splitter~7_combout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Prod~2_combout\ ) ) ) # ( \G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( 
-- \G16|Add1~5_sumout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( \G16|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~5_sumout\,
	datab => \G16|ALT_INV_Add1~5_sumout\,
	datac => \G16|ALT_INV_Prod~2_combout\,
	datad => \G16|ALT_INV_Splitter~7_combout\,
	datae => \G4|ALT_INV_funct[0]~2_combout\,
	dataf => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G16|Mux14~2_combout\);

\G16|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~3_combout\ = ( \G16|Mux14~2_combout\ & ( (\G4|funct[2]~3_combout\ & ((!\G16|Saida_to_Dados[15]~42_combout\) # ((!\G14|SAIDA\(1) & !\G7|Mux14~2_combout\)))) ) ) # ( !\G16|Mux14~2_combout\ & ( (!\G16|Saida_to_Dados[15]~42_combout\) # 
-- ((!\G14|SAIDA\(1) & !\G7|Mux14~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000001100100011000011111010111100000011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(1),
	datab => \G4|ALT_INV_funct[2]~3_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~42_combout\,
	datad => \G7|ALT_INV_Mux14~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	combout => \G16|Mux14~3_combout\);

\G18|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~1_combout\ = ( \G16|Mux14~3_combout\ & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\)))) # (\G4|Equal0~0_combout\ & (\G16|Add0~5_sumout\ & (\G16|process_0~1_combout\))) ) ) # ( !\G16|Mux14~3_combout\ & 
-- ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\)))) # (\G4|Equal0~0_combout\ & (((!\G16|process_0~1_combout\)) # (\G16|Add0~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000111111011000000011010101101010001111110110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~5_sumout\,
	datac => \G16|ALT_INV_process_0~1_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	datae => \G16|ALT_INV_Mux14~3_combout\,
	combout => \G18|SAIDA~1_combout\);

\G18|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(1) = ( \G18|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~1_combout\ ) ) ) # ( !\G18|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~1_combout\ ) ) ) # ( \G18|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~1_combout\,
	datae => \G18|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(1));

\G7|Reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~2_combout\ = ( \G18|SAIDA\(1) ) # ( !\G18|SAIDA\(1) & ( (!\G6|SAIDA[0]~0_combout\) # ((\G5|Mux6~0_combout\) # (\G6|SAIDA[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111111111111111111111001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G5|ALT_INV_Mux6~0_combout\,
	datae => \G18|ALT_INV_SAIDA\(1),
	combout => \G7|Reg~2_combout\);

\G7|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux14~1_combout\ = (\Clock_Sistema~input_o\ & \G7|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux14~0_combout\,
	combout => \G7|Mux14~1_combout\);

\G16|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~4_combout\ = ( !\G4|rd[0]~0_combout\ & ( ((!\G4|funct[0]~0_combout\ & (\G16|Add0~5_sumout\)) # (\G4|funct[0]~0_combout\ & (((\G16|Add1~5_sumout\))))) ) ) # ( \G4|rd[0]~0_combout\ & ( (!\G4|funct[0]~0_combout\ & ((((\G16|Prod~2_combout\))))) # 
-- (\G4|funct[0]~0_combout\ & (\G7|Mux14~1_combout\ & (\G14|SAIDA\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000011100110100111111001111110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux14~1_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G14|ALT_INV_SAIDA\(1),
	datad => \G16|ALT_INV_Prod~2_combout\,
	datae => \G4|ALT_INV_rd[0]~0_combout\,
	dataf => \G16|ALT_INV_Add1~5_sumout\,
	datag => \G16|ALT_INV_Add0~5_sumout\,
	combout => \G16|Mux14~4_combout\);

\G16|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~0_combout\ = ( \G16|Mux14~4_combout\ & ( !\G4|funct[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_funct[2]~1_combout\,
	datae => \G16|ALT_INV_Mux14~4_combout\,
	combout => \G16|Mux14~0_combout\);

\G16|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~1_combout\ = (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & ((\G16|Mux14~0_combout\)))) # (\G16|process_0~0_combout\ & (((\G16|Add0~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011100000011010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	datac => \G16|ALT_INV_Add0~5_sumout\,
	datad => \G16|ALT_INV_Mux14~0_combout\,
	combout => \G16|Mux14~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\G16|Prod~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~0_combout\ = (\G14|SAIDA\(0) & \G16|Add2~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(0),
	datab => \G16|ALT_INV_Add2~1_sumout\,
	combout => \G16|Prod~0_combout\);

\G16|Splitter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~6_combout\ = (\G14|SAIDA\(0) & ((!\G7|Mux15~2_combout\) # (\G18|SAIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~6_combout\);

\G16|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~2_combout\ = ( \G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Splitter~6_combout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( \G4|rd[0]~1_combout\ & ( \G16|Prod~0_combout\ ) ) ) # ( \G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( 
-- \G16|Add1~1_sumout\ ) ) ) # ( !\G4|funct[0]~2_combout\ & ( !\G4|rd[0]~1_combout\ & ( \G16|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~1_sumout\,
	datab => \G16|ALT_INV_Add1~1_sumout\,
	datac => \G16|ALT_INV_Prod~0_combout\,
	datad => \G16|ALT_INV_Splitter~6_combout\,
	datae => \G4|ALT_INV_funct[0]~2_combout\,
	dataf => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G16|Mux15~2_combout\);

\G16|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~3_combout\ = ( \G4|funct[2]~3_combout\ & ( \G16|Saida_to_Dados[15]~42_combout\ & ( (!\G18|SAIDA\(0) & (!\G14|SAIDA\(0) & \G7|Mux15~2_combout\)) ) ) ) # ( !\G4|funct[2]~3_combout\ & ( \G16|Saida_to_Dados[15]~42_combout\ & ( (!\G18|SAIDA\(0) & 
-- (!\G14|SAIDA\(0) & (\G7|Mux15~2_combout\ & !\G16|Mux15~2_combout\))) ) ) ) # ( \G4|funct[2]~3_combout\ & ( !\G16|Saida_to_Dados[15]~42_combout\ ) ) # ( !\G4|funct[2]~3_combout\ & ( !\G16|Saida_to_Dados[15]~42_combout\ & ( !\G16|Mux15~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111100001000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \G14|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G4|ALT_INV_funct[2]~3_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[15]~42_combout\,
	combout => \G16|Mux15~3_combout\);

\G18|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~0_combout\ = ( \G16|Mux15~3_combout\ & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (\G4|Equal0~0_combout\ & (\G16|Add0~1_sumout\ & ((\G16|process_0~1_combout\)))) ) ) # ( !\G16|Mux15~3_combout\ 
-- & ( (!\G4|Equal0~0_combout\ & (((\G17|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (\G4|Equal0~0_combout\ & (((!\G16|process_0~1_combout\)) # (\G16|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100011011000010100001101101011111000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~1_sumout\,
	datac => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datad => \G16|ALT_INV_process_0~1_combout\,
	datae => \G16|ALT_INV_Mux15~3_combout\,
	combout => \G18|SAIDA~0_combout\);

\G18|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(0) = ( \G18|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~0_combout\ ) ) ) # ( !\G18|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~0_combout\ ) ) ) # ( \G18|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~0_combout\,
	datae => \G18|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(0));

\G7|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~1_combout\ = ((!\Clock_Sistema~input_o\) # (\G7|Mux15~0_combout\)) # (\G18|SAIDA\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~0_combout\,
	combout => \G7|Mux15~1_combout\);

\G7|Reg[3][10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][10]~combout\ = ( \G7|Reg[3][10]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(10) ) ) ) # ( !\G7|Reg[3][10]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(10) ) ) ) # ( \G7|Reg[3][10]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(10),
	datae => \G7|ALT_INV_Reg[3][10]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][10]~combout\);

\G7|Reg[2][10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][10]~combout\ = ( \G7|Reg[2][10]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(10) ) ) ) # ( !\G7|Reg[2][10]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(10) ) ) ) # ( \G7|Reg[2][10]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(10),
	datae => \G7|ALT_INV_Reg[2][10]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][10]~combout\);

\G14|SAIDA~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~16_combout\ = (!\G7|Mux20~4_combout\ & (\G18|SAIDA\(10) & ((\G7|Reg~3_combout\)))) # (\G7|Mux20~4_combout\ & (((\G7|Reg[2][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011100000011010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(10),
	datab => \G7|ALT_INV_Mux20~4_combout\,
	datac => \G7|ALT_INV_Reg[2][10]~combout\,
	datad => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~16_combout\);

\G14|SAIDA~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~17_combout\ = (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G14|SAIDA~16_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][10]~combout\,
	datad => \G14|ALT_INV_SAIDA~16_combout\,
	combout => \G14|SAIDA~17_combout\);

\G14|SAIDA~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~18_combout\ = (!\G16|process_0~1_combout\ & (((\G18|SAIDA\(10) & \G14|SAIDA~4_combout\)) # (\G14|SAIDA~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001100000001001100110000000100110011000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(10),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G14|ALT_INV_SAIDA~17_combout\,
	combout => \G14|SAIDA~18_combout\);

\G14|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(10) = ( \G14|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~18_combout\ ) ) ) # ( !\G14|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~18_combout\ ) ) ) # ( \G14|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~18_combout\,
	datae => \G14|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(10));

\G16|Splitter~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~16_combout\ = (\G18|SAIDA\(10) & (\G14|SAIDA\(10) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(10),
	datab => \G14|ALT_INV_SAIDA\(10),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~16_combout\);

\G16|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~29_sumout\ = SUM(( \G16|Prod~40_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(7)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~40_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add8~26\,
	sumout => \G16|Add8~29_sumout\);

\G16|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~29_sumout\ = SUM(( \G16|Prod~40_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(7)))) ) + ( \G16|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~40_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add7~26\,
	sumout => \G16|Add7~29_sumout\);

\G16|Prod~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~45_combout\ = ( \G16|Add7~29_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~40_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~29_sumout\))))) # (\G14|SAIDA\(2) & ((!\G14|SAIDA\(3)) # ((\G16|Prod~40_combout\)))) ) ) # ( 
-- !\G16|Add7~29_sumout\ & ( (!\G14|SAIDA\(2) & ((!\G14|SAIDA\(3) & (\G16|Prod~40_combout\)) # (\G14|SAIDA\(3) & ((\G16|Add8~29_sumout\))))) # (\G14|SAIDA\(2) & (\G14|SAIDA\(3) & (\G16|Prod~40_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G14|ALT_INV_SAIDA\(3),
	datac => \G16|ALT_INV_Prod~40_combout\,
	datad => \G16|ALT_INV_Add8~29_sumout\,
	datae => \G16|ALT_INV_Add7~29_sumout\,
	combout => \G16|Prod~45_combout\);

\G16|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~25_sumout\ = SUM(( \G16|Prod~45_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~22\ ))
-- \G16|Add10~26\ = CARRY(( \G16|Prod~45_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~45_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add10~22\,
	sumout => \G16|Add10~25_sumout\,
	cout => \G16|Add10~26\);

\G16|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~25_sumout\ = SUM(( \G16|Prod~45_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add9~22\ ))
-- \G16|Add9~26\ = CARRY(( \G16|Prod~45_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~45_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add9~22\,
	sumout => \G16|Add9~25_sumout\,
	cout => \G16|Add9~26\);

\G16|Prod~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~46_combout\ = ( \G16|Add9~25_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~45_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~25_sumout\))))) # (\G14|SAIDA\(3) & ((!\G14|SAIDA\(4)) # ((\G16|Prod~45_combout\)))) ) ) # ( 
-- !\G16|Add9~25_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~45_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~25_sumout\))))) # (\G14|SAIDA\(3) & (\G14|SAIDA\(4) & (\G16|Prod~45_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G16|ALT_INV_Prod~45_combout\,
	datad => \G16|ALT_INV_Add10~25_sumout\,
	datae => \G16|ALT_INV_Add9~25_sumout\,
	combout => \G16|Prod~46_combout\);

\G16|Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~21_sumout\ = SUM(( \G16|Prod~46_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~18\ ))
-- \G16|Add12~22\ = CARRY(( \G16|Prod~46_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~46_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add12~18\,
	sumout => \G16|Add12~21_sumout\,
	cout => \G16|Add12~22\);

\G16|Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~21_sumout\ = SUM(( \G16|Prod~46_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add11~18\ ))
-- \G16|Add11~22\ = CARRY(( \G16|Prod~46_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~46_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add11~18\,
	sumout => \G16|Add11~21_sumout\,
	cout => \G16|Add11~22\);

\G16|Prod~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~47_combout\ = ( \G16|Add11~21_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~46_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~21_sumout\))))) # (\G14|SAIDA\(4) & ((!\G14|SAIDA\(5)) # ((\G16|Prod~46_combout\)))) ) ) # ( 
-- !\G16|Add11~21_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~46_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~21_sumout\))))) # (\G14|SAIDA\(4) & (\G14|SAIDA\(5) & (\G16|Prod~46_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G16|ALT_INV_Prod~46_combout\,
	datad => \G16|ALT_INV_Add12~21_sumout\,
	datae => \G16|ALT_INV_Add11~21_sumout\,
	combout => \G16|Prod~47_combout\);

\G16|Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~17_sumout\ = SUM(( \G16|Prod~47_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~14\ ))
-- \G16|Add14~18\ = CARRY(( \G16|Prod~47_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~47_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add14~14\,
	sumout => \G16|Add14~17_sumout\,
	cout => \G16|Add14~18\);

\G16|Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~17_sumout\ = SUM(( \G16|Prod~47_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add13~14\ ))
-- \G16|Add13~18\ = CARRY(( \G16|Prod~47_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~47_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add13~14\,
	sumout => \G16|Add13~17_sumout\,
	cout => \G16|Add13~18\);

\G16|Prod~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~48_combout\ = ( \G16|Add13~17_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~47_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~17_sumout\))))) # (\G14|SAIDA\(5) & ((!\G14|SAIDA\(6)) # ((\G16|Prod~47_combout\)))) ) ) # ( 
-- !\G16|Add13~17_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~47_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~17_sumout\))))) # (\G14|SAIDA\(5) & (\G14|SAIDA\(6) & (\G16|Prod~47_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G16|ALT_INV_Prod~47_combout\,
	datad => \G16|ALT_INV_Add14~17_sumout\,
	datae => \G16|ALT_INV_Add13~17_sumout\,
	combout => \G16|Prod~48_combout\);

\G16|Add15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~13_sumout\ = SUM(( \G16|Prod~48_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add15~10\ ))
-- \G16|Add15~14\ = CARRY(( \G16|Prod~48_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(3)))) ) + ( \G16|Add15~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~48_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add15~10\,
	sumout => \G16|Add15~13_sumout\,
	cout => \G16|Add15~14\);

\G16|Add16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~13_sumout\ = SUM(( \G16|Prod~48_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~10\ ))
-- \G16|Add16~14\ = CARRY(( \G16|Prod~48_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(3)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~48_combout\,
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add16~10\,
	sumout => \G16|Add16~13_sumout\,
	cout => \G16|Add16~14\);

\G16|Saida_to_Dados[10]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~50_combout\ = ( \G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add16~13_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Prod~48_combout\ 
-- ) ) ) # ( \G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add15~13_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Splitter~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~16_combout\,
	datab => \G16|ALT_INV_Add15~13_sumout\,
	datac => \G16|ALT_INV_Prod~48_combout\,
	datad => \G16|ALT_INV_Add16~13_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~43_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~44_combout\,
	combout => \G16|Saida_to_Dados[10]~50_combout\);

\G16|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~41_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(10)))) ) + ( !\G14|SAIDA\(10) ) + ( \G16|Add1~38\ ))
-- \G16|Add1~42\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(10)))) ) + ( !\G14|SAIDA\(10) ) + ( \G16|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(10),
	dataf => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add1~38\,
	sumout => \G16|Add1~41_sumout\,
	cout => \G16|Add1~42\);

\G18|SAIDA~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~20_combout\ = ( \G16|Saida_to_Dados[13]~47_combout\ & ( (!\G14|SAIDA\(10) & ((!\G18|SAIDA\(10)) # (!\G7|Mux15~2_combout\))) ) ) # ( !\G16|Saida_to_Dados[13]~47_combout\ & ( !\G16|Add1~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110011001000100011110000111100001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(10),
	datab => \G14|ALT_INV_SAIDA\(10),
	datac => \G16|ALT_INV_Add1~41_sumout\,
	datad => \G7|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~47_combout\,
	combout => \G18|SAIDA~20_combout\);

\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(10)))) ) + ( \G14|SAIDA\(10) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(10)))) ) + ( \G14|SAIDA\(10) ) + ( \G16|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(10),
	dataf => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

\G7|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][10]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(10))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(10),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][10]~combout\,
	combout => \G7|Mux21~0_combout\);

\G7|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux21~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][10]~combout\,
	datad => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G7|Mux21~1_combout\);

\G7|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~2_combout\ = (!\G18|SAIDA\(10) & (!\G7|Mux20~1_combout\ & ((\G7|Mux21~1_combout\)))) # (\G18|SAIDA\(10) & (((!\G7|Mux20~1_combout\ & \G7|Mux21~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(10),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux21~1_combout\,
	combout => \G7|Mux21~2_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\G18|SAIDA~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~21_combout\ = (!\G4|Equal0~0_combout\ & (((\G16|Add0~41_sumout\ & \G18|SAIDA~11_combout\)) # (\G17|RAM_rtl_0|auto_generated|ram_block1a10~portbdataout\))) # (\G4|Equal0~0_combout\ & (\G16|Add0~41_sumout\ & (\G18|SAIDA~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~41_sumout\,
	datac => \G18|ALT_INV_SAIDA~11_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portbdataout\,
	combout => \G18|SAIDA~21_combout\);

\G18|SAIDA~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~22_combout\ = ( \G18|SAIDA~21_combout\ ) # ( !\G18|SAIDA~21_combout\ & ( (!\G18|SAIDA~8_combout\ & (\G18|SAIDA~10_combout\ & ((!\G18|SAIDA~20_combout\)))) # (\G18|SAIDA~8_combout\ & (((\G18|SAIDA~10_combout\ & !\G18|SAIDA~20_combout\)) # 
-- (\G16|Saida_to_Dados[10]~50_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101111111111111111100110111000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~8_combout\,
	datab => \G18|ALT_INV_SAIDA~10_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[10]~50_combout\,
	datad => \G18|ALT_INV_SAIDA~20_combout\,
	datae => \G18|ALT_INV_SAIDA~21_combout\,
	combout => \G18|SAIDA~22_combout\);

\G18|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(10) = ( \G18|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~22_combout\ ) ) ) # ( !\G18|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~22_combout\ ) ) ) # ( \G18|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~22_combout\,
	datae => \G18|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(10));

\G7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux5~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(10),
	combout => \G7|Mux5~0_combout\);

\G7|Reg[3][11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][11]~combout\ = ( \G7|Reg[3][11]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(11) ) ) ) # ( !\G7|Reg[3][11]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(11) ) ) ) # ( \G7|Reg[3][11]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(11),
	datae => \G7|ALT_INV_Reg[3][11]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][11]~combout\);

\G7|Reg[2][11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][11]~combout\ = ( \G7|Reg[2][11]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(11) ) ) ) # ( !\G7|Reg[2][11]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(11) ) ) ) # ( \G7|Reg[2][11]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(11),
	datae => \G7|ALT_INV_Reg[2][11]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][11]~combout\);

\G14|SAIDA~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~19_combout\ = (!\G7|Mux20~4_combout\ & (\G18|SAIDA\(11) & ((\G7|Reg~3_combout\)))) # (\G7|Mux20~4_combout\ & (((\G7|Reg[2][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011100000011010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(11),
	datab => \G7|ALT_INV_Mux20~4_combout\,
	datac => \G7|ALT_INV_Reg[2][11]~combout\,
	datad => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~19_combout\);

\G14|SAIDA~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~20_combout\ = (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G14|SAIDA~19_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][11]~combout\,
	datad => \G14|ALT_INV_SAIDA~19_combout\,
	combout => \G14|SAIDA~20_combout\);

\G14|SAIDA~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~21_combout\ = (!\G16|process_0~1_combout\ & (((\G18|SAIDA\(11) & \G14|SAIDA~4_combout\)) # (\G14|SAIDA~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001100000001001100110000000100110011000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(11),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G14|ALT_INV_SAIDA~20_combout\,
	combout => \G14|SAIDA~21_combout\);

\G14|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(11) = ( \G14|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~21_combout\ ) ) ) # ( !\G14|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~21_combout\ ) ) ) # ( \G14|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~21_combout\,
	datae => \G14|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(11));

\G16|Splitter~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~17_combout\ = (\G18|SAIDA\(11) & (\G14|SAIDA\(11) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(11),
	datab => \G14|ALT_INV_SAIDA\(11),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~17_combout\);

\G16|Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~29_sumout\ = SUM(( \G16|Prod~45_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(7)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~45_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add10~26\,
	sumout => \G16|Add10~29_sumout\);

\G16|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~29_sumout\ = SUM(( \G16|Prod~45_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(7)))) ) + ( \G16|Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~45_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add9~26\,
	sumout => \G16|Add9~29_sumout\);

\G16|Prod~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~49_combout\ = ( \G16|Add9~29_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~45_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~29_sumout\))))) # (\G14|SAIDA\(3) & ((!\G14|SAIDA\(4)) # ((\G16|Prod~45_combout\)))) ) ) # ( 
-- !\G16|Add9~29_sumout\ & ( (!\G14|SAIDA\(3) & ((!\G14|SAIDA\(4) & (\G16|Prod~45_combout\)) # (\G14|SAIDA\(4) & ((\G16|Add10~29_sumout\))))) # (\G14|SAIDA\(3) & (\G14|SAIDA\(4) & (\G16|Prod~45_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(3),
	datab => \G14|ALT_INV_SAIDA\(4),
	datac => \G16|ALT_INV_Prod~45_combout\,
	datad => \G16|ALT_INV_Add10~29_sumout\,
	datae => \G16|ALT_INV_Add9~29_sumout\,
	combout => \G16|Prod~49_combout\);

\G16|Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~25_sumout\ = SUM(( \G16|Prod~49_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~22\ ))
-- \G16|Add12~26\ = CARRY(( \G16|Prod~49_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~49_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add12~22\,
	sumout => \G16|Add12~25_sumout\,
	cout => \G16|Add12~26\);

\G16|Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~25_sumout\ = SUM(( \G16|Prod~49_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add11~22\ ))
-- \G16|Add11~26\ = CARRY(( \G16|Prod~49_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~49_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add11~22\,
	sumout => \G16|Add11~25_sumout\,
	cout => \G16|Add11~26\);

\G16|Prod~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~50_combout\ = ( \G16|Add11~25_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~49_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~25_sumout\))))) # (\G14|SAIDA\(4) & ((!\G14|SAIDA\(5)) # ((\G16|Prod~49_combout\)))) ) ) # ( 
-- !\G16|Add11~25_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~49_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~25_sumout\))))) # (\G14|SAIDA\(4) & (\G14|SAIDA\(5) & (\G16|Prod~49_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G16|ALT_INV_Prod~49_combout\,
	datad => \G16|ALT_INV_Add12~25_sumout\,
	datae => \G16|ALT_INV_Add11~25_sumout\,
	combout => \G16|Prod~50_combout\);

\G16|Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~21_sumout\ = SUM(( \G16|Prod~50_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~18\ ))
-- \G16|Add14~22\ = CARRY(( \G16|Prod~50_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~50_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add14~18\,
	sumout => \G16|Add14~21_sumout\,
	cout => \G16|Add14~22\);

\G16|Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~21_sumout\ = SUM(( \G16|Prod~50_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add13~18\ ))
-- \G16|Add13~22\ = CARRY(( \G16|Prod~50_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~50_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add13~18\,
	sumout => \G16|Add13~21_sumout\,
	cout => \G16|Add13~22\);

\G16|Prod~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~51_combout\ = ( \G16|Add13~21_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~50_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~21_sumout\))))) # (\G14|SAIDA\(5) & ((!\G14|SAIDA\(6)) # ((\G16|Prod~50_combout\)))) ) ) # ( 
-- !\G16|Add13~21_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~50_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~21_sumout\))))) # (\G14|SAIDA\(5) & (\G14|SAIDA\(6) & (\G16|Prod~50_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G16|ALT_INV_Prod~50_combout\,
	datad => \G16|ALT_INV_Add14~21_sumout\,
	datae => \G16|ALT_INV_Add13~21_sumout\,
	combout => \G16|Prod~51_combout\);

\G16|Add15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~17_sumout\ = SUM(( \G16|Prod~51_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add15~14\ ))
-- \G16|Add15~18\ = CARRY(( \G16|Prod~51_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(4)))) ) + ( \G16|Add15~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~51_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add15~14\,
	sumout => \G16|Add15~17_sumout\,
	cout => \G16|Add15~18\);

\G16|Add16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~17_sumout\ = SUM(( \G16|Prod~51_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~14\ ))
-- \G16|Add16~18\ = CARRY(( \G16|Prod~51_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(4)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~51_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add16~14\,
	sumout => \G16|Add16~17_sumout\,
	cout => \G16|Add16~18\);

\G16|Saida_to_Dados[11]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[11]~51_combout\ = ( \G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add16~17_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Prod~51_combout\ 
-- ) ) ) # ( \G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add15~17_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Splitter~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~17_combout\,
	datab => \G16|ALT_INV_Add15~17_sumout\,
	datac => \G16|ALT_INV_Prod~51_combout\,
	datad => \G16|ALT_INV_Add16~17_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~43_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~44_combout\,
	combout => \G16|Saida_to_Dados[11]~51_combout\);

\G16|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~45_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(11)))) ) + ( !\G14|SAIDA\(11) ) + ( \G16|Add1~42\ ))
-- \G16|Add1~46\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(11)))) ) + ( !\G14|SAIDA\(11) ) + ( \G16|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(11),
	dataf => \G14|ALT_INV_SAIDA\(11),
	cin => \G16|Add1~42\,
	sumout => \G16|Add1~45_sumout\,
	cout => \G16|Add1~46\);

\G18|SAIDA~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~23_combout\ = ( \G16|Saida_to_Dados[13]~47_combout\ & ( (!\G14|SAIDA\(11) & ((!\G18|SAIDA\(11)) # (!\G7|Mux15~2_combout\))) ) ) # ( !\G16|Saida_to_Dados[13]~47_combout\ & ( !\G16|Add1~45_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110011001000100011110000111100001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(11),
	datab => \G14|ALT_INV_SAIDA\(11),
	datac => \G16|ALT_INV_Add1~45_sumout\,
	datad => \G7|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~47_combout\,
	combout => \G18|SAIDA~23_combout\);

\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(11)))) ) + ( \G14|SAIDA\(11) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(11)))) ) + ( \G14|SAIDA\(11) ) + ( \G16|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(11),
	dataf => \G14|ALT_INV_SAIDA\(11),
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

\G7|Mux20~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~6_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][11]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(11))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(11),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][11]~combout\,
	combout => \G7|Mux20~6_combout\);

\G7|Mux20~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~7_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~6_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][11]~combout\,
	datad => \G7|ALT_INV_Mux20~6_combout\,
	combout => \G7|Mux20~7_combout\);

\G7|Mux20~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~8_combout\ = (!\G18|SAIDA\(11) & (!\G7|Mux20~1_combout\ & ((\G7|Mux20~7_combout\)))) # (\G18|SAIDA\(11) & (((!\G7|Mux20~1_combout\ & \G7|Mux20~7_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(11),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux20~7_combout\,
	combout => \G7|Mux20~8_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\G18|SAIDA~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~24_combout\ = (!\G4|Equal0~0_combout\ & (((\G16|Add0~45_sumout\ & \G18|SAIDA~11_combout\)) # (\G17|RAM_rtl_0|auto_generated|ram_block1a11~portbdataout\))) # (\G4|Equal0~0_combout\ & (\G16|Add0~45_sumout\ & (\G18|SAIDA~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~45_sumout\,
	datac => \G18|ALT_INV_SAIDA~11_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portbdataout\,
	combout => \G18|SAIDA~24_combout\);

\G18|SAIDA~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~25_combout\ = ( \G18|SAIDA~24_combout\ ) # ( !\G18|SAIDA~24_combout\ & ( (!\G18|SAIDA~8_combout\ & (\G18|SAIDA~10_combout\ & ((!\G18|SAIDA~23_combout\)))) # (\G18|SAIDA~8_combout\ & (((\G18|SAIDA~10_combout\ & !\G18|SAIDA~23_combout\)) # 
-- (\G16|Saida_to_Dados[11]~51_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101111111111111111100110111000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~8_combout\,
	datab => \G18|ALT_INV_SAIDA~10_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[11]~51_combout\,
	datad => \G18|ALT_INV_SAIDA~23_combout\,
	datae => \G18|ALT_INV_SAIDA~24_combout\,
	combout => \G18|SAIDA~25_combout\);

\G18|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(11) = ( \G18|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~25_combout\ ) ) ) # ( !\G18|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~25_combout\ ) ) ) # ( \G18|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~25_combout\,
	datae => \G18|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(11));

\G7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux4~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(11),
	combout => \G7|Mux4~0_combout\);

\G7|Reg[3][12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][12]~combout\ = ( \G7|Reg[3][12]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(12) ) ) ) # ( !\G7|Reg[3][12]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(12) ) ) ) # ( \G7|Reg[3][12]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(12),
	datae => \G7|ALT_INV_Reg[3][12]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][12]~combout\);

\G7|Reg[2][12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][12]~combout\ = ( \G7|Reg[2][12]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(12) ) ) ) # ( !\G7|Reg[2][12]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(12) ) ) ) # ( \G7|Reg[2][12]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(12),
	datae => \G7|ALT_INV_Reg[2][12]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][12]~combout\);

\G14|SAIDA~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~35_combout\ = ( \G7|Reg[2][12]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][12]~combout\))) ) ) ) # ( !\G7|Reg[2][12]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][12]~combout\)))) ) ) ) # ( \G7|Reg[2][12]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][12]~combout\)))) ) ) ) # ( !\G7|Reg[2][12]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][12]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][12]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][12]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~35_combout\);

\G14|SAIDA~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~22_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~35_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~35_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(12)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~35_combout\ & ( (\G18|SAIDA\(12) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~35_combout\ & ( (\G18|SAIDA\(12) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(12),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~35_combout\,
	combout => \G14|SAIDA~22_combout\);

\G14|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(12) = ( \G14|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~22_combout\ ) ) ) # ( !\G14|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~22_combout\ ) ) ) # ( \G14|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~22_combout\,
	datae => \G14|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(12));

\G16|Splitter~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~18_combout\ = (\G18|SAIDA\(12) & (\G14|SAIDA\(12) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(12),
	datab => \G14|ALT_INV_SAIDA\(12),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~18_combout\);

\G16|Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~29_sumout\ = SUM(( \G16|Prod~49_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(7)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~49_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add12~26\,
	sumout => \G16|Add12~29_sumout\);

\G16|Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~29_sumout\ = SUM(( \G16|Prod~49_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(7)))) ) + ( \G16|Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~49_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add11~26\,
	sumout => \G16|Add11~29_sumout\);

\G16|Prod~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~52_combout\ = ( \G16|Add11~29_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~49_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~29_sumout\))))) # (\G14|SAIDA\(4) & ((!\G14|SAIDA\(5)) # ((\G16|Prod~49_combout\)))) ) ) # ( 
-- !\G16|Add11~29_sumout\ & ( (!\G14|SAIDA\(4) & ((!\G14|SAIDA\(5) & (\G16|Prod~49_combout\)) # (\G14|SAIDA\(5) & ((\G16|Add12~29_sumout\))))) # (\G14|SAIDA\(4) & (\G14|SAIDA\(5) & (\G16|Prod~49_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(5),
	datac => \G16|ALT_INV_Prod~49_combout\,
	datad => \G16|ALT_INV_Add12~29_sumout\,
	datae => \G16|ALT_INV_Add11~29_sumout\,
	combout => \G16|Prod~52_combout\);

\G16|Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~25_sumout\ = SUM(( \G16|Prod~52_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~22\ ))
-- \G16|Add14~26\ = CARRY(( \G16|Prod~52_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~52_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add14~22\,
	sumout => \G16|Add14~25_sumout\,
	cout => \G16|Add14~26\);

\G16|Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~25_sumout\ = SUM(( \G16|Prod~52_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add13~22\ ))
-- \G16|Add13~26\ = CARRY(( \G16|Prod~52_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~52_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add13~22\,
	sumout => \G16|Add13~25_sumout\,
	cout => \G16|Add13~26\);

\G16|Prod~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~53_combout\ = ( \G16|Add13~25_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~52_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~25_sumout\))))) # (\G14|SAIDA\(5) & ((!\G14|SAIDA\(6)) # ((\G16|Prod~52_combout\)))) ) ) # ( 
-- !\G16|Add13~25_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~52_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~25_sumout\))))) # (\G14|SAIDA\(5) & (\G14|SAIDA\(6) & (\G16|Prod~52_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G16|ALT_INV_Prod~52_combout\,
	datad => \G16|ALT_INV_Add14~25_sumout\,
	datae => \G16|ALT_INV_Add13~25_sumout\,
	combout => \G16|Prod~53_combout\);

\G16|Add15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~21_sumout\ = SUM(( \G16|Prod~53_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add15~18\ ))
-- \G16|Add15~22\ = CARRY(( \G16|Prod~53_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(5)))) ) + ( \G16|Add15~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~53_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add15~18\,
	sumout => \G16|Add15~21_sumout\,
	cout => \G16|Add15~22\);

\G16|Add16~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~21_sumout\ = SUM(( \G16|Prod~53_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~18\ ))
-- \G16|Add16~22\ = CARRY(( \G16|Prod~53_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(5)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~53_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add16~18\,
	sumout => \G16|Add16~21_sumout\,
	cout => \G16|Add16~22\);

\G16|Saida_to_Dados[12]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[12]~52_combout\ = ( \G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add16~21_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Prod~53_combout\ 
-- ) ) ) # ( \G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add15~21_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Splitter~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~18_combout\,
	datab => \G16|ALT_INV_Add15~21_sumout\,
	datac => \G16|ALT_INV_Prod~53_combout\,
	datad => \G16|ALT_INV_Add16~21_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~43_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~44_combout\,
	combout => \G16|Saida_to_Dados[12]~52_combout\);

\G16|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~49_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(12)))) ) + ( !\G14|SAIDA\(12) ) + ( \G16|Add1~46\ ))
-- \G16|Add1~50\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(12)))) ) + ( !\G14|SAIDA\(12) ) + ( \G16|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(12),
	dataf => \G14|ALT_INV_SAIDA\(12),
	cin => \G16|Add1~46\,
	sumout => \G16|Add1~49_sumout\,
	cout => \G16|Add1~50\);

\G18|SAIDA~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~26_combout\ = ( \G16|Saida_to_Dados[13]~47_combout\ & ( (!\G14|SAIDA\(12) & ((!\G18|SAIDA\(12)) # (!\G7|Mux15~2_combout\))) ) ) # ( !\G16|Saida_to_Dados[13]~47_combout\ & ( !\G16|Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110011001000100011110000111100001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(12),
	datab => \G14|ALT_INV_SAIDA\(12),
	datac => \G16|ALT_INV_Add1~49_sumout\,
	datad => \G7|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~47_combout\,
	combout => \G18|SAIDA~26_combout\);

\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(12)))) ) + ( \G14|SAIDA\(12) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(12)))) ) + ( \G14|SAIDA\(12) ) + ( \G16|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(12),
	dataf => \G14|ALT_INV_SAIDA\(12),
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

\G7|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][12]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(12),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][12]~combout\,
	combout => \G7|Mux19~0_combout\);

\G7|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux19~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][12]~combout\,
	datad => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G7|Mux19~1_combout\);

\G7|Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~2_combout\ = (!\G18|SAIDA\(12) & (!\G7|Mux20~1_combout\ & ((\G7|Mux19~1_combout\)))) # (\G18|SAIDA\(12) & (((!\G7|Mux20~1_combout\ & \G7|Mux19~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(12),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux19~1_combout\,
	combout => \G7|Mux19~2_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\G18|SAIDA~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~27_combout\ = (!\G4|Equal0~0_combout\ & (((\G16|Add0~49_sumout\ & \G18|SAIDA~11_combout\)) # (\G17|RAM_rtl_0|auto_generated|ram_block1a12~portbdataout\))) # (\G4|Equal0~0_combout\ & (\G16|Add0~49_sumout\ & (\G18|SAIDA~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~49_sumout\,
	datac => \G18|ALT_INV_SAIDA~11_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portbdataout\,
	combout => \G18|SAIDA~27_combout\);

\G18|SAIDA~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~28_combout\ = ( \G18|SAIDA~27_combout\ ) # ( !\G18|SAIDA~27_combout\ & ( (!\G18|SAIDA~8_combout\ & (\G18|SAIDA~10_combout\ & ((!\G18|SAIDA~26_combout\)))) # (\G18|SAIDA~8_combout\ & (((\G18|SAIDA~10_combout\ & !\G18|SAIDA~26_combout\)) # 
-- (\G16|Saida_to_Dados[12]~52_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101111111111111111100110111000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~8_combout\,
	datab => \G18|ALT_INV_SAIDA~10_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[12]~52_combout\,
	datad => \G18|ALT_INV_SAIDA~26_combout\,
	datae => \G18|ALT_INV_SAIDA~27_combout\,
	combout => \G18|SAIDA~28_combout\);

\G18|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(12) = ( \G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~28_combout\ ) ) ) # ( !\G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~28_combout\ ) ) ) # ( \G18|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~28_combout\,
	datae => \G18|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(12));

\G7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux3~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(12),
	combout => \G7|Mux3~0_combout\);

\G7|Reg[3][13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][13]~combout\ = ( \G7|Reg[3][13]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(13) ) ) ) # ( !\G7|Reg[3][13]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(13) ) ) ) # ( \G7|Reg[3][13]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(13),
	datae => \G7|ALT_INV_Reg[3][13]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][13]~combout\);

\G7|Reg[2][13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][13]~combout\ = ( \G7|Reg[2][13]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(13) ) ) ) # ( !\G7|Reg[2][13]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(13) ) ) ) # ( \G7|Reg[2][13]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(13),
	datae => \G7|ALT_INV_Reg[2][13]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][13]~combout\);

\G14|SAIDA~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~36_combout\ = ( \G7|Reg[2][13]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][13]~combout\))) ) ) ) # ( !\G7|Reg[2][13]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][13]~combout\)))) ) ) ) # ( \G7|Reg[2][13]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][13]~combout\)))) ) ) ) # ( !\G7|Reg[2][13]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][13]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][13]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][13]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~36_combout\);

\G14|SAIDA~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~23_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~36_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~36_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(13)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~36_combout\ & ( (\G18|SAIDA\(13) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~36_combout\ & ( (\G18|SAIDA\(13) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(13),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~36_combout\,
	combout => \G14|SAIDA~23_combout\);

\G14|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(13) = ( \G14|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~23_combout\ ) ) ) # ( !\G14|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~23_combout\ ) ) ) # ( \G14|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~23_combout\,
	datae => \G14|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(13));

\G16|Splitter~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~19_combout\ = (\G18|SAIDA\(13) & (\G14|SAIDA\(13) & \G7|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(13),
	datab => \G14|ALT_INV_SAIDA\(13),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Splitter~19_combout\);

\G16|Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~29_sumout\ = SUM(( \G16|Prod~52_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(7)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~52_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add14~26\,
	sumout => \G16|Add14~29_sumout\);

\G16|Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~29_sumout\ = SUM(( \G16|Prod~52_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(7)))) ) + ( \G16|Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~52_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add13~26\,
	sumout => \G16|Add13~29_sumout\);

\G16|Prod~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~54_combout\ = ( \G16|Add13~29_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~52_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~29_sumout\))))) # (\G14|SAIDA\(5) & ((!\G14|SAIDA\(6)) # ((\G16|Prod~52_combout\)))) ) ) # ( 
-- !\G16|Add13~29_sumout\ & ( (!\G14|SAIDA\(5) & ((!\G14|SAIDA\(6) & (\G16|Prod~52_combout\)) # (\G14|SAIDA\(6) & ((\G16|Add14~29_sumout\))))) # (\G14|SAIDA\(5) & (\G14|SAIDA\(6) & (\G16|Prod~52_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(5),
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G16|ALT_INV_Prod~52_combout\,
	datad => \G16|ALT_INV_Add14~29_sumout\,
	datae => \G16|ALT_INV_Add13~29_sumout\,
	combout => \G16|Prod~54_combout\);

\G16|Add15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~25_sumout\ = SUM(( \G16|Prod~54_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add15~22\ ))
-- \G16|Add15~26\ = CARRY(( \G16|Prod~54_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add15~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~54_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add15~22\,
	sumout => \G16|Add15~25_sumout\,
	cout => \G16|Add15~26\);

\G16|Add16~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~25_sumout\ = SUM(( \G16|Prod~54_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~22\ ))
-- \G16|Add16~26\ = CARRY(( \G16|Prod~54_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(6)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~54_combout\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add16~22\,
	sumout => \G16|Add16~25_sumout\,
	cout => \G16|Add16~26\);

\G16|Saida_to_Dados[13]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~53_combout\ = ( \G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add16~25_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( \G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Prod~54_combout\ 
-- ) ) ) # ( \G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Add15~25_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~43_combout\ & ( !\G16|Saida_to_Dados[13]~44_combout\ & ( \G16|Splitter~19_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~19_combout\,
	datab => \G16|ALT_INV_Add15~25_sumout\,
	datac => \G16|ALT_INV_Prod~54_combout\,
	datad => \G16|ALT_INV_Add16~25_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~43_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~44_combout\,
	combout => \G16|Saida_to_Dados[13]~53_combout\);

\G16|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~53_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(13)))) ) + ( !\G14|SAIDA\(13) ) + ( \G16|Add1~50\ ))
-- \G16|Add1~54\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(13)))) ) + ( !\G14|SAIDA\(13) ) + ( \G16|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(13),
	dataf => \G14|ALT_INV_SAIDA\(13),
	cin => \G16|Add1~50\,
	sumout => \G16|Add1~53_sumout\,
	cout => \G16|Add1~54\);

\G18|SAIDA~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~29_combout\ = ( \G16|Saida_to_Dados[13]~47_combout\ & ( (!\G14|SAIDA\(13) & ((!\G18|SAIDA\(13)) # (!\G7|Mux15~2_combout\))) ) ) # ( !\G16|Saida_to_Dados[13]~47_combout\ & ( !\G16|Add1~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110011001000100011110000111100001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(13),
	datab => \G14|ALT_INV_SAIDA\(13),
	datac => \G16|ALT_INV_Add1~53_sumout\,
	datad => \G7|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~47_combout\,
	combout => \G18|SAIDA~29_combout\);

\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(13)))) ) + ( \G14|SAIDA\(13) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(13)))) ) + ( \G14|SAIDA\(13) ) + ( \G16|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(13),
	dataf => \G14|ALT_INV_SAIDA\(13),
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

\G7|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][13]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(13))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(13),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][13]~combout\,
	combout => \G7|Mux18~0_combout\);

\G7|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux18~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][13]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][13]~combout\,
	datad => \G7|ALT_INV_Mux18~0_combout\,
	combout => \G7|Mux18~1_combout\);

\G7|Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~2_combout\ = (!\G18|SAIDA\(13) & (!\G7|Mux20~1_combout\ & ((\G7|Mux18~1_combout\)))) # (\G18|SAIDA\(13) & (((!\G7|Mux20~1_combout\ & \G7|Mux18~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(13),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux18~1_combout\,
	combout => \G7|Mux18~2_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\G18|SAIDA~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~30_combout\ = (!\G4|Equal0~0_combout\ & (((\G16|Add0~53_sumout\ & \G18|SAIDA~11_combout\)) # (\G17|RAM_rtl_0|auto_generated|ram_block1a13~portbdataout\))) # (\G4|Equal0~0_combout\ & (\G16|Add0~53_sumout\ & (\G18|SAIDA~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G16|ALT_INV_Add0~53_sumout\,
	datac => \G18|ALT_INV_SAIDA~11_combout\,
	datad => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portbdataout\,
	combout => \G18|SAIDA~30_combout\);

\G18|SAIDA~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~31_combout\ = ( \G18|SAIDA~30_combout\ ) # ( !\G18|SAIDA~30_combout\ & ( (!\G18|SAIDA~8_combout\ & (\G18|SAIDA~10_combout\ & ((!\G18|SAIDA~29_combout\)))) # (\G18|SAIDA~8_combout\ & (((\G18|SAIDA~10_combout\ & !\G18|SAIDA~29_combout\)) # 
-- (\G16|Saida_to_Dados[13]~53_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101111111111111111100110111000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~8_combout\,
	datab => \G18|ALT_INV_SAIDA~10_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[13]~53_combout\,
	datad => \G18|ALT_INV_SAIDA~29_combout\,
	datae => \G18|ALT_INV_SAIDA~30_combout\,
	combout => \G18|SAIDA~31_combout\);

\G18|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(13) = ( \G18|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~31_combout\ ) ) ) # ( !\G18|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~31_combout\ ) ) ) # ( \G18|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~31_combout\,
	datae => \G18|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(13));

\G7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux2~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(13),
	combout => \G7|Mux2~0_combout\);

\G7|Reg[3][14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][14]~combout\ = ( \G7|Reg[3][14]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(14) ) ) ) # ( !\G7|Reg[3][14]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(14) ) ) ) # ( \G7|Reg[3][14]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(14),
	datae => \G7|ALT_INV_Reg[3][14]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][14]~combout\);

\G7|Reg[2][14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][14]~combout\ = ( \G7|Reg[2][14]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(14) ) ) ) # ( !\G7|Reg[2][14]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(14) ) ) ) # ( \G7|Reg[2][14]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(14),
	datae => \G7|ALT_INV_Reg[2][14]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][14]~combout\);

\G7|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~0_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][14]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(14))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(14),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][14]~combout\,
	combout => \G7|Mux17~0_combout\);

\G7|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~1_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux17~0_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][14]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][14]~combout\,
	datad => \G7|ALT_INV_Mux17~0_combout\,
	combout => \G7|Mux17~1_combout\);

\G7|Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~2_combout\ = (!\G18|SAIDA\(14) & (!\G7|Mux20~1_combout\ & ((\G7|Mux17~1_combout\)))) # (\G18|SAIDA\(14) & (((!\G7|Mux20~1_combout\ & \G7|Mux17~1_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(14),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux17~1_combout\,
	combout => \G7|Mux17~2_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\G14|SAIDA~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~37_combout\ = ( \G7|Reg[2][14]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][14]~combout\))) ) ) ) # ( !\G7|Reg[2][14]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][14]~combout\)))) ) ) ) # ( \G7|Reg[2][14]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][14]~combout\)))) ) ) ) # ( !\G7|Reg[2][14]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][14]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][14]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][14]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~37_combout\);

\G14|SAIDA~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~24_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~37_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~37_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(14)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~37_combout\ & ( (\G18|SAIDA\(14) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~37_combout\ & ( (\G18|SAIDA\(14) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(14),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~37_combout\,
	combout => \G14|SAIDA~24_combout\);

\G14|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(14) = ( \G14|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~24_combout\ ) ) ) # ( !\G14|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~24_combout\ ) ) ) # ( \G14|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~24_combout\,
	datae => \G14|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(14));

\G16|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~57_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(14)))) ) + ( !\G14|SAIDA\(14) ) + ( \G16|Add1~54\ ))
-- \G16|Add1~58\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(14)))) ) + ( !\G14|SAIDA\(14) ) + ( \G16|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(14),
	dataf => \G14|ALT_INV_SAIDA\(14),
	cin => \G16|Add1~54\,
	sumout => \G16|Add1~57_sumout\,
	cout => \G16|Add1~58\);

\G16|Saida_to_Dados[15]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~54_combout\ = (\G4|funct[0]~2_combout\ & ((\G4|rd[0]~1_combout\) # (\G4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux1~0_combout\,
	datab => \G4|ALT_INV_rd[0]~1_combout\,
	datac => \G4|ALT_INV_funct[0]~2_combout\,
	combout => \G16|Saida_to_Dados[15]~54_combout\);

\G7|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~3_combout\ = ( !\G4|Mux7~1_combout\ & ( !\G4|Mux0~3_combout\ & ( (!\G4|Mux3~0_combout\ & !\G4|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_Mux3~0_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux15~3_combout\);

\G18|SAIDA~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~32_combout\ = (\G18|SAIDA\(14) & \G7|Mux15~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(14),
	datab => \G7|ALT_INV_Mux15~3_combout\,
	combout => \G18|SAIDA~32_combout\);

\G18|SAIDA~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~33_combout\ = ( \G4|Mux2~0_combout\ & ( !\G4|Mux1~0_combout\ & ( (!\G4|Mux8~0_combout\ & (!\G4|Mux9~0_combout\ & !\G4|Mux7~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux2~0_combout\,
	dataf => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G18|SAIDA~33_combout\);

\G18|SAIDA~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~34_combout\ = ( \G18|SAIDA~33_combout\ & ( (!\G16|Saida_to_Dados[15]~54_combout\ & (((\G16|Add1~57_sumout\)))) # (\G16|Saida_to_Dados[15]~54_combout\ & (\G14|SAIDA\(14) & ((\G18|SAIDA~32_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011010100000000000000000011000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(14),
	datab => \G16|ALT_INV_Add1~57_sumout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~54_combout\,
	datad => \G18|ALT_INV_SAIDA~32_combout\,
	datae => \G18|ALT_INV_SAIDA~33_combout\,
	combout => \G18|SAIDA~34_combout\);

\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(14)))) ) + ( \G14|SAIDA\(14) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(14)))) ) + ( \G14|SAIDA\(14) ) + ( \G16|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(14),
	dataf => \G14|ALT_INV_SAIDA\(14),
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

\G16|Saida_to_Dados[15]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~55_combout\ = ( \G16|Saida_to_Dados[15]~42_combout\ & ( (!\G4|Mux7~1_combout\ & ((!\G4|Mux8~0_combout\ & ((\G16|Saida_to_Dados[13]~0_combout\) # (\G4|Mux9~0_combout\))) # (\G4|Mux8~0_combout\ & (!\G4|Mux9~0_combout\)))) ) ) # ( 
-- !\G16|Saida_to_Dados[15]~42_combout\ & ( (!\G4|Mux7~1_combout\ & ((!\G4|Mux8~0_combout\) # (!\G4|Mux9~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000011000001110000011100000111000000110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[13]~0_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[15]~42_combout\,
	combout => \G16|Saida_to_Dados[15]~55_combout\);

\G18|SAIDA~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~43_combout\ = (\G4|Mux0~1_combout\ & (\G4|Mux0~0_combout\ & !\G1|pout\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~1_combout\,
	datab => \G4|ALT_INV_Mux0~0_combout\,
	datac => \G1|ALT_INV_pout\(3),
	combout => \G18|SAIDA~43_combout\);

\G18|SAIDA~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~35_combout\ = ( !\G18|SAIDA~43_combout\ & ( (!\G16|Saida_to_Dados[15]~55_combout\ & (((\G18|SAIDA~32_combout\)) # (\G14|SAIDA\(14)))) # (\G16|Saida_to_Dados[15]~55_combout\ & (((\G16|Add0~57_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001111110011000000000000000001010011111100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(14),
	datab => \G16|ALT_INV_Add0~57_sumout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~55_combout\,
	datad => \G18|ALT_INV_SAIDA~32_combout\,
	datae => \G18|ALT_INV_SAIDA~43_combout\,
	combout => \G18|SAIDA~35_combout\);

\G16|Add15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~29_sumout\ = SUM(( \G16|Prod~54_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(7)))) ) + ( \G16|Add15~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~54_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add15~26\,
	sumout => \G16|Add15~29_sumout\);

\G16|Add16~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~29_sumout\ = SUM(( \G16|Prod~54_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~4_combout\) # ((!\G18|SAIDA\(7)) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~54_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add16~26\,
	sumout => \G16|Add16~29_sumout\);

\G18|SAIDA~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~36_combout\ = ( !\G4|Mux2~0_combout\ & ( (!\G4|Mux8~0_combout\ & (!\G4|Mux9~0_combout\ & (!\G4|Mux7~1_combout\ & \G4|Mux0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux8~0_combout\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	datae => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G18|SAIDA~36_combout\);

\G18|SAIDA~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~37_combout\ = ( \G16|Add16~29_sumout\ & ( \G18|SAIDA~36_combout\ & ( (!\G14|SAIDA\(6) & (((\G16|Prod~54_combout\)) # (\G14|SAIDA\(7)))) # (\G14|SAIDA\(6) & ((!\G14|SAIDA\(7) & ((\G16|Add15~29_sumout\))) # (\G14|SAIDA\(7) & 
-- (\G16|Prod~54_combout\)))) ) ) ) # ( !\G16|Add16~29_sumout\ & ( \G18|SAIDA~36_combout\ & ( (!\G14|SAIDA\(6) & (!\G14|SAIDA\(7) & (\G16|Prod~54_combout\))) # (\G14|SAIDA\(6) & ((!\G14|SAIDA\(7) & ((\G16|Add15~29_sumout\))) # (\G14|SAIDA\(7) & 
-- (\G16|Prod~54_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(6),
	datab => \G14|ALT_INV_SAIDA\(7),
	datac => \G16|ALT_INV_Prod~54_combout\,
	datad => \G16|ALT_INV_Add15~29_sumout\,
	datae => \G16|ALT_INV_Add16~29_sumout\,
	dataf => \G18|ALT_INV_SAIDA~36_combout\,
	combout => \G18|SAIDA~37_combout\);

\G18|SAIDA~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~38_combout\ = ( \G18|SAIDA~37_combout\ ) # ( !\G18|SAIDA~37_combout\ & ( (((!\G4|Equal0~0_combout\ & \G17|RAM_rtl_0|auto_generated|ram_block1a14~portbdataout\)) # (\G18|SAIDA~35_combout\)) # (\G18|SAIDA~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111111111111111111111111100101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portbdataout\,
	datac => \G18|ALT_INV_SAIDA~34_combout\,
	datad => \G18|ALT_INV_SAIDA~35_combout\,
	datae => \G18|ALT_INV_SAIDA~37_combout\,
	combout => \G18|SAIDA~38_combout\);

\G18|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(14) = ( \G18|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~38_combout\ ) ) ) # ( !\G18|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~38_combout\ ) ) ) # ( \G18|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~38_combout\,
	datae => \G18|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(14));

\G7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux1~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(14),
	combout => \G7|Mux1~0_combout\);

\G7|Reg[3][15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][15]~combout\ = ( \G7|Reg[3][15]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(15) ) ) ) # ( !\G7|Reg[3][15]~combout\ & ( \G7|Reg[3][0]~5_combout\ & ( \G18|SAIDA\(15) ) ) ) # ( \G7|Reg[3][15]~combout\ & ( !\G7|Reg[3][0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(15),
	datae => \G7|ALT_INV_Reg[3][15]~combout\,
	dataf => \G7|ALT_INV_Reg[3][0]~5_combout\,
	combout => \G7|Reg[3][15]~combout\);

\G7|Reg[2][15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[2][15]~combout\ = ( \G7|Reg[2][15]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(15) ) ) ) # ( !\G7|Reg[2][15]~combout\ & ( \G7|Reg[2][0]~6_combout\ & ( \G18|SAIDA\(15) ) ) ) # ( \G7|Reg[2][15]~combout\ & ( !\G7|Reg[2][0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(15),
	datae => \G7|ALT_INV_Reg[2][15]~combout\,
	dataf => \G7|ALT_INV_Reg[2][0]~6_combout\,
	combout => \G7|Reg[2][15]~combout\);

\G7|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~1_combout\ = (!\G7|Mux20~5_combout\ & (((\G7|Reg[2][15]~combout\)))) # (\G7|Mux20~5_combout\ & (\G7|Reg~0_combout\ & (\G18|SAIDA\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(15),
	datac => \G7|ALT_INV_Mux20~5_combout\,
	datad => \G7|ALT_INV_Reg[2][15]~combout\,
	combout => \G7|Mux16~1_combout\);

\G7|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~2_combout\ = (\Clock_Sistema~input_o\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux16~1_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][15]~combout\,
	datad => \G7|ALT_INV_Mux16~1_combout\,
	combout => \G7|Mux16~2_combout\);

\G7|Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~3_combout\ = (!\G18|SAIDA\(15) & (!\G7|Mux20~1_combout\ & ((\G7|Mux16~2_combout\)))) # (\G18|SAIDA\(15) & (((!\G7|Mux20~1_combout\ & \G7|Mux16~2_combout\)) # (\G7|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(15),
	datab => \G7|ALT_INV_Mux20~1_combout\,
	datac => \G7|ALT_INV_Mux16~0_combout\,
	datad => \G7|ALT_INV_Mux16~2_combout\,
	combout => \G7|Mux16~3_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_5b02:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 1000,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \G5|ALT_INV_Mux8~0_combout\,
	portbre => \G5|Mux8~0_combout\,
	clk0 => \Clock_Sistema~input_o\,
	portadatain => \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\G14|SAIDA~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~38_combout\ = ( \G7|Reg[2][15]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\) # (\G7|Reg[3][15]~combout\))) ) ) ) # ( !\G7|Reg[2][15]~combout\ & ( \G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & 
-- ((!\G7|Mux20~2_combout\ & ((!\G7|Mux20~4_combout\))) # (\G7|Mux20~2_combout\ & (\G7|Reg[3][15]~combout\)))) ) ) ) # ( \G7|Reg[2][15]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & ((!\G7|Mux20~2_combout\ & ((\G7|Mux20~4_combout\))) # 
-- (\G7|Mux20~2_combout\ & (\G7|Reg[3][15]~combout\)))) ) ) ) # ( !\G7|Reg[2][15]~combout\ & ( !\G7|Reg~3_combout\ & ( (\G7|Mux20~0_combout\ & (\G7|Mux20~2_combout\ & \G7|Reg[3][15]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101000000010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G7|ALT_INV_Mux20~2_combout\,
	datac => \G7|ALT_INV_Reg[3][15]~combout\,
	datad => \G7|ALT_INV_Mux20~4_combout\,
	datae => \G7|ALT_INV_Reg[2][15]~combout\,
	dataf => \G7|ALT_INV_Reg~3_combout\,
	combout => \G14|SAIDA~38_combout\);

\G14|SAIDA~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~25_combout\ = ( \G7|Mux20~4_combout\ & ( \G14|SAIDA~38_combout\ & ( !\G16|process_0~1_combout\ ) ) ) # ( !\G7|Mux20~4_combout\ & ( \G14|SAIDA~38_combout\ & ( (!\G16|process_0~1_combout\ & ((\G7|Mux20~2_combout\) # (\G18|SAIDA\(15)))) ) ) ) # ( 
-- \G7|Mux20~4_combout\ & ( !\G14|SAIDA~38_combout\ & ( (\G18|SAIDA\(15) & (!\G16|process_0~1_combout\ & \G14|SAIDA~4_combout\)) ) ) ) # ( !\G7|Mux20~4_combout\ & ( !\G14|SAIDA~38_combout\ & ( (\G18|SAIDA\(15) & (!\G16|process_0~1_combout\ & 
-- \G14|SAIDA~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(15),
	datab => \G16|ALT_INV_process_0~1_combout\,
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \G7|ALT_INV_Mux20~2_combout\,
	datae => \G7|ALT_INV_Mux20~4_combout\,
	dataf => \G14|ALT_INV_SAIDA~38_combout\,
	combout => \G14|SAIDA~25_combout\);

\G14|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(15) = ( \G14|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~25_combout\ ) ) ) # ( !\G14|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~25_combout\ ) ) ) # ( \G14|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~25_combout\,
	datae => \G14|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(15));

\G16|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~61_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(15)))) ) + ( !\G14|SAIDA\(15) ) + ( \G16|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(15),
	dataf => \G14|ALT_INV_SAIDA\(15),
	cin => \G16|Add1~58\,
	sumout => \G16|Add1~61_sumout\);

\G18|SAIDA~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~39_combout\ = (\G18|SAIDA\(15) & \G7|Mux15~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(15),
	datab => \G7|ALT_INV_Mux15~3_combout\,
	combout => \G18|SAIDA~39_combout\);

\G18|SAIDA~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~40_combout\ = ( \G18|SAIDA~39_combout\ & ( (\G18|SAIDA~33_combout\ & ((!\G16|Saida_to_Dados[15]~54_combout\ & ((\G16|Add1~61_sumout\))) # (\G16|Saida_to_Dados[15]~54_combout\ & (\G14|SAIDA\(15))))) ) ) # ( !\G18|SAIDA~39_combout\ & ( 
-- (\G16|Add1~61_sumout\ & (!\G16|Saida_to_Dados[15]~54_combout\ & \G18|SAIDA~33_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011010100000000001100000000000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(15),
	datab => \G16|ALT_INV_Add1~61_sumout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~54_combout\,
	datad => \G18|ALT_INV_SAIDA~33_combout\,
	datae => \G18|ALT_INV_SAIDA~39_combout\,
	combout => \G18|SAIDA~40_combout\);

\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~4_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA\(15)))) ) + ( \G14|SAIDA\(15) ) + ( \G16|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~4_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(15),
	dataf => \G14|ALT_INV_SAIDA\(15),
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

\G18|SAIDA~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~41_combout\ = ( \G18|SAIDA~39_combout\ & ( (!\G18|SAIDA~43_combout\ & ((!\G16|Saida_to_Dados[15]~55_combout\) # (\G16|Add0~61_sumout\))) ) ) # ( !\G18|SAIDA~39_combout\ & ( (!\G18|SAIDA~43_combout\ & ((!\G16|Saida_to_Dados[15]~55_combout\ & 
-- (\G14|SAIDA\(15))) # (\G16|Saida_to_Dados[15]~55_combout\ & ((\G16|Add0~61_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000111100110000000001010011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(15),
	datab => \G16|ALT_INV_Add0~61_sumout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~55_combout\,
	datad => \G18|ALT_INV_SAIDA~43_combout\,
	datae => \G18|ALT_INV_SAIDA~39_combout\,
	combout => \G18|SAIDA~41_combout\);

\G18|SAIDA~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~42_combout\ = ( \G18|SAIDA~37_combout\ ) # ( !\G18|SAIDA~37_combout\ & ( (((!\G4|Equal0~0_combout\ & \G17|RAM_rtl_0|auto_generated|ram_block1a15~portbdataout\)) # (\G18|SAIDA~41_combout\)) # (\G18|SAIDA~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111111111111111111111111100101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portbdataout\,
	datac => \G18|ALT_INV_SAIDA~40_combout\,
	datad => \G18|ALT_INV_SAIDA~41_combout\,
	datae => \G18|ALT_INV_SAIDA~37_combout\,
	combout => \G18|SAIDA~42_combout\);

\G18|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(15) = ( \G18|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~42_combout\ ) ) ) # ( !\G18|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~42_combout\ ) ) ) # ( \G18|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~42_combout\,
	datae => \G18|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(15));

\G7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux0~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~0_combout\ & \G18|SAIDA\(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(15),
	combout => \G7|Mux0~0_combout\);

\G4|rs[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[1]~1_combout\ = (\Clock_Sistema~input_o\ & (!\G4|rs~0_combout\ & \G4|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rs~0_combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G4|rs[1]~1_combout\);

\G4|rs[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[2]~2_combout\ = ( \G4|Mux7~1_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux3~0_combout\ & ((!\G4|Mux9~0_combout\) # (\G4|Mux8~0_combout\)))) ) ) # ( !\G4|Mux7~1_combout\ & ( (\Clock_Sistema~input_o\ & \G4|Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010000000100010001000100010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux3~0_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux9~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|rs[2]~2_combout\);

\G4|rt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[0]~0_combout\ = (\Clock_Sistema~input_o\ & (!\G4|rs~0_combout\ & \G4|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rs~0_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G4|rt[0]~0_combout\);

\G4|rt[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[1]~1_combout\ = (\Clock_Sistema~input_o\ & (\G4|Mux7~2_combout\ & !\G4|rs~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux7~2_combout\,
	datac => \G4|ALT_INV_rs~0_combout\,
	combout => \G4|rt[1]~1_combout\);

\G4|tipoi[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[0]~0_combout\ = ( \G4|Mux2~0_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux9~0_combout\ $ (!\G4|Mux7~1_combout\)) # (\G4|Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101010101000100000000000000000001010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G4|tipoi[0]~0_combout\);

\G4|tipoi[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[2]~1_combout\ = ( \G4|Mux1~0_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux9~0_combout\ $ (!\G4|Mux7~1_combout\)) # (\G4|Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101010101000100000000000000000001010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G4|tipoi[2]~1_combout\);

\G16|Splitter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~2_combout\ = (\G7|Mux5~0_combout\ & \G14|SAIDA\(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux5~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(10),
	combout => \G16|Splitter~2_combout\);

\G16|Saida_to_Dados[10]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~17_combout\ = ( \G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add16~13_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Prod~48_combout\ ) ) 
-- ) # ( \G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add15~13_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Splitter~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~2_combout\,
	datab => \G16|ALT_INV_Add15~13_sumout\,
	datac => \G16|ALT_INV_Prod~48_combout\,
	datad => \G16|ALT_INV_Add16~13_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~2_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~3_combout\,
	combout => \G16|Saida_to_Dados[10]~17_combout\);

\G16|Saida_to_Dados[10]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~18_combout\ = ( \G16|Add1~41_sumout\ & ( (\G16|Saida_to_Dados[7]~8_combout\ & (((!\G16|Saida_to_Dados[13]~6_combout\) # (\G14|SAIDA\(10))) # (\G7|Mux5~0_combout\))) ) ) # ( !\G16|Add1~41_sumout\ & ( 
-- (\G16|Saida_to_Dados[13]~6_combout\ & (\G16|Saida_to_Dados[7]~8_combout\ & ((\G14|SAIDA\(10)) # (\G7|Mux5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000011010000111100000001000000110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux5~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~6_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~8_combout\,
	datad => \G14|ALT_INV_SAIDA\(10),
	datae => \G16|ALT_INV_Add1~41_sumout\,
	combout => \G16|Saida_to_Dados[10]~18_combout\);

\G16|Saida_to_Dados[10]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~19_combout\ = ( \G16|Saida_to_Dados[10]~18_combout\ ) # ( !\G16|Saida_to_Dados[10]~18_combout\ & ( (!\G16|Saida_to_Dados[13]~1_combout\ & (((\G16|Saida_to_Dados[7]~7_combout\ & \G16|Saida_to_Dados[10]~17_combout\)) # 
-- (\G16|Add0~41_sumout\))) # (\G16|Saida_to_Dados[13]~1_combout\ & (\G16|Saida_to_Dados[7]~7_combout\ & ((\G16|Saida_to_Dados[10]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111011111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[13]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~7_combout\,
	datac => \G16|ALT_INV_Add0~41_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[10]~17_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[10]~18_combout\,
	combout => \G16|Saida_to_Dados[10]~19_combout\);

\G16|Splitter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~3_combout\ = (\G7|Mux4~0_combout\ & \G14|SAIDA\(11))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux4~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(11),
	combout => \G16|Splitter~3_combout\);

\G16|Saida_to_Dados[11]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[11]~20_combout\ = ( \G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add16~17_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Prod~51_combout\ ) ) 
-- ) # ( \G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add15~17_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Splitter~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~3_combout\,
	datab => \G16|ALT_INV_Add15~17_sumout\,
	datac => \G16|ALT_INV_Prod~51_combout\,
	datad => \G16|ALT_INV_Add16~17_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~2_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~3_combout\,
	combout => \G16|Saida_to_Dados[11]~20_combout\);

\G16|Saida_to_Dados[11]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[11]~21_combout\ = ( \G16|Add1~45_sumout\ & ( (\G16|Saida_to_Dados[7]~8_combout\ & (((!\G16|Saida_to_Dados[13]~6_combout\) # (\G14|SAIDA\(11))) # (\G7|Mux4~0_combout\))) ) ) # ( !\G16|Add1~45_sumout\ & ( 
-- (\G16|Saida_to_Dados[13]~6_combout\ & (\G16|Saida_to_Dados[7]~8_combout\ & ((\G14|SAIDA\(11)) # (\G7|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000011010000111100000001000000110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux4~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~6_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~8_combout\,
	datad => \G14|ALT_INV_SAIDA\(11),
	datae => \G16|ALT_INV_Add1~45_sumout\,
	combout => \G16|Saida_to_Dados[11]~21_combout\);

\G16|Saida_to_Dados[11]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[11]~22_combout\ = ( \G16|Saida_to_Dados[11]~21_combout\ ) # ( !\G16|Saida_to_Dados[11]~21_combout\ & ( (!\G16|Saida_to_Dados[13]~1_combout\ & (((\G16|Saida_to_Dados[7]~7_combout\ & \G16|Saida_to_Dados[11]~20_combout\)) # 
-- (\G16|Add0~45_sumout\))) # (\G16|Saida_to_Dados[13]~1_combout\ & (\G16|Saida_to_Dados[7]~7_combout\ & ((\G16|Saida_to_Dados[11]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111011111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[13]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~7_combout\,
	datac => \G16|ALT_INV_Add0~45_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[11]~20_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[11]~21_combout\,
	combout => \G16|Saida_to_Dados[11]~22_combout\);

\G16|Splitter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~4_combout\ = (\G7|Mux3~0_combout\ & \G14|SAIDA\(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux3~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(12),
	combout => \G16|Splitter~4_combout\);

\G16|Saida_to_Dados[12]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[12]~23_combout\ = ( \G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add16~21_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Prod~53_combout\ ) ) 
-- ) # ( \G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add15~21_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Splitter~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~4_combout\,
	datab => \G16|ALT_INV_Add15~21_sumout\,
	datac => \G16|ALT_INV_Prod~53_combout\,
	datad => \G16|ALT_INV_Add16~21_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~2_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~3_combout\,
	combout => \G16|Saida_to_Dados[12]~23_combout\);

\G16|Saida_to_Dados[12]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[12]~24_combout\ = ( \G16|Add1~49_sumout\ & ( (\G16|Saida_to_Dados[7]~8_combout\ & (((!\G16|Saida_to_Dados[13]~6_combout\) # (\G14|SAIDA\(12))) # (\G7|Mux3~0_combout\))) ) ) # ( !\G16|Add1~49_sumout\ & ( 
-- (\G16|Saida_to_Dados[13]~6_combout\ & (\G16|Saida_to_Dados[7]~8_combout\ & ((\G14|SAIDA\(12)) # (\G7|Mux3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000011010000111100000001000000110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux3~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~6_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~8_combout\,
	datad => \G14|ALT_INV_SAIDA\(12),
	datae => \G16|ALT_INV_Add1~49_sumout\,
	combout => \G16|Saida_to_Dados[12]~24_combout\);

\G16|Saida_to_Dados[12]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[12]~25_combout\ = ( \G16|Saida_to_Dados[12]~24_combout\ ) # ( !\G16|Saida_to_Dados[12]~24_combout\ & ( (!\G16|Saida_to_Dados[13]~1_combout\ & (((\G16|Saida_to_Dados[7]~7_combout\ & \G16|Saida_to_Dados[12]~23_combout\)) # 
-- (\G16|Add0~49_sumout\))) # (\G16|Saida_to_Dados[13]~1_combout\ & (\G16|Saida_to_Dados[7]~7_combout\ & ((\G16|Saida_to_Dados[12]~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111011111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[13]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~7_combout\,
	datac => \G16|ALT_INV_Add0~49_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[12]~23_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[12]~24_combout\,
	combout => \G16|Saida_to_Dados[12]~25_combout\);

\G16|Splitter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~5_combout\ = (\G7|Mux2~0_combout\ & \G14|SAIDA\(13))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux2~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(13),
	combout => \G16|Splitter~5_combout\);

\G16|Saida_to_Dados[13]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~26_combout\ = ( \G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add16~25_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( \G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Prod~54_combout\ ) ) 
-- ) # ( \G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Add15~25_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[13]~2_combout\ & ( !\G16|Saida_to_Dados[13]~3_combout\ & ( \G16|Splitter~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~5_combout\,
	datab => \G16|ALT_INV_Add15~25_sumout\,
	datac => \G16|ALT_INV_Prod~54_combout\,
	datad => \G16|ALT_INV_Add16~25_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~2_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~3_combout\,
	combout => \G16|Saida_to_Dados[13]~26_combout\);

\G16|Saida_to_Dados[13]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~27_combout\ = ( \G16|Add1~53_sumout\ & ( (\G16|Saida_to_Dados[7]~8_combout\ & (((!\G16|Saida_to_Dados[13]~6_combout\) # (\G14|SAIDA\(13))) # (\G7|Mux2~0_combout\))) ) ) # ( !\G16|Add1~53_sumout\ & ( 
-- (\G16|Saida_to_Dados[13]~6_combout\ & (\G16|Saida_to_Dados[7]~8_combout\ & ((\G14|SAIDA\(13)) # (\G7|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000011010000111100000001000000110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux2~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~6_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~8_combout\,
	datad => \G14|ALT_INV_SAIDA\(13),
	datae => \G16|ALT_INV_Add1~53_sumout\,
	combout => \G16|Saida_to_Dados[13]~27_combout\);

\G16|Saida_to_Dados[13]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~28_combout\ = ( \G16|Saida_to_Dados[13]~27_combout\ ) # ( !\G16|Saida_to_Dados[13]~27_combout\ & ( (!\G16|Saida_to_Dados[13]~1_combout\ & (((\G16|Saida_to_Dados[7]~7_combout\ & \G16|Saida_to_Dados[13]~26_combout\)) # 
-- (\G16|Add0~53_sumout\))) # (\G16|Saida_to_Dados[13]~1_combout\ & (\G16|Saida_to_Dados[7]~7_combout\ & ((\G16|Saida_to_Dados[13]~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111011111111111111111100001010001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[13]~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~7_combout\,
	datac => \G16|ALT_INV_Add0~53_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[13]~26_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[13]~27_combout\,
	combout => \G16|Saida_to_Dados[13]~28_combout\);

\G16|Saida_to_Dados[15]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~29_combout\ = ( \G16|Saida_to_Dados[13]~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux8~0_combout\ & \G4|Mux9~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) # ( !\G16|Saida_to_Dados[13]~0_combout\ & ( (\Clock_Sistema~input_o\ & 
-- ((!\G4|Mux8~0_combout\ $ (\G4|Mux9~0_combout\)) # (\G4|Mux7~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101010101010000010101010100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[13]~0_combout\,
	combout => \G16|Saida_to_Dados[15]~29_combout\);

\G16|Saida_to_Dados[15]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~30_combout\ = (\G4|funct[0]~0_combout\ & ((\G4|Mux1~0_combout\) # (\G4|rd[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G16|Saida_to_Dados[15]~30_combout\);

\G16|Saida_to_Dados[14]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~31_combout\ = (!\G16|Saida_to_Dados[15]~30_combout\ & (((\G16|Add1~57_sumout\)))) # (\G16|Saida_to_Dados[15]~30_combout\ & (\G7|Mux1~0_combout\ & (\G14|SAIDA\(14))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux1~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~30_combout\,
	datac => \G14|ALT_INV_SAIDA\(14),
	datad => \G16|ALT_INV_Add1~57_sumout\,
	combout => \G16|Saida_to_Dados[14]~31_combout\);

\G16|Saida_to_Dados[15]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~32_combout\ = (\Clock_Sistema~input_o\ & (((\G4|Mux8~0_combout\ & \G4|Mux9~0_combout\)) # (\G4|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000010101010100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux8~0_combout\,
	datac => \G4|ALT_INV_Mux9~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G16|Saida_to_Dados[15]~32_combout\);

\G16|Saida_to_Dados[14]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~33_combout\ = (\G16|Saida_to_Dados[15]~29_combout\ & !\G16|Saida_to_Dados[15]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[15]~29_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~32_combout\,
	combout => \G16|Saida_to_Dados[14]~33_combout\);

\G16|Saida_to_Dados[14]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~34_combout\ = ( \G4|Mux1~0_combout\ & ( \G16|Saida_to_Dados[14]~33_combout\ & ( (!\Clock_Sistema~input_o\) # ((!\G4|Equal0~0_combout\) # ((!\G4|Mux0~2_combout\ & !\G4|Mux2~0_combout\))) ) ) ) # ( !\G4|Mux1~0_combout\ & ( 
-- \G16|Saida_to_Dados[14]~33_combout\ & ( (!\Clock_Sistema~input_o\) # ((!\G4|Equal0~0_combout\) # ((!\G4|Mux0~2_combout\) # (\G4|Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111111111111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G4|ALT_INV_Mux2~0_combout\,
	datae => \G4|ALT_INV_Mux1~0_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[14]~33_combout\,
	combout => \G16|Saida_to_Dados[14]~34_combout\);

\G16|Saida_to_Dados[14]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~35_combout\ = (!\G16|Saida_to_Dados[15]~32_combout\ & (((!\G16|Add0~57_sumout\)))) # (\G16|Saida_to_Dados[15]~32_combout\ & (!\G7|Mux1~0_combout\ & (!\G14|SAIDA\(14))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000100000111011000010000011101100001000001110110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux1~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~32_combout\,
	datac => \G14|ALT_INV_SAIDA\(14),
	datad => \G16|ALT_INV_Add0~57_sumout\,
	combout => \G16|Saida_to_Dados[14]~35_combout\);

\G16|Saida_to_Dados[14]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~36_combout\ = ( \G16|Saida_to_Dados[14]~33_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Equal0~0_combout\ & (\G4|Mux0~2_combout\ & !\G4|Mux2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G4|ALT_INV_Mux2~0_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[14]~33_combout\,
	combout => \G16|Saida_to_Dados[14]~36_combout\);

\G16|Saida_to_Dados[14]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~37_combout\ = ( \G16|Add16~29_sumout\ & ( \G16|Saida_to_Dados[14]~36_combout\ & ( (!\G14|SAIDA\(6) & (((\G16|Prod~54_combout\)) # (\G14|SAIDA\(7)))) # (\G14|SAIDA\(6) & ((!\G14|SAIDA\(7) & ((\G16|Add15~29_sumout\))) # 
-- (\G14|SAIDA\(7) & (\G16|Prod~54_combout\)))) ) ) ) # ( !\G16|Add16~29_sumout\ & ( \G16|Saida_to_Dados[14]~36_combout\ & ( (!\G14|SAIDA\(6) & (!\G14|SAIDA\(7) & (\G16|Prod~54_combout\))) # (\G14|SAIDA\(6) & ((!\G14|SAIDA\(7) & ((\G16|Add15~29_sumout\))) # 
-- (\G14|SAIDA\(7) & (\G16|Prod~54_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(6),
	datab => \G14|ALT_INV_SAIDA\(7),
	datac => \G16|ALT_INV_Prod~54_combout\,
	datad => \G16|ALT_INV_Add15~29_sumout\,
	datae => \G16|ALT_INV_Add16~29_sumout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[14]~36_combout\,
	combout => \G16|Saida_to_Dados[14]~37_combout\);

\G16|Saida_to_Dados[14]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~38_combout\ = ( \G16|Saida_to_Dados[14]~37_combout\ ) # ( !\G16|Saida_to_Dados[14]~37_combout\ & ( (!\G16|Saida_to_Dados[15]~29_combout\ & ((!\G16|Saida_to_Dados[14]~35_combout\) # ((\G16|Saida_to_Dados[14]~31_combout\ & 
-- \G16|Saida_to_Dados[14]~34_combout\)))) # (\G16|Saida_to_Dados[15]~29_combout\ & (\G16|Saida_to_Dados[14]~31_combout\ & (\G16|Saida_to_Dados[14]~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000011111111111111111110101011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[15]~29_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[14]~31_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[14]~34_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[14]~35_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[14]~37_combout\,
	combout => \G16|Saida_to_Dados[14]~38_combout\);

\G16|Saida_to_Dados[15]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~39_combout\ = (!\G16|Saida_to_Dados[15]~30_combout\ & (((\G16|Add1~61_sumout\)))) # (\G16|Saida_to_Dados[15]~30_combout\ & (\G7|Mux0~0_combout\ & (\G14|SAIDA\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~30_combout\,
	datac => \G14|ALT_INV_SAIDA\(15),
	datad => \G16|ALT_INV_Add1~61_sumout\,
	combout => \G16|Saida_to_Dados[15]~39_combout\);

\G16|Saida_to_Dados[15]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~40_combout\ = (!\G16|Saida_to_Dados[15]~32_combout\ & (((!\G16|Add0~61_sumout\)))) # (\G16|Saida_to_Dados[15]~32_combout\ & (!\G7|Mux0~0_combout\ & (!\G14|SAIDA\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000100000111011000010000011101100001000001110110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~32_combout\,
	datac => \G14|ALT_INV_SAIDA\(15),
	datad => \G16|ALT_INV_Add0~61_sumout\,
	combout => \G16|Saida_to_Dados[15]~40_combout\);

\G16|Saida_to_Dados[15]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~41_combout\ = ( \G16|Saida_to_Dados[14]~37_combout\ ) # ( !\G16|Saida_to_Dados[14]~37_combout\ & ( (!\G16|Saida_to_Dados[15]~29_combout\ & ((!\G16|Saida_to_Dados[15]~40_combout\) # ((\G16|Saida_to_Dados[14]~34_combout\ & 
-- \G16|Saida_to_Dados[15]~39_combout\)))) # (\G16|Saida_to_Dados[15]~29_combout\ & (\G16|Saida_to_Dados[14]~34_combout\ & (\G16|Saida_to_Dados[15]~39_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000011111111111111111110101011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[15]~29_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[14]~34_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~39_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[15]~40_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[14]~37_combout\,
	combout => \G16|Saida_to_Dados[15]~41_combout\);

\G5|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux7~0_combout\ = (\G4|op[0]~0_combout\ & (!\G4|op[1]~1_combout\ & !\G4|op[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~0_combout\,
	datab => \G4|ALT_INV_op[1]~1_combout\,
	datac => \G4|ALT_INV_op[2]~2_combout\,
	combout => \G5|Mux7~0_combout\);

\G5|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux11~0_combout\ = (\Clock_Sistema~input_o\ & (\G4|Mux9~0_combout\ & \G4|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G5|Mux11~0_combout\);

\G5|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux10~0_combout\ = (!\G4|op[2]~2_combout\ & (!\G4|op[0]~0_combout\ $ (!\G4|op[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~0_combout\,
	datab => \G4|ALT_INV_op[1]~1_combout\,
	datac => \G4|ALT_INV_op[2]~2_combout\,
	combout => \G5|Mux10~0_combout\);

\G5|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux9~0_combout\ = ((\G4|Mux9~0_combout\ & \G4|op[1]~1_combout\)) # (\G4|op[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux9~0_combout\,
	datab => \G4|ALT_INV_op[1]~1_combout\,
	datac => \G4|ALT_INV_op[2]~2_combout\,
	combout => \G5|Mux9~0_combout\);

ww_SomadorToPc_outWaveform(0) <= \SomadorToPc_outWaveform[0]~output_o\;

ww_SomadorToPc_outWaveform(1) <= \SomadorToPc_outWaveform[1]~output_o\;

ww_SomadorToPc_outWaveform(2) <= \SomadorToPc_outWaveform[2]~output_o\;

ww_SomadorToPc_outWaveform(3) <= \SomadorToPc_outWaveform[3]~output_o\;

ww_SomadorToPc_outWaveform(4) <= \SomadorToPc_outWaveform[4]~output_o\;

ww_SomadorToPc_outWaveform(5) <= \SomadorToPc_outWaveform[5]~output_o\;

ww_SomadorToPc_outWaveform(6) <= \SomadorToPc_outWaveform[6]~output_o\;

ww_SomadorToPc_outWaveform(7) <= \SomadorToPc_outWaveform[7]~output_o\;

ww_SomadorToPc_outWaveform(8) <= \SomadorToPc_outWaveform[8]~output_o\;

ww_SomadorToPc_outWaveform(9) <= \SomadorToPc_outWaveform[9]~output_o\;

ww_SomadorToPc_outWaveform(10) <= \SomadorToPc_outWaveform[10]~output_o\;

ww_SomadorToPc_outWaveform(11) <= \SomadorToPc_outWaveform[11]~output_o\;

ww_SomadorToPc_outWaveform(12) <= \SomadorToPc_outWaveform[12]~output_o\;

ww_SomadorToPc_outWaveform(13) <= \SomadorToPc_outWaveform[13]~output_o\;

ww_SomadorToPc_outWaveform(14) <= \SomadorToPc_outWaveform[14]~output_o\;

ww_SomadorToPc_outWaveform(15) <= \SomadorToPc_outWaveform[15]~output_o\;

ww_SaidaPc_outWaveform(0) <= \SaidaPc_outWaveform[0]~output_o\;

ww_SaidaPc_outWaveform(1) <= \SaidaPc_outWaveform[1]~output_o\;

ww_SaidaPc_outWaveform(2) <= \SaidaPc_outWaveform[2]~output_o\;

ww_SaidaPc_outWaveform(3) <= \SaidaPc_outWaveform[3]~output_o\;

ww_SaidaPc_outWaveform(4) <= \SaidaPc_outWaveform[4]~output_o\;

ww_SaidaPc_outWaveform(5) <= \SaidaPc_outWaveform[5]~output_o\;

ww_SaidaPc_outWaveform(6) <= \SaidaPc_outWaveform[6]~output_o\;

ww_SaidaPc_outWaveform(7) <= \SaidaPc_outWaveform[7]~output_o\;

ww_SaidaPc_outWaveform(8) <= \SaidaPc_outWaveform[8]~output_o\;

ww_SaidaPc_outWaveform(9) <= \SaidaPc_outWaveform[9]~output_o\;

ww_SaidaPc_outWaveform(10) <= \SaidaPc_outWaveform[10]~output_o\;

ww_SaidaPc_outWaveform(11) <= \SaidaPc_outWaveform[11]~output_o\;

ww_SaidaPc_outWaveform(12) <= \SaidaPc_outWaveform[12]~output_o\;

ww_SaidaPc_outWaveform(13) <= \SaidaPc_outWaveform[13]~output_o\;

ww_SaidaPc_outWaveform(14) <= \SaidaPc_outWaveform[14]~output_o\;

ww_SaidaPc_outWaveform(15) <= \SaidaPc_outWaveform[15]~output_o\;

ww_SaidaRegA_outWaveform(0) <= \SaidaRegA_outWaveform[0]~output_o\;

ww_SaidaRegA_outWaveform(1) <= \SaidaRegA_outWaveform[1]~output_o\;

ww_SaidaRegA_outWaveform(2) <= \SaidaRegA_outWaveform[2]~output_o\;

ww_SaidaRegA_outWaveform(3) <= \SaidaRegA_outWaveform[3]~output_o\;

ww_SaidaRegA_outWaveform(4) <= \SaidaRegA_outWaveform[4]~output_o\;

ww_SaidaRegA_outWaveform(5) <= \SaidaRegA_outWaveform[5]~output_o\;

ww_SaidaRegA_outWaveform(6) <= \SaidaRegA_outWaveform[6]~output_o\;

ww_SaidaRegA_outWaveform(7) <= \SaidaRegA_outWaveform[7]~output_o\;

ww_SaidaRegA_outWaveform(8) <= \SaidaRegA_outWaveform[8]~output_o\;

ww_SaidaRegA_outWaveform(9) <= \SaidaRegA_outWaveform[9]~output_o\;

ww_SaidaRegA_outWaveform(10) <= \SaidaRegA_outWaveform[10]~output_o\;

ww_SaidaRegA_outWaveform(11) <= \SaidaRegA_outWaveform[11]~output_o\;

ww_SaidaRegA_outWaveform(12) <= \SaidaRegA_outWaveform[12]~output_o\;

ww_SaidaRegA_outWaveform(13) <= \SaidaRegA_outWaveform[13]~output_o\;

ww_SaidaRegA_outWaveform(14) <= \SaidaRegA_outWaveform[14]~output_o\;

ww_SaidaRegA_outWaveform(15) <= \SaidaRegA_outWaveform[15]~output_o\;

ww_SaidaRegB_outWaveform(0) <= \SaidaRegB_outWaveform[0]~output_o\;

ww_SaidaRegB_outWaveform(1) <= \SaidaRegB_outWaveform[1]~output_o\;

ww_SaidaRegB_outWaveform(2) <= \SaidaRegB_outWaveform[2]~output_o\;

ww_SaidaRegB_outWaveform(3) <= \SaidaRegB_outWaveform[3]~output_o\;

ww_SaidaRegB_outWaveform(4) <= \SaidaRegB_outWaveform[4]~output_o\;

ww_SaidaRegB_outWaveform(5) <= \SaidaRegB_outWaveform[5]~output_o\;

ww_SaidaRegB_outWaveform(6) <= \SaidaRegB_outWaveform[6]~output_o\;

ww_SaidaRegB_outWaveform(7) <= \SaidaRegB_outWaveform[7]~output_o\;

ww_SaidaRegB_outWaveform(8) <= \SaidaRegB_outWaveform[8]~output_o\;

ww_SaidaRegB_outWaveform(9) <= \SaidaRegB_outWaveform[9]~output_o\;

ww_SaidaRegB_outWaveform(10) <= \SaidaRegB_outWaveform[10]~output_o\;

ww_SaidaRegB_outWaveform(11) <= \SaidaRegB_outWaveform[11]~output_o\;

ww_SaidaRegB_outWaveform(12) <= \SaidaRegB_outWaveform[12]~output_o\;

ww_SaidaRegB_outWaveform(13) <= \SaidaRegB_outWaveform[13]~output_o\;

ww_SaidaRegB_outWaveform(14) <= \SaidaRegB_outWaveform[14]~output_o\;

ww_SaidaRegB_outWaveform(15) <= \SaidaRegB_outWaveform[15]~output_o\;

ww_multiplexador_to_writeRegister_outWaveform(0) <= \multiplexador_to_writeRegister_outWaveform[0]~output_o\;

ww_multiplexador_to_writeRegister_outWaveform(1) <= \multiplexador_to_writeRegister_outWaveform[1]~output_o\;

ww_multiplexador_to_writeRegister_outWaveform(2) <= \multiplexador_to_writeRegister_outWaveform[2]~output_o\;

ww_Instruction_to_multiplexador_outWaveform(0) <= \Instruction_to_multiplexador_outWaveform[0]~output_o\;

ww_Instruction_to_multiplexador_outWaveform(1) <= \Instruction_to_multiplexador_outWaveform[1]~output_o\;

ww_Instruction_to_multiplexador_outWaveform(2) <= \Instruction_to_multiplexador_outWaveform[2]~output_o\;

ww_Instruction_to_Control_outWaveform(0) <= \Instruction_to_Control_outWaveform[0]~output_o\;

ww_Instruction_to_Control_outWaveform(1) <= \Instruction_to_Control_outWaveform[1]~output_o\;

ww_Instruction_to_Control_outWaveform(2) <= \Instruction_to_Control_outWaveform[2]~output_o\;

ww_Instruction_to_Control_outWaveform(3) <= \Instruction_to_Control_outWaveform[3]~output_o\;

ww_Instruction_to_register1_outWaveform(0) <= \Instruction_to_register1_outWaveform[0]~output_o\;

ww_Instruction_to_register1_outWaveform(1) <= \Instruction_to_register1_outWaveform[1]~output_o\;

ww_Instruction_to_register1_outWaveform(2) <= \Instruction_to_register1_outWaveform[2]~output_o\;

ww_Instruction_to_register2_outWaveform(0) <= \Instruction_to_register2_outWaveform[0]~output_o\;

ww_Instruction_to_register2_outWaveform(1) <= \Instruction_to_register2_outWaveform[1]~output_o\;

ww_Instruction_to_register2_outWaveform(2) <= \Instruction_to_register2_outWaveform[2]~output_o\;

ww_Instruction_to_controlULA_outWaveform(0) <= \Instruction_to_controlULA_outWaveform[0]~output_o\;

ww_Instruction_to_controlULA_outWaveform(1) <= \Instruction_to_controlULA_outWaveform[1]~output_o\;

ww_Instruction_to_controlULA_outWaveform(2) <= \Instruction_to_controlULA_outWaveform[2]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(0) <= \Instruction_to_extensorDeSinal_outWaveform[0]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(1) <= \Instruction_to_extensorDeSinal_outWaveform[1]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(2) <= \Instruction_to_extensorDeSinal_outWaveform[2]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(3) <= \Instruction_to_extensorDeSinal_outWaveform[3]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(4) <= \Instruction_to_extensorDeSinal_outWaveform[4]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(5) <= \Instruction_to_extensorDeSinal_outWaveform[5]~output_o\;

ww_Instruction_to_Jump_outWaveform(0) <= \Instruction_to_Jump_outWaveform[0]~output_o\;

ww_Instruction_to_Jump_outWaveform(1) <= \Instruction_to_Jump_outWaveform[1]~output_o\;

ww_Instruction_to_Jump_outWaveform(2) <= \Instruction_to_Jump_outWaveform[2]~output_o\;

ww_Instruction_to_Jump_outWaveform(3) <= \Instruction_to_Jump_outWaveform[3]~output_o\;

ww_Instruction_to_Jump_outWaveform(4) <= \Instruction_to_Jump_outWaveform[4]~output_o\;

ww_Instruction_to_Jump_outWaveform(5) <= \Instruction_to_Jump_outWaveform[5]~output_o\;

ww_Instruction_to_Jump_outWaveform(6) <= \Instruction_to_Jump_outWaveform[6]~output_o\;

ww_Instruction_to_Jump_outWaveform(7) <= \Instruction_to_Jump_outWaveform[7]~output_o\;

ww_Instruction_to_Jump_outWaveform(8) <= \Instruction_to_Jump_outWaveform[8]~output_o\;

ww_Instruction_to_Jump_outWaveform(9) <= \Instruction_to_Jump_outWaveform[9]~output_o\;

ww_Instruction_to_Jump_outWaveform(10) <= \Instruction_to_Jump_outWaveform[10]~output_o\;

ww_Instruction_to_Jump_outWaveform(11) <= \Instruction_to_Jump_outWaveform[11]~output_o\;

ww_out_Saida_OperacaoDaULA(0) <= \out_Saida_OperacaoDaULA[0]~output_o\;

ww_out_Saida_OperacaoDaULA(1) <= \out_Saida_OperacaoDaULA[1]~output_o\;

ww_out_Saida_OperacaoDaULA(2) <= \out_Saida_OperacaoDaULA[2]~output_o\;

ww_out_Saida_OperacaoDaULA(3) <= \out_Saida_OperacaoDaULA[3]~output_o\;

ww_out_Saida_OperacaoDaULA(4) <= \out_Saida_OperacaoDaULA[4]~output_o\;

ww_out_Saida_OperacaoDaULA(5) <= \out_Saida_OperacaoDaULA[5]~output_o\;

ww_out_Saida_OperacaoDaULA(6) <= \out_Saida_OperacaoDaULA[6]~output_o\;

ww_Data_to_writeRegister_outWaveform(0) <= \Data_to_writeRegister_outWaveform[0]~output_o\;

ww_Data_to_writeRegister_outWaveform(1) <= \Data_to_writeRegister_outWaveform[1]~output_o\;

ww_Data_to_writeRegister_outWaveform(2) <= \Data_to_writeRegister_outWaveform[2]~output_o\;

ww_Data_to_writeRegister_outWaveform(3) <= \Data_to_writeRegister_outWaveform[3]~output_o\;

ww_Data_to_writeRegister_outWaveform(4) <= \Data_to_writeRegister_outWaveform[4]~output_o\;

ww_Data_to_writeRegister_outWaveform(5) <= \Data_to_writeRegister_outWaveform[5]~output_o\;

ww_Data_to_writeRegister_outWaveform(6) <= \Data_to_writeRegister_outWaveform[6]~output_o\;

ww_Data_to_writeRegister_outWaveform(7) <= \Data_to_writeRegister_outWaveform[7]~output_o\;

ww_Data_to_writeRegister_outWaveform(8) <= \Data_to_writeRegister_outWaveform[8]~output_o\;

ww_Data_to_writeRegister_outWaveform(9) <= \Data_to_writeRegister_outWaveform[9]~output_o\;

ww_Data_to_writeRegister_outWaveform(10) <= \Data_to_writeRegister_outWaveform[10]~output_o\;

ww_Data_to_writeRegister_outWaveform(11) <= \Data_to_writeRegister_outWaveform[11]~output_o\;

ww_Data_to_writeRegister_outWaveform(12) <= \Data_to_writeRegister_outWaveform[12]~output_o\;

ww_Data_to_writeRegister_outWaveform(13) <= \Data_to_writeRegister_outWaveform[13]~output_o\;

ww_Data_to_writeRegister_outWaveform(14) <= \Data_to_writeRegister_outWaveform[14]~output_o\;

ww_Data_to_writeRegister_outWaveform(15) <= \Data_to_writeRegister_outWaveform[15]~output_o\;

ww_Saida_mult_to_mult_outWaveform(0) <= \Saida_mult_to_mult_outWaveform[0]~output_o\;

ww_Saida_mult_to_mult_outWaveform(1) <= \Saida_mult_to_mult_outWaveform[1]~output_o\;

ww_Saida_mult_to_mult_outWaveform(2) <= \Saida_mult_to_mult_outWaveform[2]~output_o\;

ww_Saida_mult_to_mult_outWaveform(3) <= \Saida_mult_to_mult_outWaveform[3]~output_o\;

ww_Saida_mult_to_mult_outWaveform(4) <= \Saida_mult_to_mult_outWaveform[4]~output_o\;

ww_Saida_mult_to_mult_outWaveform(5) <= \Saida_mult_to_mult_outWaveform[5]~output_o\;

ww_Saida_mult_to_mult_outWaveform(6) <= \Saida_mult_to_mult_outWaveform[6]~output_o\;

ww_Saida_mult_to_mult_outWaveform(7) <= \Saida_mult_to_mult_outWaveform[7]~output_o\;

ww_Saida_mult_to_mult_outWaveform(8) <= \Saida_mult_to_mult_outWaveform[8]~output_o\;

ww_Saida_mult_to_mult_outWaveform(9) <= \Saida_mult_to_mult_outWaveform[9]~output_o\;

ww_Saida_mult_to_mult_outWaveform(10) <= \Saida_mult_to_mult_outWaveform[10]~output_o\;

ww_Saida_mult_to_mult_outWaveform(11) <= \Saida_mult_to_mult_outWaveform[11]~output_o\;

ww_Saida_mult_to_mult_outWaveform(12) <= \Saida_mult_to_mult_outWaveform[12]~output_o\;

ww_Saida_mult_to_mult_outWaveform(13) <= \Saida_mult_to_mult_outWaveform[13]~output_o\;

ww_Saida_mult_to_mult_outWaveform(14) <= \Saida_mult_to_mult_outWaveform[14]~output_o\;

ww_Saida_mult_to_mult_outWaveform(15) <= \Saida_mult_to_mult_outWaveform[15]~output_o\;

ww_Saida_to_PC_outWaveform(0) <= \Saida_to_PC_outWaveform[0]~output_o\;

ww_Saida_to_PC_outWaveform(1) <= \Saida_to_PC_outWaveform[1]~output_o\;

ww_Saida_to_PC_outWaveform(2) <= \Saida_to_PC_outWaveform[2]~output_o\;

ww_Saida_to_PC_outWaveform(3) <= \Saida_to_PC_outWaveform[3]~output_o\;

ww_Saida_to_PC_outWaveform(4) <= \Saida_to_PC_outWaveform[4]~output_o\;

ww_Saida_to_PC_outWaveform(5) <= \Saida_to_PC_outWaveform[5]~output_o\;

ww_Saida_to_PC_outWaveform(6) <= \Saida_to_PC_outWaveform[6]~output_o\;

ww_Saida_to_PC_outWaveform(7) <= \Saida_to_PC_outWaveform[7]~output_o\;

ww_Saida_to_PC_outWaveform(8) <= \Saida_to_PC_outWaveform[8]~output_o\;

ww_Saida_to_PC_outWaveform(9) <= \Saida_to_PC_outWaveform[9]~output_o\;

ww_Saida_to_PC_outWaveform(10) <= \Saida_to_PC_outWaveform[10]~output_o\;

ww_Saida_to_PC_outWaveform(11) <= \Saida_to_PC_outWaveform[11]~output_o\;

ww_Saida_to_PC_outWaveform(12) <= \Saida_to_PC_outWaveform[12]~output_o\;

ww_Saida_to_PC_outWaveform(13) <= \Saida_to_PC_outWaveform[13]~output_o\;

ww_Saida_to_PC_outWaveform(14) <= \Saida_to_PC_outWaveform[14]~output_o\;

ww_Saida_to_PC_outWaveform(15) <= \Saida_to_PC_outWaveform[15]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(0) <= \Saida_adress_to_RAM_outWaveform[0]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(1) <= \Saida_adress_to_RAM_outWaveform[1]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(2) <= \Saida_adress_to_RAM_outWaveform[2]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(3) <= \Saida_adress_to_RAM_outWaveform[3]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(4) <= \Saida_adress_to_RAM_outWaveform[4]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(5) <= \Saida_adress_to_RAM_outWaveform[5]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(6) <= \Saida_adress_to_RAM_outWaveform[6]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(7) <= \Saida_adress_to_RAM_outWaveform[7]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(8) <= \Saida_adress_to_RAM_outWaveform[8]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(9) <= \Saida_adress_to_RAM_outWaveform[9]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(10) <= \Saida_adress_to_RAM_outWaveform[10]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(11) <= \Saida_adress_to_RAM_outWaveform[11]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(12) <= \Saida_adress_to_RAM_outWaveform[12]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(13) <= \Saida_adress_to_RAM_outWaveform[13]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(14) <= \Saida_adress_to_RAM_outWaveform[14]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(15) <= \Saida_adress_to_RAM_outWaveform[15]~output_o\;

ww_Flag_regdest_OUT <= \Flag_regdest_OUT~output_o\;

ww_Flag_origialu_OUT(0) <= \Flag_origialu_OUT[0]~output_o\;

ww_Flag_origialu_OUT(1) <= \Flag_origialu_OUT[1]~output_o\;

ww_Flag_origialu_OUT(2) <= \Flag_origialu_OUT[2]~output_o\;

ww_Flag_origialu_OUT(3) <= \Flag_origialu_OUT[3]~output_o\;

ww_Flag_memparareg_OUT <= \Flag_memparareg_OUT~output_o\;

ww_Flag_escrevereg_OUT <= \Flag_escrevereg_OUT~output_o\;

ww_Flag_lemem_OUT <= \Flag_lemem_OUT~output_o\;

ww_Flag_escrevemem_OUT <= \Flag_escrevemem_OUT~output_o\;

ww_Flag_branch_OUT <= \Flag_branch_OUT~output_o\;

ww_Flag_aluSRC_OUT <= \Flag_aluSRC_OUT~output_o\;

ww_Flag_jump_OUT <= \Flag_jump_OUT~output_o\;
END structure;


