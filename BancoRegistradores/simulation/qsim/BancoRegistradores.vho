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

-- DATE "11/22/2018 17:39:33"

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

ENTITY 	BancoRegistradores IS
    PORT (
	Clock : IN std_logic;
	EscReg : IN std_logic;
	RegA : OUT std_logic_vector(15 DOWNTO 0);
	RegB : OUT std_logic_vector(15 DOWNTO 0);
	Data : IN std_logic_vector(15 DOWNTO 0);
	RegDst : IN std_logic_vector(3 DOWNTO 0);
	LeReg1 : IN std_logic_vector(3 DOWNTO 0);
	LeReg2 : IN std_logic_vector(3 DOWNTO 0)
	);
END BancoRegistradores;

ARCHITECTURE structure OF BancoRegistradores IS
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
SIGNAL ww_EscReg : std_logic;
SIGNAL ww_RegA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RegB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RegDst : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LeReg1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LeReg2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegA[0]~output_o\ : std_logic;
SIGNAL \RegA[1]~output_o\ : std_logic;
SIGNAL \RegA[2]~output_o\ : std_logic;
SIGNAL \RegA[3]~output_o\ : std_logic;
SIGNAL \RegA[4]~output_o\ : std_logic;
SIGNAL \RegA[5]~output_o\ : std_logic;
SIGNAL \RegA[6]~output_o\ : std_logic;
SIGNAL \RegA[7]~output_o\ : std_logic;
SIGNAL \RegA[8]~output_o\ : std_logic;
SIGNAL \RegA[9]~output_o\ : std_logic;
SIGNAL \RegA[10]~output_o\ : std_logic;
SIGNAL \RegA[11]~output_o\ : std_logic;
SIGNAL \RegA[12]~output_o\ : std_logic;
SIGNAL \RegA[13]~output_o\ : std_logic;
SIGNAL \RegA[14]~output_o\ : std_logic;
SIGNAL \RegA[15]~output_o\ : std_logic;
SIGNAL \RegB[0]~output_o\ : std_logic;
SIGNAL \RegB[1]~output_o\ : std_logic;
SIGNAL \RegB[2]~output_o\ : std_logic;
SIGNAL \RegB[3]~output_o\ : std_logic;
SIGNAL \RegB[4]~output_o\ : std_logic;
SIGNAL \RegB[5]~output_o\ : std_logic;
SIGNAL \RegB[6]~output_o\ : std_logic;
SIGNAL \RegB[7]~output_o\ : std_logic;
SIGNAL \RegB[8]~output_o\ : std_logic;
SIGNAL \RegB[9]~output_o\ : std_logic;
SIGNAL \RegB[10]~output_o\ : std_logic;
SIGNAL \RegB[11]~output_o\ : std_logic;
SIGNAL \RegB[12]~output_o\ : std_logic;
SIGNAL \RegB[13]~output_o\ : std_logic;
SIGNAL \RegB[14]~output_o\ : std_logic;
SIGNAL \RegB[15]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \RegDst[1]~input_o\ : std_logic;
SIGNAL \RegDst[2]~input_o\ : std_logic;
SIGNAL \RegDst[3]~input_o\ : std_logic;
SIGNAL \EscReg~input_o\ : std_logic;
SIGNAL \RegDst[0]~input_o\ : std_logic;
SIGNAL \Reg~437_combout\ : std_logic;
SIGNAL \Reg~21_q\ : std_logic;
SIGNAL \Reg~453_combout\ : std_logic;
SIGNAL \Reg~438_combout\ : std_logic;
SIGNAL \Reg~37_q\ : std_logic;
SIGNAL \Reg~439_combout\ : std_logic;
SIGNAL \Reg~53_q\ : std_logic;
SIGNAL \Reg~454_combout\ : std_logic;
SIGNAL \Reg~440_combout\ : std_logic;
SIGNAL \Reg~69_q\ : std_logic;
SIGNAL \LeReg1[0]~input_o\ : std_logic;
SIGNAL \LeReg1[1]~input_o\ : std_logic;
SIGNAL \Reg~277_combout\ : std_logic;
SIGNAL \Reg~441_combout\ : std_logic;
SIGNAL \Reg~85_q\ : std_logic;
SIGNAL \Reg~455_combout\ : std_logic;
SIGNAL \Reg~442_combout\ : std_logic;
SIGNAL \Reg~101_q\ : std_logic;
SIGNAL \Reg~443_combout\ : std_logic;
SIGNAL \Reg~117_q\ : std_logic;
SIGNAL \Reg~456_combout\ : std_logic;
SIGNAL \Reg~444_combout\ : std_logic;
SIGNAL \Reg~133_q\ : std_logic;
SIGNAL \Reg~278_combout\ : std_logic;
SIGNAL \Reg~445_combout\ : std_logic;
SIGNAL \Reg~149_q\ : std_logic;
SIGNAL \Reg~457_combout\ : std_logic;
SIGNAL \Reg~446_combout\ : std_logic;
SIGNAL \Reg~165_q\ : std_logic;
SIGNAL \Reg~447_combout\ : std_logic;
SIGNAL \Reg~181_q\ : std_logic;
SIGNAL \Reg~458_combout\ : std_logic;
SIGNAL \Reg~448_combout\ : std_logic;
SIGNAL \Reg~197_q\ : std_logic;
SIGNAL \Reg~279_combout\ : std_logic;
SIGNAL \Reg~449_combout\ : std_logic;
SIGNAL \Reg~213_q\ : std_logic;
SIGNAL \Reg~459_combout\ : std_logic;
SIGNAL \Reg~450_combout\ : std_logic;
SIGNAL \Reg~229_q\ : std_logic;
SIGNAL \Reg~451_combout\ : std_logic;
SIGNAL \Reg~245_q\ : std_logic;
SIGNAL \Reg~460_combout\ : std_logic;
SIGNAL \Reg~452_combout\ : std_logic;
SIGNAL \Reg~261_q\ : std_logic;
SIGNAL \Reg~280_combout\ : std_logic;
SIGNAL \LeReg1[2]~input_o\ : std_logic;
SIGNAL \LeReg1[3]~input_o\ : std_logic;
SIGNAL \Reg~281_combout\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \Reg~22_q\ : std_logic;
SIGNAL \Reg~86_q\ : std_logic;
SIGNAL \Reg~150_q\ : std_logic;
SIGNAL \Reg~214_q\ : std_logic;
SIGNAL \Reg~282_combout\ : std_logic;
SIGNAL \Reg~38_q\ : std_logic;
SIGNAL \Reg~102_q\ : std_logic;
SIGNAL \Reg~166_q\ : std_logic;
SIGNAL \Reg~230_q\ : std_logic;
SIGNAL \Reg~283_combout\ : std_logic;
SIGNAL \Reg~54_q\ : std_logic;
SIGNAL \Reg~118_q\ : std_logic;
SIGNAL \Reg~182_q\ : std_logic;
SIGNAL \Reg~246_q\ : std_logic;
SIGNAL \Reg~284_combout\ : std_logic;
SIGNAL \Reg~70_q\ : std_logic;
SIGNAL \Reg~134_q\ : std_logic;
SIGNAL \Reg~198_q\ : std_logic;
SIGNAL \Reg~262_q\ : std_logic;
SIGNAL \Reg~285_combout\ : std_logic;
SIGNAL \Reg~286_combout\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \Reg~23_q\ : std_logic;
SIGNAL \Reg~39_q\ : std_logic;
SIGNAL \Reg~55_q\ : std_logic;
SIGNAL \Reg~71_q\ : std_logic;
SIGNAL \Reg~287_combout\ : std_logic;
SIGNAL \Reg~87_q\ : std_logic;
SIGNAL \Reg~103_q\ : std_logic;
SIGNAL \Reg~119_q\ : std_logic;
SIGNAL \Reg~135_q\ : std_logic;
SIGNAL \Reg~288_combout\ : std_logic;
SIGNAL \Reg~151_q\ : std_logic;
SIGNAL \Reg~167_q\ : std_logic;
SIGNAL \Reg~183_q\ : std_logic;
SIGNAL \Reg~199_q\ : std_logic;
SIGNAL \Reg~289_combout\ : std_logic;
SIGNAL \Reg~215_q\ : std_logic;
SIGNAL \Reg~231_q\ : std_logic;
SIGNAL \Reg~247_q\ : std_logic;
SIGNAL \Reg~263_q\ : std_logic;
SIGNAL \Reg~290_combout\ : std_logic;
SIGNAL \Reg~291_combout\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \Reg~24_q\ : std_logic;
SIGNAL \Reg~88_q\ : std_logic;
SIGNAL \Reg~152_q\ : std_logic;
SIGNAL \Reg~216_q\ : std_logic;
SIGNAL \Reg~292_combout\ : std_logic;
SIGNAL \Reg~40_q\ : std_logic;
SIGNAL \Reg~104_q\ : std_logic;
SIGNAL \Reg~168_q\ : std_logic;
SIGNAL \Reg~232_q\ : std_logic;
SIGNAL \Reg~293_combout\ : std_logic;
SIGNAL \Reg~56_q\ : std_logic;
SIGNAL \Reg~120_q\ : std_logic;
SIGNAL \Reg~184_q\ : std_logic;
SIGNAL \Reg~248_q\ : std_logic;
SIGNAL \Reg~294_combout\ : std_logic;
SIGNAL \Reg~72_q\ : std_logic;
SIGNAL \Reg~136_q\ : std_logic;
SIGNAL \Reg~200_q\ : std_logic;
SIGNAL \Reg~264_q\ : std_logic;
SIGNAL \Reg~295_combout\ : std_logic;
SIGNAL \Reg~296_combout\ : std_logic;
SIGNAL \Data[4]~input_o\ : std_logic;
SIGNAL \Reg~25_q\ : std_logic;
SIGNAL \Reg~41_q\ : std_logic;
SIGNAL \Reg~461_combout\ : std_logic;
SIGNAL \Reg~57_q\ : std_logic;
SIGNAL \Reg~462_combout\ : std_logic;
SIGNAL \Reg~73_q\ : std_logic;
SIGNAL \Reg~297_combout\ : std_logic;
SIGNAL \Reg~89_q\ : std_logic;
SIGNAL \Reg~105_q\ : std_logic;
SIGNAL \Reg~463_combout\ : std_logic;
SIGNAL \Reg~121_q\ : std_logic;
SIGNAL \Reg~464_combout\ : std_logic;
SIGNAL \Reg~137_q\ : std_logic;
SIGNAL \Reg~298_combout\ : std_logic;
SIGNAL \Reg~153_q\ : std_logic;
SIGNAL \Reg~169_q\ : std_logic;
SIGNAL \Reg~465_combout\ : std_logic;
SIGNAL \Reg~185_q\ : std_logic;
SIGNAL \Reg~466_combout\ : std_logic;
SIGNAL \Reg~201_q\ : std_logic;
SIGNAL \Reg~299_combout\ : std_logic;
SIGNAL \Reg~217_q\ : std_logic;
SIGNAL \Reg~233_q\ : std_logic;
SIGNAL \Reg~467_combout\ : std_logic;
SIGNAL \Reg~249_q\ : std_logic;
SIGNAL \Reg~468_combout\ : std_logic;
SIGNAL \Reg~265_q\ : std_logic;
SIGNAL \Reg~300_combout\ : std_logic;
SIGNAL \Reg~301_combout\ : std_logic;
SIGNAL \Data[5]~input_o\ : std_logic;
SIGNAL \Reg~26_q\ : std_logic;
SIGNAL \Reg~90_q\ : std_logic;
SIGNAL \Reg~154_q\ : std_logic;
SIGNAL \Reg~218_q\ : std_logic;
SIGNAL \Reg~302_combout\ : std_logic;
SIGNAL \Reg~42_q\ : std_logic;
SIGNAL \Reg~106_q\ : std_logic;
SIGNAL \Reg~170_q\ : std_logic;
SIGNAL \Reg~234_q\ : std_logic;
SIGNAL \Reg~303_combout\ : std_logic;
SIGNAL \Reg~58_q\ : std_logic;
SIGNAL \Reg~122_q\ : std_logic;
SIGNAL \Reg~186_q\ : std_logic;
SIGNAL \Reg~250_q\ : std_logic;
SIGNAL \Reg~304_combout\ : std_logic;
SIGNAL \Reg~74_q\ : std_logic;
SIGNAL \Reg~138_q\ : std_logic;
SIGNAL \Reg~202_q\ : std_logic;
SIGNAL \Reg~266_q\ : std_logic;
SIGNAL \Reg~305_combout\ : std_logic;
SIGNAL \Reg~306_combout\ : std_logic;
SIGNAL \Data[6]~input_o\ : std_logic;
SIGNAL \Reg~27_q\ : std_logic;
SIGNAL \Reg~43_q\ : std_logic;
SIGNAL \Reg~59_q\ : std_logic;
SIGNAL \Reg~75_q\ : std_logic;
SIGNAL \Reg~307_combout\ : std_logic;
SIGNAL \Reg~91_q\ : std_logic;
SIGNAL \Reg~107_q\ : std_logic;
SIGNAL \Reg~123_q\ : std_logic;
SIGNAL \Reg~139_q\ : std_logic;
SIGNAL \Reg~308_combout\ : std_logic;
SIGNAL \Reg~155_q\ : std_logic;
SIGNAL \Reg~171_q\ : std_logic;
SIGNAL \Reg~187_q\ : std_logic;
SIGNAL \Reg~203_q\ : std_logic;
SIGNAL \Reg~309_combout\ : std_logic;
SIGNAL \Reg~219_q\ : std_logic;
SIGNAL \Reg~235_q\ : std_logic;
SIGNAL \Reg~251_q\ : std_logic;
SIGNAL \Reg~267_q\ : std_logic;
SIGNAL \Reg~310_combout\ : std_logic;
SIGNAL \Reg~311_combout\ : std_logic;
SIGNAL \Data[7]~input_o\ : std_logic;
SIGNAL \Reg~28_q\ : std_logic;
SIGNAL \Reg~92_q\ : std_logic;
SIGNAL \Reg~156_q\ : std_logic;
SIGNAL \Reg~220_q\ : std_logic;
SIGNAL \Reg~312_combout\ : std_logic;
SIGNAL \Reg~44_q\ : std_logic;
SIGNAL \Reg~108_q\ : std_logic;
SIGNAL \Reg~172_q\ : std_logic;
SIGNAL \Reg~236_q\ : std_logic;
SIGNAL \Reg~313_combout\ : std_logic;
SIGNAL \Reg~60_q\ : std_logic;
SIGNAL \Reg~124_q\ : std_logic;
SIGNAL \Reg~188_q\ : std_logic;
SIGNAL \Reg~252_q\ : std_logic;
SIGNAL \Reg~314_combout\ : std_logic;
SIGNAL \Reg~76_q\ : std_logic;
SIGNAL \Reg~140_q\ : std_logic;
SIGNAL \Reg~204_q\ : std_logic;
SIGNAL \Reg~268_q\ : std_logic;
SIGNAL \Reg~315_combout\ : std_logic;
SIGNAL \Reg~316_combout\ : std_logic;
SIGNAL \Data[8]~input_o\ : std_logic;
SIGNAL \Reg~29_q\ : std_logic;
SIGNAL \Reg~45_q\ : std_logic;
SIGNAL \Reg~61_q\ : std_logic;
SIGNAL \Reg~77_q\ : std_logic;
SIGNAL \Reg~317_combout\ : std_logic;
SIGNAL \Reg~469_combout\ : std_logic;
SIGNAL \Reg~93_q\ : std_logic;
SIGNAL \Reg~470_combout\ : std_logic;
SIGNAL \Reg~109_q\ : std_logic;
SIGNAL \Reg~471_combout\ : std_logic;
SIGNAL \Reg~125_q\ : std_logic;
SIGNAL \Reg~472_combout\ : std_logic;
SIGNAL \Reg~141_q\ : std_logic;
SIGNAL \Reg~318_combout\ : std_logic;
SIGNAL \Reg~157_q\ : std_logic;
SIGNAL \Reg~173_q\ : std_logic;
SIGNAL \Reg~189_q\ : std_logic;
SIGNAL \Reg~205_q\ : std_logic;
SIGNAL \Reg~319_combout\ : std_logic;
SIGNAL \Reg~473_combout\ : std_logic;
SIGNAL \Reg~221_q\ : std_logic;
SIGNAL \Reg~474_combout\ : std_logic;
SIGNAL \Reg~237_q\ : std_logic;
SIGNAL \Reg~475_combout\ : std_logic;
SIGNAL \Reg~253_q\ : std_logic;
SIGNAL \Reg~476_combout\ : std_logic;
SIGNAL \Reg~269_q\ : std_logic;
SIGNAL \Reg~320_combout\ : std_logic;
SIGNAL \Reg~321_combout\ : std_logic;
SIGNAL \Data[9]~input_o\ : std_logic;
SIGNAL \Reg~30_q\ : std_logic;
SIGNAL \Reg~94_q\ : std_logic;
SIGNAL \Reg~158_q\ : std_logic;
SIGNAL \Reg~222_q\ : std_logic;
SIGNAL \Reg~322_combout\ : std_logic;
SIGNAL \Reg~46_q\ : std_logic;
SIGNAL \Reg~110_q\ : std_logic;
SIGNAL \Reg~174_q\ : std_logic;
SIGNAL \Reg~238_q\ : std_logic;
SIGNAL \Reg~323_combout\ : std_logic;
SIGNAL \Reg~62_q\ : std_logic;
SIGNAL \Reg~126_q\ : std_logic;
SIGNAL \Reg~190_q\ : std_logic;
SIGNAL \Reg~254_q\ : std_logic;
SIGNAL \Reg~324_combout\ : std_logic;
SIGNAL \Reg~78_q\ : std_logic;
SIGNAL \Reg~142_q\ : std_logic;
SIGNAL \Reg~206_q\ : std_logic;
SIGNAL \Reg~270_q\ : std_logic;
SIGNAL \Reg~325_combout\ : std_logic;
SIGNAL \Reg~326_combout\ : std_logic;
SIGNAL \Data[10]~input_o\ : std_logic;
SIGNAL \Reg~31_q\ : std_logic;
SIGNAL \Reg~47_q\ : std_logic;
SIGNAL \Reg~63_q\ : std_logic;
SIGNAL \Reg~79_q\ : std_logic;
SIGNAL \Reg~327_combout\ : std_logic;
SIGNAL \Reg~95_q\ : std_logic;
SIGNAL \Reg~111_q\ : std_logic;
SIGNAL \Reg~127_q\ : std_logic;
SIGNAL \Reg~143_q\ : std_logic;
SIGNAL \Reg~328_combout\ : std_logic;
SIGNAL \Reg~159_q\ : std_logic;
SIGNAL \Reg~175_q\ : std_logic;
SIGNAL \Reg~191_q\ : std_logic;
SIGNAL \Reg~207_q\ : std_logic;
SIGNAL \Reg~329_combout\ : std_logic;
SIGNAL \Reg~223_q\ : std_logic;
SIGNAL \Reg~239_q\ : std_logic;
SIGNAL \Reg~255_q\ : std_logic;
SIGNAL \Reg~271_q\ : std_logic;
SIGNAL \Reg~330_combout\ : std_logic;
SIGNAL \Reg~331_combout\ : std_logic;
SIGNAL \Data[11]~input_o\ : std_logic;
SIGNAL \Reg~32_q\ : std_logic;
SIGNAL \Reg~96_q\ : std_logic;
SIGNAL \Reg~160_q\ : std_logic;
SIGNAL \Reg~224_q\ : std_logic;
SIGNAL \Reg~332_combout\ : std_logic;
SIGNAL \Reg~48_q\ : std_logic;
SIGNAL \Reg~112_q\ : std_logic;
SIGNAL \Reg~176_q\ : std_logic;
SIGNAL \Reg~240_q\ : std_logic;
SIGNAL \Reg~333_combout\ : std_logic;
SIGNAL \Reg~64_q\ : std_logic;
SIGNAL \Reg~128_q\ : std_logic;
SIGNAL \Reg~192_q\ : std_logic;
SIGNAL \Reg~256_q\ : std_logic;
SIGNAL \Reg~334_combout\ : std_logic;
SIGNAL \Reg~80_q\ : std_logic;
SIGNAL \Reg~144_q\ : std_logic;
SIGNAL \Reg~208_q\ : std_logic;
SIGNAL \Reg~272_q\ : std_logic;
SIGNAL \Reg~335_combout\ : std_logic;
SIGNAL \Reg~336_combout\ : std_logic;
SIGNAL \Data[12]~input_o\ : std_logic;
SIGNAL \Reg~33_q\ : std_logic;
SIGNAL \Reg~49_q\ : std_logic;
SIGNAL \Reg~65_q\ : std_logic;
SIGNAL \Reg~81_q\ : std_logic;
SIGNAL \Reg~337_combout\ : std_logic;
SIGNAL \Reg~97_q\ : std_logic;
SIGNAL \Reg~113_q\ : std_logic;
SIGNAL \Reg~129_q\ : std_logic;
SIGNAL \Reg~145_q\ : std_logic;
SIGNAL \Reg~338_combout\ : std_logic;
SIGNAL \Reg~477_combout\ : std_logic;
SIGNAL \Reg~161_q\ : std_logic;
SIGNAL \Reg~478_combout\ : std_logic;
SIGNAL \Reg~177_q\ : std_logic;
SIGNAL \Reg~479_combout\ : std_logic;
SIGNAL \Reg~193_q\ : std_logic;
SIGNAL \Reg~480_combout\ : std_logic;
SIGNAL \Reg~209_q\ : std_logic;
SIGNAL \Reg~339_combout\ : std_logic;
SIGNAL \Reg~481_combout\ : std_logic;
SIGNAL \Reg~225_q\ : std_logic;
SIGNAL \Reg~482_combout\ : std_logic;
SIGNAL \Reg~241_q\ : std_logic;
SIGNAL \Reg~483_combout\ : std_logic;
SIGNAL \Reg~257_q\ : std_logic;
SIGNAL \Reg~484_combout\ : std_logic;
SIGNAL \Reg~273_q\ : std_logic;
SIGNAL \Reg~340_combout\ : std_logic;
SIGNAL \Reg~341_combout\ : std_logic;
SIGNAL \Data[13]~input_o\ : std_logic;
SIGNAL \Reg~34_q\ : std_logic;
SIGNAL \Reg~98_q\ : std_logic;
SIGNAL \Reg~162_q\ : std_logic;
SIGNAL \Reg~226_q\ : std_logic;
SIGNAL \Reg~342_combout\ : std_logic;
SIGNAL \Reg~50_q\ : std_logic;
SIGNAL \Reg~114_q\ : std_logic;
SIGNAL \Reg~178_q\ : std_logic;
SIGNAL \Reg~242_q\ : std_logic;
SIGNAL \Reg~343_combout\ : std_logic;
SIGNAL \Reg~66_q\ : std_logic;
SIGNAL \Reg~130_q\ : std_logic;
SIGNAL \Reg~194_q\ : std_logic;
SIGNAL \Reg~258_q\ : std_logic;
SIGNAL \Reg~344_combout\ : std_logic;
SIGNAL \Reg~82_q\ : std_logic;
SIGNAL \Reg~146_q\ : std_logic;
SIGNAL \Reg~210_q\ : std_logic;
SIGNAL \Reg~274_q\ : std_logic;
SIGNAL \Reg~345_combout\ : std_logic;
SIGNAL \Reg~346_combout\ : std_logic;
SIGNAL \Data[14]~input_o\ : std_logic;
SIGNAL \Reg~35_q\ : std_logic;
SIGNAL \Reg~51_q\ : std_logic;
SIGNAL \Reg~67_q\ : std_logic;
SIGNAL \Reg~83_q\ : std_logic;
SIGNAL \Reg~347_combout\ : std_logic;
SIGNAL \Reg~99_q\ : std_logic;
SIGNAL \Reg~115_q\ : std_logic;
SIGNAL \Reg~131_q\ : std_logic;
SIGNAL \Reg~147_q\ : std_logic;
SIGNAL \Reg~348_combout\ : std_logic;
SIGNAL \Reg~163_q\ : std_logic;
SIGNAL \Reg~179_q\ : std_logic;
SIGNAL \Reg~195_q\ : std_logic;
SIGNAL \Reg~211_q\ : std_logic;
SIGNAL \Reg~349_combout\ : std_logic;
SIGNAL \Reg~227_q\ : std_logic;
SIGNAL \Reg~243_q\ : std_logic;
SIGNAL \Reg~259_q\ : std_logic;
SIGNAL \Reg~275_q\ : std_logic;
SIGNAL \Reg~350_combout\ : std_logic;
SIGNAL \Reg~351_combout\ : std_logic;
SIGNAL \Data[15]~input_o\ : std_logic;
SIGNAL \Reg~36_q\ : std_logic;
SIGNAL \Reg~100_q\ : std_logic;
SIGNAL \Reg~164_q\ : std_logic;
SIGNAL \Reg~228_q\ : std_logic;
SIGNAL \Reg~352_combout\ : std_logic;
SIGNAL \Reg~52_q\ : std_logic;
SIGNAL \Reg~116_q\ : std_logic;
SIGNAL \Reg~180_q\ : std_logic;
SIGNAL \Reg~244_q\ : std_logic;
SIGNAL \Reg~353_combout\ : std_logic;
SIGNAL \Reg~68_q\ : std_logic;
SIGNAL \Reg~132_q\ : std_logic;
SIGNAL \Reg~196_q\ : std_logic;
SIGNAL \Reg~260_q\ : std_logic;
SIGNAL \Reg~354_combout\ : std_logic;
SIGNAL \Reg~84_q\ : std_logic;
SIGNAL \Reg~148_q\ : std_logic;
SIGNAL \Reg~212_q\ : std_logic;
SIGNAL \Reg~276_q\ : std_logic;
SIGNAL \Reg~355_combout\ : std_logic;
SIGNAL \Reg~356_combout\ : std_logic;
SIGNAL \LeReg2[0]~input_o\ : std_logic;
SIGNAL \LeReg2[1]~input_o\ : std_logic;
SIGNAL \Reg~357_combout\ : std_logic;
SIGNAL \Reg~358_combout\ : std_logic;
SIGNAL \Reg~359_combout\ : std_logic;
SIGNAL \Reg~360_combout\ : std_logic;
SIGNAL \LeReg2[2]~input_o\ : std_logic;
SIGNAL \LeReg2[3]~input_o\ : std_logic;
SIGNAL \Reg~361_combout\ : std_logic;
SIGNAL \Reg~362_combout\ : std_logic;
SIGNAL \Reg~363_combout\ : std_logic;
SIGNAL \Reg~364_combout\ : std_logic;
SIGNAL \Reg~365_combout\ : std_logic;
SIGNAL \Reg~366_combout\ : std_logic;
SIGNAL \Reg~367_combout\ : std_logic;
SIGNAL \Reg~368_combout\ : std_logic;
SIGNAL \Reg~369_combout\ : std_logic;
SIGNAL \Reg~370_combout\ : std_logic;
SIGNAL \Reg~371_combout\ : std_logic;
SIGNAL \Reg~372_combout\ : std_logic;
SIGNAL \Reg~373_combout\ : std_logic;
SIGNAL \Reg~374_combout\ : std_logic;
SIGNAL \Reg~375_combout\ : std_logic;
SIGNAL \Reg~376_combout\ : std_logic;
SIGNAL \Reg~377_combout\ : std_logic;
SIGNAL \Reg~378_combout\ : std_logic;
SIGNAL \Reg~379_combout\ : std_logic;
SIGNAL \Reg~380_combout\ : std_logic;
SIGNAL \Reg~381_combout\ : std_logic;
SIGNAL \Reg~382_combout\ : std_logic;
SIGNAL \Reg~383_combout\ : std_logic;
SIGNAL \Reg~384_combout\ : std_logic;
SIGNAL \Reg~385_combout\ : std_logic;
SIGNAL \Reg~386_combout\ : std_logic;
SIGNAL \Reg~387_combout\ : std_logic;
SIGNAL \Reg~388_combout\ : std_logic;
SIGNAL \Reg~389_combout\ : std_logic;
SIGNAL \Reg~390_combout\ : std_logic;
SIGNAL \Reg~391_combout\ : std_logic;
SIGNAL \Reg~392_combout\ : std_logic;
SIGNAL \Reg~393_combout\ : std_logic;
SIGNAL \Reg~394_combout\ : std_logic;
SIGNAL \Reg~395_combout\ : std_logic;
SIGNAL \Reg~396_combout\ : std_logic;
SIGNAL \Reg~397_combout\ : std_logic;
SIGNAL \Reg~398_combout\ : std_logic;
SIGNAL \Reg~399_combout\ : std_logic;
SIGNAL \Reg~400_combout\ : std_logic;
SIGNAL \Reg~401_combout\ : std_logic;
SIGNAL \Reg~402_combout\ : std_logic;
SIGNAL \Reg~403_combout\ : std_logic;
SIGNAL \Reg~404_combout\ : std_logic;
SIGNAL \Reg~405_combout\ : std_logic;
SIGNAL \Reg~406_combout\ : std_logic;
SIGNAL \Reg~407_combout\ : std_logic;
SIGNAL \Reg~408_combout\ : std_logic;
SIGNAL \Reg~409_combout\ : std_logic;
SIGNAL \Reg~410_combout\ : std_logic;
SIGNAL \Reg~411_combout\ : std_logic;
SIGNAL \Reg~412_combout\ : std_logic;
SIGNAL \Reg~413_combout\ : std_logic;
SIGNAL \Reg~414_combout\ : std_logic;
SIGNAL \Reg~415_combout\ : std_logic;
SIGNAL \Reg~416_combout\ : std_logic;
SIGNAL \Reg~417_combout\ : std_logic;
SIGNAL \Reg~418_combout\ : std_logic;
SIGNAL \Reg~419_combout\ : std_logic;
SIGNAL \Reg~420_combout\ : std_logic;
SIGNAL \Reg~421_combout\ : std_logic;
SIGNAL \Reg~422_combout\ : std_logic;
SIGNAL \Reg~423_combout\ : std_logic;
SIGNAL \Reg~424_combout\ : std_logic;
SIGNAL \Reg~425_combout\ : std_logic;
SIGNAL \Reg~426_combout\ : std_logic;
SIGNAL \Reg~427_combout\ : std_logic;
SIGNAL \Reg~428_combout\ : std_logic;
SIGNAL \Reg~429_combout\ : std_logic;
SIGNAL \Reg~430_combout\ : std_logic;
SIGNAL \Reg~431_combout\ : std_logic;
SIGNAL \Reg~432_combout\ : std_logic;
SIGNAL \Reg~433_combout\ : std_logic;
SIGNAL \Reg~434_combout\ : std_logic;
SIGNAL \Reg~435_combout\ : std_logic;
SIGNAL \Reg~436_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~25_q\ : std_logic;
SIGNAL \ALT_INV_Reg~295_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~264_q\ : std_logic;
SIGNAL \ALT_INV_Reg~200_q\ : std_logic;
SIGNAL \ALT_INV_Reg~136_q\ : std_logic;
SIGNAL \ALT_INV_Reg~72_q\ : std_logic;
SIGNAL \ALT_INV_Reg~294_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~248_q\ : std_logic;
SIGNAL \ALT_INV_Reg~184_q\ : std_logic;
SIGNAL \ALT_INV_Reg~120_q\ : std_logic;
SIGNAL \ALT_INV_Reg~56_q\ : std_logic;
SIGNAL \ALT_INV_Reg~293_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~232_q\ : std_logic;
SIGNAL \ALT_INV_Reg~168_q\ : std_logic;
SIGNAL \ALT_INV_Reg~104_q\ : std_logic;
SIGNAL \ALT_INV_Reg~40_q\ : std_logic;
SIGNAL \ALT_INV_Reg~292_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~216_q\ : std_logic;
SIGNAL \ALT_INV_Reg~152_q\ : std_logic;
SIGNAL \ALT_INV_Reg~88_q\ : std_logic;
SIGNAL \ALT_INV_Reg~24_q\ : std_logic;
SIGNAL \ALT_INV_Reg~290_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~263_q\ : std_logic;
SIGNAL \ALT_INV_Reg~247_q\ : std_logic;
SIGNAL \ALT_INV_Reg~231_q\ : std_logic;
SIGNAL \ALT_INV_Reg~215_q\ : std_logic;
SIGNAL \ALT_INV_Reg~289_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~199_q\ : std_logic;
SIGNAL \ALT_INV_Reg~183_q\ : std_logic;
SIGNAL \ALT_INV_Reg~167_q\ : std_logic;
SIGNAL \ALT_INV_Reg~151_q\ : std_logic;
SIGNAL \ALT_INV_Reg~288_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~135_q\ : std_logic;
SIGNAL \ALT_INV_Reg~119_q\ : std_logic;
SIGNAL \ALT_INV_Reg~103_q\ : std_logic;
SIGNAL \ALT_INV_Reg~87_q\ : std_logic;
SIGNAL \ALT_INV_Reg~287_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~71_q\ : std_logic;
SIGNAL \ALT_INV_Reg~55_q\ : std_logic;
SIGNAL \ALT_INV_Reg~39_q\ : std_logic;
SIGNAL \ALT_INV_Reg~23_q\ : std_logic;
SIGNAL \ALT_INV_Reg~285_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~262_q\ : std_logic;
SIGNAL \ALT_INV_Reg~198_q\ : std_logic;
SIGNAL \ALT_INV_Reg~134_q\ : std_logic;
SIGNAL \ALT_INV_Reg~70_q\ : std_logic;
SIGNAL \ALT_INV_Reg~284_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~246_q\ : std_logic;
SIGNAL \ALT_INV_Reg~182_q\ : std_logic;
SIGNAL \ALT_INV_Reg~118_q\ : std_logic;
SIGNAL \ALT_INV_Reg~54_q\ : std_logic;
SIGNAL \ALT_INV_Reg~283_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~230_q\ : std_logic;
SIGNAL \ALT_INV_Reg~166_q\ : std_logic;
SIGNAL \ALT_INV_Reg~102_q\ : std_logic;
SIGNAL \ALT_INV_Reg~38_q\ : std_logic;
SIGNAL \ALT_INV_Reg~282_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~214_q\ : std_logic;
SIGNAL \ALT_INV_Reg~150_q\ : std_logic;
SIGNAL \ALT_INV_Reg~86_q\ : std_logic;
SIGNAL \ALT_INV_Reg~22_q\ : std_logic;
SIGNAL \ALT_INV_Reg~280_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~261_q\ : std_logic;
SIGNAL \ALT_INV_Reg~245_q\ : std_logic;
SIGNAL \ALT_INV_Reg~229_q\ : std_logic;
SIGNAL \ALT_INV_Reg~213_q\ : std_logic;
SIGNAL \ALT_INV_Reg~279_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~197_q\ : std_logic;
SIGNAL \ALT_INV_Reg~181_q\ : std_logic;
SIGNAL \ALT_INV_Reg~165_q\ : std_logic;
SIGNAL \ALT_INV_Reg~149_q\ : std_logic;
SIGNAL \ALT_INV_Reg~278_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~133_q\ : std_logic;
SIGNAL \ALT_INV_Reg~117_q\ : std_logic;
SIGNAL \ALT_INV_Reg~101_q\ : std_logic;
SIGNAL \ALT_INV_Reg~85_q\ : std_logic;
SIGNAL \ALT_INV_Reg~277_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~69_q\ : std_logic;
SIGNAL \ALT_INV_Reg~53_q\ : std_logic;
SIGNAL \ALT_INV_Reg~37_q\ : std_logic;
SIGNAL \ALT_INV_Reg~21_q\ : std_logic;
SIGNAL \ALT_INV_Reg~47_q\ : std_logic;
SIGNAL \ALT_INV_Reg~31_q\ : std_logic;
SIGNAL \ALT_INV_Reg~325_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~270_q\ : std_logic;
SIGNAL \ALT_INV_Reg~206_q\ : std_logic;
SIGNAL \ALT_INV_Reg~142_q\ : std_logic;
SIGNAL \ALT_INV_Reg~78_q\ : std_logic;
SIGNAL \ALT_INV_Reg~324_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~254_q\ : std_logic;
SIGNAL \ALT_INV_Reg~190_q\ : std_logic;
SIGNAL \ALT_INV_Reg~126_q\ : std_logic;
SIGNAL \ALT_INV_Reg~62_q\ : std_logic;
SIGNAL \ALT_INV_Reg~323_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~238_q\ : std_logic;
SIGNAL \ALT_INV_Reg~174_q\ : std_logic;
SIGNAL \ALT_INV_Reg~110_q\ : std_logic;
SIGNAL \ALT_INV_Reg~46_q\ : std_logic;
SIGNAL \ALT_INV_Reg~322_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~222_q\ : std_logic;
SIGNAL \ALT_INV_Reg~158_q\ : std_logic;
SIGNAL \ALT_INV_Reg~94_q\ : std_logic;
SIGNAL \ALT_INV_Reg~30_q\ : std_logic;
SIGNAL \ALT_INV_Reg~320_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~269_q\ : std_logic;
SIGNAL \ALT_INV_Reg~253_q\ : std_logic;
SIGNAL \ALT_INV_Reg~237_q\ : std_logic;
SIGNAL \ALT_INV_Reg~221_q\ : std_logic;
SIGNAL \ALT_INV_Reg~319_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~205_q\ : std_logic;
SIGNAL \ALT_INV_Reg~189_q\ : std_logic;
SIGNAL \ALT_INV_Reg~173_q\ : std_logic;
SIGNAL \ALT_INV_Reg~157_q\ : std_logic;
SIGNAL \ALT_INV_Reg~318_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~141_q\ : std_logic;
SIGNAL \ALT_INV_Reg~125_q\ : std_logic;
SIGNAL \ALT_INV_Reg~109_q\ : std_logic;
SIGNAL \ALT_INV_Reg~93_q\ : std_logic;
SIGNAL \ALT_INV_Reg~317_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~77_q\ : std_logic;
SIGNAL \ALT_INV_Reg~61_q\ : std_logic;
SIGNAL \ALT_INV_Reg~45_q\ : std_logic;
SIGNAL \ALT_INV_Reg~29_q\ : std_logic;
SIGNAL \ALT_INV_Reg~315_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~268_q\ : std_logic;
SIGNAL \ALT_INV_Reg~204_q\ : std_logic;
SIGNAL \ALT_INV_Reg~140_q\ : std_logic;
SIGNAL \ALT_INV_Reg~76_q\ : std_logic;
SIGNAL \ALT_INV_Reg~314_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~252_q\ : std_logic;
SIGNAL \ALT_INV_Reg~188_q\ : std_logic;
SIGNAL \ALT_INV_Reg~124_q\ : std_logic;
SIGNAL \ALT_INV_Reg~60_q\ : std_logic;
SIGNAL \ALT_INV_Reg~313_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~236_q\ : std_logic;
SIGNAL \ALT_INV_Reg~172_q\ : std_logic;
SIGNAL \ALT_INV_Reg~108_q\ : std_logic;
SIGNAL \ALT_INV_Reg~44_q\ : std_logic;
SIGNAL \ALT_INV_Reg~312_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~220_q\ : std_logic;
SIGNAL \ALT_INV_Reg~156_q\ : std_logic;
SIGNAL \ALT_INV_Reg~92_q\ : std_logic;
SIGNAL \ALT_INV_Reg~28_q\ : std_logic;
SIGNAL \ALT_INV_Reg~310_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~267_q\ : std_logic;
SIGNAL \ALT_INV_Reg~251_q\ : std_logic;
SIGNAL \ALT_INV_Reg~235_q\ : std_logic;
SIGNAL \ALT_INV_Reg~219_q\ : std_logic;
SIGNAL \ALT_INV_Reg~309_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~203_q\ : std_logic;
SIGNAL \ALT_INV_Reg~187_q\ : std_logic;
SIGNAL \ALT_INV_Reg~171_q\ : std_logic;
SIGNAL \ALT_INV_Reg~155_q\ : std_logic;
SIGNAL \ALT_INV_Reg~308_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~139_q\ : std_logic;
SIGNAL \ALT_INV_Reg~123_q\ : std_logic;
SIGNAL \ALT_INV_Reg~107_q\ : std_logic;
SIGNAL \ALT_INV_Reg~91_q\ : std_logic;
SIGNAL \ALT_INV_Reg~307_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~75_q\ : std_logic;
SIGNAL \ALT_INV_Reg~59_q\ : std_logic;
SIGNAL \ALT_INV_Reg~43_q\ : std_logic;
SIGNAL \ALT_INV_Reg~27_q\ : std_logic;
SIGNAL \ALT_INV_Reg~305_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~266_q\ : std_logic;
SIGNAL \ALT_INV_Reg~202_q\ : std_logic;
SIGNAL \ALT_INV_Reg~138_q\ : std_logic;
SIGNAL \ALT_INV_Reg~74_q\ : std_logic;
SIGNAL \ALT_INV_Reg~304_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~250_q\ : std_logic;
SIGNAL \ALT_INV_Reg~186_q\ : std_logic;
SIGNAL \ALT_INV_Reg~122_q\ : std_logic;
SIGNAL \ALT_INV_Reg~58_q\ : std_logic;
SIGNAL \ALT_INV_Reg~303_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~234_q\ : std_logic;
SIGNAL \ALT_INV_Reg~170_q\ : std_logic;
SIGNAL \ALT_INV_Reg~106_q\ : std_logic;
SIGNAL \ALT_INV_Reg~42_q\ : std_logic;
SIGNAL \ALT_INV_Reg~302_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~218_q\ : std_logic;
SIGNAL \ALT_INV_Reg~154_q\ : std_logic;
SIGNAL \ALT_INV_Reg~90_q\ : std_logic;
SIGNAL \ALT_INV_Reg~26_q\ : std_logic;
SIGNAL \ALT_INV_Reg~300_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~265_q\ : std_logic;
SIGNAL \ALT_INV_Reg~249_q\ : std_logic;
SIGNAL \ALT_INV_Reg~233_q\ : std_logic;
SIGNAL \ALT_INV_Reg~217_q\ : std_logic;
SIGNAL \ALT_INV_Reg~299_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~201_q\ : std_logic;
SIGNAL \ALT_INV_Reg~185_q\ : std_logic;
SIGNAL \ALT_INV_Reg~169_q\ : std_logic;
SIGNAL \ALT_INV_Reg~153_q\ : std_logic;
SIGNAL \ALT_INV_Reg~298_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~137_q\ : std_logic;
SIGNAL \ALT_INV_Reg~121_q\ : std_logic;
SIGNAL \ALT_INV_Reg~105_q\ : std_logic;
SIGNAL \ALT_INV_Reg~89_q\ : std_logic;
SIGNAL \ALT_INV_Reg~297_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~73_q\ : std_logic;
SIGNAL \ALT_INV_Reg~57_q\ : std_logic;
SIGNAL \ALT_INV_Reg~41_q\ : std_logic;
SIGNAL \ALT_INV_Reg~359_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~358_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~357_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~355_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~276_q\ : std_logic;
SIGNAL \ALT_INV_Reg~212_q\ : std_logic;
SIGNAL \ALT_INV_Reg~148_q\ : std_logic;
SIGNAL \ALT_INV_Reg~84_q\ : std_logic;
SIGNAL \ALT_INV_Reg~354_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~260_q\ : std_logic;
SIGNAL \ALT_INV_Reg~196_q\ : std_logic;
SIGNAL \ALT_INV_Reg~132_q\ : std_logic;
SIGNAL \ALT_INV_Reg~68_q\ : std_logic;
SIGNAL \ALT_INV_Reg~353_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~244_q\ : std_logic;
SIGNAL \ALT_INV_Reg~180_q\ : std_logic;
SIGNAL \ALT_INV_Reg~116_q\ : std_logic;
SIGNAL \ALT_INV_Reg~52_q\ : std_logic;
SIGNAL \ALT_INV_Reg~352_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~228_q\ : std_logic;
SIGNAL \ALT_INV_Reg~164_q\ : std_logic;
SIGNAL \ALT_INV_Reg~100_q\ : std_logic;
SIGNAL \ALT_INV_Reg~36_q\ : std_logic;
SIGNAL \ALT_INV_Reg~350_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~275_q\ : std_logic;
SIGNAL \ALT_INV_Reg~259_q\ : std_logic;
SIGNAL \ALT_INV_Reg~243_q\ : std_logic;
SIGNAL \ALT_INV_Reg~227_q\ : std_logic;
SIGNAL \ALT_INV_Reg~349_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~211_q\ : std_logic;
SIGNAL \ALT_INV_Reg~195_q\ : std_logic;
SIGNAL \ALT_INV_Reg~179_q\ : std_logic;
SIGNAL \ALT_INV_Reg~163_q\ : std_logic;
SIGNAL \ALT_INV_Reg~348_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~147_q\ : std_logic;
SIGNAL \ALT_INV_Reg~131_q\ : std_logic;
SIGNAL \ALT_INV_Reg~115_q\ : std_logic;
SIGNAL \ALT_INV_Reg~99_q\ : std_logic;
SIGNAL \ALT_INV_Reg~347_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~83_q\ : std_logic;
SIGNAL \ALT_INV_Reg~67_q\ : std_logic;
SIGNAL \ALT_INV_Reg~51_q\ : std_logic;
SIGNAL \ALT_INV_Reg~35_q\ : std_logic;
SIGNAL \ALT_INV_Reg~345_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~274_q\ : std_logic;
SIGNAL \ALT_INV_Reg~210_q\ : std_logic;
SIGNAL \ALT_INV_Reg~146_q\ : std_logic;
SIGNAL \ALT_INV_Reg~82_q\ : std_logic;
SIGNAL \ALT_INV_Reg~344_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~258_q\ : std_logic;
SIGNAL \ALT_INV_Reg~194_q\ : std_logic;
SIGNAL \ALT_INV_Reg~130_q\ : std_logic;
SIGNAL \ALT_INV_Reg~66_q\ : std_logic;
SIGNAL \ALT_INV_Reg~343_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~242_q\ : std_logic;
SIGNAL \ALT_INV_Reg~178_q\ : std_logic;
SIGNAL \ALT_INV_Reg~114_q\ : std_logic;
SIGNAL \ALT_INV_Reg~50_q\ : std_logic;
SIGNAL \ALT_INV_Reg~342_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~226_q\ : std_logic;
SIGNAL \ALT_INV_Reg~162_q\ : std_logic;
SIGNAL \ALT_INV_Reg~98_q\ : std_logic;
SIGNAL \ALT_INV_Reg~34_q\ : std_logic;
SIGNAL \ALT_INV_Reg~340_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~273_q\ : std_logic;
SIGNAL \ALT_INV_Reg~257_q\ : std_logic;
SIGNAL \ALT_INV_Reg~241_q\ : std_logic;
SIGNAL \ALT_INV_Reg~225_q\ : std_logic;
SIGNAL \ALT_INV_Reg~339_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~209_q\ : std_logic;
SIGNAL \ALT_INV_Reg~193_q\ : std_logic;
SIGNAL \ALT_INV_Reg~177_q\ : std_logic;
SIGNAL \ALT_INV_Reg~161_q\ : std_logic;
SIGNAL \ALT_INV_Reg~338_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~145_q\ : std_logic;
SIGNAL \ALT_INV_Reg~129_q\ : std_logic;
SIGNAL \ALT_INV_Reg~113_q\ : std_logic;
SIGNAL \ALT_INV_Reg~97_q\ : std_logic;
SIGNAL \ALT_INV_Reg~337_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~81_q\ : std_logic;
SIGNAL \ALT_INV_Reg~65_q\ : std_logic;
SIGNAL \ALT_INV_Reg~49_q\ : std_logic;
SIGNAL \ALT_INV_Reg~33_q\ : std_logic;
SIGNAL \ALT_INV_Reg~335_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~272_q\ : std_logic;
SIGNAL \ALT_INV_Reg~208_q\ : std_logic;
SIGNAL \ALT_INV_Reg~144_q\ : std_logic;
SIGNAL \ALT_INV_Reg~80_q\ : std_logic;
SIGNAL \ALT_INV_Reg~334_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~256_q\ : std_logic;
SIGNAL \ALT_INV_Reg~192_q\ : std_logic;
SIGNAL \ALT_INV_Reg~128_q\ : std_logic;
SIGNAL \ALT_INV_Reg~64_q\ : std_logic;
SIGNAL \ALT_INV_Reg~333_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~240_q\ : std_logic;
SIGNAL \ALT_INV_Reg~176_q\ : std_logic;
SIGNAL \ALT_INV_Reg~112_q\ : std_logic;
SIGNAL \ALT_INV_Reg~48_q\ : std_logic;
SIGNAL \ALT_INV_Reg~332_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~224_q\ : std_logic;
SIGNAL \ALT_INV_Reg~160_q\ : std_logic;
SIGNAL \ALT_INV_Reg~96_q\ : std_logic;
SIGNAL \ALT_INV_Reg~32_q\ : std_logic;
SIGNAL \ALT_INV_Reg~330_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~271_q\ : std_logic;
SIGNAL \ALT_INV_Reg~255_q\ : std_logic;
SIGNAL \ALT_INV_Reg~239_q\ : std_logic;
SIGNAL \ALT_INV_Reg~223_q\ : std_logic;
SIGNAL \ALT_INV_Reg~329_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~207_q\ : std_logic;
SIGNAL \ALT_INV_Reg~191_q\ : std_logic;
SIGNAL \ALT_INV_Reg~175_q\ : std_logic;
SIGNAL \ALT_INV_Reg~159_q\ : std_logic;
SIGNAL \ALT_INV_Reg~328_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~143_q\ : std_logic;
SIGNAL \ALT_INV_Reg~127_q\ : std_logic;
SIGNAL \ALT_INV_Reg~111_q\ : std_logic;
SIGNAL \ALT_INV_Reg~95_q\ : std_logic;
SIGNAL \ALT_INV_Reg~327_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~79_q\ : std_logic;
SIGNAL \ALT_INV_Reg~63_q\ : std_logic;
SIGNAL \ALT_INV_Reg~435_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~434_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~433_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~432_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~430_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~429_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~428_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~427_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~425_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~424_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~423_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~422_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~420_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~419_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~418_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~417_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~415_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~414_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~413_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~412_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~410_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~409_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~408_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~407_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~405_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~404_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~403_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~402_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~400_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~399_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~398_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~397_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~395_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~394_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~393_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~392_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~390_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~389_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~388_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~387_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~385_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~384_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~383_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~382_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~380_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~379_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~378_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~377_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~375_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~374_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~373_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~372_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~370_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~369_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~368_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~367_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~365_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~364_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~363_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~362_combout\ : std_logic;
SIGNAL \ALT_INV_Reg~360_combout\ : std_logic;
SIGNAL \ALT_INV_Data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegDst[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EscReg~input_o\ : std_logic;
SIGNAL \ALT_INV_RegDst[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegDst[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegDst[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LeReg2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_LeReg2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_LeReg2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_LeReg2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LeReg1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_LeReg1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_LeReg1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_LeReg1[0]~input_o\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_EscReg <= EscReg;
RegA <= ww_RegA;
RegB <= ww_RegB;
ww_Data <= Data;
ww_RegDst <= RegDst;
ww_LeReg1 <= LeReg1;
ww_LeReg2 <= LeReg2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Reg~25_q\ <= NOT \Reg~25_q\;
\ALT_INV_Reg~295_combout\ <= NOT \Reg~295_combout\;
\ALT_INV_Reg~264_q\ <= NOT \Reg~264_q\;
\ALT_INV_Reg~200_q\ <= NOT \Reg~200_q\;
\ALT_INV_Reg~136_q\ <= NOT \Reg~136_q\;
\ALT_INV_Reg~72_q\ <= NOT \Reg~72_q\;
\ALT_INV_Reg~294_combout\ <= NOT \Reg~294_combout\;
\ALT_INV_Reg~248_q\ <= NOT \Reg~248_q\;
\ALT_INV_Reg~184_q\ <= NOT \Reg~184_q\;
\ALT_INV_Reg~120_q\ <= NOT \Reg~120_q\;
\ALT_INV_Reg~56_q\ <= NOT \Reg~56_q\;
\ALT_INV_Reg~293_combout\ <= NOT \Reg~293_combout\;
\ALT_INV_Reg~232_q\ <= NOT \Reg~232_q\;
\ALT_INV_Reg~168_q\ <= NOT \Reg~168_q\;
\ALT_INV_Reg~104_q\ <= NOT \Reg~104_q\;
\ALT_INV_Reg~40_q\ <= NOT \Reg~40_q\;
\ALT_INV_Reg~292_combout\ <= NOT \Reg~292_combout\;
\ALT_INV_Reg~216_q\ <= NOT \Reg~216_q\;
\ALT_INV_Reg~152_q\ <= NOT \Reg~152_q\;
\ALT_INV_Reg~88_q\ <= NOT \Reg~88_q\;
\ALT_INV_Reg~24_q\ <= NOT \Reg~24_q\;
\ALT_INV_Reg~290_combout\ <= NOT \Reg~290_combout\;
\ALT_INV_Reg~263_q\ <= NOT \Reg~263_q\;
\ALT_INV_Reg~247_q\ <= NOT \Reg~247_q\;
\ALT_INV_Reg~231_q\ <= NOT \Reg~231_q\;
\ALT_INV_Reg~215_q\ <= NOT \Reg~215_q\;
\ALT_INV_Reg~289_combout\ <= NOT \Reg~289_combout\;
\ALT_INV_Reg~199_q\ <= NOT \Reg~199_q\;
\ALT_INV_Reg~183_q\ <= NOT \Reg~183_q\;
\ALT_INV_Reg~167_q\ <= NOT \Reg~167_q\;
\ALT_INV_Reg~151_q\ <= NOT \Reg~151_q\;
\ALT_INV_Reg~288_combout\ <= NOT \Reg~288_combout\;
\ALT_INV_Reg~135_q\ <= NOT \Reg~135_q\;
\ALT_INV_Reg~119_q\ <= NOT \Reg~119_q\;
\ALT_INV_Reg~103_q\ <= NOT \Reg~103_q\;
\ALT_INV_Reg~87_q\ <= NOT \Reg~87_q\;
\ALT_INV_Reg~287_combout\ <= NOT \Reg~287_combout\;
\ALT_INV_Reg~71_q\ <= NOT \Reg~71_q\;
\ALT_INV_Reg~55_q\ <= NOT \Reg~55_q\;
\ALT_INV_Reg~39_q\ <= NOT \Reg~39_q\;
\ALT_INV_Reg~23_q\ <= NOT \Reg~23_q\;
\ALT_INV_Reg~285_combout\ <= NOT \Reg~285_combout\;
\ALT_INV_Reg~262_q\ <= NOT \Reg~262_q\;
\ALT_INV_Reg~198_q\ <= NOT \Reg~198_q\;
\ALT_INV_Reg~134_q\ <= NOT \Reg~134_q\;
\ALT_INV_Reg~70_q\ <= NOT \Reg~70_q\;
\ALT_INV_Reg~284_combout\ <= NOT \Reg~284_combout\;
\ALT_INV_Reg~246_q\ <= NOT \Reg~246_q\;
\ALT_INV_Reg~182_q\ <= NOT \Reg~182_q\;
\ALT_INV_Reg~118_q\ <= NOT \Reg~118_q\;
\ALT_INV_Reg~54_q\ <= NOT \Reg~54_q\;
\ALT_INV_Reg~283_combout\ <= NOT \Reg~283_combout\;
\ALT_INV_Reg~230_q\ <= NOT \Reg~230_q\;
\ALT_INV_Reg~166_q\ <= NOT \Reg~166_q\;
\ALT_INV_Reg~102_q\ <= NOT \Reg~102_q\;
\ALT_INV_Reg~38_q\ <= NOT \Reg~38_q\;
\ALT_INV_Reg~282_combout\ <= NOT \Reg~282_combout\;
\ALT_INV_Reg~214_q\ <= NOT \Reg~214_q\;
\ALT_INV_Reg~150_q\ <= NOT \Reg~150_q\;
\ALT_INV_Reg~86_q\ <= NOT \Reg~86_q\;
\ALT_INV_Reg~22_q\ <= NOT \Reg~22_q\;
\ALT_INV_Reg~280_combout\ <= NOT \Reg~280_combout\;
\ALT_INV_Reg~261_q\ <= NOT \Reg~261_q\;
\ALT_INV_Reg~245_q\ <= NOT \Reg~245_q\;
\ALT_INV_Reg~229_q\ <= NOT \Reg~229_q\;
\ALT_INV_Reg~213_q\ <= NOT \Reg~213_q\;
\ALT_INV_Reg~279_combout\ <= NOT \Reg~279_combout\;
\ALT_INV_Reg~197_q\ <= NOT \Reg~197_q\;
\ALT_INV_Reg~181_q\ <= NOT \Reg~181_q\;
\ALT_INV_Reg~165_q\ <= NOT \Reg~165_q\;
\ALT_INV_Reg~149_q\ <= NOT \Reg~149_q\;
\ALT_INV_Reg~278_combout\ <= NOT \Reg~278_combout\;
\ALT_INV_Reg~133_q\ <= NOT \Reg~133_q\;
\ALT_INV_Reg~117_q\ <= NOT \Reg~117_q\;
\ALT_INV_Reg~101_q\ <= NOT \Reg~101_q\;
\ALT_INV_Reg~85_q\ <= NOT \Reg~85_q\;
\ALT_INV_Reg~277_combout\ <= NOT \Reg~277_combout\;
\ALT_INV_Reg~69_q\ <= NOT \Reg~69_q\;
\ALT_INV_Reg~53_q\ <= NOT \Reg~53_q\;
\ALT_INV_Reg~37_q\ <= NOT \Reg~37_q\;
\ALT_INV_Reg~21_q\ <= NOT \Reg~21_q\;
\ALT_INV_Reg~47_q\ <= NOT \Reg~47_q\;
\ALT_INV_Reg~31_q\ <= NOT \Reg~31_q\;
\ALT_INV_Reg~325_combout\ <= NOT \Reg~325_combout\;
\ALT_INV_Reg~270_q\ <= NOT \Reg~270_q\;
\ALT_INV_Reg~206_q\ <= NOT \Reg~206_q\;
\ALT_INV_Reg~142_q\ <= NOT \Reg~142_q\;
\ALT_INV_Reg~78_q\ <= NOT \Reg~78_q\;
\ALT_INV_Reg~324_combout\ <= NOT \Reg~324_combout\;
\ALT_INV_Reg~254_q\ <= NOT \Reg~254_q\;
\ALT_INV_Reg~190_q\ <= NOT \Reg~190_q\;
\ALT_INV_Reg~126_q\ <= NOT \Reg~126_q\;
\ALT_INV_Reg~62_q\ <= NOT \Reg~62_q\;
\ALT_INV_Reg~323_combout\ <= NOT \Reg~323_combout\;
\ALT_INV_Reg~238_q\ <= NOT \Reg~238_q\;
\ALT_INV_Reg~174_q\ <= NOT \Reg~174_q\;
\ALT_INV_Reg~110_q\ <= NOT \Reg~110_q\;
\ALT_INV_Reg~46_q\ <= NOT \Reg~46_q\;
\ALT_INV_Reg~322_combout\ <= NOT \Reg~322_combout\;
\ALT_INV_Reg~222_q\ <= NOT \Reg~222_q\;
\ALT_INV_Reg~158_q\ <= NOT \Reg~158_q\;
\ALT_INV_Reg~94_q\ <= NOT \Reg~94_q\;
\ALT_INV_Reg~30_q\ <= NOT \Reg~30_q\;
\ALT_INV_Reg~320_combout\ <= NOT \Reg~320_combout\;
\ALT_INV_Reg~269_q\ <= NOT \Reg~269_q\;
\ALT_INV_Reg~253_q\ <= NOT \Reg~253_q\;
\ALT_INV_Reg~237_q\ <= NOT \Reg~237_q\;
\ALT_INV_Reg~221_q\ <= NOT \Reg~221_q\;
\ALT_INV_Reg~319_combout\ <= NOT \Reg~319_combout\;
\ALT_INV_Reg~205_q\ <= NOT \Reg~205_q\;
\ALT_INV_Reg~189_q\ <= NOT \Reg~189_q\;
\ALT_INV_Reg~173_q\ <= NOT \Reg~173_q\;
\ALT_INV_Reg~157_q\ <= NOT \Reg~157_q\;
\ALT_INV_Reg~318_combout\ <= NOT \Reg~318_combout\;
\ALT_INV_Reg~141_q\ <= NOT \Reg~141_q\;
\ALT_INV_Reg~125_q\ <= NOT \Reg~125_q\;
\ALT_INV_Reg~109_q\ <= NOT \Reg~109_q\;
\ALT_INV_Reg~93_q\ <= NOT \Reg~93_q\;
\ALT_INV_Reg~317_combout\ <= NOT \Reg~317_combout\;
\ALT_INV_Reg~77_q\ <= NOT \Reg~77_q\;
\ALT_INV_Reg~61_q\ <= NOT \Reg~61_q\;
\ALT_INV_Reg~45_q\ <= NOT \Reg~45_q\;
\ALT_INV_Reg~29_q\ <= NOT \Reg~29_q\;
\ALT_INV_Reg~315_combout\ <= NOT \Reg~315_combout\;
\ALT_INV_Reg~268_q\ <= NOT \Reg~268_q\;
\ALT_INV_Reg~204_q\ <= NOT \Reg~204_q\;
\ALT_INV_Reg~140_q\ <= NOT \Reg~140_q\;
\ALT_INV_Reg~76_q\ <= NOT \Reg~76_q\;
\ALT_INV_Reg~314_combout\ <= NOT \Reg~314_combout\;
\ALT_INV_Reg~252_q\ <= NOT \Reg~252_q\;
\ALT_INV_Reg~188_q\ <= NOT \Reg~188_q\;
\ALT_INV_Reg~124_q\ <= NOT \Reg~124_q\;
\ALT_INV_Reg~60_q\ <= NOT \Reg~60_q\;
\ALT_INV_Reg~313_combout\ <= NOT \Reg~313_combout\;
\ALT_INV_Reg~236_q\ <= NOT \Reg~236_q\;
\ALT_INV_Reg~172_q\ <= NOT \Reg~172_q\;
\ALT_INV_Reg~108_q\ <= NOT \Reg~108_q\;
\ALT_INV_Reg~44_q\ <= NOT \Reg~44_q\;
\ALT_INV_Reg~312_combout\ <= NOT \Reg~312_combout\;
\ALT_INV_Reg~220_q\ <= NOT \Reg~220_q\;
\ALT_INV_Reg~156_q\ <= NOT \Reg~156_q\;
\ALT_INV_Reg~92_q\ <= NOT \Reg~92_q\;
\ALT_INV_Reg~28_q\ <= NOT \Reg~28_q\;
\ALT_INV_Reg~310_combout\ <= NOT \Reg~310_combout\;
\ALT_INV_Reg~267_q\ <= NOT \Reg~267_q\;
\ALT_INV_Reg~251_q\ <= NOT \Reg~251_q\;
\ALT_INV_Reg~235_q\ <= NOT \Reg~235_q\;
\ALT_INV_Reg~219_q\ <= NOT \Reg~219_q\;
\ALT_INV_Reg~309_combout\ <= NOT \Reg~309_combout\;
\ALT_INV_Reg~203_q\ <= NOT \Reg~203_q\;
\ALT_INV_Reg~187_q\ <= NOT \Reg~187_q\;
\ALT_INV_Reg~171_q\ <= NOT \Reg~171_q\;
\ALT_INV_Reg~155_q\ <= NOT \Reg~155_q\;
\ALT_INV_Reg~308_combout\ <= NOT \Reg~308_combout\;
\ALT_INV_Reg~139_q\ <= NOT \Reg~139_q\;
\ALT_INV_Reg~123_q\ <= NOT \Reg~123_q\;
\ALT_INV_Reg~107_q\ <= NOT \Reg~107_q\;
\ALT_INV_Reg~91_q\ <= NOT \Reg~91_q\;
\ALT_INV_Reg~307_combout\ <= NOT \Reg~307_combout\;
\ALT_INV_Reg~75_q\ <= NOT \Reg~75_q\;
\ALT_INV_Reg~59_q\ <= NOT \Reg~59_q\;
\ALT_INV_Reg~43_q\ <= NOT \Reg~43_q\;
\ALT_INV_Reg~27_q\ <= NOT \Reg~27_q\;
\ALT_INV_Reg~305_combout\ <= NOT \Reg~305_combout\;
\ALT_INV_Reg~266_q\ <= NOT \Reg~266_q\;
\ALT_INV_Reg~202_q\ <= NOT \Reg~202_q\;
\ALT_INV_Reg~138_q\ <= NOT \Reg~138_q\;
\ALT_INV_Reg~74_q\ <= NOT \Reg~74_q\;
\ALT_INV_Reg~304_combout\ <= NOT \Reg~304_combout\;
\ALT_INV_Reg~250_q\ <= NOT \Reg~250_q\;
\ALT_INV_Reg~186_q\ <= NOT \Reg~186_q\;
\ALT_INV_Reg~122_q\ <= NOT \Reg~122_q\;
\ALT_INV_Reg~58_q\ <= NOT \Reg~58_q\;
\ALT_INV_Reg~303_combout\ <= NOT \Reg~303_combout\;
\ALT_INV_Reg~234_q\ <= NOT \Reg~234_q\;
\ALT_INV_Reg~170_q\ <= NOT \Reg~170_q\;
\ALT_INV_Reg~106_q\ <= NOT \Reg~106_q\;
\ALT_INV_Reg~42_q\ <= NOT \Reg~42_q\;
\ALT_INV_Reg~302_combout\ <= NOT \Reg~302_combout\;
\ALT_INV_Reg~218_q\ <= NOT \Reg~218_q\;
\ALT_INV_Reg~154_q\ <= NOT \Reg~154_q\;
\ALT_INV_Reg~90_q\ <= NOT \Reg~90_q\;
\ALT_INV_Reg~26_q\ <= NOT \Reg~26_q\;
\ALT_INV_Reg~300_combout\ <= NOT \Reg~300_combout\;
\ALT_INV_Reg~265_q\ <= NOT \Reg~265_q\;
\ALT_INV_Reg~249_q\ <= NOT \Reg~249_q\;
\ALT_INV_Reg~233_q\ <= NOT \Reg~233_q\;
\ALT_INV_Reg~217_q\ <= NOT \Reg~217_q\;
\ALT_INV_Reg~299_combout\ <= NOT \Reg~299_combout\;
\ALT_INV_Reg~201_q\ <= NOT \Reg~201_q\;
\ALT_INV_Reg~185_q\ <= NOT \Reg~185_q\;
\ALT_INV_Reg~169_q\ <= NOT \Reg~169_q\;
\ALT_INV_Reg~153_q\ <= NOT \Reg~153_q\;
\ALT_INV_Reg~298_combout\ <= NOT \Reg~298_combout\;
\ALT_INV_Reg~137_q\ <= NOT \Reg~137_q\;
\ALT_INV_Reg~121_q\ <= NOT \Reg~121_q\;
\ALT_INV_Reg~105_q\ <= NOT \Reg~105_q\;
\ALT_INV_Reg~89_q\ <= NOT \Reg~89_q\;
\ALT_INV_Reg~297_combout\ <= NOT \Reg~297_combout\;
\ALT_INV_Reg~73_q\ <= NOT \Reg~73_q\;
\ALT_INV_Reg~57_q\ <= NOT \Reg~57_q\;
\ALT_INV_Reg~41_q\ <= NOT \Reg~41_q\;
\ALT_INV_Reg~359_combout\ <= NOT \Reg~359_combout\;
\ALT_INV_Reg~358_combout\ <= NOT \Reg~358_combout\;
\ALT_INV_Reg~357_combout\ <= NOT \Reg~357_combout\;
\ALT_INV_Reg~355_combout\ <= NOT \Reg~355_combout\;
\ALT_INV_Reg~276_q\ <= NOT \Reg~276_q\;
\ALT_INV_Reg~212_q\ <= NOT \Reg~212_q\;
\ALT_INV_Reg~148_q\ <= NOT \Reg~148_q\;
\ALT_INV_Reg~84_q\ <= NOT \Reg~84_q\;
\ALT_INV_Reg~354_combout\ <= NOT \Reg~354_combout\;
\ALT_INV_Reg~260_q\ <= NOT \Reg~260_q\;
\ALT_INV_Reg~196_q\ <= NOT \Reg~196_q\;
\ALT_INV_Reg~132_q\ <= NOT \Reg~132_q\;
\ALT_INV_Reg~68_q\ <= NOT \Reg~68_q\;
\ALT_INV_Reg~353_combout\ <= NOT \Reg~353_combout\;
\ALT_INV_Reg~244_q\ <= NOT \Reg~244_q\;
\ALT_INV_Reg~180_q\ <= NOT \Reg~180_q\;
\ALT_INV_Reg~116_q\ <= NOT \Reg~116_q\;
\ALT_INV_Reg~52_q\ <= NOT \Reg~52_q\;
\ALT_INV_Reg~352_combout\ <= NOT \Reg~352_combout\;
\ALT_INV_Reg~228_q\ <= NOT \Reg~228_q\;
\ALT_INV_Reg~164_q\ <= NOT \Reg~164_q\;
\ALT_INV_Reg~100_q\ <= NOT \Reg~100_q\;
\ALT_INV_Reg~36_q\ <= NOT \Reg~36_q\;
\ALT_INV_Reg~350_combout\ <= NOT \Reg~350_combout\;
\ALT_INV_Reg~275_q\ <= NOT \Reg~275_q\;
\ALT_INV_Reg~259_q\ <= NOT \Reg~259_q\;
\ALT_INV_Reg~243_q\ <= NOT \Reg~243_q\;
\ALT_INV_Reg~227_q\ <= NOT \Reg~227_q\;
\ALT_INV_Reg~349_combout\ <= NOT \Reg~349_combout\;
\ALT_INV_Reg~211_q\ <= NOT \Reg~211_q\;
\ALT_INV_Reg~195_q\ <= NOT \Reg~195_q\;
\ALT_INV_Reg~179_q\ <= NOT \Reg~179_q\;
\ALT_INV_Reg~163_q\ <= NOT \Reg~163_q\;
\ALT_INV_Reg~348_combout\ <= NOT \Reg~348_combout\;
\ALT_INV_Reg~147_q\ <= NOT \Reg~147_q\;
\ALT_INV_Reg~131_q\ <= NOT \Reg~131_q\;
\ALT_INV_Reg~115_q\ <= NOT \Reg~115_q\;
\ALT_INV_Reg~99_q\ <= NOT \Reg~99_q\;
\ALT_INV_Reg~347_combout\ <= NOT \Reg~347_combout\;
\ALT_INV_Reg~83_q\ <= NOT \Reg~83_q\;
\ALT_INV_Reg~67_q\ <= NOT \Reg~67_q\;
\ALT_INV_Reg~51_q\ <= NOT \Reg~51_q\;
\ALT_INV_Reg~35_q\ <= NOT \Reg~35_q\;
\ALT_INV_Reg~345_combout\ <= NOT \Reg~345_combout\;
\ALT_INV_Reg~274_q\ <= NOT \Reg~274_q\;
\ALT_INV_Reg~210_q\ <= NOT \Reg~210_q\;
\ALT_INV_Reg~146_q\ <= NOT \Reg~146_q\;
\ALT_INV_Reg~82_q\ <= NOT \Reg~82_q\;
\ALT_INV_Reg~344_combout\ <= NOT \Reg~344_combout\;
\ALT_INV_Reg~258_q\ <= NOT \Reg~258_q\;
\ALT_INV_Reg~194_q\ <= NOT \Reg~194_q\;
\ALT_INV_Reg~130_q\ <= NOT \Reg~130_q\;
\ALT_INV_Reg~66_q\ <= NOT \Reg~66_q\;
\ALT_INV_Reg~343_combout\ <= NOT \Reg~343_combout\;
\ALT_INV_Reg~242_q\ <= NOT \Reg~242_q\;
\ALT_INV_Reg~178_q\ <= NOT \Reg~178_q\;
\ALT_INV_Reg~114_q\ <= NOT \Reg~114_q\;
\ALT_INV_Reg~50_q\ <= NOT \Reg~50_q\;
\ALT_INV_Reg~342_combout\ <= NOT \Reg~342_combout\;
\ALT_INV_Reg~226_q\ <= NOT \Reg~226_q\;
\ALT_INV_Reg~162_q\ <= NOT \Reg~162_q\;
\ALT_INV_Reg~98_q\ <= NOT \Reg~98_q\;
\ALT_INV_Reg~34_q\ <= NOT \Reg~34_q\;
\ALT_INV_Reg~340_combout\ <= NOT \Reg~340_combout\;
\ALT_INV_Reg~273_q\ <= NOT \Reg~273_q\;
\ALT_INV_Reg~257_q\ <= NOT \Reg~257_q\;
\ALT_INV_Reg~241_q\ <= NOT \Reg~241_q\;
\ALT_INV_Reg~225_q\ <= NOT \Reg~225_q\;
\ALT_INV_Reg~339_combout\ <= NOT \Reg~339_combout\;
\ALT_INV_Reg~209_q\ <= NOT \Reg~209_q\;
\ALT_INV_Reg~193_q\ <= NOT \Reg~193_q\;
\ALT_INV_Reg~177_q\ <= NOT \Reg~177_q\;
\ALT_INV_Reg~161_q\ <= NOT \Reg~161_q\;
\ALT_INV_Reg~338_combout\ <= NOT \Reg~338_combout\;
\ALT_INV_Reg~145_q\ <= NOT \Reg~145_q\;
\ALT_INV_Reg~129_q\ <= NOT \Reg~129_q\;
\ALT_INV_Reg~113_q\ <= NOT \Reg~113_q\;
\ALT_INV_Reg~97_q\ <= NOT \Reg~97_q\;
\ALT_INV_Reg~337_combout\ <= NOT \Reg~337_combout\;
\ALT_INV_Reg~81_q\ <= NOT \Reg~81_q\;
\ALT_INV_Reg~65_q\ <= NOT \Reg~65_q\;
\ALT_INV_Reg~49_q\ <= NOT \Reg~49_q\;
\ALT_INV_Reg~33_q\ <= NOT \Reg~33_q\;
\ALT_INV_Reg~335_combout\ <= NOT \Reg~335_combout\;
\ALT_INV_Reg~272_q\ <= NOT \Reg~272_q\;
\ALT_INV_Reg~208_q\ <= NOT \Reg~208_q\;
\ALT_INV_Reg~144_q\ <= NOT \Reg~144_q\;
\ALT_INV_Reg~80_q\ <= NOT \Reg~80_q\;
\ALT_INV_Reg~334_combout\ <= NOT \Reg~334_combout\;
\ALT_INV_Reg~256_q\ <= NOT \Reg~256_q\;
\ALT_INV_Reg~192_q\ <= NOT \Reg~192_q\;
\ALT_INV_Reg~128_q\ <= NOT \Reg~128_q\;
\ALT_INV_Reg~64_q\ <= NOT \Reg~64_q\;
\ALT_INV_Reg~333_combout\ <= NOT \Reg~333_combout\;
\ALT_INV_Reg~240_q\ <= NOT \Reg~240_q\;
\ALT_INV_Reg~176_q\ <= NOT \Reg~176_q\;
\ALT_INV_Reg~112_q\ <= NOT \Reg~112_q\;
\ALT_INV_Reg~48_q\ <= NOT \Reg~48_q\;
\ALT_INV_Reg~332_combout\ <= NOT \Reg~332_combout\;
\ALT_INV_Reg~224_q\ <= NOT \Reg~224_q\;
\ALT_INV_Reg~160_q\ <= NOT \Reg~160_q\;
\ALT_INV_Reg~96_q\ <= NOT \Reg~96_q\;
\ALT_INV_Reg~32_q\ <= NOT \Reg~32_q\;
\ALT_INV_Reg~330_combout\ <= NOT \Reg~330_combout\;
\ALT_INV_Reg~271_q\ <= NOT \Reg~271_q\;
\ALT_INV_Reg~255_q\ <= NOT \Reg~255_q\;
\ALT_INV_Reg~239_q\ <= NOT \Reg~239_q\;
\ALT_INV_Reg~223_q\ <= NOT \Reg~223_q\;
\ALT_INV_Reg~329_combout\ <= NOT \Reg~329_combout\;
\ALT_INV_Reg~207_q\ <= NOT \Reg~207_q\;
\ALT_INV_Reg~191_q\ <= NOT \Reg~191_q\;
\ALT_INV_Reg~175_q\ <= NOT \Reg~175_q\;
\ALT_INV_Reg~159_q\ <= NOT \Reg~159_q\;
\ALT_INV_Reg~328_combout\ <= NOT \Reg~328_combout\;
\ALT_INV_Reg~143_q\ <= NOT \Reg~143_q\;
\ALT_INV_Reg~127_q\ <= NOT \Reg~127_q\;
\ALT_INV_Reg~111_q\ <= NOT \Reg~111_q\;
\ALT_INV_Reg~95_q\ <= NOT \Reg~95_q\;
\ALT_INV_Reg~327_combout\ <= NOT \Reg~327_combout\;
\ALT_INV_Reg~79_q\ <= NOT \Reg~79_q\;
\ALT_INV_Reg~63_q\ <= NOT \Reg~63_q\;
\ALT_INV_Reg~435_combout\ <= NOT \Reg~435_combout\;
\ALT_INV_Reg~434_combout\ <= NOT \Reg~434_combout\;
\ALT_INV_Reg~433_combout\ <= NOT \Reg~433_combout\;
\ALT_INV_Reg~432_combout\ <= NOT \Reg~432_combout\;
\ALT_INV_Reg~430_combout\ <= NOT \Reg~430_combout\;
\ALT_INV_Reg~429_combout\ <= NOT \Reg~429_combout\;
\ALT_INV_Reg~428_combout\ <= NOT \Reg~428_combout\;
\ALT_INV_Reg~427_combout\ <= NOT \Reg~427_combout\;
\ALT_INV_Reg~425_combout\ <= NOT \Reg~425_combout\;
\ALT_INV_Reg~424_combout\ <= NOT \Reg~424_combout\;
\ALT_INV_Reg~423_combout\ <= NOT \Reg~423_combout\;
\ALT_INV_Reg~422_combout\ <= NOT \Reg~422_combout\;
\ALT_INV_Reg~420_combout\ <= NOT \Reg~420_combout\;
\ALT_INV_Reg~419_combout\ <= NOT \Reg~419_combout\;
\ALT_INV_Reg~418_combout\ <= NOT \Reg~418_combout\;
\ALT_INV_Reg~417_combout\ <= NOT \Reg~417_combout\;
\ALT_INV_Reg~415_combout\ <= NOT \Reg~415_combout\;
\ALT_INV_Reg~414_combout\ <= NOT \Reg~414_combout\;
\ALT_INV_Reg~413_combout\ <= NOT \Reg~413_combout\;
\ALT_INV_Reg~412_combout\ <= NOT \Reg~412_combout\;
\ALT_INV_Reg~410_combout\ <= NOT \Reg~410_combout\;
\ALT_INV_Reg~409_combout\ <= NOT \Reg~409_combout\;
\ALT_INV_Reg~408_combout\ <= NOT \Reg~408_combout\;
\ALT_INV_Reg~407_combout\ <= NOT \Reg~407_combout\;
\ALT_INV_Reg~405_combout\ <= NOT \Reg~405_combout\;
\ALT_INV_Reg~404_combout\ <= NOT \Reg~404_combout\;
\ALT_INV_Reg~403_combout\ <= NOT \Reg~403_combout\;
\ALT_INV_Reg~402_combout\ <= NOT \Reg~402_combout\;
\ALT_INV_Reg~400_combout\ <= NOT \Reg~400_combout\;
\ALT_INV_Reg~399_combout\ <= NOT \Reg~399_combout\;
\ALT_INV_Reg~398_combout\ <= NOT \Reg~398_combout\;
\ALT_INV_Reg~397_combout\ <= NOT \Reg~397_combout\;
\ALT_INV_Reg~395_combout\ <= NOT \Reg~395_combout\;
\ALT_INV_Reg~394_combout\ <= NOT \Reg~394_combout\;
\ALT_INV_Reg~393_combout\ <= NOT \Reg~393_combout\;
\ALT_INV_Reg~392_combout\ <= NOT \Reg~392_combout\;
\ALT_INV_Reg~390_combout\ <= NOT \Reg~390_combout\;
\ALT_INV_Reg~389_combout\ <= NOT \Reg~389_combout\;
\ALT_INV_Reg~388_combout\ <= NOT \Reg~388_combout\;
\ALT_INV_Reg~387_combout\ <= NOT \Reg~387_combout\;
\ALT_INV_Reg~385_combout\ <= NOT \Reg~385_combout\;
\ALT_INV_Reg~384_combout\ <= NOT \Reg~384_combout\;
\ALT_INV_Reg~383_combout\ <= NOT \Reg~383_combout\;
\ALT_INV_Reg~382_combout\ <= NOT \Reg~382_combout\;
\ALT_INV_Reg~380_combout\ <= NOT \Reg~380_combout\;
\ALT_INV_Reg~379_combout\ <= NOT \Reg~379_combout\;
\ALT_INV_Reg~378_combout\ <= NOT \Reg~378_combout\;
\ALT_INV_Reg~377_combout\ <= NOT \Reg~377_combout\;
\ALT_INV_Reg~375_combout\ <= NOT \Reg~375_combout\;
\ALT_INV_Reg~374_combout\ <= NOT \Reg~374_combout\;
\ALT_INV_Reg~373_combout\ <= NOT \Reg~373_combout\;
\ALT_INV_Reg~372_combout\ <= NOT \Reg~372_combout\;
\ALT_INV_Reg~370_combout\ <= NOT \Reg~370_combout\;
\ALT_INV_Reg~369_combout\ <= NOT \Reg~369_combout\;
\ALT_INV_Reg~368_combout\ <= NOT \Reg~368_combout\;
\ALT_INV_Reg~367_combout\ <= NOT \Reg~367_combout\;
\ALT_INV_Reg~365_combout\ <= NOT \Reg~365_combout\;
\ALT_INV_Reg~364_combout\ <= NOT \Reg~364_combout\;
\ALT_INV_Reg~363_combout\ <= NOT \Reg~363_combout\;
\ALT_INV_Reg~362_combout\ <= NOT \Reg~362_combout\;
\ALT_INV_Reg~360_combout\ <= NOT \Reg~360_combout\;
\ALT_INV_Data[12]~input_o\ <= NOT \Data[12]~input_o\;
\ALT_INV_Data[8]~input_o\ <= NOT \Data[8]~input_o\;
\ALT_INV_Data[4]~input_o\ <= NOT \Data[4]~input_o\;
\ALT_INV_RegDst[0]~input_o\ <= NOT \RegDst[0]~input_o\;
\ALT_INV_EscReg~input_o\ <= NOT \EscReg~input_o\;
\ALT_INV_RegDst[3]~input_o\ <= NOT \RegDst[3]~input_o\;
\ALT_INV_RegDst[2]~input_o\ <= NOT \RegDst[2]~input_o\;
\ALT_INV_RegDst[1]~input_o\ <= NOT \RegDst[1]~input_o\;
\ALT_INV_Data[0]~input_o\ <= NOT \Data[0]~input_o\;
\ALT_INV_LeReg2[3]~input_o\ <= NOT \LeReg2[3]~input_o\;
\ALT_INV_LeReg2[2]~input_o\ <= NOT \LeReg2[2]~input_o\;
\ALT_INV_LeReg2[1]~input_o\ <= NOT \LeReg2[1]~input_o\;
\ALT_INV_LeReg2[0]~input_o\ <= NOT \LeReg2[0]~input_o\;
\ALT_INV_LeReg1[3]~input_o\ <= NOT \LeReg1[3]~input_o\;
\ALT_INV_LeReg1[2]~input_o\ <= NOT \LeReg1[2]~input_o\;
\ALT_INV_LeReg1[1]~input_o\ <= NOT \LeReg1[1]~input_o\;
\ALT_INV_LeReg1[0]~input_o\ <= NOT \LeReg1[0]~input_o\;

\RegA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~281_combout\,
	devoe => ww_devoe,
	o => \RegA[0]~output_o\);

\RegA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~286_combout\,
	devoe => ww_devoe,
	o => \RegA[1]~output_o\);

\RegA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~291_combout\,
	devoe => ww_devoe,
	o => \RegA[2]~output_o\);

\RegA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~296_combout\,
	devoe => ww_devoe,
	o => \RegA[3]~output_o\);

\RegA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~301_combout\,
	devoe => ww_devoe,
	o => \RegA[4]~output_o\);

\RegA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~306_combout\,
	devoe => ww_devoe,
	o => \RegA[5]~output_o\);

\RegA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~311_combout\,
	devoe => ww_devoe,
	o => \RegA[6]~output_o\);

\RegA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~316_combout\,
	devoe => ww_devoe,
	o => \RegA[7]~output_o\);

\RegA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~321_combout\,
	devoe => ww_devoe,
	o => \RegA[8]~output_o\);

\RegA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~326_combout\,
	devoe => ww_devoe,
	o => \RegA[9]~output_o\);

\RegA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~331_combout\,
	devoe => ww_devoe,
	o => \RegA[10]~output_o\);

\RegA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~336_combout\,
	devoe => ww_devoe,
	o => \RegA[11]~output_o\);

\RegA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~341_combout\,
	devoe => ww_devoe,
	o => \RegA[12]~output_o\);

\RegA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~346_combout\,
	devoe => ww_devoe,
	o => \RegA[13]~output_o\);

\RegA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~351_combout\,
	devoe => ww_devoe,
	o => \RegA[14]~output_o\);

\RegA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~356_combout\,
	devoe => ww_devoe,
	o => \RegA[15]~output_o\);

\RegB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~361_combout\,
	devoe => ww_devoe,
	o => \RegB[0]~output_o\);

\RegB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~366_combout\,
	devoe => ww_devoe,
	o => \RegB[1]~output_o\);

\RegB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~371_combout\,
	devoe => ww_devoe,
	o => \RegB[2]~output_o\);

\RegB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~376_combout\,
	devoe => ww_devoe,
	o => \RegB[3]~output_o\);

\RegB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~381_combout\,
	devoe => ww_devoe,
	o => \RegB[4]~output_o\);

\RegB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~386_combout\,
	devoe => ww_devoe,
	o => \RegB[5]~output_o\);

\RegB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~391_combout\,
	devoe => ww_devoe,
	o => \RegB[6]~output_o\);

\RegB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~396_combout\,
	devoe => ww_devoe,
	o => \RegB[7]~output_o\);

\RegB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~401_combout\,
	devoe => ww_devoe,
	o => \RegB[8]~output_o\);

\RegB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~406_combout\,
	devoe => ww_devoe,
	o => \RegB[9]~output_o\);

\RegB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~411_combout\,
	devoe => ww_devoe,
	o => \RegB[10]~output_o\);

\RegB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~416_combout\,
	devoe => ww_devoe,
	o => \RegB[11]~output_o\);

\RegB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~421_combout\,
	devoe => ww_devoe,
	o => \RegB[12]~output_o\);

\RegB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~426_combout\,
	devoe => ww_devoe,
	o => \RegB[13]~output_o\);

\RegB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~431_combout\,
	devoe => ww_devoe,
	o => \RegB[14]~output_o\);

\RegB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg~436_combout\,
	devoe => ww_devoe,
	o => \RegB[15]~output_o\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\Data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(0),
	o => \Data[0]~input_o\);

\RegDst[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegDst(1),
	o => \RegDst[1]~input_o\);

\RegDst[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegDst(2),
	o => \RegDst[2]~input_o\);

\RegDst[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegDst(3),
	o => \RegDst[3]~input_o\);

\EscReg~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EscReg,
	o => \EscReg~input_o\);

\RegDst[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegDst(0),
	o => \RegDst[0]~input_o\);

\Reg~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~437_combout\ = ( !\RegDst[0]~input_o\ & ( (!\RegDst[1]~input_o\ & (!\RegDst[2]~input_o\ & (!\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~437_combout\);

\Reg~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[0]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~21_q\);

\Reg~453\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~453_combout\ = !\Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~453_combout\);

\Reg~438\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~438_combout\ = ( \RegDst[0]~input_o\ & ( (!\RegDst[1]~input_o\ & (!\RegDst[2]~input_o\ & (!\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~438_combout\);

\Reg~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~453_combout\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~37_q\);

\Reg~439\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~439_combout\ = ( !\RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (!\RegDst[2]~input_o\ & (!\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~439_combout\);

\Reg~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[0]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~53_q\);

\Reg~454\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~454_combout\ = !\Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~454_combout\);

\Reg~440\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~440_combout\ = ( \RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (!\RegDst[2]~input_o\ & (!\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~440_combout\);

\Reg~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~454_combout\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~69_q\);

\LeReg1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg1(0),
	o => \LeReg1[0]~input_o\);

\LeReg1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg1(1),
	o => \LeReg1[1]~input_o\);

\Reg~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~277_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~69_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~53_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~37_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & 
-- ( !\LeReg1[1]~input_o\ & ( \Reg~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~21_q\,
	datab => \ALT_INV_Reg~37_q\,
	datac => \ALT_INV_Reg~53_q\,
	datad => \ALT_INV_Reg~69_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~277_combout\);

\Reg~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~441_combout\ = ( !\RegDst[0]~input_o\ & ( (!\RegDst[1]~input_o\ & (\RegDst[2]~input_o\ & (!\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~441_combout\);

\Reg~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[0]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~85_q\);

\Reg~455\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~455_combout\ = !\Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~455_combout\);

\Reg~442\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~442_combout\ = ( \RegDst[0]~input_o\ & ( (!\RegDst[1]~input_o\ & (\RegDst[2]~input_o\ & (!\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~442_combout\);

\Reg~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~455_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~101_q\);

\Reg~443\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~443_combout\ = ( !\RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (\RegDst[2]~input_o\ & (!\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~443_combout\);

\Reg~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[0]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~117_q\);

\Reg~456\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~456_combout\ = !\Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~456_combout\);

\Reg~444\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~444_combout\ = ( \RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (\RegDst[2]~input_o\ & (!\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~444_combout\);

\Reg~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~456_combout\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~133_q\);

\Reg~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~278_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~133_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~117_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~101_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~85_q\,
	datab => \ALT_INV_Reg~101_q\,
	datac => \ALT_INV_Reg~117_q\,
	datad => \ALT_INV_Reg~133_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~278_combout\);

\Reg~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~445_combout\ = ( !\RegDst[0]~input_o\ & ( (!\RegDst[1]~input_o\ & (!\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~445_combout\);

\Reg~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[0]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~149_q\);

\Reg~457\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~457_combout\ = !\Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~457_combout\);

\Reg~446\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~446_combout\ = ( \RegDst[0]~input_o\ & ( (!\RegDst[1]~input_o\ & (!\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~446_combout\);

\Reg~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~457_combout\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~165_q\);

\Reg~447\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~447_combout\ = ( !\RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (!\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~447_combout\);

\Reg~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[0]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~181_q\);

\Reg~458\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~458_combout\ = !\Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~458_combout\);

\Reg~448\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~448_combout\ = ( \RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (!\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~448_combout\);

\Reg~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~458_combout\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~197_q\);

\Reg~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~279_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~197_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~181_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~165_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~149_q\,
	datab => \ALT_INV_Reg~165_q\,
	datac => \ALT_INV_Reg~181_q\,
	datad => \ALT_INV_Reg~197_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~279_combout\);

\Reg~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~449_combout\ = ( !\RegDst[0]~input_o\ & ( (!\RegDst[1]~input_o\ & (\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~449_combout\);

\Reg~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[0]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~213_q\);

\Reg~459\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~459_combout\ = !\Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~459_combout\);

\Reg~450\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~450_combout\ = ( \RegDst[0]~input_o\ & ( (!\RegDst[1]~input_o\ & (\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~450_combout\);

\Reg~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~459_combout\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~229_q\);

\Reg~451\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~451_combout\ = ( !\RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~451_combout\);

\Reg~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[0]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~245_q\);

\Reg~460\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~460_combout\ = !\Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~460_combout\);

\Reg~452\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~452_combout\ = ( \RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[2]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~452_combout\);

\Reg~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~460_combout\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~261_q\);

\Reg~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~280_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~261_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~245_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~229_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~213_q\,
	datab => \ALT_INV_Reg~229_q\,
	datac => \ALT_INV_Reg~245_q\,
	datad => \ALT_INV_Reg~261_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~280_combout\);

\LeReg1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg1(2),
	o => \LeReg1[2]~input_o\);

\LeReg1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg1(3),
	o => \LeReg1[3]~input_o\);

\Reg~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~281_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~280_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~279_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~278_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~277_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~277_combout\,
	datab => \ALT_INV_Reg~278_combout\,
	datac => \ALT_INV_Reg~279_combout\,
	datad => \ALT_INV_Reg~280_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~281_combout\);

\Data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(1),
	o => \Data[1]~input_o\);

\Reg~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~22_q\);

\Reg~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~86_q\);

\Reg~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~150_q\);

\Reg~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~214_q\);

\Reg~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~282_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~214_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~150_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~86_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & 
-- ( !\LeReg1[3]~input_o\ & ( \Reg~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~22_q\,
	datab => \ALT_INV_Reg~86_q\,
	datac => \ALT_INV_Reg~150_q\,
	datad => \ALT_INV_Reg~214_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~282_combout\);

\Reg~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~38_q\);

\Reg~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~102_q\);

\Reg~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~166_q\);

\Reg~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~230_q\);

\Reg~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~283_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~230_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~166_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~102_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~38_q\,
	datab => \ALT_INV_Reg~102_q\,
	datac => \ALT_INV_Reg~166_q\,
	datad => \ALT_INV_Reg~230_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~283_combout\);

\Reg~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~54_q\);

\Reg~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~118_q\);

\Reg~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~182_q\);

\Reg~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~246_q\);

\Reg~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~284_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~246_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~182_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~118_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~54_q\,
	datab => \ALT_INV_Reg~118_q\,
	datac => \ALT_INV_Reg~182_q\,
	datad => \ALT_INV_Reg~246_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~284_combout\);

\Reg~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~70_q\);

\Reg~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~134_q\);

\Reg~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~198_q\);

\Reg~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[1]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~262_q\);

\Reg~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~285_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~262_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~198_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~134_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~70_q\,
	datab => \ALT_INV_Reg~134_q\,
	datac => \ALT_INV_Reg~198_q\,
	datad => \ALT_INV_Reg~262_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~285_combout\);

\Reg~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~286_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~285_combout\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~284_combout\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~283_combout\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~282_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~282_combout\,
	datab => \ALT_INV_Reg~283_combout\,
	datac => \ALT_INV_Reg~284_combout\,
	datad => \ALT_INV_Reg~285_combout\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~286_combout\);

\Data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(2),
	o => \Data[2]~input_o\);

\Reg~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~23_q\);

\Reg~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~39_q\);

\Reg~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~55_q\);

\Reg~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~71_q\);

\Reg~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~287_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~71_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~55_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~39_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( 
-- !\LeReg1[1]~input_o\ & ( \Reg~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~23_q\,
	datab => \ALT_INV_Reg~39_q\,
	datac => \ALT_INV_Reg~55_q\,
	datad => \ALT_INV_Reg~71_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~287_combout\);

\Reg~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~87_q\);

\Reg~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~103_q\);

\Reg~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~119_q\);

\Reg~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~135_q\);

\Reg~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~288_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~135_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~119_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~103_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~87_q\,
	datab => \ALT_INV_Reg~103_q\,
	datac => \ALT_INV_Reg~119_q\,
	datad => \ALT_INV_Reg~135_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~288_combout\);

\Reg~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~151_q\);

\Reg~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~167_q\);

\Reg~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~183_q\);

\Reg~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~199_q\);

\Reg~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~289_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~199_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~183_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~167_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~151_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~151_q\,
	datab => \ALT_INV_Reg~167_q\,
	datac => \ALT_INV_Reg~183_q\,
	datad => \ALT_INV_Reg~199_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~289_combout\);

\Reg~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~215_q\);

\Reg~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~231_q\);

\Reg~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~247_q\);

\Reg~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[2]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~263_q\);

\Reg~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~290_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~263_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~247_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~231_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~215_q\,
	datab => \ALT_INV_Reg~231_q\,
	datac => \ALT_INV_Reg~247_q\,
	datad => \ALT_INV_Reg~263_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~290_combout\);

\Reg~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~291_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~290_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~289_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~288_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~287_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~287_combout\,
	datab => \ALT_INV_Reg~288_combout\,
	datac => \ALT_INV_Reg~289_combout\,
	datad => \ALT_INV_Reg~290_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~291_combout\);

\Data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(3),
	o => \Data[3]~input_o\);

\Reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~24_q\);

\Reg~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~88_q\);

\Reg~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~152_q\);

\Reg~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~216_q\);

\Reg~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~292_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~216_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~152_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~88_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & 
-- ( !\LeReg1[3]~input_o\ & ( \Reg~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~24_q\,
	datab => \ALT_INV_Reg~88_q\,
	datac => \ALT_INV_Reg~152_q\,
	datad => \ALT_INV_Reg~216_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~292_combout\);

\Reg~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~40_q\);

\Reg~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~104_q\);

\Reg~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~168_q\);

\Reg~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~232_q\);

\Reg~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~293_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~232_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~168_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~104_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~40_q\,
	datab => \ALT_INV_Reg~104_q\,
	datac => \ALT_INV_Reg~168_q\,
	datad => \ALT_INV_Reg~232_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~293_combout\);

\Reg~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~56_q\);

\Reg~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~120_q\);

\Reg~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~184_q\);

\Reg~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~248_q\);

\Reg~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~294_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~248_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~184_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~120_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~56_q\,
	datab => \ALT_INV_Reg~120_q\,
	datac => \ALT_INV_Reg~184_q\,
	datad => \ALT_INV_Reg~248_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~294_combout\);

\Reg~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~72_q\);

\Reg~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~136_q\);

\Reg~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~200_q\);

\Reg~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[3]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~264_q\);

\Reg~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~295_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~264_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~200_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~136_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~72_q\,
	datab => \ALT_INV_Reg~136_q\,
	datac => \ALT_INV_Reg~200_q\,
	datad => \ALT_INV_Reg~264_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~295_combout\);

\Reg~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~296_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~295_combout\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~294_combout\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~293_combout\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~292_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~292_combout\,
	datab => \ALT_INV_Reg~293_combout\,
	datac => \ALT_INV_Reg~294_combout\,
	datad => \ALT_INV_Reg~295_combout\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~296_combout\);

\Data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(4),
	o => \Data[4]~input_o\);

\Reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[4]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~25_q\);

\Reg~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[4]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~41_q\);

\Reg~461\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~461_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~461_combout\);

\Reg~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~461_combout\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~57_q\);

\Reg~462\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~462_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~462_combout\);

\Reg~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~462_combout\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~73_q\);

\Reg~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~297_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~73_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~57_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~41_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & 
-- ( !\LeReg1[1]~input_o\ & ( \Reg~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~25_q\,
	datab => \ALT_INV_Reg~41_q\,
	datac => \ALT_INV_Reg~57_q\,
	datad => \ALT_INV_Reg~73_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~297_combout\);

\Reg~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[4]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~89_q\);

\Reg~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[4]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~105_q\);

\Reg~463\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~463_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~463_combout\);

\Reg~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~463_combout\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~121_q\);

\Reg~464\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~464_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~464_combout\);

\Reg~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~464_combout\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~137_q\);

\Reg~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~298_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~137_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~121_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~105_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~89_q\,
	datab => \ALT_INV_Reg~105_q\,
	datac => \ALT_INV_Reg~121_q\,
	datad => \ALT_INV_Reg~137_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~298_combout\);

\Reg~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[4]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~153_q\);

\Reg~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[4]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~169_q\);

\Reg~465\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~465_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~465_combout\);

\Reg~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~465_combout\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~185_q\);

\Reg~466\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~466_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~466_combout\);

\Reg~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~466_combout\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~201_q\);

\Reg~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~299_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~201_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~185_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~169_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~153_q\,
	datab => \ALT_INV_Reg~169_q\,
	datac => \ALT_INV_Reg~185_q\,
	datad => \ALT_INV_Reg~201_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~299_combout\);

\Reg~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[4]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~217_q\);

\Reg~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[4]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~233_q\);

\Reg~467\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~467_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~467_combout\);

\Reg~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~467_combout\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~249_q\);

\Reg~468\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~468_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~468_combout\);

\Reg~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~468_combout\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~265_q\);

\Reg~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~300_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~265_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~249_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~233_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~217_q\,
	datab => \ALT_INV_Reg~233_q\,
	datac => \ALT_INV_Reg~249_q\,
	datad => \ALT_INV_Reg~265_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~300_combout\);

\Reg~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~301_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~300_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~299_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~298_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~297_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~297_combout\,
	datab => \ALT_INV_Reg~298_combout\,
	datac => \ALT_INV_Reg~299_combout\,
	datad => \ALT_INV_Reg~300_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~301_combout\);

\Data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(5),
	o => \Data[5]~input_o\);

\Reg~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~26_q\);

\Reg~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~90_q\);

\Reg~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~154_q\);

\Reg~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~218_q\);

\Reg~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~302_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~218_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~154_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~90_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & 
-- ( !\LeReg1[3]~input_o\ & ( \Reg~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~26_q\,
	datab => \ALT_INV_Reg~90_q\,
	datac => \ALT_INV_Reg~154_q\,
	datad => \ALT_INV_Reg~218_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~302_combout\);

\Reg~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~42_q\);

\Reg~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~106_q\);

\Reg~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~170_q\);

\Reg~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~234_q\);

\Reg~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~303_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~234_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~170_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~106_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~42_q\,
	datab => \ALT_INV_Reg~106_q\,
	datac => \ALT_INV_Reg~170_q\,
	datad => \ALT_INV_Reg~234_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~303_combout\);

\Reg~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~58_q\);

\Reg~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~122_q\);

\Reg~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~186_q\);

\Reg~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~250_q\);

\Reg~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~304_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~250_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~186_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~122_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~58_q\,
	datab => \ALT_INV_Reg~122_q\,
	datac => \ALT_INV_Reg~186_q\,
	datad => \ALT_INV_Reg~250_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~304_combout\);

\Reg~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~74_q\);

\Reg~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~138_q\);

\Reg~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~202_q\);

\Reg~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[5]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~266_q\);

\Reg~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~305_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~266_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~202_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~138_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~74_q\,
	datab => \ALT_INV_Reg~138_q\,
	datac => \ALT_INV_Reg~202_q\,
	datad => \ALT_INV_Reg~266_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~305_combout\);

\Reg~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~306_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~305_combout\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~304_combout\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~303_combout\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~302_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~302_combout\,
	datab => \ALT_INV_Reg~303_combout\,
	datac => \ALT_INV_Reg~304_combout\,
	datad => \ALT_INV_Reg~305_combout\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~306_combout\);

\Data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(6),
	o => \Data[6]~input_o\);

\Reg~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~27_q\);

\Reg~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~43_q\);

\Reg~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~59_q\);

\Reg~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~75_q\);

\Reg~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~307_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~75_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~59_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~43_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( 
-- !\LeReg1[1]~input_o\ & ( \Reg~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~27_q\,
	datab => \ALT_INV_Reg~43_q\,
	datac => \ALT_INV_Reg~59_q\,
	datad => \ALT_INV_Reg~75_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~307_combout\);

\Reg~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~91_q\);

\Reg~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~107_q\);

\Reg~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~123_q\);

\Reg~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~139_q\);

\Reg~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~308_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~139_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~123_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~107_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~91_q\,
	datab => \ALT_INV_Reg~107_q\,
	datac => \ALT_INV_Reg~123_q\,
	datad => \ALT_INV_Reg~139_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~308_combout\);

\Reg~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~155_q\);

\Reg~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~171_q\);

\Reg~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~187_q\);

\Reg~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~203_q\);

\Reg~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~309_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~203_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~187_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~171_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~155_q\,
	datab => \ALT_INV_Reg~171_q\,
	datac => \ALT_INV_Reg~187_q\,
	datad => \ALT_INV_Reg~203_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~309_combout\);

\Reg~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~219_q\);

\Reg~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~235_q\);

\Reg~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~251_q\);

\Reg~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[6]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~267_q\);

\Reg~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~310_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~267_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~251_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~235_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~219_q\,
	datab => \ALT_INV_Reg~235_q\,
	datac => \ALT_INV_Reg~251_q\,
	datad => \ALT_INV_Reg~267_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~310_combout\);

\Reg~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~311_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~310_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~309_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~308_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~307_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~307_combout\,
	datab => \ALT_INV_Reg~308_combout\,
	datac => \ALT_INV_Reg~309_combout\,
	datad => \ALT_INV_Reg~310_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~311_combout\);

\Data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(7),
	o => \Data[7]~input_o\);

\Reg~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~28_q\);

\Reg~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~92_q\);

\Reg~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~156_q\);

\Reg~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~220_q\);

\Reg~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~312_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~220_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~156_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~92_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & 
-- ( !\LeReg1[3]~input_o\ & ( \Reg~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~28_q\,
	datab => \ALT_INV_Reg~92_q\,
	datac => \ALT_INV_Reg~156_q\,
	datad => \ALT_INV_Reg~220_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~312_combout\);

\Reg~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~44_q\);

\Reg~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~108_q\);

\Reg~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~172_q\);

\Reg~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~236_q\);

\Reg~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~313_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~236_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~172_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~108_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~44_q\,
	datab => \ALT_INV_Reg~108_q\,
	datac => \ALT_INV_Reg~172_q\,
	datad => \ALT_INV_Reg~236_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~313_combout\);

\Reg~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~60_q\);

\Reg~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~124_q\);

\Reg~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~188_q\);

\Reg~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~252_q\);

\Reg~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~314_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~252_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~188_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~124_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~60_q\,
	datab => \ALT_INV_Reg~124_q\,
	datac => \ALT_INV_Reg~188_q\,
	datad => \ALT_INV_Reg~252_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~314_combout\);

\Reg~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~76_q\);

\Reg~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~140_q\);

\Reg~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~204_q\);

\Reg~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[7]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~268_q\);

\Reg~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~315_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~268_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~204_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~140_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~76_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~76_q\,
	datab => \ALT_INV_Reg~140_q\,
	datac => \ALT_INV_Reg~204_q\,
	datad => \ALT_INV_Reg~268_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~315_combout\);

\Reg~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~316_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~315_combout\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~314_combout\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~313_combout\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~312_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~312_combout\,
	datab => \ALT_INV_Reg~313_combout\,
	datac => \ALT_INV_Reg~314_combout\,
	datad => \ALT_INV_Reg~315_combout\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~316_combout\);

\Data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(8),
	o => \Data[8]~input_o\);

\Reg~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[8]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~29_q\);

\Reg~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[8]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~45_q\);

\Reg~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[8]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~61_q\);

\Reg~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[8]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~77_q\);

\Reg~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~317_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~77_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~61_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~45_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( 
-- !\LeReg1[1]~input_o\ & ( \Reg~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~29_q\,
	datab => \ALT_INV_Reg~45_q\,
	datac => \ALT_INV_Reg~61_q\,
	datad => \ALT_INV_Reg~77_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~317_combout\);

\Reg~469\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~469_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~469_combout\);

\Reg~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~469_combout\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~93_q\);

\Reg~470\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~470_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~470_combout\);

\Reg~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~470_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~109_q\);

\Reg~471\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~471_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~471_combout\);

\Reg~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~471_combout\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~125_q\);

\Reg~472\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~472_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~472_combout\);

\Reg~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~472_combout\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~141_q\);

\Reg~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~318_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~141_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~125_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~109_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~93_q\,
	datab => \ALT_INV_Reg~109_q\,
	datac => \ALT_INV_Reg~125_q\,
	datad => \ALT_INV_Reg~141_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~318_combout\);

\Reg~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[8]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~157_q\);

\Reg~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[8]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~173_q\);

\Reg~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[8]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~189_q\);

\Reg~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[8]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~205_q\);

\Reg~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~319_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~205_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~189_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~173_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~157_q\,
	datab => \ALT_INV_Reg~173_q\,
	datac => \ALT_INV_Reg~189_q\,
	datad => \ALT_INV_Reg~205_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~319_combout\);

\Reg~473\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~473_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~473_combout\);

\Reg~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~473_combout\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~221_q\);

\Reg~474\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~474_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~474_combout\);

\Reg~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~474_combout\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~237_q\);

\Reg~475\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~475_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~475_combout\);

\Reg~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~475_combout\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~253_q\);

\Reg~476\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~476_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~476_combout\);

\Reg~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~476_combout\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~269_q\);

\Reg~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~320_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~269_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~253_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~237_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~221_q\,
	datab => \ALT_INV_Reg~237_q\,
	datac => \ALT_INV_Reg~253_q\,
	datad => \ALT_INV_Reg~269_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~320_combout\);

\Reg~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~321_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~320_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~319_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~318_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~317_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~317_combout\,
	datab => \ALT_INV_Reg~318_combout\,
	datac => \ALT_INV_Reg~319_combout\,
	datad => \ALT_INV_Reg~320_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~321_combout\);

\Data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(9),
	o => \Data[9]~input_o\);

\Reg~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~30_q\);

\Reg~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~94_q\);

\Reg~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~158_q\);

\Reg~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~222_q\);

\Reg~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~322_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~222_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~158_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~94_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & 
-- ( !\LeReg1[3]~input_o\ & ( \Reg~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~30_q\,
	datab => \ALT_INV_Reg~94_q\,
	datac => \ALT_INV_Reg~158_q\,
	datad => \ALT_INV_Reg~222_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~322_combout\);

\Reg~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~46_q\);

\Reg~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~110_q\);

\Reg~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~174_q\);

\Reg~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~238_q\);

\Reg~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~323_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~238_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~174_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~110_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~46_q\,
	datab => \ALT_INV_Reg~110_q\,
	datac => \ALT_INV_Reg~174_q\,
	datad => \ALT_INV_Reg~238_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~323_combout\);

\Reg~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~62_q\);

\Reg~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~126_q\);

\Reg~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~190_q\);

\Reg~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~254_q\);

\Reg~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~324_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~254_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~190_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~126_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~62_q\,
	datab => \ALT_INV_Reg~126_q\,
	datac => \ALT_INV_Reg~190_q\,
	datad => \ALT_INV_Reg~254_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~324_combout\);

\Reg~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~78_q\);

\Reg~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~142_q\);

\Reg~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~206_q\);

\Reg~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[9]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~270_q\);

\Reg~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~325_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~270_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~206_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~142_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~78_q\,
	datab => \ALT_INV_Reg~142_q\,
	datac => \ALT_INV_Reg~206_q\,
	datad => \ALT_INV_Reg~270_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~325_combout\);

\Reg~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~326_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~325_combout\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~324_combout\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~323_combout\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~322_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~322_combout\,
	datab => \ALT_INV_Reg~323_combout\,
	datac => \ALT_INV_Reg~324_combout\,
	datad => \ALT_INV_Reg~325_combout\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~326_combout\);

\Data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(10),
	o => \Data[10]~input_o\);

\Reg~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~31_q\);

\Reg~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~47_q\);

\Reg~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~63_q\);

\Reg~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~79_q\);

\Reg~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~327_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~79_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~63_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~47_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( 
-- !\LeReg1[1]~input_o\ & ( \Reg~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~31_q\,
	datab => \ALT_INV_Reg~47_q\,
	datac => \ALT_INV_Reg~63_q\,
	datad => \ALT_INV_Reg~79_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~327_combout\);

\Reg~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~95_q\);

\Reg~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~111_q\);

\Reg~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~127_q\);

\Reg~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~143_q\);

\Reg~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~328_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~143_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~127_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~111_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~95_q\,
	datab => \ALT_INV_Reg~111_q\,
	datac => \ALT_INV_Reg~127_q\,
	datad => \ALT_INV_Reg~143_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~328_combout\);

\Reg~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~159_q\);

\Reg~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~175_q\);

\Reg~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~191_q\);

\Reg~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~207_q\);

\Reg~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~329_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~207_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~191_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~175_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~159_q\,
	datab => \ALT_INV_Reg~175_q\,
	datac => \ALT_INV_Reg~191_q\,
	datad => \ALT_INV_Reg~207_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~329_combout\);

\Reg~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~223_q\);

\Reg~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~239_q\);

\Reg~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~255_q\);

\Reg~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[10]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~271_q\);

\Reg~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~330_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~271_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~255_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~239_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~223_q\,
	datab => \ALT_INV_Reg~239_q\,
	datac => \ALT_INV_Reg~255_q\,
	datad => \ALT_INV_Reg~271_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~330_combout\);

\Reg~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~331_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~330_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~329_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~328_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~327_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~327_combout\,
	datab => \ALT_INV_Reg~328_combout\,
	datac => \ALT_INV_Reg~329_combout\,
	datad => \ALT_INV_Reg~330_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~331_combout\);

\Data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(11),
	o => \Data[11]~input_o\);

\Reg~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~32_q\);

\Reg~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~96_q\);

\Reg~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~160_q\);

\Reg~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~224_q\);

\Reg~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~332_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~224_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~160_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~96_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & 
-- ( !\LeReg1[3]~input_o\ & ( \Reg~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~32_q\,
	datab => \ALT_INV_Reg~96_q\,
	datac => \ALT_INV_Reg~160_q\,
	datad => \ALT_INV_Reg~224_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~332_combout\);

\Reg~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~48_q\);

\Reg~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~112_q\);

\Reg~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~176_q\);

\Reg~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~240_q\);

\Reg~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~333_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~240_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~176_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~112_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~48_q\,
	datab => \ALT_INV_Reg~112_q\,
	datac => \ALT_INV_Reg~176_q\,
	datad => \ALT_INV_Reg~240_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~333_combout\);

\Reg~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~64_q\);

\Reg~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~128_q\);

\Reg~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~192_q\);

\Reg~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~256_q\);

\Reg~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~334_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~256_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~192_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~128_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~64_q\,
	datab => \ALT_INV_Reg~128_q\,
	datac => \ALT_INV_Reg~192_q\,
	datad => \ALT_INV_Reg~256_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~334_combout\);

\Reg~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~80_q\);

\Reg~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~144_q\);

\Reg~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~208_q\);

\Reg~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[11]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~272_q\);

\Reg~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~335_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~272_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~208_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~144_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~80_q\,
	datab => \ALT_INV_Reg~144_q\,
	datac => \ALT_INV_Reg~208_q\,
	datad => \ALT_INV_Reg~272_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~335_combout\);

\Reg~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~336_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~335_combout\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~334_combout\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~333_combout\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~332_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~332_combout\,
	datab => \ALT_INV_Reg~333_combout\,
	datac => \ALT_INV_Reg~334_combout\,
	datad => \ALT_INV_Reg~335_combout\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~336_combout\);

\Data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(12),
	o => \Data[12]~input_o\);

\Reg~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[12]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~33_q\);

\Reg~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[12]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~49_q\);

\Reg~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[12]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~65_q\);

\Reg~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[12]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~81_q\);

\Reg~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~337_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~81_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~65_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~49_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( 
-- !\LeReg1[1]~input_o\ & ( \Reg~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~33_q\,
	datab => \ALT_INV_Reg~49_q\,
	datac => \ALT_INV_Reg~65_q\,
	datad => \ALT_INV_Reg~81_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~337_combout\);

\Reg~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[12]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~97_q\);

\Reg~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[12]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~113_q\);

\Reg~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[12]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~129_q\);

\Reg~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[12]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~145_q\);

\Reg~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~338_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~145_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~129_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~113_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~97_q\,
	datab => \ALT_INV_Reg~113_q\,
	datac => \ALT_INV_Reg~129_q\,
	datad => \ALT_INV_Reg~145_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~338_combout\);

\Reg~477\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~477_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~477_combout\);

\Reg~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~477_combout\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~161_q\);

\Reg~478\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~478_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~478_combout\);

\Reg~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~478_combout\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~177_q\);

\Reg~479\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~479_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~479_combout\);

\Reg~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~479_combout\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~193_q\);

\Reg~480\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~480_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~480_combout\);

\Reg~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~480_combout\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~209_q\);

\Reg~339\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~339_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~209_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~193_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~177_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~161_q\,
	datab => \ALT_INV_Reg~177_q\,
	datac => \ALT_INV_Reg~193_q\,
	datad => \ALT_INV_Reg~209_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~339_combout\);

\Reg~481\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~481_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~481_combout\);

\Reg~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~481_combout\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~225_q\);

\Reg~482\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~482_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~482_combout\);

\Reg~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~482_combout\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~241_q\);

\Reg~483\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~483_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~483_combout\);

\Reg~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~483_combout\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~257_q\);

\Reg~484\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~484_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~484_combout\);

\Reg~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Reg~484_combout\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~273_q\);

\Reg~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~340_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~273_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~257_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~241_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~225_q\,
	datab => \ALT_INV_Reg~241_q\,
	datac => \ALT_INV_Reg~257_q\,
	datad => \ALT_INV_Reg~273_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~340_combout\);

\Reg~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~341_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~340_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~339_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~338_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~337_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~337_combout\,
	datab => \ALT_INV_Reg~338_combout\,
	datac => \ALT_INV_Reg~339_combout\,
	datad => \ALT_INV_Reg~340_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~341_combout\);

\Data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(13),
	o => \Data[13]~input_o\);

\Reg~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~34_q\);

\Reg~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~98_q\);

\Reg~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~162_q\);

\Reg~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~226_q\);

\Reg~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~342_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~226_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~162_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~98_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & 
-- ( !\LeReg1[3]~input_o\ & ( \Reg~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~34_q\,
	datab => \ALT_INV_Reg~98_q\,
	datac => \ALT_INV_Reg~162_q\,
	datad => \ALT_INV_Reg~226_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~342_combout\);

\Reg~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~50_q\);

\Reg~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~114_q\);

\Reg~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~178_q\);

\Reg~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~242_q\);

\Reg~343\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~343_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~242_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~178_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~114_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~50_q\,
	datab => \ALT_INV_Reg~114_q\,
	datac => \ALT_INV_Reg~178_q\,
	datad => \ALT_INV_Reg~242_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~343_combout\);

\Reg~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~66_q\);

\Reg~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~130_q\);

\Reg~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~194_q\);

\Reg~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~258_q\);

\Reg~344\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~344_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~258_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~194_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~130_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~66_q\,
	datab => \ALT_INV_Reg~130_q\,
	datac => \ALT_INV_Reg~194_q\,
	datad => \ALT_INV_Reg~258_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~344_combout\);

\Reg~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~82_q\);

\Reg~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~146_q\);

\Reg~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~210_q\);

\Reg~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[13]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~274_q\);

\Reg~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~345_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~274_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~210_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~146_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~82_q\,
	datab => \ALT_INV_Reg~146_q\,
	datac => \ALT_INV_Reg~210_q\,
	datad => \ALT_INV_Reg~274_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~345_combout\);

\Reg~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~346_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~345_combout\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~344_combout\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~343_combout\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~342_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~342_combout\,
	datab => \ALT_INV_Reg~343_combout\,
	datac => \ALT_INV_Reg~344_combout\,
	datad => \ALT_INV_Reg~345_combout\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~346_combout\);

\Data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(14),
	o => \Data[14]~input_o\);

\Reg~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~35_q\);

\Reg~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~51_q\);

\Reg~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~67_q\);

\Reg~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~83_q\);

\Reg~347\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~347_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~83_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~67_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~51_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( 
-- !\LeReg1[1]~input_o\ & ( \Reg~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~35_q\,
	datab => \ALT_INV_Reg~51_q\,
	datac => \ALT_INV_Reg~67_q\,
	datad => \ALT_INV_Reg~83_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~347_combout\);

\Reg~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~99_q\);

\Reg~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~115_q\);

\Reg~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~131_q\);

\Reg~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~147_q\);

\Reg~348\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~348_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~147_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~131_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~115_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~99_q\,
	datab => \ALT_INV_Reg~115_q\,
	datac => \ALT_INV_Reg~131_q\,
	datad => \ALT_INV_Reg~147_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~348_combout\);

\Reg~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~163_q\);

\Reg~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~179_q\);

\Reg~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~195_q\);

\Reg~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~211_q\);

\Reg~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~349_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~211_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~195_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~179_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~163_q\,
	datab => \ALT_INV_Reg~179_q\,
	datac => \ALT_INV_Reg~195_q\,
	datad => \ALT_INV_Reg~211_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~349_combout\);

\Reg~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~227_q\);

\Reg~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~243_q\);

\Reg~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~259_q\);

\Reg~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[14]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~275_q\);

\Reg~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~350_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~275_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~259_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~243_q\ ) ) ) # ( !\LeReg1[0]~input_o\ 
-- & ( !\LeReg1[1]~input_o\ & ( \Reg~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~227_q\,
	datab => \ALT_INV_Reg~243_q\,
	datac => \ALT_INV_Reg~259_q\,
	datad => \ALT_INV_Reg~275_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~350_combout\);

\Reg~351\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~351_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~350_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~349_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~348_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~347_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~347_combout\,
	datab => \ALT_INV_Reg~348_combout\,
	datac => \ALT_INV_Reg~349_combout\,
	datad => \ALT_INV_Reg~350_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~351_combout\);

\Data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(15),
	o => \Data[15]~input_o\);

\Reg~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~36_q\);

\Reg~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~100_q\);

\Reg~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~164_q\);

\Reg~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~228_q\);

\Reg~352\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~352_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~228_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~164_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~100_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~36_q\,
	datab => \ALT_INV_Reg~100_q\,
	datac => \ALT_INV_Reg~164_q\,
	datad => \ALT_INV_Reg~228_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~352_combout\);

\Reg~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~52_q\);

\Reg~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~116_q\);

\Reg~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~180_q\);

\Reg~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~244_q\);

\Reg~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~353_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~244_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~180_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~116_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~52_q\,
	datab => \ALT_INV_Reg~116_q\,
	datac => \ALT_INV_Reg~180_q\,
	datad => \ALT_INV_Reg~244_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~353_combout\);

\Reg~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~68_q\);

\Reg~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~132_q\);

\Reg~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~196_q\);

\Reg~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~260_q\);

\Reg~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~354_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~260_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~196_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~132_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~68_q\,
	datab => \ALT_INV_Reg~132_q\,
	datac => \ALT_INV_Reg~196_q\,
	datad => \ALT_INV_Reg~260_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~354_combout\);

\Reg~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~84_q\);

\Reg~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~148_q\);

\Reg~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~212_q\);

\Reg~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Data[15]~input_o\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~276_q\);

\Reg~355\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~355_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~276_q\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~212_q\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~148_q\ ) ) ) # ( !\LeReg1[2]~input_o\ 
-- & ( !\LeReg1[3]~input_o\ & ( \Reg~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~84_q\,
	datab => \ALT_INV_Reg~148_q\,
	datac => \ALT_INV_Reg~212_q\,
	datad => \ALT_INV_Reg~276_q\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~355_combout\);

\Reg~356\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~356_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~355_combout\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( \Reg~354_combout\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~353_combout\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( \Reg~352_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~352_combout\,
	datab => \ALT_INV_Reg~353_combout\,
	datac => \ALT_INV_Reg~354_combout\,
	datad => \ALT_INV_Reg~355_combout\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~356_combout\);

\LeReg2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg2(0),
	o => \LeReg2[0]~input_o\);

\LeReg2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg2(1),
	o => \LeReg2[1]~input_o\);

\Reg~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~357_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~69_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~53_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~37_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & 
-- ( !\LeReg2[1]~input_o\ & ( \Reg~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~21_q\,
	datab => \ALT_INV_Reg~37_q\,
	datac => \ALT_INV_Reg~53_q\,
	datad => \ALT_INV_Reg~69_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~357_combout\);

\Reg~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~358_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~133_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~117_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~101_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~85_q\,
	datab => \ALT_INV_Reg~101_q\,
	datac => \ALT_INV_Reg~117_q\,
	datad => \ALT_INV_Reg~133_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~358_combout\);

\Reg~359\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~359_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~197_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~181_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~165_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~149_q\,
	datab => \ALT_INV_Reg~165_q\,
	datac => \ALT_INV_Reg~181_q\,
	datad => \ALT_INV_Reg~197_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~359_combout\);

\Reg~360\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~360_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~261_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~245_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~229_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~213_q\,
	datab => \ALT_INV_Reg~229_q\,
	datac => \ALT_INV_Reg~245_q\,
	datad => \ALT_INV_Reg~261_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~360_combout\);

\LeReg2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg2(2),
	o => \LeReg2[2]~input_o\);

\LeReg2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg2(3),
	o => \LeReg2[3]~input_o\);

\Reg~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~361_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~360_combout\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~359_combout\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~358_combout\ ) ) ) # ( 
-- !\LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~357_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~357_combout\,
	datab => \ALT_INV_Reg~358_combout\,
	datac => \ALT_INV_Reg~359_combout\,
	datad => \ALT_INV_Reg~360_combout\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~361_combout\);

\Reg~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~362_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~214_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~150_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~86_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & 
-- ( !\LeReg2[3]~input_o\ & ( \Reg~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~22_q\,
	datab => \ALT_INV_Reg~86_q\,
	datac => \ALT_INV_Reg~150_q\,
	datad => \ALT_INV_Reg~214_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~362_combout\);

\Reg~363\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~363_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~230_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~166_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~102_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~38_q\,
	datab => \ALT_INV_Reg~102_q\,
	datac => \ALT_INV_Reg~166_q\,
	datad => \ALT_INV_Reg~230_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~363_combout\);

\Reg~364\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~364_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~246_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~182_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~118_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~54_q\,
	datab => \ALT_INV_Reg~118_q\,
	datac => \ALT_INV_Reg~182_q\,
	datad => \ALT_INV_Reg~246_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~364_combout\);

\Reg~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~365_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~262_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~198_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~134_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~70_q\,
	datab => \ALT_INV_Reg~134_q\,
	datac => \ALT_INV_Reg~198_q\,
	datad => \ALT_INV_Reg~262_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~365_combout\);

\Reg~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~366_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~365_combout\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~364_combout\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~363_combout\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~362_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~362_combout\,
	datab => \ALT_INV_Reg~363_combout\,
	datac => \ALT_INV_Reg~364_combout\,
	datad => \ALT_INV_Reg~365_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~366_combout\);

\Reg~367\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~367_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~71_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~55_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~39_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( 
-- !\LeReg2[1]~input_o\ & ( \Reg~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~23_q\,
	datab => \ALT_INV_Reg~39_q\,
	datac => \ALT_INV_Reg~55_q\,
	datad => \ALT_INV_Reg~71_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~367_combout\);

\Reg~368\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~368_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~135_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~119_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~103_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~87_q\,
	datab => \ALT_INV_Reg~103_q\,
	datac => \ALT_INV_Reg~119_q\,
	datad => \ALT_INV_Reg~135_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~368_combout\);

\Reg~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~369_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~199_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~183_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~167_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~151_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~151_q\,
	datab => \ALT_INV_Reg~167_q\,
	datac => \ALT_INV_Reg~183_q\,
	datad => \ALT_INV_Reg~199_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~369_combout\);

\Reg~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~370_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~263_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~247_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~231_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~215_q\,
	datab => \ALT_INV_Reg~231_q\,
	datac => \ALT_INV_Reg~247_q\,
	datad => \ALT_INV_Reg~263_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~370_combout\);

\Reg~371\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~371_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~370_combout\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~369_combout\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~368_combout\ ) ) ) # ( 
-- !\LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~367_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~367_combout\,
	datab => \ALT_INV_Reg~368_combout\,
	datac => \ALT_INV_Reg~369_combout\,
	datad => \ALT_INV_Reg~370_combout\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~371_combout\);

\Reg~372\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~372_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~216_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~152_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~88_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & 
-- ( !\LeReg2[3]~input_o\ & ( \Reg~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~24_q\,
	datab => \ALT_INV_Reg~88_q\,
	datac => \ALT_INV_Reg~152_q\,
	datad => \ALT_INV_Reg~216_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~372_combout\);

\Reg~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~373_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~232_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~168_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~104_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~40_q\,
	datab => \ALT_INV_Reg~104_q\,
	datac => \ALT_INV_Reg~168_q\,
	datad => \ALT_INV_Reg~232_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~373_combout\);

\Reg~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~374_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~248_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~184_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~120_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~56_q\,
	datab => \ALT_INV_Reg~120_q\,
	datac => \ALT_INV_Reg~184_q\,
	datad => \ALT_INV_Reg~248_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~374_combout\);

\Reg~375\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~375_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~264_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~200_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~136_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~72_q\,
	datab => \ALT_INV_Reg~136_q\,
	datac => \ALT_INV_Reg~200_q\,
	datad => \ALT_INV_Reg~264_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~375_combout\);

\Reg~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~376_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~375_combout\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~374_combout\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~373_combout\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~372_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~372_combout\,
	datab => \ALT_INV_Reg~373_combout\,
	datac => \ALT_INV_Reg~374_combout\,
	datad => \ALT_INV_Reg~375_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~376_combout\);

\Reg~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~377_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~73_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~57_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~41_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & 
-- ( !\LeReg2[1]~input_o\ & ( \Reg~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~25_q\,
	datab => \ALT_INV_Reg~41_q\,
	datac => \ALT_INV_Reg~57_q\,
	datad => \ALT_INV_Reg~73_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~377_combout\);

\Reg~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~378_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~137_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~121_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~105_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~89_q\,
	datab => \ALT_INV_Reg~105_q\,
	datac => \ALT_INV_Reg~121_q\,
	datad => \ALT_INV_Reg~137_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~378_combout\);

\Reg~379\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~379_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~201_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~185_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~169_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~153_q\,
	datab => \ALT_INV_Reg~169_q\,
	datac => \ALT_INV_Reg~185_q\,
	datad => \ALT_INV_Reg~201_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~379_combout\);

\Reg~380\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~380_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~265_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~249_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~233_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~217_q\,
	datab => \ALT_INV_Reg~233_q\,
	datac => \ALT_INV_Reg~249_q\,
	datad => \ALT_INV_Reg~265_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~380_combout\);

\Reg~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~381_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~380_combout\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~379_combout\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~378_combout\ ) ) ) # ( 
-- !\LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~377_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~377_combout\,
	datab => \ALT_INV_Reg~378_combout\,
	datac => \ALT_INV_Reg~379_combout\,
	datad => \ALT_INV_Reg~380_combout\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~381_combout\);

\Reg~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~382_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~218_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~154_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~90_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & 
-- ( !\LeReg2[3]~input_o\ & ( \Reg~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~26_q\,
	datab => \ALT_INV_Reg~90_q\,
	datac => \ALT_INV_Reg~154_q\,
	datad => \ALT_INV_Reg~218_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~382_combout\);

\Reg~383\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~383_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~234_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~170_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~106_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~42_q\,
	datab => \ALT_INV_Reg~106_q\,
	datac => \ALT_INV_Reg~170_q\,
	datad => \ALT_INV_Reg~234_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~383_combout\);

\Reg~384\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~384_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~250_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~186_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~122_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~58_q\,
	datab => \ALT_INV_Reg~122_q\,
	datac => \ALT_INV_Reg~186_q\,
	datad => \ALT_INV_Reg~250_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~384_combout\);

\Reg~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~385_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~266_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~202_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~138_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~74_q\,
	datab => \ALT_INV_Reg~138_q\,
	datac => \ALT_INV_Reg~202_q\,
	datad => \ALT_INV_Reg~266_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~385_combout\);

\Reg~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~386_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~385_combout\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~384_combout\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~383_combout\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~382_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~382_combout\,
	datab => \ALT_INV_Reg~383_combout\,
	datac => \ALT_INV_Reg~384_combout\,
	datad => \ALT_INV_Reg~385_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~386_combout\);

\Reg~387\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~387_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~75_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~59_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~43_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( 
-- !\LeReg2[1]~input_o\ & ( \Reg~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~27_q\,
	datab => \ALT_INV_Reg~43_q\,
	datac => \ALT_INV_Reg~59_q\,
	datad => \ALT_INV_Reg~75_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~387_combout\);

\Reg~388\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~388_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~139_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~123_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~107_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~91_q\,
	datab => \ALT_INV_Reg~107_q\,
	datac => \ALT_INV_Reg~123_q\,
	datad => \ALT_INV_Reg~139_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~388_combout\);

\Reg~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~389_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~203_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~187_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~171_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~155_q\,
	datab => \ALT_INV_Reg~171_q\,
	datac => \ALT_INV_Reg~187_q\,
	datad => \ALT_INV_Reg~203_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~389_combout\);

\Reg~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~390_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~267_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~251_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~235_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~219_q\,
	datab => \ALT_INV_Reg~235_q\,
	datac => \ALT_INV_Reg~251_q\,
	datad => \ALT_INV_Reg~267_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~390_combout\);

\Reg~391\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~391_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~390_combout\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~389_combout\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~388_combout\ ) ) ) # ( 
-- !\LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~387_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~387_combout\,
	datab => \ALT_INV_Reg~388_combout\,
	datac => \ALT_INV_Reg~389_combout\,
	datad => \ALT_INV_Reg~390_combout\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~391_combout\);

\Reg~392\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~392_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~220_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~156_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~92_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & 
-- ( !\LeReg2[3]~input_o\ & ( \Reg~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~28_q\,
	datab => \ALT_INV_Reg~92_q\,
	datac => \ALT_INV_Reg~156_q\,
	datad => \ALT_INV_Reg~220_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~392_combout\);

\Reg~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~393_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~236_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~172_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~108_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~44_q\,
	datab => \ALT_INV_Reg~108_q\,
	datac => \ALT_INV_Reg~172_q\,
	datad => \ALT_INV_Reg~236_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~393_combout\);

\Reg~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~394_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~252_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~188_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~124_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~60_q\,
	datab => \ALT_INV_Reg~124_q\,
	datac => \ALT_INV_Reg~188_q\,
	datad => \ALT_INV_Reg~252_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~394_combout\);

\Reg~395\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~395_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~268_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~204_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~140_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~76_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~76_q\,
	datab => \ALT_INV_Reg~140_q\,
	datac => \ALT_INV_Reg~204_q\,
	datad => \ALT_INV_Reg~268_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~395_combout\);

\Reg~396\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~396_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~395_combout\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~394_combout\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~393_combout\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~392_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~392_combout\,
	datab => \ALT_INV_Reg~393_combout\,
	datac => \ALT_INV_Reg~394_combout\,
	datad => \ALT_INV_Reg~395_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~396_combout\);

\Reg~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~397_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~77_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~61_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~45_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( 
-- !\LeReg2[1]~input_o\ & ( \Reg~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~29_q\,
	datab => \ALT_INV_Reg~45_q\,
	datac => \ALT_INV_Reg~61_q\,
	datad => \ALT_INV_Reg~77_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~397_combout\);

\Reg~398\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~398_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~141_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~125_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~109_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~93_q\,
	datab => \ALT_INV_Reg~109_q\,
	datac => \ALT_INV_Reg~125_q\,
	datad => \ALT_INV_Reg~141_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~398_combout\);

\Reg~399\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~399_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~205_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~189_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~173_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~157_q\,
	datab => \ALT_INV_Reg~173_q\,
	datac => \ALT_INV_Reg~189_q\,
	datad => \ALT_INV_Reg~205_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~399_combout\);

\Reg~400\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~400_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~269_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~253_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~237_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~221_q\,
	datab => \ALT_INV_Reg~237_q\,
	datac => \ALT_INV_Reg~253_q\,
	datad => \ALT_INV_Reg~269_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~400_combout\);

\Reg~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~401_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~400_combout\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~399_combout\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~398_combout\ ) ) ) # ( 
-- !\LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~397_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~397_combout\,
	datab => \ALT_INV_Reg~398_combout\,
	datac => \ALT_INV_Reg~399_combout\,
	datad => \ALT_INV_Reg~400_combout\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~401_combout\);

\Reg~402\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~402_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~222_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~158_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~94_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & 
-- ( !\LeReg2[3]~input_o\ & ( \Reg~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~30_q\,
	datab => \ALT_INV_Reg~94_q\,
	datac => \ALT_INV_Reg~158_q\,
	datad => \ALT_INV_Reg~222_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~402_combout\);

\Reg~403\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~403_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~238_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~174_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~110_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~46_q\,
	datab => \ALT_INV_Reg~110_q\,
	datac => \ALT_INV_Reg~174_q\,
	datad => \ALT_INV_Reg~238_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~403_combout\);

\Reg~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~404_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~254_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~190_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~126_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~62_q\,
	datab => \ALT_INV_Reg~126_q\,
	datac => \ALT_INV_Reg~190_q\,
	datad => \ALT_INV_Reg~254_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~404_combout\);

\Reg~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~405_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~270_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~206_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~142_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~78_q\,
	datab => \ALT_INV_Reg~142_q\,
	datac => \ALT_INV_Reg~206_q\,
	datad => \ALT_INV_Reg~270_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~405_combout\);

\Reg~406\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~406_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~405_combout\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~404_combout\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~403_combout\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~402_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~402_combout\,
	datab => \ALT_INV_Reg~403_combout\,
	datac => \ALT_INV_Reg~404_combout\,
	datad => \ALT_INV_Reg~405_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~406_combout\);

\Reg~407\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~407_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~79_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~63_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~47_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( 
-- !\LeReg2[1]~input_o\ & ( \Reg~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~31_q\,
	datab => \ALT_INV_Reg~47_q\,
	datac => \ALT_INV_Reg~63_q\,
	datad => \ALT_INV_Reg~79_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~407_combout\);

\Reg~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~408_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~143_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~127_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~111_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~95_q\,
	datab => \ALT_INV_Reg~111_q\,
	datac => \ALT_INV_Reg~127_q\,
	datad => \ALT_INV_Reg~143_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~408_combout\);

\Reg~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~409_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~207_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~191_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~175_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~159_q\,
	datab => \ALT_INV_Reg~175_q\,
	datac => \ALT_INV_Reg~191_q\,
	datad => \ALT_INV_Reg~207_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~409_combout\);

\Reg~410\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~410_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~271_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~255_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~239_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~223_q\,
	datab => \ALT_INV_Reg~239_q\,
	datac => \ALT_INV_Reg~255_q\,
	datad => \ALT_INV_Reg~271_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~410_combout\);

\Reg~411\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~411_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~410_combout\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~409_combout\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~408_combout\ ) ) ) # ( 
-- !\LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~407_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~407_combout\,
	datab => \ALT_INV_Reg~408_combout\,
	datac => \ALT_INV_Reg~409_combout\,
	datad => \ALT_INV_Reg~410_combout\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~411_combout\);

\Reg~412\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~412_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~224_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~160_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~96_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & 
-- ( !\LeReg2[3]~input_o\ & ( \Reg~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~32_q\,
	datab => \ALT_INV_Reg~96_q\,
	datac => \ALT_INV_Reg~160_q\,
	datad => \ALT_INV_Reg~224_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~412_combout\);

\Reg~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~413_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~240_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~176_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~112_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~48_q\,
	datab => \ALT_INV_Reg~112_q\,
	datac => \ALT_INV_Reg~176_q\,
	datad => \ALT_INV_Reg~240_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~413_combout\);

\Reg~414\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~414_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~256_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~192_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~128_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~64_q\,
	datab => \ALT_INV_Reg~128_q\,
	datac => \ALT_INV_Reg~192_q\,
	datad => \ALT_INV_Reg~256_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~414_combout\);

\Reg~415\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~415_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~272_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~208_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~144_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~80_q\,
	datab => \ALT_INV_Reg~144_q\,
	datac => \ALT_INV_Reg~208_q\,
	datad => \ALT_INV_Reg~272_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~415_combout\);

\Reg~416\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~416_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~415_combout\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~414_combout\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~413_combout\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~412_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~412_combout\,
	datab => \ALT_INV_Reg~413_combout\,
	datac => \ALT_INV_Reg~414_combout\,
	datad => \ALT_INV_Reg~415_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~416_combout\);

\Reg~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~417_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~81_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~65_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~49_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( 
-- !\LeReg2[1]~input_o\ & ( \Reg~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~33_q\,
	datab => \ALT_INV_Reg~49_q\,
	datac => \ALT_INV_Reg~65_q\,
	datad => \ALT_INV_Reg~81_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~417_combout\);

\Reg~418\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~418_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~145_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~129_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~113_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~97_q\,
	datab => \ALT_INV_Reg~113_q\,
	datac => \ALT_INV_Reg~129_q\,
	datad => \ALT_INV_Reg~145_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~418_combout\);

\Reg~419\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~419_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~209_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~193_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~177_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~161_q\,
	datab => \ALT_INV_Reg~177_q\,
	datac => \ALT_INV_Reg~193_q\,
	datad => \ALT_INV_Reg~209_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~419_combout\);

\Reg~420\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~420_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~273_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~257_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~241_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~225_q\,
	datab => \ALT_INV_Reg~241_q\,
	datac => \ALT_INV_Reg~257_q\,
	datad => \ALT_INV_Reg~273_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~420_combout\);

\Reg~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~421_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~420_combout\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~419_combout\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~418_combout\ ) ) ) # ( 
-- !\LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~417_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~417_combout\,
	datab => \ALT_INV_Reg~418_combout\,
	datac => \ALT_INV_Reg~419_combout\,
	datad => \ALT_INV_Reg~420_combout\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~421_combout\);

\Reg~422\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~422_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~226_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~162_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~98_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & 
-- ( !\LeReg2[3]~input_o\ & ( \Reg~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~34_q\,
	datab => \ALT_INV_Reg~98_q\,
	datac => \ALT_INV_Reg~162_q\,
	datad => \ALT_INV_Reg~226_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~422_combout\);

\Reg~423\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~423_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~242_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~178_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~114_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~50_q\,
	datab => \ALT_INV_Reg~114_q\,
	datac => \ALT_INV_Reg~178_q\,
	datad => \ALT_INV_Reg~242_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~423_combout\);

\Reg~424\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~424_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~258_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~194_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~130_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~66_q\,
	datab => \ALT_INV_Reg~130_q\,
	datac => \ALT_INV_Reg~194_q\,
	datad => \ALT_INV_Reg~258_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~424_combout\);

\Reg~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~425_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~274_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~210_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~146_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~82_q\,
	datab => \ALT_INV_Reg~146_q\,
	datac => \ALT_INV_Reg~210_q\,
	datad => \ALT_INV_Reg~274_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~425_combout\);

\Reg~426\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~426_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~425_combout\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~424_combout\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~423_combout\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~422_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~422_combout\,
	datab => \ALT_INV_Reg~423_combout\,
	datac => \ALT_INV_Reg~424_combout\,
	datad => \ALT_INV_Reg~425_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~426_combout\);

\Reg~427\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~427_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~83_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~67_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~51_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( 
-- !\LeReg2[1]~input_o\ & ( \Reg~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~35_q\,
	datab => \ALT_INV_Reg~51_q\,
	datac => \ALT_INV_Reg~67_q\,
	datad => \ALT_INV_Reg~83_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~427_combout\);

\Reg~428\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~428_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~147_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~131_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~115_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~99_q\,
	datab => \ALT_INV_Reg~115_q\,
	datac => \ALT_INV_Reg~131_q\,
	datad => \ALT_INV_Reg~147_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~428_combout\);

\Reg~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~429_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~211_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~195_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~179_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~163_q\,
	datab => \ALT_INV_Reg~179_q\,
	datac => \ALT_INV_Reg~195_q\,
	datad => \ALT_INV_Reg~211_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~429_combout\);

\Reg~430\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~430_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~275_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~259_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~243_q\ ) ) ) # ( !\LeReg2[0]~input_o\ 
-- & ( !\LeReg2[1]~input_o\ & ( \Reg~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~227_q\,
	datab => \ALT_INV_Reg~243_q\,
	datac => \ALT_INV_Reg~259_q\,
	datad => \ALT_INV_Reg~275_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~430_combout\);

\Reg~431\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~431_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~430_combout\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~429_combout\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~428_combout\ ) ) ) # ( 
-- !\LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~427_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~427_combout\,
	datab => \ALT_INV_Reg~428_combout\,
	datac => \ALT_INV_Reg~429_combout\,
	datad => \ALT_INV_Reg~430_combout\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~431_combout\);

\Reg~432\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~432_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~228_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~164_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~100_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~36_q\,
	datab => \ALT_INV_Reg~100_q\,
	datac => \ALT_INV_Reg~164_q\,
	datad => \ALT_INV_Reg~228_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~432_combout\);

\Reg~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~433_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~244_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~180_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~116_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~52_q\,
	datab => \ALT_INV_Reg~116_q\,
	datac => \ALT_INV_Reg~180_q\,
	datad => \ALT_INV_Reg~244_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~433_combout\);

\Reg~434\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~434_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~260_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~196_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~132_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~68_q\,
	datab => \ALT_INV_Reg~132_q\,
	datac => \ALT_INV_Reg~196_q\,
	datad => \ALT_INV_Reg~260_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~434_combout\);

\Reg~435\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~435_combout\ = ( \LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~276_q\ ) ) ) # ( !\LeReg2[2]~input_o\ & ( \LeReg2[3]~input_o\ & ( \Reg~212_q\ ) ) ) # ( \LeReg2[2]~input_o\ & ( !\LeReg2[3]~input_o\ & ( \Reg~148_q\ ) ) ) # ( !\LeReg2[2]~input_o\ 
-- & ( !\LeReg2[3]~input_o\ & ( \Reg~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~84_q\,
	datab => \ALT_INV_Reg~148_q\,
	datac => \ALT_INV_Reg~212_q\,
	datad => \ALT_INV_Reg~276_q\,
	datae => \ALT_INV_LeReg2[2]~input_o\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~435_combout\);

\Reg~436\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~436_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~435_combout\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( \Reg~434_combout\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~433_combout\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( \Reg~432_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~432_combout\,
	datab => \ALT_INV_Reg~433_combout\,
	datac => \ALT_INV_Reg~434_combout\,
	datad => \ALT_INV_Reg~435_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~436_combout\);

ww_RegA(0) <= \RegA[0]~output_o\;

ww_RegA(1) <= \RegA[1]~output_o\;

ww_RegA(2) <= \RegA[2]~output_o\;

ww_RegA(3) <= \RegA[3]~output_o\;

ww_RegA(4) <= \RegA[4]~output_o\;

ww_RegA(5) <= \RegA[5]~output_o\;

ww_RegA(6) <= \RegA[6]~output_o\;

ww_RegA(7) <= \RegA[7]~output_o\;

ww_RegA(8) <= \RegA[8]~output_o\;

ww_RegA(9) <= \RegA[9]~output_o\;

ww_RegA(10) <= \RegA[10]~output_o\;

ww_RegA(11) <= \RegA[11]~output_o\;

ww_RegA(12) <= \RegA[12]~output_o\;

ww_RegA(13) <= \RegA[13]~output_o\;

ww_RegA(14) <= \RegA[14]~output_o\;

ww_RegA(15) <= \RegA[15]~output_o\;

ww_RegB(0) <= \RegB[0]~output_o\;

ww_RegB(1) <= \RegB[1]~output_o\;

ww_RegB(2) <= \RegB[2]~output_o\;

ww_RegB(3) <= \RegB[3]~output_o\;

ww_RegB(4) <= \RegB[4]~output_o\;

ww_RegB(5) <= \RegB[5]~output_o\;

ww_RegB(6) <= \RegB[6]~output_o\;

ww_RegB(7) <= \RegB[7]~output_o\;

ww_RegB(8) <= \RegB[8]~output_o\;

ww_RegB(9) <= \RegB[9]~output_o\;

ww_RegB(10) <= \RegB[10]~output_o\;

ww_RegB(11) <= \RegB[11]~output_o\;

ww_RegB(12) <= \RegB[12]~output_o\;

ww_RegB(13) <= \RegB[13]~output_o\;

ww_RegB(14) <= \RegB[14]~output_o\;

ww_RegB(15) <= \RegB[15]~output_o\;
END structure;


