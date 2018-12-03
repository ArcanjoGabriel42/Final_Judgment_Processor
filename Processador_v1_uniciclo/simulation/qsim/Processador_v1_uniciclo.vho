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

-- DATE "12/03/2018 16:18:43"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UnidadedeControle IS
    PORT (
	Clock : IN std_logic;
	entrada : IN std_logic_vector(3 DOWNTO 0);
	regdest : OUT std_logic;
	origalu : OUT std_logic_vector(3 DOWNTO 0);
	memparareg : OUT std_logic;
	escrevereg : OUT std_logic;
	lemem : OUT std_logic;
	escrevemem : OUT std_logic;
	jump : OUT std_logic;
	aluSRC : OUT std_logic;
	branch : OUT std_logic
	);
END UnidadedeControle;

ARCHITECTURE structure OF UnidadedeControle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_regdest : std_logic;
SIGNAL ww_origalu : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_memparareg : std_logic;
SIGNAL ww_escrevereg : std_logic;
SIGNAL ww_lemem : std_logic;
SIGNAL ww_escrevemem : std_logic;
SIGNAL ww_jump : std_logic;
SIGNAL ww_aluSRC : std_logic;
SIGNAL ww_branch : std_logic;
SIGNAL \regdest~output_o\ : std_logic;
SIGNAL \origalu[0]~output_o\ : std_logic;
SIGNAL \origalu[1]~output_o\ : std_logic;
SIGNAL \origalu[2]~output_o\ : std_logic;
SIGNAL \origalu[3]~output_o\ : std_logic;
SIGNAL \memparareg~output_o\ : std_logic;
SIGNAL \escrevereg~output_o\ : std_logic;
SIGNAL \lemem~output_o\ : std_logic;
SIGNAL \escrevemem~output_o\ : std_logic;
SIGNAL \jump~output_o\ : std_logic;
SIGNAL \aluSRC~output_o\ : std_logic;
SIGNAL \branch~output_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \regdest~0_combout\ : std_logic;
SIGNAL \regdest$latch~combout\ : std_logic;
SIGNAL \origalu[0]~0_combout\ : std_logic;
SIGNAL \origalu[0]$latch~combout\ : std_logic;
SIGNAL \origalu[1]~1_combout\ : std_logic;
SIGNAL \origalu[1]$latch~combout\ : std_logic;
SIGNAL \origalu[2]$latch~combout\ : std_logic;
SIGNAL \escrevereg~0_combout\ : std_logic;
SIGNAL \escrevereg$latch~combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \lemem$latch~combout\ : std_logic;
SIGNAL \escrevemem~0_combout\ : std_logic;
SIGNAL \escrevemem$latch~combout\ : std_logic;
SIGNAL \jump~0_combout\ : std_logic;
SIGNAL \jump$latch~combout\ : std_logic;
SIGNAL \aluSRC~0_combout\ : std_logic;
SIGNAL \aluSRC$latch~combout\ : std_logic;
SIGNAL \branch~0_combout\ : std_logic;
SIGNAL \branch$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Clock~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_branch$latch~combout\ : std_logic;
SIGNAL \ALT_INV_aluSRC$latch~combout\ : std_logic;
SIGNAL \ALT_INV_jump$latch~combout\ : std_logic;
SIGNAL \ALT_INV_escrevemem$latch~combout\ : std_logic;
SIGNAL \ALT_INV_lemem$latch~combout\ : std_logic;
SIGNAL \ALT_INV_escrevereg$latch~combout\ : std_logic;
SIGNAL \ALT_INV_origalu[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_origalu[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_origalu[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_regdest$latch~combout\ : std_logic;
SIGNAL \ALT_INV_branch~0_combout\ : std_logic;
SIGNAL \ALT_INV_aluSRC~0_combout\ : std_logic;
SIGNAL \ALT_INV_jump~0_combout\ : std_logic;
SIGNAL \ALT_INV_origalu[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_origalu[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_escrevereg~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_escrevemem~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_regdest~0_combout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_entrada <= entrada;
regdest <= ww_regdest;
origalu <= ww_origalu;
memparareg <= ww_memparareg;
escrevereg <= ww_escrevereg;
lemem <= ww_lemem;
escrevemem <= ww_escrevemem;
jump <= ww_jump;
aluSRC <= ww_aluSRC;
branch <= ww_branch;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Clock~input_o\ <= NOT \Clock~input_o\;
\ALT_INV_entrada[3]~input_o\ <= NOT \entrada[3]~input_o\;
\ALT_INV_entrada[2]~input_o\ <= NOT \entrada[2]~input_o\;
\ALT_INV_entrada[0]~input_o\ <= NOT \entrada[0]~input_o\;
\ALT_INV_entrada[1]~input_o\ <= NOT \entrada[1]~input_o\;
\ALT_INV_branch$latch~combout\ <= NOT \branch$latch~combout\;
\ALT_INV_aluSRC$latch~combout\ <= NOT \aluSRC$latch~combout\;
\ALT_INV_jump$latch~combout\ <= NOT \jump$latch~combout\;
\ALT_INV_escrevemem$latch~combout\ <= NOT \escrevemem$latch~combout\;
\ALT_INV_lemem$latch~combout\ <= NOT \lemem$latch~combout\;
\ALT_INV_escrevereg$latch~combout\ <= NOT \escrevereg$latch~combout\;
\ALT_INV_origalu[2]$latch~combout\ <= NOT \origalu[2]$latch~combout\;
\ALT_INV_origalu[1]$latch~combout\ <= NOT \origalu[1]$latch~combout\;
\ALT_INV_origalu[0]$latch~combout\ <= NOT \origalu[0]$latch~combout\;
\ALT_INV_regdest$latch~combout\ <= NOT \regdest$latch~combout\;
\ALT_INV_branch~0_combout\ <= NOT \branch~0_combout\;
\ALT_INV_aluSRC~0_combout\ <= NOT \aluSRC~0_combout\;
\ALT_INV_jump~0_combout\ <= NOT \jump~0_combout\;
\ALT_INV_origalu[0]~0_combout\ <= NOT \origalu[0]~0_combout\;
\ALT_INV_origalu[1]~1_combout\ <= NOT \origalu[1]~1_combout\;
\ALT_INV_escrevereg~0_combout\ <= NOT \escrevereg~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_escrevemem~0_combout\ <= NOT \escrevemem~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_regdest~0_combout\ <= NOT \regdest~0_combout\;

\regdest~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regdest$latch~combout\,
	devoe => ww_devoe,
	o => \regdest~output_o\);

\origalu[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \origalu[0]$latch~combout\,
	devoe => ww_devoe,
	o => \origalu[0]~output_o\);

\origalu[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \origalu[1]$latch~combout\,
	devoe => ww_devoe,
	o => \origalu[1]~output_o\);

\origalu[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \origalu[2]$latch~combout\,
	devoe => ww_devoe,
	o => \origalu[2]~output_o\);

\origalu[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \origalu[3]~output_o\);

\memparareg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regdest$latch~combout\,
	devoe => ww_devoe,
	o => \memparareg~output_o\);

\escrevereg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \escrevereg$latch~combout\,
	devoe => ww_devoe,
	o => \escrevereg~output_o\);

\lemem~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lemem$latch~combout\,
	devoe => ww_devoe,
	o => \lemem~output_o\);

\escrevemem~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \escrevemem$latch~combout\,
	devoe => ww_devoe,
	o => \escrevemem~output_o\);

\jump~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jump$latch~combout\,
	devoe => ww_devoe,
	o => \jump~output_o\);

\aluSRC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aluSRC$latch~combout\,
	devoe => ww_devoe,
	o => \aluSRC~output_o\);

\branch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \branch$latch~combout\,
	devoe => ww_devoe,
	o => \branch~output_o\);

\entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

\entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

\entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

\entrada[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((\entrada[3]~input_o\) # (\entrada[2]~input_o\)) # (\entrada[0]~input_o\)) # (\entrada[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	combout => \Equal0~0_combout\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\regdest~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regdest~0_combout\ = (!\entrada[3]~input_o\ & (\Clock~input_o\ & ((!\entrada[1]~input_o\) # (!\entrada[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[2]~input_o\,
	datac => \ALT_INV_entrada[3]~input_o\,
	datad => \ALT_INV_Clock~input_o\,
	combout => \regdest~0_combout\);

\regdest$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \regdest$latch~combout\ = ( \regdest$latch~combout\ & ( \regdest~0_combout\ & ( !\Equal0~0_combout\ ) ) ) # ( !\regdest$latch~combout\ & ( \regdest~0_combout\ & ( !\Equal0~0_combout\ ) ) ) # ( \regdest$latch~combout\ & ( !\regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_regdest$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \regdest$latch~combout\);

\origalu[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \origalu[0]~0_combout\ = (\entrada[0]~input_o\ & ((!\entrada[1]~input_o\) # (!\entrada[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	combout => \origalu[0]~0_combout\);

\origalu[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \origalu[0]$latch~combout\ = ( \origalu[0]$latch~combout\ & ( \regdest~0_combout\ & ( \origalu[0]~0_combout\ ) ) ) # ( !\origalu[0]$latch~combout\ & ( \regdest~0_combout\ & ( \origalu[0]~0_combout\ ) ) ) # ( \origalu[0]$latch~combout\ & ( 
-- !\regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_origalu[0]~0_combout\,
	datae => \ALT_INV_origalu[0]$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \origalu[0]$latch~combout\);

\origalu[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \origalu[1]~1_combout\ = (\entrada[1]~input_o\ & !\entrada[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[2]~input_o\,
	combout => \origalu[1]~1_combout\);

\origalu[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \origalu[1]$latch~combout\ = ( \origalu[1]$latch~combout\ & ( \regdest~0_combout\ & ( \origalu[1]~1_combout\ ) ) ) # ( !\origalu[1]$latch~combout\ & ( \regdest~0_combout\ & ( \origalu[1]~1_combout\ ) ) ) # ( \origalu[1]$latch~combout\ & ( 
-- !\regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_origalu[1]~1_combout\,
	datae => \ALT_INV_origalu[1]$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \origalu[1]$latch~combout\);

\origalu[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \origalu[2]$latch~combout\ = ( \origalu[2]$latch~combout\ & ( \regdest~0_combout\ & ( \entrada[2]~input_o\ ) ) ) # ( !\origalu[2]$latch~combout\ & ( \regdest~0_combout\ & ( \entrada[2]~input_o\ ) ) ) # ( \origalu[2]$latch~combout\ & ( !\regdest~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[2]~input_o\,
	datae => \ALT_INV_origalu[2]$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \origalu[2]$latch~combout\);

\escrevereg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \escrevereg~0_combout\ = ((\entrada[3]~input_o\) # (\entrada[2]~input_o\)) # (\entrada[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	combout => \escrevereg~0_combout\);

\escrevereg$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \escrevereg$latch~combout\ = ( \escrevereg$latch~combout\ & ( \regdest~0_combout\ & ( !\escrevereg~0_combout\ ) ) ) # ( !\escrevereg$latch~combout\ & ( \regdest~0_combout\ & ( !\escrevereg~0_combout\ ) ) ) # ( \escrevereg$latch~combout\ & ( 
-- !\regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_escrevereg~0_combout\,
	datae => \ALT_INV_escrevereg$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \escrevereg$latch~combout\);

\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\entrada[1]~input_o\ & (\entrada[0]~input_o\ & (!\entrada[2]~input_o\ & !\entrada[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	combout => \Equal1~0_combout\);

\lemem$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \lemem$latch~combout\ = ( \lemem$latch~combout\ & ( \regdest~0_combout\ & ( \Equal1~0_combout\ ) ) ) # ( !\lemem$latch~combout\ & ( \regdest~0_combout\ & ( \Equal1~0_combout\ ) ) ) # ( \lemem$latch~combout\ & ( !\regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_lemem$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \lemem$latch~combout\);

\escrevemem~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \escrevemem~0_combout\ = (!\entrada[1]~input_o\) # (((\entrada[3]~input_o\) # (\entrada[2]~input_o\)) # (\entrada[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111110111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	combout => \escrevemem~0_combout\);

\escrevemem$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \escrevemem$latch~combout\ = ( \escrevemem$latch~combout\ & ( \regdest~0_combout\ & ( !\escrevemem~0_combout\ ) ) ) # ( !\escrevemem$latch~combout\ & ( \regdest~0_combout\ & ( !\escrevemem~0_combout\ ) ) ) # ( \escrevemem$latch~combout\ & ( 
-- !\regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_escrevemem~0_combout\,
	datae => \ALT_INV_escrevemem$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \escrevemem$latch~combout\);

\jump~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \jump~0_combout\ = (!\entrada[1]~input_o\ & (\entrada[0]~input_o\ & \entrada[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	combout => \jump~0_combout\);

\jump$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \jump$latch~combout\ = ( \jump$latch~combout\ & ( \regdest~0_combout\ & ( \jump~0_combout\ ) ) ) # ( !\jump$latch~combout\ & ( \regdest~0_combout\ & ( \jump~0_combout\ ) ) ) # ( \jump$latch~combout\ & ( !\regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_jump~0_combout\,
	datae => \ALT_INV_jump$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \jump$latch~combout\);

\aluSRC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \aluSRC~0_combout\ = (!\entrada[2]~input_o\ & (!\entrada[3]~input_o\ & (!\entrada[1]~input_o\ $ (!\entrada[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	combout => \aluSRC~0_combout\);

\aluSRC$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \aluSRC$latch~combout\ = ( \aluSRC$latch~combout\ & ( \regdest~0_combout\ & ( \aluSRC~0_combout\ ) ) ) # ( !\aluSRC$latch~combout\ & ( \regdest~0_combout\ & ( \aluSRC~0_combout\ ) ) ) # ( \aluSRC$latch~combout\ & ( !\regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_aluSRC~0_combout\,
	datae => \ALT_INV_aluSRC$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \aluSRC$latch~combout\);

\branch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \branch~0_combout\ = (((\entrada[1]~input_o\ & \entrada[0]~input_o\)) # (\entrada[3]~input_o\)) # (\entrada[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	combout => \branch~0_combout\);

\branch$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \branch$latch~combout\ = ( \branch$latch~combout\ & ( \regdest~0_combout\ & ( \branch~0_combout\ ) ) ) # ( !\branch$latch~combout\ & ( \regdest~0_combout\ & ( \branch~0_combout\ ) ) ) # ( \branch$latch~combout\ & ( !\regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_branch~0_combout\,
	datae => \ALT_INV_branch$latch~combout\,
	dataf => \ALT_INV_regdest~0_combout\,
	combout => \branch$latch~combout\);

ww_regdest <= \regdest~output_o\;

ww_origalu(0) <= \origalu[0]~output_o\;

ww_origalu(1) <= \origalu[1]~output_o\;

ww_origalu(2) <= \origalu[2]~output_o\;

ww_origalu(3) <= \origalu[3]~output_o\;

ww_memparareg <= \memparareg~output_o\;

ww_escrevereg <= \escrevereg~output_o\;

ww_lemem <= \lemem~output_o\;

ww_escrevemem <= \escrevemem~output_o\;

ww_jump <= \jump~output_o\;

ww_aluSRC <= \aluSRC~output_o\;

ww_branch <= \branch~output_o\;
END structure;


