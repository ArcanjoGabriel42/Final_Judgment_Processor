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

<<<<<<< HEAD
-- DATE "12/04/2018 01:13:50"
=======
-- DATE "12/04/2018 01:31:54"
>>>>>>> master

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
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
<<<<<<< HEAD
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
=======
SIGNAL \G13|SAIDA[3]~3_combout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G13|SAIDA[4]~4_combout\ : std_logic;
>>>>>>> master
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G13|SAIDA[5]~5_combout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
<<<<<<< HEAD
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
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G7|Mux31~1_combout\ : std_logic;
SIGNAL \G16|Add0~66_cout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G7|Reg[0][0]~0_combout\ : std_logic;
SIGNAL \G7|Mux30~0_combout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G7|Reg[0][1]~1_combout\ : std_logic;
SIGNAL \G7|Mux29~1_combout\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G7|Reg[0][2]~2_combout\ : std_logic;
SIGNAL \G7|Mux28~1_combout\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G7|Reg[0][3]~3_combout\ : std_logic;
SIGNAL \G7|Mux27~0_combout\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G7|Reg[0][4]~4_combout\ : std_logic;
SIGNAL \G7|Mux26~0_combout\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G7|Reg[0][5]~5_combout\ : std_logic;
SIGNAL \G7|Mux25~0_combout\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G7|Reg[0][6]~6_combout\ : std_logic;
SIGNAL \G7|Mux24~0_combout\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G7|Reg[0][7]~7_combout\ : std_logic;
SIGNAL \G7|Mux23~0_combout\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G7|Reg[0][8]~8_combout\ : std_logic;
SIGNAL \G7|Mux22~0_combout\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G7|Reg[0][9]~9_combout\ : std_logic;
SIGNAL \G7|Mux21~0_combout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G7|Reg[0][10]~10_combout\ : std_logic;
SIGNAL \G7|Mux20~0_combout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G7|Reg[0][11]~11_combout\ : std_logic;
SIGNAL \G7|Mux19~0_combout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G7|Reg[0][12]~12_combout\ : std_logic;
SIGNAL \G7|Mux18~0_combout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G7|Reg[0][13]~13_combout\ : std_logic;
SIGNAL \G7|Mux17~0_combout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G7|Reg[0][14]~14_combout\ : std_logic;
SIGNAL \G7|Mux16~0_combout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G7|Reg[0][15]~15_combout\ : std_logic;
SIGNAL \G7|Mux31~0_combout\ : std_logic;
SIGNAL \G7|Mux29~0_combout\ : std_logic;
SIGNAL \G7|Mux28~0_combout\ : std_logic;
SIGNAL \G4|rt[1]~0_combout\ : std_logic;
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G14|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Clock_Sistema~input_o\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
=======
SIGNAL \G13|SAIDA[6]~6_combout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G13|SAIDA[7]~7_combout\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G13|SAIDA[8]~8_combout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G13|SAIDA[9]~9_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G13|SAIDA[10]~10_combout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G13|SAIDA[11]~11_combout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G13|SAIDA[12]~12_combout\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G13|SAIDA[13]~13_combout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G13|SAIDA[14]~14_combout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G13|SAIDA[15]~15_combout\ : std_logic;
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G4|Mux7~0_combout\ : std_logic;
SIGNAL \G4|Mux7~1_combout\ : std_logic;
SIGNAL \G13|SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G4|Mux8~0_combout\ : std_logic;
SIGNAL \G13|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G4|Mux9~0_combout\ : std_logic;
SIGNAL \G4|Mux9~1_combout\ : std_logic;
SIGNAL \G13|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G4|op[0]~0_combout\ : std_logic;
SIGNAL \G4|op[2]~2_combout\ : std_logic;
SIGNAL \G4|op[1]~1_combout\ : std_logic;
SIGNAL \G5|Mux0~0_combout\ : std_logic;
SIGNAL \G16|process_0~0_combout\ : std_logic;
SIGNAL \G4|tipoi[2]~2_combout\ : std_logic;
SIGNAL \G4|Mux2~0_combout\ : std_logic;
SIGNAL \G4|Mux5~0_combout\ : std_logic;
SIGNAL \G4|Mux0~4_combout\ : std_logic;
SIGNAL \G6|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|Mux3~0_combout\ : std_logic;
SIGNAL \G7|Mux22~0_combout\ : std_logic;
SIGNAL \G7|Reg~16_combout\ : std_logic;
SIGNAL \G4|Mux6~0_combout\ : std_logic;
SIGNAL \G6|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G4|rt[1]~0_combout\ : std_logic;
SIGNAL \G7|Mux22~1_combout\ : std_logic;
SIGNAL \G7|Mux22~6_combout\ : std_logic;
SIGNAL \G7|Mux22~2_combout\ : std_logic;
SIGNAL \G4|rt[0]~1_combout\ : std_logic;
SIGNAL \G7|Mux22~3_combout\ : std_logic;
SIGNAL \G7|Mux31~0_combout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G4|funct[0]~0_combout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G4|funct[2]~2_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[0]~9_combout\ : std_logic;
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G4|rd[0]~0_combout\ : std_logic;
SIGNAL \G5|Mux6~0_combout\ : std_logic;
SIGNAL \G7|Mux15~1_combout\ : std_logic;
SIGNAL \G16|Add2~1_sumout\ : std_logic;
SIGNAL \G4|funct[0]~1_combout\ : std_logic;
SIGNAL \G16|Splitter~0_combout\ : std_logic;
SIGNAL \G7|Mux15~3_combout\ : std_logic;
SIGNAL \G16|Add1~66_cout\ : std_logic;
SIGNAL \G16|Add1~1_sumout\ : std_logic;
SIGNAL \G16|Mux15~2_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~0_combout\ : std_logic;
SIGNAL \G16|Mux15~0_combout\ : std_logic;
SIGNAL \G16|Mux15~1_combout\ : std_logic;
SIGNAL \G5|Mux8~0_combout\ : std_logic;
SIGNAL \G7|Mux22~4_combout\ : std_logic;
SIGNAL \G7|Mux30~0_combout\ : std_logic;
SIGNAL \G7|Mux29~0_combout\ : std_logic;
SIGNAL \G7|Mux27~0_combout\ : std_logic;
SIGNAL \G7|Mux28~0_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~4_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~5_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~6_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~7_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~8_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~9_combout\ : std_logic;
SIGNAL \G14|SAIDA[3]~12_combout\ : std_logic;
SIGNAL \G4|tipoi[2]~1_combout\ : std_logic;
SIGNAL \G14|SAIDA[2]~11_combout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G7|Mux13~0_combout\ : std_logic;
SIGNAL \G16|Add1~2\ : std_logic;
SIGNAL \G16|Add1~6\ : std_logic;
SIGNAL \G16|Add1~10\ : std_logic;
SIGNAL \G16|Add1~14\ : std_logic;
SIGNAL \G16|Add1~18\ : std_logic;
SIGNAL \G16|Add1~22\ : std_logic;
SIGNAL \G16|Add1~26\ : std_logic;
SIGNAL \G16|Add1~29_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~10_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~11_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~12_combout\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G16|Add1~30\ : std_logic;
SIGNAL \G16|Add1~33_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[8]~15_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[8]~16_combout\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G16|Add1~34\ : std_logic;
SIGNAL \G16|Add1~37_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[9]~19_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[9]~20_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[9]~25_combout\ : std_logic;
SIGNAL \G7|Mux22~5_combout\ : std_logic;
SIGNAL \G14|SAIDA[9]~18_combout\ : std_logic;
SIGNAL \G16|Splitter~7_combout\ : std_logic;
SIGNAL \G14|SAIDA[1]~10_combout\ : std_logic;
SIGNAL \G7|Reg~17_combout\ : std_logic;
SIGNAL \G7|Reg~18_combout\ : std_logic;
SIGNAL \G16|Add2~2\ : std_logic;
SIGNAL \G16|Add2~6\ : std_logic;
SIGNAL \G16|Add2~10\ : std_logic;
SIGNAL \G16|Add2~14\ : std_logic;
SIGNAL \G16|Add2~18\ : std_logic;
SIGNAL \G16|Add2~22\ : std_logic;
SIGNAL \G16|Add2~26\ : std_logic;
SIGNAL \G16|Add2~29_sumout\ : std_logic;
SIGNAL \G16|Prod~41_combout\ : std_logic;
SIGNAL \G16|Add2~25_sumout\ : std_logic;
SIGNAL \G16|Prod~34_combout\ : std_logic;
SIGNAL \G16|Add2~21_sumout\ : std_logic;
SIGNAL \G16|Prod~28_combout\ : std_logic;
SIGNAL \G16|Add2~17_sumout\ : std_logic;
SIGNAL \G16|Prod~23_combout\ : std_logic;
SIGNAL \G16|Add2~13_sumout\ : std_logic;
SIGNAL \G16|Add2~9_sumout\ : std_logic;
SIGNAL \G16|Add2~5_sumout\ : std_logic;
SIGNAL \G16|Prod~69_combout\ : std_logic;
SIGNAL \G16|Add4~34_cout\ : std_logic;
SIGNAL \G16|Add4~2\ : std_logic;
SIGNAL \G16|Add4~6\ : std_logic;
SIGNAL \G16|Add4~10\ : std_logic;
SIGNAL \G16|Add4~14\ : std_logic;
SIGNAL \G16|Add4~18\ : std_logic;
SIGNAL \G16|Add4~22\ : std_logic;
SIGNAL \G16|Add4~26\ : std_logic;
SIGNAL \G16|Add4~29_sumout\ : std_logic;
SIGNAL \G16|Prod~70_combout\ : std_logic;
SIGNAL \G16|Add3~2\ : std_logic;
SIGNAL \G16|Add3~6\ : std_logic;
SIGNAL \G16|Add3~10\ : std_logic;
SIGNAL \G16|Add3~14\ : std_logic;
SIGNAL \G16|Add3~18\ : std_logic;
SIGNAL \G16|Add3~22\ : std_logic;
SIGNAL \G16|Add3~26\ : std_logic;
SIGNAL \G16|Add3~29_sumout\ : std_logic;
SIGNAL \G16|Prod~48_combout\ : std_logic;
SIGNAL \G16|Add4~25_sumout\ : std_logic;
SIGNAL \G16|Add3~25_sumout\ : std_logic;
SIGNAL \G16|Prod~42_combout\ : std_logic;
SIGNAL \G16|Add4~21_sumout\ : std_logic;
SIGNAL \G16|Add3~21_sumout\ : std_logic;
SIGNAL \G16|Prod~35_combout\ : std_logic;
SIGNAL \G16|Add4~17_sumout\ : std_logic;
SIGNAL \G16|Add3~17_sumout\ : std_logic;
SIGNAL \G16|Prod~29_combout\ : std_logic;
SIGNAL \G16|Add4~13_sumout\ : std_logic;
SIGNAL \G16|Add3~13_sumout\ : std_logic;
SIGNAL \G16|Prod~24_combout\ : std_logic;
SIGNAL \G16|Add4~9_sumout\ : std_logic;
SIGNAL \G16|Add3~9_sumout\ : std_logic;
SIGNAL \G16|Prod~21_combout\ : std_logic;
SIGNAL \G16|Add4~5_sumout\ : std_logic;
SIGNAL \G16|Add3~5_sumout\ : std_logic;
SIGNAL \G16|Prod~19_combout\ : std_logic;
SIGNAL \G16|Add6~34_cout\ : std_logic;
SIGNAL \G16|Add6~2\ : std_logic;
SIGNAL \G16|Add6~6\ : std_logic;
SIGNAL \G16|Add6~10\ : std_logic;
SIGNAL \G16|Add6~14\ : std_logic;
SIGNAL \G16|Add6~18\ : std_logic;
SIGNAL \G16|Add6~22\ : std_logic;
SIGNAL \G16|Add6~26\ : std_logic;
SIGNAL \G16|Add6~29_sumout\ : std_logic;
SIGNAL \G16|Add5~2\ : std_logic;
SIGNAL \G16|Add5~6\ : std_logic;
SIGNAL \G16|Add5~10\ : std_logic;
SIGNAL \G16|Add5~14\ : std_logic;
SIGNAL \G16|Add5~18\ : std_logic;
SIGNAL \G16|Add5~22\ : std_logic;
SIGNAL \G16|Add5~26\ : std_logic;
SIGNAL \G16|Add5~29_sumout\ : std_logic;
SIGNAL \G16|Prod~54_combout\ : std_logic;
SIGNAL \G16|Add6~25_sumout\ : std_logic;
SIGNAL \G16|Add5~25_sumout\ : std_logic;
SIGNAL \G16|Prod~49_combout\ : std_logic;
SIGNAL \G16|Add6~21_sumout\ : std_logic;
SIGNAL \G16|Add5~21_sumout\ : std_logic;
SIGNAL \G16|Prod~43_combout\ : std_logic;
SIGNAL \G16|Add6~17_sumout\ : std_logic;
SIGNAL \G16|Add5~17_sumout\ : std_logic;
SIGNAL \G16|Prod~36_combout\ : std_logic;
SIGNAL \G16|Add6~13_sumout\ : std_logic;
SIGNAL \G16|Add5~13_sumout\ : std_logic;
SIGNAL \G16|Prod~30_combout\ : std_logic;
SIGNAL \G16|Add6~9_sumout\ : std_logic;
SIGNAL \G16|Add5~9_sumout\ : std_logic;
SIGNAL \G16|Prod~25_combout\ : std_logic;
SIGNAL \G16|Add6~5_sumout\ : std_logic;
SIGNAL \G16|Add5~5_sumout\ : std_logic;
SIGNAL \G16|Prod~22_combout\ : std_logic;
SIGNAL \G16|Add8~34_cout\ : std_logic;
SIGNAL \G16|Add8~2\ : std_logic;
SIGNAL \G16|Add8~6\ : std_logic;
SIGNAL \G16|Add8~10\ : std_logic;
SIGNAL \G16|Add8~14\ : std_logic;
SIGNAL \G16|Add8~18\ : std_logic;
SIGNAL \G16|Add8~22\ : std_logic;
SIGNAL \G16|Add8~25_sumout\ : std_logic;
SIGNAL \G16|Add7~2\ : std_logic;
SIGNAL \G16|Add7~6\ : std_logic;
SIGNAL \G16|Add7~10\ : std_logic;
SIGNAL \G16|Add7~14\ : std_logic;
SIGNAL \G16|Add7~18\ : std_logic;
SIGNAL \G16|Add7~22\ : std_logic;
SIGNAL \G16|Add7~25_sumout\ : std_logic;
SIGNAL \G16|Prod~55_combout\ : std_logic;
SIGNAL \G16|Add8~21_sumout\ : std_logic;
SIGNAL \G16|Add7~21_sumout\ : std_logic;
SIGNAL \G16|Prod~50_combout\ : std_logic;
SIGNAL \G16|Add8~17_sumout\ : std_logic;
SIGNAL \G16|Add7~17_sumout\ : std_logic;
SIGNAL \G16|Prod~44_combout\ : std_logic;
SIGNAL \G16|Add8~13_sumout\ : std_logic;
SIGNAL \G16|Add7~13_sumout\ : std_logic;
SIGNAL \G16|Prod~37_combout\ : std_logic;
SIGNAL \G16|Add8~9_sumout\ : std_logic;
SIGNAL \G16|Add7~9_sumout\ : std_logic;
SIGNAL \G16|Prod~31_combout\ : std_logic;
SIGNAL \G16|Add8~5_sumout\ : std_logic;
SIGNAL \G16|Add7~5_sumout\ : std_logic;
SIGNAL \G16|Prod~26_combout\ : std_logic;
SIGNAL \G16|Add10~34_cout\ : std_logic;
SIGNAL \G16|Add10~2\ : std_logic;
SIGNAL \G16|Add10~6\ : std_logic;
SIGNAL \G16|Add10~10\ : std_logic;
SIGNAL \G16|Add10~14\ : std_logic;
SIGNAL \G16|Add10~18\ : std_logic;
SIGNAL \G16|Add10~21_sumout\ : std_logic;
SIGNAL \G16|Add9~2\ : std_logic;
SIGNAL \G16|Add9~6\ : std_logic;
SIGNAL \G16|Add9~10\ : std_logic;
SIGNAL \G16|Add9~14\ : std_logic;
SIGNAL \G16|Add9~18\ : std_logic;
SIGNAL \G16|Add9~21_sumout\ : std_logic;
SIGNAL \G16|Prod~56_combout\ : std_logic;
SIGNAL \G16|Add10~17_sumout\ : std_logic;
SIGNAL \G16|Add9~17_sumout\ : std_logic;
SIGNAL \G16|Prod~51_combout\ : std_logic;
SIGNAL \G16|Add10~13_sumout\ : std_logic;
SIGNAL \G16|Add9~13_sumout\ : std_logic;
SIGNAL \G16|Prod~45_combout\ : std_logic;
SIGNAL \G16|Add10~9_sumout\ : std_logic;
SIGNAL \G16|Add9~9_sumout\ : std_logic;
SIGNAL \G16|Prod~38_combout\ : std_logic;
SIGNAL \G16|Add10~5_sumout\ : std_logic;
SIGNAL \G16|Add9~5_sumout\ : std_logic;
SIGNAL \G16|Prod~32_combout\ : std_logic;
SIGNAL \G16|Add12~34_cout\ : std_logic;
SIGNAL \G16|Add12~2\ : std_logic;
SIGNAL \G16|Add12~6\ : std_logic;
SIGNAL \G16|Add12~10\ : std_logic;
SIGNAL \G16|Add12~14\ : std_logic;
SIGNAL \G16|Add12~17_sumout\ : std_logic;
SIGNAL \G16|Add11~2\ : std_logic;
SIGNAL \G16|Add11~6\ : std_logic;
SIGNAL \G16|Add11~10\ : std_logic;
SIGNAL \G16|Add11~14\ : std_logic;
SIGNAL \G16|Add11~17_sumout\ : std_logic;
SIGNAL \G16|Prod~57_combout\ : std_logic;
SIGNAL \G16|Add12~13_sumout\ : std_logic;
SIGNAL \G16|Add11~13_sumout\ : std_logic;
SIGNAL \G16|Prod~52_combout\ : std_logic;
SIGNAL \G16|Add12~9_sumout\ : std_logic;
SIGNAL \G16|Add11~9_sumout\ : std_logic;
SIGNAL \G16|Prod~46_combout\ : std_logic;
SIGNAL \G16|Add12~5_sumout\ : std_logic;
SIGNAL \G16|Add11~5_sumout\ : std_logic;
SIGNAL \G16|Prod~39_combout\ : std_logic;
SIGNAL \G16|Add14~34_cout\ : std_logic;
SIGNAL \G16|Add14~2\ : std_logic;
SIGNAL \G16|Add14~6\ : std_logic;
SIGNAL \G16|Add14~10\ : std_logic;
SIGNAL \G16|Add14~13_sumout\ : std_logic;
SIGNAL \G16|Add13~2\ : std_logic;
SIGNAL \G16|Add13~6\ : std_logic;
SIGNAL \G16|Add13~10\ : std_logic;
SIGNAL \G16|Add13~13_sumout\ : std_logic;
SIGNAL \G16|Prod~58_combout\ : std_logic;
SIGNAL \G16|Add14~9_sumout\ : std_logic;
SIGNAL \G16|Add13~9_sumout\ : std_logic;
SIGNAL \G16|Prod~53_combout\ : std_logic;
SIGNAL \G16|Add14~5_sumout\ : std_logic;
SIGNAL \G16|Add13~5_sumout\ : std_logic;
SIGNAL \G16|Prod~47_combout\ : std_logic;
SIGNAL \G16|Add15~2\ : std_logic;
SIGNAL \G16|Add15~6\ : std_logic;
SIGNAL \G16|Add15~9_sumout\ : std_logic;
SIGNAL \G16|Add16~34_cout\ : std_logic;
SIGNAL \G16|Add16~2\ : std_logic;
SIGNAL \G16|Add16~6\ : std_logic;
SIGNAL \G16|Add16~9_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~1_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~2_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[9]~18_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[9]~21_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[8]~24_combout\ : std_logic;
SIGNAL \G7|Mux23~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[8]~17_combout\ : std_logic;
SIGNAL \G16|Splitter~6_combout\ : std_logic;
SIGNAL \G16|Add15~5_sumout\ : std_logic;
SIGNAL \G16|Add16~5_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[8]~14_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[8]~17_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[7]~23_combout\ : std_logic;
SIGNAL \G7|Mux24~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[7]~16_combout\ : std_logic;
SIGNAL \G16|Splitter~5_combout\ : std_logic;
SIGNAL \G16|Add15~1_sumout\ : std_logic;
SIGNAL \G16|Add16~1_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~3_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[7]~13_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[6]~22_combout\ : std_logic;
SIGNAL \G7|Mux25~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[6]~15_combout\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G16|Add1~25_sumout\ : std_logic;
SIGNAL \G16|Add13~1_sumout\ : std_logic;
SIGNAL \G16|Add14~1_sumout\ : std_logic;
SIGNAL \G16|Prod~40_combout\ : std_logic;
SIGNAL \G16|Splitter~4_combout\ : std_logic;
SIGNAL \G16|Mux9~0_combout\ : std_logic;
SIGNAL \G16|Mux9~1_combout\ : std_logic;
SIGNAL \G16|Mux9~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[5]~21_combout\ : std_logic;
SIGNAL \G7|Mux26~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[5]~14_combout\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G16|Add1~21_sumout\ : std_logic;
SIGNAL \G16|Add11~1_sumout\ : std_logic;
SIGNAL \G16|Add12~1_sumout\ : std_logic;
SIGNAL \G16|Prod~33_combout\ : std_logic;
SIGNAL \G16|Splitter~3_combout\ : std_logic;
SIGNAL \G16|Mux10~0_combout\ : std_logic;
SIGNAL \G16|Mux10~1_combout\ : std_logic;
SIGNAL \G16|Mux10~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[4]~20_combout\ : std_logic;
SIGNAL \G7|Mux27~1_combout\ : std_logic;
SIGNAL \G14|SAIDA[4]~13_combout\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G16|Add1~17_sumout\ : std_logic;
SIGNAL \G16|Add9~1_sumout\ : std_logic;
SIGNAL \G16|Add10~1_sumout\ : std_logic;
SIGNAL \G16|Prod~27_combout\ : std_logic;
SIGNAL \G16|Splitter~2_combout\ : std_logic;
SIGNAL \G16|Mux11~0_combout\ : std_logic;
SIGNAL \G16|Mux11~1_combout\ : std_logic;
SIGNAL \G16|Mux11~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[3]~19_combout\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G7|Mux12~1_combout\ : std_logic;
SIGNAL \G16|Add1~13_sumout\ : std_logic;
SIGNAL \G16|Mux12~2_combout\ : std_logic;
SIGNAL \G16|Add7~1_sumout\ : std_logic;
SIGNAL \G16|Add8~1_sumout\ : std_logic;
SIGNAL \G16|Mux12~3_combout\ : std_logic;
SIGNAL \G16|Mux12~4_combout\ : std_logic;
SIGNAL \G16|Mux12~0_combout\ : std_logic;
SIGNAL \G16|Mux12~1_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[2]~18_combout\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G16|Add1~9_sumout\ : std_logic;
SIGNAL \G16|Add5~1_sumout\ : std_logic;
SIGNAL \G16|Add6~1_sumout\ : std_logic;
SIGNAL \G16|Prod~20_combout\ : std_logic;
SIGNAL \G16|Splitter~1_combout\ : std_logic;
SIGNAL \G16|Mux13~0_combout\ : std_logic;
SIGNAL \G16|Mux13~1_combout\ : std_logic;
SIGNAL \G16|Mux13~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[1]~17_combout\ : std_logic;
SIGNAL \G7|Mux14~0_combout\ : std_logic;
SIGNAL \G7|Mux14~1_combout\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G16|Add1~5_sumout\ : std_logic;
SIGNAL \G16|Mux14~1_combout\ : std_logic;
SIGNAL \G16|Add3~1_sumout\ : std_logic;
SIGNAL \G16|Add4~1_sumout\ : std_logic;
SIGNAL \G16|Mux14~2_combout\ : std_logic;
SIGNAL \G16|Mux14~3_combout\ : std_logic;
SIGNAL \G16|Mux14~4_combout\ : std_logic;
SIGNAL \G16|Mux14~0_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[0]~16_combout\ : std_logic;
SIGNAL \G7|Mux15~2_combout\ : std_logic;
SIGNAL \G7|Mux11~1_combout\ : std_logic;
SIGNAL \G7|Mux10~1_combout\ : std_logic;
SIGNAL \G7|Mux9~1_combout\ : std_logic;
SIGNAL \G7|Mux8~1_combout\ : std_logic;
SIGNAL \G7|Mux7~0_combout\ : std_logic;
SIGNAL \G7|Mux6~0_combout\ : std_logic;
SIGNAL \G7|Mux21~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[10]~19_combout\ : std_logic;
SIGNAL \G16|Splitter~8_combout\ : std_logic;
SIGNAL \G16|Add8~26\ : std_logic;
SIGNAL \G16|Add8~29_sumout\ : std_logic;
SIGNAL \G16|Add7~26\ : std_logic;
SIGNAL \G16|Add7~29_sumout\ : std_logic;
SIGNAL \G16|Prod~59_combout\ : std_logic;
SIGNAL \G16|Add10~22\ : std_logic;
SIGNAL \G16|Add10~25_sumout\ : std_logic;
SIGNAL \G16|Add9~22\ : std_logic;
SIGNAL \G16|Add9~25_sumout\ : std_logic;
SIGNAL \G16|Prod~60_combout\ : std_logic;
SIGNAL \G16|Add12~18\ : std_logic;
SIGNAL \G16|Add12~21_sumout\ : std_logic;
SIGNAL \G16|Add11~18\ : std_logic;
SIGNAL \G16|Add11~21_sumout\ : std_logic;
SIGNAL \G16|Prod~61_combout\ : std_logic;
SIGNAL \G16|Add14~14\ : std_logic;
SIGNAL \G16|Add14~17_sumout\ : std_logic;
SIGNAL \G16|Add13~14\ : std_logic;
SIGNAL \G16|Add13~17_sumout\ : std_logic;
SIGNAL \G16|Prod~62_combout\ : std_logic;
SIGNAL \G16|Add15~10\ : std_logic;
SIGNAL \G16|Add15~13_sumout\ : std_logic;
SIGNAL \G16|Add16~10\ : std_logic;
SIGNAL \G16|Add16~13_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~22_combout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G16|Add1~38\ : std_logic;
SIGNAL \G16|Add1~41_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~23_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~24_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[10]~26_combout\ : std_logic;
SIGNAL \G7|Mux5~0_combout\ : std_logic;
SIGNAL \G7|Mux20~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[11]~20_combout\ : std_logic;
SIGNAL \G16|Splitter~9_combout\ : std_logic;
SIGNAL \G16|Add10~26\ : std_logic;
SIGNAL \G16|Add10~29_sumout\ : std_logic;
SIGNAL \G16|Add9~26\ : std_logic;
SIGNAL \G16|Add9~29_sumout\ : std_logic;
SIGNAL \G16|Prod~63_combout\ : std_logic;
SIGNAL \G16|Add12~22\ : std_logic;
SIGNAL \G16|Add12~25_sumout\ : std_logic;
SIGNAL \G16|Add11~22\ : std_logic;
SIGNAL \G16|Add11~25_sumout\ : std_logic;
SIGNAL \G16|Prod~64_combout\ : std_logic;
SIGNAL \G16|Add14~18\ : std_logic;
SIGNAL \G16|Add14~21_sumout\ : std_logic;
SIGNAL \G16|Add13~18\ : std_logic;
SIGNAL \G16|Add13~21_sumout\ : std_logic;
SIGNAL \G16|Prod~65_combout\ : std_logic;
SIGNAL \G16|Add15~14\ : std_logic;
SIGNAL \G16|Add15~17_sumout\ : std_logic;
SIGNAL \G16|Add16~14\ : std_logic;
SIGNAL \G16|Add16~17_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[11]~26_combout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G16|Add1~42\ : std_logic;
SIGNAL \G16|Add1~45_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[11]~27_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[11]~28_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[11]~27_combout\ : std_logic;
SIGNAL \G7|Mux4~0_combout\ : std_logic;
SIGNAL \G7|Mux19~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[12]~21_combout\ : std_logic;
SIGNAL \G16|Splitter~10_combout\ : std_logic;
SIGNAL \G16|Add12~26\ : std_logic;
SIGNAL \G16|Add12~29_sumout\ : std_logic;
SIGNAL \G16|Add11~26\ : std_logic;
SIGNAL \G16|Add11~29_sumout\ : std_logic;
SIGNAL \G16|Prod~66_combout\ : std_logic;
SIGNAL \G16|Add14~22\ : std_logic;
SIGNAL \G16|Add14~25_sumout\ : std_logic;
SIGNAL \G16|Add13~22\ : std_logic;
SIGNAL \G16|Add13~25_sumout\ : std_logic;
SIGNAL \G16|Prod~67_combout\ : std_logic;
SIGNAL \G16|Add15~18\ : std_logic;
SIGNAL \G16|Add15~21_sumout\ : std_logic;
SIGNAL \G16|Add16~18\ : std_logic;
SIGNAL \G16|Add16~21_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[12]~30_combout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G16|Add1~46\ : std_logic;
SIGNAL \G16|Add1~49_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[12]~31_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[12]~32_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[12]~28_combout\ : std_logic;
SIGNAL \G7|Mux3~0_combout\ : std_logic;
SIGNAL \G7|Mux18~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[13]~22_combout\ : std_logic;
SIGNAL \G16|Splitter~11_combout\ : std_logic;
SIGNAL \G16|Add14~26\ : std_logic;
SIGNAL \G16|Add14~29_sumout\ : std_logic;
SIGNAL \G16|Add13~26\ : std_logic;
SIGNAL \G16|Add13~29_sumout\ : std_logic;
SIGNAL \G16|Prod~68_combout\ : std_logic;
SIGNAL \G16|Add15~22\ : std_logic;
SIGNAL \G16|Add15~25_sumout\ : std_logic;
SIGNAL \G16|Add16~22\ : std_logic;
SIGNAL \G16|Add16~25_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~34_combout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G16|Add1~50\ : std_logic;
SIGNAL \G16|Add1~53_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~35_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~36_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[13]~29_combout\ : std_logic;
SIGNAL \G7|Mux2~0_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~38_combout\ : std_logic;
SIGNAL \G7|Mux17~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[14]~23_combout\ : std_logic;
SIGNAL \G16|Add1~54\ : std_logic;
SIGNAL \G16|Add1~57_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~39_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~40_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~41_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~42_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~43_combout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~44_combout\ : std_logic;
SIGNAL \G16|Add15~26\ : std_logic;
SIGNAL \G16|Add15~29_sumout\ : std_logic;
SIGNAL \G16|Add16~26\ : std_logic;
SIGNAL \G16|Add16~29_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~45_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~46_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[14]~30_combout\ : std_logic;
SIGNAL \G7|Mux1~0_combout\ : std_logic;
SIGNAL \G7|Mux16~0_combout\ : std_logic;
SIGNAL \G14|SAIDA[15]~24_combout\ : std_logic;
SIGNAL \G16|Add1~58\ : std_logic;
SIGNAL \G16|Add1~61_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~48_combout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~49_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \G18|SAIDA[15]~31_combout\ : std_logic;
SIGNAL \G7|Mux0~1_combout\ : std_logic;
SIGNAL \G4|rs[1]~0_combout\ : std_logic;
SIGNAL \G4|rs[2]~1_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[10]~25_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[11]~29_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[12]~33_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[13]~37_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[14]~47_combout\ : std_logic;
SIGNAL \G16|Saida_to_Dados[15]~50_combout\ : std_logic;
SIGNAL \G5|Mux7~0_combout\ : std_logic;
SIGNAL \G5|Mux11~0_combout\ : std_logic;
SIGNAL \G5|Mux9~0_combout\ : std_logic;
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G3|resshift\ : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \G16|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~33_sumout\ : std_logic;
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
SIGNAL \G16|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~29_sumout\ : std_logic;
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
SIGNAL \G16|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add15~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add16~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add13~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[2]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_funct[2]~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_funct[0]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_funct[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_op[2]~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_op[1]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_op[0]~0_combout\ : std_logic;
>>>>>>> master
SIGNAL \G7|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux21~0_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \G7|ALT_INV_Mux22~0_combout\ : std_logic;
=======
SIGNAL \G7|ALT_INV_Mux22~5_combout\ : std_logic;
>>>>>>> master
SIGNAL \G7|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux26~0_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \G7|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
=======
SIGNAL \G7|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~4_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rt[0]~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rt[1]~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~16_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portbdataout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portbdataout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[11]~28_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[11]~27_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[11]~26_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~65_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~64_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~63_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~9_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[11]~20_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~24_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~23_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~22_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~62_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~61_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~60_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~59_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~8_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[10]~19_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[9]~20_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[9]~19_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[9]~18_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~58_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~57_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~56_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~55_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~54_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~7_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[9]~18_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[8]~16_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[8]~15_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[8]~14_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~53_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~52_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~51_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~50_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~49_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~48_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~6_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[8]~17_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~12_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~11_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~10_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~9_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~8_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~7_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~6_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~5_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[7]~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[10]~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~47_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~46_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~45_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~44_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~43_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~42_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~41_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~5_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[7]~16_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~40_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~39_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~38_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~37_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~36_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~35_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~34_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[6]~15_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~33_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~32_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~31_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~30_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~29_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~28_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[5]~14_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~27_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~26_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~25_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~24_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~23_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[4]~13_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~22_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~21_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[3]~12_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~20_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~19_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[2]~11_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[1]~10_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~0_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[0]~9_combout\ : std_logic;
SIGNAL \G16|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_resshift\ : std_logic_vector(15 DOWNTO 14);
SIGNAL \G7|ALT_INV_Mux22~6_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~70_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~69_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~18_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~17_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[2]~2_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[15]~31_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[14]~30_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[13]~29_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[12]~28_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[11]~27_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[10]~26_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[9]~25_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[8]~24_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[7]~23_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[6]~22_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[5]~21_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[4]~20_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[3]~19_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[2]~18_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[1]~17_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[0]~16_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~49_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~48_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[15]~24_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~46_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~45_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~44_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~43_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~42_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[14]~41_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~40_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~39_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[14]~23_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[15]~38_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~36_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~35_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[13]~34_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~68_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~11_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[13]~22_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[12]~32_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[12]~31_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Saida_to_Dados[12]~30_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~67_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~66_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Splitter~10_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA[12]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Clock_Sistema~input_o\ : std_logic;
>>>>>>> master

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
<<<<<<< HEAD
\ALT_INV_Clock_Sistema~input_o\ <= NOT \Clock_Sistema~input_o\;
\G14|ALT_INV_SAIDA\(15) <= NOT \G14|SAIDA\(15);
\G14|ALT_INV_SAIDA\(14) <= NOT \G14|SAIDA\(14);
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
=======

\G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \G7|Mux31~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \G7|Mux30~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \G7|Mux29~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \G7|Mux28~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \G7|Mux27~1_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \G7|Mux26~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \G7|Mux25~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \G7|Mux24~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \G7|Mux23~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \G7|Mux22~5_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \G7|Mux21~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \G7|Mux20~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \G7|Mux19~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \G7|Mux18~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \G7|Mux17~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \G7|Mux16~0_combout\;

\G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\G16|Saida_to_Dados[9]~21_combout\ & \G16|Saida_to_Dados[8]~17_combout\ & \G16|Saida_to_Dados[7]~13_combout\ & \G16|Mux9~2_combout\ & \G16|Mux10~2_combout\ & \G16|Mux11~2_combout\ & 
\G16|Mux12~1_combout\ & \G16|Mux13~2_combout\ & \G16|Mux14~0_combout\ & \G16|Mux15~1_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);
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
\G16|ALT_INV_Add4~9_sumout\ <= NOT \G16|Add4~9_sumout\;
\G16|ALT_INV_Add2~13_sumout\ <= NOT \G16|Add2~13_sumout\;
\G16|ALT_INV_Add1~13_sumout\ <= NOT \G16|Add1~13_sumout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G16|ALT_INV_Add6~1_sumout\ <= NOT \G16|Add6~1_sumout\;
\G16|ALT_INV_Add5~1_sumout\ <= NOT \G16|Add5~1_sumout\;
\G16|ALT_INV_Add3~5_sumout\ <= NOT \G16|Add3~5_sumout\;
\G16|ALT_INV_Add4~5_sumout\ <= NOT \G16|Add4~5_sumout\;
\G16|ALT_INV_Add2~9_sumout\ <= NOT \G16|Add2~9_sumout\;
\G16|ALT_INV_Add1~9_sumout\ <= NOT \G16|Add1~9_sumout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G16|ALT_INV_Add3~1_sumout\ <= NOT \G16|Add3~1_sumout\;
\G16|ALT_INV_Add4~1_sumout\ <= NOT \G16|Add4~1_sumout\;
\G16|ALT_INV_Add2~5_sumout\ <= NOT \G16|Add2~5_sumout\;
\G16|ALT_INV_Add1~5_sumout\ <= NOT \G16|Add1~5_sumout\;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G16|ALT_INV_Add2~1_sumout\ <= NOT \G16|Add2~1_sumout\;
\G16|ALT_INV_Add1~1_sumout\ <= NOT \G16|Add1~1_sumout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
\G16|ALT_INV_Add12~17_sumout\ <= NOT \G16|Add12~17_sumout\;
\G16|ALT_INV_Add9~21_sumout\ <= NOT \G16|Add9~21_sumout\;
\G16|ALT_INV_Add10~21_sumout\ <= NOT \G16|Add10~21_sumout\;
\G16|ALT_INV_Add7~25_sumout\ <= NOT \G16|Add7~25_sumout\;
\G16|ALT_INV_Add8~25_sumout\ <= NOT \G16|Add8~25_sumout\;
\G16|ALT_INV_Add5~29_sumout\ <= NOT \G16|Add5~29_sumout\;
\G16|ALT_INV_Add6~29_sumout\ <= NOT \G16|Add6~29_sumout\;
\G16|ALT_INV_Add15~9_sumout\ <= NOT \G16|Add15~9_sumout\;
\G16|ALT_INV_Add1~33_sumout\ <= NOT \G16|Add1~33_sumout\;
\G16|ALT_INV_Add0~33_sumout\ <= NOT \G16|Add0~33_sumout\;
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
\G16|ALT_INV_Add1~29_sumout\ <= NOT \G16|Add1~29_sumout\;
\G16|ALT_INV_Add0~29_sumout\ <= NOT \G16|Add0~29_sumout\;
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
\G16|ALT_INV_Add0~53_sumout\ <= NOT \G16|Add0~53_sumout\;
\G16|ALT_INV_Add16~25_sumout\ <= NOT \G16|Add16~25_sumout\;
\G16|ALT_INV_Add13~29_sumout\ <= NOT \G16|Add13~29_sumout\;
\G16|ALT_INV_Add14~29_sumout\ <= NOT \G16|Add14~29_sumout\;
\G16|ALT_INV_Add15~25_sumout\ <= NOT \G16|Add15~25_sumout\;
\G16|ALT_INV_Add1~49_sumout\ <= NOT \G16|Add1~49_sumout\;
\G16|ALT_INV_Add0~49_sumout\ <= NOT \G16|Add0~49_sumout\;
\G16|ALT_INV_Add16~21_sumout\ <= NOT \G16|Add16~21_sumout\;
\G16|ALT_INV_Add13~25_sumout\ <= NOT \G16|Add13~25_sumout\;
\G16|ALT_INV_Add14~25_sumout\ <= NOT \G16|Add14~25_sumout\;
\G16|ALT_INV_Add11~29_sumout\ <= NOT \G16|Add11~29_sumout\;
\G16|ALT_INV_Add12~29_sumout\ <= NOT \G16|Add12~29_sumout\;
\G16|ALT_INV_Add15~21_sumout\ <= NOT \G16|Add15~21_sumout\;
\G16|ALT_INV_Add1~45_sumout\ <= NOT \G16|Add1~45_sumout\;
\G16|ALT_INV_Add0~45_sumout\ <= NOT \G16|Add0~45_sumout\;
\G16|ALT_INV_Add16~17_sumout\ <= NOT \G16|Add16~17_sumout\;
\G16|ALT_INV_Add13~21_sumout\ <= NOT \G16|Add13~21_sumout\;
\G16|ALT_INV_Add14~21_sumout\ <= NOT \G16|Add14~21_sumout\;
\G16|ALT_INV_Add11~25_sumout\ <= NOT \G16|Add11~25_sumout\;
\G16|ALT_INV_Add12~25_sumout\ <= NOT \G16|Add12~25_sumout\;
\G16|ALT_INV_Add9~29_sumout\ <= NOT \G16|Add9~29_sumout\;
\G16|ALT_INV_Add10~29_sumout\ <= NOT \G16|Add10~29_sumout\;
\G16|ALT_INV_Add15~17_sumout\ <= NOT \G16|Add15~17_sumout\;
\G16|ALT_INV_Add1~41_sumout\ <= NOT \G16|Add1~41_sumout\;
\G16|ALT_INV_Add0~41_sumout\ <= NOT \G16|Add0~41_sumout\;
\G16|ALT_INV_Add16~13_sumout\ <= NOT \G16|Add16~13_sumout\;
\G16|ALT_INV_Add13~17_sumout\ <= NOT \G16|Add13~17_sumout\;
\G16|ALT_INV_Add14~17_sumout\ <= NOT \G16|Add14~17_sumout\;
\G16|ALT_INV_Add11~21_sumout\ <= NOT \G16|Add11~21_sumout\;
\G16|ALT_INV_Add12~21_sumout\ <= NOT \G16|Add12~21_sumout\;
\G16|ALT_INV_Add9~25_sumout\ <= NOT \G16|Add9~25_sumout\;
\G16|ALT_INV_Add10~25_sumout\ <= NOT \G16|Add10~25_sumout\;
\G16|ALT_INV_Add7~29_sumout\ <= NOT \G16|Add7~29_sumout\;
\G16|ALT_INV_Add8~29_sumout\ <= NOT \G16|Add8~29_sumout\;
\G16|ALT_INV_Add15~13_sumout\ <= NOT \G16|Add15~13_sumout\;
\G16|ALT_INV_Add1~37_sumout\ <= NOT \G16|Add1~37_sumout\;
\G16|ALT_INV_Add0~37_sumout\ <= NOT \G16|Add0~37_sumout\;
\G16|ALT_INV_Add16~9_sumout\ <= NOT \G16|Add16~9_sumout\;
\G16|ALT_INV_Add13~13_sumout\ <= NOT \G16|Add13~13_sumout\;
\G16|ALT_INV_Add14~13_sumout\ <= NOT \G16|Add14~13_sumout\;
\G16|ALT_INV_Add11~17_sumout\ <= NOT \G16|Add11~17_sumout\;
\G4|ALT_INV_tipoi[2]~1_combout\ <= NOT \G4|tipoi[2]~1_combout\;
\G4|ALT_INV_tipoi[0]~0_combout\ <= NOT \G4|tipoi[0]~0_combout\;
\G4|ALT_INV_funct[2]~2_combout\ <= NOT \G4|funct[2]~2_combout\;
\G4|ALT_INV_Mux1~0_combout\ <= NOT \G4|Mux1~0_combout\;
\G4|ALT_INV_funct[0]~1_combout\ <= NOT \G4|funct[0]~1_combout\;
\G4|ALT_INV_Mux2~0_combout\ <= NOT \G4|Mux2~0_combout\;
\G4|ALT_INV_funct[0]~0_combout\ <= NOT \G4|funct[0]~0_combout\;
\G4|ALT_INV_op[2]~2_combout\ <= NOT \G4|op[2]~2_combout\;
\G4|ALT_INV_op[1]~1_combout\ <= NOT \G4|op[1]~1_combout\;
\G4|ALT_INV_op[0]~0_combout\ <= NOT \G4|op[0]~0_combout\;
>>>>>>> master
\G7|ALT_INV_Mux16~0_combout\ <= NOT \G7|Mux16~0_combout\;
\G7|ALT_INV_Mux17~0_combout\ <= NOT \G7|Mux17~0_combout\;
\G7|ALT_INV_Mux18~0_combout\ <= NOT \G7|Mux18~0_combout\;
\G7|ALT_INV_Mux19~0_combout\ <= NOT \G7|Mux19~0_combout\;
\G7|ALT_INV_Mux20~0_combout\ <= NOT \G7|Mux20~0_combout\;
\G7|ALT_INV_Mux21~0_combout\ <= NOT \G7|Mux21~0_combout\;
<<<<<<< HEAD
\G7|ALT_INV_Mux22~0_combout\ <= NOT \G7|Mux22~0_combout\;
=======
\G7|ALT_INV_Mux22~5_combout\ <= NOT \G7|Mux22~5_combout\;
>>>>>>> master
\G7|ALT_INV_Mux23~0_combout\ <= NOT \G7|Mux23~0_combout\;
\G7|ALT_INV_Mux24~0_combout\ <= NOT \G7|Mux24~0_combout\;
\G7|ALT_INV_Mux25~0_combout\ <= NOT \G7|Mux25~0_combout\;
\G7|ALT_INV_Mux26~0_combout\ <= NOT \G7|Mux26~0_combout\;
<<<<<<< HEAD
\G7|ALT_INV_Mux27~0_combout\ <= NOT \G7|Mux27~0_combout\;
\G7|ALT_INV_Mux28~1_combout\ <= NOT \G7|Mux28~1_combout\;
\G7|ALT_INV_Mux29~1_combout\ <= NOT \G7|Mux29~1_combout\;
\G7|ALT_INV_Mux30~0_combout\ <= NOT \G7|Mux30~0_combout\;
\G7|ALT_INV_Mux31~1_combout\ <= NOT \G7|Mux31~1_combout\;
\G4|ALT_INV_Mux0~3_combout\ <= NOT \G4|Mux0~3_combout\;
\G4|ALT_INV_Mux0~2_combout\ <= NOT \G4|Mux0~2_combout\;
\G4|ALT_INV_Mux0~1_combout\ <= NOT \G4|Mux0~1_combout\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
=======
\G7|ALT_INV_Mux27~1_combout\ <= NOT \G7|Mux27~1_combout\;
\G7|ALT_INV_Mux27~0_combout\ <= NOT \G7|Mux27~0_combout\;
\G7|ALT_INV_Mux29~0_combout\ <= NOT \G7|Mux29~0_combout\;
\G7|ALT_INV_Mux30~0_combout\ <= NOT \G7|Mux30~0_combout\;
\G7|ALT_INV_Mux22~4_combout\ <= NOT \G7|Mux22~4_combout\;
\G7|ALT_INV_Mux31~0_combout\ <= NOT \G7|Mux31~0_combout\;
\G7|ALT_INV_Mux22~3_combout\ <= NOT \G7|Mux22~3_combout\;
\G4|ALT_INV_rt[0]~1_combout\ <= NOT \G4|rt[0]~1_combout\;
\G7|ALT_INV_Mux22~2_combout\ <= NOT \G7|Mux22~2_combout\;
\G7|ALT_INV_Mux22~1_combout\ <= NOT \G7|Mux22~1_combout\;
\G4|ALT_INV_rt[1]~0_combout\ <= NOT \G4|rt[1]~0_combout\;
\G7|ALT_INV_Reg~16_combout\ <= NOT \G7|Reg~16_combout\;
\G7|ALT_INV_Mux0~1_combout\ <= NOT \G7|Mux0~1_combout\;
\G7|ALT_INV_Mux1~0_combout\ <= NOT \G7|Mux1~0_combout\;
\G7|ALT_INV_Mux2~0_combout\ <= NOT \G7|Mux2~0_combout\;
\G7|ALT_INV_Mux3~0_combout\ <= NOT \G7|Mux3~0_combout\;
\G7|ALT_INV_Mux4~0_combout\ <= NOT \G7|Mux4~0_combout\;
\G7|ALT_INV_Mux5~0_combout\ <= NOT \G7|Mux5~0_combout\;
\G7|ALT_INV_Mux12~1_combout\ <= NOT \G7|Mux12~1_combout\;
\G7|ALT_INV_Mux13~0_combout\ <= NOT \G7|Mux13~0_combout\;
\G7|ALT_INV_Mux14~1_combout\ <= NOT \G7|Mux14~1_combout\;
\G7|ALT_INV_Mux14~0_combout\ <= NOT \G7|Mux14~0_combout\;
\G7|ALT_INV_Mux22~0_combout\ <= NOT \G7|Mux22~0_combout\;
\G7|ALT_INV_Mux15~2_combout\ <= NOT \G7|Mux15~2_combout\;
\G7|ALT_INV_Mux15~1_combout\ <= NOT \G7|Mux15~1_combout\;
\G5|ALT_INV_Mux6~0_combout\ <= NOT \G5|Mux6~0_combout\;
\G6|ALT_INV_SAIDA[1]~1_combout\ <= NOT \G6|SAIDA[1]~1_combout\;
\G4|ALT_INV_Mux5~0_combout\ <= NOT \G4|Mux5~0_combout\;
\G6|ALT_INV_SAIDA[0]~0_combout\ <= NOT \G6|SAIDA[0]~0_combout\;
\G4|ALT_INV_Mux6~0_combout\ <= NOT \G4|Mux6~0_combout\;
\G4|ALT_INV_Mux0~4_combout\ <= NOT \G4|Mux0~4_combout\;
\G4|ALT_INV_rd[0]~0_combout\ <= NOT \G4|rd[0]~0_combout\;
\G4|ALT_INV_Mux0~3_combout\ <= NOT \G4|Mux0~3_combout\;
\G4|ALT_INV_Mux9~1_combout\ <= NOT \G4|Mux9~1_combout\;
\G4|ALT_INV_Mux3~0_combout\ <= NOT \G4|Mux3~0_combout\;
\G4|ALT_INV_Mux7~1_combout\ <= NOT \G4|Mux7~1_combout\;
\G4|ALT_INV_Mux7~0_combout\ <= NOT \G4|Mux7~0_combout\;
\G4|ALT_INV_Mux8~0_combout\ <= NOT \G4|Mux8~0_combout\;
\G4|ALT_INV_Mux0~2_combout\ <= NOT \G4|Mux0~2_combout\;
\G4|ALT_INV_Mux0~1_combout\ <= NOT \G4|Mux0~1_combout\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
\G4|ALT_INV_Mux9~0_combout\ <= NOT \G4|Mux9~0_combout\;
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
>>>>>>> master
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
<<<<<<< HEAD
\G16|ALT_INV_Add0~61_sumout\ <= NOT \G16|Add0~61_sumout\;
\G16|ALT_INV_Add0~57_sumout\ <= NOT \G16|Add0~57_sumout\;
\G16|ALT_INV_Add0~53_sumout\ <= NOT \G16|Add0~53_sumout\;
\G16|ALT_INV_Add0~49_sumout\ <= NOT \G16|Add0~49_sumout\;
\G16|ALT_INV_Add0~45_sumout\ <= NOT \G16|Add0~45_sumout\;
\G16|ALT_INV_Add0~41_sumout\ <= NOT \G16|Add0~41_sumout\;
\G16|ALT_INV_Add0~37_sumout\ <= NOT \G16|Add0~37_sumout\;
\G16|ALT_INV_Add0~33_sumout\ <= NOT \G16|Add0~33_sumout\;
\G16|ALT_INV_Add0~29_sumout\ <= NOT \G16|Add0~29_sumout\;
\G16|ALT_INV_Add0~25_sumout\ <= NOT \G16|Add0~25_sumout\;
\G16|ALT_INV_Add0~21_sumout\ <= NOT \G16|Add0~21_sumout\;
\G16|ALT_INV_Add0~17_sumout\ <= NOT \G16|Add0~17_sumout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
=======
\G16|ALT_INV_Mux15~2_combout\ <= NOT \G16|Mux15~2_combout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a15~portbdataout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portbdataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a14~portbdataout\;
\G16|ALT_INV_Saida_to_Dados[11]~28_combout\ <= NOT \G16|Saida_to_Dados[11]~28_combout\;
\G16|ALT_INV_Saida_to_Dados[11]~27_combout\ <= NOT \G16|Saida_to_Dados[11]~27_combout\;
\G16|ALT_INV_Saida_to_Dados[11]~26_combout\ <= NOT \G16|Saida_to_Dados[11]~26_combout\;
\G16|ALT_INV_Prod~65_combout\ <= NOT \G16|Prod~65_combout\;
\G16|ALT_INV_Prod~64_combout\ <= NOT \G16|Prod~64_combout\;
\G16|ALT_INV_Prod~63_combout\ <= NOT \G16|Prod~63_combout\;
\G16|ALT_INV_Splitter~9_combout\ <= NOT \G16|Splitter~9_combout\;
\G14|ALT_INV_SAIDA[11]~20_combout\ <= NOT \G14|SAIDA[11]~20_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~24_combout\ <= NOT \G16|Saida_to_Dados[10]~24_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~23_combout\ <= NOT \G16|Saida_to_Dados[10]~23_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~22_combout\ <= NOT \G16|Saida_to_Dados[10]~22_combout\;
\G16|ALT_INV_Prod~62_combout\ <= NOT \G16|Prod~62_combout\;
\G16|ALT_INV_Prod~61_combout\ <= NOT \G16|Prod~61_combout\;
\G16|ALT_INV_Prod~60_combout\ <= NOT \G16|Prod~60_combout\;
\G16|ALT_INV_Prod~59_combout\ <= NOT \G16|Prod~59_combout\;
\G16|ALT_INV_Splitter~8_combout\ <= NOT \G16|Splitter~8_combout\;
\G14|ALT_INV_SAIDA[10]~19_combout\ <= NOT \G14|SAIDA[10]~19_combout\;
\G16|ALT_INV_Saida_to_Dados[9]~20_combout\ <= NOT \G16|Saida_to_Dados[9]~20_combout\;
\G16|ALT_INV_Saida_to_Dados[9]~19_combout\ <= NOT \G16|Saida_to_Dados[9]~19_combout\;
\G16|ALT_INV_Saida_to_Dados[9]~18_combout\ <= NOT \G16|Saida_to_Dados[9]~18_combout\;
\G16|ALT_INV_Prod~58_combout\ <= NOT \G16|Prod~58_combout\;
\G16|ALT_INV_Prod~57_combout\ <= NOT \G16|Prod~57_combout\;
\G16|ALT_INV_Prod~56_combout\ <= NOT \G16|Prod~56_combout\;
\G16|ALT_INV_Prod~55_combout\ <= NOT \G16|Prod~55_combout\;
\G16|ALT_INV_Prod~54_combout\ <= NOT \G16|Prod~54_combout\;
\G16|ALT_INV_Splitter~7_combout\ <= NOT \G16|Splitter~7_combout\;
\G14|ALT_INV_SAIDA[9]~18_combout\ <= NOT \G14|SAIDA[9]~18_combout\;
\G16|ALT_INV_Saida_to_Dados[8]~16_combout\ <= NOT \G16|Saida_to_Dados[8]~16_combout\;
\G16|ALT_INV_Saida_to_Dados[8]~15_combout\ <= NOT \G16|Saida_to_Dados[8]~15_combout\;
\G16|ALT_INV_Saida_to_Dados[8]~14_combout\ <= NOT \G16|Saida_to_Dados[8]~14_combout\;
\G16|ALT_INV_Prod~53_combout\ <= NOT \G16|Prod~53_combout\;
\G16|ALT_INV_Prod~52_combout\ <= NOT \G16|Prod~52_combout\;
\G16|ALT_INV_Prod~51_combout\ <= NOT \G16|Prod~51_combout\;
\G16|ALT_INV_Prod~50_combout\ <= NOT \G16|Prod~50_combout\;
\G16|ALT_INV_Prod~49_combout\ <= NOT \G16|Prod~49_combout\;
\G16|ALT_INV_Prod~48_combout\ <= NOT \G16|Prod~48_combout\;
\G16|ALT_INV_Splitter~6_combout\ <= NOT \G16|Splitter~6_combout\;
\G14|ALT_INV_SAIDA[8]~17_combout\ <= NOT \G14|SAIDA[8]~17_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~12_combout\ <= NOT \G16|Saida_to_Dados[7]~12_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~11_combout\ <= NOT \G16|Saida_to_Dados[7]~11_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~10_combout\ <= NOT \G16|Saida_to_Dados[7]~10_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~9_combout\ <= NOT \G16|Saida_to_Dados[7]~9_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~8_combout\ <= NOT \G16|Saida_to_Dados[10]~8_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~7_combout\ <= NOT \G16|Saida_to_Dados[10]~7_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~6_combout\ <= NOT \G16|Saida_to_Dados[10]~6_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~5_combout\ <= NOT \G16|Saida_to_Dados[10]~5_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~4_combout\ <= NOT \G16|Saida_to_Dados[15]~4_combout\;
\G16|ALT_INV_Saida_to_Dados[7]~3_combout\ <= NOT \G16|Saida_to_Dados[7]~3_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~2_combout\ <= NOT \G16|Saida_to_Dados[10]~2_combout\;
\G16|ALT_INV_Saida_to_Dados[10]~1_combout\ <= NOT \G16|Saida_to_Dados[10]~1_combout\;
\G16|ALT_INV_Prod~47_combout\ <= NOT \G16|Prod~47_combout\;
\G16|ALT_INV_Prod~46_combout\ <= NOT \G16|Prod~46_combout\;
\G16|ALT_INV_Prod~45_combout\ <= NOT \G16|Prod~45_combout\;
\G16|ALT_INV_Prod~44_combout\ <= NOT \G16|Prod~44_combout\;
\G16|ALT_INV_Prod~43_combout\ <= NOT \G16|Prod~43_combout\;
\G16|ALT_INV_Prod~42_combout\ <= NOT \G16|Prod~42_combout\;
\G16|ALT_INV_Prod~41_combout\ <= NOT \G16|Prod~41_combout\;
\G16|ALT_INV_Splitter~5_combout\ <= NOT \G16|Splitter~5_combout\;
\G14|ALT_INV_SAIDA[7]~16_combout\ <= NOT \G14|SAIDA[7]~16_combout\;
\G16|ALT_INV_Mux9~2_combout\ <= NOT \G16|Mux9~2_combout\;
\G16|ALT_INV_Mux9~1_combout\ <= NOT \G16|Mux9~1_combout\;
\G16|ALT_INV_Mux9~0_combout\ <= NOT \G16|Mux9~0_combout\;
\G16|ALT_INV_Splitter~4_combout\ <= NOT \G16|Splitter~4_combout\;
\G16|ALT_INV_Prod~40_combout\ <= NOT \G16|Prod~40_combout\;
\G16|ALT_INV_Prod~39_combout\ <= NOT \G16|Prod~39_combout\;
\G16|ALT_INV_Prod~38_combout\ <= NOT \G16|Prod~38_combout\;
\G16|ALT_INV_Prod~37_combout\ <= NOT \G16|Prod~37_combout\;
\G16|ALT_INV_Prod~36_combout\ <= NOT \G16|Prod~36_combout\;
\G16|ALT_INV_Prod~35_combout\ <= NOT \G16|Prod~35_combout\;
\G16|ALT_INV_Prod~34_combout\ <= NOT \G16|Prod~34_combout\;
\G14|ALT_INV_SAIDA[6]~15_combout\ <= NOT \G14|SAIDA[6]~15_combout\;
\G16|ALT_INV_Mux10~2_combout\ <= NOT \G16|Mux10~2_combout\;
\G16|ALT_INV_Mux10~1_combout\ <= NOT \G16|Mux10~1_combout\;
\G16|ALT_INV_Mux10~0_combout\ <= NOT \G16|Mux10~0_combout\;
\G16|ALT_INV_Splitter~3_combout\ <= NOT \G16|Splitter~3_combout\;
\G16|ALT_INV_Prod~33_combout\ <= NOT \G16|Prod~33_combout\;
\G16|ALT_INV_Prod~32_combout\ <= NOT \G16|Prod~32_combout\;
\G16|ALT_INV_Prod~31_combout\ <= NOT \G16|Prod~31_combout\;
\G16|ALT_INV_Prod~30_combout\ <= NOT \G16|Prod~30_combout\;
\G16|ALT_INV_Prod~29_combout\ <= NOT \G16|Prod~29_combout\;
\G16|ALT_INV_Prod~28_combout\ <= NOT \G16|Prod~28_combout\;
\G14|ALT_INV_SAIDA[5]~14_combout\ <= NOT \G14|SAIDA[5]~14_combout\;
\G16|ALT_INV_Mux11~2_combout\ <= NOT \G16|Mux11~2_combout\;
\G16|ALT_INV_Mux11~1_combout\ <= NOT \G16|Mux11~1_combout\;
\G16|ALT_INV_Mux11~0_combout\ <= NOT \G16|Mux11~0_combout\;
\G16|ALT_INV_Splitter~2_combout\ <= NOT \G16|Splitter~2_combout\;
\G16|ALT_INV_Prod~27_combout\ <= NOT \G16|Prod~27_combout\;
\G16|ALT_INV_Prod~26_combout\ <= NOT \G16|Prod~26_combout\;
\G16|ALT_INV_Prod~25_combout\ <= NOT \G16|Prod~25_combout\;
\G16|ALT_INV_Prod~24_combout\ <= NOT \G16|Prod~24_combout\;
\G16|ALT_INV_Prod~23_combout\ <= NOT \G16|Prod~23_combout\;
\G14|ALT_INV_SAIDA[4]~13_combout\ <= NOT \G14|SAIDA[4]~13_combout\;
\G16|ALT_INV_Mux12~1_combout\ <= NOT \G16|Mux12~1_combout\;
\G16|ALT_INV_Mux12~0_combout\ <= NOT \G16|Mux12~0_combout\;
\G16|ALT_INV_Prod~22_combout\ <= NOT \G16|Prod~22_combout\;
\G16|ALT_INV_Prod~21_combout\ <= NOT \G16|Prod~21_combout\;
\G14|ALT_INV_SAIDA[3]~12_combout\ <= NOT \G14|SAIDA[3]~12_combout\;
\G16|ALT_INV_Mux13~2_combout\ <= NOT \G16|Mux13~2_combout\;
\G16|ALT_INV_Mux13~1_combout\ <= NOT \G16|Mux13~1_combout\;
\G16|ALT_INV_Mux13~0_combout\ <= NOT \G16|Mux13~0_combout\;
\G16|ALT_INV_Splitter~1_combout\ <= NOT \G16|Splitter~1_combout\;
\G16|ALT_INV_Prod~20_combout\ <= NOT \G16|Prod~20_combout\;
\G16|ALT_INV_Prod~19_combout\ <= NOT \G16|Prod~19_combout\;
\G14|ALT_INV_SAIDA[2]~11_combout\ <= NOT \G14|SAIDA[2]~11_combout\;
\G16|ALT_INV_Mux14~0_combout\ <= NOT \G16|Mux14~0_combout\;
\G14|ALT_INV_SAIDA[1]~10_combout\ <= NOT \G14|SAIDA[1]~10_combout\;
\G16|ALT_INV_Mux15~1_combout\ <= NOT \G16|Mux15~1_combout\;
\G16|ALT_INV_Mux15~0_combout\ <= NOT \G16|Mux15~0_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~0_combout\ <= NOT \G16|Saida_to_Dados[15]~0_combout\;
\G16|ALT_INV_Splitter~0_combout\ <= NOT \G16|Splitter~0_combout\;
\G14|ALT_INV_SAIDA[0]~9_combout\ <= NOT \G14|SAIDA[0]~9_combout\;
\G16|ALT_INV_process_0~0_combout\ <= NOT \G16|process_0~0_combout\;
\G5|ALT_INV_Mux0~0_combout\ <= NOT \G5|Mux0~0_combout\;
\G3|ALT_INV_resshift\(15) <= NOT \G3|resshift\(15);
\G3|ALT_INV_resshift\(14) <= NOT \G3|resshift\(14);
\G7|ALT_INV_Mux22~6_combout\ <= NOT \G7|Mux22~6_combout\;
\G16|ALT_INV_Mux14~4_combout\ <= NOT \G16|Mux14~4_combout\;
\G16|ALT_INV_Mux14~3_combout\ <= NOT \G16|Mux14~3_combout\;
\G16|ALT_INV_Mux14~2_combout\ <= NOT \G16|Mux14~2_combout\;
\G16|ALT_INV_Mux14~1_combout\ <= NOT \G16|Mux14~1_combout\;
\G16|ALT_INV_Mux12~4_combout\ <= NOT \G16|Mux12~4_combout\;
\G16|ALT_INV_Mux12~3_combout\ <= NOT \G16|Mux12~3_combout\;
\G16|ALT_INV_Mux12~2_combout\ <= NOT \G16|Mux12~2_combout\;
\G16|ALT_INV_Prod~70_combout\ <= NOT \G16|Prod~70_combout\;
\G16|ALT_INV_Prod~69_combout\ <= NOT \G16|Prod~69_combout\;
\G7|ALT_INV_Reg~18_combout\ <= NOT \G7|Reg~18_combout\;
\G7|ALT_INV_Reg~17_combout\ <= NOT \G7|Reg~17_combout\;
\G7|ALT_INV_Mux15~3_combout\ <= NOT \G7|Mux15~3_combout\;
\G4|ALT_INV_tipoi[2]~2_combout\ <= NOT \G4|tipoi[2]~2_combout\;
\G18|ALT_INV_SAIDA[15]~31_combout\ <= NOT \G18|SAIDA[15]~31_combout\;
\G18|ALT_INV_SAIDA[14]~30_combout\ <= NOT \G18|SAIDA[14]~30_combout\;
\G18|ALT_INV_SAIDA[13]~29_combout\ <= NOT \G18|SAIDA[13]~29_combout\;
\G18|ALT_INV_SAIDA[12]~28_combout\ <= NOT \G18|SAIDA[12]~28_combout\;
\G18|ALT_INV_SAIDA[11]~27_combout\ <= NOT \G18|SAIDA[11]~27_combout\;
\G18|ALT_INV_SAIDA[10]~26_combout\ <= NOT \G18|SAIDA[10]~26_combout\;
\G18|ALT_INV_SAIDA[9]~25_combout\ <= NOT \G18|SAIDA[9]~25_combout\;
\G18|ALT_INV_SAIDA[8]~24_combout\ <= NOT \G18|SAIDA[8]~24_combout\;
\G18|ALT_INV_SAIDA[7]~23_combout\ <= NOT \G18|SAIDA[7]~23_combout\;
\G18|ALT_INV_SAIDA[6]~22_combout\ <= NOT \G18|SAIDA[6]~22_combout\;
\G18|ALT_INV_SAIDA[5]~21_combout\ <= NOT \G18|SAIDA[5]~21_combout\;
\G18|ALT_INV_SAIDA[4]~20_combout\ <= NOT \G18|SAIDA[4]~20_combout\;
\G18|ALT_INV_SAIDA[3]~19_combout\ <= NOT \G18|SAIDA[3]~19_combout\;
\G18|ALT_INV_SAIDA[2]~18_combout\ <= NOT \G18|SAIDA[2]~18_combout\;
\G18|ALT_INV_SAIDA[1]~17_combout\ <= NOT \G18|SAIDA[1]~17_combout\;
\G18|ALT_INV_SAIDA[0]~16_combout\ <= NOT \G18|SAIDA[0]~16_combout\;
\G5|ALT_INV_Mux8~0_combout\ <= NOT \G5|Mux8~0_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~49_combout\ <= NOT \G16|Saida_to_Dados[15]~49_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~48_combout\ <= NOT \G16|Saida_to_Dados[15]~48_combout\;
\G14|ALT_INV_SAIDA[15]~24_combout\ <= NOT \G14|SAIDA[15]~24_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~46_combout\ <= NOT \G16|Saida_to_Dados[14]~46_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~45_combout\ <= NOT \G16|Saida_to_Dados[14]~45_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~44_combout\ <= NOT \G16|Saida_to_Dados[14]~44_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~43_combout\ <= NOT \G16|Saida_to_Dados[14]~43_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~42_combout\ <= NOT \G16|Saida_to_Dados[14]~42_combout\;
\G16|ALT_INV_Saida_to_Dados[14]~41_combout\ <= NOT \G16|Saida_to_Dados[14]~41_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~40_combout\ <= NOT \G16|Saida_to_Dados[15]~40_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~39_combout\ <= NOT \G16|Saida_to_Dados[15]~39_combout\;
\G14|ALT_INV_SAIDA[14]~23_combout\ <= NOT \G14|SAIDA[14]~23_combout\;
\G16|ALT_INV_Saida_to_Dados[15]~38_combout\ <= NOT \G16|Saida_to_Dados[15]~38_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~36_combout\ <= NOT \G16|Saida_to_Dados[13]~36_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~35_combout\ <= NOT \G16|Saida_to_Dados[13]~35_combout\;
\G16|ALT_INV_Saida_to_Dados[13]~34_combout\ <= NOT \G16|Saida_to_Dados[13]~34_combout\;
\G16|ALT_INV_Prod~68_combout\ <= NOT \G16|Prod~68_combout\;
\G16|ALT_INV_Splitter~11_combout\ <= NOT \G16|Splitter~11_combout\;
\G14|ALT_INV_SAIDA[13]~22_combout\ <= NOT \G14|SAIDA[13]~22_combout\;
\G16|ALT_INV_Saida_to_Dados[12]~32_combout\ <= NOT \G16|Saida_to_Dados[12]~32_combout\;
\G16|ALT_INV_Saida_to_Dados[12]~31_combout\ <= NOT \G16|Saida_to_Dados[12]~31_combout\;
\G16|ALT_INV_Saida_to_Dados[12]~30_combout\ <= NOT \G16|Saida_to_Dados[12]~30_combout\;
\G16|ALT_INV_Prod~67_combout\ <= NOT \G16|Prod~67_combout\;
\G16|ALT_INV_Prod~66_combout\ <= NOT \G16|Prod~66_combout\;
\G16|ALT_INV_Splitter~10_combout\ <= NOT \G16|Splitter~10_combout\;
\G14|ALT_INV_SAIDA[12]~21_combout\ <= NOT \G14|SAIDA[12]~21_combout\;
\ALT_INV_Clock_Sistema~input_o\ <= NOT \Clock_Sistema~input_o\;
>>>>>>> master

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
<<<<<<< HEAD
	i => \G7|Reg[0][0]~0_combout\,
=======
	i => \G7|Mux15~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][1]~1_combout\,
=======
	i => \G7|Mux14~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][2]~2_combout\,
=======
	i => \G7|Mux13~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][3]~3_combout\,
=======
	i => \G7|Mux12~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][4]~4_combout\,
=======
	i => \G7|Mux11~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][5]~5_combout\,
=======
	i => \G7|Mux10~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][6]~6_combout\,
=======
	i => \G7|Mux9~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][7]~7_combout\,
=======
	i => \G7|Mux8~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][8]~8_combout\,
=======
	i => \G7|Mux7~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][9]~9_combout\,
=======
	i => \G7|Mux6~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][10]~10_combout\,
=======
	i => \G7|Mux5~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][11]~11_combout\,
=======
	i => \G7|Mux4~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][12]~12_combout\,
=======
	i => \G7|Mux3~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][13]~13_combout\,
=======
	i => \G7|Mux2~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][14]~14_combout\,
=======
	i => \G7|Mux1~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][15]~15_combout\,
=======
	i => \G7|Mux0~1_combout\,
>>>>>>> master
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
	i => \G7|Mux31~0_combout\,
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
<<<<<<< HEAD
	i => \G7|Reg[0][1]~1_combout\,
=======
	i => \G7|Mux30~0_combout\,
>>>>>>> master
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
	i => \G7|Mux29~0_combout\,
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
	i => \G7|Mux28~0_combout\,
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
<<<<<<< HEAD
	i => \G7|Reg[0][4]~4_combout\,
=======
	i => \G7|Mux27~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][5]~5_combout\,
=======
	i => \G7|Mux26~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][6]~6_combout\,
=======
	i => \G7|Mux25~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][7]~7_combout\,
=======
	i => \G7|Mux24~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][8]~8_combout\,
=======
	i => \G7|Mux23~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][9]~9_combout\,
=======
	i => \G7|Mux22~5_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][10]~10_combout\,
=======
	i => \G7|Mux21~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][11]~11_combout\,
=======
	i => \G7|Mux20~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][12]~12_combout\,
=======
	i => \G7|Mux19~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][13]~13_combout\,
=======
	i => \G7|Mux18~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][14]~14_combout\,
=======
	i => \G7|Mux17~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G7|Reg[0][15]~15_combout\,
=======
	i => \G7|Mux16~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G4|rt[1]~0_combout\,
=======
	i => \G6|SAIDA[0]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G4|rt[1]~0_combout\,
=======
	i => \G6|SAIDA[1]~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G4|rt[1]~0_combout\,
=======
	i => \G4|rs[1]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G4|rt[1]~0_combout\,
=======
	i => \G4|rs[1]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|rs[2]~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|op[0]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|op[1]~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|op[2]~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|rd[0]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|rt[0]~1_combout\,
>>>>>>> master
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
	i => \G4|rt[1]~0_combout\,
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
<<<<<<< HEAD
	i => \G4|rt[1]~0_combout\,
=======
	i => \G4|funct[0]~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|rd[0]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|funct[2]~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|tipoi[0]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|tipoi[2]~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G4|rt[1]~0_combout\,
=======
	i => \G4|funct[0]~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|rd[0]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|funct[2]~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|op[0]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|op[1]~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|op[2]~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(0),
=======
	i => \G18|SAIDA[0]~16_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(1),
=======
	i => \G18|SAIDA[1]~17_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(2),
=======
	i => \G18|SAIDA[2]~18_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(3),
=======
	i => \G18|SAIDA[3]~19_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(4),
=======
	i => \G18|SAIDA[4]~20_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(5),
=======
	i => \G18|SAIDA[5]~21_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(6),
=======
	i => \G18|SAIDA[6]~22_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(7),
=======
	i => \G18|SAIDA[7]~23_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(8),
=======
	i => \G18|SAIDA[8]~24_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(9),
=======
	i => \G18|SAIDA[9]~25_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(10),
=======
	i => \G18|SAIDA[10]~26_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(11),
=======
	i => \G18|SAIDA[11]~27_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(12),
=======
	i => \G18|SAIDA[12]~28_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(13),
=======
	i => \G18|SAIDA[13]~29_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(14),
=======
	i => \G18|SAIDA[14]~30_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G18|SAIDA\(15),
=======
	i => \G18|SAIDA[15]~31_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(0),
=======
	i => \G2|saida\(0),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(1),
=======
	i => \G2|saida\(1),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(2),
=======
	i => \G2|saida\(2),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(3),
=======
	i => \G2|saida\(3),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(4),
=======
	i => \G2|saida\(4),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(5),
=======
	i => \G2|saida\(5),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(6),
=======
	i => \G2|saida\(6),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(7),
=======
	i => \G2|saida\(7),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(8),
=======
	i => \G2|saida\(8),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(9),
=======
	i => \G2|saida\(9),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(10),
=======
	i => \G2|saida\(10),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(11),
=======
	i => \G2|saida\(11),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(12),
=======
	i => \G2|saida\(12),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(13),
=======
	i => \G2|saida\(13),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(14),
=======
	i => \G2|saida\(14),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G12|SAIDA\(15),
=======
	i => \G2|saida\(15),
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(0),
=======
	i => \G13|SAIDA[0]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(1),
=======
	i => \G13|SAIDA[1]~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(2),
=======
	i => \G13|SAIDA[2]~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(3),
=======
	i => \G13|SAIDA[3]~3_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(4),
=======
	i => \G13|SAIDA[4]~4_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(5),
=======
	i => \G13|SAIDA[5]~5_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(6),
=======
	i => \G13|SAIDA[6]~6_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(7),
=======
	i => \G13|SAIDA[7]~7_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(8),
=======
	i => \G13|SAIDA[8]~8_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(9),
=======
	i => \G13|SAIDA[9]~9_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(10),
=======
	i => \G13|SAIDA[10]~10_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(11),
=======
	i => \G13|SAIDA[11]~11_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(12),
=======
	i => \G13|SAIDA[12]~12_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(13),
=======
	i => \G13|SAIDA[13]~13_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(14),
=======
	i => \G13|SAIDA[14]~14_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G13|SAIDA\(15),
=======
	i => \G13|SAIDA[15]~15_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~1_sumout\,
=======
	i => \G16|Mux15~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~5_sumout\,
=======
	i => \G16|Mux14~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~9_sumout\,
=======
	i => \G16|Mux13~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~13_sumout\,
=======
	i => \G16|Mux12~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~17_sumout\,
=======
	i => \G16|Mux11~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~21_sumout\,
=======
	i => \G16|Mux10~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~25_sumout\,
=======
	i => \G16|Mux9~2_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~29_sumout\,
=======
	i => \G16|Saida_to_Dados[7]~13_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~33_sumout\,
=======
	i => \G16|Saida_to_Dados[8]~17_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~37_sumout\,
=======
	i => \G16|Saida_to_Dados[9]~21_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~41_sumout\,
=======
	i => \G16|Saida_to_Dados[10]~25_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~45_sumout\,
=======
	i => \G16|Saida_to_Dados[11]~29_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~49_sumout\,
=======
	i => \G16|Saida_to_Dados[12]~33_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~53_sumout\,
=======
	i => \G16|Saida_to_Dados[13]~37_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~57_sumout\,
=======
	i => \G16|Saida_to_Dados[14]~47_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => \G16|Add0~61_sumout\,
=======
	i => \G16|Saida_to_Dados[15]~50_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => VCC,
=======
	i => \G5|Mux0~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|op[0]~0_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|op[1]~1_combout\,
>>>>>>> master
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
<<<<<<< HEAD
	i => GND,
=======
	i => \G4|op[2]~2_combout\,
>>>>>>> master
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[2]~output_o\);

\Flag_origialu_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
<<<<<<< HEAD
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[3]~output_o\);
=======
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
	i => \G16|process_0~0_combout\,
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

\G13|SAIDA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[3]~3_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(3) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(3) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(3),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[3]~3_combout\);

\G1|pout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(3));

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

\G13|SAIDA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[4]~4_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(4) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(4) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(4),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[4]~4_combout\);

\G1|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(4));

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

\G13|SAIDA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[5]~5_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(5) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(5) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(5),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[5]~5_combout\);

\G1|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(5));

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

\G13|SAIDA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[6]~6_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(6) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(6) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(6),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[6]~6_combout\);

\G1|pout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(6));

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

\G13|SAIDA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[7]~7_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(7) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(7) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(7),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[7]~7_combout\);

\G1|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(7));

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

\G13|SAIDA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[8]~8_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(8) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(8) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(8),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[8]~8_combout\);

\G1|pout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(8));

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

\G13|SAIDA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[9]~9_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(9) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(9) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(9),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[9]~9_combout\);

\G1|pout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(9));

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

\G13|SAIDA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[10]~10_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(10) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(10) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(10),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[10]~10_combout\);

\G1|pout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(10));

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

\G13|SAIDA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[11]~11_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(11) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(11) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(11),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[11]~11_combout\);

\G1|pout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(11));

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

\G13|SAIDA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[12]~12_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(12) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(12) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(12),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[12]~12_combout\);

\G1|pout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(12));

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

\G13|SAIDA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[13]~13_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(13) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(13) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(13),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[13]~13_combout\);

\G1|pout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(13));

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

\G13|SAIDA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[14]~14_combout\ = ( \G4|Mux7~1_combout\ & ( \G3|resshift\(14) & ( (\Clock_Sistema~input_o\) # (\G2|saida\(14)) ) ) ) # ( !\G4|Mux7~1_combout\ & ( \G3|resshift\(14) & ( ((\Clock_Sistema~input_o\ & (\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\))) # 
-- (\G2|saida\(14)) ) ) ) # ( \G4|Mux7~1_combout\ & ( !\G3|resshift\(14) & ( (\G2|saida\(14) & !\Clock_Sistema~input_o\) ) ) ) # ( !\G4|Mux7~1_combout\ & ( !\G3|resshift\(14) & ( (\G2|saida\(14) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # 
-- (!\G4|Mux8~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(14),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G3|ALT_INV_resshift\(14),
	combout => \G13|SAIDA[14]~14_combout\);

\G1|pout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(14));

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

\G13|SAIDA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[15]~15_combout\ = ( \G4|Mux7~1_combout\ & ( \G3|resshift\(15) & ( (\Clock_Sistema~input_o\) # (\G2|saida\(15)) ) ) ) # ( !\G4|Mux7~1_combout\ & ( \G3|resshift\(15) & ( ((\Clock_Sistema~input_o\ & (\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\))) # 
-- (\G2|saida\(15)) ) ) ) # ( \G4|Mux7~1_combout\ & ( !\G3|resshift\(15) & ( (\G2|saida\(15) & !\Clock_Sistema~input_o\) ) ) ) # ( !\G4|Mux7~1_combout\ & ( !\G3|resshift\(15) & ( (\G2|saida\(15) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # 
-- (!\G4|Mux8~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(15),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G3|ALT_INV_resshift\(15),
	combout => \G13|SAIDA[15]~15_combout\);

\G1|pout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(15));

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

\G13|SAIDA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[2]~2_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(2) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(2) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(2),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[2]~2_combout\);

\G1|pout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(2));

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

\G13|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[1]~1_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(1) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(1) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(1),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[1]~1_combout\);

\G1|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(1));

\G4|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux9~0_combout\ = (!\G1|pout\(3) & ((!\G1|pout\(0) & (\G1|pout\(1) & \G1|pout\(2))) # (\G1|pout\(0) & ((\G1|pout\(2)) # (\G1|pout\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000101110000000000010111000000000001011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	combout => \G4|Mux9~0_combout\);

\G4|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux9~1_combout\ = (\G4|Mux9~0_combout\ & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux9~0_combout\,
	datab => \G4|ALT_INV_Mux0~0_combout\,
	datac => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux9~1_combout\);

\G13|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA[0]~0_combout\ = ( \G4|Mux7~1_combout\ & ( (\G2|saida\(0) & !\Clock_Sistema~input_o\) ) ) # ( !\G4|Mux7~1_combout\ & ( (\G2|saida\(0) & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\) # (!\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010001000100010001010101010101000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(0),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux9~1_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G13|SAIDA[0]~0_combout\);

\G1|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G13|SAIDA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(0));

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

\G4|op[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|op[0]~0_combout\ = (\Clock_Sistema~input_o\ & (\G4|Mux9~0_combout\ & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|op[0]~0_combout\);

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

\G5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux0~0_combout\ = (!\G4|op[0]~0_combout\ & (!\G4|op[2]~2_combout\ & !\G4|op[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~0_combout\,
	datab => \G4|ALT_INV_op[2]~2_combout\,
	datac => \G4|ALT_INV_op[1]~1_combout\,
	combout => \G5|Mux0~0_combout\);

\G16|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|process_0~0_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux7~1_combout\ & (!\G4|Mux9~1_combout\ $ (!\G4|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000101000000000000010100000000000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G16|process_0~0_combout\);

\G4|tipoi[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[2]~2_combout\ = (!\Clock_Sistema~input_o\) # ((!\G4|Mux8~0_combout\ & (!\G4|Mux9~1_combout\ $ (\G4|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010111010111010101011101011101010101110101110101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|tipoi[2]~2_combout\);

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

\G4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux5~0_combout\ = (!\G1|pout\(2) & (!\G1|pout\(3) & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\)))

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
	combout => \G4|Mux5~0_combout\);

\G4|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~4_combout\ = ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(0) & (!\G1|pout\(1) & (!\G1|pout\(3) & \G4|Mux0~0_combout\))) ) )

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
	combout => \G4|Mux0~4_combout\);

\G6|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[1]~1_combout\ = ( \G4|Mux7~1_combout\ & ( \G4|Mux0~4_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux5~0_combout\ & ((!\G4|Mux9~1_combout\) # (\G4|Mux8~0_combout\)))) ) ) ) # ( !\G4|Mux7~1_combout\ & ( \G4|Mux0~4_combout\ & ( 
-- (\Clock_Sistema~input_o\ & (((!\G4|Mux9~1_combout\ & !\G4|Mux8~0_combout\)) # (\G4|Mux5~0_combout\))) ) ) ) # ( \G4|Mux7~1_combout\ & ( !\G4|Mux0~4_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux5~0_combout\ & ((!\G4|Mux9~1_combout\) # 
-- (\G4|Mux8~0_combout\)))) ) ) ) # ( !\G4|Mux7~1_combout\ & ( !\G4|Mux0~4_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux5~0_combout\ & ((\G4|Mux8~0_combout\) # (\G4|Mux9~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000001000000010101000101000001010000010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux5~0_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G4|ALT_INV_Mux0~4_combout\,
	combout => \G6|SAIDA[1]~1_combout\);

\G4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~2_combout\ = (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux0~2_combout\);

\G4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux3~0_combout\ = (!\G1|pout\(3) & ((!\G1|pout\(2) & ((\G1|pout\(1)))) # (\G1|pout\(2) & (\G1|pout\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	combout => \G4|Mux3~0_combout\);

\G7|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~0_combout\ = ( \G4|Mux7~1_combout\ & ( \G4|Mux3~0_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G4|Mux7~1_combout\ & ( \G4|Mux3~0_combout\ & ( (\Clock_Sistema~input_o\ & (((!\G4|Mux9~0_combout\ & \G4|Mux0~2_combout\)) # 
-- (\G4|Mux8~0_combout\))) ) ) ) # ( \G4|Mux7~1_combout\ & ( !\G4|Mux3~0_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G4|Mux7~1_combout\ & ( !\G4|Mux3~0_combout\ & ( (\Clock_Sistema~input_o\ & \G4|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010101010100000100010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G4|ALT_INV_Mux3~0_combout\,
	combout => \G7|Mux22~0_combout\);

\G7|Reg~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~16_combout\ = (!\G6|SAIDA[1]~1_combout\ & !\G7|Mux22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datab => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G7|Reg~16_combout\);

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
-- \G6|SAIDA[0]~0_combout\ = ( \G4|Mux0~4_combout\ & ( \G4|Mux6~0_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux9~1_combout\) # ((!\G4|Mux7~1_combout\) # (\G4|Mux8~0_combout\)))) ) ) ) # ( !\G4|Mux0~4_combout\ & ( \G4|Mux6~0_combout\ & ( 
-- (\Clock_Sistema~input_o\ & ((!\G4|Mux9~1_combout\ $ (!\G4|Mux7~1_combout\)) # (\G4|Mux8~0_combout\))) ) ) ) # ( \G4|Mux0~4_combout\ & ( !\G4|Mux6~0_combout\ & ( (\Clock_Sistema~input_o\ & (!\G4|Mux9~1_combout\ & (!\G4|Mux8~0_combout\ & 
-- !\G4|Mux7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000010101010001010101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux0~4_combout\,
	dataf => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G6|SAIDA[0]~0_combout\);

\G4|rt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[1]~0_combout\ = ( \G4|Mux7~1_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux5~0_combout\ & ((!\G4|Mux9~1_combout\) # (\G4|Mux8~0_combout\)))) ) ) # ( !\G4|Mux7~1_combout\ & ( (\Clock_Sistema~input_o\ & \G4|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001000000010100000101000001010000010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux5~0_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|rt[1]~0_combout\);

\G7|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~1_combout\ = ( !\G4|Mux0~4_combout\ & ( \G4|Mux6~0_combout\ & ( (\Clock_Sistema~input_o\ & (!\G4|Mux9~1_combout\ & (!\G4|Mux8~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( \G4|Mux0~4_combout\ & ( !\G4|Mux6~0_combout\ & ( 
-- (\Clock_Sistema~input_o\ & (!\G4|Mux9~1_combout\ & (!\G4|Mux8~0_combout\ & !\G4|Mux7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux0~4_combout\,
	dataf => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G7|Mux22~1_combout\);

\G7|Mux22~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~6_combout\ = ( \Clock_Sistema~input_o\ & ( (!\G1|pout\(3) & (!\G1|pout\(2) & (\G4|Mux0~1_combout\ & \G4|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(3),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G4|ALT_INV_Mux0~1_combout\,
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G7|Mux22~6_combout\);

\G7|Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~2_combout\ = ( \G7|Mux22~1_combout\ & ( \G7|Mux22~6_combout\ & ( (\Clock_Sistema~input_o\ & !\G4|rt[1]~0_combout\) ) ) ) # ( !\G7|Mux22~1_combout\ & ( \G7|Mux22~6_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|rt[1]~0_combout\) # 
-- ((\G6|SAIDA[1]~1_combout\ & !\G7|Mux22~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datac => \G7|ALT_INV_Mux22~0_combout\,
	datad => \G4|ALT_INV_rt[1]~0_combout\,
	datae => \G7|ALT_INV_Mux22~1_combout\,
	dataf => \G7|ALT_INV_Mux22~6_combout\,
	combout => \G7|Mux22~2_combout\);

\G4|rt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[0]~1_combout\ = ( \G4|Mux6~0_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux9~1_combout\) # ((!\G4|Mux7~1_combout\) # (\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010100010100000000000000000101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G4|rt[0]~1_combout\);

\G7|Mux22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~3_combout\ = ( \G4|rt[1]~0_combout\ & ( \G4|rt[0]~1_combout\ & ( (\Clock_Sistema~input_o\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & !\G7|Mux22~0_combout\))) ) ) ) # ( \G4|rt[1]~0_combout\ & ( !\G4|rt[0]~1_combout\ & ( 
-- (\Clock_Sistema~input_o\ & (!\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & !\G7|Mux22~0_combout\))) ) ) ) # ( !\G4|rt[1]~0_combout\ & ( !\G4|rt[0]~1_combout\ & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G7|ALT_INV_Mux22~0_combout\,
	datae => \G4|ALT_INV_rt[1]~0_combout\,
	dataf => \G4|ALT_INV_rt[0]~1_combout\,
	combout => \G7|Mux22~3_combout\);

\G7|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~0_combout\ = ( \G7|Mux22~2_combout\ & ( \G7|Mux22~3_combout\ & ( \G18|SAIDA[0]~16_combout\ ) ) ) # ( !\G7|Mux22~2_combout\ & ( \G7|Mux22~3_combout\ & ( (!\G7|Reg~16_combout\) # ((\G18|SAIDA[0]~16_combout\) # (\G6|SAIDA[0]~0_combout\)) ) ) ) # ( 
-- \G7|Mux22~2_combout\ & ( !\G7|Mux22~3_combout\ & ( (!\G7|Reg~16_combout\) # ((!\G6|SAIDA[0]~0_combout\) # (\G18|SAIDA[0]~16_combout\)) ) ) ) # ( !\G7|Mux22~2_combout\ & ( !\G7|Mux22~3_combout\ & ( !\G4|rt[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111011111110111110111111101111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~16_combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G18|ALT_INV_SAIDA[0]~16_combout\,
	datad => \G4|ALT_INV_rt[1]~0_combout\,
	datae => \G7|ALT_INV_Mux22~2_combout\,
	dataf => \G7|ALT_INV_Mux22~3_combout\,
	combout => \G7|Mux31~0_combout\);

\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( \G7|Mux15~2_combout\ ) + ( (!\G16|process_0~0_combout\ & (((\G7|Mux31~0_combout\)))) # (\G16|process_0~0_combout\ & (!\G4|tipoi[2]~2_combout\ & (\G4|Mux2~0_combout\))) ) + ( !VCC ))
-- \G16|Add0~2\ = CARRY(( \G7|Mux15~2_combout\ ) + ( (!\G16|process_0~0_combout\ & (((\G7|Mux31~0_combout\)))) # (\G16|process_0~0_combout\ & (!\G4|tipoi[2]~2_combout\ & (\G4|Mux2~0_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_process_0~0_combout\,
	datab => \G4|ALT_INV_tipoi[2]~2_combout\,
	datac => \G4|ALT_INV_Mux2~0_combout\,
	datad => \G7|ALT_INV_Mux15~2_combout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	cin => GND,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

\G4|funct[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[0]~0_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux9~1_combout\ & (!\G4|Mux8~0_combout\ & !\G4|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|funct[0]~0_combout\);

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

\G4|funct[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[2]~2_combout\ = (\G4|funct[0]~0_combout\ & \G4|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[0]~0_combout\,
	datab => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G4|funct[2]~2_combout\);

\G4|tipoi[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[0]~0_combout\ = ( \G4|Mux2~0_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux9~1_combout\ $ (!\G4|Mux7~1_combout\)) # (\G4|Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101010100010100000000000000000001010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G4|tipoi[0]~0_combout\);

\G14|SAIDA[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[0]~9_combout\ = (!\G16|process_0~0_combout\ & (\G7|Mux31~0_combout\)) # (\G16|process_0~0_combout\ & ((\G4|tipoi[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G4|ALT_INV_tipoi[0]~0_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[0]~9_combout\);

\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(0) & (!\G1|pout\(1) & (\G1|pout\(2) & !\G1|pout\(3)))) ) ) )

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
	combout => \G4|Mux0~3_combout\);

\G4|rd[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~0_combout\ = ( \G4|Mux0~3_combout\ & ( (\Clock_Sistema~input_o\ & (!\G4|Mux9~1_combout\ & (!\G4|Mux8~0_combout\ & !\G4|Mux7~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G4|rd[0]~0_combout\);

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

\G7|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~1_combout\ = ( \G5|Mux6~0_combout\ ) # ( !\G5|Mux6~0_combout\ & ( (!\G4|rd[0]~0_combout\ $ (!\G6|SAIDA[0]~0_combout\)) # (\G6|SAIDA[1]~1_combout\) ) )

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
	combout => \G7|Mux15~1_combout\);

\G16|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~1_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[0]~16_combout\)) ) + ( VCC ) + ( !VCC ))
-- \G16|Add2~2\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[0]~16_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => GND,
	sumout => \G16|Add2~1_sumout\,
	cout => \G16|Add2~2\);

\G4|funct[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[0]~1_combout\ = (\G4|funct[0]~0_combout\ & \G4|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[0]~0_combout\,
	datab => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G4|funct[0]~1_combout\);

\G16|Splitter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~0_combout\ = ( \G4|tipoi[0]~0_combout\ & ( \G16|process_0~0_combout\ & ( ((!\Clock_Sistema~input_o\) # (\G7|Mux15~1_combout\)) # (\G18|SAIDA[0]~16_combout\) ) ) ) # ( \G4|tipoi[0]~0_combout\ & ( !\G16|process_0~0_combout\ & ( 
-- (\G7|Mux31~0_combout\ & (((!\Clock_Sistema~input_o\) # (\G7|Mux15~1_combout\)) # (\G18|SAIDA[0]~16_combout\))) ) ) ) # ( !\G4|tipoi[0]~0_combout\ & ( !\G16|process_0~0_combout\ & ( (\G7|Mux31~0_combout\ & (((!\Clock_Sistema~input_o\) # 
-- (\G7|Mux15~1_combout\)) # (\G18|SAIDA[0]~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111100000000000000001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~16_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G7|ALT_INV_Mux31~0_combout\,
	datae => \G4|ALT_INV_tipoi[0]~0_combout\,
	dataf => \G16|ALT_INV_process_0~0_combout\,
	combout => \G16|Splitter~0_combout\);

\G7|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~3_combout\ = (!\G6|SAIDA[1]~1_combout\ & (!\G4|rd[0]~0_combout\ $ (\G6|SAIDA[0]~0_combout\)))

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
	combout => \G7|Mux15~3_combout\);

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
-- \G16|Add1~1_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # (((!\G7|Mux15~3_combout\) # (\G5|Mux6~0_combout\)) # (\G18|SAIDA[0]~16_combout\)) ) + ( !\G14|SAIDA[0]~9_combout\ ) + ( \G16|Add1~66_cout\ ))
-- \G16|Add1~2\ = CARRY(( (!\Clock_Sistema~input_o\) # (((!\G7|Mux15~3_combout\) # (\G5|Mux6~0_combout\)) # (\G18|SAIDA[0]~16_combout\)) ) + ( !\G14|SAIDA[0]~9_combout\ ) + ( \G16|Add1~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[0]~16_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G7|ALT_INV_Mux15~3_combout\,
	dataf => \G14|ALT_INV_SAIDA[0]~9_combout\,
	cin => \G16|Add1~66_cout\,
	sumout => \G16|Add1~1_sumout\,
	cout => \G16|Add1~2\);

\G16|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~2_combout\ = ( !\G4|rd[0]~0_combout\ & ( ((!\G4|funct[0]~1_combout\ & (\G16|Add0~1_sumout\)) # (\G4|funct[0]~1_combout\ & (((\G16|Add1~1_sumout\))))) ) ) # ( \G4|rd[0]~0_combout\ & ( (!\G4|funct[0]~1_combout\ & (\G16|Add2~1_sumout\ & 
-- (\G14|SAIDA[0]~9_combout\))) # (\G4|funct[0]~1_combout\ & ((((\G16|Splitter~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000001000011011100111111001111110000010000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add2~1_sumout\,
	datab => \G4|ALT_INV_funct[0]~1_combout\,
	datac => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datad => \G16|ALT_INV_Splitter~0_combout\,
	datae => \G4|ALT_INV_rd[0]~0_combout\,
	dataf => \G16|ALT_INV_Add1~1_sumout\,
	datag => \G16|ALT_INV_Add0~1_sumout\,
	combout => \G16|Mux15~2_combout\);

\G16|Saida_to_Dados[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~0_combout\ = (!\G4|Mux0~3_combout\ & (\G4|funct[0]~0_combout\ & (!\G4|Mux2~0_combout\ & \G4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G4|ALT_INV_Mux2~0_combout\,
	datad => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G16|Saida_to_Dados[15]~0_combout\);

\G16|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~0_combout\ = ( \G16|Saida_to_Dados[15]~0_combout\ & ( (!\G7|Mux15~2_combout\ & (!\G14|SAIDA[0]~9_combout\ & ((!\G16|Mux15~2_combout\) # (\G4|funct[2]~2_combout\)))) ) ) # ( !\G16|Saida_to_Dados[15]~0_combout\ & ( (!\G16|Mux15~2_combout\) # 
-- (\G4|funct[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011101000000010000011111111001100111010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~2_combout\,
	datab => \G4|ALT_INV_funct[2]~2_combout\,
	datac => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	combout => \G16|Mux15~0_combout\);

\G16|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~1_combout\ = (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & ((!\G16|Mux15~0_combout\)))) # (\G16|process_0~0_combout\ & (((\G16|Add0~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000011010100110000001101010011000000110101001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Add0~1_sumout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G16|Mux15~1_combout\);

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

\G7|Mux22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~4_combout\ = ( \G7|Mux22~1_combout\ & ( (\Clock_Sistema~input_o\ & !\G4|rt[1]~0_combout\) ) ) # ( !\G7|Mux22~1_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|rt[1]~0_combout\) # ((\G6|SAIDA[1]~1_combout\ & !\G7|Mux22~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010000010101010000000001010101000100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datac => \G7|ALT_INV_Mux22~0_combout\,
	datad => \G4|ALT_INV_rt[1]~0_combout\,
	datae => \G7|ALT_INV_Mux22~1_combout\,
	combout => \G7|Mux22~4_combout\);

\G7|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~0_combout\ = ( \G7|Mux22~2_combout\ & ( \G7|Mux22~4_combout\ & ( \G18|SAIDA[1]~17_combout\ ) ) ) # ( !\G7|Mux22~2_combout\ & ( \G7|Mux22~4_combout\ & ( (\G7|Reg~16_combout\ & (!\G6|SAIDA[0]~0_combout\ & \G18|SAIDA[1]~17_combout\)) ) ) ) # ( 
-- \G7|Mux22~2_combout\ & ( !\G7|Mux22~4_combout\ & ( (!\G7|Reg~16_combout\) # ((!\G6|SAIDA[0]~0_combout\) # (\G18|SAIDA[1]~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111110111100000100000001000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~16_combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G18|ALT_INV_SAIDA[1]~17_combout\,
	datae => \G7|ALT_INV_Mux22~2_combout\,
	dataf => \G7|ALT_INV_Mux22~4_combout\,
	combout => \G7|Mux30~0_combout\);

\G7|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~0_combout\ = ( \G7|Mux22~2_combout\ & ( \G7|Mux22~3_combout\ & ( \G18|SAIDA[2]~18_combout\ ) ) ) # ( !\G7|Mux22~2_combout\ & ( \G7|Mux22~3_combout\ & ( (!\G7|Reg~16_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G6|SAIDA[0]~0_combout\)) ) ) ) # ( 
-- \G7|Mux22~2_combout\ & ( !\G7|Mux22~3_combout\ & ( (!\G7|Reg~16_combout\) # ((!\G6|SAIDA[0]~0_combout\) # (\G18|SAIDA[2]~18_combout\)) ) ) ) # ( !\G7|Mux22~2_combout\ & ( !\G7|Mux22~3_combout\ & ( !\G4|rt[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111011111110111110111111101111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg~16_combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G18|ALT_INV_SAIDA[2]~18_combout\,
	datad => \G4|ALT_INV_rt[1]~0_combout\,
	datae => \G7|ALT_INV_Mux22~2_combout\,
	dataf => \G7|ALT_INV_Mux22~3_combout\,
	combout => \G7|Mux29~0_combout\);

\G7|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~0_combout\ = (!\G7|Reg~16_combout\ & (((\G7|Mux22~3_combout\ & \G7|Mux22~2_combout\)))) # (\G7|Reg~16_combout\ & ((!\G6|SAIDA[0]~0_combout\ & (\G7|Mux22~3_combout\)) # (\G6|SAIDA[0]~0_combout\ & ((\G7|Mux22~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000011111000000100001111100000010000111110000001000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datab => \G7|ALT_INV_Reg~16_combout\,
	datac => \G7|ALT_INV_Mux22~3_combout\,
	datad => \G7|ALT_INV_Mux22~2_combout\,
	combout => \G7|Mux27~0_combout\);

\G7|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~0_combout\ = (\G18|SAIDA[3]~19_combout\ & \G7|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[3]~19_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux28~0_combout\);

\G16|Saida_to_Dados[15]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~4_combout\ = ( \G4|Mux1~0_combout\ & ( (!\G4|op[0]~0_combout\ & !\G4|funct[0]~0_combout\) ) ) # ( !\G4|Mux1~0_combout\ & ( (!\G4|op[0]~0_combout\ & ((!\G4|funct[0]~0_combout\) # ((!\G4|Mux0~3_combout\ & !\G4|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010100000101000001010000010101000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~0_combout\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G4|ALT_INV_funct[0]~0_combout\,
	datad => \G4|ALT_INV_Mux2~0_combout\,
	datae => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G16|Saida_to_Dados[15]~4_combout\);

\G16|Saida_to_Dados[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~5_combout\ = ( \G16|Saida_to_Dados[15]~4_combout\ & ( (\Clock_Sistema~input_o\ & \G4|Mux7~1_combout\) ) ) # ( !\G16|Saida_to_Dados[15]~4_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux9~1_combout\) # ((\G4|Mux7~1_combout\) # 
-- (\G4|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101000000000101010101000101010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[15]~4_combout\,
	combout => \G16|Saida_to_Dados[10]~5_combout\);

\G16|Saida_to_Dados[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~6_combout\ = ( \G4|Mux2~0_combout\ & ( \G4|Mux1~0_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux9~1_combout\ $ (\G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) ) # ( !\G4|Mux2~0_combout\ & ( \G4|Mux1~0_combout\ & ( 
-- (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) ) # ( \G4|Mux2~0_combout\ & ( !\G4|Mux1~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # 
-- (\G4|Mux7~1_combout\))) ) ) ) # ( !\G4|Mux2~0_combout\ & ( !\G4|Mux1~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000010101010100000001010101010100000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux2~0_combout\,
	dataf => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G16|Saida_to_Dados[10]~6_combout\);

\G16|Saida_to_Dados[10]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~7_combout\ = (!\G4|rd[0]~0_combout\ & !\G16|Saida_to_Dados[10]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~6_combout\,
	combout => \G16|Saida_to_Dados[10]~7_combout\);

\G16|Saida_to_Dados[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~8_combout\ = (\G4|funct[0]~0_combout\ & (!\G16|Saida_to_Dados[10]~6_combout\ & ((\G4|Mux1~0_combout\) # (\G4|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000000100110000000000010011000000000001001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G4|ALT_INV_Mux1~0_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[10]~6_combout\,
	combout => \G16|Saida_to_Dados[10]~8_combout\);

\G16|Saida_to_Dados[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~9_combout\ = (\G16|Saida_to_Dados[10]~5_combout\ & (!\G16|Saida_to_Dados[10]~7_combout\ & \G16|Saida_to_Dados[10]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~5_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~7_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[10]~8_combout\,
	combout => \G16|Saida_to_Dados[7]~9_combout\);

\G14|SAIDA[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[3]~12_combout\ = (\G18|SAIDA[3]~19_combout\ & (\G7|Mux27~0_combout\ & !\G16|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[3]~19_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	datad => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[3]~12_combout\);

\G4|tipoi[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[2]~1_combout\ = ( \G4|Mux1~0_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux9~1_combout\ $ (!\G4|Mux7~1_combout\)) # (\G4|Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101010100010100000000000000000001010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G4|tipoi[2]~1_combout\);

\G14|SAIDA[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[2]~11_combout\ = (!\G16|process_0~0_combout\ & (\G7|Mux29~0_combout\)) # (\G16|process_0~0_combout\ & ((\G4|tipoi[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux29~0_combout\,
	datab => \G4|ALT_INV_tipoi[2]~1_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[2]~11_combout\);

\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( \G7|Mux14~1_combout\ ) + ( (!\G16|process_0~0_combout\ & (((\G7|Mux30~0_combout\)))) # (\G16|process_0~0_combout\ & (!\G4|tipoi[2]~2_combout\ & (\G4|Mux0~3_combout\))) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( \G7|Mux14~1_combout\ ) + ( (!\G16|process_0~0_combout\ & (((\G7|Mux30~0_combout\)))) # (\G16|process_0~0_combout\ & (!\G4|tipoi[2]~2_combout\ & (\G4|Mux0~3_combout\))) ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_process_0~0_combout\,
	datab => \G4|ALT_INV_tipoi[2]~2_combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Mux14~1_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G14|SAIDA[2]~11_combout\ ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G14|SAIDA[2]~11_combout\ ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA[2]~18_combout\,
	dataf => \G14|ALT_INV_SAIDA[2]~11_combout\,
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G14|SAIDA[3]~12_combout\ ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G14|SAIDA[3]~12_combout\ ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA[3]~19_combout\,
	dataf => \G14|ALT_INV_SAIDA[3]~12_combout\,
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( \G14|SAIDA[4]~13_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( \G14|SAIDA[4]~13_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[4]~13_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( \G14|SAIDA[5]~14_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( \G14|SAIDA[5]~14_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[5]~14_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( \G14|SAIDA[6]~15_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( \G14|SAIDA[6]~15_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[6]~15_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( \G14|SAIDA[7]~16_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( \G14|SAIDA[7]~16_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[7]~16_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

\G7|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux13~0_combout\ = (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[2]~18_combout\) # (\G7|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[2]~18_combout\,
	combout => \G7|Mux13~0_combout\);

\G16|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~5_sumout\ = SUM(( \G7|Mux14~1_combout\ ) + ( (!\G16|process_0~0_combout\ & (((!\G7|Mux30~0_combout\)))) # (\G16|process_0~0_combout\ & (((!\G4|Mux0~3_combout\)) # (\G4|tipoi[2]~2_combout\))) ) + ( \G16|Add1~2\ ))
-- \G16|Add1~6\ = CARRY(( \G7|Mux14~1_combout\ ) + ( (!\G16|process_0~0_combout\ & (((!\G7|Mux30~0_combout\)))) # (\G16|process_0~0_combout\ & (((!\G4|Mux0~3_combout\)) # (\G4|tipoi[2]~2_combout\))) ) + ( \G16|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_process_0~0_combout\,
	datab => \G4|ALT_INV_tipoi[2]~2_combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Mux14~1_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	cin => \G16|Add1~2\,
	sumout => \G16|Add1~5_sumout\,
	cout => \G16|Add1~6\);

\G16|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~9_sumout\ = SUM(( \G7|Mux13~0_combout\ ) + ( (!\G16|process_0~0_combout\ & (((!\G7|Mux29~0_combout\)))) # (\G16|process_0~0_combout\ & (((!\G4|Mux1~0_combout\)) # (\G4|tipoi[2]~2_combout\))) ) + ( \G16|Add1~6\ ))
-- \G16|Add1~10\ = CARRY(( \G7|Mux13~0_combout\ ) + ( (!\G16|process_0~0_combout\ & (((!\G7|Mux29~0_combout\)))) # (\G16|process_0~0_combout\ & (((!\G4|Mux1~0_combout\)) # (\G4|tipoi[2]~2_combout\))) ) + ( \G16|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_process_0~0_combout\,
	datab => \G4|ALT_INV_tipoi[2]~2_combout\,
	datac => \G4|ALT_INV_Mux1~0_combout\,
	datad => \G7|ALT_INV_Mux13~0_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	cin => \G16|Add1~6\,
	sumout => \G16|Add1~9_sumout\,
	cout => \G16|Add1~10\);

\G16|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~13_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA[3]~19_combout\ & \G7|Mux15~3_combout\))) ) + ( !\G14|SAIDA[3]~12_combout\ ) + ( \G16|Add1~10\ ))
-- \G16|Add1~14\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA[3]~19_combout\ & \G7|Mux15~3_combout\))) ) + ( !\G14|SAIDA[3]~12_combout\ ) + ( \G16|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA[3]~19_combout\,
	datad => \G7|ALT_INV_Mux15~3_combout\,
	dataf => \G14|ALT_INV_SAIDA[3]~12_combout\,
	cin => \G16|Add1~10\,
	sumout => \G16|Add1~13_sumout\,
	cout => \G16|Add1~14\);

\G16|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~17_sumout\ = SUM(( !\G14|SAIDA[4]~13_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA[4]~20_combout\ & \G7|Mux15~3_combout\))) ) + ( \G16|Add1~14\ ))
-- \G16|Add1~18\ = CARRY(( !\G14|SAIDA[4]~13_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA[4]~20_combout\ & \G7|Mux15~3_combout\))) ) + ( \G16|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA[4]~20_combout\,
	datad => \G14|ALT_INV_SAIDA[4]~13_combout\,
	dataf => \G7|ALT_INV_Mux15~3_combout\,
	cin => \G16|Add1~14\,
	sumout => \G16|Add1~17_sumout\,
	cout => \G16|Add1~18\);

\G16|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~21_sumout\ = SUM(( !\G14|SAIDA[5]~14_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA[5]~21_combout\ & \G7|Mux15~3_combout\))) ) + ( \G16|Add1~18\ ))
-- \G16|Add1~22\ = CARRY(( !\G14|SAIDA[5]~14_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA[5]~21_combout\ & \G7|Mux15~3_combout\))) ) + ( \G16|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA[5]~21_combout\,
	datad => \G14|ALT_INV_SAIDA[5]~14_combout\,
	dataf => \G7|ALT_INV_Mux15~3_combout\,
	cin => \G16|Add1~18\,
	sumout => \G16|Add1~21_sumout\,
	cout => \G16|Add1~22\);

\G16|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~25_sumout\ = SUM(( !\G14|SAIDA[6]~15_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA[6]~22_combout\ & \G7|Mux15~3_combout\))) ) + ( \G16|Add1~22\ ))
-- \G16|Add1~26\ = CARRY(( !\G14|SAIDA[6]~15_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G5|Mux6~0_combout\ & (\G18|SAIDA[6]~22_combout\ & \G7|Mux15~3_combout\))) ) + ( \G16|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_Mux6~0_combout\,
	datac => \G18|ALT_INV_SAIDA[6]~22_combout\,
	datad => \G14|ALT_INV_SAIDA[6]~15_combout\,
	dataf => \G7|ALT_INV_Mux15~3_combout\,
	cin => \G16|Add1~22\,
	sumout => \G16|Add1~25_sumout\,
	cout => \G16|Add1~26\);

\G16|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~29_sumout\ = SUM(( !\G14|SAIDA[7]~16_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add1~26\ ))
-- \G16|Add1~30\ = CARRY(( !\G14|SAIDA[7]~16_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[7]~16_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add1~26\,
	sumout => \G16|Add1~29_sumout\,
	cout => \G16|Add1~30\);

\G16|Saida_to_Dados[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~10_combout\ = ( \G7|Mux15~1_combout\ & ( \G18|SAIDA[7]~23_combout\ & ( (!\G16|Saida_to_Dados[10]~8_combout\ & ((!\G16|Add1~29_sumout\))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[7]~16_combout\)) ) ) ) # ( 
-- !\G7|Mux15~1_combout\ & ( \G18|SAIDA[7]~23_combout\ & ( (!\G16|Saida_to_Dados[10]~8_combout\ & (((!\G16|Add1~29_sumout\)))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[7]~16_combout\ & ((!\Clock_Sistema~input_o\)))) ) ) ) # ( \G7|Mux15~1_combout\ 
-- & ( !\G18|SAIDA[7]~23_combout\ & ( (!\G16|Saida_to_Dados[10]~8_combout\ & ((!\G16|Add1~29_sumout\))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[7]~16_combout\)) ) ) ) # ( !\G7|Mux15~1_combout\ & ( !\G18|SAIDA[7]~23_combout\ & ( 
-- (!\G16|Saida_to_Dados[10]~8_combout\ & ((!\G16|Add1~29_sumout\))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[7]~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001011100010111000101110001011100010110000001110001011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[7]~16_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~8_combout\,
	datac => \G16|ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G7|ALT_INV_Mux15~1_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	combout => \G16|Saida_to_Dados[7]~10_combout\);

\G16|Saida_to_Dados[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~11_combout\ = (\G16|Saida_to_Dados[10]~5_combout\ & \G16|Saida_to_Dados[10]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~5_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~7_combout\,
	combout => \G16|Saida_to_Dados[7]~11_combout\);

\G16|Saida_to_Dados[7]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~12_combout\ = (!\G16|Add0~29_sumout\ & (((!\G16|Saida_to_Dados[7]~10_combout\ & \G16|Saida_to_Dados[7]~11_combout\)))) # (\G16|Add0~29_sumout\ & ((!\G16|Saida_to_Dados[10]~5_combout\) # ((!\G16|Saida_to_Dados[7]~10_combout\ & 
-- \G16|Saida_to_Dados[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011110100010001001111010001000100111101000100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~29_sumout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~5_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~10_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[7]~11_combout\,
	combout => \G16|Saida_to_Dados[7]~12_combout\);

\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( \G14|SAIDA[8]~17_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[8]~24_combout\))) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( \G14|SAIDA[8]~17_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[8]~24_combout\))) ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[8]~17_combout\,
	dataf => \G18|ALT_INV_SAIDA[8]~24_combout\,
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

\G16|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~33_sumout\ = SUM(( !\G14|SAIDA[8]~17_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[8]~24_combout\))) ) + ( \G16|Add1~30\ ))
-- \G16|Add1~34\ = CARRY(( !\G14|SAIDA[8]~17_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[8]~24_combout\))) ) + ( \G16|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[8]~17_combout\,
	dataf => \G18|ALT_INV_SAIDA[8]~24_combout\,
	cin => \G16|Add1~30\,
	sumout => \G16|Add1~33_sumout\,
	cout => \G16|Add1~34\);

\G16|Saida_to_Dados[8]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[8]~15_combout\ = ( \G7|Mux15~1_combout\ & ( \G18|SAIDA[8]~24_combout\ & ( (!\G16|Saida_to_Dados[10]~8_combout\ & ((!\G16|Add1~33_sumout\))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[8]~17_combout\)) ) ) ) # ( 
-- !\G7|Mux15~1_combout\ & ( \G18|SAIDA[8]~24_combout\ & ( (!\G16|Saida_to_Dados[10]~8_combout\ & (((!\G16|Add1~33_sumout\)))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[8]~17_combout\ & ((!\Clock_Sistema~input_o\)))) ) ) ) # ( \G7|Mux15~1_combout\ 
-- & ( !\G18|SAIDA[8]~24_combout\ & ( (!\G16|Saida_to_Dados[10]~8_combout\ & ((!\G16|Add1~33_sumout\))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[8]~17_combout\)) ) ) ) # ( !\G7|Mux15~1_combout\ & ( !\G18|SAIDA[8]~24_combout\ & ( 
-- (!\G16|Saida_to_Dados[10]~8_combout\ & ((!\G16|Add1~33_sumout\))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[8]~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111001001110010011100100101000001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~8_combout\,
	datab => \G14|ALT_INV_SAIDA[8]~17_combout\,
	datac => \G16|ALT_INV_Add1~33_sumout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G7|ALT_INV_Mux15~1_combout\,
	dataf => \G18|ALT_INV_SAIDA[8]~24_combout\,
	combout => \G16|Saida_to_Dados[8]~15_combout\);

\G16|Saida_to_Dados[8]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[8]~16_combout\ = (!\G16|Saida_to_Dados[10]~5_combout\ & (((\G16|Saida_to_Dados[7]~11_combout\ & !\G16|Saida_to_Dados[8]~15_combout\)) # (\G16|Add0~33_sumout\))) # (\G16|Saida_to_Dados[10]~5_combout\ & 
-- (\G16|Saida_to_Dados[7]~11_combout\ & ((!\G16|Saida_to_Dados[8]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100001010001110110000101000111011000010100011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~5_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~11_combout\,
	datac => \G16|ALT_INV_Add0~33_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[8]~15_combout\,
	combout => \G16|Saida_to_Dados[8]~16_combout\);

\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( \G14|SAIDA[9]~18_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[9]~25_combout\))) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( \G14|SAIDA[9]~18_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[9]~25_combout\))) ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[9]~18_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~25_combout\,
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

\G16|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~37_sumout\ = SUM(( !\G14|SAIDA[9]~18_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[9]~25_combout\))) ) + ( \G16|Add1~34\ ))
-- \G16|Add1~38\ = CARRY(( !\G14|SAIDA[9]~18_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[9]~25_combout\))) ) + ( \G16|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[9]~18_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~25_combout\,
	cin => \G16|Add1~34\,
	sumout => \G16|Add1~37_sumout\,
	cout => \G16|Add1~38\);

\G16|Saida_to_Dados[9]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[9]~19_combout\ = ( \G7|Mux15~1_combout\ & ( \G18|SAIDA[9]~25_combout\ & ( (!\G16|Saida_to_Dados[10]~8_combout\ & ((!\G16|Add1~37_sumout\))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[9]~18_combout\)) ) ) ) # ( 
-- !\G7|Mux15~1_combout\ & ( \G18|SAIDA[9]~25_combout\ & ( (!\G16|Saida_to_Dados[10]~8_combout\ & (((!\G16|Add1~37_sumout\)))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[9]~18_combout\ & ((!\Clock_Sistema~input_o\)))) ) ) ) # ( \G7|Mux15~1_combout\ 
-- & ( !\G18|SAIDA[9]~25_combout\ & ( (!\G16|Saida_to_Dados[10]~8_combout\ & ((!\G16|Add1~37_sumout\))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[9]~18_combout\)) ) ) ) # ( !\G7|Mux15~1_combout\ & ( !\G18|SAIDA[9]~25_combout\ & ( 
-- (!\G16|Saida_to_Dados[10]~8_combout\ & ((!\G16|Add1~37_sumout\))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G14|SAIDA[9]~18_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111001001110010011100100101000001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~8_combout\,
	datab => \G14|ALT_INV_SAIDA[9]~18_combout\,
	datac => \G16|ALT_INV_Add1~37_sumout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G7|ALT_INV_Mux15~1_combout\,
	dataf => \G18|ALT_INV_SAIDA[9]~25_combout\,
	combout => \G16|Saida_to_Dados[9]~19_combout\);

\G16|Saida_to_Dados[9]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[9]~20_combout\ = (!\G16|Saida_to_Dados[10]~5_combout\ & (((\G16|Saida_to_Dados[7]~11_combout\ & !\G16|Saida_to_Dados[9]~19_combout\)) # (\G16|Add0~37_sumout\))) # (\G16|Saida_to_Dados[10]~5_combout\ & 
-- (\G16|Saida_to_Dados[7]~11_combout\ & ((!\G16|Saida_to_Dados[9]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100001010001110110000101000111011000010100011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~5_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~11_combout\,
	datac => \G16|ALT_INV_Add0~37_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[9]~19_combout\,
	combout => \G16|Saida_to_Dados[9]~20_combout\);

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

\G18|SAIDA[9]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[9]~25_combout\ = ( \G17|RAM_rtl_0|auto_generated|ram_block1a9~portbdataout\ & ( (!\G5|Mux0~0_combout\) # (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[9]~18_combout\)) # (\G16|Saida_to_Dados[9]~20_combout\)) ) ) # ( 
-- !\G17|RAM_rtl_0|auto_generated|ram_block1a9~portbdataout\ & ( (\G5|Mux0~0_combout\ & (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[9]~18_combout\)) # (\G16|Saida_to_Dados[9]~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101101010111111111100000001010101011010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[9]~18_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[9]~20_combout\,
	datae => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portbdataout\,
	combout => \G18|SAIDA[9]~25_combout\);

\G7|Mux22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~5_combout\ = (\G18|SAIDA[9]~25_combout\ & \G7|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[9]~25_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux22~5_combout\);

\G14|SAIDA[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[9]~18_combout\ = (\G7|Mux22~5_combout\ & !\G16|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux22~5_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[9]~18_combout\);

\G16|Splitter~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~7_combout\ = (\G14|SAIDA[9]~18_combout\ & (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[9]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[9]~18_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA[9]~25_combout\,
	combout => \G16|Splitter~7_combout\);

\G14|SAIDA[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[1]~10_combout\ = (\G7|Mux30~0_combout\ & !\G16|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux30~0_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[1]~10_combout\);

\G7|Reg~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~17_combout\ = (!\G6|SAIDA[0]~0_combout\) # (((\G7|Mux22~0_combout\) # (\G18|SAIDA[1]~17_combout\)) # (\G6|SAIDA[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111110111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datab => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datac => \G18|ALT_INV_SAIDA[1]~17_combout\,
	datad => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G7|Reg~17_combout\);

\G7|Reg~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~18_combout\ = (!\G6|SAIDA[0]~0_combout\ & (!\G6|SAIDA[1]~1_combout\ & (\G18|SAIDA[1]~17_combout\ & !\G7|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datab => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datac => \G18|ALT_INV_SAIDA[1]~17_combout\,
	datad => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G7|Reg~18_combout\);

\G16|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~5_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( GND ) + ( \G16|Add2~2\ ))
-- \G16|Add2~6\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( GND ) + ( \G16|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add2~2\,
	sumout => \G16|Add2~5_sumout\,
	cout => \G16|Add2~6\);

\G16|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~9_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[2]~18_combout\))) ) + ( GND ) + ( \G16|Add2~6\ ))
-- \G16|Add2~10\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[2]~18_combout\))) ) + ( GND ) + ( \G16|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add2~6\,
	sumout => \G16|Add2~9_sumout\,
	cout => \G16|Add2~10\);

\G16|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~13_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~10\ ))
-- \G16|Add2~14\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add2~10\,
	sumout => \G16|Add2~13_sumout\,
	cout => \G16|Add2~14\);

\G16|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~17_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~14\ ))
-- \G16|Add2~18\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add2~14\,
	sumout => \G16|Add2~17_sumout\,
	cout => \G16|Add2~18\);

\G16|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~21_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~18\ ))
-- \G16|Add2~22\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add2~18\,
	sumout => \G16|Add2~21_sumout\,
	cout => \G16|Add2~22\);

\G16|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~25_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~22\ ))
-- \G16|Add2~26\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add2~22\,
	sumout => \G16|Add2~25_sumout\,
	cout => \G16|Add2~26\);

\G16|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~29_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[7]~23_combout\) # (\G5|Mux6~0_combout\))) ) + ( GND ) + ( \G16|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add2~26\,
	sumout => \G16|Add2~29_sumout\);

\G16|Prod~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~41_combout\ = (\G16|Add2~29_sumout\ & ((!\G16|process_0~0_combout\ & (\G7|Mux31~0_combout\)) # (\G16|process_0~0_combout\ & ((\G4|tipoi[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000010100110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G4|ALT_INV_tipoi[0]~0_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add2~29_sumout\,
	combout => \G16|Prod~41_combout\);

\G16|Prod~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~34_combout\ = (\G16|Add2~25_sumout\ & ((!\G16|process_0~0_combout\ & (\G7|Mux31~0_combout\)) # (\G16|process_0~0_combout\ & ((\G4|tipoi[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000010100110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G4|ALT_INV_tipoi[0]~0_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add2~25_sumout\,
	combout => \G16|Prod~34_combout\);

\G16|Prod~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~28_combout\ = (\G16|Add2~21_sumout\ & ((!\G16|process_0~0_combout\ & (\G7|Mux31~0_combout\)) # (\G16|process_0~0_combout\ & ((\G4|tipoi[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000010100110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G4|ALT_INV_tipoi[0]~0_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add2~21_sumout\,
	combout => \G16|Prod~28_combout\);

\G16|Prod~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~23_combout\ = (\G16|Add2~17_sumout\ & ((!\G16|process_0~0_combout\ & (\G7|Mux31~0_combout\)) # (\G16|process_0~0_combout\ & ((\G4|tipoi[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000010100110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G4|ALT_INV_tipoi[0]~0_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add2~17_sumout\,
	combout => \G16|Prod~23_combout\);

\G16|Prod~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~69_combout\ = (\G16|Add2~5_sumout\ & ((!\G16|process_0~0_combout\ & (\G7|Mux31~0_combout\)) # (\G16|process_0~0_combout\ & ((\G4|tipoi[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000010100110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G4|ALT_INV_tipoi[0]~0_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add2~5_sumout\,
	combout => \G16|Prod~69_combout\);

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
-- \G16|Add4~1_sumout\ = SUM(( \G16|Prod~69_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add4~34_cout\ ))
-- \G16|Add4~2\ = CARRY(( \G16|Prod~69_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add4~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~69_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => \G16|Add4~34_cout\,
	sumout => \G16|Add4~1_sumout\,
	cout => \G16|Add4~2\);

\G16|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~5_sumout\ = SUM(( (\G14|SAIDA[0]~9_combout\ & \G16|Add2~9_sumout\) ) + ( (!\Clock_Sistema~input_o\) # (!\G7|Mux14~0_combout\) ) + ( \G16|Add4~2\ ))
-- \G16|Add4~6\ = CARRY(( (\G14|SAIDA[0]~9_combout\ & \G16|Add2~9_sumout\) ) + ( (!\Clock_Sistema~input_o\) # (!\G7|Mux14~0_combout\) ) + ( \G16|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G16|ALT_INV_Add2~9_sumout\,
	dataf => \G7|ALT_INV_Mux14~0_combout\,
	cin => \G16|Add4~2\,
	sumout => \G16|Add4~5_sumout\,
	cout => \G16|Add4~6\);

\G16|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~9_sumout\ = SUM(( (\G14|SAIDA[0]~9_combout\ & \G16|Add2~13_sumout\) ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add4~6\ ))
-- \G16|Add4~10\ = CARRY(( (\G14|SAIDA[0]~9_combout\ & \G16|Add2~13_sumout\) ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111111111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Add2~13_sumout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add4~6\,
	sumout => \G16|Add4~9_sumout\,
	cout => \G16|Add4~10\);

\G16|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~13_sumout\ = SUM(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~10\ ))
-- \G16|Add4~14\ = CARRY(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~23_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add4~10\,
	sumout => \G16|Add4~13_sumout\,
	cout => \G16|Add4~14\);

\G16|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~17_sumout\ = SUM(( \G16|Prod~28_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~14\ ))
-- \G16|Add4~18\ = CARRY(( \G16|Prod~28_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~28_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add4~14\,
	sumout => \G16|Add4~17_sumout\,
	cout => \G16|Add4~18\);

\G16|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~21_sumout\ = SUM(( \G16|Prod~34_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~18\ ))
-- \G16|Add4~22\ = CARRY(( \G16|Prod~34_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~34_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add4~18\,
	sumout => \G16|Add4~21_sumout\,
	cout => \G16|Add4~22\);

\G16|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~25_sumout\ = SUM(( \G16|Prod~41_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~22\ ))
-- \G16|Add4~26\ = CARRY(( \G16|Prod~41_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~41_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add4~22\,
	sumout => \G16|Add4~25_sumout\,
	cout => \G16|Add4~26\);

\G16|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add4~29_sumout\ = SUM(( \G16|Prod~41_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[7]~23_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~41_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add4~26\,
	sumout => \G16|Add4~29_sumout\);

\G16|Prod~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~70_combout\ = (\G16|Add2~13_sumout\ & ((!\G16|process_0~0_combout\ & (\G7|Mux31~0_combout\)) # (\G16|process_0~0_combout\ & ((\G4|tipoi[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000010100110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G4|ALT_INV_tipoi[0]~0_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add2~13_sumout\,
	combout => \G16|Prod~70_combout\);

\G16|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~1_sumout\ = SUM(( (\G14|SAIDA[0]~9_combout\ & \G16|Add2~5_sumout\) ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))
-- \G16|Add3~2\ = CARRY(( (\G14|SAIDA[0]~9_combout\ & \G16|Add2~5_sumout\) ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Add2~5_sumout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => GND,
	sumout => \G16|Add3~1_sumout\,
	cout => \G16|Add3~2\);

\G16|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~5_sumout\ = SUM(( (\G14|SAIDA[0]~9_combout\ & \G16|Add2~9_sumout\) ) + ( (\Clock_Sistema~input_o\ & \G7|Mux14~0_combout\) ) + ( \G16|Add3~2\ ))
-- \G16|Add3~6\ = CARRY(( (\G14|SAIDA[0]~9_combout\ & \G16|Add2~9_sumout\) ) + ( (\Clock_Sistema~input_o\ & \G7|Mux14~0_combout\) ) + ( \G16|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G16|ALT_INV_Add2~9_sumout\,
	dataf => \G7|ALT_INV_Mux14~0_combout\,
	cin => \G16|Add3~2\,
	sumout => \G16|Add3~5_sumout\,
	cout => \G16|Add3~6\);

\G16|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~9_sumout\ = SUM(( \G16|Prod~70_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add3~6\ ))
-- \G16|Add3~10\ = CARRY(( \G16|Prod~70_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~70_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add3~6\,
	sumout => \G16|Add3~9_sumout\,
	cout => \G16|Add3~10\);

\G16|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~13_sumout\ = SUM(( \G16|Prod~23_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add3~10\ ))
-- \G16|Add3~14\ = CARRY(( \G16|Prod~23_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~23_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add3~10\,
	sumout => \G16|Add3~13_sumout\,
	cout => \G16|Add3~14\);

\G16|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~17_sumout\ = SUM(( \G16|Prod~28_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add3~14\ ))
-- \G16|Add3~18\ = CARRY(( \G16|Prod~28_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~28_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add3~14\,
	sumout => \G16|Add3~17_sumout\,
	cout => \G16|Add3~18\);

\G16|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~21_sumout\ = SUM(( \G16|Prod~34_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add3~18\ ))
-- \G16|Add3~22\ = CARRY(( \G16|Prod~34_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~34_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add3~18\,
	sumout => \G16|Add3~21_sumout\,
	cout => \G16|Add3~22\);

\G16|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~25_sumout\ = SUM(( \G16|Prod~41_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add3~22\ ))
-- \G16|Add3~26\ = CARRY(( \G16|Prod~41_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~41_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add3~22\,
	sumout => \G16|Add3~25_sumout\,
	cout => \G16|Add3~26\);

\G16|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~29_sumout\ = SUM(( \G16|Prod~41_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~41_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add3~26\,
	sumout => \G16|Add3~29_sumout\);

\G16|Prod~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~48_combout\ = ( \G16|Add3~29_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~41_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~29_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\) 
-- # ((\G16|Prod~41_combout\)))) ) ) # ( !\G16|Add3~29_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~41_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~29_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & 
-- (\G14|SAIDA[1]~10_combout\ & (\G16|Prod~41_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datac => \G16|ALT_INV_Prod~41_combout\,
	datad => \G16|ALT_INV_Add4~29_sumout\,
	datae => \G16|ALT_INV_Add3~29_sumout\,
	combout => \G16|Prod~48_combout\);

\G16|Prod~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~42_combout\ = ( \G16|Add3~25_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~41_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~25_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\) 
-- # ((\G16|Prod~41_combout\)))) ) ) # ( !\G16|Add3~25_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~41_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~25_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & 
-- (\G14|SAIDA[1]~10_combout\ & (\G16|Prod~41_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datac => \G16|ALT_INV_Prod~41_combout\,
	datad => \G16|ALT_INV_Add4~25_sumout\,
	datae => \G16|ALT_INV_Add3~25_sumout\,
	combout => \G16|Prod~42_combout\);

\G16|Prod~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~35_combout\ = ( \G16|Add3~21_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~34_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~21_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\) 
-- # ((\G16|Prod~34_combout\)))) ) ) # ( !\G16|Add3~21_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~34_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~21_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & 
-- (\G14|SAIDA[1]~10_combout\ & (\G16|Prod~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datac => \G16|ALT_INV_Prod~34_combout\,
	datad => \G16|ALT_INV_Add4~21_sumout\,
	datae => \G16|ALT_INV_Add3~21_sumout\,
	combout => \G16|Prod~35_combout\);

\G16|Prod~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~29_combout\ = ( \G16|Add3~17_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~28_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~17_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\) 
-- # ((\G16|Prod~28_combout\)))) ) ) # ( !\G16|Add3~17_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~28_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~17_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & 
-- (\G14|SAIDA[1]~10_combout\ & (\G16|Prod~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datac => \G16|ALT_INV_Prod~28_combout\,
	datad => \G16|ALT_INV_Add4~17_sumout\,
	datae => \G16|ALT_INV_Add3~17_sumout\,
	combout => \G16|Prod~29_combout\);

\G16|Prod~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~24_combout\ = ( \G16|Add3~13_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~23_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~13_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\) 
-- # ((\G16|Prod~23_combout\)))) ) ) # ( !\G16|Add3~13_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\ & (\G16|Prod~23_combout\)) # (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~13_sumout\))))) # (\G14|SAIDA[0]~9_combout\ & 
-- (\G14|SAIDA[1]~10_combout\ & (\G16|Prod~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datac => \G16|ALT_INV_Prod~23_combout\,
	datad => \G16|ALT_INV_Add4~13_sumout\,
	datae => \G16|ALT_INV_Add3~13_sumout\,
	combout => \G16|Prod~24_combout\);

\G16|Prod~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~21_combout\ = ( \G16|Add3~9_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~9_sumout\)))) # (\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\) # ((\G16|Add2~13_sumout\)))) ) ) # ( !\G16|Add3~9_sumout\ & ( 
-- (\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[0]~9_combout\ & ((\G16|Add4~9_sumout\))) # (\G14|SAIDA[0]~9_combout\ & (\G16|Add2~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011100000001001000110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datac => \G16|ALT_INV_Add2~13_sumout\,
	datad => \G16|ALT_INV_Add4~9_sumout\,
	datae => \G16|ALT_INV_Add3~9_sumout\,
	combout => \G16|Prod~21_combout\);

\G16|Prod~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~19_combout\ = ( \G16|Add3~5_sumout\ & ( (!\G14|SAIDA[0]~9_combout\ & (\G14|SAIDA[1]~10_combout\ & ((\G16|Add4~5_sumout\)))) # (\G14|SAIDA[0]~9_combout\ & ((!\G14|SAIDA[1]~10_combout\) # ((\G16|Add2~9_sumout\)))) ) ) # ( !\G16|Add3~5_sumout\ & ( 
-- (\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[0]~9_combout\ & ((\G16|Add4~5_sumout\))) # (\G14|SAIDA[0]~9_combout\ & (\G16|Add2~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011100000001001000110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datab => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datac => \G16|ALT_INV_Add2~9_sumout\,
	datad => \G16|ALT_INV_Add4~5_sumout\,
	datae => \G16|ALT_INV_Add3~5_sumout\,
	combout => \G16|Prod~19_combout\);

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
-- \G16|Add6~1_sumout\ = SUM(( \G16|Prod~19_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add6~34_cout\ ))
-- \G16|Add6~2\ = CARRY(( \G16|Prod~19_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add6~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~19_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => \G16|Add6~34_cout\,
	sumout => \G16|Add6~1_sumout\,
	cout => \G16|Add6~2\);

\G16|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~5_sumout\ = SUM(( \G16|Prod~21_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add6~2\ ))
-- \G16|Add6~6\ = CARRY(( \G16|Prod~21_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~21_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add6~2\,
	sumout => \G16|Add6~5_sumout\,
	cout => \G16|Add6~6\);

\G16|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~9_sumout\ = SUM(( \G16|Prod~24_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add6~6\ ))
-- \G16|Add6~10\ = CARRY(( \G16|Prod~24_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~24_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add6~6\,
	sumout => \G16|Add6~9_sumout\,
	cout => \G16|Add6~10\);

\G16|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~13_sumout\ = SUM(( \G16|Prod~29_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~10\ ))
-- \G16|Add6~14\ = CARRY(( \G16|Prod~29_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~29_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add6~10\,
	sumout => \G16|Add6~13_sumout\,
	cout => \G16|Add6~14\);

\G16|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~17_sumout\ = SUM(( \G16|Prod~35_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~14\ ))
-- \G16|Add6~18\ = CARRY(( \G16|Prod~35_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~35_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add6~14\,
	sumout => \G16|Add6~17_sumout\,
	cout => \G16|Add6~18\);

\G16|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~21_sumout\ = SUM(( \G16|Prod~42_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~18\ ))
-- \G16|Add6~22\ = CARRY(( \G16|Prod~42_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~42_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add6~18\,
	sumout => \G16|Add6~21_sumout\,
	cout => \G16|Add6~22\);

\G16|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~25_sumout\ = SUM(( \G16|Prod~48_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~22\ ))
-- \G16|Add6~26\ = CARRY(( \G16|Prod~48_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~48_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add6~22\,
	sumout => \G16|Add6~25_sumout\,
	cout => \G16|Add6~26\);

\G16|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add6~29_sumout\ = SUM(( \G16|Prod~48_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[7]~23_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~48_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add6~26\,
	sumout => \G16|Add6~29_sumout\);

\G16|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~1_sumout\ = SUM(( \G16|Prod~19_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))
-- \G16|Add5~2\ = CARRY(( \G16|Prod~19_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~19_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => GND,
	sumout => \G16|Add5~1_sumout\,
	cout => \G16|Add5~2\);

\G16|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~5_sumout\ = SUM(( \G16|Prod~21_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add5~2\ ))
-- \G16|Add5~6\ = CARRY(( \G16|Prod~21_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~21_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add5~2\,
	sumout => \G16|Add5~5_sumout\,
	cout => \G16|Add5~6\);

\G16|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~9_sumout\ = SUM(( \G16|Prod~24_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add5~6\ ))
-- \G16|Add5~10\ = CARRY(( \G16|Prod~24_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~24_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add5~6\,
	sumout => \G16|Add5~9_sumout\,
	cout => \G16|Add5~10\);

\G16|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~13_sumout\ = SUM(( \G16|Prod~29_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add5~10\ ))
-- \G16|Add5~14\ = CARRY(( \G16|Prod~29_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~29_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add5~10\,
	sumout => \G16|Add5~13_sumout\,
	cout => \G16|Add5~14\);

\G16|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~17_sumout\ = SUM(( \G16|Prod~35_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add5~14\ ))
-- \G16|Add5~18\ = CARRY(( \G16|Prod~35_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~35_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add5~14\,
	sumout => \G16|Add5~17_sumout\,
	cout => \G16|Add5~18\);

\G16|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~21_sumout\ = SUM(( \G16|Prod~42_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add5~18\ ))
-- \G16|Add5~22\ = CARRY(( \G16|Prod~42_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~42_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add5~18\,
	sumout => \G16|Add5~21_sumout\,
	cout => \G16|Add5~22\);

\G16|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~25_sumout\ = SUM(( \G16|Prod~48_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add5~22\ ))
-- \G16|Add5~26\ = CARRY(( \G16|Prod~48_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~48_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add5~22\,
	sumout => \G16|Add5~25_sumout\,
	cout => \G16|Add5~26\);

\G16|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~29_sumout\ = SUM(( \G16|Prod~48_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~48_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add5~26\,
	sumout => \G16|Add5~29_sumout\);

\G16|Prod~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~54_combout\ = ( \G16|Add5~29_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~48_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~29_sumout\))))) # (\G14|SAIDA[1]~10_combout\ & 
-- ((!\G14|SAIDA[2]~11_combout\) # ((\G16|Prod~48_combout\)))) ) ) # ( !\G16|Add5~29_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~48_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~29_sumout\))))) # 
-- (\G14|SAIDA[1]~10_combout\ & (\G14|SAIDA[2]~11_combout\ & (\G16|Prod~48_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datac => \G16|ALT_INV_Prod~48_combout\,
	datad => \G16|ALT_INV_Add6~29_sumout\,
	datae => \G16|ALT_INV_Add5~29_sumout\,
	combout => \G16|Prod~54_combout\);

\G16|Prod~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~49_combout\ = ( \G16|Add5~25_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~48_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~25_sumout\))))) # (\G14|SAIDA[1]~10_combout\ & 
-- ((!\G14|SAIDA[2]~11_combout\) # ((\G16|Prod~48_combout\)))) ) ) # ( !\G16|Add5~25_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~48_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~25_sumout\))))) # 
-- (\G14|SAIDA[1]~10_combout\ & (\G14|SAIDA[2]~11_combout\ & (\G16|Prod~48_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datac => \G16|ALT_INV_Prod~48_combout\,
	datad => \G16|ALT_INV_Add6~25_sumout\,
	datae => \G16|ALT_INV_Add5~25_sumout\,
	combout => \G16|Prod~49_combout\);

\G16|Prod~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~43_combout\ = ( \G16|Add5~21_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~42_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~21_sumout\))))) # (\G14|SAIDA[1]~10_combout\ & 
-- ((!\G14|SAIDA[2]~11_combout\) # ((\G16|Prod~42_combout\)))) ) ) # ( !\G16|Add5~21_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~42_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~21_sumout\))))) # 
-- (\G14|SAIDA[1]~10_combout\ & (\G14|SAIDA[2]~11_combout\ & (\G16|Prod~42_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datac => \G16|ALT_INV_Prod~42_combout\,
	datad => \G16|ALT_INV_Add6~21_sumout\,
	datae => \G16|ALT_INV_Add5~21_sumout\,
	combout => \G16|Prod~43_combout\);

\G16|Prod~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~36_combout\ = ( \G16|Add5~17_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~35_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~17_sumout\))))) # (\G14|SAIDA[1]~10_combout\ & 
-- ((!\G14|SAIDA[2]~11_combout\) # ((\G16|Prod~35_combout\)))) ) ) # ( !\G16|Add5~17_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~35_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~17_sumout\))))) # 
-- (\G14|SAIDA[1]~10_combout\ & (\G14|SAIDA[2]~11_combout\ & (\G16|Prod~35_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datac => \G16|ALT_INV_Prod~35_combout\,
	datad => \G16|ALT_INV_Add6~17_sumout\,
	datae => \G16|ALT_INV_Add5~17_sumout\,
	combout => \G16|Prod~36_combout\);

\G16|Prod~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~30_combout\ = ( \G16|Add5~13_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~29_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~13_sumout\))))) # (\G14|SAIDA[1]~10_combout\ & 
-- ((!\G14|SAIDA[2]~11_combout\) # ((\G16|Prod~29_combout\)))) ) ) # ( !\G16|Add5~13_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~29_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~13_sumout\))))) # 
-- (\G14|SAIDA[1]~10_combout\ & (\G14|SAIDA[2]~11_combout\ & (\G16|Prod~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datac => \G16|ALT_INV_Prod~29_combout\,
	datad => \G16|ALT_INV_Add6~13_sumout\,
	datae => \G16|ALT_INV_Add5~13_sumout\,
	combout => \G16|Prod~30_combout\);

\G16|Prod~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~25_combout\ = ( \G16|Add5~9_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~24_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~9_sumout\))))) # (\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\) 
-- # ((\G16|Prod~24_combout\)))) ) ) # ( !\G16|Add5~9_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~24_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~9_sumout\))))) # (\G14|SAIDA[1]~10_combout\ & 
-- (\G14|SAIDA[2]~11_combout\ & (\G16|Prod~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datac => \G16|ALT_INV_Prod~24_combout\,
	datad => \G16|ALT_INV_Add6~9_sumout\,
	datae => \G16|ALT_INV_Add5~9_sumout\,
	combout => \G16|Prod~25_combout\);

\G16|Prod~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~22_combout\ = ( \G16|Add5~5_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~21_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~5_sumout\))))) # (\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\) 
-- # ((\G16|Prod~21_combout\)))) ) ) # ( !\G16|Add5~5_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~21_combout\)) # (\G14|SAIDA[2]~11_combout\ & ((\G16|Add6~5_sumout\))))) # (\G14|SAIDA[1]~10_combout\ & 
-- (\G14|SAIDA[2]~11_combout\ & (\G16|Prod~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datac => \G16|ALT_INV_Prod~21_combout\,
	datad => \G16|ALT_INV_Add6~5_sumout\,
	datae => \G16|ALT_INV_Add5~5_sumout\,
	combout => \G16|Prod~22_combout\);

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
-- \G16|Add8~1_sumout\ = SUM(( \G16|Prod~22_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add8~34_cout\ ))
-- \G16|Add8~2\ = CARRY(( \G16|Prod~22_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~22_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => \G16|Add8~34_cout\,
	sumout => \G16|Add8~1_sumout\,
	cout => \G16|Add8~2\);

\G16|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~5_sumout\ = SUM(( \G16|Prod~25_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add8~2\ ))
-- \G16|Add8~6\ = CARRY(( \G16|Prod~25_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~25_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add8~2\,
	sumout => \G16|Add8~5_sumout\,
	cout => \G16|Add8~6\);

\G16|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~9_sumout\ = SUM(( \G16|Prod~30_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add8~6\ ))
-- \G16|Add8~10\ = CARRY(( \G16|Prod~30_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~30_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add8~6\,
	sumout => \G16|Add8~9_sumout\,
	cout => \G16|Add8~10\);

\G16|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~13_sumout\ = SUM(( \G16|Prod~36_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~10\ ))
-- \G16|Add8~14\ = CARRY(( \G16|Prod~36_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~36_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add8~10\,
	sumout => \G16|Add8~13_sumout\,
	cout => \G16|Add8~14\);

\G16|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~17_sumout\ = SUM(( \G16|Prod~43_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~14\ ))
-- \G16|Add8~18\ = CARRY(( \G16|Prod~43_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~43_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add8~14\,
	sumout => \G16|Add8~17_sumout\,
	cout => \G16|Add8~18\);

\G16|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~21_sumout\ = SUM(( \G16|Prod~49_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~18\ ))
-- \G16|Add8~22\ = CARRY(( \G16|Prod~49_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~49_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add8~18\,
	sumout => \G16|Add8~21_sumout\,
	cout => \G16|Add8~22\);

\G16|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~25_sumout\ = SUM(( \G16|Prod~54_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~22\ ))
-- \G16|Add8~26\ = CARRY(( \G16|Prod~54_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~54_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add8~22\,
	sumout => \G16|Add8~25_sumout\,
	cout => \G16|Add8~26\);

\G16|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~1_sumout\ = SUM(( \G16|Prod~22_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))
-- \G16|Add7~2\ = CARRY(( \G16|Prod~22_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~22_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => GND,
	sumout => \G16|Add7~1_sumout\,
	cout => \G16|Add7~2\);

\G16|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~5_sumout\ = SUM(( \G16|Prod~25_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add7~2\ ))
-- \G16|Add7~6\ = CARRY(( \G16|Prod~25_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~25_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add7~2\,
	sumout => \G16|Add7~5_sumout\,
	cout => \G16|Add7~6\);

\G16|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~9_sumout\ = SUM(( \G16|Prod~30_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add7~6\ ))
-- \G16|Add7~10\ = CARRY(( \G16|Prod~30_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~30_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add7~6\,
	sumout => \G16|Add7~9_sumout\,
	cout => \G16|Add7~10\);

\G16|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~13_sumout\ = SUM(( \G16|Prod~36_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add7~10\ ))
-- \G16|Add7~14\ = CARRY(( \G16|Prod~36_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~36_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add7~10\,
	sumout => \G16|Add7~13_sumout\,
	cout => \G16|Add7~14\);

\G16|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~17_sumout\ = SUM(( \G16|Prod~43_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add7~14\ ))
-- \G16|Add7~18\ = CARRY(( \G16|Prod~43_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~43_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add7~14\,
	sumout => \G16|Add7~17_sumout\,
	cout => \G16|Add7~18\);

\G16|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~21_sumout\ = SUM(( \G16|Prod~49_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add7~18\ ))
-- \G16|Add7~22\ = CARRY(( \G16|Prod~49_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~49_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add7~18\,
	sumout => \G16|Add7~21_sumout\,
	cout => \G16|Add7~22\);

\G16|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~25_sumout\ = SUM(( \G16|Prod~54_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add7~22\ ))
-- \G16|Add7~26\ = CARRY(( \G16|Prod~54_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~54_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add7~22\,
	sumout => \G16|Add7~25_sumout\,
	cout => \G16|Add7~26\);

\G16|Prod~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~55_combout\ = ( \G16|Add7~25_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~54_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~25_sumout\))))) # (\G14|SAIDA[2]~11_combout\ & 
-- ((!\G14|SAIDA[3]~12_combout\) # ((\G16|Prod~54_combout\)))) ) ) # ( !\G16|Add7~25_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~54_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~25_sumout\))))) # 
-- (\G14|SAIDA[2]~11_combout\ & (\G14|SAIDA[3]~12_combout\ & (\G16|Prod~54_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datab => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datac => \G16|ALT_INV_Prod~54_combout\,
	datad => \G16|ALT_INV_Add8~25_sumout\,
	datae => \G16|ALT_INV_Add7~25_sumout\,
	combout => \G16|Prod~55_combout\);

\G16|Prod~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~50_combout\ = ( \G16|Add7~21_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~49_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~21_sumout\))))) # (\G14|SAIDA[2]~11_combout\ & 
-- ((!\G14|SAIDA[3]~12_combout\) # ((\G16|Prod~49_combout\)))) ) ) # ( !\G16|Add7~21_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~49_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~21_sumout\))))) # 
-- (\G14|SAIDA[2]~11_combout\ & (\G14|SAIDA[3]~12_combout\ & (\G16|Prod~49_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datab => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datac => \G16|ALT_INV_Prod~49_combout\,
	datad => \G16|ALT_INV_Add8~21_sumout\,
	datae => \G16|ALT_INV_Add7~21_sumout\,
	combout => \G16|Prod~50_combout\);

\G16|Prod~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~44_combout\ = ( \G16|Add7~17_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~43_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~17_sumout\))))) # (\G14|SAIDA[2]~11_combout\ & 
-- ((!\G14|SAIDA[3]~12_combout\) # ((\G16|Prod~43_combout\)))) ) ) # ( !\G16|Add7~17_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~43_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~17_sumout\))))) # 
-- (\G14|SAIDA[2]~11_combout\ & (\G14|SAIDA[3]~12_combout\ & (\G16|Prod~43_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datab => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datac => \G16|ALT_INV_Prod~43_combout\,
	datad => \G16|ALT_INV_Add8~17_sumout\,
	datae => \G16|ALT_INV_Add7~17_sumout\,
	combout => \G16|Prod~44_combout\);

\G16|Prod~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~37_combout\ = ( \G16|Add7~13_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~36_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~13_sumout\))))) # (\G14|SAIDA[2]~11_combout\ & 
-- ((!\G14|SAIDA[3]~12_combout\) # ((\G16|Prod~36_combout\)))) ) ) # ( !\G16|Add7~13_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~36_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~13_sumout\))))) # 
-- (\G14|SAIDA[2]~11_combout\ & (\G14|SAIDA[3]~12_combout\ & (\G16|Prod~36_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datab => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datac => \G16|ALT_INV_Prod~36_combout\,
	datad => \G16|ALT_INV_Add8~13_sumout\,
	datae => \G16|ALT_INV_Add7~13_sumout\,
	combout => \G16|Prod~37_combout\);

\G16|Prod~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~31_combout\ = ( \G16|Add7~9_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~30_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~9_sumout\))))) # (\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\) 
-- # ((\G16|Prod~30_combout\)))) ) ) # ( !\G16|Add7~9_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~30_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~9_sumout\))))) # (\G14|SAIDA[2]~11_combout\ & 
-- (\G14|SAIDA[3]~12_combout\ & (\G16|Prod~30_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datab => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datac => \G16|ALT_INV_Prod~30_combout\,
	datad => \G16|ALT_INV_Add8~9_sumout\,
	datae => \G16|ALT_INV_Add7~9_sumout\,
	combout => \G16|Prod~31_combout\);

\G16|Prod~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~26_combout\ = ( \G16|Add7~5_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~25_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~5_sumout\))))) # (\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\) 
-- # ((\G16|Prod~25_combout\)))) ) ) # ( !\G16|Add7~5_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~25_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~5_sumout\))))) # (\G14|SAIDA[2]~11_combout\ & 
-- (\G14|SAIDA[3]~12_combout\ & (\G16|Prod~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datab => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datac => \G16|ALT_INV_Prod~25_combout\,
	datad => \G16|ALT_INV_Add8~5_sumout\,
	datae => \G16|ALT_INV_Add7~5_sumout\,
	combout => \G16|Prod~26_combout\);

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
-- \G16|Add10~1_sumout\ = SUM(( \G16|Prod~26_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add10~34_cout\ ))
-- \G16|Add10~2\ = CARRY(( \G16|Prod~26_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add10~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~26_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => \G16|Add10~34_cout\,
	sumout => \G16|Add10~1_sumout\,
	cout => \G16|Add10~2\);

\G16|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~5_sumout\ = SUM(( \G16|Prod~31_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add10~2\ ))
-- \G16|Add10~6\ = CARRY(( \G16|Prod~31_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~31_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add10~2\,
	sumout => \G16|Add10~5_sumout\,
	cout => \G16|Add10~6\);

\G16|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~9_sumout\ = SUM(( \G16|Prod~37_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add10~6\ ))
-- \G16|Add10~10\ = CARRY(( \G16|Prod~37_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~37_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add10~6\,
	sumout => \G16|Add10~9_sumout\,
	cout => \G16|Add10~10\);

\G16|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~13_sumout\ = SUM(( \G16|Prod~44_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~10\ ))
-- \G16|Add10~14\ = CARRY(( \G16|Prod~44_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~44_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add10~10\,
	sumout => \G16|Add10~13_sumout\,
	cout => \G16|Add10~14\);

\G16|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~17_sumout\ = SUM(( \G16|Prod~50_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~14\ ))
-- \G16|Add10~18\ = CARRY(( \G16|Prod~50_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~50_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add10~14\,
	sumout => \G16|Add10~17_sumout\,
	cout => \G16|Add10~18\);

\G16|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~21_sumout\ = SUM(( \G16|Prod~55_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~18\ ))
-- \G16|Add10~22\ = CARRY(( \G16|Prod~55_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~55_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add10~18\,
	sumout => \G16|Add10~21_sumout\,
	cout => \G16|Add10~22\);

\G16|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~1_sumout\ = SUM(( \G16|Prod~26_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))
-- \G16|Add9~2\ = CARRY(( \G16|Prod~26_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~26_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => GND,
	sumout => \G16|Add9~1_sumout\,
	cout => \G16|Add9~2\);

\G16|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~5_sumout\ = SUM(( \G16|Prod~31_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add9~2\ ))
-- \G16|Add9~6\ = CARRY(( \G16|Prod~31_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~31_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add9~2\,
	sumout => \G16|Add9~5_sumout\,
	cout => \G16|Add9~6\);

\G16|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~9_sumout\ = SUM(( \G16|Prod~37_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add9~6\ ))
-- \G16|Add9~10\ = CARRY(( \G16|Prod~37_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~37_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add9~6\,
	sumout => \G16|Add9~9_sumout\,
	cout => \G16|Add9~10\);

\G16|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~13_sumout\ = SUM(( \G16|Prod~44_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add9~10\ ))
-- \G16|Add9~14\ = CARRY(( \G16|Prod~44_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~44_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add9~10\,
	sumout => \G16|Add9~13_sumout\,
	cout => \G16|Add9~14\);

\G16|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~17_sumout\ = SUM(( \G16|Prod~50_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add9~14\ ))
-- \G16|Add9~18\ = CARRY(( \G16|Prod~50_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~50_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add9~14\,
	sumout => \G16|Add9~17_sumout\,
	cout => \G16|Add9~18\);

\G16|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~21_sumout\ = SUM(( \G16|Prod~55_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add9~18\ ))
-- \G16|Add9~22\ = CARRY(( \G16|Prod~55_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~55_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add9~18\,
	sumout => \G16|Add9~21_sumout\,
	cout => \G16|Add9~22\);

\G16|Prod~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~56_combout\ = ( \G16|Add9~21_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~55_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~21_sumout\))))) # (\G14|SAIDA[3]~12_combout\ & 
-- ((!\G14|SAIDA[4]~13_combout\) # ((\G16|Prod~55_combout\)))) ) ) # ( !\G16|Add9~21_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~55_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~21_sumout\))))) # 
-- (\G14|SAIDA[3]~12_combout\ & (\G14|SAIDA[4]~13_combout\ & (\G16|Prod~55_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datab => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datac => \G16|ALT_INV_Prod~55_combout\,
	datad => \G16|ALT_INV_Add10~21_sumout\,
	datae => \G16|ALT_INV_Add9~21_sumout\,
	combout => \G16|Prod~56_combout\);

\G16|Prod~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~51_combout\ = ( \G16|Add9~17_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~50_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~17_sumout\))))) # (\G14|SAIDA[3]~12_combout\ & 
-- ((!\G14|SAIDA[4]~13_combout\) # ((\G16|Prod~50_combout\)))) ) ) # ( !\G16|Add9~17_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~50_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~17_sumout\))))) # 
-- (\G14|SAIDA[3]~12_combout\ & (\G14|SAIDA[4]~13_combout\ & (\G16|Prod~50_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datab => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datac => \G16|ALT_INV_Prod~50_combout\,
	datad => \G16|ALT_INV_Add10~17_sumout\,
	datae => \G16|ALT_INV_Add9~17_sumout\,
	combout => \G16|Prod~51_combout\);

\G16|Prod~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~45_combout\ = ( \G16|Add9~13_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~44_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~13_sumout\))))) # (\G14|SAIDA[3]~12_combout\ & 
-- ((!\G14|SAIDA[4]~13_combout\) # ((\G16|Prod~44_combout\)))) ) ) # ( !\G16|Add9~13_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~44_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~13_sumout\))))) # 
-- (\G14|SAIDA[3]~12_combout\ & (\G14|SAIDA[4]~13_combout\ & (\G16|Prod~44_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datab => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datac => \G16|ALT_INV_Prod~44_combout\,
	datad => \G16|ALT_INV_Add10~13_sumout\,
	datae => \G16|ALT_INV_Add9~13_sumout\,
	combout => \G16|Prod~45_combout\);

\G16|Prod~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~38_combout\ = ( \G16|Add9~9_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~37_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~9_sumout\))))) # (\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\) 
-- # ((\G16|Prod~37_combout\)))) ) ) # ( !\G16|Add9~9_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~37_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~9_sumout\))))) # (\G14|SAIDA[3]~12_combout\ & 
-- (\G14|SAIDA[4]~13_combout\ & (\G16|Prod~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datab => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datac => \G16|ALT_INV_Prod~37_combout\,
	datad => \G16|ALT_INV_Add10~9_sumout\,
	datae => \G16|ALT_INV_Add9~9_sumout\,
	combout => \G16|Prod~38_combout\);

\G16|Prod~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~32_combout\ = ( \G16|Add9~5_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~31_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~5_sumout\))))) # (\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\) 
-- # ((\G16|Prod~31_combout\)))) ) ) # ( !\G16|Add9~5_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~31_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~5_sumout\))))) # (\G14|SAIDA[3]~12_combout\ & 
-- (\G14|SAIDA[4]~13_combout\ & (\G16|Prod~31_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datab => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datac => \G16|ALT_INV_Prod~31_combout\,
	datad => \G16|ALT_INV_Add10~5_sumout\,
	datae => \G16|ALT_INV_Add9~5_sumout\,
	combout => \G16|Prod~32_combout\);

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
-- \G16|Add12~1_sumout\ = SUM(( \G16|Prod~32_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add12~34_cout\ ))
-- \G16|Add12~2\ = CARRY(( \G16|Prod~32_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add12~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~32_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => \G16|Add12~34_cout\,
	sumout => \G16|Add12~1_sumout\,
	cout => \G16|Add12~2\);

\G16|Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~5_sumout\ = SUM(( \G16|Prod~38_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add12~2\ ))
-- \G16|Add12~6\ = CARRY(( \G16|Prod~38_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~38_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add12~2\,
	sumout => \G16|Add12~5_sumout\,
	cout => \G16|Add12~6\);

\G16|Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~9_sumout\ = SUM(( \G16|Prod~45_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add12~6\ ))
-- \G16|Add12~10\ = CARRY(( \G16|Prod~45_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~45_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add12~6\,
	sumout => \G16|Add12~9_sumout\,
	cout => \G16|Add12~10\);

\G16|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~13_sumout\ = SUM(( \G16|Prod~51_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~10\ ))
-- \G16|Add12~14\ = CARRY(( \G16|Prod~51_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~51_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add12~10\,
	sumout => \G16|Add12~13_sumout\,
	cout => \G16|Add12~14\);

\G16|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~17_sumout\ = SUM(( \G16|Prod~56_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~14\ ))
-- \G16|Add12~18\ = CARRY(( \G16|Prod~56_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~56_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add12~14\,
	sumout => \G16|Add12~17_sumout\,
	cout => \G16|Add12~18\);

\G16|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~1_sumout\ = SUM(( \G16|Prod~32_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))
-- \G16|Add11~2\ = CARRY(( \G16|Prod~32_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~32_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => GND,
	sumout => \G16|Add11~1_sumout\,
	cout => \G16|Add11~2\);

\G16|Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~5_sumout\ = SUM(( \G16|Prod~38_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add11~2\ ))
-- \G16|Add11~6\ = CARRY(( \G16|Prod~38_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~38_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add11~2\,
	sumout => \G16|Add11~5_sumout\,
	cout => \G16|Add11~6\);

\G16|Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~9_sumout\ = SUM(( \G16|Prod~45_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add11~6\ ))
-- \G16|Add11~10\ = CARRY(( \G16|Prod~45_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~45_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add11~6\,
	sumout => \G16|Add11~9_sumout\,
	cout => \G16|Add11~10\);

\G16|Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~13_sumout\ = SUM(( \G16|Prod~51_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add11~10\ ))
-- \G16|Add11~14\ = CARRY(( \G16|Prod~51_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~51_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add11~10\,
	sumout => \G16|Add11~13_sumout\,
	cout => \G16|Add11~14\);

\G16|Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~17_sumout\ = SUM(( \G16|Prod~56_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add11~14\ ))
-- \G16|Add11~18\ = CARRY(( \G16|Prod~56_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~56_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add11~14\,
	sumout => \G16|Add11~17_sumout\,
	cout => \G16|Add11~18\);

\G16|Prod~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~57_combout\ = ( \G16|Add11~17_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~56_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~17_sumout\))))) # (\G14|SAIDA[4]~13_combout\ & 
-- ((!\G14|SAIDA[5]~14_combout\) # ((\G16|Prod~56_combout\)))) ) ) # ( !\G16|Add11~17_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~56_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~17_sumout\))))) # 
-- (\G14|SAIDA[4]~13_combout\ & (\G14|SAIDA[5]~14_combout\ & (\G16|Prod~56_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datab => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datac => \G16|ALT_INV_Prod~56_combout\,
	datad => \G16|ALT_INV_Add12~17_sumout\,
	datae => \G16|ALT_INV_Add11~17_sumout\,
	combout => \G16|Prod~57_combout\);

\G16|Prod~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~52_combout\ = ( \G16|Add11~13_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~51_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~13_sumout\))))) # (\G14|SAIDA[4]~13_combout\ & 
-- ((!\G14|SAIDA[5]~14_combout\) # ((\G16|Prod~51_combout\)))) ) ) # ( !\G16|Add11~13_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~51_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~13_sumout\))))) # 
-- (\G14|SAIDA[4]~13_combout\ & (\G14|SAIDA[5]~14_combout\ & (\G16|Prod~51_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datab => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datac => \G16|ALT_INV_Prod~51_combout\,
	datad => \G16|ALT_INV_Add12~13_sumout\,
	datae => \G16|ALT_INV_Add11~13_sumout\,
	combout => \G16|Prod~52_combout\);

\G16|Prod~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~46_combout\ = ( \G16|Add11~9_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~45_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~9_sumout\))))) # (\G14|SAIDA[4]~13_combout\ & 
-- ((!\G14|SAIDA[5]~14_combout\) # ((\G16|Prod~45_combout\)))) ) ) # ( !\G16|Add11~9_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~45_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~9_sumout\))))) # 
-- (\G14|SAIDA[4]~13_combout\ & (\G14|SAIDA[5]~14_combout\ & (\G16|Prod~45_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datab => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datac => \G16|ALT_INV_Prod~45_combout\,
	datad => \G16|ALT_INV_Add12~9_sumout\,
	datae => \G16|ALT_INV_Add11~9_sumout\,
	combout => \G16|Prod~46_combout\);

\G16|Prod~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~39_combout\ = ( \G16|Add11~5_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~38_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~5_sumout\))))) # (\G14|SAIDA[4]~13_combout\ & 
-- ((!\G14|SAIDA[5]~14_combout\) # ((\G16|Prod~38_combout\)))) ) ) # ( !\G16|Add11~5_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~38_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~5_sumout\))))) # 
-- (\G14|SAIDA[4]~13_combout\ & (\G14|SAIDA[5]~14_combout\ & (\G16|Prod~38_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datab => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datac => \G16|ALT_INV_Prod~38_combout\,
	datad => \G16|ALT_INV_Add12~5_sumout\,
	datae => \G16|ALT_INV_Add11~5_sumout\,
	combout => \G16|Prod~39_combout\);

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
-- \G16|Add14~1_sumout\ = SUM(( \G16|Prod~39_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add14~34_cout\ ))
-- \G16|Add14~2\ = CARRY(( \G16|Prod~39_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add14~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~39_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => \G16|Add14~34_cout\,
	sumout => \G16|Add14~1_sumout\,
	cout => \G16|Add14~2\);

\G16|Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~5_sumout\ = SUM(( \G16|Prod~46_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add14~2\ ))
-- \G16|Add14~6\ = CARRY(( \G16|Prod~46_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~46_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add14~2\,
	sumout => \G16|Add14~5_sumout\,
	cout => \G16|Add14~6\);

\G16|Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~9_sumout\ = SUM(( \G16|Prod~52_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add14~6\ ))
-- \G16|Add14~10\ = CARRY(( \G16|Prod~52_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~52_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add14~6\,
	sumout => \G16|Add14~9_sumout\,
	cout => \G16|Add14~10\);

\G16|Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~13_sumout\ = SUM(( \G16|Prod~57_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~10\ ))
-- \G16|Add14~14\ = CARRY(( \G16|Prod~57_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~57_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add14~10\,
	sumout => \G16|Add14~13_sumout\,
	cout => \G16|Add14~14\);

\G16|Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~1_sumout\ = SUM(( \G16|Prod~39_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))
-- \G16|Add13~2\ = CARRY(( \G16|Prod~39_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~39_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => GND,
	sumout => \G16|Add13~1_sumout\,
	cout => \G16|Add13~2\);

\G16|Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~5_sumout\ = SUM(( \G16|Prod~46_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add13~2\ ))
-- \G16|Add13~6\ = CARRY(( \G16|Prod~46_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~46_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add13~2\,
	sumout => \G16|Add13~5_sumout\,
	cout => \G16|Add13~6\);

\G16|Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~9_sumout\ = SUM(( \G16|Prod~52_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add13~6\ ))
-- \G16|Add13~10\ = CARRY(( \G16|Prod~52_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~52_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add13~6\,
	sumout => \G16|Add13~9_sumout\,
	cout => \G16|Add13~10\);

\G16|Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~13_sumout\ = SUM(( \G16|Prod~57_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add13~10\ ))
-- \G16|Add13~14\ = CARRY(( \G16|Prod~57_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~57_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add13~10\,
	sumout => \G16|Add13~13_sumout\,
	cout => \G16|Add13~14\);

\G16|Prod~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~58_combout\ = ( \G16|Add13~13_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~57_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~13_sumout\))))) # (\G14|SAIDA[5]~14_combout\ & 
-- ((!\G14|SAIDA[6]~15_combout\) # ((\G16|Prod~57_combout\)))) ) ) # ( !\G16|Add13~13_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~57_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~13_sumout\))))) # 
-- (\G14|SAIDA[5]~14_combout\ & (\G14|SAIDA[6]~15_combout\ & (\G16|Prod~57_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G16|ALT_INV_Prod~57_combout\,
	datad => \G16|ALT_INV_Add14~13_sumout\,
	datae => \G16|ALT_INV_Add13~13_sumout\,
	combout => \G16|Prod~58_combout\);

\G16|Prod~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~53_combout\ = ( \G16|Add13~9_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~52_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~9_sumout\))))) # (\G14|SAIDA[5]~14_combout\ & 
-- ((!\G14|SAIDA[6]~15_combout\) # ((\G16|Prod~52_combout\)))) ) ) # ( !\G16|Add13~9_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~52_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~9_sumout\))))) # 
-- (\G14|SAIDA[5]~14_combout\ & (\G14|SAIDA[6]~15_combout\ & (\G16|Prod~52_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G16|ALT_INV_Prod~52_combout\,
	datad => \G16|ALT_INV_Add14~9_sumout\,
	datae => \G16|ALT_INV_Add13~9_sumout\,
	combout => \G16|Prod~53_combout\);

\G16|Prod~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~47_combout\ = ( \G16|Add13~5_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~46_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~5_sumout\))))) # (\G14|SAIDA[5]~14_combout\ & 
-- ((!\G14|SAIDA[6]~15_combout\) # ((\G16|Prod~46_combout\)))) ) ) # ( !\G16|Add13~5_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~46_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~5_sumout\))))) # 
-- (\G14|SAIDA[5]~14_combout\ & (\G14|SAIDA[6]~15_combout\ & (\G16|Prod~46_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G16|ALT_INV_Prod~46_combout\,
	datad => \G16|ALT_INV_Add14~5_sumout\,
	datae => \G16|ALT_INV_Add13~5_sumout\,
	combout => \G16|Prod~47_combout\);

\G16|Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~1_sumout\ = SUM(( \G16|Prod~47_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))
-- \G16|Add15~2\ = CARRY(( \G16|Prod~47_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA[0]~16_combout\) # (\G7|Mux15~1_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~47_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => GND,
	sumout => \G16|Add15~1_sumout\,
	cout => \G16|Add15~2\);

\G16|Add15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~5_sumout\ = SUM(( \G16|Prod~53_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add15~2\ ))
-- \G16|Add15~6\ = CARRY(( \G16|Prod~53_combout\ ) + ( (\Clock_Sistema~input_o\ & ((!\G4|rd[0]~0_combout\ & ((\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (\G7|Reg~17_combout\)))) ) + ( \G16|Add15~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~53_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add15~2\,
	sumout => \G16|Add15~5_sumout\,
	cout => \G16|Add15~6\);

\G16|Add15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~9_sumout\ = SUM(( \G16|Prod~58_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add15~6\ ))
-- \G16|Add15~10\ = CARRY(( \G16|Prod~58_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((\G18|SAIDA[2]~18_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add15~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~58_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add15~6\,
	sumout => \G16|Add15~9_sumout\,
	cout => \G16|Add15~10\);

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
-- \G16|Add16~1_sumout\ = SUM(( \G16|Prod~47_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add16~34_cout\ ))
-- \G16|Add16~2\ = CARRY(( \G16|Prod~47_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & !\G18|SAIDA[0]~16_combout\))) ) + ( \G16|Add16~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~47_combout\,
	dataf => \G18|ALT_INV_SAIDA[0]~16_combout\,
	cin => \G16|Add16~34_cout\,
	sumout => \G16|Add16~1_sumout\,
	cout => \G16|Add16~2\);

\G16|Add16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~5_sumout\ = SUM(( \G16|Prod~53_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add16~2\ ))
-- \G16|Add16~6\ = CARRY(( \G16|Prod~53_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|rd[0]~0_combout\ & ((!\G7|Reg~18_combout\))) # (\G4|rd[0]~0_combout\ & (!\G7|Reg~17_combout\))) ) + ( \G16|Add16~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Reg~17_combout\,
	datad => \G16|ALT_INV_Prod~53_combout\,
	dataf => \G7|ALT_INV_Reg~18_combout\,
	cin => \G16|Add16~2\,
	sumout => \G16|Add16~5_sumout\,
	cout => \G16|Add16~6\);

\G16|Add16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~9_sumout\ = SUM(( \G16|Prod~58_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add16~6\ ))
-- \G16|Add16~10\ = CARRY(( \G16|Prod~58_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & !\G18|SAIDA[2]~18_combout\)) ) + ( \G16|Add16~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Prod~58_combout\,
	dataf => \G18|ALT_INV_SAIDA[2]~18_combout\,
	cin => \G16|Add16~6\,
	sumout => \G16|Add16~9_sumout\,
	cout => \G16|Add16~10\);

\G16|Saida_to_Dados[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~1_combout\ = (!\G4|funct[0]~1_combout\ & (!\G14|SAIDA[6]~15_combout\ $ (!\G14|SAIDA[7]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[0]~1_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G14|ALT_INV_SAIDA[7]~16_combout\,
	combout => \G16|Saida_to_Dados[10]~1_combout\);

\G16|Saida_to_Dados[10]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~2_combout\ = (!\G4|funct[0]~1_combout\ & ((!\G14|SAIDA[6]~15_combout\) # (\G14|SAIDA[7]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_funct[0]~1_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G14|ALT_INV_SAIDA[7]~16_combout\,
	combout => \G16|Saida_to_Dados[10]~2_combout\);

\G16|Saida_to_Dados[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[9]~18_combout\ = ( \G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add16~9_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Prod~58_combout\ ) ) ) 
-- # ( \G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add15~9_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Splitter~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~7_combout\,
	datab => \G16|ALT_INV_Add15~9_sumout\,
	datac => \G16|ALT_INV_Prod~58_combout\,
	datad => \G16|ALT_INV_Add16~9_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[10]~1_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[10]~2_combout\,
	combout => \G16|Saida_to_Dados[9]~18_combout\);

\G16|Saida_to_Dados[9]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[9]~21_combout\ = ((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[9]~18_combout\)) # (\G16|Saida_to_Dados[9]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[9]~18_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[9]~20_combout\,
	combout => \G16|Saida_to_Dados[9]~21_combout\);

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

\G18|SAIDA[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[8]~24_combout\ = ( \G17|RAM_rtl_0|auto_generated|ram_block1a8~portbdataout\ & ( (!\G5|Mux0~0_combout\) # (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[8]~14_combout\)) # (\G16|Saida_to_Dados[8]~16_combout\)) ) ) # ( 
-- !\G17|RAM_rtl_0|auto_generated|ram_block1a8~portbdataout\ & ( (\G5|Mux0~0_combout\ & (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[8]~14_combout\)) # (\G16|Saida_to_Dados[8]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101101010111111111100000001010101011010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[8]~14_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[8]~16_combout\,
	datae => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portbdataout\,
	combout => \G18|SAIDA[8]~24_combout\);

\G7|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~0_combout\ = (\G18|SAIDA[8]~24_combout\ & \G7|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[8]~24_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux23~0_combout\);

\G14|SAIDA[8]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[8]~17_combout\ = (\G7|Mux23~0_combout\ & !\G16|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux23~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[8]~17_combout\);

\G16|Splitter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~6_combout\ = (\G14|SAIDA[8]~17_combout\ & (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[8]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[8]~17_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA[8]~24_combout\,
	combout => \G16|Splitter~6_combout\);

\G16|Saida_to_Dados[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[8]~14_combout\ = ( \G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add16~5_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Prod~53_combout\ ) ) ) 
-- # ( \G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add15~5_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Splitter~6_combout\ ) ) )
>>>>>>> master

\Flag_memparareg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Flag_memparareg_OUT~output_o\);
=======
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~6_combout\,
	datab => \G16|ALT_INV_Add15~5_sumout\,
	datac => \G16|ALT_INV_Prod~53_combout\,
	datad => \G16|ALT_INV_Add16~5_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[10]~1_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[10]~2_combout\,
	combout => \G16|Saida_to_Dados[8]~14_combout\);

\G16|Saida_to_Dados[8]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[8]~17_combout\ = ((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[8]~14_combout\)) # (\G16|Saida_to_Dados[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[8]~14_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[8]~16_combout\,
	combout => \G16|Saida_to_Dados[8]~17_combout\);

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

\G18|SAIDA[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[7]~23_combout\ = ( \G17|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\ & ( (!\G5|Mux0~0_combout\) # (((\G16|Saida_to_Dados[7]~3_combout\ & \G16|Saida_to_Dados[7]~9_combout\)) # (\G16|Saida_to_Dados[7]~12_combout\)) ) ) # ( 
-- !\G17|RAM_rtl_0|auto_generated|ram_block1a7~portbdataout\ & ( (\G5|Mux0~0_combout\ & (((\G16|Saida_to_Dados[7]~3_combout\ & \G16|Saida_to_Dados[7]~9_combout\)) # (\G16|Saida_to_Dados[7]~12_combout\))) ) )
>>>>>>> master

\Flag_escrevereg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Flag_escrevereg_OUT~output_o\);
=======
	extended_lut => "off",
	lut_mask => "0000000101010101101010111111111100000001010101011010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~3_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[7]~12_combout\,
	datae => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	combout => \G18|SAIDA[7]~23_combout\);

\G7|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~0_combout\ = (\G18|SAIDA[7]~23_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

\Flag_lemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_lemem_OUT~output_o\);
=======
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[7]~23_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux24~0_combout\);

\G14|SAIDA[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[7]~16_combout\ = (\G7|Mux24~0_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

\Flag_escrevemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_escrevemem_OUT~output_o\);
=======
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux24~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[7]~16_combout\);

\G16|Splitter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~5_combout\ = (\G14|SAIDA[7]~16_combout\ & (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[7]~23_combout\)))
>>>>>>> master

\Flag_branch_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_branch_OUT~output_o\);
=======
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[7]~16_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA[7]~23_combout\,
	combout => \G16|Splitter~5_combout\);

\G16|Saida_to_Dados[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~3_combout\ = ( \G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add16~1_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Prod~47_combout\ ) ) ) # 
-- ( \G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add15~1_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Splitter~5_combout\ ) ) )
>>>>>>> master

\Flag_aluSRC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_aluSRC_OUT~output_o\);
=======
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~5_combout\,
	datab => \G16|ALT_INV_Add15~1_sumout\,
	datac => \G16|ALT_INV_Prod~47_combout\,
	datad => \G16|ALT_INV_Add16~1_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[10]~1_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[10]~2_combout\,
	combout => \G16|Saida_to_Dados[7]~3_combout\);

\G16|Saida_to_Dados[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[7]~13_combout\ = ((\G16|Saida_to_Dados[7]~3_combout\ & \G16|Saida_to_Dados[7]~9_combout\)) # (\G16|Saida_to_Dados[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[7]~3_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[7]~12_combout\,
	combout => \G16|Saida_to_Dados[7]~13_combout\);

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

\G18|SAIDA[6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[6]~22_combout\ = (!\G5|Mux0~0_combout\ & ((\G17|RAM_rtl_0|auto_generated|ram_block1a6~portbdataout\))) # (\G5|Mux0~0_combout\ & (\G16|Mux9~2_combout\))
>>>>>>> master

\Flag_jump_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_jump_OUT~output_o\);
=======
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Mux9~2_combout\,
	datac => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	combout => \G18|SAIDA[6]~22_combout\);

\G7|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~0_combout\ = (\G18|SAIDA[6]~22_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

\Clock_Sistema~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_Sistema,
	o => \Clock_Sistema~input_o\);

\G12|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(0) = ( \G12|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(0) ) ) ) # ( !\G12|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(0) ) ) ) # ( \G12|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[6]~22_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux25~0_combout\);

\G14|SAIDA[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[6]~15_combout\ = (\G7|Mux25~0_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(0),
	datae => \G12|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(0));

\G13|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(0) = ( \G13|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(0) ) ) ) # ( !\G13|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(0) ) ) ) # ( \G13|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux25~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[6]~15_combout\);

\G16|Prod~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~40_combout\ = ( \G16|Add14~1_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & (((\G16|Prod~39_combout\)) # (\G14|SAIDA[6]~15_combout\))) # (\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & ((\G16|Add13~1_sumout\))) # 
-- (\G14|SAIDA[6]~15_combout\ & (\G16|Prod~39_combout\)))) ) ) # ( !\G16|Add14~1_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & (!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~39_combout\))) # (\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & 
-- ((\G16|Add13~1_sumout\))) # (\G14|SAIDA[6]~15_combout\ & (\G16|Prod~39_combout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(0),
	datae => \G13|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(0));

\G1|pout[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(0) = ( \G1|pout\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(0) ) ) ) # ( !\G1|pout\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(0) ) ) ) # ( \G1|pout\(0) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000100101001101001010110110111100001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G16|ALT_INV_Prod~39_combout\,
	datad => \G16|ALT_INV_Add13~1_sumout\,
	datae => \G16|ALT_INV_Add14~1_sumout\,
	combout => \G16|Prod~40_combout\);

\G16|Splitter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~4_combout\ = (\G14|SAIDA[6]~15_combout\ & (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[6]~22_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(0),
	datae => \G1|ALT_INV_pout\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(0));

\G2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|saida[0]~0_combout\ = !\G1|pout\(0)
=======
	dataa => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA[6]~22_combout\,
	combout => \G16|Splitter~4_combout\);

\G16|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~0_combout\ = ( \G4|funct[0]~1_combout\ & ( \G4|rd[0]~0_combout\ & ( \G16|Splitter~4_combout\ ) ) ) # ( !\G4|funct[0]~1_combout\ & ( \G4|rd[0]~0_combout\ & ( \G16|Prod~40_combout\ ) ) ) # ( \G4|funct[0]~1_combout\ & ( !\G4|rd[0]~0_combout\ & ( 
-- \G16|Add1~25_sumout\ ) ) ) # ( !\G4|funct[0]~1_combout\ & ( !\G4|rd[0]~0_combout\ & ( \G16|Add0~25_sumout\ ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	combout => \G2|saida[0]~0_combout\);
=======
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~25_sumout\,
	datab => \G16|ALT_INV_Add1~25_sumout\,
	datac => \G16|ALT_INV_Prod~40_combout\,
	datad => \G16|ALT_INV_Splitter~4_combout\,
	datae => \G4|ALT_INV_funct[0]~1_combout\,
	dataf => \G4|ALT_INV_rd[0]~0_combout\,
	combout => \G16|Mux9~0_combout\);

\G16|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~1_combout\ = ( \G18|SAIDA[6]~22_combout\ & ( (\G16|Saida_to_Dados[15]~0_combout\ & (((\Clock_Sistema~input_o\ & !\G7|Mux15~1_combout\)) # (\G14|SAIDA[6]~15_combout\))) ) ) # ( !\G18|SAIDA[6]~22_combout\ & ( (\G16|Saida_to_Dados[15]~0_combout\ & 
-- \G14|SAIDA[6]~15_combout\) ) )
>>>>>>> master

\G2|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(0));

\G12|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(1) = ( \G12|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(1) ) ) ) # ( !\G12|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(1) ) ) ) # ( \G12|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0001000100010001000101010001000100010001000100010001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G7|ALT_INV_Mux15~1_combout\,
	datae => \G18|ALT_INV_SAIDA[6]~22_combout\,
	combout => \G16|Mux9~1_combout\);

\G16|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~2_combout\ = ( \G16|Mux9~0_combout\ & ( \G16|Mux9~1_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\)) # (\G16|process_0~0_combout\ & ((\G16|Add0~25_sumout\))) ) ) ) # ( !\G16|Mux9~0_combout\ & ( \G16|Mux9~1_combout\ & ( 
-- (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\)) # (\G16|process_0~0_combout\ & ((\G16|Add0~25_sumout\))) ) ) ) # ( \G16|Mux9~0_combout\ & ( !\G16|Mux9~1_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & (!\G4|funct[2]~2_combout\))) # 
-- (\G16|process_0~0_combout\ & (((\G16|Add0~25_sumout\)))) ) ) ) # ( !\G16|Mux9~0_combout\ & ( !\G16|Mux9~1_combout\ & ( (\G16|process_0~0_combout\ & \G16|Add0~25_sumout\) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(1),
	datae => \G12|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(1));

\G13|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(1) = ( \G13|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(1) ) ) ) # ( !\G13|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(1) ) ) ) # ( \G13|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000000000001111010000000100111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_funct[2]~2_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add0~25_sumout\,
	datae => \G16|ALT_INV_Mux9~0_combout\,
	dataf => \G16|ALT_INV_Mux9~1_combout\,
	combout => \G16|Mux9~2_combout\);

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

\G18|SAIDA[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[5]~21_combout\ = (!\G5|Mux0~0_combout\ & ((\G17|RAM_rtl_0|auto_generated|ram_block1a5~portbdataout\))) # (\G5|Mux0~0_combout\ & (\G16|Mux10~2_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(1),
	datae => \G13|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(1));

\G1|pout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(1) = ( \G1|pout\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(1) ) ) ) # ( !\G1|pout\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(1) ) ) ) # ( \G1|pout\(1) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Mux10~2_combout\,
	datac => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	combout => \G18|SAIDA[5]~21_combout\);

\G7|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~0_combout\ = (\G18|SAIDA[5]~21_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(1),
	datae => \G1|ALT_INV_pout\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(1));

\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[5]~21_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux26~0_combout\);

\G14|SAIDA[5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[5]~14_combout\ = (\G7|Mux26~0_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(1),
	dataf => \G1|ALT_INV_pout\(0),
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);
=======
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux26~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[5]~14_combout\);

\G16|Prod~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~33_combout\ = ( \G16|Add12~1_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & (((\G16|Prod~32_combout\)) # (\G14|SAIDA[5]~14_combout\))) # (\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & ((\G16|Add11~1_sumout\))) # 
-- (\G14|SAIDA[5]~14_combout\ & (\G16|Prod~32_combout\)))) ) ) # ( !\G16|Add12~1_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & (!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~32_combout\))) # (\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & 
-- ((\G16|Add11~1_sumout\))) # (\G14|SAIDA[5]~14_combout\ & (\G16|Prod~32_combout\)))) ) )
>>>>>>> master

\G2|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(1));

\G12|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(2) = ( \G12|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(2) ) ) ) # ( !\G12|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(2) ) ) ) # ( \G12|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0000100101001101001010110110111100001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datab => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datac => \G16|ALT_INV_Prod~32_combout\,
	datad => \G16|ALT_INV_Add11~1_sumout\,
	datae => \G16|ALT_INV_Add12~1_sumout\,
	combout => \G16|Prod~33_combout\);

\G16|Splitter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~3_combout\ = (\G14|SAIDA[5]~14_combout\ & (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[5]~21_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(2),
	datae => \G12|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(2));

\G13|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(2) = ( \G13|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(2) ) ) ) # ( !\G13|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(2) ) ) ) # ( \G13|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA[5]~21_combout\,
	combout => \G16|Splitter~3_combout\);

\G16|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~0_combout\ = ( \G4|funct[0]~1_combout\ & ( \G4|rd[0]~0_combout\ & ( \G16|Splitter~3_combout\ ) ) ) # ( !\G4|funct[0]~1_combout\ & ( \G4|rd[0]~0_combout\ & ( \G16|Prod~33_combout\ ) ) ) # ( \G4|funct[0]~1_combout\ & ( !\G4|rd[0]~0_combout\ & ( 
-- \G16|Add1~21_sumout\ ) ) ) # ( !\G4|funct[0]~1_combout\ & ( !\G4|rd[0]~0_combout\ & ( \G16|Add0~21_sumout\ ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(2),
	datae => \G13|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(2));

\G1|pout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(2) = ( \G1|pout\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(2) ) ) ) # ( !\G1|pout\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(2) ) ) ) # ( \G1|pout\(2) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~21_sumout\,
	datab => \G16|ALT_INV_Add1~21_sumout\,
	datac => \G16|ALT_INV_Prod~33_combout\,
	datad => \G16|ALT_INV_Splitter~3_combout\,
	datae => \G4|ALT_INV_funct[0]~1_combout\,
	dataf => \G4|ALT_INV_rd[0]~0_combout\,
	combout => \G16|Mux10~0_combout\);

\G16|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~1_combout\ = ( \G18|SAIDA[5]~21_combout\ & ( (\G16|Saida_to_Dados[15]~0_combout\ & (((\Clock_Sistema~input_o\ & !\G7|Mux15~1_combout\)) # (\G14|SAIDA[5]~14_combout\))) ) ) # ( !\G18|SAIDA[5]~21_combout\ & ( (\G16|Saida_to_Dados[15]~0_combout\ & 
-- \G14|SAIDA[5]~14_combout\) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(2),
	datae => \G1|ALT_INV_pout\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(2));

\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))
=======
	lut_mask => "0001000100010001000101010001000100010001000100010001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	datab => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G7|ALT_INV_Mux15~1_combout\,
	datae => \G18|ALT_INV_SAIDA[5]~21_combout\,
	combout => \G16|Mux10~1_combout\);

\G16|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~2_combout\ = ( \G16|Mux10~0_combout\ & ( \G16|Mux10~1_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\)) # (\G16|process_0~0_combout\ & ((\G16|Add0~21_sumout\))) ) ) ) # ( !\G16|Mux10~0_combout\ & ( \G16|Mux10~1_combout\ & ( 
-- (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\)) # (\G16|process_0~0_combout\ & ((\G16|Add0~21_sumout\))) ) ) ) # ( \G16|Mux10~0_combout\ & ( !\G16|Mux10~1_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & (!\G4|funct[2]~2_combout\))) 
-- # (\G16|process_0~0_combout\ & (((\G16|Add0~21_sumout\)))) ) ) ) # ( !\G16|Mux10~0_combout\ & ( !\G16|Mux10~1_combout\ & ( (\G16|process_0~0_combout\ & \G16|Add0~21_sumout\) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(2),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);
=======
	lut_mask => "0000000000001111010000000100111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_funct[2]~2_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add0~21_sumout\,
	datae => \G16|ALT_INV_Mux10~0_combout\,
	dataf => \G16|ALT_INV_Mux10~1_combout\,
	combout => \G16|Mux10~2_combout\);

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

\G18|SAIDA[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[4]~20_combout\ = (!\G5|Mux0~0_combout\ & ((\G17|RAM_rtl_0|auto_generated|ram_block1a4~portbdataout\))) # (\G5|Mux0~0_combout\ & (\G16|Mux11~2_combout\))
>>>>>>> master

\G2|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(2));

\G12|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(3) = ( \G12|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(3) ) ) ) # ( !\G12|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(3) ) ) ) # ( \G12|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	combout => \G18|SAIDA[4]~20_combout\);

\G7|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~1_combout\ = (\G18|SAIDA[4]~20_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(3),
	datae => \G12|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(3));

\G13|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(3) = ( \G13|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(3) ) ) ) # ( !\G13|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(3) ) ) ) # ( \G13|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[4]~20_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux27~1_combout\);

\G14|SAIDA[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[4]~13_combout\ = (\G7|Mux27~1_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(3),
	datae => \G13|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(3));

\G1|pout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(3) = ( \G1|pout\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(3) ) ) ) # ( !\G1|pout\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(3) ) ) ) # ( \G1|pout\(3) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux27~1_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[4]~13_combout\);

\G16|Prod~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~27_combout\ = ( \G16|Add10~1_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & (((\G16|Prod~26_combout\)) # (\G14|SAIDA[4]~13_combout\))) # (\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & ((\G16|Add9~1_sumout\))) # (\G14|SAIDA[4]~13_combout\ 
-- & (\G16|Prod~26_combout\)))) ) ) # ( !\G16|Add10~1_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & (!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~26_combout\))) # (\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & ((\G16|Add9~1_sumout\))) # 
-- (\G14|SAIDA[4]~13_combout\ & (\G16|Prod~26_combout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101001101001010110110111100001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(3),
	datae => \G1|ALT_INV_pout\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(3));

\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))
=======
	dataa => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datab => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datac => \G16|ALT_INV_Prod~26_combout\,
	datad => \G16|ALT_INV_Add9~1_sumout\,
	datae => \G16|ALT_INV_Add10~1_sumout\,
	combout => \G16|Prod~27_combout\);

\G16|Splitter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~2_combout\ = (\G14|SAIDA[4]~13_combout\ & (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[4]~20_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(3),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);
=======
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA[4]~20_combout\,
	combout => \G16|Splitter~2_combout\);

\G16|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~0_combout\ = ( \G4|funct[0]~1_combout\ & ( \G4|rd[0]~0_combout\ & ( \G16|Splitter~2_combout\ ) ) ) # ( !\G4|funct[0]~1_combout\ & ( \G4|rd[0]~0_combout\ & ( \G16|Prod~27_combout\ ) ) ) # ( \G4|funct[0]~1_combout\ & ( !\G4|rd[0]~0_combout\ & ( 
-- \G16|Add1~17_sumout\ ) ) ) # ( !\G4|funct[0]~1_combout\ & ( !\G4|rd[0]~0_combout\ & ( \G16|Add0~17_sumout\ ) ) )
>>>>>>> master

\G2|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(3));

\G12|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(4) = ( \G12|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(4) ) ) ) # ( !\G12|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(4) ) ) ) # ( \G12|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~17_sumout\,
	datab => \G16|ALT_INV_Add1~17_sumout\,
	datac => \G16|ALT_INV_Prod~27_combout\,
	datad => \G16|ALT_INV_Splitter~2_combout\,
	datae => \G4|ALT_INV_funct[0]~1_combout\,
	dataf => \G4|ALT_INV_rd[0]~0_combout\,
	combout => \G16|Mux11~0_combout\);

\G16|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~1_combout\ = ( \G18|SAIDA[4]~20_combout\ & ( (\G16|Saida_to_Dados[15]~0_combout\ & (((\Clock_Sistema~input_o\ & !\G7|Mux15~1_combout\)) # (\G14|SAIDA[4]~13_combout\))) ) ) # ( !\G18|SAIDA[4]~20_combout\ & ( (\G16|Saida_to_Dados[15]~0_combout\ & 
-- \G14|SAIDA[4]~13_combout\) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101010001000100010001000100010001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G2|ALT_INV_saida\(4),
	datae => \G12|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(4));

\G13|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(4) = ( \G13|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(4) ) ) ) # ( !\G13|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(4) ) ) ) # ( \G13|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	datab => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G7|ALT_INV_Mux15~1_combout\,
	datae => \G18|ALT_INV_SAIDA[4]~20_combout\,
	combout => \G16|Mux11~1_combout\);

\G16|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~2_combout\ = ( \G16|Mux11~0_combout\ & ( \G16|Mux11~1_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\)) # (\G16|process_0~0_combout\ & ((\G16|Add0~17_sumout\))) ) ) ) # ( !\G16|Mux11~0_combout\ & ( \G16|Mux11~1_combout\ & ( 
-- (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\)) # (\G16|process_0~0_combout\ & ((\G16|Add0~17_sumout\))) ) ) ) # ( \G16|Mux11~0_combout\ & ( !\G16|Mux11~1_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & (!\G4|funct[2]~2_combout\))) 
-- # (\G16|process_0~0_combout\ & (((\G16|Add0~17_sumout\)))) ) ) ) # ( !\G16|Mux11~0_combout\ & ( !\G16|Mux11~1_combout\ & ( (\G16|process_0~0_combout\ & \G16|Add0~17_sumout\) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010000000100111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G12|ALT_INV_SAIDA\(4),
	datae => \G13|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(4));

\G1|pout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(4) = ( \G1|pout\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(4) ) ) ) # ( !\G1|pout\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(4) ) ) ) # ( \G1|pout\(4) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_funct[2]~2_combout\,
	datac => \G16|ALT_INV_process_0~0_combout\,
	datad => \G16|ALT_INV_Add0~17_sumout\,
	datae => \G16|ALT_INV_Mux11~0_combout\,
	dataf => \G16|ALT_INV_Mux11~1_combout\,
	combout => \G16|Mux11~2_combout\);

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

\G18|SAIDA[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[3]~19_combout\ = (!\G5|Mux0~0_combout\ & ((\G17|RAM_rtl_0|auto_generated|ram_block1a3~portbdataout\))) # (\G5|Mux0~0_combout\ & (\G16|Mux12~1_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(4),
	datae => \G1|ALT_INV_pout\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(4));

\G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~13_sumout\ = SUM(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))
-- \G2|Add0~14\ = CARRY(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))
=======
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Mux12~1_combout\,
	datac => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	combout => \G18|SAIDA[3]~19_combout\);

\G7|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux12~1_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[3]~19_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(4),
	cin => \G2|Add0~10\,
	sumout => \G2|Add0~13_sumout\,
	cout => \G2|Add0~14\);
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[3]~19_combout\,
	combout => \G7|Mux12~1_combout\);

\G16|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~2_combout\ = (!\G4|funct[0]~1_combout\ & (((\G4|rd[0]~0_combout\)) # (\G16|Add0~13_sumout\))) # (\G4|funct[0]~1_combout\ & (((\G16|Add1~13_sumout\ & !\G4|rd[0]~0_combout\))))
>>>>>>> master

\G2|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(4));

\G12|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(5) = ( \G12|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(5) ) ) ) # ( !\G12|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(5) ) ) ) # ( \G12|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0101001111110000010100111111000001010011111100000101001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~13_sumout\,
	datab => \G16|ALT_INV_Add1~13_sumout\,
	datac => \G4|ALT_INV_funct[0]~1_combout\,
	datad => \G4|ALT_INV_rd[0]~0_combout\,
	combout => \G16|Mux12~2_combout\);

\G16|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~3_combout\ = ( \G16|Add7~1_sumout\ & ( \G16|Add8~1_sumout\ & ( (\G4|rd[0]~0_combout\ & (!\G16|Prod~22_combout\ & (!\G14|SAIDA[3]~12_combout\ $ (\G14|SAIDA[2]~11_combout\)))) ) ) ) # ( !\G16|Add7~1_sumout\ & ( \G16|Add8~1_sumout\ & ( 
-- (\G4|rd[0]~0_combout\ & ((!\G14|SAIDA[3]~12_combout\ & ((!\G16|Prod~22_combout\) # (\G14|SAIDA[2]~11_combout\))) # (\G14|SAIDA[3]~12_combout\ & (\G14|SAIDA[2]~11_combout\ & !\G16|Prod~22_combout\)))) ) ) ) # ( \G16|Add7~1_sumout\ & ( !\G16|Add8~1_sumout\ 
-- & ( (\G4|rd[0]~0_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (!\G14|SAIDA[2]~11_combout\ & !\G16|Prod~22_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[2]~11_combout\) # (!\G16|Prod~22_combout\))))) ) ) ) # ( !\G16|Add7~1_sumout\ & ( 
-- !\G16|Add8~1_sumout\ & ( (\G4|rd[0]~0_combout\ & ((!\G16|Prod~22_combout\) # (!\G14|SAIDA[3]~12_combout\ $ (!\G14|SAIDA[2]~11_combout\)))) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010010001100010001000000100011000000100010000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G2|ALT_INV_saida\(5),
	datae => \G12|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(5));

\G13|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(5) = ( \G13|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(5) ) ) ) # ( !\G13|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(5) ) ) ) # ( \G13|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datad => \G16|ALT_INV_Prod~22_combout\,
	datae => \G16|ALT_INV_Add7~1_sumout\,
	dataf => \G16|ALT_INV_Add8~1_sumout\,
	combout => \G16|Mux12~3_combout\);

\G16|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~4_combout\ = ( \G18|SAIDA[3]~19_combout\ & ( \G4|rd[0]~0_combout\ & ( ((\G16|Saida_to_Dados[15]~0_combout\ & (\Clock_Sistema~input_o\ & !\G7|Mux15~1_combout\))) # (\G14|SAIDA[3]~12_combout\) ) ) ) # ( !\G18|SAIDA[3]~19_combout\ & ( 
-- \G4|rd[0]~0_combout\ & ( \G14|SAIDA[3]~12_combout\ ) ) ) # ( \G18|SAIDA[3]~19_combout\ & ( !\G4|rd[0]~0_combout\ & ( (\G16|Saida_to_Dados[15]~0_combout\ & (((\Clock_Sistema~input_o\ & !\G7|Mux15~1_combout\)) # (\G14|SAIDA[3]~12_combout\))) ) ) ) # ( 
-- !\G18|SAIDA[3]~19_combout\ & ( !\G4|rd[0]~0_combout\ & ( (\G16|Saida_to_Dados[15]~0_combout\ & \G14|SAIDA[3]~12_combout\) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101010001000100110011001100110011011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G12|ALT_INV_SAIDA\(5),
	datae => \G13|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(5));

\G1|pout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(5) = ( \G1|pout\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(5) ) ) ) # ( !\G1|pout\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(5) ) ) ) # ( \G1|pout\(5) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	datab => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G7|ALT_INV_Mux15~1_combout\,
	datae => \G18|ALT_INV_SAIDA[3]~19_combout\,
	dataf => \G4|ALT_INV_rd[0]~0_combout\,
	combout => \G16|Mux12~4_combout\);

\G16|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~0_combout\ = ( \G16|Mux12~3_combout\ & ( \G16|Mux12~4_combout\ & ( ((\G7|Mux12~1_combout\ & (!\G4|funct[2]~2_combout\ & !\G16|Mux12~2_combout\))) # (\G16|Saida_to_Dados[15]~0_combout\) ) ) ) # ( !\G16|Mux12~3_combout\ & ( \G16|Mux12~4_combout\ 
-- & ( ((!\G4|funct[2]~2_combout\ & ((\G16|Mux12~2_combout\) # (\G7|Mux12~1_combout\)))) # (\G16|Saida_to_Dados[15]~0_combout\) ) ) ) # ( !\G16|Mux12~3_combout\ & ( !\G16|Mux12~4_combout\ & ( (!\G4|funct[2]~2_combout\ & \G16|Mux12~2_combout\) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000001001111110011110100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(5),
	datae => \G1|ALT_INV_pout\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(5));

\G2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~17_sumout\ = SUM(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))
-- \G2|Add0~18\ = CARRY(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))
=======
	dataa => \G7|ALT_INV_Mux12~1_combout\,
	datab => \G4|ALT_INV_funct[2]~2_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	datae => \G16|ALT_INV_Mux12~3_combout\,
	dataf => \G16|ALT_INV_Mux12~4_combout\,
	combout => \G16|Mux12~0_combout\);

\G16|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~1_combout\ = (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & ((\G16|Mux12~0_combout\)))) # (\G16|process_0~0_combout\ & (((\G16|Add0~13_sumout\))))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(5),
	cin => \G2|Add0~14\,
	sumout => \G2|Add0~17_sumout\,
	cout => \G2|Add0~18\);
=======
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

\G18|SAIDA[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[2]~18_combout\ = (!\G5|Mux0~0_combout\ & ((\G17|RAM_rtl_0|auto_generated|ram_block1a2~portbdataout\))) # (\G5|Mux0~0_combout\ & (\G16|Mux13~2_combout\))
>>>>>>> master

\G2|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(5));

\G12|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(6) = ( \G12|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(6) ) ) ) # ( !\G12|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(6) ) ) ) # ( \G12|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Mux13~2_combout\,
	datac => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	combout => \G18|SAIDA[2]~18_combout\);

\G16|Prod~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~20_combout\ = ( \G16|Add6~1_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & (((\G16|Prod~19_combout\)) # (\G14|SAIDA[2]~11_combout\))) # (\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & ((\G16|Add5~1_sumout\))) # (\G14|SAIDA[2]~11_combout\ 
-- & (\G16|Prod~19_combout\)))) ) ) # ( !\G16|Add6~1_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & (!\G14|SAIDA[2]~11_combout\ & (\G16|Prod~19_combout\))) # (\G14|SAIDA[1]~10_combout\ & ((!\G14|SAIDA[2]~11_combout\ & ((\G16|Add5~1_sumout\))) # 
-- (\G14|SAIDA[2]~11_combout\ & (\G16|Prod~19_combout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101001101001010110110111100001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G2|ALT_INV_saida\(6),
	datae => \G12|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(6));

\G13|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(6) = ( \G13|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(6) ) ) ) # ( !\G13|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(6) ) ) ) # ( \G13|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datac => \G16|ALT_INV_Prod~19_combout\,
	datad => \G16|ALT_INV_Add5~1_sumout\,
	datae => \G16|ALT_INV_Add6~1_sumout\,
	combout => \G16|Prod~20_combout\);

\G16|Splitter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~1_combout\ = (\G14|SAIDA[2]~11_combout\ & ((!\Clock_Sistema~input_o\) # ((\G18|SAIDA[2]~18_combout\) # (\G7|Mux15~1_combout\))))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101010001010101010101000101010101010100010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G12|ALT_INV_SAIDA\(6),
	datae => \G13|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(6));

\G1|pout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(6) = ( \G1|pout\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(6) ) ) ) # ( !\G1|pout\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(6) ) ) ) # ( \G1|pout\(6) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA[2]~18_combout\,
	combout => \G16|Splitter~1_combout\);

\G16|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~0_combout\ = ( \G4|funct[0]~1_combout\ & ( \G4|rd[0]~0_combout\ & ( \G16|Splitter~1_combout\ ) ) ) # ( !\G4|funct[0]~1_combout\ & ( \G4|rd[0]~0_combout\ & ( \G16|Prod~20_combout\ ) ) ) # ( \G4|funct[0]~1_combout\ & ( !\G4|rd[0]~0_combout\ & ( 
-- \G16|Add1~9_sumout\ ) ) ) # ( !\G4|funct[0]~1_combout\ & ( !\G4|rd[0]~0_combout\ & ( \G16|Add0~9_sumout\ ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(6),
	datae => \G1|ALT_INV_pout\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(6));

\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))
=======
	dataa => \G16|ALT_INV_Add0~9_sumout\,
	datab => \G16|ALT_INV_Add1~9_sumout\,
	datac => \G16|ALT_INV_Prod~20_combout\,
	datad => \G16|ALT_INV_Splitter~1_combout\,
	datae => \G4|ALT_INV_funct[0]~1_combout\,
	dataf => \G4|ALT_INV_rd[0]~0_combout\,
	combout => \G16|Mux13~0_combout\);

\G16|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~1_combout\ = ( \G16|Mux13~0_combout\ & ( (\G4|funct[2]~2_combout\ & ((!\G16|Saida_to_Dados[15]~0_combout\) # ((!\G7|Mux13~0_combout\ & !\G14|SAIDA[2]~11_combout\)))) ) ) # ( !\G16|Mux13~0_combout\ & ( (!\G16|Saida_to_Dados[15]~0_combout\) # 
-- ((!\G7|Mux13~0_combout\ & !\G14|SAIDA[2]~11_combout\)) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
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

\G12|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(7) = ( \G12|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(7) ) ) ) # ( !\G12|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(7) ) ) ) # ( \G12|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "1111101011110000001100100011000011111010111100000011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux13~0_combout\,
	datab => \G4|ALT_INV_funct[2]~2_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	datad => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	combout => \G16|Mux13~1_combout\);

\G16|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~2_combout\ = (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & ((!\G16|Mux13~1_combout\)))) # (\G16|process_0~0_combout\ & (((\G16|Add0~9_sumout\))))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000011010001110000001101000111000000110100011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G2|ALT_INV_saida\(7),
	datae => \G12|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(7));

\G13|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(7) = ( \G13|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(7) ) ) ) # ( !\G13|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(7) ) ) ) # ( \G13|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	datac => \G16|ALT_INV_Add0~9_sumout\,
	datad => \G16|ALT_INV_Mux13~1_combout\,
	combout => \G16|Mux13~2_combout\);

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

\G18|SAIDA[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~17_combout\ = (!\G5|Mux0~0_combout\ & ((\G17|RAM_rtl_0|auto_generated|ram_block1a1~portbdataout\))) # (\G5|Mux0~0_combout\ & (\G16|Mux14~0_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(7),
	datae => \G13|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(7));

\G1|pout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(7) = ( \G1|pout\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(7) ) ) ) # ( !\G1|pout\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(7) ) ) ) # ( \G1|pout\(7) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	combout => \G18|SAIDA[1]~17_combout\);

\G7|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux14~0_combout\ = ( \G7|Mux22~0_combout\ & ( \G4|rd[0]~0_combout\ ) ) # ( !\G7|Mux22~0_combout\ & ( (!\G4|rd[0]~0_combout\ & (!\G6|SAIDA[0]~0_combout\ & (!\G6|SAIDA[1]~1_combout\ & \G18|SAIDA[1]~17_combout\))) # (\G4|rd[0]~0_combout\ & 
-- ((!\G6|SAIDA[0]~0_combout\) # ((\G18|SAIDA[1]~17_combout\) # (\G6|SAIDA[1]~1_combout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(7),
	datae => \G1|ALT_INV_pout\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(7));

\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))
=======
	lut_mask => "0100010111010101010101010101010101000101110101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G18|ALT_INV_SAIDA[1]~17_combout\,
	datae => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G7|Mux14~0_combout\);

\G7|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux14~1_combout\ = (\Clock_Sistema~input_o\ & \G7|Mux14~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
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

\G12|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(8) = ( \G12|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(8) ) ) ) # ( !\G12|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(8) ) ) ) # ( \G12|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux14~0_combout\,
	combout => \G7|Mux14~1_combout\);

\G16|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~1_combout\ = ( \G4|funct[0]~1_combout\ & ( \G14|SAIDA[0]~9_combout\ & ( (!\G4|rd[0]~0_combout\ & ((!\G16|Add1~5_sumout\))) # (\G4|rd[0]~0_combout\ & (!\G14|SAIDA[1]~10_combout\)) ) ) ) # ( !\G4|funct[0]~1_combout\ & ( \G14|SAIDA[0]~9_combout\ & 
-- ( (!\G16|Add0~5_sumout\ & !\G4|rd[0]~0_combout\) ) ) ) # ( \G4|funct[0]~1_combout\ & ( !\G14|SAIDA[0]~9_combout\ & ( (!\G4|rd[0]~0_combout\ & ((!\G16|Add1~5_sumout\))) # (\G4|rd[0]~0_combout\ & (!\G14|SAIDA[1]~10_combout\)) ) ) ) # ( 
-- !\G4|funct[0]~1_combout\ & ( !\G14|SAIDA[0]~9_combout\ & ( (!\G4|rd[0]~0_combout\ & (!\G16|Add0~5_sumout\)) # (\G4|rd[0]~0_combout\ & ((!\G14|SAIDA[1]~10_combout\))) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010111000111111000011000010001000100010001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G2|ALT_INV_saida\(8),
	datae => \G12|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(8));

\G13|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(8) = ( \G13|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(8) ) ) ) # ( !\G13|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(8) ) ) ) # ( \G13|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G16|ALT_INV_Add0~5_sumout\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datad => \G16|ALT_INV_Add1~5_sumout\,
	datae => \G4|ALT_INV_funct[0]~1_combout\,
	dataf => \G14|ALT_INV_SAIDA[0]~9_combout\,
	combout => \G16|Mux14~1_combout\);

\G16|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~2_combout\ = ( \G16|Add4~1_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & (\G16|Add3~1_sumout\)) # (\G14|SAIDA[1]~10_combout\ & (((!\G14|SAIDA[0]~9_combout\) # (\G16|Add2~5_sumout\)))) ) ) # ( !\G16|Add4~1_sumout\ & ( (!\G14|SAIDA[1]~10_combout\ & 
-- (\G16|Add3~1_sumout\)) # (\G14|SAIDA[1]~10_combout\ & (((\G14|SAIDA[0]~9_combout\ & \G16|Add2~5_sumout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111011100100111011100100010001001110111001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G12|ALT_INV_SAIDA\(8),
	datae => \G13|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(8));

\G1|pout[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(8) = ( \G1|pout\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(8) ) ) ) # ( !\G1|pout\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(8) ) ) ) # ( \G1|pout\(8) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \G16|ALT_INV_Add3~1_sumout\,
	datac => \G14|ALT_INV_SAIDA[0]~9_combout\,
	datad => \G16|ALT_INV_Add2~5_sumout\,
	datae => \G16|ALT_INV_Add4~1_sumout\,
	combout => \G16|Mux14~2_combout\);

\G16|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~3_combout\ = ( \G16|Mux14~2_combout\ & ( (!\G16|Mux14~1_combout\ & ((!\G4|rd[0]~0_combout\) # ((!\G4|funct[0]~1_combout\) # (\G7|Mux14~1_combout\)))) ) ) # ( !\G16|Mux14~2_combout\ & ( (!\G16|Mux14~1_combout\ & ((!\G4|rd[0]~0_combout\) # 
-- ((\G4|funct[0]~1_combout\ & \G7|Mux14~1_combout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(8),
	datae => \G1|ALT_INV_pout\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(8));

\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))
=======
	lut_mask => "1010101100000000111011110000000010101011000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G4|ALT_INV_funct[0]~1_combout\,
	datac => \G7|ALT_INV_Mux14~1_combout\,
	datad => \G16|ALT_INV_Mux14~1_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	combout => \G16|Mux14~3_combout\);

\G16|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~4_combout\ = (\G16|Saida_to_Dados[15]~0_combout\ & (((\Clock_Sistema~input_o\ & \G7|Mux14~0_combout\)) # (\G14|SAIDA[1]~10_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(8),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);
=======
	lut_mask => "0000000001010111000000000101011100000000010101110000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[1]~10_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	combout => \G16|Mux14~4_combout\);

\G16|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~0_combout\ = ( \G16|Mux14~3_combout\ & ( \G16|Mux14~4_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\)) # (\G16|process_0~0_combout\ & ((\G16|Add0~5_sumout\))) ) ) ) # ( !\G16|Mux14~3_combout\ & ( \G16|Mux14~4_combout\ & ( 
-- (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\)) # (\G16|process_0~0_combout\ & ((\G16|Add0~5_sumout\))) ) ) ) # ( \G16|Mux14~3_combout\ & ( !\G16|Mux14~4_combout\ & ( (!\G16|process_0~0_combout\ & (\G5|Mux0~0_combout\ & ((!\G4|funct[2]~2_combout\)))) 
-- # (\G16|process_0~0_combout\ & (((\G16|Add0~5_sumout\)))) ) ) ) # ( !\G16|Mux14~3_combout\ & ( !\G16|Mux14~4_combout\ & ( (\G16|process_0~0_combout\ & \G16|Add0~5_sumout\) ) ) )
>>>>>>> master

\G2|saida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(8));

\G12|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(9) = ( \G12|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(9) ) ) ) # ( !\G12|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(9) ) ) ) # ( \G12|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0000001100000011010001110000001101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	datac => \G16|ALT_INV_Add0~5_sumout\,
	datad => \G4|ALT_INV_funct[2]~2_combout\,
	datae => \G16|ALT_INV_Mux14~3_combout\,
	dataf => \G16|ALT_INV_Mux14~4_combout\,
	combout => \G16|Mux14~0_combout\);

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

\G18|SAIDA[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~16_combout\ = (!\G5|Mux0~0_combout\ & ((\G17|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (\G5|Mux0~0_combout\ & (\G16|Mux15~1_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(9),
	datae => \G12|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(9));

\G13|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(9) = ( \G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) ) ) ) # ( !\G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) ) ) ) # ( \G13|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Mux15~1_combout\,
	datac => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \G18|SAIDA[0]~16_combout\);

\G7|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~2_combout\ = ((!\Clock_Sistema~input_o\) # (\G7|Mux15~1_combout\)) # (\G18|SAIDA[0]~16_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(9),
	datae => \G13|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(9));

\G1|pout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(9) = ( \G1|pout\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(9) ) ) ) # ( !\G1|pout\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(9) ) ) ) # ( \G1|pout\(9) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "1101111111011111110111111101111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[0]~16_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G7|Mux15~2_combout\);

\G7|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux11~1_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[4]~20_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(9),
	datae => \G1|ALT_INV_pout\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(9));

\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[4]~20_combout\,
	combout => \G7|Mux11~1_combout\);

\G7|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux10~1_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[5]~21_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[5]~21_combout\,
	combout => \G7|Mux10~1_combout\);

\G7|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux9~1_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[6]~22_combout\))
>>>>>>> master

\G2|saida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(9));

\G12|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(10) = ( \G12|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(10) ) ) ) # ( !\G12|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(10) ) ) ) # ( \G12|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[6]~22_combout\,
	combout => \G7|Mux9~1_combout\);

\G7|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux8~1_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[7]~23_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(10),
	datae => \G12|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(10));

\G13|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(10) = ( \G13|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(10) ) ) ) # ( !\G13|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(10) ) ) ) # ( \G13|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[7]~23_combout\,
	combout => \G7|Mux8~1_combout\);

\G7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux7~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[8]~24_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(10),
	datae => \G13|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(10));

\G1|pout[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(10) = ( \G1|pout\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) ) ) # ( !\G1|pout\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) ) ) # ( \G1|pout\(10) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[8]~24_combout\,
	combout => \G7|Mux7~0_combout\);

\G7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux6~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[9]~25_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(10),
	datae => \G1|ALT_INV_pout\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(10));

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
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[9]~25_combout\,
	combout => \G7|Mux6~0_combout\);

\G7|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~0_combout\ = (\G18|SAIDA[10]~26_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

\G2|saida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(10));

\G12|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(11) = ( \G12|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(11) ) ) ) # ( !\G12|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(11) ) ) ) # ( \G12|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )
=======
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[10]~26_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux21~0_combout\);

\G14|SAIDA[10]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[10]~19_combout\ = (\G7|Mux21~0_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(11),
	datae => \G12|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(11));

\G13|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(11) = ( \G13|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(11) ) ) ) # ( !\G13|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(11) ) ) ) # ( \G13|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux21~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[10]~19_combout\);

\G16|Splitter~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~8_combout\ = (\G7|Mux5~0_combout\ & \G14|SAIDA[10]~19_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(11),
	datae => \G13|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(11));

\G1|pout[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(11) = ( \G1|pout\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(11) ) ) ) # ( !\G1|pout\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(11) ) ) ) # ( \G1|pout\(11) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux5~0_combout\,
	datab => \G14|ALT_INV_SAIDA[10]~19_combout\,
	combout => \G16|Splitter~8_combout\);

\G16|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add8~29_sumout\ = SUM(( \G16|Prod~54_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[7]~23_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add8~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(11),
	datae => \G1|ALT_INV_pout\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(11));

\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~54_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add8~26\,
	sumout => \G16|Add8~29_sumout\);

\G16|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add7~29_sumout\ = SUM(( \G16|Prod~54_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add7~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

\G2|saida[11]\ : dffeas
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~54_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add7~26\,
	sumout => \G16|Add7~29_sumout\);

\G16|Prod~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~59_combout\ = ( \G16|Add7~29_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~54_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~29_sumout\))))) # (\G14|SAIDA[2]~11_combout\ & 
-- ((!\G14|SAIDA[3]~12_combout\) # ((\G16|Prod~54_combout\)))) ) ) # ( !\G16|Add7~29_sumout\ & ( (!\G14|SAIDA[2]~11_combout\ & ((!\G14|SAIDA[3]~12_combout\ & (\G16|Prod~54_combout\)) # (\G14|SAIDA[3]~12_combout\ & ((\G16|Add8~29_sumout\))))) # 
-- (\G14|SAIDA[2]~11_combout\ & (\G14|SAIDA[3]~12_combout\ & (\G16|Prod~54_combout\))) ) )

>>>>>>> master
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(11));

\G12|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(12) = ( \G12|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(12) ) ) ) # ( !\G12|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(12) ) ) ) # ( \G12|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G14|ALT_INV_SAIDA[2]~11_combout\,
	datab => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datac => \G16|ALT_INV_Prod~54_combout\,
	datad => \G16|ALT_INV_Add8~29_sumout\,
	datae => \G16|ALT_INV_Add7~29_sumout\,
	combout => \G16|Prod~59_combout\);

\G16|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~25_sumout\ = SUM(( \G16|Prod~59_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~22\ ))
-- \G16|Add10~26\ = CARRY(( \G16|Prod~59_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~59_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add10~22\,
	sumout => \G16|Add10~25_sumout\,
	cout => \G16|Add10~26\);

\G16|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~25_sumout\ = SUM(( \G16|Prod~59_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add9~22\ ))
-- \G16|Add9~26\ = CARRY(( \G16|Prod~59_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add9~22\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G2|ALT_INV_saida\(12),
	datae => \G12|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(12));

\G13|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(12) = ( \G13|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(12) ) ) ) # ( !\G13|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(12) ) ) ) # ( \G13|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~59_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add9~22\,
	sumout => \G16|Add9~25_sumout\,
	cout => \G16|Add9~26\);

\G16|Prod~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~60_combout\ = ( \G16|Add9~25_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~59_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~25_sumout\))))) # (\G14|SAIDA[3]~12_combout\ & 
-- ((!\G14|SAIDA[4]~13_combout\) # ((\G16|Prod~59_combout\)))) ) ) # ( !\G16|Add9~25_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~59_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~25_sumout\))))) # 
-- (\G14|SAIDA[3]~12_combout\ & (\G14|SAIDA[4]~13_combout\ & (\G16|Prod~59_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datab => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datac => \G16|ALT_INV_Prod~59_combout\,
	datad => \G16|ALT_INV_Add10~25_sumout\,
	datae => \G16|ALT_INV_Add9~25_sumout\,
	combout => \G16|Prod~60_combout\);

\G16|Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~21_sumout\ = SUM(( \G16|Prod~60_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~18\ ))
-- \G16|Add12~22\ = CARRY(( \G16|Prod~60_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~18\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G12|ALT_INV_SAIDA\(12),
	datae => \G13|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(12));

\G1|pout[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(12) = ( \G1|pout\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(12) ) ) ) # ( !\G1|pout\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(12) ) ) ) # ( \G1|pout\(12) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~60_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add12~18\,
	sumout => \G16|Add12~21_sumout\,
	cout => \G16|Add12~22\);

\G16|Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~21_sumout\ = SUM(( \G16|Prod~60_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add11~18\ ))
-- \G16|Add11~22\ = CARRY(( \G16|Prod~60_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add11~18\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(12),
	datae => \G1|ALT_INV_pout\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(12));

\G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~45_sumout\ = SUM(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))
-- \G2|Add0~46\ = CARRY(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~60_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add11~18\,
	sumout => \G16|Add11~21_sumout\,
	cout => \G16|Add11~22\);

\G16|Prod~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~61_combout\ = ( \G16|Add11~21_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~60_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~21_sumout\))))) # (\G14|SAIDA[4]~13_combout\ & 
-- ((!\G14|SAIDA[5]~14_combout\) # ((\G16|Prod~60_combout\)))) ) ) # ( !\G16|Add11~21_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~60_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~21_sumout\))))) # 
-- (\G14|SAIDA[4]~13_combout\ & (\G14|SAIDA[5]~14_combout\ & (\G16|Prod~60_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G1|ALT_INV_pout\(12),
	cin => \G2|Add0~42\,
	sumout => \G2|Add0~45_sumout\,
	cout => \G2|Add0~46\);

\G2|saida[12]\ : dffeas
=======
	dataa => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datab => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datac => \G16|ALT_INV_Prod~60_combout\,
	datad => \G16|ALT_INV_Add12~21_sumout\,
	datae => \G16|ALT_INV_Add11~21_sumout\,
	combout => \G16|Prod~61_combout\);

\G16|Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~17_sumout\ = SUM(( \G16|Prod~61_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~14\ ))
-- \G16|Add14~18\ = CARRY(( \G16|Prod~61_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~14\ ))

>>>>>>> master
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(12));

\G12|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(13) = ( \G12|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(13) ) ) ) # ( !\G12|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(13) ) ) ) # ( \G12|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~61_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add14~14\,
	sumout => \G16|Add14~17_sumout\,
	cout => \G16|Add14~18\);

\G16|Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~17_sumout\ = SUM(( \G16|Prod~61_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add13~14\ ))
-- \G16|Add13~18\ = CARRY(( \G16|Prod~61_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add13~14\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(13),
	datae => \G12|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(13));

\G13|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(13) = ( \G13|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(13) ) ) ) # ( !\G13|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(13) ) ) ) # ( \G13|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~61_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add13~14\,
	sumout => \G16|Add13~17_sumout\,
	cout => \G16|Add13~18\);

\G16|Prod~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~62_combout\ = ( \G16|Add13~17_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~61_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~17_sumout\))))) # (\G14|SAIDA[5]~14_combout\ & 
-- ((!\G14|SAIDA[6]~15_combout\) # ((\G16|Prod~61_combout\)))) ) ) # ( !\G16|Add13~17_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~61_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~17_sumout\))))) # 
-- (\G14|SAIDA[5]~14_combout\ & (\G14|SAIDA[6]~15_combout\ & (\G16|Prod~61_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G12|ALT_INV_SAIDA\(13),
	datae => \G13|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(13));

\G1|pout[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(13) = ( \G1|pout\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(13) ) ) ) # ( !\G1|pout\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(13) ) ) ) # ( \G1|pout\(13) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G16|ALT_INV_Prod~61_combout\,
	datad => \G16|ALT_INV_Add14~17_sumout\,
	datae => \G16|ALT_INV_Add13~17_sumout\,
	combout => \G16|Prod~62_combout\);

\G16|Add15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~13_sumout\ = SUM(( \G16|Prod~62_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add15~10\ ))
-- \G16|Add15~14\ = CARRY(( \G16|Prod~62_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[3]~19_combout\))) ) + ( \G16|Add15~10\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(13),
	datae => \G1|ALT_INV_pout\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(13));

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
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~62_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add15~10\,
	sumout => \G16|Add15~13_sumout\,
	cout => \G16|Add15~14\);

\G16|Add16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~13_sumout\ = SUM(( \G16|Prod~62_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~10\ ))
-- \G16|Add16~14\ = CARRY(( \G16|Prod~62_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[3]~19_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~10\ ))

>>>>>>> master
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(13));

\G12|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(14) = ( \G12|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(14) ) ) ) # ( !\G12|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(14) ) ) ) # ( \G12|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~62_combout\,
	dataf => \G18|ALT_INV_SAIDA[3]~19_combout\,
	cin => \G16|Add16~10\,
	sumout => \G16|Add16~13_sumout\,
	cout => \G16|Add16~14\);

\G16|Saida_to_Dados[10]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~22_combout\ = ( \G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add16~13_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Prod~62_combout\ ) ) 
-- ) # ( \G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add15~13_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Splitter~8_combout\ ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(14),
	datae => \G12|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(14));

\G13|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(14) = ( \G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(14) ) ) ) # ( !\G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(14) ) ) ) # ( \G13|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~8_combout\,
	datab => \G16|ALT_INV_Add15~13_sumout\,
	datac => \G16|ALT_INV_Prod~62_combout\,
	datad => \G16|ALT_INV_Add16~13_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[10]~1_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[10]~2_combout\,
	combout => \G16|Saida_to_Dados[10]~22_combout\);

\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( \G14|SAIDA[10]~19_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[10]~26_combout\))) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( \G14|SAIDA[10]~19_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[10]~26_combout\))) ) + ( \G16|Add0~38\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G12|ALT_INV_SAIDA\(14),
	datae => \G13|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(14));

\G1|pout[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(14) = ( \G1|pout\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(14) ) ) ) # ( !\G1|pout\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(14) ) ) ) # ( \G1|pout\(14) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[10]~19_combout\,
	dataf => \G18|ALT_INV_SAIDA[10]~26_combout\,
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

\G16|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~41_sumout\ = SUM(( !\G14|SAIDA[10]~19_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[10]~26_combout\))) ) + ( \G16|Add1~38\ ))
-- \G16|Add1~42\ = CARRY(( !\G14|SAIDA[10]~19_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[10]~26_combout\))) ) + ( \G16|Add1~38\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(14),
	datae => \G1|ALT_INV_pout\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(14));

\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[10]~19_combout\,
	dataf => \G18|ALT_INV_SAIDA[10]~26_combout\,
	cin => \G16|Add1~38\,
	sumout => \G16|Add1~41_sumout\,
	cout => \G16|Add1~42\);

\G16|Saida_to_Dados[10]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~23_combout\ = (!\G16|Saida_to_Dados[10]~8_combout\ & (((!\G16|Add1~41_sumout\)))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G7|Mux5~0_combout\ & (!\G14|SAIDA[10]~19_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000100000111011000010000011101100001000001110110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

\G2|saida[14]\ : dffeas
=======
	dataa => \G7|ALT_INV_Mux5~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~8_combout\,
	datac => \G14|ALT_INV_SAIDA[10]~19_combout\,
	datad => \G16|ALT_INV_Add1~41_sumout\,
	combout => \G16|Saida_to_Dados[10]~23_combout\);

\G16|Saida_to_Dados[10]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~24_combout\ = (!\G16|Saida_to_Dados[10]~5_combout\ & (((\G16|Saida_to_Dados[7]~11_combout\ & !\G16|Saida_to_Dados[10]~23_combout\)) # (\G16|Add0~41_sumout\))) # (\G16|Saida_to_Dados[10]~5_combout\ & 
-- (\G16|Saida_to_Dados[7]~11_combout\ & ((!\G16|Saida_to_Dados[10]~23_combout\))))

>>>>>>> master
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100001010001110110000101000111011000010100011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(14));

\G12|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(15) = ( \G12|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(15) ) ) ) # ( !\G12|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(15) ) ) ) # ( \G12|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~5_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~11_combout\,
	datac => \G16|ALT_INV_Add0~41_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[10]~23_combout\,
	combout => \G16|Saida_to_Dados[10]~24_combout\);

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

\G18|SAIDA[10]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[10]~26_combout\ = ( \G17|RAM_rtl_0|auto_generated|ram_block1a10~portbdataout\ & ( (!\G5|Mux0~0_combout\) # (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[10]~22_combout\)) # (\G16|Saida_to_Dados[10]~24_combout\)) ) ) # ( 
-- !\G17|RAM_rtl_0|auto_generated|ram_block1a10~portbdataout\ & ( (\G5|Mux0~0_combout\ & (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[10]~22_combout\)) # (\G16|Saida_to_Dados[10]~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101101010111111111100000001010101011010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[10]~22_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[10]~24_combout\,
	datae => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portbdataout\,
	combout => \G18|SAIDA[10]~26_combout\);

\G7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux5~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[10]~26_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G2|ALT_INV_saida\(15),
	datae => \G12|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(15));

\G13|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(15) = ( \G13|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(15) ) ) ) # ( !\G13|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(15) ) ) ) # ( \G13|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[10]~26_combout\,
	combout => \G7|Mux5~0_combout\);

\G7|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~0_combout\ = (\G18|SAIDA[11]~27_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(15),
	datae => \G13|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(15));

\G1|pout[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(15) = ( \G1|pout\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(15) ) ) ) # ( !\G1|pout\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(15) ) ) ) # ( \G1|pout\(15) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[11]~27_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux20~0_combout\);

\G14|SAIDA[11]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[11]~20_combout\ = (\G7|Mux20~0_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G13|ALT_INV_SAIDA\(15),
	datae => \G1|ALT_INV_pout\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(15));

\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(15) ) + ( GND ) + ( \G2|Add0~54\ ))
=======
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[11]~20_combout\);

\G16|Splitter~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~9_combout\ = (\G7|Mux4~0_combout\ & \G14|SAIDA[11]~20_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
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

\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = (!\G1|pout\(12) & (!\G1|pout\(13) & (!\G1|pout\(14) & !\G1|pout\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(12),
	datab => \G1|ALT_INV_pout\(13),
	datac => \G1|ALT_INV_pout\(14),
	datad => \G1|ALT_INV_pout\(15),
	combout => \G4|Mux0~0_combout\);

\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( !\G1|pout\(4) & ( (!\G1|pout\(0) & (!\G1|pout\(1) & (!\G1|pout\(2) & !\G1|pout\(3)))) ) )
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux4~0_combout\,
	datab => \G14|ALT_INV_SAIDA[11]~20_combout\,
	combout => \G16|Splitter~9_combout\);

\G16|Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add10~29_sumout\ = SUM(( \G16|Prod~59_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[7]~23_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add10~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G1|ALT_INV_pout\(4),
	combout => \G4|Mux0~1_combout\);

\G4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~2_combout\ = ( !\G1|pout\(10) & ( (!\G1|pout\(6) & (!\G1|pout\(7) & (!\G1|pout\(8) & !\G1|pout\(9)))) ) )
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~59_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add10~26\,
	sumout => \G16|Add10~29_sumout\);

\G16|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add9~29_sumout\ = SUM(( \G16|Prod~59_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add9~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(6),
	datab => \G1|ALT_INV_pout\(7),
	datac => \G1|ALT_INV_pout\(8),
	datad => \G1|ALT_INV_pout\(9),
	datae => \G1|ALT_INV_pout\(10),
	combout => \G4|Mux0~2_combout\);

\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = ( \G4|Mux0~2_combout\ & ( (!\G1|pout\(5) & (!\G1|pout\(11) & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\))) ) )
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~59_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add9~26\,
	sumout => \G16|Add9~29_sumout\);

\G16|Prod~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~63_combout\ = ( \G16|Add9~29_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~59_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~29_sumout\))))) # (\G14|SAIDA[3]~12_combout\ & 
-- ((!\G14|SAIDA[4]~13_combout\) # ((\G16|Prod~59_combout\)))) ) ) # ( !\G16|Add9~29_sumout\ & ( (!\G14|SAIDA[3]~12_combout\ & ((!\G14|SAIDA[4]~13_combout\ & (\G16|Prod~59_combout\)) # (\G14|SAIDA[4]~13_combout\ & ((\G16|Add10~29_sumout\))))) # 
-- (\G14|SAIDA[3]~12_combout\ & (\G14|SAIDA[4]~13_combout\ & (\G16|Prod~59_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(5),
	datab => \G1|ALT_INV_pout\(11),
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G4|ALT_INV_Mux0~1_combout\,
	datae => \G4|ALT_INV_Mux0~2_combout\,
	combout => \G4|Mux0~3_combout\);

\G7|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~1_combout\ = (\G18|SAIDA\(0) & !\G4|Mux0~3_combout\)
=======
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[3]~12_combout\,
	datab => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datac => \G16|ALT_INV_Prod~59_combout\,
	datad => \G16|ALT_INV_Add10~29_sumout\,
	datae => \G16|ALT_INV_Add9~29_sumout\,
	combout => \G16|Prod~63_combout\);

\G16|Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~25_sumout\ = SUM(( \G16|Prod~63_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~22\ ))
-- \G16|Add12~26\ = CARRY(( \G16|Prod~63_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~22\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux31~1_combout\);

\G14|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(0) = ( \G14|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G14|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G14|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~63_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add12~22\,
	sumout => \G16|Add12~25_sumout\,
	cout => \G16|Add12~26\);

\G16|Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~25_sumout\ = SUM(( \G16|Prod~63_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add11~22\ ))
-- \G16|Add11~26\ = CARRY(( \G16|Prod~63_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add11~22\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(0));

\G16|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~66_cout\ = CARRY(( (\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\) ) + ( VCC ) + ( !VCC ))
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~63_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add11~22\,
	sumout => \G16|Add11~25_sumout\,
	cout => \G16|Add11~26\);

\G16|Prod~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~64_combout\ = ( \G16|Add11~25_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~63_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~25_sumout\))))) # (\G14|SAIDA[4]~13_combout\ & 
-- ((!\G14|SAIDA[5]~14_combout\) # ((\G16|Prod~63_combout\)))) ) ) # ( !\G16|Add11~25_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~63_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~25_sumout\))))) # 
-- (\G14|SAIDA[4]~13_combout\ & (\G14|SAIDA[5]~14_combout\ & (\G16|Prod~63_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => GND,
	cout => \G16|Add0~66_cout\);

\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G4|Mux0~3_combout\)) ) + ( !\G14|SAIDA\(0) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~66_cout\ ))
-- \G16|Add0~2\ = CARRY(( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G4|Mux0~3_combout\)) ) + ( !\G14|SAIDA\(0) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~66_cout\ ))
=======
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datab => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datac => \G16|ALT_INV_Prod~63_combout\,
	datad => \G16|ALT_INV_Add12~25_sumout\,
	datae => \G16|ALT_INV_Add11~25_sumout\,
	combout => \G16|Prod~64_combout\);

\G16|Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~21_sumout\ = SUM(( \G16|Prod~64_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~18\ ))
-- \G16|Add14~22\ = CARRY(( \G16|Prod~64_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~18\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111110100000010100000000000000001010111111111111",
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(0),
	dataf => \G14|ALT_INV_SAIDA\(0),
	cin => \G16|Add0~66_cout\,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

\G18|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(0) = ( \G18|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~1_sumout\ ) ) ) # ( !\G18|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~1_sumout\ ) ) ) # ( \G18|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~64_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add14~18\,
	sumout => \G16|Add14~21_sumout\,
	cout => \G16|Add14~22\);

\G16|Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~21_sumout\ = SUM(( \G16|Prod~64_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add13~18\ ))
-- \G16|Add13~22\ = CARRY(( \G16|Prod~64_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add13~18\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~1_sumout\,
	datae => \G18|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(0));

\G7|Reg[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][0]~0_combout\ = ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\)) # (\G18|SAIDA\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Reg[0][0]~0_combout\);

\G7|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(1))
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~64_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add13~18\,
	sumout => \G16|Add13~21_sumout\,
	cout => \G16|Add13~22\);

\G16|Prod~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~65_combout\ = ( \G16|Add13~21_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~64_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~21_sumout\))))) # (\G14|SAIDA[5]~14_combout\ & 
-- ((!\G14|SAIDA[6]~15_combout\) # ((\G16|Prod~64_combout\)))) ) ) # ( !\G16|Add13~21_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~64_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~21_sumout\))))) # 
-- (\G14|SAIDA[5]~14_combout\ & (\G14|SAIDA[6]~15_combout\ & (\G16|Prod~64_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(1),
	combout => \G7|Mux30~0_combout\);

\G14|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(1) = ( \G14|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G7|Mux30~0_combout\ ) ) ) # ( !\G14|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G7|Mux30~0_combout\ ) ) ) # ( \G14|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G16|ALT_INV_Prod~64_combout\,
	datad => \G16|ALT_INV_Add14~21_sumout\,
	datae => \G16|ALT_INV_Add13~21_sumout\,
	combout => \G16|Prod~65_combout\);

\G16|Add15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~17_sumout\ = SUM(( \G16|Prod~65_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add15~14\ ))
-- \G16|Add15~18\ = CARRY(( \G16|Prod~65_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[4]~20_combout\))) ) + ( \G16|Add15~14\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G7|ALT_INV_Mux30~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(1));

\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(1))) ) + ( !\G14|SAIDA\(1) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(1))) ) + ( !\G14|SAIDA\(1) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~2\ ))
=======
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~65_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add15~14\,
	sumout => \G16|Add15~17_sumout\,
	cout => \G16|Add15~18\);

\G16|Add16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~17_sumout\ = SUM(( \G16|Prod~65_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~14\ ))
-- \G16|Add16~18\ = CARRY(( \G16|Prod~65_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[4]~20_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~14\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(1),
	dataf => \G14|ALT_INV_SAIDA\(1),
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

\G18|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(1) = ( \G18|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~5_sumout\ ) ) ) # ( !\G18|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~5_sumout\ ) ) ) # ( \G18|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~65_combout\,
	dataf => \G18|ALT_INV_SAIDA[4]~20_combout\,
	cin => \G16|Add16~14\,
	sumout => \G16|Add16~17_sumout\,
	cout => \G16|Add16~18\);

\G16|Saida_to_Dados[11]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[11]~26_combout\ = ( \G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add16~17_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Prod~65_combout\ ) ) 
-- ) # ( \G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add15~17_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Splitter~9_combout\ ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	datad => \G16|ALT_INV_Add0~5_sumout\,
	datae => \G18|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(1));

\G7|Reg[0][1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][1]~1_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(1)))
=======
	dataa => \G16|ALT_INV_Splitter~9_combout\,
	datab => \G16|ALT_INV_Add15~17_sumout\,
	datac => \G16|ALT_INV_Prod~65_combout\,
	datad => \G16|ALT_INV_Add16~17_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[10]~1_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[10]~2_combout\,
	combout => \G16|Saida_to_Dados[11]~26_combout\);

\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( \G14|SAIDA[11]~20_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[11]~27_combout\))) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( \G14|SAIDA[11]~20_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[11]~27_combout\))) ) + ( \G16|Add0~42\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(1),
	combout => \G7|Reg[0][1]~1_combout\);

\G7|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~1_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(2))
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[11]~20_combout\,
	dataf => \G18|ALT_INV_SAIDA[11]~27_combout\,
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

\G16|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~45_sumout\ = SUM(( !\G14|SAIDA[11]~20_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[11]~27_combout\))) ) + ( \G16|Add1~42\ ))
-- \G16|Add1~46\ = CARRY(( !\G14|SAIDA[11]~20_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[11]~27_combout\))) ) + ( \G16|Add1~42\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(2),
	combout => \G7|Mux29~1_combout\);

\G14|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(2) = ( \G14|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G14|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G14|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000000000000000111111111110111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[11]~20_combout\,
	dataf => \G18|ALT_INV_SAIDA[11]~27_combout\,
	cin => \G16|Add1~42\,
	sumout => \G16|Add1~45_sumout\,
	cout => \G16|Add1~46\);

\G16|Saida_to_Dados[11]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[11]~27_combout\ = (!\G16|Saida_to_Dados[10]~8_combout\ & (((!\G16|Add1~45_sumout\)))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G7|Mux4~0_combout\ & (!\G14|SAIDA[11]~20_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(2));

\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(2)) # (\G4|Mux0~3_combout\)) ) + ( !\G14|SAIDA\(2) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(2)) # (\G4|Mux0~3_combout\)) ) + ( !\G14|SAIDA\(2) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~6\ ))
=======
	lut_mask => "1110110000100000111011000010000011101100001000001110110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux4~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~8_combout\,
	datac => \G14|ALT_INV_SAIDA[11]~20_combout\,
	datad => \G16|ALT_INV_Add1~45_sumout\,
	combout => \G16|Saida_to_Dados[11]~27_combout\);

\G16|Saida_to_Dados[11]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[11]~28_combout\ = (!\G16|Saida_to_Dados[10]~5_combout\ & (((\G16|Saida_to_Dados[7]~11_combout\ & !\G16|Saida_to_Dados[11]~27_combout\)) # (\G16|Add0~45_sumout\))) # (\G16|Saida_to_Dados[10]~5_combout\ & 
-- (\G16|Saida_to_Dados[7]~11_combout\ & ((!\G16|Saida_to_Dados[11]~27_combout\))))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(2),
	dataf => \G14|ALT_INV_SAIDA\(2),
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

\G18|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(2) = ( \G18|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~9_sumout\ ) ) ) # ( !\G18|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~9_sumout\ ) ) ) # ( \G18|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0011101100001010001110110000101000111011000010100011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~5_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~11_combout\,
	datac => \G16|ALT_INV_Add0~45_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[11]~27_combout\,
	combout => \G16|Saida_to_Dados[11]~28_combout\);

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

\G18|SAIDA[11]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[11]~27_combout\ = ( \G17|RAM_rtl_0|auto_generated|ram_block1a11~portbdataout\ & ( (!\G5|Mux0~0_combout\) # (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[11]~26_combout\)) # (\G16|Saida_to_Dados[11]~28_combout\)) ) ) # ( 
-- !\G17|RAM_rtl_0|auto_generated|ram_block1a11~portbdataout\ & ( (\G5|Mux0~0_combout\ & (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[11]~26_combout\)) # (\G16|Saida_to_Dados[11]~28_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~9_sumout\,
	datae => \G18|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(2));

\G7|Reg[0][2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][2]~2_combout\ = (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(2)) # (\G4|Mux0~3_combout\))
=======
	lut_mask => "0000000101010101101010111111111100000001010101011010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[11]~26_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[11]~28_combout\,
	datae => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portbdataout\,
	combout => \G18|SAIDA[11]~27_combout\);

\G7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux4~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[11]~27_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(2),
	combout => \G7|Reg[0][2]~2_combout\);

\G7|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~1_combout\ = (\G18|SAIDA\(3)) # (\G4|Mux0~3_combout\)
=======
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[11]~27_combout\,
	combout => \G7|Mux4~0_combout\);

\G7|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~0_combout\ = (\G18|SAIDA[12]~28_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(3),
	combout => \G7|Mux28~1_combout\);

\G14|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(3) = ( \G14|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G14|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G14|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[12]~28_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux19~0_combout\);

\G14|SAIDA[12]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[12]~21_combout\ = (\G7|Mux19~0_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(3));

\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(3))) ) + ( !\G14|SAIDA\(3) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(3))) ) + ( !\G14|SAIDA\(3) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~10\ ))
=======
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux19~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[12]~21_combout\);

\G16|Splitter~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~10_combout\ = (\G7|Mux3~0_combout\ & \G14|SAIDA[12]~21_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(3),
	dataf => \G14|ALT_INV_SAIDA\(3),
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

\G18|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(3) = ( \G18|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~13_sumout\ ) ) ) # ( !\G18|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~13_sumout\ ) ) ) # ( \G18|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux3~0_combout\,
	datab => \G14|ALT_INV_SAIDA[12]~21_combout\,
	combout => \G16|Splitter~10_combout\);

\G16|Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~29_sumout\ = SUM(( \G16|Prod~63_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[7]~23_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add12~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~13_sumout\,
	datae => \G18|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(3));

\G7|Reg[0][3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][3]~3_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(3)))
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~63_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add12~26\,
	sumout => \G16|Add12~29_sumout\);

\G16|Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add11~29_sumout\ = SUM(( \G16|Prod~63_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add11~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(3),
	combout => \G7|Reg[0][3]~3_combout\);

\G7|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(4))
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~63_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add11~26\,
	sumout => \G16|Add11~29_sumout\);

\G16|Prod~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~66_combout\ = ( \G16|Add11~29_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~63_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~29_sumout\))))) # (\G14|SAIDA[4]~13_combout\ & 
-- ((!\G14|SAIDA[5]~14_combout\) # ((\G16|Prod~63_combout\)))) ) ) # ( !\G16|Add11~29_sumout\ & ( (!\G14|SAIDA[4]~13_combout\ & ((!\G14|SAIDA[5]~14_combout\ & (\G16|Prod~63_combout\)) # (\G14|SAIDA[5]~14_combout\ & ((\G16|Add12~29_sumout\))))) # 
-- (\G14|SAIDA[4]~13_combout\ & (\G14|SAIDA[5]~14_combout\ & (\G16|Prod~63_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(4),
	combout => \G7|Mux27~0_combout\);

\G14|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(4) = ( \G14|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G7|Mux27~0_combout\ ) ) ) # ( !\G14|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G7|Mux27~0_combout\ ) ) ) # ( \G14|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[4]~13_combout\,
	datab => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datac => \G16|ALT_INV_Prod~63_combout\,
	datad => \G16|ALT_INV_Add12~29_sumout\,
	datae => \G16|ALT_INV_Add11~29_sumout\,
	combout => \G16|Prod~66_combout\);

\G16|Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~25_sumout\ = SUM(( \G16|Prod~66_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~22\ ))
-- \G16|Add14~26\ = CARRY(( \G16|Prod~66_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~22\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(4));

\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(4))) ) + ( !\G14|SAIDA\(4) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(4))) ) + ( !\G14|SAIDA\(4) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~14\ ))
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~66_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add14~22\,
	sumout => \G16|Add14~25_sumout\,
	cout => \G16|Add14~26\);

\G16|Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~25_sumout\ = SUM(( \G16|Prod~66_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add13~22\ ))
-- \G16|Add13~26\ = CARRY(( \G16|Prod~66_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add13~22\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(4),
	dataf => \G14|ALT_INV_SAIDA\(4),
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

\G18|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(4) = ( \G18|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~17_sumout\ ) ) ) # ( !\G18|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~17_sumout\ ) ) ) # ( \G18|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~66_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add13~22\,
	sumout => \G16|Add13~25_sumout\,
	cout => \G16|Add13~26\);

\G16|Prod~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~67_combout\ = ( \G16|Add13~25_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~66_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~25_sumout\))))) # (\G14|SAIDA[5]~14_combout\ & 
-- ((!\G14|SAIDA[6]~15_combout\) # ((\G16|Prod~66_combout\)))) ) ) # ( !\G16|Add13~25_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~66_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~25_sumout\))))) # 
-- (\G14|SAIDA[5]~14_combout\ & (\G14|SAIDA[6]~15_combout\ & (\G16|Prod~66_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~17_sumout\,
	datae => \G18|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(4));

\G7|Reg[0][4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][4]~4_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(4)))
=======
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G16|ALT_INV_Prod~66_combout\,
	datad => \G16|ALT_INV_Add14~25_sumout\,
	datae => \G16|ALT_INV_Add13~25_sumout\,
	combout => \G16|Prod~67_combout\);

\G16|Add15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~21_sumout\ = SUM(( \G16|Prod~67_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add15~18\ ))
-- \G16|Add15~22\ = CARRY(( \G16|Prod~67_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[5]~21_combout\))) ) + ( \G16|Add15~18\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(4),
	combout => \G7|Reg[0][4]~4_combout\);

\G7|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(5))
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~67_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add15~18\,
	sumout => \G16|Add15~21_sumout\,
	cout => \G16|Add15~22\);

\G16|Add16~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~21_sumout\ = SUM(( \G16|Prod~67_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~18\ ))
-- \G16|Add16~22\ = CARRY(( \G16|Prod~67_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[5]~21_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~18\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(5),
	combout => \G7|Mux26~0_combout\);

\G14|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(5) = ( \G14|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G7|Mux26~0_combout\ ) ) ) # ( !\G14|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G7|Mux26~0_combout\ ) ) ) # ( \G14|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~67_combout\,
	dataf => \G18|ALT_INV_SAIDA[5]~21_combout\,
	cin => \G16|Add16~18\,
	sumout => \G16|Add16~21_sumout\,
	cout => \G16|Add16~22\);

\G16|Saida_to_Dados[12]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[12]~30_combout\ = ( \G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add16~21_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Prod~67_combout\ ) ) 
-- ) # ( \G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add15~21_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Splitter~10_combout\ ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(5));

\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(5))) ) + ( !\G14|SAIDA\(5) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(5))) ) + ( !\G14|SAIDA\(5) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~18\ ))
=======
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~10_combout\,
	datab => \G16|ALT_INV_Add15~21_sumout\,
	datac => \G16|ALT_INV_Prod~67_combout\,
	datad => \G16|ALT_INV_Add16~21_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[10]~1_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[10]~2_combout\,
	combout => \G16|Saida_to_Dados[12]~30_combout\);

\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( \G14|SAIDA[12]~21_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[12]~28_combout\))) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( \G14|SAIDA[12]~21_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[12]~28_combout\))) ) + ( \G16|Add0~46\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(5),
	dataf => \G14|ALT_INV_SAIDA\(5),
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

\G18|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(5) = ( \G18|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~21_sumout\ ) ) ) # ( !\G18|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~21_sumout\ ) ) ) # ( \G18|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[12]~21_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~28_combout\,
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

\G16|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~49_sumout\ = SUM(( !\G14|SAIDA[12]~21_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[12]~28_combout\))) ) + ( \G16|Add1~46\ ))
-- \G16|Add1~50\ = CARRY(( !\G14|SAIDA[12]~21_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[12]~28_combout\))) ) + ( \G16|Add1~46\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~21_sumout\,
	datae => \G18|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(5));

\G7|Reg[0][5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][5]~5_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(5)))
=======
	lut_mask => "0000000000000000111111111110111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[12]~21_combout\,
	dataf => \G18|ALT_INV_SAIDA[12]~28_combout\,
	cin => \G16|Add1~46\,
	sumout => \G16|Add1~49_sumout\,
	cout => \G16|Add1~50\);

\G16|Saida_to_Dados[12]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[12]~31_combout\ = (!\G16|Saida_to_Dados[10]~8_combout\ & (((!\G16|Add1~49_sumout\)))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G7|Mux3~0_combout\ & (!\G14|SAIDA[12]~21_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(5),
	combout => \G7|Reg[0][5]~5_combout\);

\G7|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(6))
=======
	lut_mask => "1110110000100000111011000010000011101100001000001110110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux3~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~8_combout\,
	datac => \G14|ALT_INV_SAIDA[12]~21_combout\,
	datad => \G16|ALT_INV_Add1~49_sumout\,
	combout => \G16|Saida_to_Dados[12]~31_combout\);

\G16|Saida_to_Dados[12]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[12]~32_combout\ = (!\G16|Saida_to_Dados[10]~5_combout\ & (((\G16|Saida_to_Dados[7]~11_combout\ & !\G16|Saida_to_Dados[12]~31_combout\)) # (\G16|Add0~49_sumout\))) # (\G16|Saida_to_Dados[10]~5_combout\ & 
-- (\G16|Saida_to_Dados[7]~11_combout\ & ((!\G16|Saida_to_Dados[12]~31_combout\))))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(6),
	combout => \G7|Mux25~0_combout\);

\G14|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(6) = ( \G14|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G7|Mux25~0_combout\ ) ) ) # ( !\G14|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G7|Mux25~0_combout\ ) ) ) # ( \G14|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0011101100001010001110110000101000111011000010100011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~5_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~11_combout\,
	datac => \G16|ALT_INV_Add0~49_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[12]~31_combout\,
	combout => \G16|Saida_to_Dados[12]~32_combout\);

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

\G18|SAIDA[12]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[12]~28_combout\ = ( \G17|RAM_rtl_0|auto_generated|ram_block1a12~portbdataout\ & ( (!\G5|Mux0~0_combout\) # (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[12]~30_combout\)) # (\G16|Saida_to_Dados[12]~32_combout\)) ) ) # ( 
-- !\G17|RAM_rtl_0|auto_generated|ram_block1a12~portbdataout\ & ( (\G5|Mux0~0_combout\ & (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[12]~30_combout\)) # (\G16|Saida_to_Dados[12]~32_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(6));

\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(6))) ) + ( !\G14|SAIDA\(6) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(6))) ) + ( !\G14|SAIDA\(6) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~22\ ))
=======
	lut_mask => "0000000101010101101010111111111100000001010101011010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[12]~30_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[12]~32_combout\,
	datae => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portbdataout\,
	combout => \G18|SAIDA[12]~28_combout\);

\G7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux3~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[12]~28_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(6),
	dataf => \G14|ALT_INV_SAIDA\(6),
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

\G18|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(6) = ( \G18|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~25_sumout\ ) ) ) # ( !\G18|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~25_sumout\ ) ) ) # ( \G18|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[12]~28_combout\,
	combout => \G7|Mux3~0_combout\);

\G7|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~0_combout\ = (\G18|SAIDA[13]~29_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~25_sumout\,
	datae => \G18|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(6));

\G7|Reg[0][6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][6]~6_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(6)))
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[13]~29_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux18~0_combout\);

\G14|SAIDA[13]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[13]~22_combout\ = (\G7|Mux18~0_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(6),
	combout => \G7|Reg[0][6]~6_combout\);

\G7|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(7))
=======
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux18~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[13]~22_combout\);

\G16|Splitter~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Splitter~11_combout\ = (\G7|Mux2~0_combout\ & \G14|SAIDA[13]~22_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(7),
	combout => \G7|Mux24~0_combout\);

\G14|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(7) = ( \G14|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G7|Mux24~0_combout\ ) ) ) # ( !\G14|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G7|Mux24~0_combout\ ) ) ) # ( \G14|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux2~0_combout\,
	datab => \G14|ALT_INV_SAIDA[13]~22_combout\,
	combout => \G16|Splitter~11_combout\);

\G16|Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add14~29_sumout\ = SUM(( \G16|Prod~66_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[7]~23_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add14~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(7));

\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(7))) ) + ( !\G14|SAIDA\(7) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(7))) ) + ( !\G14|SAIDA\(7) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~26\ ))
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~66_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add14~26\,
	sumout => \G16|Add14~29_sumout\);

\G16|Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add13~29_sumout\ = SUM(( \G16|Prod~66_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add13~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(7),
	dataf => \G14|ALT_INV_SAIDA\(7),
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

\G18|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(7) = ( \G18|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~29_sumout\ ) ) ) # ( !\G18|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~29_sumout\ ) ) ) # ( \G18|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~66_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add13~26\,
	sumout => \G16|Add13~29_sumout\);

\G16|Prod~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~68_combout\ = ( \G16|Add13~29_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~66_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~29_sumout\))))) # (\G14|SAIDA[5]~14_combout\ & 
-- ((!\G14|SAIDA[6]~15_combout\) # ((\G16|Prod~66_combout\)))) ) ) # ( !\G16|Add13~29_sumout\ & ( (!\G14|SAIDA[5]~14_combout\ & ((!\G14|SAIDA[6]~15_combout\ & (\G16|Prod~66_combout\)) # (\G14|SAIDA[6]~15_combout\ & ((\G16|Add14~29_sumout\))))) # 
-- (\G14|SAIDA[5]~14_combout\ & (\G14|SAIDA[6]~15_combout\ & (\G16|Prod~66_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~29_sumout\,
	datae => \G18|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(7));

\G7|Reg[0][7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][7]~7_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(7)))
=======
	lut_mask => "0000100100101011010011010110111100001001001010110100110101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[5]~14_combout\,
	datab => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datac => \G16|ALT_INV_Prod~66_combout\,
	datad => \G16|ALT_INV_Add14~29_sumout\,
	datae => \G16|ALT_INV_Add13~29_sumout\,
	combout => \G16|Prod~68_combout\);

\G16|Add15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~25_sumout\ = SUM(( \G16|Prod~68_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add15~22\ ))
-- \G16|Add15~26\ = CARRY(( \G16|Prod~68_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[6]~22_combout\))) ) + ( \G16|Add15~22\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(7),
	combout => \G7|Reg[0][7]~7_combout\);

\G7|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(8))
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~68_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add15~22\,
	sumout => \G16|Add15~25_sumout\,
	cout => \G16|Add15~26\);

\G16|Add16~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~25_sumout\ = SUM(( \G16|Prod~68_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~22\ ))
-- \G16|Add16~26\ = CARRY(( \G16|Prod~68_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[6]~22_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~22\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(8),
	combout => \G7|Mux23~0_combout\);

\G14|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(8) = ( \G14|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G7|Mux23~0_combout\ ) ) ) # ( !\G14|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G7|Mux23~0_combout\ ) ) ) # ( \G14|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~68_combout\,
	dataf => \G18|ALT_INV_SAIDA[6]~22_combout\,
	cin => \G16|Add16~22\,
	sumout => \G16|Add16~25_sumout\,
	cout => \G16|Add16~26\);

\G16|Saida_to_Dados[13]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~34_combout\ = ( \G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add16~25_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( \G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Prod~68_combout\ ) ) 
-- ) # ( \G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Add15~25_sumout\ ) ) ) # ( !\G16|Saida_to_Dados[10]~1_combout\ & ( !\G16|Saida_to_Dados[10]~2_combout\ & ( \G16|Splitter~11_combout\ ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(8));

\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(8))) ) + ( !\G14|SAIDA\(8) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(8))) ) + ( !\G14|SAIDA\(8) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~30\ ))
=======
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Splitter~11_combout\,
	datab => \G16|ALT_INV_Add15~25_sumout\,
	datac => \G16|ALT_INV_Prod~68_combout\,
	datad => \G16|ALT_INV_Add16~25_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[10]~1_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[10]~2_combout\,
	combout => \G16|Saida_to_Dados[13]~34_combout\);

\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( \G14|SAIDA[13]~22_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[13]~29_combout\))) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( \G14|SAIDA[13]~22_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[13]~29_combout\))) ) + ( \G16|Add0~50\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(8),
	dataf => \G14|ALT_INV_SAIDA\(8),
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

\G18|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(8) = ( \G18|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~33_sumout\ ) ) ) # ( !\G18|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~33_sumout\ ) ) ) # ( \G18|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[13]~22_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~29_combout\,
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

\G16|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~53_sumout\ = SUM(( !\G14|SAIDA[13]~22_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[13]~29_combout\))) ) + ( \G16|Add1~50\ ))
-- \G16|Add1~54\ = CARRY(( !\G14|SAIDA[13]~22_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[13]~29_combout\))) ) + ( \G16|Add1~50\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~33_sumout\,
	datae => \G18|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(8));

\G7|Reg[0][8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][8]~8_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(8)))
=======
	lut_mask => "0000000000000000111111111110111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[13]~22_combout\,
	dataf => \G18|ALT_INV_SAIDA[13]~29_combout\,
	cin => \G16|Add1~50\,
	sumout => \G16|Add1~53_sumout\,
	cout => \G16|Add1~54\);

\G16|Saida_to_Dados[13]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~35_combout\ = (!\G16|Saida_to_Dados[10]~8_combout\ & (((!\G16|Add1~53_sumout\)))) # (\G16|Saida_to_Dados[10]~8_combout\ & (!\G7|Mux2~0_combout\ & (!\G14|SAIDA[13]~22_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(8),
	combout => \G7|Reg[0][8]~8_combout\);

\G7|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(9))
=======
	lut_mask => "1110110000100000111011000010000011101100001000001110110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux2~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~8_combout\,
	datac => \G14|ALT_INV_SAIDA[13]~22_combout\,
	datad => \G16|ALT_INV_Add1~53_sumout\,
	combout => \G16|Saida_to_Dados[13]~35_combout\);

\G16|Saida_to_Dados[13]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~36_combout\ = (!\G16|Saida_to_Dados[10]~5_combout\ & (((\G16|Saida_to_Dados[7]~11_combout\ & !\G16|Saida_to_Dados[13]~35_combout\)) # (\G16|Add0~53_sumout\))) # (\G16|Saida_to_Dados[10]~5_combout\ & 
-- (\G16|Saida_to_Dados[7]~11_combout\ & ((!\G16|Saida_to_Dados[13]~35_combout\))))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(9),
	combout => \G7|Mux22~0_combout\);

\G14|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(9) = ( \G14|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G7|Mux22~0_combout\ ) ) ) # ( !\G14|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G7|Mux22~0_combout\ ) ) ) # ( \G14|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0011101100001010001110110000101000111011000010100011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[10]~5_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~11_combout\,
	datac => \G16|ALT_INV_Add0~53_sumout\,
	datad => \G16|ALT_INV_Saida_to_Dados[13]~35_combout\,
	combout => \G16|Saida_to_Dados[13]~36_combout\);

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

\G18|SAIDA[13]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[13]~29_combout\ = ( \G17|RAM_rtl_0|auto_generated|ram_block1a13~portbdataout\ & ( (!\G5|Mux0~0_combout\) # (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[13]~34_combout\)) # (\G16|Saida_to_Dados[13]~36_combout\)) ) ) # ( 
-- !\G17|RAM_rtl_0|auto_generated|ram_block1a13~portbdataout\ & ( (\G5|Mux0~0_combout\ & (((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[13]~34_combout\)) # (\G16|Saida_to_Dados[13]~36_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(9));

\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(9))) ) + ( !\G14|SAIDA\(9) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(9))) ) + ( !\G14|SAIDA\(9) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~34\ ))
=======
	lut_mask => "0000000101010101101010111111111100000001010101011010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[13]~34_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[13]~36_combout\,
	datae => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portbdataout\,
	combout => \G18|SAIDA[13]~29_combout\);

\G7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux2~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[13]~29_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(9),
	dataf => \G14|ALT_INV_SAIDA\(9),
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

\G18|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(9) = ( \G18|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~37_sumout\ ) ) ) # ( !\G18|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~37_sumout\ ) ) ) # ( \G18|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[13]~29_combout\,
	combout => \G7|Mux2~0_combout\);

\G16|Saida_to_Dados[15]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~38_combout\ = (\G4|funct[0]~1_combout\ & ((\G4|Mux1~0_combout\) # (\G4|rd[0]~0_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~37_sumout\,
	datae => \G18|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(9));

\G7|Reg[0][9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][9]~9_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(9)))
=======
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G4|ALT_INV_funct[0]~1_combout\,
	datac => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G16|Saida_to_Dados[15]~38_combout\);

\G7|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~0_combout\ = (\G18|SAIDA[14]~30_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(9),
	combout => \G7|Reg[0][9]~9_combout\);

\G7|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(10))
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[14]~30_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux17~0_combout\);

\G14|SAIDA[14]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[14]~23_combout\ = (\G7|Mux17~0_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(10),
	combout => \G7|Mux21~0_combout\);

\G14|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(10) = ( \G14|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G7|Mux21~0_combout\ ) ) ) # ( !\G14|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G7|Mux21~0_combout\ ) ) ) # ( \G14|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )
=======
	dataa => \G7|ALT_INV_Mux17~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[14]~23_combout\);

\G16|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~57_sumout\ = SUM(( !\G14|SAIDA[14]~23_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[14]~30_combout\))) ) + ( \G16|Add1~54\ ))
-- \G16|Add1~58\ = CARRY(( !\G14|SAIDA[14]~23_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[14]~30_combout\))) ) + ( \G16|Add1~54\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(10));

\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(10))) ) + ( !\G14|SAIDA\(10) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(10))) ) + ( !\G14|SAIDA\(10) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~38\ ))
=======
	lut_mask => "0000000000000000111111111110111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[14]~23_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~30_combout\,
	cin => \G16|Add1~54\,
	sumout => \G16|Add1~57_sumout\,
	cout => \G16|Add1~58\);

\G16|Saida_to_Dados[15]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~39_combout\ = ( \G16|Saida_to_Dados[15]~0_combout\ & ( \G16|Saida_to_Dados[15]~4_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) ) # ( 
-- !\G16|Saida_to_Dados[15]~0_combout\ & ( \G16|Saida_to_Dados[15]~4_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) ) # ( \G16|Saida_to_Dados[15]~0_combout\ & ( 
-- !\G16|Saida_to_Dados[15]~4_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) ) # ( !\G16|Saida_to_Dados[15]~0_combout\ & ( !\G16|Saida_to_Dados[15]~4_combout\ & ( 
-- (!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\ $ (\G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\)) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "1110101111111111000000010101010100000001010101010000000101010101",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(10),
	dataf => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

\G18|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(10) = ( \G18|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~41_sumout\ ) ) ) # ( !\G18|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~41_sumout\ ) ) ) # ( \G18|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[15]~4_combout\,
	combout => \G16|Saida_to_Dados[15]~39_combout\);

\G16|Saida_to_Dados[15]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~40_combout\ = ( \G16|Saida_to_Dados[15]~0_combout\ & ( \G16|Saida_to_Dados[15]~4_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) ) # ( 
-- !\G16|Saida_to_Dados[15]~0_combout\ & ( \G16|Saida_to_Dados[15]~4_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) ) # ( \G16|Saida_to_Dados[15]~0_combout\ & ( 
-- !\G16|Saida_to_Dados[15]~4_combout\ & ( (!\Clock_Sistema~input_o\) # ((!\G4|Mux9~1_combout\ $ (\G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\)) ) ) ) # ( !\G16|Saida_to_Dados[15]~0_combout\ & ( !\G16|Saida_to_Dados[15]~4_combout\ & ( 
-- (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\))) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~41_sumout\,
	datae => \G18|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(10));

\G7|Reg[0][10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][10]~10_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(10)))
=======
	lut_mask => "0000000101010101111010111111111100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[15]~0_combout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[15]~4_combout\,
	combout => \G16|Saida_to_Dados[15]~40_combout\);

\G16|Saida_to_Dados[14]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~41_combout\ = (\G16|Saida_to_Dados[15]~39_combout\ & !\G16|Saida_to_Dados[15]~40_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(10),
	combout => \G7|Reg[0][10]~10_combout\);

\G7|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(11))
=======
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[15]~39_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~40_combout\,
	combout => \G16|Saida_to_Dados[14]~41_combout\);

\G16|Saida_to_Dados[14]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~42_combout\ = ( \G16|Saida_to_Dados[14]~41_combout\ & ( (!\G4|funct[0]~0_combout\) # ((!\G4|Mux2~0_combout\ & (!\G4|Mux0~3_combout\)) # (\G4|Mux2~0_combout\ & ((!\G4|Mux1~0_combout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
=======
	lut_mask => "0000000000000000111011111110110000000000000000001110111111101100",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
<<<<<<< HEAD
	datab => \G18|ALT_INV_SAIDA\(11),
	combout => \G7|Mux20~0_combout\);

\G14|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(11) = ( \G14|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G7|Mux20~0_combout\ ) ) ) # ( !\G14|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G7|Mux20~0_combout\ ) ) ) # ( \G14|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G4|ALT_INV_Mux2~0_combout\,
	datad => \G4|ALT_INV_Mux1~0_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[14]~41_combout\,
	combout => \G16|Saida_to_Dados[14]~42_combout\);

\G16|Saida_to_Dados[14]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~43_combout\ = ( \G16|Saida_to_Dados[14]~42_combout\ & ( (!\G16|Saida_to_Dados[15]~38_combout\ & (((\G16|Add1~57_sumout\)))) # (\G16|Saida_to_Dados[15]~38_combout\ & (\G7|Mux1~0_combout\ & (\G14|SAIDA[14]~23_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(11));

\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(11))) ) + ( !\G14|SAIDA\(11) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(11))) ) + ( !\G14|SAIDA\(11) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~42\ ))
=======
	lut_mask => "0000000000000000000000011100110100000000000000000000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux1~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~38_combout\,
	datac => \G14|ALT_INV_SAIDA[14]~23_combout\,
	datad => \G16|ALT_INV_Add1~57_sumout\,
	datae => \G16|ALT_INV_Saida_to_Dados[14]~42_combout\,
	combout => \G16|Saida_to_Dados[14]~43_combout\);

\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( \G14|SAIDA[14]~23_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[14]~30_combout\))) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( \G14|SAIDA[14]~23_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[14]~30_combout\))) ) + ( \G16|Add0~54\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(11),
	dataf => \G14|ALT_INV_SAIDA\(11),
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

\G18|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(11) = ( \G18|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~45_sumout\ ) ) ) # ( !\G18|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~45_sumout\ ) ) ) # ( \G18|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[14]~23_combout\,
	dataf => \G18|ALT_INV_SAIDA[14]~30_combout\,
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

\G16|Saida_to_Dados[14]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~44_combout\ = ( \G16|Add0~57_sumout\ & ( (!\G16|Saida_to_Dados[15]~39_combout\ & (((!\G16|Saida_to_Dados[15]~40_combout\) # (\G14|SAIDA[14]~23_combout\)) # (\G7|Mux1~0_combout\))) ) ) # ( !\G16|Add0~57_sumout\ & ( 
-- (!\G16|Saida_to_Dados[15]~39_combout\ & (\G16|Saida_to_Dados[15]~40_combout\ & ((\G14|SAIDA[14]~23_combout\) # (\G7|Mux1~0_combout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~45_sumout\,
	datae => \G18|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(11));

\G7|Reg[0][11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][11]~11_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(11)))
=======
	lut_mask => "0000010000001100110001001100110000000100000011001100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux1~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~39_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~40_combout\,
	datad => \G14|ALT_INV_SAIDA[14]~23_combout\,
	datae => \G16|ALT_INV_Add0~57_sumout\,
	combout => \G16|Saida_to_Dados[14]~44_combout\);

\G16|Add15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add15~29_sumout\ = SUM(( \G16|Prod~68_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[7]~23_combout\))) ) + ( \G16|Add15~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(11),
	combout => \G7|Reg[0][11]~11_combout\);

\G7|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(12))
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~68_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add15~26\,
	sumout => \G16|Add15~29_sumout\);

\G16|Add16~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add16~29_sumout\ = SUM(( \G16|Prod~68_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G7|Mux15~3_combout\) # ((!\G18|SAIDA[7]~23_combout\) # (\G5|Mux6~0_combout\))) ) + ( \G16|Add16~26\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(12),
	combout => \G7|Mux19~0_combout\);

\G14|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(12) = ( \G14|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G7|Mux19~0_combout\ ) ) ) # ( !\G14|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G7|Mux19~0_combout\ ) ) ) # ( \G14|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000000000000000000000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Prod~68_combout\,
	dataf => \G18|ALT_INV_SAIDA[7]~23_combout\,
	cin => \G16|Add16~26\,
	sumout => \G16|Add16~29_sumout\);

\G16|Saida_to_Dados[14]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~45_combout\ = ( \G16|Saida_to_Dados[14]~41_combout\ & ( (\G4|Mux0~3_combout\ & (\G4|funct[0]~0_combout\ & !\G4|Mux2~0_combout\)) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(12));

\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(12))) ) + ( !\G14|SAIDA\(12) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(12))) ) + ( !\G14|SAIDA\(12) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~46\ ))
=======
	lut_mask => "0000000000000000000100000001000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G4|ALT_INV_funct[0]~0_combout\,
	datac => \G4|ALT_INV_Mux2~0_combout\,
	datae => \G16|ALT_INV_Saida_to_Dados[14]~41_combout\,
	combout => \G16|Saida_to_Dados[14]~45_combout\);

\G16|Saida_to_Dados[14]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[14]~46_combout\ = ( \G16|Add16~29_sumout\ & ( \G16|Saida_to_Dados[14]~45_combout\ & ( (!\G14|SAIDA[6]~15_combout\ & (((\G16|Prod~68_combout\)) # (\G14|SAIDA[7]~16_combout\))) # (\G14|SAIDA[6]~15_combout\ & ((!\G14|SAIDA[7]~16_combout\ 
-- & ((\G16|Add15~29_sumout\))) # (\G14|SAIDA[7]~16_combout\ & (\G16|Prod~68_combout\)))) ) ) ) # ( !\G16|Add16~29_sumout\ & ( \G16|Saida_to_Dados[14]~45_combout\ & ( (!\G14|SAIDA[6]~15_combout\ & (!\G14|SAIDA[7]~16_combout\ & (\G16|Prod~68_combout\))) # 
-- (\G14|SAIDA[6]~15_combout\ & ((!\G14|SAIDA[7]~16_combout\ & ((\G16|Add15~29_sumout\))) # (\G14|SAIDA[7]~16_combout\ & (\G16|Prod~68_combout\)))) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(12),
	dataf => \G14|ALT_INV_SAIDA\(12),
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

\G18|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(12) = ( \G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~49_sumout\ ) ) ) # ( !\G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~49_sumout\ ) ) ) # ( \G18|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000000000000000000000000000000000001001010011010010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA[6]~15_combout\,
	datab => \G14|ALT_INV_SAIDA[7]~16_combout\,
	datac => \G16|ALT_INV_Prod~68_combout\,
	datad => \G16|ALT_INV_Add15~29_sumout\,
	datae => \G16|ALT_INV_Add16~29_sumout\,
	dataf => \G16|ALT_INV_Saida_to_Dados[14]~45_combout\,
	combout => \G16|Saida_to_Dados[14]~46_combout\);

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

\G18|SAIDA[14]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[14]~30_combout\ = ( \G17|RAM_rtl_0|auto_generated|ram_block1a14~portbdataout\ & ( (!\G5|Mux0~0_combout\) # (((\G16|Saida_to_Dados[14]~46_combout\) # (\G16|Saida_to_Dados[14]~44_combout\)) # (\G16|Saida_to_Dados[14]~43_combout\)) ) ) # ( 
-- !\G17|RAM_rtl_0|auto_generated|ram_block1a14~portbdataout\ & ( (\G5|Mux0~0_combout\ & (((\G16|Saida_to_Dados[14]~46_combout\) # (\G16|Saida_to_Dados[14]~44_combout\)) # (\G16|Saida_to_Dados[14]~43_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~49_sumout\,
	datae => \G18|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(12));

\G7|Reg[0][12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][12]~12_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(12)))
=======
	lut_mask => "0001010101010101101111111111111100010101010101011011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[14]~43_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[14]~44_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[14]~46_combout\,
	datae => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portbdataout\,
	combout => \G18|SAIDA[14]~30_combout\);

\G7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux1~0_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[14]~30_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(12),
	combout => \G7|Reg[0][12]~12_combout\);

\G7|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(13))
=======
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[14]~30_combout\,
	combout => \G7|Mux1~0_combout\);

\G7|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~0_combout\ = (\G18|SAIDA[15]~31_combout\ & \G7|Mux27~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(13),
	combout => \G7|Mux18~0_combout\);

\G14|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(13) = ( \G14|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G7|Mux18~0_combout\ ) ) ) # ( !\G14|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G7|Mux18~0_combout\ ) ) ) # ( \G14|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA[15]~31_combout\,
	datab => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux16~0_combout\);

\G14|SAIDA[15]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA[15]~24_combout\ = (\G7|Mux16~0_combout\ & !\G16|process_0~0_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(13));

\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(13))) ) + ( !\G14|SAIDA\(13) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(13))) ) + ( !\G14|SAIDA\(13) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~50\ ))
=======
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux16~0_combout\,
	datab => \G16|ALT_INV_process_0~0_combout\,
	combout => \G14|SAIDA[15]~24_combout\);

\G16|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~61_sumout\ = SUM(( !\G14|SAIDA[15]~24_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[15]~31_combout\))) ) + ( \G16|Add1~58\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000001111111100000000",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(13),
	dataf => \G14|ALT_INV_SAIDA\(13),
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

\G18|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(13) = ( \G18|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~53_sumout\ ) ) ) # ( !\G18|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~53_sumout\ ) ) ) # ( \G18|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[15]~24_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~31_combout\,
	cin => \G16|Add1~58\,
	sumout => \G16|Add1~61_sumout\);

\G16|Saida_to_Dados[15]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~48_combout\ = ( \G16|Add1~61_sumout\ & ( (\G16|Saida_to_Dados[14]~42_combout\ & ((!\G16|Saida_to_Dados[15]~38_combout\) # ((\G7|Mux0~1_combout\ & \G14|SAIDA[15]~24_combout\)))) ) ) # ( !\G16|Add1~61_sumout\ & ( (\G7|Mux0~1_combout\ 
-- & (\G16|Saida_to_Dados[15]~38_combout\ & (\G16|Saida_to_Dados[14]~42_combout\ & \G14|SAIDA[15]~24_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~53_sumout\,
	datae => \G18|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(13));

\G7|Reg[0][13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][13]~13_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(13)))
=======
	lut_mask => "0000000000000001000011000000110100000000000000010000110000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux0~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~38_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[14]~42_combout\,
	datad => \G14|ALT_INV_SAIDA[15]~24_combout\,
	datae => \G16|ALT_INV_Add1~61_sumout\,
	combout => \G16|Saida_to_Dados[15]~48_combout\);

\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( \G14|SAIDA[15]~24_combout\ ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~3_combout\ & (!\G5|Mux6~0_combout\ & \G18|SAIDA[15]~31_combout\))) ) + ( \G16|Add0~58\ ))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
=======
	lut_mask => "0000000000000000111111111110111100000000000000000000000011111111",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(13),
	combout => \G7|Reg[0][13]~13_combout\);

\G7|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(14))
=======
	datab => \G7|ALT_INV_Mux15~3_combout\,
	datac => \G5|ALT_INV_Mux6~0_combout\,
	datad => \G14|ALT_INV_SAIDA[15]~24_combout\,
	dataf => \G18|ALT_INV_SAIDA[15]~31_combout\,
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

\G16|Saida_to_Dados[15]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~49_combout\ = ( \G16|Add0~61_sumout\ & ( (!\G16|Saida_to_Dados[15]~39_combout\ & (((!\G16|Saida_to_Dados[15]~40_combout\) # (\G14|SAIDA[15]~24_combout\)) # (\G7|Mux0~1_combout\))) ) ) # ( !\G16|Add0~61_sumout\ & ( 
-- (!\G16|Saida_to_Dados[15]~39_combout\ & (\G16|Saida_to_Dados[15]~40_combout\ & ((\G14|SAIDA[15]~24_combout\) # (\G7|Mux0~1_combout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(14),
	combout => \G7|Mux17~0_combout\);

\G14|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(14) = ( \G14|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G7|Mux17~0_combout\ ) ) ) # ( !\G14|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G7|Mux17~0_combout\ ) ) ) # ( \G14|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0000010000001100110001001100110000000100000011001100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux0~1_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~39_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~40_combout\,
	datad => \G14|ALT_INV_SAIDA[15]~24_combout\,
	datae => \G16|ALT_INV_Add0~61_sumout\,
	combout => \G16|Saida_to_Dados[15]~49_combout\);

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

\G18|SAIDA[15]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[15]~31_combout\ = ( \G17|RAM_rtl_0|auto_generated|ram_block1a15~portbdataout\ & ( (!\G5|Mux0~0_combout\) # (((\G16|Saida_to_Dados[14]~46_combout\) # (\G16|Saida_to_Dados[15]~49_combout\)) # (\G16|Saida_to_Dados[15]~48_combout\)) ) ) # ( 
-- !\G17|RAM_rtl_0|auto_generated|ram_block1a15~portbdataout\ & ( (\G5|Mux0~0_combout\ & (((\G16|Saida_to_Dados[14]~46_combout\) # (\G16|Saida_to_Dados[15]~49_combout\)) # (\G16|Saida_to_Dados[15]~48_combout\))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(14));

\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(14))) ) + ( !\G14|SAIDA\(14) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(14))) ) + ( !\G14|SAIDA\(14) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~54\ ))
=======
	lut_mask => "0001010101010101101111111111111100010101010101011011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~48_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[15]~49_combout\,
	datad => \G16|ALT_INV_Saida_to_Dados[14]~46_combout\,
	datae => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portbdataout\,
	combout => \G18|SAIDA[15]~31_combout\);

\G7|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux0~1_combout\ = (\Clock_Sistema~input_o\ & (!\G7|Mux15~1_combout\ & \G18|SAIDA[15]~31_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(14),
	dataf => \G14|ALT_INV_SAIDA\(14),
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

\G18|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(14) = ( \G18|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~57_sumout\ ) ) ) # ( !\G18|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~57_sumout\ ) ) ) # ( \G18|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )
=======
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G18|ALT_INV_SAIDA[15]~31_combout\,
	combout => \G7|Mux0~1_combout\);

\G4|rs[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[1]~0_combout\ = ( \G4|Mux0~4_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux9~1_combout\) # ((!\G4|Mux7~1_combout\) # (\G4|Mux8~0_combout\)))) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~57_sumout\,
	datae => \G18|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(14));

\G7|Reg[0][14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][14]~14_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(14)))
=======
	lut_mask => "0000000000000000010101010100010100000000000000000101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G4|ALT_INV_Mux0~4_combout\,
	combout => \G4|rs[1]~0_combout\);

\G4|rs[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[2]~1_combout\ = ( \G4|Mux7~1_combout\ & ( \G4|Mux3~0_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux0~2_combout\ & ((!\G4|Mux9~0_combout\) # (\G4|Mux8~0_combout\)))) ) ) ) # ( !\G4|Mux7~1_combout\ & ( \G4|Mux3~0_combout\ & ( 
-- (\Clock_Sistema~input_o\ & \G4|Mux0~2_combout\) ) ) )
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
=======
	lut_mask => "0000000000000000000000000000000000000101000001010000010000000101",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(14),
	combout => \G7|Reg[0][14]~14_combout\);

\G7|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~0_combout\ = (!\G4|Mux0~3_combout\ & \G18|SAIDA\(15))
=======
	datab => \G4|ALT_INV_Mux9~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G4|ALT_INV_Mux8~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G4|ALT_INV_Mux3~0_combout\,
	combout => \G4|rs[2]~1_combout\);

\G16|Saida_to_Dados[10]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[10]~25_combout\ = ((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[10]~22_combout\)) # (\G16|Saida_to_Dados[10]~24_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G18|ALT_INV_SAIDA\(15),
	combout => \G7|Mux16~0_combout\);

\G14|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(15) = ( \G14|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G7|Mux16~0_combout\ ) ) ) # ( !\G14|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G7|Mux16~0_combout\ ) ) ) # ( \G14|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[10]~22_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[10]~24_combout\,
	combout => \G16|Saida_to_Dados[10]~25_combout\);

\G16|Saida_to_Dados[11]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[11]~29_combout\ = ((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[11]~26_combout\)) # (\G16|Saida_to_Dados[11]~28_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~0_combout\,
	datae => \G14|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(15));

\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(15))) ) + ( !\G14|SAIDA\(15) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~58\ ))
=======
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[11]~26_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[11]~28_combout\,
	combout => \G16|Saida_to_Dados[11]~29_combout\);

\G16|Saida_to_Dados[12]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[12]~33_combout\ = ((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[12]~30_combout\)) # (\G16|Saida_to_Dados[12]~32_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111011100001000100000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(15),
	dataf => \G14|ALT_INV_SAIDA\(15),
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

\G18|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(15) = ( \G18|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~61_sumout\ ) ) ) # ( !\G18|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~61_sumout\ ) ) ) # ( \G18|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )
=======
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[12]~30_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[12]~32_combout\,
	combout => \G16|Saida_to_Dados[12]~33_combout\);

\G16|Saida_to_Dados[13]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[13]~37_combout\ = ((\G16|Saida_to_Dados[7]~9_combout\ & \G16|Saida_to_Dados[13]~34_combout\)) # (\G16|Saida_to_Dados[13]~36_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~61_sumout\,
	datae => \G18|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(15));
=======
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[7]~9_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[13]~34_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[13]~36_combout\,
	combout => \G16|Saida_to_Dados[13]~37_combout\);
>>>>>>> master

\G7|Reg[0][15]~15\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \G7|Reg[0][15]~15_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(15)))
=======
-- \G16|Saida_to_Dados[14]~47_combout\ = ((\G16|Saida_to_Dados[14]~46_combout\) # (\G16|Saida_to_Dados[14]~44_combout\)) # (\G16|Saida_to_Dados[14]~43_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(15),
	combout => \G7|Reg[0][15]~15_combout\);

\G7|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~0_combout\ = (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0) & !\G4|Mux0~3_combout\))
=======
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[14]~43_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[14]~44_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[14]~46_combout\,
	combout => \G16|Saida_to_Dados[14]~47_combout\);

\G16|Saida_to_Dados[15]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Saida_to_Dados[15]~50_combout\ = ((\G16|Saida_to_Dados[14]~46_combout\) # (\G16|Saida_to_Dados[15]~49_combout\)) # (\G16|Saida_to_Dados[15]~48_combout\)
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1101110011011100110111001101110011011100110111001101110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux31~0_combout\);

\G7|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~0_combout\ = (!\Clock_Sistema~input_o\) # ((!\G4|Mux0~3_combout\ & \G18|SAIDA\(2)))
=======
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Saida_to_Dados[15]~48_combout\,
	datab => \G16|ALT_INV_Saida_to_Dados[15]~49_combout\,
	datac => \G16|ALT_INV_Saida_to_Dados[14]~46_combout\,
	combout => \G16|Saida_to_Dados[15]~50_combout\);

\G5|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux7~0_combout\ = (\G4|op[0]~0_combout\ & (!\G4|op[2]~2_combout\ & !\G4|op[1]~1_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1010111010101110101011101010111010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(2),
	combout => \G7|Mux29~0_combout\);

\G7|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~0_combout\ = (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(3)) # (\G4|Mux0~3_combout\)))
=======
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_op[0]~0_combout\,
	datab => \G4|ALT_INV_op[2]~2_combout\,
	datac => \G4|ALT_INV_op[1]~1_combout\,
	combout => \G5|Mux7~0_combout\);

\G5|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux11~0_combout\ = (\Clock_Sistema~input_o\ & (\G4|Mux9~1_combout\ & \G4|Mux7~1_combout\))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
=======
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(3),
	combout => \G7|Mux28~0_combout\);

\G4|rt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[1]~0_combout\ = (\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)
=======
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G5|Mux11~0_combout\);

\G5|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Mux9~0_combout\ = (\Clock_Sistema~input_o\ & (((\G4|Mux9~1_combout\ & \G4|Mux8~0_combout\)) # (\G4|Mux7~1_combout\)))
>>>>>>> master

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
=======
	lut_mask => "0000000101010101000000010101010100000001010101010000000101010101",
>>>>>>> master
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
<<<<<<< HEAD
	datab => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G4|rt[1]~0_combout\);
=======
	datab => \G4|ALT_INV_Mux9~1_combout\,
	datac => \G4|ALT_INV_Mux8~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G5|Mux9~0_combout\);
>>>>>>> master

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


