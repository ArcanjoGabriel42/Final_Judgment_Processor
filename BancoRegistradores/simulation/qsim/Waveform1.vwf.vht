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
-- Generated on "11/22/2018 17:24:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BancoRegistradores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BancoRegistradores_vhd_vec_tst IS
END BancoRegistradores_vhd_vec_tst;
ARCHITECTURE BancoRegistradores_arch OF BancoRegistradores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL EscReg : STD_LOGIC;
SIGNAL LeReg1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LeReg2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RegA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RegB : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT BancoRegistradores
	PORT (
	Clock : IN STD_LOGIC;
	Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	EscReg : IN STD_LOGIC;
	LeReg1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LeReg2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RegA : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	RegB : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	RegDst : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BancoRegistradores
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Data => Data,
	EscReg => EscReg,
	LeReg1 => LeReg1,
	LeReg2 => LeReg2,
	RegA => RegA,
	RegB => RegB,
	RegDst => RegDst
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- Data[15]
t_prcs_Data_15: PROCESS
BEGIN
	Data(15) <= '0';
WAIT;
END PROCESS t_prcs_Data_15;
-- Data[14]
t_prcs_Data_14: PROCESS
BEGIN
	Data(14) <= '0';
WAIT;
END PROCESS t_prcs_Data_14;
-- Data[13]
t_prcs_Data_13: PROCESS
BEGIN
	Data(13) <= '0';
WAIT;
END PROCESS t_prcs_Data_13;
-- Data[12]
t_prcs_Data_12: PROCESS
BEGIN
	Data(12) <= '0';
WAIT;
END PROCESS t_prcs_Data_12;
-- Data[11]
t_prcs_Data_11: PROCESS
BEGIN
	Data(11) <= '0';
WAIT;
END PROCESS t_prcs_Data_11;
-- Data[10]
t_prcs_Data_10: PROCESS
BEGIN
	Data(10) <= '0';
WAIT;
END PROCESS t_prcs_Data_10;
-- Data[9]
t_prcs_Data_9: PROCESS
BEGIN
	Data(9) <= '0';
WAIT;
END PROCESS t_prcs_Data_9;
-- Data[8]
t_prcs_Data_8: PROCESS
BEGIN
	Data(8) <= '0';
WAIT;
END PROCESS t_prcs_Data_8;
-- Data[7]
t_prcs_Data_7: PROCESS
BEGIN
	Data(7) <= '0';
WAIT;
END PROCESS t_prcs_Data_7;
-- Data[6]
t_prcs_Data_6: PROCESS
BEGIN
	Data(6) <= '0';
WAIT;
END PROCESS t_prcs_Data_6;
-- Data[5]
t_prcs_Data_5: PROCESS
BEGIN
	Data(5) <= '0';
WAIT;
END PROCESS t_prcs_Data_5;
-- Data[4]
t_prcs_Data_4: PROCESS
BEGIN
	Data(4) <= '0';
WAIT;
END PROCESS t_prcs_Data_4;
-- Data[3]
t_prcs_Data_3: PROCESS
BEGIN
	Data(3) <= '0';
WAIT;
END PROCESS t_prcs_Data_3;
-- Data[2]
t_prcs_Data_2: PROCESS
BEGIN
	Data(2) <= '0';
WAIT;
END PROCESS t_prcs_Data_2;
-- Data[1]
t_prcs_Data_1: PROCESS
BEGIN
	Data(1) <= '0';
WAIT;
END PROCESS t_prcs_Data_1;
-- Data[0]
t_prcs_Data_0: PROCESS
BEGIN
	Data(0) <= '0';
WAIT;
END PROCESS t_prcs_Data_0;

-- EscReg
t_prcs_EscReg: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		EscReg <= '0';
		WAIT FOR 30000 ps;
		EscReg <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	EscReg <= '0';
	WAIT FOR 30000 ps;
	EscReg <= '1';
WAIT;
END PROCESS t_prcs_EscReg;
-- LeReg1[3]
t_prcs_LeReg1_3: PROCESS
BEGIN
	LeReg1(3) <= '0';
WAIT;
END PROCESS t_prcs_LeReg1_3;
-- LeReg1[2]
t_prcs_LeReg1_2: PROCESS
BEGIN
	LeReg1(2) <= '0';
WAIT;
END PROCESS t_prcs_LeReg1_2;
-- LeReg1[1]
t_prcs_LeReg1_1: PROCESS
BEGIN
	LeReg1(1) <= '0';
WAIT;
END PROCESS t_prcs_LeReg1_1;
-- LeReg1[0]
t_prcs_LeReg1_0: PROCESS
BEGIN
	LeReg1(0) <= '0';
WAIT;
END PROCESS t_prcs_LeReg1_0;
-- LeReg2[3]
t_prcs_LeReg2_3: PROCESS
BEGIN
	LeReg2(3) <= '0';
WAIT;
END PROCESS t_prcs_LeReg2_3;
-- LeReg2[2]
t_prcs_LeReg2_2: PROCESS
BEGIN
	LeReg2(2) <= '0';
WAIT;
END PROCESS t_prcs_LeReg2_2;
-- LeReg2[1]
t_prcs_LeReg2_1: PROCESS
BEGIN
	LeReg2(1) <= '0';
WAIT;
END PROCESS t_prcs_LeReg2_1;
-- LeReg2[0]
t_prcs_LeReg2_0: PROCESS
BEGIN
	LeReg2(0) <= '0';
WAIT;
END PROCESS t_prcs_LeReg2_0;
-- RegDst[3]
t_prcs_RegDst_3: PROCESS
BEGIN
	RegDst(3) <= '0';
WAIT;
END PROCESS t_prcs_RegDst_3;
-- RegDst[2]
t_prcs_RegDst_2: PROCESS
BEGIN
	RegDst(2) <= '0';
WAIT;
END PROCESS t_prcs_RegDst_2;
-- RegDst[1]
t_prcs_RegDst_1: PROCESS
BEGIN
	RegDst(1) <= '0';
WAIT;
END PROCESS t_prcs_RegDst_1;
-- RegDst[0]
t_prcs_RegDst_0: PROCESS
BEGIN
	RegDst(0) <= '0';
WAIT;
END PROCESS t_prcs_RegDst_0;
END BancoRegistradores_arch;
