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
-- Generated on "12/03/2018 16:18:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UnidadedeControle
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UnidadedeControle_vhd_vec_tst IS
END UnidadedeControle_vhd_vec_tst;
ARCHITECTURE UnidadedeControle_arch OF UnidadedeControle_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aluSRC : STD_LOGIC;
SIGNAL branch : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL entrada : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL escrevemem : STD_LOGIC;
SIGNAL escrevereg : STD_LOGIC;
SIGNAL jump : STD_LOGIC;
SIGNAL lemem : STD_LOGIC;
SIGNAL memparareg : STD_LOGIC;
SIGNAL origalu : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL regdest : STD_LOGIC;
COMPONENT UnidadedeControle
	PORT (
	aluSRC : OUT STD_LOGIC;
	branch : OUT STD_LOGIC;
	Clock : IN STD_LOGIC;
	entrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	escrevemem : OUT STD_LOGIC;
	escrevereg : OUT STD_LOGIC;
	jump : OUT STD_LOGIC;
	lemem : OUT STD_LOGIC;
	memparareg : OUT STD_LOGIC;
	origalu : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	regdest : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UnidadedeControle
	PORT MAP (
-- list connections between master ports and signals
	aluSRC => aluSRC,
	branch => branch,
	Clock => Clock,
	entrada => entrada,
	escrevemem => escrevemem,
	escrevereg => escrevereg,
	jump => jump,
	lemem => lemem,
	memparareg => memparareg,
	origalu => origalu,
	regdest => regdest
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	Clock <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		Clock <= '0';
		WAIT FOR 20000 ps;
		Clock <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	Clock <= '0';
WAIT;
END PROCESS t_prcs_Clock;
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	entrada(3) <= '0';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	entrada(2) <= '0';
	WAIT FOR 800000 ps;
	entrada(2) <= '1';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	entrada(1) <= '0';
	WAIT FOR 400000 ps;
	entrada(1) <= '1';
	WAIT FOR 400000 ps;
	entrada(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		entrada(0) <= '0';
		WAIT FOR 200000 ps;
		entrada(0) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	entrada(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_0;
END UnidadedeControle_arch;
