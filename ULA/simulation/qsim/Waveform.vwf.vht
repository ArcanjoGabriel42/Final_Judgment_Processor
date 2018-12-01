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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/30/2018 21:27:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULA_vhd_vec_tst IS
END ULA_vhd_vec_tst;
ARCHITECTURE ULA_arch OF ULA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Controle_ULA : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL EntradaA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL EntradaB : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Saida_to_Dados : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Saida_to_Mux : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ZeroULA : STD_LOGIC;
COMPONENT ULA
	PORT (
	Controle_ULA : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	EntradaA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	EntradaB : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Saida_to_Dados : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Saida_to_Mux : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ZeroULA : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ULA
	PORT MAP (
-- list connections between master ports and signals
	Controle_ULA => Controle_ULA,
	EntradaA => EntradaA,
	EntradaB => EntradaB,
	Saida_to_Dados => Saida_to_Dados,
	Saida_to_Mux => Saida_to_Mux,
	ZeroULA => ZeroULA
	);
-- Controle_ULA[6]
t_prcs_Controle_ULA_6: PROCESS
BEGIN
	Controle_ULA(6) <= '0';
WAIT;
END PROCESS t_prcs_Controle_ULA_6;
-- Controle_ULA[5]
t_prcs_Controle_ULA_5: PROCESS
BEGIN
	Controle_ULA(5) <= '0';
WAIT;
END PROCESS t_prcs_Controle_ULA_5;
-- Controle_ULA[4]
t_prcs_Controle_ULA_4: PROCESS
BEGIN
	Controle_ULA(4) <= '0';
WAIT;
END PROCESS t_prcs_Controle_ULA_4;
-- Controle_ULA[3]
t_prcs_Controle_ULA_3: PROCESS
BEGIN
	Controle_ULA(3) <= '0';
WAIT;
END PROCESS t_prcs_Controle_ULA_3;
-- Controle_ULA[2]
t_prcs_Controle_ULA_2: PROCESS
BEGIN
	Controle_ULA(2) <= '0';
WAIT;
END PROCESS t_prcs_Controle_ULA_2;
-- Controle_ULA[1]
t_prcs_Controle_ULA_1: PROCESS
BEGIN
	Controle_ULA(1) <= '1';
WAIT;
END PROCESS t_prcs_Controle_ULA_1;
-- Controle_ULA[0]
t_prcs_Controle_ULA_0: PROCESS
BEGIN
	Controle_ULA(0) <= '0';
WAIT;
END PROCESS t_prcs_Controle_ULA_0;
-- EntradaA[15]
t_prcs_EntradaA_15: PROCESS
BEGIN
	EntradaA(15) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_15;
-- EntradaA[14]
t_prcs_EntradaA_14: PROCESS
BEGIN
	EntradaA(14) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_14;
-- EntradaA[13]
t_prcs_EntradaA_13: PROCESS
BEGIN
	EntradaA(13) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_13;
-- EntradaA[12]
t_prcs_EntradaA_12: PROCESS
BEGIN
	EntradaA(12) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_12;
-- EntradaA[11]
t_prcs_EntradaA_11: PROCESS
BEGIN
	EntradaA(11) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_11;
-- EntradaA[10]
t_prcs_EntradaA_10: PROCESS
BEGIN
	EntradaA(10) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_10;
-- EntradaA[9]
t_prcs_EntradaA_9: PROCESS
BEGIN
	EntradaA(9) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_9;
-- EntradaA[8]
t_prcs_EntradaA_8: PROCESS
BEGIN
	EntradaA(8) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_8;
-- EntradaA[7]
t_prcs_EntradaA_7: PROCESS
BEGIN
	EntradaA(7) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_7;
-- EntradaA[6]
t_prcs_EntradaA_6: PROCESS
BEGIN
	EntradaA(6) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_6;
-- EntradaA[5]
t_prcs_EntradaA_5: PROCESS
BEGIN
	EntradaA(5) <= '1';
WAIT;
END PROCESS t_prcs_EntradaA_5;
-- EntradaA[4]
t_prcs_EntradaA_4: PROCESS
BEGIN
	EntradaA(4) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_4;
-- EntradaA[3]
t_prcs_EntradaA_3: PROCESS
BEGIN
	EntradaA(3) <= '1';
WAIT;
END PROCESS t_prcs_EntradaA_3;
-- EntradaA[2]
t_prcs_EntradaA_2: PROCESS
BEGIN
	EntradaA(2) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_2;
-- EntradaA[1]
t_prcs_EntradaA_1: PROCESS
BEGIN
	EntradaA(1) <= '1';
WAIT;
END PROCESS t_prcs_EntradaA_1;
-- EntradaA[0]
t_prcs_EntradaA_0: PROCESS
BEGIN
	EntradaA(0) <= '0';
WAIT;
END PROCESS t_prcs_EntradaA_0;
-- EntradaB[15]
t_prcs_EntradaB_15: PROCESS
BEGIN
	EntradaB(15) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_15;
-- EntradaB[14]
t_prcs_EntradaB_14: PROCESS
BEGIN
	EntradaB(14) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_14;
-- EntradaB[13]
t_prcs_EntradaB_13: PROCESS
BEGIN
	EntradaB(13) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_13;
-- EntradaB[12]
t_prcs_EntradaB_12: PROCESS
BEGIN
	EntradaB(12) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_12;
-- EntradaB[11]
t_prcs_EntradaB_11: PROCESS
BEGIN
	EntradaB(11) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_11;
-- EntradaB[10]
t_prcs_EntradaB_10: PROCESS
BEGIN
	EntradaB(10) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_10;
-- EntradaB[9]
t_prcs_EntradaB_9: PROCESS
BEGIN
	EntradaB(9) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_9;
-- EntradaB[8]
t_prcs_EntradaB_8: PROCESS
BEGIN
	EntradaB(8) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_8;
-- EntradaB[7]
t_prcs_EntradaB_7: PROCESS
BEGIN
	EntradaB(7) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_7;
-- EntradaB[6]
t_prcs_EntradaB_6: PROCESS
BEGIN
	EntradaB(6) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_6;
-- EntradaB[5]
t_prcs_EntradaB_5: PROCESS
BEGIN
	EntradaB(5) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_5;
-- EntradaB[4]
t_prcs_EntradaB_4: PROCESS
BEGIN
	EntradaB(4) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_4;
-- EntradaB[3]
t_prcs_EntradaB_3: PROCESS
BEGIN
	EntradaB(3) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_3;
-- EntradaB[2]
t_prcs_EntradaB_2: PROCESS
BEGIN
	EntradaB(2) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_2;
-- EntradaB[1]
t_prcs_EntradaB_1: PROCESS
BEGIN
	EntradaB(1) <= '1';
WAIT;
END PROCESS t_prcs_EntradaB_1;
-- EntradaB[0]
t_prcs_EntradaB_0: PROCESS
BEGIN
	EntradaB(0) <= '0';
WAIT;
END PROCESS t_prcs_EntradaB_0;
END ULA_arch;
