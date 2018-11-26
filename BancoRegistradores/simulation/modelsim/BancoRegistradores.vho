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

-- DATE "11/26/2018 10:18:54"

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

-- Design Ports Information
-- RegA[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[11]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[12]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[14]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegA[15]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[8]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[9]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[10]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[14]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegB[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeReg1[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeReg1[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeReg1[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeReg1[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeReg2[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeReg2[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeReg2[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeReg2[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EscReg	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[6]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[7]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[8]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[9]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[11]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[12]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[13]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[14]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[15]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \Reg~454_combout\ : std_logic;
SIGNAL \EscReg~input_o\ : std_logic;
SIGNAL \RegDst[3]~input_o\ : std_logic;
SIGNAL \RegDst[0]~input_o\ : std_logic;
SIGNAL \RegDst[2]~input_o\ : std_logic;
SIGNAL \RegDst[1]~input_o\ : std_logic;
SIGNAL \Reg~440_combout\ : std_logic;
SIGNAL \Reg~69_q\ : std_logic;
SIGNAL \Reg~439_combout\ : std_logic;
SIGNAL \Reg~53_q\ : std_logic;
SIGNAL \Reg~453_combout\ : std_logic;
SIGNAL \Reg~438_combout\ : std_logic;
SIGNAL \Reg~37_q\ : std_logic;
SIGNAL \LeReg1[1]~input_o\ : std_logic;
SIGNAL \Reg~437_combout\ : std_logic;
SIGNAL \Reg~21_q\ : std_logic;
SIGNAL \LeReg1[0]~input_o\ : std_logic;
SIGNAL \Reg~277_combout\ : std_logic;
SIGNAL \LeReg1[3]~input_o\ : std_logic;
SIGNAL \Reg~451_combout\ : std_logic;
SIGNAL \Reg~245_q\ : std_logic;
SIGNAL \Reg~460_combout\ : std_logic;
SIGNAL \Reg~452_combout\ : std_logic;
SIGNAL \Reg~261_q\ : std_logic;
SIGNAL \Reg~449_combout\ : std_logic;
SIGNAL \Reg~213_q\ : std_logic;
SIGNAL \Reg~459_combout\ : std_logic;
SIGNAL \Reg~450_combout\ : std_logic;
SIGNAL \Reg~229_q\ : std_logic;
SIGNAL \Reg~280_combout\ : std_logic;
SIGNAL \Reg~443_combout\ : std_logic;
SIGNAL \Reg~117_q\ : std_logic;
SIGNAL \Reg~455_combout\ : std_logic;
SIGNAL \Reg~442_combout\ : std_logic;
SIGNAL \Reg~101_q\ : std_logic;
SIGNAL \Reg~456_combout\ : std_logic;
SIGNAL \Reg~444_combout\ : std_logic;
SIGNAL \Reg~133_q\ : std_logic;
SIGNAL \Reg~441_combout\ : std_logic;
SIGNAL \Reg~85_q\ : std_logic;
SIGNAL \Reg~278_combout\ : std_logic;
SIGNAL \LeReg1[2]~input_o\ : std_logic;
SIGNAL \Reg~447_combout\ : std_logic;
SIGNAL \Reg~181_q\ : std_logic;
SIGNAL \Reg~457_combout\ : std_logic;
SIGNAL \Reg~446_combout\ : std_logic;
SIGNAL \Reg~165_q\ : std_logic;
SIGNAL \Reg~445_combout\ : std_logic;
SIGNAL \Reg~149_q\ : std_logic;
SIGNAL \Reg~458_combout\ : std_logic;
SIGNAL \Reg~448_combout\ : std_logic;
SIGNAL \Reg~197_q\ : std_logic;
SIGNAL \Reg~279_combout\ : std_logic;
SIGNAL \Reg~281_combout\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \Reg~262_q\ : std_logic;
SIGNAL \Reg~134_q\ : std_logic;
SIGNAL \Reg~198_q\ : std_logic;
SIGNAL \Reg~70_q\ : std_logic;
SIGNAL \Reg~285_combout\ : std_logic;
SIGNAL \Reg~102_q\ : std_logic;
SIGNAL \Reg~38_q\ : std_logic;
SIGNAL \Reg~230_q\ : std_logic;
SIGNAL \Reg~166_q\ : std_logic;
SIGNAL \Reg~283_combout\ : std_logic;
SIGNAL \Reg~86feeder_combout\ : std_logic;
SIGNAL \Reg~86_q\ : std_logic;
SIGNAL \Reg~214_q\ : std_logic;
SIGNAL \Reg~22feeder_combout\ : std_logic;
SIGNAL \Reg~22_q\ : std_logic;
SIGNAL \Reg~150_q\ : std_logic;
SIGNAL \Reg~282_combout\ : std_logic;
SIGNAL \Reg~118feeder_combout\ : std_logic;
SIGNAL \Reg~118_q\ : std_logic;
SIGNAL \Reg~246_q\ : std_logic;
SIGNAL \Reg~182_q\ : std_logic;
SIGNAL \Reg~54feeder_combout\ : std_logic;
SIGNAL \Reg~54_q\ : std_logic;
SIGNAL \Reg~284_combout\ : std_logic;
SIGNAL \Reg~286_combout\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \Reg~39feeder_combout\ : std_logic;
SIGNAL \Reg~39_q\ : std_logic;
SIGNAL \Reg~71_q\ : std_logic;
SIGNAL \Reg~23_q\ : std_logic;
SIGNAL \Reg~55_q\ : std_logic;
SIGNAL \Reg~287_combout\ : std_logic;
SIGNAL \Reg~199_q\ : std_logic;
SIGNAL \Reg~151_q\ : std_logic;
SIGNAL \Reg~183_q\ : std_logic;
SIGNAL \Reg~167feeder_combout\ : std_logic;
SIGNAL \Reg~167_q\ : std_logic;
SIGNAL \Reg~289_combout\ : std_logic;
SIGNAL \Reg~231_q\ : std_logic;
SIGNAL \Reg~215_q\ : std_logic;
SIGNAL \Reg~263_q\ : std_logic;
SIGNAL \Reg~247_q\ : std_logic;
SIGNAL \Reg~290_combout\ : std_logic;
SIGNAL \Reg~103_q\ : std_logic;
SIGNAL \Reg~87_q\ : std_logic;
SIGNAL \Reg~135_q\ : std_logic;
SIGNAL \Reg~119_q\ : std_logic;
SIGNAL \Reg~288_combout\ : std_logic;
SIGNAL \Reg~291_combout\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \Reg~264_q\ : std_logic;
SIGNAL \Reg~136_q\ : std_logic;
SIGNAL \Reg~72_q\ : std_logic;
SIGNAL \Reg~200_q\ : std_logic;
SIGNAL \Reg~295_combout\ : std_logic;
SIGNAL \Reg~248_q\ : std_logic;
SIGNAL \Reg~56_q\ : std_logic;
SIGNAL \Reg~120feeder_combout\ : std_logic;
SIGNAL \Reg~120_q\ : std_logic;
SIGNAL \Reg~184_q\ : std_logic;
SIGNAL \Reg~294_combout\ : std_logic;
SIGNAL \Reg~232_q\ : std_logic;
SIGNAL \Reg~104feeder_combout\ : std_logic;
SIGNAL \Reg~104_q\ : std_logic;
SIGNAL \Reg~40_q\ : std_logic;
SIGNAL \Reg~168_q\ : std_logic;
SIGNAL \Reg~293_combout\ : std_logic;
SIGNAL \Reg~88feeder_combout\ : std_logic;
SIGNAL \Reg~88_q\ : std_logic;
SIGNAL \Reg~216_q\ : std_logic;
SIGNAL \Reg~24feeder_combout\ : std_logic;
SIGNAL \Reg~24_q\ : std_logic;
SIGNAL \Reg~152_q\ : std_logic;
SIGNAL \Reg~292_combout\ : std_logic;
SIGNAL \Reg~296_combout\ : std_logic;
SIGNAL \Data[4]~input_o\ : std_logic;
SIGNAL \Reg~105_q\ : std_logic;
SIGNAL \Reg~464_combout\ : std_logic;
SIGNAL \Reg~137_q\ : std_logic;
SIGNAL \Reg~463_combout\ : std_logic;
SIGNAL \Reg~121_q\ : std_logic;
SIGNAL \Reg~89_q\ : std_logic;
SIGNAL \Reg~298_combout\ : std_logic;
SIGNAL \Reg~41_q\ : std_logic;
SIGNAL \Reg~462_combout\ : std_logic;
SIGNAL \Reg~73_q\ : std_logic;
SIGNAL \Reg~461_combout\ : std_logic;
SIGNAL \Reg~57_q\ : std_logic;
SIGNAL \Reg~25_q\ : std_logic;
SIGNAL \Reg~297_combout\ : std_logic;
SIGNAL \Reg~169_q\ : std_logic;
SIGNAL \Reg~465_combout\ : std_logic;
SIGNAL \Reg~185_q\ : std_logic;
SIGNAL \Reg~466_combout\ : std_logic;
SIGNAL \Reg~201_q\ : std_logic;
SIGNAL \Reg~153_q\ : std_logic;
SIGNAL \Reg~299_combout\ : std_logic;
SIGNAL \Reg~468_combout\ : std_logic;
SIGNAL \Reg~265_q\ : std_logic;
SIGNAL \Reg~233_q\ : std_logic;
SIGNAL \Reg~217_q\ : std_logic;
SIGNAL \Reg~467_combout\ : std_logic;
SIGNAL \Reg~249_q\ : std_logic;
SIGNAL \Reg~300_combout\ : std_logic;
SIGNAL \Reg~301_combout\ : std_logic;
SIGNAL \Data[5]~input_o\ : std_logic;
SIGNAL \Reg~90feeder_combout\ : std_logic;
SIGNAL \Reg~90_q\ : std_logic;
SIGNAL \Reg~26_q\ : std_logic;
SIGNAL \Reg~154_q\ : std_logic;
SIGNAL \Reg~218_q\ : std_logic;
SIGNAL \Reg~302_combout\ : std_logic;
SIGNAL \Reg~122feeder_combout\ : std_logic;
SIGNAL \Reg~122_q\ : std_logic;
SIGNAL \Reg~58_q\ : std_logic;
SIGNAL \Reg~250_q\ : std_logic;
SIGNAL \Reg~186_q\ : std_logic;
SIGNAL \Reg~304_combout\ : std_logic;
SIGNAL \Reg~106_q\ : std_logic;
SIGNAL \Reg~42_q\ : std_logic;
SIGNAL \Reg~170_q\ : std_logic;
SIGNAL \Reg~234_q\ : std_logic;
SIGNAL \Reg~303_combout\ : std_logic;
SIGNAL \Reg~74_q\ : std_logic;
SIGNAL \Reg~138feeder_combout\ : std_logic;
SIGNAL \Reg~138_q\ : std_logic;
SIGNAL \Reg~202_q\ : std_logic;
SIGNAL \Reg~266_q\ : std_logic;
SIGNAL \Reg~305_combout\ : std_logic;
SIGNAL \Reg~306_combout\ : std_logic;
SIGNAL \Data[6]~input_o\ : std_logic;
SIGNAL \Reg~235_q\ : std_logic;
SIGNAL \Reg~219_q\ : std_logic;
SIGNAL \Reg~267_q\ : std_logic;
SIGNAL \Reg~251_q\ : std_logic;
SIGNAL \Reg~310_combout\ : std_logic;
SIGNAL \Reg~139_q\ : std_logic;
SIGNAL \Reg~91feeder_combout\ : std_logic;
SIGNAL \Reg~91_q\ : std_logic;
SIGNAL \Reg~107feeder_combout\ : std_logic;
SIGNAL \Reg~107_q\ : std_logic;
SIGNAL \Reg~123_q\ : std_logic;
SIGNAL \Reg~308_combout\ : std_logic;
SIGNAL \Reg~203_q\ : std_logic;
SIGNAL \Reg~155feeder_combout\ : std_logic;
SIGNAL \Reg~155_q\ : std_logic;
SIGNAL \Reg~171_q\ : std_logic;
SIGNAL \Reg~187_q\ : std_logic;
SIGNAL \Reg~309_combout\ : std_logic;
SIGNAL \Reg~43feeder_combout\ : std_logic;
SIGNAL \Reg~43_q\ : std_logic;
SIGNAL \Reg~27feeder_combout\ : std_logic;
SIGNAL \Reg~27_q\ : std_logic;
SIGNAL \Reg~75_q\ : std_logic;
SIGNAL \Reg~59_q\ : std_logic;
SIGNAL \Reg~307_combout\ : std_logic;
SIGNAL \Reg~311_combout\ : std_logic;
SIGNAL \Data[7]~input_o\ : std_logic;
SIGNAL \Reg~28feeder_combout\ : std_logic;
SIGNAL \Reg~28_q\ : std_logic;
SIGNAL \Reg~220_q\ : std_logic;
SIGNAL \Reg~92_q\ : std_logic;
SIGNAL \Reg~156_q\ : std_logic;
SIGNAL \Reg~312_combout\ : std_logic;
SIGNAL \Reg~268_q\ : std_logic;
SIGNAL \Reg~140_q\ : std_logic;
SIGNAL \Reg~76_q\ : std_logic;
SIGNAL \Reg~204_q\ : std_logic;
SIGNAL \Reg~315_combout\ : std_logic;
SIGNAL \Reg~252_q\ : std_logic;
SIGNAL \Reg~124feeder_combout\ : std_logic;
SIGNAL \Reg~124_q\ : std_logic;
SIGNAL \Reg~60_q\ : std_logic;
SIGNAL \Reg~188_q\ : std_logic;
SIGNAL \Reg~314_combout\ : std_logic;
SIGNAL \Reg~236_q\ : std_logic;
SIGNAL \Reg~108_q\ : std_logic;
SIGNAL \Reg~172_q\ : std_logic;
SIGNAL \Reg~44_q\ : std_logic;
SIGNAL \Reg~313_combout\ : std_logic;
SIGNAL \Reg~316_combout\ : std_logic;
SIGNAL \Data[8]~input_o\ : std_logic;
SIGNAL \Reg~473_combout\ : std_logic;
SIGNAL \Reg~221_q\ : std_logic;
SIGNAL \Reg~476_combout\ : std_logic;
SIGNAL \Reg~269_q\ : std_logic;
SIGNAL \Reg~475_combout\ : std_logic;
SIGNAL \Reg~253_q\ : std_logic;
SIGNAL \Reg~474_combout\ : std_logic;
SIGNAL \Reg~237_q\ : std_logic;
SIGNAL \Reg~320_combout\ : std_logic;
SIGNAL \Reg~472_combout\ : std_logic;
SIGNAL \Reg~141_q\ : std_logic;
SIGNAL \Reg~471_combout\ : std_logic;
SIGNAL \Reg~125_q\ : std_logic;
SIGNAL \Reg~470_combout\ : std_logic;
SIGNAL \Reg~109_q\ : std_logic;
SIGNAL \Reg~469_combout\ : std_logic;
SIGNAL \Reg~93_q\ : std_logic;
SIGNAL \Reg~318_combout\ : std_logic;
SIGNAL \Reg~157feeder_combout\ : std_logic;
SIGNAL \Reg~157_q\ : std_logic;
SIGNAL \Reg~205_q\ : std_logic;
SIGNAL \Reg~189_q\ : std_logic;
SIGNAL \Reg~173_q\ : std_logic;
SIGNAL \Reg~319_combout\ : std_logic;
SIGNAL \Reg~77_q\ : std_logic;
SIGNAL \Reg~45_q\ : std_logic;
SIGNAL \Reg~29_q\ : std_logic;
SIGNAL \Reg~61_q\ : std_logic;
SIGNAL \Reg~317_combout\ : std_logic;
SIGNAL \Reg~321_combout\ : std_logic;
SIGNAL \Data[9]~input_o\ : std_logic;
SIGNAL \Reg~254_q\ : std_logic;
SIGNAL \Reg~126_q\ : std_logic;
SIGNAL \Reg~62_q\ : std_logic;
SIGNAL \Reg~190_q\ : std_logic;
SIGNAL \Reg~324_combout\ : std_logic;
SIGNAL \Reg~110feeder_combout\ : std_logic;
SIGNAL \Reg~110_q\ : std_logic;
SIGNAL \Reg~238_q\ : std_logic;
SIGNAL \Reg~46_q\ : std_logic;
SIGNAL \Reg~174_q\ : std_logic;
SIGNAL \Reg~323_combout\ : std_logic;
SIGNAL \Reg~30_q\ : std_logic;
SIGNAL \Reg~94_q\ : std_logic;
SIGNAL \Reg~222_q\ : std_logic;
SIGNAL \Reg~158_q\ : std_logic;
SIGNAL \Reg~322_combout\ : std_logic;
SIGNAL \Reg~142_q\ : std_logic;
SIGNAL \Reg~270_q\ : std_logic;
SIGNAL \Reg~206_q\ : std_logic;
SIGNAL \Reg~78_q\ : std_logic;
SIGNAL \Reg~325_combout\ : std_logic;
SIGNAL \Reg~326_combout\ : std_logic;
SIGNAL \Data[10]~input_o\ : std_logic;
SIGNAL \Reg~239_q\ : std_logic;
SIGNAL \Reg~271_q\ : std_logic;
SIGNAL \Reg~255_q\ : std_logic;
SIGNAL \Reg~223_q\ : std_logic;
SIGNAL \Reg~330_combout\ : std_logic;
SIGNAL \Reg~95_q\ : std_logic;
SIGNAL \Reg~111feeder_combout\ : std_logic;
SIGNAL \Reg~111_q\ : std_logic;
SIGNAL \Reg~143_q\ : std_logic;
SIGNAL \Reg~127_q\ : std_logic;
SIGNAL \Reg~328_combout\ : std_logic;
SIGNAL \Reg~175_q\ : std_logic;
SIGNAL \Reg~159_q\ : std_logic;
SIGNAL \Reg~191_q\ : std_logic;
SIGNAL \Reg~207_q\ : std_logic;
SIGNAL \Reg~329_combout\ : std_logic;
SIGNAL \Reg~31_q\ : std_logic;
SIGNAL \Reg~79_q\ : std_logic;
SIGNAL \Reg~63_q\ : std_logic;
SIGNAL \Reg~47_q\ : std_logic;
SIGNAL \Reg~327_combout\ : std_logic;
SIGNAL \Reg~331_combout\ : std_logic;
SIGNAL \Data[11]~input_o\ : std_logic;
SIGNAL \Reg~48_q\ : std_logic;
SIGNAL \Reg~240_q\ : std_logic;
SIGNAL \Reg~112_q\ : std_logic;
SIGNAL \Reg~176_q\ : std_logic;
SIGNAL \Reg~333_combout\ : std_logic;
SIGNAL \Reg~144_q\ : std_logic;
SIGNAL \Reg~272_q\ : std_logic;
SIGNAL \Reg~80feeder_combout\ : std_logic;
SIGNAL \Reg~80_q\ : std_logic;
SIGNAL \Reg~208_q\ : std_logic;
SIGNAL \Reg~335_combout\ : std_logic;
SIGNAL \Reg~224_q\ : std_logic;
SIGNAL \Reg~32_q\ : std_logic;
SIGNAL \Reg~96_q\ : std_logic;
SIGNAL \Reg~160_q\ : std_logic;
SIGNAL \Reg~332_combout\ : std_logic;
SIGNAL \Reg~256_q\ : std_logic;
SIGNAL \Reg~64_q\ : std_logic;
SIGNAL \Reg~192_q\ : std_logic;
SIGNAL \Reg~128_q\ : std_logic;
SIGNAL \Reg~334_combout\ : std_logic;
SIGNAL \Reg~336_combout\ : std_logic;
SIGNAL \Data[12]~input_o\ : std_logic;
SIGNAL \Reg~97feeder_combout\ : std_logic;
SIGNAL \Reg~97_q\ : std_logic;
SIGNAL \Reg~113feeder_combout\ : std_logic;
SIGNAL \Reg~113_q\ : std_logic;
SIGNAL \Reg~145_q\ : std_logic;
SIGNAL \Reg~129_q\ : std_logic;
SIGNAL \Reg~338_combout\ : std_logic;
SIGNAL \Reg~49_q\ : std_logic;
SIGNAL \Reg~33feeder_combout\ : std_logic;
SIGNAL \Reg~33_q\ : std_logic;
SIGNAL \Reg~65_q\ : std_logic;
SIGNAL \Reg~81_q\ : std_logic;
SIGNAL \Reg~337_combout\ : std_logic;
SIGNAL \Reg~477_combout\ : std_logic;
SIGNAL \Reg~161_q\ : std_logic;
SIGNAL \Reg~480_combout\ : std_logic;
SIGNAL \Reg~209_q\ : std_logic;
SIGNAL \Reg~479_combout\ : std_logic;
SIGNAL \Reg~193_q\ : std_logic;
SIGNAL \Reg~478_combout\ : std_logic;
SIGNAL \Reg~177_q\ : std_logic;
SIGNAL \Reg~339_combout\ : std_logic;
SIGNAL \Reg~484_combout\ : std_logic;
SIGNAL \Reg~273_q\ : std_logic;
SIGNAL \Reg~483_combout\ : std_logic;
SIGNAL \Reg~257_q\ : std_logic;
SIGNAL \Reg~482_combout\ : std_logic;
SIGNAL \Reg~241_q\ : std_logic;
SIGNAL \Reg~481_combout\ : std_logic;
SIGNAL \Reg~225_q\ : std_logic;
SIGNAL \Reg~340_combout\ : std_logic;
SIGNAL \Reg~341_combout\ : std_logic;
SIGNAL \Data[13]~input_o\ : std_logic;
SIGNAL \Reg~258_q\ : std_logic;
SIGNAL \Reg~66_q\ : std_logic;
SIGNAL \Reg~130feeder_combout\ : std_logic;
SIGNAL \Reg~130_q\ : std_logic;
SIGNAL \Reg~194_q\ : std_logic;
SIGNAL \Reg~344_combout\ : std_logic;
SIGNAL \Reg~226_q\ : std_logic;
SIGNAL \Reg~34_q\ : std_logic;
SIGNAL \Reg~162_q\ : std_logic;
SIGNAL \Reg~98_q\ : std_logic;
SIGNAL \Reg~342_combout\ : std_logic;
SIGNAL \Reg~114_q\ : std_logic;
SIGNAL \Reg~242_q\ : std_logic;
SIGNAL \Reg~50_q\ : std_logic;
SIGNAL \Reg~178_q\ : std_logic;
SIGNAL \Reg~343_combout\ : std_logic;
SIGNAL \Reg~146_q\ : std_logic;
SIGNAL \Reg~274_q\ : std_logic;
SIGNAL \Reg~210_q\ : std_logic;
SIGNAL \Reg~82_q\ : std_logic;
SIGNAL \Reg~345_combout\ : std_logic;
SIGNAL \Reg~346_combout\ : std_logic;
SIGNAL \Data[14]~input_o\ : std_logic;
SIGNAL \Reg~35feeder_combout\ : std_logic;
SIGNAL \Reg~35_q\ : std_logic;
SIGNAL \Reg~83_q\ : std_logic;
SIGNAL \Reg~51_q\ : std_logic;
SIGNAL \Reg~67_q\ : std_logic;
SIGNAL \Reg~347_combout\ : std_logic;
SIGNAL \Reg~211_q\ : std_logic;
SIGNAL \Reg~179feeder_combout\ : std_logic;
SIGNAL \Reg~179_q\ : std_logic;
SIGNAL \Reg~195_q\ : std_logic;
SIGNAL \Reg~163_q\ : std_logic;
SIGNAL \Reg~349_combout\ : std_logic;
SIGNAL \Reg~99feeder_combout\ : std_logic;
SIGNAL \Reg~99_q\ : std_logic;
SIGNAL \Reg~115feeder_combout\ : std_logic;
SIGNAL \Reg~115_q\ : std_logic;
SIGNAL \Reg~147_q\ : std_logic;
SIGNAL \Reg~131_q\ : std_logic;
SIGNAL \Reg~348_combout\ : std_logic;
SIGNAL \Reg~227_q\ : std_logic;
SIGNAL \Reg~243_q\ : std_logic;
SIGNAL \Reg~259_q\ : std_logic;
SIGNAL \Reg~275_q\ : std_logic;
SIGNAL \Reg~350_combout\ : std_logic;
SIGNAL \Reg~351_combout\ : std_logic;
SIGNAL \Data[15]~input_o\ : std_logic;
SIGNAL \Reg~68_q\ : std_logic;
SIGNAL \Reg~132_q\ : std_logic;
SIGNAL \Reg~260_q\ : std_logic;
SIGNAL \Reg~196_q\ : std_logic;
SIGNAL \Reg~354_combout\ : std_logic;
SIGNAL \Reg~228_q\ : std_logic;
SIGNAL \Reg~100_q\ : std_logic;
SIGNAL \Reg~36_q\ : std_logic;
SIGNAL \Reg~164_q\ : std_logic;
SIGNAL \Reg~352_combout\ : std_logic;
SIGNAL \Reg~148_q\ : std_logic;
SIGNAL \Reg~84_q\ : std_logic;
SIGNAL \Reg~276_q\ : std_logic;
SIGNAL \Reg~212_q\ : std_logic;
SIGNAL \Reg~355_combout\ : std_logic;
SIGNAL \Reg~116_q\ : std_logic;
SIGNAL \Reg~52_q\ : std_logic;
SIGNAL \Reg~244_q\ : std_logic;
SIGNAL \Reg~180_q\ : std_logic;
SIGNAL \Reg~353_combout\ : std_logic;
SIGNAL \Reg~356_combout\ : std_logic;
SIGNAL \LeReg2[1]~input_o\ : std_logic;
SIGNAL \LeReg2[0]~input_o\ : std_logic;
SIGNAL \Reg~357_combout\ : std_logic;
SIGNAL \LeReg2[3]~input_o\ : std_logic;
SIGNAL \LeReg2[2]~input_o\ : std_logic;
SIGNAL \Reg~360_combout\ : std_logic;
SIGNAL \Reg~359_combout\ : std_logic;
SIGNAL \Reg~358_combout\ : std_logic;
SIGNAL \Reg~361_combout\ : std_logic;
SIGNAL \Reg~365_combout\ : std_logic;
SIGNAL \Reg~364_combout\ : std_logic;
SIGNAL \Reg~362_combout\ : std_logic;
SIGNAL \Reg~363_combout\ : std_logic;
SIGNAL \Reg~366_combout\ : std_logic;
SIGNAL \Reg~368_combout\ : std_logic;
SIGNAL \Reg~370_combout\ : std_logic;
SIGNAL \Reg~369_combout\ : std_logic;
SIGNAL \Reg~367_combout\ : std_logic;
SIGNAL \Reg~371_combout\ : std_logic;
SIGNAL \Reg~374_combout\ : std_logic;
SIGNAL \Reg~375_combout\ : std_logic;
SIGNAL \Reg~372_combout\ : std_logic;
SIGNAL \Reg~373_combout\ : std_logic;
SIGNAL \Reg~376_combout\ : std_logic;
SIGNAL \Reg~377_combout\ : std_logic;
SIGNAL \Reg~378_combout\ : std_logic;
SIGNAL \Reg~379_combout\ : std_logic;
SIGNAL \Reg~380_combout\ : std_logic;
SIGNAL \Reg~381_combout\ : std_logic;
SIGNAL \Reg~383_combout\ : std_logic;
SIGNAL \Reg~382_combout\ : std_logic;
SIGNAL \Reg~384_combout\ : std_logic;
SIGNAL \Reg~385_combout\ : std_logic;
SIGNAL \Reg~386_combout\ : std_logic;
SIGNAL \Reg~389_combout\ : std_logic;
SIGNAL \Reg~387_combout\ : std_logic;
SIGNAL \Reg~388_combout\ : std_logic;
SIGNAL \Reg~390_combout\ : std_logic;
SIGNAL \Reg~391_combout\ : std_logic;
SIGNAL \Reg~395_combout\ : std_logic;
SIGNAL \Reg~393_combout\ : std_logic;
SIGNAL \Reg~394_combout\ : std_logic;
SIGNAL \Reg~392_combout\ : std_logic;
SIGNAL \Reg~396_combout\ : std_logic;
SIGNAL \Reg~398_combout\ : std_logic;
SIGNAL \Reg~399_combout\ : std_logic;
SIGNAL \Reg~397_combout\ : std_logic;
SIGNAL \Reg~400_combout\ : std_logic;
SIGNAL \Reg~401_combout\ : std_logic;
SIGNAL \Reg~403_combout\ : std_logic;
SIGNAL \Reg~405_combout\ : std_logic;
SIGNAL \Reg~404_combout\ : std_logic;
SIGNAL \Reg~402_combout\ : std_logic;
SIGNAL \Reg~406_combout\ : std_logic;
SIGNAL \Reg~407_combout\ : std_logic;
SIGNAL \Reg~409_combout\ : std_logic;
SIGNAL \Reg~410_combout\ : std_logic;
SIGNAL \Reg~408_combout\ : std_logic;
SIGNAL \Reg~411_combout\ : std_logic;
SIGNAL \Reg~415_combout\ : std_logic;
SIGNAL \Reg~414_combout\ : std_logic;
SIGNAL \Reg~413_combout\ : std_logic;
SIGNAL \Reg~412_combout\ : std_logic;
SIGNAL \Reg~416_combout\ : std_logic;
SIGNAL \Reg~418_combout\ : std_logic;
SIGNAL \Reg~420_combout\ : std_logic;
SIGNAL \Reg~419_combout\ : std_logic;
SIGNAL \Reg~417_combout\ : std_logic;
SIGNAL \Reg~421_combout\ : std_logic;
SIGNAL \Reg~423_combout\ : std_logic;
SIGNAL \Reg~422_combout\ : std_logic;
SIGNAL \Reg~424_combout\ : std_logic;
SIGNAL \Reg~425_combout\ : std_logic;
SIGNAL \Reg~426_combout\ : std_logic;
SIGNAL \Reg~429_combout\ : std_logic;
SIGNAL \Reg~427_combout\ : std_logic;
SIGNAL \Reg~428_combout\ : std_logic;
SIGNAL \Reg~430_combout\ : std_logic;
SIGNAL \Reg~431_combout\ : std_logic;
SIGNAL \Reg~434_combout\ : std_logic;
SIGNAL \Reg~433_combout\ : std_logic;
SIGNAL \Reg~435_combout\ : std_logic;
SIGNAL \Reg~432_combout\ : std_logic;
SIGNAL \Reg~436_combout\ : std_logic;
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
SIGNAL \ALT_INV_Data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[1]~input_o\ : std_logic;
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
\ALT_INV_Data[14]~input_o\ <= NOT \Data[14]~input_o\;
\ALT_INV_Data[13]~input_o\ <= NOT \Data[13]~input_o\;
\ALT_INV_Data[12]~input_o\ <= NOT \Data[12]~input_o\;
\ALT_INV_Data[11]~input_o\ <= NOT \Data[11]~input_o\;
\ALT_INV_Data[10]~input_o\ <= NOT \Data[10]~input_o\;
\ALT_INV_Data[9]~input_o\ <= NOT \Data[9]~input_o\;
\ALT_INV_Data[8]~input_o\ <= NOT \Data[8]~input_o\;
\ALT_INV_Data[7]~input_o\ <= NOT \Data[7]~input_o\;
\ALT_INV_Data[6]~input_o\ <= NOT \Data[6]~input_o\;
\ALT_INV_Data[5]~input_o\ <= NOT \Data[5]~input_o\;
\ALT_INV_Data[4]~input_o\ <= NOT \Data[4]~input_o\;
\ALT_INV_Data[3]~input_o\ <= NOT \Data[3]~input_o\;
\ALT_INV_Data[2]~input_o\ <= NOT \Data[2]~input_o\;
\ALT_INV_Data[1]~input_o\ <= NOT \Data[1]~input_o\;
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

-- Location: IOOBUF_X40_Y0_N36
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
	o => ww_RegA(0));

-- Location: IOOBUF_X89_Y6_N22
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
	o => ww_RegA(1));

-- Location: IOOBUF_X72_Y0_N36
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
	o => ww_RegA(2));

-- Location: IOOBUF_X40_Y0_N53
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
	o => ww_RegA(3));

-- Location: IOOBUF_X72_Y0_N19
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
	o => ww_RegA(4));

-- Location: IOOBUF_X50_Y0_N76
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
	o => ww_RegA(5));

-- Location: IOOBUF_X72_Y0_N2
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
	o => ww_RegA(6));

-- Location: IOOBUF_X56_Y0_N53
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
	o => ww_RegA(7));

-- Location: IOOBUF_X54_Y0_N53
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
	o => ww_RegA(8));

-- Location: IOOBUF_X68_Y0_N36
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
	o => ww_RegA(9));

-- Location: IOOBUF_X38_Y0_N36
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
	o => ww_RegA(10));

-- Location: IOOBUF_X66_Y0_N42
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
	o => ww_RegA(11));

-- Location: IOOBUF_X52_Y0_N19
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
	o => ww_RegA(12));

-- Location: IOOBUF_X58_Y0_N76
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
	o => ww_RegA(13));

-- Location: IOOBUF_X89_Y4_N45
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
	o => ww_RegA(14));

-- Location: IOOBUF_X66_Y0_N93
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
	o => ww_RegA(15));

-- Location: IOOBUF_X62_Y0_N36
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
	o => ww_RegB(0));

-- Location: IOOBUF_X89_Y8_N56
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
	o => ww_RegB(1));

-- Location: IOOBUF_X54_Y0_N19
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
	o => ww_RegB(2));

-- Location: IOOBUF_X89_Y6_N39
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
	o => ww_RegB(3));

-- Location: IOOBUF_X89_Y4_N79
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
	o => ww_RegB(4));

-- Location: IOOBUF_X50_Y0_N42
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
	o => ww_RegB(5));

-- Location: IOOBUF_X68_Y0_N19
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
	o => ww_RegB(6));

-- Location: IOOBUF_X52_Y0_N2
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
	o => ww_RegB(7));

-- Location: IOOBUF_X56_Y0_N19
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
	o => ww_RegB(8));

-- Location: IOOBUF_X40_Y0_N2
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
	o => ww_RegB(9));

-- Location: IOOBUF_X89_Y4_N96
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
	o => ww_RegB(10));

-- Location: IOOBUF_X52_Y0_N53
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
	o => ww_RegB(11));

-- Location: IOOBUF_X52_Y0_N36
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
	o => ww_RegB(12));

-- Location: IOOBUF_X56_Y0_N36
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
	o => ww_RegB(13));

-- Location: IOOBUF_X50_Y0_N59
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
	o => ww_RegB(14));

-- Location: IOOBUF_X68_Y0_N2
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
	o => ww_RegB(15));

-- Location: IOIBUF_X89_Y35_N61
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G10
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X72_Y0_N52
\Data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(0),
	o => \Data[0]~input_o\);

-- Location: LABCELL_X64_Y5_N30
\Reg~454\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~454_combout\ = ( !\Data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~454_combout\);

-- Location: IOIBUF_X58_Y0_N41
\EscReg~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EscReg,
	o => \EscReg~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\RegDst[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegDst(3),
	o => \RegDst[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\RegDst[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegDst(0),
	o => \RegDst[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\RegDst[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegDst(2),
	o => \RegDst[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\RegDst[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegDst(1),
	o => \RegDst[1]~input_o\);

-- Location: LABCELL_X67_Y3_N42
\Reg~440\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~440_combout\ = ( \RegDst[1]~input_o\ & ( (\EscReg~input_o\ & (!\RegDst[3]~input_o\ & (\RegDst[0]~input_o\ & !\RegDst[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EscReg~input_o\,
	datab => \ALT_INV_RegDst[3]~input_o\,
	datac => \ALT_INV_RegDst[0]~input_o\,
	datad => \ALT_INV_RegDst[2]~input_o\,
	datae => \ALT_INV_RegDst[1]~input_o\,
	combout => \Reg~440_combout\);

-- Location: FF_X64_Y5_N32
\Reg~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~454_combout\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~69_q\);

-- Location: LABCELL_X60_Y4_N15
\Reg~439\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~439_combout\ = ( !\RegDst[0]~input_o\ & ( (!\RegDst[2]~input_o\ & (\RegDst[1]~input_o\ & (!\RegDst[3]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[2]~input_o\,
	datab => \ALT_INV_RegDst[1]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	dataf => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~439_combout\);

-- Location: FF_X63_Y3_N44
\Reg~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[0]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~53_q\);

-- Location: LABCELL_X63_Y3_N36
\Reg~453\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~453_combout\ = ( !\Data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~453_combout\);

-- Location: LABCELL_X60_Y3_N6
\Reg~438\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~438_combout\ = ( !\RegDst[2]~input_o\ & ( \EscReg~input_o\ & ( (\RegDst[0]~input_o\ & (!\RegDst[1]~input_o\ & !\RegDst[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[0]~input_o\,
	datab => \ALT_INV_RegDst[1]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datae => \ALT_INV_RegDst[2]~input_o\,
	dataf => \ALT_INV_EscReg~input_o\,
	combout => \Reg~438_combout\);

-- Location: FF_X63_Y3_N38
\Reg~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~453_combout\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~37_q\);

-- Location: IOIBUF_X68_Y0_N52
\LeReg1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg1(1),
	o => \LeReg1[1]~input_o\);

-- Location: LABCELL_X60_Y3_N36
\Reg~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~437_combout\ = ( !\RegDst[2]~input_o\ & ( (\EscReg~input_o\ & (!\RegDst[1]~input_o\ & (!\RegDst[3]~input_o\ & !\RegDst[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EscReg~input_o\,
	datab => \ALT_INV_RegDst[1]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_RegDst[0]~input_o\,
	datae => \ALT_INV_RegDst[2]~input_o\,
	combout => \Reg~437_combout\);

-- Location: FF_X63_Y3_N1
\Reg~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[0]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~21_q\);

-- Location: IOIBUF_X70_Y0_N1
\LeReg1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg1(0),
	o => \LeReg1[0]~input_o\);

-- Location: LABCELL_X63_Y3_N0
\Reg~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~277_combout\ = ( \Reg~21_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((!\Reg~37_q\))) # (\LeReg1[1]~input_o\ & (!\Reg~69_q\)) ) ) ) # ( !\Reg~21_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((!\Reg~37_q\))) # (\LeReg1[1]~input_o\ 
-- & (!\Reg~69_q\)) ) ) ) # ( \Reg~21_q\ & ( !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\) # (\Reg~53_q\) ) ) ) # ( !\Reg~21_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~53_q\ & \LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001111110000101010101111000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~69_q\,
	datab => \ALT_INV_Reg~53_q\,
	datac => \ALT_INV_Reg~37_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~21_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~277_combout\);

-- Location: IOIBUF_X70_Y0_N52
\LeReg1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg1(3),
	o => \LeReg1[3]~input_o\);

-- Location: LABCELL_X67_Y3_N57
\Reg~451\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~451_combout\ = ( !\RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (\RegDst[3]~input_o\ & (\RegDst[2]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[3]~input_o\,
	datac => \ALT_INV_RegDst[2]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	dataf => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~451_combout\);

-- Location: FF_X66_Y3_N8
\Reg~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[0]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~245_q\);

-- Location: LABCELL_X64_Y5_N6
\Reg~460\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~460_combout\ = ( !\Data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~460_combout\);

-- Location: LABCELL_X60_Y4_N54
\Reg~452\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~452_combout\ = ( \RegDst[0]~input_o\ & ( (\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & (\RegDst[1]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[2]~input_o\,
	datab => \ALT_INV_RegDst[3]~input_o\,
	datac => \ALT_INV_RegDst[1]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	dataf => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~452_combout\);

-- Location: FF_X64_Y5_N8
\Reg~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~460_combout\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~261_q\);

-- Location: LABCELL_X60_Y3_N0
\Reg~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~449_combout\ = ( \RegDst[2]~input_o\ & ( !\RegDst[0]~input_o\ & ( (\EscReg~input_o\ & (!\RegDst[1]~input_o\ & \RegDst[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EscReg~input_o\,
	datab => \ALT_INV_RegDst[1]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datae => \ALT_INV_RegDst[2]~input_o\,
	dataf => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~449_combout\);

-- Location: FF_X66_Y3_N32
\Reg~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[0]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~213_q\);

-- Location: LABCELL_X67_Y5_N36
\Reg~459\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~459_combout\ = ( !\Data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~459_combout\);

-- Location: MLABCELL_X65_Y3_N57
\Reg~450\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~450_combout\ = ( \RegDst[0]~input_o\ & ( !\RegDst[1]~input_o\ & ( (\EscReg~input_o\ & (\RegDst[3]~input_o\ & \RegDst[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_EscReg~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_RegDst[2]~input_o\,
	datae => \ALT_INV_RegDst[0]~input_o\,
	dataf => \ALT_INV_RegDst[1]~input_o\,
	combout => \Reg~450_combout\);

-- Location: FF_X65_Y3_N32
\Reg~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Reg~459_combout\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~229_q\);

-- Location: LABCELL_X66_Y3_N30
\Reg~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~280_combout\ = ( \Reg~213_q\ & ( \Reg~229_q\ & ( (!\LeReg1[1]~input_o\ & (((!\LeReg1[0]~input_o\)))) # (\LeReg1[1]~input_o\ & ((!\LeReg1[0]~input_o\ & (\Reg~245_q\)) # (\LeReg1[0]~input_o\ & ((!\Reg~261_q\))))) ) ) ) # ( !\Reg~213_q\ & ( \Reg~229_q\ 
-- & ( (\LeReg1[1]~input_o\ & ((!\LeReg1[0]~input_o\ & (\Reg~245_q\)) # (\LeReg1[0]~input_o\ & ((!\Reg~261_q\))))) ) ) ) # ( \Reg~213_q\ & ( !\Reg~229_q\ & ( (!\LeReg1[1]~input_o\) # ((!\LeReg1[0]~input_o\ & (\Reg~245_q\)) # (\LeReg1[0]~input_o\ & 
-- ((!\Reg~261_q\)))) ) ) ) # ( !\Reg~213_q\ & ( !\Reg~229_q\ & ( (!\LeReg1[1]~input_o\ & (((\LeReg1[0]~input_o\)))) # (\LeReg1[1]~input_o\ & ((!\LeReg1[0]~input_o\ & (\Reg~245_q\)) # (\LeReg1[0]~input_o\ & ((!\Reg~261_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011010101111111011101000010101000100001011010110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[1]~input_o\,
	datab => \ALT_INV_Reg~245_q\,
	datac => \ALT_INV_LeReg1[0]~input_o\,
	datad => \ALT_INV_Reg~261_q\,
	datae => \ALT_INV_Reg~213_q\,
	dataf => \ALT_INV_Reg~229_q\,
	combout => \Reg~280_combout\);

-- Location: LABCELL_X67_Y3_N54
\Reg~443\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~443_combout\ = ( !\RegDst[0]~input_o\ & ( (\RegDst[1]~input_o\ & (!\RegDst[3]~input_o\ & (\EscReg~input_o\ & \RegDst[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[3]~input_o\,
	datac => \ALT_INV_EscReg~input_o\,
	datad => \ALT_INV_RegDst[2]~input_o\,
	dataf => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~443_combout\);

-- Location: FF_X66_Y5_N32
\Reg~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[0]~input_o\,
	sload => VCC,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~117_q\);

-- Location: MLABCELL_X65_Y5_N9
\Reg~455\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~455_combout\ = ( !\Data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~455_combout\);

-- Location: LABCELL_X60_Y3_N42
\Reg~442\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~442_combout\ = ( \RegDst[2]~input_o\ & ( \EscReg~input_o\ & ( (\RegDst[0]~input_o\ & (!\RegDst[1]~input_o\ & !\RegDst[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[0]~input_o\,
	datab => \ALT_INV_RegDst[1]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datae => \ALT_INV_RegDst[2]~input_o\,
	dataf => \ALT_INV_EscReg~input_o\,
	combout => \Reg~442_combout\);

-- Location: FF_X65_Y5_N11
\Reg~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~455_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~101_q\);

-- Location: MLABCELL_X65_Y5_N15
\Reg~456\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~456_combout\ = ( !\Data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~456_combout\);

-- Location: LABCELL_X60_Y4_N12
\Reg~444\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~444_combout\ = ( !\RegDst[3]~input_o\ & ( (\RegDst[2]~input_o\ & (\RegDst[1]~input_o\ & (\RegDst[0]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[2]~input_o\,
	datab => \ALT_INV_RegDst[1]~input_o\,
	datac => \ALT_INV_RegDst[0]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	dataf => \ALT_INV_RegDst[3]~input_o\,
	combout => \Reg~444_combout\);

-- Location: FF_X65_Y5_N17
\Reg~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~456_combout\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~133_q\);

-- Location: LABCELL_X67_Y3_N51
\Reg~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~441_combout\ = ( !\RegDst[0]~input_o\ & ( (\EscReg~input_o\ & (!\RegDst[1]~input_o\ & (!\RegDst[3]~input_o\ & \RegDst[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EscReg~input_o\,
	datab => \ALT_INV_RegDst[1]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_RegDst[2]~input_o\,
	dataf => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~441_combout\);

-- Location: FF_X65_Y5_N34
\Reg~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[0]~input_o\,
	sload => VCC,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~85_q\);

-- Location: MLABCELL_X65_Y5_N33
\Reg~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~278_combout\ = ( \Reg~85_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (!\Reg~101_q\)) # (\LeReg1[1]~input_o\ & ((!\Reg~133_q\))) ) ) ) # ( !\Reg~85_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (!\Reg~101_q\)) # 
-- (\LeReg1[1]~input_o\ & ((!\Reg~133_q\))) ) ) ) # ( \Reg~85_q\ & ( !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\) # (\Reg~117_q\) ) ) ) # ( !\Reg~85_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~117_q\ & \LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010111001100111100001100110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~117_q\,
	datab => \ALT_INV_Reg~101_q\,
	datac => \ALT_INV_Reg~133_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~85_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~278_combout\);

-- Location: IOIBUF_X60_Y0_N1
\LeReg1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg1(2),
	o => \LeReg1[2]~input_o\);

-- Location: MLABCELL_X65_Y4_N9
\Reg~447\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~447_combout\ = ( \EscReg~input_o\ & ( (\RegDst[1]~input_o\ & (\RegDst[3]~input_o\ & (!\RegDst[0]~input_o\ & !\RegDst[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[1]~input_o\,
	datab => \ALT_INV_RegDst[3]~input_o\,
	datac => \ALT_INV_RegDst[0]~input_o\,
	datad => \ALT_INV_RegDst[2]~input_o\,
	dataf => \ALT_INV_EscReg~input_o\,
	combout => \Reg~447_combout\);

-- Location: FF_X66_Y5_N14
\Reg~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[0]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~181_q\);

-- Location: LABCELL_X70_Y4_N0
\Reg~457\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~457_combout\ = ( !\Data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~457_combout\);

-- Location: LABCELL_X67_Y3_N48
\Reg~446\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~446_combout\ = ( \RegDst[0]~input_o\ & ( (\EscReg~input_o\ & (!\RegDst[1]~input_o\ & (\RegDst[3]~input_o\ & !\RegDst[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EscReg~input_o\,
	datab => \ALT_INV_RegDst[1]~input_o\,
	datac => \ALT_INV_RegDst[3]~input_o\,
	datad => \ALT_INV_RegDst[2]~input_o\,
	dataf => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~446_combout\);

-- Location: FF_X70_Y4_N2
\Reg~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~457_combout\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~165_q\);

-- Location: LABCELL_X67_Y3_N27
\Reg~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~445_combout\ = ( !\RegDst[1]~input_o\ & ( (!\RegDst[0]~input_o\ & (\RegDst[3]~input_o\ & (!\RegDst[2]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[0]~input_o\,
	datab => \ALT_INV_RegDst[3]~input_o\,
	datac => \ALT_INV_RegDst[2]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	dataf => \ALT_INV_RegDst[1]~input_o\,
	combout => \Reg~445_combout\);

-- Location: FF_X66_Y5_N8
\Reg~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[0]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~149_q\);

-- Location: LABCELL_X63_Y5_N33
\Reg~458\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~458_combout\ = ( !\Data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Data[0]~input_o\,
	combout => \Reg~458_combout\);

-- Location: LABCELL_X60_Y4_N18
\Reg~448\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~448_combout\ = ( \RegDst[0]~input_o\ & ( (!\RegDst[2]~input_o\ & (\RegDst[3]~input_o\ & (\RegDst[1]~input_o\ & \EscReg~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegDst[2]~input_o\,
	datab => \ALT_INV_RegDst[3]~input_o\,
	datac => \ALT_INV_RegDst[1]~input_o\,
	datad => \ALT_INV_EscReg~input_o\,
	dataf => \ALT_INV_RegDst[0]~input_o\,
	combout => \Reg~448_combout\);

-- Location: FF_X63_Y5_N35
\Reg~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~458_combout\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~197_q\);

-- Location: LABCELL_X66_Y5_N6
\Reg~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~279_combout\ = ( \Reg~149_q\ & ( \Reg~197_q\ & ( (!\LeReg1[1]~input_o\ & (((!\Reg~165_q\) # (!\LeReg1[0]~input_o\)))) # (\LeReg1[1]~input_o\ & (\Reg~181_q\ & ((!\LeReg1[0]~input_o\)))) ) ) ) # ( !\Reg~149_q\ & ( \Reg~197_q\ & ( (!\LeReg1[1]~input_o\ 
-- & (((!\Reg~165_q\ & \LeReg1[0]~input_o\)))) # (\LeReg1[1]~input_o\ & (\Reg~181_q\ & ((!\LeReg1[0]~input_o\)))) ) ) ) # ( \Reg~149_q\ & ( !\Reg~197_q\ & ( (!\LeReg1[1]~input_o\ & (((!\Reg~165_q\) # (!\LeReg1[0]~input_o\)))) # (\LeReg1[1]~input_o\ & 
-- (((\LeReg1[0]~input_o\)) # (\Reg~181_q\))) ) ) ) # ( !\Reg~149_q\ & ( !\Reg~197_q\ & ( (!\LeReg1[1]~input_o\ & (((!\Reg~165_q\ & \LeReg1[0]~input_o\)))) # (\LeReg1[1]~input_o\ & (((\LeReg1[0]~input_o\)) # (\Reg~181_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110101101110111111010100010001101000001011101110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[1]~input_o\,
	datab => \ALT_INV_Reg~181_q\,
	datac => \ALT_INV_Reg~165_q\,
	datad => \ALT_INV_LeReg1[0]~input_o\,
	datae => \ALT_INV_Reg~149_q\,
	dataf => \ALT_INV_Reg~197_q\,
	combout => \Reg~279_combout\);

-- Location: LABCELL_X63_Y3_N48
\Reg~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~281_combout\ = ( \LeReg1[2]~input_o\ & ( \Reg~279_combout\ & ( (!\LeReg1[3]~input_o\ & ((\Reg~278_combout\))) # (\LeReg1[3]~input_o\ & (\Reg~280_combout\)) ) ) ) # ( !\LeReg1[2]~input_o\ & ( \Reg~279_combout\ & ( (\LeReg1[3]~input_o\) # 
-- (\Reg~277_combout\) ) ) ) # ( \LeReg1[2]~input_o\ & ( !\Reg~279_combout\ & ( (!\LeReg1[3]~input_o\ & ((\Reg~278_combout\))) # (\LeReg1[3]~input_o\ & (\Reg~280_combout\)) ) ) ) # ( !\LeReg1[2]~input_o\ & ( !\Reg~279_combout\ & ( (\Reg~277_combout\ & 
-- !\LeReg1[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~277_combout\,
	datab => \ALT_INV_LeReg1[3]~input_o\,
	datac => \ALT_INV_Reg~280_combout\,
	datad => \ALT_INV_Reg~278_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_Reg~279_combout\,
	combout => \Reg~281_combout\);

-- Location: IOIBUF_X89_Y6_N55
\Data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(1),
	o => \Data[1]~input_o\);

-- Location: FF_X64_Y5_N19
\Reg~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~262_q\);

-- Location: FF_X64_Y5_N14
\Reg~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~134_q\);

-- Location: FF_X63_Y5_N37
\Reg~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~198_q\);

-- Location: FF_X64_Y5_N35
\Reg~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~70_q\);

-- Location: LABCELL_X63_Y5_N36
\Reg~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~285_combout\ = ( \Reg~198_q\ & ( \Reg~70_q\ & ( (!\LeReg1[2]~input_o\) # ((!\LeReg1[3]~input_o\ & ((\Reg~134_q\))) # (\LeReg1[3]~input_o\ & (\Reg~262_q\))) ) ) ) # ( !\Reg~198_q\ & ( \Reg~70_q\ & ( (!\LeReg1[2]~input_o\ & (((!\LeReg1[3]~input_o\)))) 
-- # (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & ((\Reg~134_q\))) # (\LeReg1[3]~input_o\ & (\Reg~262_q\)))) ) ) ) # ( \Reg~198_q\ & ( !\Reg~70_q\ & ( (!\LeReg1[2]~input_o\ & (((\LeReg1[3]~input_o\)))) # (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & 
-- ((\Reg~134_q\))) # (\LeReg1[3]~input_o\ & (\Reg~262_q\)))) ) ) ) # ( !\Reg~198_q\ & ( !\Reg~70_q\ & ( (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & ((\Reg~134_q\))) # (\LeReg1[3]~input_o\ & (\Reg~262_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~262_q\,
	datab => \ALT_INV_Reg~134_q\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_LeReg1[3]~input_o\,
	datae => \ALT_INV_Reg~198_q\,
	dataf => \ALT_INV_Reg~70_q\,
	combout => \Reg~285_combout\);

-- Location: FF_X65_Y5_N29
\Reg~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~102_q\);

-- Location: FF_X63_Y3_N53
\Reg~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~38_q\);

-- Location: FF_X67_Y4_N7
\Reg~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~230_q\);

-- Location: FF_X71_Y4_N7
\Reg~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~166_q\);

-- Location: LABCELL_X71_Y4_N6
\Reg~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~283_combout\ = ( \Reg~166_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~230_q\) ) ) ) # ( !\Reg~166_q\ & ( \LeReg1[3]~input_o\ & ( (\LeReg1[2]~input_o\ & \Reg~230_q\) ) ) ) # ( \Reg~166_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~38_q\))) # (\LeReg1[2]~input_o\ & (\Reg~102_q\)) ) ) ) # ( !\Reg~166_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~38_q\))) # (\LeReg1[2]~input_o\ & (\Reg~102_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[2]~input_o\,
	datab => \ALT_INV_Reg~102_q\,
	datac => \ALT_INV_Reg~38_q\,
	datad => \ALT_INV_Reg~230_q\,
	datae => \ALT_INV_Reg~166_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~283_combout\);

-- Location: MLABCELL_X65_Y5_N51
\Reg~86feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~86feeder_combout\ = ( \Data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[1]~input_o\,
	combout => \Reg~86feeder_combout\);

-- Location: FF_X65_Y5_N53
\Reg~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~86feeder_combout\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~86_q\);

-- Location: FF_X67_Y4_N32
\Reg~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~214_q\);

-- Location: LABCELL_X63_Y3_N27
\Reg~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~22feeder_combout\ = ( \Data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[1]~input_o\,
	combout => \Reg~22feeder_combout\);

-- Location: FF_X63_Y3_N29
\Reg~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~22feeder_combout\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~22_q\);

-- Location: FF_X71_Y4_N1
\Reg~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~150_q\);

-- Location: LABCELL_X71_Y4_N0
\Reg~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~282_combout\ = ( \Reg~150_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~214_q\) ) ) ) # ( !\Reg~150_q\ & ( \LeReg1[3]~input_o\ & ( (\LeReg1[2]~input_o\ & \Reg~214_q\) ) ) ) # ( \Reg~150_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~22_q\))) # (\LeReg1[2]~input_o\ & (\Reg~86_q\)) ) ) ) # ( !\Reg~150_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~22_q\))) # (\LeReg1[2]~input_o\ & (\Reg~86_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[2]~input_o\,
	datab => \ALT_INV_Reg~86_q\,
	datac => \ALT_INV_Reg~214_q\,
	datad => \ALT_INV_Reg~22_q\,
	datae => \ALT_INV_Reg~150_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~282_combout\);

-- Location: LABCELL_X66_Y5_N51
\Reg~118feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~118feeder_combout\ = ( \Data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[1]~input_o\,
	combout => \Reg~118feeder_combout\);

-- Location: FF_X66_Y5_N53
\Reg~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~118feeder_combout\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~118_q\);

-- Location: FF_X67_Y4_N43
\Reg~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~246_q\);

-- Location: FF_X67_Y3_N2
\Reg~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[1]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~182_q\);

-- Location: LABCELL_X63_Y3_N33
\Reg~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~54feeder_combout\ = ( \Data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[1]~input_o\,
	combout => \Reg~54feeder_combout\);

-- Location: FF_X63_Y3_N35
\Reg~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~54feeder_combout\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~54_q\);

-- Location: LABCELL_X67_Y3_N0
\Reg~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~284_combout\ = ( \Reg~182_q\ & ( \Reg~54_q\ & ( (!\LeReg1[2]~input_o\) # ((!\LeReg1[3]~input_o\ & (\Reg~118_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~246_q\)))) ) ) ) # ( !\Reg~182_q\ & ( \Reg~54_q\ & ( (!\LeReg1[3]~input_o\ & (((!\LeReg1[2]~input_o\)) # 
-- (\Reg~118_q\))) # (\LeReg1[3]~input_o\ & (((\LeReg1[2]~input_o\ & \Reg~246_q\)))) ) ) ) # ( \Reg~182_q\ & ( !\Reg~54_q\ & ( (!\LeReg1[3]~input_o\ & (\Reg~118_q\ & (\LeReg1[2]~input_o\))) # (\LeReg1[3]~input_o\ & (((!\LeReg1[2]~input_o\) # (\Reg~246_q\)))) 
-- ) ) ) # ( !\Reg~182_q\ & ( !\Reg~54_q\ & ( (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & (\Reg~118_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~246_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~118_q\,
	datab => \ALT_INV_LeReg1[3]~input_o\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_Reg~246_q\,
	datae => \ALT_INV_Reg~182_q\,
	dataf => \ALT_INV_Reg~54_q\,
	combout => \Reg~284_combout\);

-- Location: LABCELL_X71_Y4_N12
\Reg~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~286_combout\ = ( \Reg~282_combout\ & ( \Reg~284_combout\ & ( (!\LeReg1[0]~input_o\) # ((!\LeReg1[1]~input_o\ & ((\Reg~283_combout\))) # (\LeReg1[1]~input_o\ & (\Reg~285_combout\))) ) ) ) # ( !\Reg~282_combout\ & ( \Reg~284_combout\ & ( 
-- (!\LeReg1[0]~input_o\ & (\LeReg1[1]~input_o\)) # (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & ((\Reg~283_combout\))) # (\LeReg1[1]~input_o\ & (\Reg~285_combout\)))) ) ) ) # ( \Reg~282_combout\ & ( !\Reg~284_combout\ & ( (!\LeReg1[0]~input_o\ & 
-- (!\LeReg1[1]~input_o\)) # (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & ((\Reg~283_combout\))) # (\LeReg1[1]~input_o\ & (\Reg~285_combout\)))) ) ) ) # ( !\Reg~282_combout\ & ( !\Reg~284_combout\ & ( (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & 
-- ((\Reg~283_combout\))) # (\LeReg1[1]~input_o\ & (\Reg~285_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[0]~input_o\,
	datab => \ALT_INV_LeReg1[1]~input_o\,
	datac => \ALT_INV_Reg~285_combout\,
	datad => \ALT_INV_Reg~283_combout\,
	datae => \ALT_INV_Reg~282_combout\,
	dataf => \ALT_INV_Reg~284_combout\,
	combout => \Reg~286_combout\);

-- Location: IOIBUF_X70_Y0_N35
\Data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(2),
	o => \Data[2]~input_o\);

-- Location: LABCELL_X63_Y3_N15
\Reg~39feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~39feeder_combout\ = ( \Data[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[2]~input_o\,
	combout => \Reg~39feeder_combout\);

-- Location: FF_X63_Y3_N17
\Reg~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~39feeder_combout\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~39_q\);

-- Location: FF_X64_Y5_N25
\Reg~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~71_q\);

-- Location: FF_X63_Y3_N11
\Reg~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~23_q\);

-- Location: FF_X63_Y3_N19
\Reg~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~55_q\);

-- Location: LABCELL_X63_Y3_N18
\Reg~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~287_combout\ = ( \Reg~55_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~39_q\)) # (\LeReg1[1]~input_o\ & ((\Reg~71_q\))) ) ) ) # ( !\Reg~55_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~39_q\)) # (\LeReg1[1]~input_o\ & 
-- ((\Reg~71_q\))) ) ) ) # ( \Reg~55_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~23_q\) # (\LeReg1[1]~input_o\) ) ) ) # ( !\Reg~55_q\ & ( !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & \Reg~23_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~39_q\,
	datab => \ALT_INV_LeReg1[1]~input_o\,
	datac => \ALT_INV_Reg~71_q\,
	datad => \ALT_INV_Reg~23_q\,
	datae => \ALT_INV_Reg~55_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~287_combout\);

-- Location: FF_X62_Y5_N38
\Reg~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~199_q\);

-- Location: FF_X67_Y5_N8
\Reg~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~151_q\);

-- Location: FF_X62_Y5_N32
\Reg~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~183_q\);

-- Location: LABCELL_X70_Y4_N6
\Reg~167feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~167feeder_combout\ = ( \Data[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[2]~input_o\,
	combout => \Reg~167feeder_combout\);

-- Location: FF_X70_Y4_N7
\Reg~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~167feeder_combout\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~167_q\);

-- Location: LABCELL_X62_Y5_N30
\Reg~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~289_combout\ = ( \Reg~183_q\ & ( \Reg~167_q\ & ( (!\LeReg1[0]~input_o\ & (((\LeReg1[1]~input_o\) # (\Reg~151_q\)))) # (\LeReg1[0]~input_o\ & (((!\LeReg1[1]~input_o\)) # (\Reg~199_q\))) ) ) ) # ( !\Reg~183_q\ & ( \Reg~167_q\ & ( (!\LeReg1[0]~input_o\ 
-- & (((\Reg~151_q\ & !\LeReg1[1]~input_o\)))) # (\LeReg1[0]~input_o\ & (((!\LeReg1[1]~input_o\)) # (\Reg~199_q\))) ) ) ) # ( \Reg~183_q\ & ( !\Reg~167_q\ & ( (!\LeReg1[0]~input_o\ & (((\LeReg1[1]~input_o\) # (\Reg~151_q\)))) # (\LeReg1[0]~input_o\ & 
-- (\Reg~199_q\ & ((\LeReg1[1]~input_o\)))) ) ) ) # ( !\Reg~183_q\ & ( !\Reg~167_q\ & ( (!\LeReg1[0]~input_o\ & (((\Reg~151_q\ & !\LeReg1[1]~input_o\)))) # (\LeReg1[0]~input_o\ & (\Reg~199_q\ & ((\LeReg1[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~199_q\,
	datab => \ALT_INV_LeReg1[0]~input_o\,
	datac => \ALT_INV_Reg~151_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~183_q\,
	dataf => \ALT_INV_Reg~167_q\,
	combout => \Reg~289_combout\);

-- Location: FF_X67_Y4_N53
\Reg~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~231_q\);

-- Location: FF_X66_Y3_N47
\Reg~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~215_q\);

-- Location: FF_X66_Y3_N55
\Reg~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~263_q\);

-- Location: FF_X66_Y3_N20
\Reg~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~247_q\);

-- Location: LABCELL_X66_Y3_N18
\Reg~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~290_combout\ = ( \Reg~247_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~231_q\)) # (\LeReg1[1]~input_o\ & ((\Reg~263_q\))) ) ) ) # ( !\Reg~247_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~231_q\)) # (\LeReg1[1]~input_o\ 
-- & ((\Reg~263_q\))) ) ) ) # ( \Reg~247_q\ & ( !\LeReg1[0]~input_o\ & ( (\LeReg1[1]~input_o\) # (\Reg~215_q\) ) ) ) # ( !\Reg~247_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~215_q\ & !\LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~231_q\,
	datab => \ALT_INV_Reg~215_q\,
	datac => \ALT_INV_LeReg1[1]~input_o\,
	datad => \ALT_INV_Reg~263_q\,
	datae => \ALT_INV_Reg~247_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~290_combout\);

-- Location: FF_X65_Y5_N38
\Reg~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~103_q\);

-- Location: FF_X65_Y5_N2
\Reg~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~87_q\);

-- Location: FF_X64_Y5_N1
\Reg~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~135_q\);

-- Location: FF_X67_Y5_N31
\Reg~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[2]~input_o\,
	sload => VCC,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~119_q\);

-- Location: LABCELL_X67_Y5_N30
\Reg~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~288_combout\ = ( \Reg~119_q\ & ( \LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\) # (\Reg~135_q\) ) ) ) # ( !\Reg~119_q\ & ( \LeReg1[1]~input_o\ & ( (\LeReg1[0]~input_o\ & \Reg~135_q\) ) ) ) # ( \Reg~119_q\ & ( !\LeReg1[1]~input_o\ & ( 
-- (!\LeReg1[0]~input_o\ & ((\Reg~87_q\))) # (\LeReg1[0]~input_o\ & (\Reg~103_q\)) ) ) ) # ( !\Reg~119_q\ & ( !\LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\ & ((\Reg~87_q\))) # (\LeReg1[0]~input_o\ & (\Reg~103_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~103_q\,
	datab => \ALT_INV_Reg~87_q\,
	datac => \ALT_INV_LeReg1[0]~input_o\,
	datad => \ALT_INV_Reg~135_q\,
	datae => \ALT_INV_Reg~119_q\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~288_combout\);

-- Location: LABCELL_X67_Y5_N42
\Reg~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~291_combout\ = ( \Reg~290_combout\ & ( \Reg~288_combout\ & ( ((!\LeReg1[3]~input_o\ & (\Reg~287_combout\)) # (\LeReg1[3]~input_o\ & ((\Reg~289_combout\)))) # (\LeReg1[2]~input_o\) ) ) ) # ( !\Reg~290_combout\ & ( \Reg~288_combout\ & ( 
-- (!\LeReg1[3]~input_o\ & (((\LeReg1[2]~input_o\)) # (\Reg~287_combout\))) # (\LeReg1[3]~input_o\ & (((!\LeReg1[2]~input_o\ & \Reg~289_combout\)))) ) ) ) # ( \Reg~290_combout\ & ( !\Reg~288_combout\ & ( (!\LeReg1[3]~input_o\ & (\Reg~287_combout\ & 
-- (!\LeReg1[2]~input_o\))) # (\LeReg1[3]~input_o\ & (((\Reg~289_combout\) # (\LeReg1[2]~input_o\)))) ) ) ) # ( !\Reg~290_combout\ & ( !\Reg~288_combout\ & ( (!\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & (\Reg~287_combout\)) # (\LeReg1[3]~input_o\ & 
-- ((\Reg~289_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~287_combout\,
	datab => \ALT_INV_LeReg1[3]~input_o\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_Reg~289_combout\,
	datae => \ALT_INV_Reg~290_combout\,
	dataf => \ALT_INV_Reg~288_combout\,
	combout => \Reg~291_combout\);

-- Location: IOIBUF_X89_Y6_N4
\Data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(3),
	o => \Data[3]~input_o\);

-- Location: FF_X64_Y5_N43
\Reg~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~264_q\);

-- Location: FF_X64_Y5_N41
\Reg~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~136_q\);

-- Location: FF_X64_Y5_N29
\Reg~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~72_q\);

-- Location: FF_X63_Y5_N43
\Reg~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~200_q\);

-- Location: LABCELL_X63_Y5_N42
\Reg~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~295_combout\ = ( \Reg~200_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~264_q\) ) ) ) # ( !\Reg~200_q\ & ( \LeReg1[3]~input_o\ & ( (\Reg~264_q\ & \LeReg1[2]~input_o\) ) ) ) # ( \Reg~200_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~72_q\))) # (\LeReg1[2]~input_o\ & (\Reg~136_q\)) ) ) ) # ( !\Reg~200_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~72_q\))) # (\LeReg1[2]~input_o\ & (\Reg~136_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~264_q\,
	datab => \ALT_INV_Reg~136_q\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_Reg~72_q\,
	datae => \ALT_INV_Reg~200_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~295_combout\);

-- Location: FF_X67_Y4_N1
\Reg~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~248_q\);

-- Location: FF_X62_Y4_N11
\Reg~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~56_q\);

-- Location: LABCELL_X68_Y4_N3
\Reg~120feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~120feeder_combout\ = ( \Data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[3]~input_o\,
	combout => \Reg~120feeder_combout\);

-- Location: FF_X68_Y4_N5
\Reg~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~120feeder_combout\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~120_q\);

-- Location: FF_X70_Y4_N26
\Reg~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~184_q\);

-- Location: LABCELL_X70_Y4_N24
\Reg~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~294_combout\ = ( \Reg~184_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~248_q\) ) ) ) # ( !\Reg~184_q\ & ( \LeReg1[3]~input_o\ & ( (\Reg~248_q\ & \LeReg1[2]~input_o\) ) ) ) # ( \Reg~184_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & (\Reg~56_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~120_q\))) ) ) ) # ( !\Reg~184_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & (\Reg~56_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~120_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~248_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~56_q\,
	datad => \ALT_INV_Reg~120_q\,
	datae => \ALT_INV_Reg~184_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~294_combout\);

-- Location: FF_X67_Y4_N55
\Reg~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~232_q\);

-- Location: MLABCELL_X65_Y5_N27
\Reg~104feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~104feeder_combout\ = \Data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[3]~input_o\,
	combout => \Reg~104feeder_combout\);

-- Location: FF_X65_Y5_N28
\Reg~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~104feeder_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~104_q\);

-- Location: FF_X62_Y4_N35
\Reg~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~40_q\);

-- Location: FF_X70_Y4_N49
\Reg~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~168_q\);

-- Location: LABCELL_X70_Y4_N48
\Reg~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~293_combout\ = ( \Reg~168_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~232_q\) ) ) ) # ( !\Reg~168_q\ & ( \LeReg1[3]~input_o\ & ( (\Reg~232_q\ & \LeReg1[2]~input_o\) ) ) ) # ( \Reg~168_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~40_q\))) # (\LeReg1[2]~input_o\ & (\Reg~104_q\)) ) ) ) # ( !\Reg~168_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~40_q\))) # (\LeReg1[2]~input_o\ & (\Reg~104_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~232_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~104_q\,
	datad => \ALT_INV_Reg~40_q\,
	datae => \ALT_INV_Reg~168_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~293_combout\);

-- Location: LABCELL_X64_Y4_N36
\Reg~88feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~88feeder_combout\ = ( \Data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[3]~input_o\,
	combout => \Reg~88feeder_combout\);

-- Location: FF_X64_Y4_N38
\Reg~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~88feeder_combout\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~88_q\);

-- Location: FF_X64_Y4_N43
\Reg~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~216_q\);

-- Location: LABCELL_X64_Y4_N30
\Reg~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~24feeder_combout\ = ( \Data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[3]~input_o\,
	combout => \Reg~24feeder_combout\);

-- Location: FF_X64_Y4_N31
\Reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~24feeder_combout\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~24_q\);

-- Location: FF_X70_Y4_N44
\Reg~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[3]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~152_q\);

-- Location: LABCELL_X70_Y4_N42
\Reg~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~292_combout\ = ( \Reg~152_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~216_q\) ) ) ) # ( !\Reg~152_q\ & ( \LeReg1[3]~input_o\ & ( (\LeReg1[2]~input_o\ & \Reg~216_q\) ) ) ) # ( \Reg~152_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~24_q\))) # (\LeReg1[2]~input_o\ & (\Reg~88_q\)) ) ) ) # ( !\Reg~152_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~24_q\))) # (\LeReg1[2]~input_o\ & (\Reg~88_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~88_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~216_q\,
	datad => \ALT_INV_Reg~24_q\,
	datae => \ALT_INV_Reg~152_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~292_combout\);

-- Location: LABCELL_X67_Y5_N48
\Reg~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~296_combout\ = ( \Reg~292_combout\ & ( \LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\ & ((\Reg~294_combout\))) # (\LeReg1[0]~input_o\ & (\Reg~295_combout\)) ) ) ) # ( !\Reg~292_combout\ & ( \LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\ & 
-- ((\Reg~294_combout\))) # (\LeReg1[0]~input_o\ & (\Reg~295_combout\)) ) ) ) # ( \Reg~292_combout\ & ( !\LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\) # (\Reg~293_combout\) ) ) ) # ( !\Reg~292_combout\ & ( !\LeReg1[1]~input_o\ & ( (\LeReg1[0]~input_o\ & 
-- \Reg~293_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[0]~input_o\,
	datab => \ALT_INV_Reg~295_combout\,
	datac => \ALT_INV_Reg~294_combout\,
	datad => \ALT_INV_Reg~293_combout\,
	datae => \ALT_INV_Reg~292_combout\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~296_combout\);

-- Location: IOIBUF_X54_Y0_N35
\Data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(4),
	o => \Data[4]~input_o\);

-- Location: FF_X65_Y5_N40
\Reg~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[4]~input_o\,
	sload => VCC,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~105_q\);

-- Location: MLABCELL_X65_Y5_N12
\Reg~464\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~464_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~464_combout\);

-- Location: FF_X65_Y5_N14
\Reg~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~464_combout\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~137_q\);

-- Location: LABCELL_X67_Y3_N36
\Reg~463\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~463_combout\ = ( !\Data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~463_combout\);

-- Location: FF_X67_Y3_N38
\Reg~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~463_combout\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~121_q\);

-- Location: FF_X65_Y5_N5
\Reg~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[4]~input_o\,
	sload => VCC,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~89_q\);

-- Location: MLABCELL_X65_Y5_N3
\Reg~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~298_combout\ = ( \Reg~89_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~105_q\)) # (\LeReg1[1]~input_o\ & ((!\Reg~137_q\))) ) ) ) # ( !\Reg~89_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~105_q\)) # (\LeReg1[1]~input_o\ 
-- & ((!\Reg~137_q\))) ) ) ) # ( \Reg~89_q\ & ( !\LeReg1[0]~input_o\ & ( (!\Reg~121_q\) # (!\LeReg1[1]~input_o\) ) ) ) # ( !\Reg~89_q\ & ( !\LeReg1[0]~input_o\ & ( (!\Reg~121_q\ & \LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111111111111000001010101110011000101010111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~105_q\,
	datab => \ALT_INV_Reg~137_q\,
	datac => \ALT_INV_Reg~121_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~89_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~298_combout\);

-- Location: FF_X61_Y3_N35
\Reg~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[4]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~41_q\);

-- Location: LABCELL_X61_Y3_N42
\Reg~462\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~462_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~462_combout\);

-- Location: FF_X61_Y3_N44
\Reg~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~462_combout\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~73_q\);

-- Location: LABCELL_X61_Y3_N6
\Reg~461\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~461_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~461_combout\);

-- Location: FF_X61_Y3_N8
\Reg~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~461_combout\,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~57_q\);

-- Location: FF_X60_Y3_N35
\Reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[4]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~25_q\);

-- Location: LABCELL_X60_Y3_N33
\Reg~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~297_combout\ = ( \Reg~25_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~41_q\)) # (\LeReg1[1]~input_o\ & ((!\Reg~73_q\))) ) ) ) # ( !\Reg~25_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~41_q\)) # (\LeReg1[1]~input_o\ & 
-- ((!\Reg~73_q\))) ) ) ) # ( \Reg~25_q\ & ( !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\) # (!\Reg~57_q\) ) ) ) # ( !\Reg~25_q\ & ( !\LeReg1[0]~input_o\ & ( (\LeReg1[1]~input_o\ & !\Reg~57_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111111100110001110100011101000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~41_q\,
	datab => \ALT_INV_LeReg1[1]~input_o\,
	datac => \ALT_INV_Reg~73_q\,
	datad => \ALT_INV_Reg~57_q\,
	datae => \ALT_INV_Reg~25_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~297_combout\);

-- Location: FF_X66_Y4_N2
\Reg~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[4]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~169_q\);

-- Location: MLABCELL_X65_Y4_N6
\Reg~465\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~465_combout\ = !\Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~465_combout\);

-- Location: FF_X65_Y4_N8
\Reg~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~465_combout\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~185_q\);

-- Location: LABCELL_X66_Y4_N6
\Reg~466\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~466_combout\ = ( !\Data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~466_combout\);

-- Location: FF_X66_Y4_N8
\Reg~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~466_combout\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~201_q\);

-- Location: FF_X65_Y4_N31
\Reg~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[4]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~153_q\);

-- Location: MLABCELL_X65_Y4_N30
\Reg~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~299_combout\ = ( \Reg~153_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~169_q\)) # (\LeReg1[1]~input_o\ & ((!\Reg~201_q\))) ) ) ) # ( !\Reg~153_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~169_q\)) # 
-- (\LeReg1[1]~input_o\ & ((!\Reg~201_q\))) ) ) ) # ( \Reg~153_q\ & ( !\LeReg1[0]~input_o\ & ( (!\Reg~185_q\) # (!\LeReg1[1]~input_o\) ) ) ) # ( !\Reg~153_q\ & ( !\LeReg1[0]~input_o\ & ( (!\Reg~185_q\ & \LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100111111111100110001010101111100000101010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~169_q\,
	datab => \ALT_INV_Reg~185_q\,
	datac => \ALT_INV_Reg~201_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~153_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~299_combout\);

-- Location: LABCELL_X64_Y5_N9
\Reg~468\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~468_combout\ = ( !\Data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~468_combout\);

-- Location: FF_X64_Y5_N11
\Reg~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~468_combout\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~265_q\);

-- Location: FF_X67_Y4_N14
\Reg~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[4]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~233_q\);

-- Location: FF_X67_Y4_N38
\Reg~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[4]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~217_q\);

-- Location: MLABCELL_X65_Y2_N30
\Reg~467\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~467_combout\ = ( !\Data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[4]~input_o\,
	combout => \Reg~467_combout\);

-- Location: FF_X65_Y2_N32
\Reg~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~467_combout\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~249_q\);

-- Location: LABCELL_X67_Y4_N36
\Reg~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~300_combout\ = ( \Reg~217_q\ & ( \Reg~249_q\ & ( (!\LeReg1[0]~input_o\ & (((!\LeReg1[1]~input_o\)))) # (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & ((\Reg~233_q\))) # (\LeReg1[1]~input_o\ & (!\Reg~265_q\)))) ) ) ) # ( !\Reg~217_q\ & ( \Reg~249_q\ 
-- & ( (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & ((\Reg~233_q\))) # (\LeReg1[1]~input_o\ & (!\Reg~265_q\)))) ) ) ) # ( \Reg~217_q\ & ( !\Reg~249_q\ & ( (!\LeReg1[0]~input_o\) # ((!\LeReg1[1]~input_o\ & ((\Reg~233_q\))) # (\LeReg1[1]~input_o\ & 
-- (!\Reg~265_q\))) ) ) ) # ( !\Reg~217_q\ & ( !\Reg~249_q\ & ( (!\LeReg1[0]~input_o\ & (((\LeReg1[1]~input_o\)))) # (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & ((\Reg~233_q\))) # (\LeReg1[1]~input_o\ & (!\Reg~265_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111010111100111111101000000011000010101111001100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~265_q\,
	datab => \ALT_INV_Reg~233_q\,
	datac => \ALT_INV_LeReg1[0]~input_o\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~217_q\,
	dataf => \ALT_INV_Reg~249_q\,
	combout => \Reg~300_combout\);

-- Location: LABCELL_X66_Y3_N0
\Reg~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~301_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~300_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~299_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~298_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~297_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~298_combout\,
	datab => \ALT_INV_Reg~297_combout\,
	datac => \ALT_INV_Reg~299_combout\,
	datad => \ALT_INV_Reg~300_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~301_combout\);

-- Location: IOIBUF_X64_Y0_N18
\Data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(5),
	o => \Data[5]~input_o\);

-- Location: LABCELL_X64_Y4_N18
\Reg~90feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~90feeder_combout\ = \Data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Data[5]~input_o\,
	combout => \Reg~90feeder_combout\);

-- Location: FF_X64_Y4_N19
\Reg~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~90feeder_combout\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~90_q\);

-- Location: FF_X64_Y4_N35
\Reg~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~26_q\);

-- Location: FF_X71_Y4_N49
\Reg~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~154_q\);

-- Location: FF_X62_Y3_N2
\Reg~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~218_q\);

-- Location: LABCELL_X71_Y4_N48
\Reg~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~302_combout\ = ( \Reg~154_q\ & ( \Reg~218_q\ & ( ((!\LeReg1[2]~input_o\ & ((\Reg~26_q\))) # (\LeReg1[2]~input_o\ & (\Reg~90_q\))) # (\LeReg1[3]~input_o\) ) ) ) # ( !\Reg~154_q\ & ( \Reg~218_q\ & ( (!\LeReg1[2]~input_o\ & (((\Reg~26_q\ & 
-- !\LeReg1[3]~input_o\)))) # (\LeReg1[2]~input_o\ & (((\LeReg1[3]~input_o\)) # (\Reg~90_q\))) ) ) ) # ( \Reg~154_q\ & ( !\Reg~218_q\ & ( (!\LeReg1[2]~input_o\ & (((\LeReg1[3]~input_o\) # (\Reg~26_q\)))) # (\LeReg1[2]~input_o\ & (\Reg~90_q\ & 
-- ((!\LeReg1[3]~input_o\)))) ) ) ) # ( !\Reg~154_q\ & ( !\Reg~218_q\ & ( (!\LeReg1[3]~input_o\ & ((!\LeReg1[2]~input_o\ & ((\Reg~26_q\))) # (\LeReg1[2]~input_o\ & (\Reg~90_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~90_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~26_q\,
	datad => \ALT_INV_LeReg1[3]~input_o\,
	datae => \ALT_INV_Reg~154_q\,
	dataf => \ALT_INV_Reg~218_q\,
	combout => \Reg~302_combout\);

-- Location: LABCELL_X66_Y5_N57
\Reg~122feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~122feeder_combout\ = ( \Data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[5]~input_o\,
	combout => \Reg~122feeder_combout\);

-- Location: FF_X66_Y5_N59
\Reg~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~122feeder_combout\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~122_q\);

-- Location: FF_X61_Y3_N59
\Reg~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~58_q\);

-- Location: FF_X65_Y3_N20
\Reg~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~250_q\);

-- Location: FF_X64_Y3_N2
\Reg~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~186_q\);

-- Location: LABCELL_X64_Y3_N0
\Reg~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~304_combout\ = ( \Reg~186_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~250_q\) ) ) ) # ( !\Reg~186_q\ & ( \LeReg1[3]~input_o\ & ( (\LeReg1[2]~input_o\ & \Reg~250_q\) ) ) ) # ( \Reg~186_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~58_q\))) # (\LeReg1[2]~input_o\ & (\Reg~122_q\)) ) ) ) # ( !\Reg~186_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~58_q\))) # (\LeReg1[2]~input_o\ & (\Reg~122_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~122_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~58_q\,
	datad => \ALT_INV_Reg~250_q\,
	datae => \ALT_INV_Reg~186_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~304_combout\);

-- Location: FF_X65_Y5_N47
\Reg~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~106_q\);

-- Location: FF_X61_Y3_N53
\Reg~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~42_q\);

-- Location: FF_X65_Y3_N37
\Reg~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~170_q\);

-- Location: FF_X65_Y3_N14
\Reg~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~234_q\);

-- Location: MLABCELL_X65_Y3_N36
\Reg~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~303_combout\ = ( \Reg~170_q\ & ( \Reg~234_q\ & ( ((!\LeReg1[2]~input_o\ & ((\Reg~42_q\))) # (\LeReg1[2]~input_o\ & (\Reg~106_q\))) # (\LeReg1[3]~input_o\) ) ) ) # ( !\Reg~170_q\ & ( \Reg~234_q\ & ( (!\LeReg1[2]~input_o\ & (!\LeReg1[3]~input_o\ & 
-- ((\Reg~42_q\)))) # (\LeReg1[2]~input_o\ & (((\Reg~106_q\)) # (\LeReg1[3]~input_o\))) ) ) ) # ( \Reg~170_q\ & ( !\Reg~234_q\ & ( (!\LeReg1[2]~input_o\ & (((\Reg~42_q\)) # (\LeReg1[3]~input_o\))) # (\LeReg1[2]~input_o\ & (!\LeReg1[3]~input_o\ & 
-- (\Reg~106_q\))) ) ) ) # ( !\Reg~170_q\ & ( !\Reg~234_q\ & ( (!\LeReg1[3]~input_o\ & ((!\LeReg1[2]~input_o\ & ((\Reg~42_q\))) # (\LeReg1[2]~input_o\ & (\Reg~106_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[2]~input_o\,
	datab => \ALT_INV_LeReg1[3]~input_o\,
	datac => \ALT_INV_Reg~106_q\,
	datad => \ALT_INV_Reg~42_q\,
	datae => \ALT_INV_Reg~170_q\,
	dataf => \ALT_INV_Reg~234_q\,
	combout => \Reg~303_combout\);

-- Location: FF_X61_Y3_N5
\Reg~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~74_q\);

-- Location: LABCELL_X62_Y3_N6
\Reg~138feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~138feeder_combout\ = ( \Data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[5]~input_o\,
	combout => \Reg~138feeder_combout\);

-- Location: FF_X62_Y3_N8
\Reg~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~138feeder_combout\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~138_q\);

-- Location: FF_X62_Y5_N44
\Reg~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~202_q\);

-- Location: FF_X62_Y3_N44
\Reg~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~266_q\);

-- Location: LABCELL_X62_Y5_N42
\Reg~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~305_combout\ = ( \Reg~202_q\ & ( \Reg~266_q\ & ( ((!\LeReg1[2]~input_o\ & (\Reg~74_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~138_q\)))) # (\LeReg1[3]~input_o\) ) ) ) # ( !\Reg~202_q\ & ( \Reg~266_q\ & ( (!\LeReg1[2]~input_o\ & (\Reg~74_q\ & 
-- (!\LeReg1[3]~input_o\))) # (\LeReg1[2]~input_o\ & (((\Reg~138_q\) # (\LeReg1[3]~input_o\)))) ) ) ) # ( \Reg~202_q\ & ( !\Reg~266_q\ & ( (!\LeReg1[2]~input_o\ & (((\LeReg1[3]~input_o\)) # (\Reg~74_q\))) # (\LeReg1[2]~input_o\ & (((!\LeReg1[3]~input_o\ & 
-- \Reg~138_q\)))) ) ) ) # ( !\Reg~202_q\ & ( !\Reg~266_q\ & ( (!\LeReg1[3]~input_o\ & ((!\LeReg1[2]~input_o\ & (\Reg~74_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~138_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~74_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_LeReg1[3]~input_o\,
	datad => \ALT_INV_Reg~138_q\,
	datae => \ALT_INV_Reg~202_q\,
	dataf => \ALT_INV_Reg~266_q\,
	combout => \Reg~305_combout\);

-- Location: MLABCELL_X65_Y3_N30
\Reg~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~306_combout\ = ( \Reg~303_combout\ & ( \Reg~305_combout\ & ( ((!\LeReg1[1]~input_o\ & (\Reg~302_combout\)) # (\LeReg1[1]~input_o\ & ((\Reg~304_combout\)))) # (\LeReg1[0]~input_o\) ) ) ) # ( !\Reg~303_combout\ & ( \Reg~305_combout\ & ( 
-- (!\LeReg1[1]~input_o\ & (\Reg~302_combout\ & (!\LeReg1[0]~input_o\))) # (\LeReg1[1]~input_o\ & (((\Reg~304_combout\) # (\LeReg1[0]~input_o\)))) ) ) ) # ( \Reg~303_combout\ & ( !\Reg~305_combout\ & ( (!\LeReg1[1]~input_o\ & (((\LeReg1[0]~input_o\)) # 
-- (\Reg~302_combout\))) # (\LeReg1[1]~input_o\ & (((!\LeReg1[0]~input_o\ & \Reg~304_combout\)))) ) ) ) # ( !\Reg~303_combout\ & ( !\Reg~305_combout\ & ( (!\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & (\Reg~302_combout\)) # (\LeReg1[1]~input_o\ & 
-- ((\Reg~304_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[1]~input_o\,
	datab => \ALT_INV_Reg~302_combout\,
	datac => \ALT_INV_LeReg1[0]~input_o\,
	datad => \ALT_INV_Reg~304_combout\,
	datae => \ALT_INV_Reg~303_combout\,
	dataf => \ALT_INV_Reg~305_combout\,
	combout => \Reg~306_combout\);

-- Location: IOIBUF_X62_Y0_N18
\Data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(6),
	o => \Data[6]~input_o\);

-- Location: FF_X65_Y3_N29
\Reg~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~235_q\);

-- Location: FF_X66_Y3_N35
\Reg~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~219_q\);

-- Location: FF_X66_Y3_N14
\Reg~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~267_q\);

-- Location: FF_X66_Y3_N37
\Reg~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~251_q\);

-- Location: LABCELL_X66_Y3_N36
\Reg~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~310_combout\ = ( \Reg~251_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~235_q\)) # (\LeReg1[1]~input_o\ & ((\Reg~267_q\))) ) ) ) # ( !\Reg~251_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~235_q\)) # (\LeReg1[1]~input_o\ 
-- & ((\Reg~267_q\))) ) ) ) # ( \Reg~251_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~219_q\) # (\LeReg1[1]~input_o\) ) ) ) # ( !\Reg~251_q\ & ( !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & \Reg~219_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[1]~input_o\,
	datab => \ALT_INV_Reg~235_q\,
	datac => \ALT_INV_Reg~219_q\,
	datad => \ALT_INV_Reg~267_q\,
	datae => \ALT_INV_Reg~251_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~310_combout\);

-- Location: FF_X66_Y4_N14
\Reg~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~139_q\);

-- Location: LABCELL_X64_Y4_N39
\Reg~91feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~91feeder_combout\ = ( \Data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[6]~input_o\,
	combout => \Reg~91feeder_combout\);

-- Location: FF_X64_Y4_N41
\Reg~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~91feeder_combout\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~91_q\);

-- Location: MLABCELL_X65_Y5_N6
\Reg~107feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~107feeder_combout\ = ( \Data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[6]~input_o\,
	combout => \Reg~107feeder_combout\);

-- Location: FF_X65_Y5_N7
\Reg~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~107feeder_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~107_q\);

-- Location: FF_X66_Y5_N1
\Reg~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~123_q\);

-- Location: LABCELL_X66_Y5_N0
\Reg~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~308_combout\ = ( \Reg~123_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~107_q\))) # (\LeReg1[1]~input_o\ & (\Reg~139_q\)) ) ) ) # ( !\Reg~123_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~107_q\))) # 
-- (\LeReg1[1]~input_o\ & (\Reg~139_q\)) ) ) ) # ( \Reg~123_q\ & ( !\LeReg1[0]~input_o\ & ( (\LeReg1[1]~input_o\) # (\Reg~91_q\) ) ) ) # ( !\Reg~123_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~91_q\ & !\LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~139_q\,
	datab => \ALT_INV_Reg~91_q\,
	datac => \ALT_INV_Reg~107_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~123_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~308_combout\);

-- Location: FF_X66_Y4_N26
\Reg~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~203_q\);

-- Location: LABCELL_X66_Y5_N39
\Reg~155feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~155feeder_combout\ = ( \Data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[6]~input_o\,
	combout => \Reg~155feeder_combout\);

-- Location: FF_X66_Y5_N41
\Reg~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~155feeder_combout\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~155_q\);

-- Location: FF_X66_Y4_N20
\Reg~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~171_q\);

-- Location: FF_X66_Y5_N44
\Reg~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~187_q\);

-- Location: LABCELL_X66_Y5_N42
\Reg~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~309_combout\ = ( \Reg~187_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~171_q\))) # (\LeReg1[1]~input_o\ & (\Reg~203_q\)) ) ) ) # ( !\Reg~187_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~171_q\))) # 
-- (\LeReg1[1]~input_o\ & (\Reg~203_q\)) ) ) ) # ( \Reg~187_q\ & ( !\LeReg1[0]~input_o\ & ( (\LeReg1[1]~input_o\) # (\Reg~155_q\) ) ) ) # ( !\Reg~187_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~155_q\ & !\LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~203_q\,
	datab => \ALT_INV_Reg~155_q\,
	datac => \ALT_INV_LeReg1[1]~input_o\,
	datad => \ALT_INV_Reg~171_q\,
	datae => \ALT_INV_Reg~187_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~309_combout\);

-- Location: LABCELL_X61_Y3_N36
\Reg~43feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~43feeder_combout\ = ( \Data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[6]~input_o\,
	combout => \Reg~43feeder_combout\);

-- Location: FF_X61_Y3_N38
\Reg~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~43feeder_combout\,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~43_q\);

-- Location: LABCELL_X64_Y4_N33
\Reg~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~27feeder_combout\ = \Data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Data[6]~input_o\,
	combout => \Reg~27feeder_combout\);

-- Location: FF_X64_Y4_N34
\Reg~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~27feeder_combout\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~27_q\);

-- Location: FF_X61_Y3_N2
\Reg~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~75_q\);

-- Location: FF_X61_Y3_N14
\Reg~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~59_q\);

-- Location: LABCELL_X61_Y3_N12
\Reg~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~307_combout\ = ( \Reg~59_q\ & ( \LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\) # (\Reg~75_q\) ) ) ) # ( !\Reg~59_q\ & ( \LeReg1[1]~input_o\ & ( (\Reg~75_q\ & \LeReg1[0]~input_o\) ) ) ) # ( \Reg~59_q\ & ( !\LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\ 
-- & ((\Reg~27_q\))) # (\LeReg1[0]~input_o\ & (\Reg~43_q\)) ) ) ) # ( !\Reg~59_q\ & ( !\LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\ & ((\Reg~27_q\))) # (\LeReg1[0]~input_o\ & (\Reg~43_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~43_q\,
	datab => \ALT_INV_Reg~27_q\,
	datac => \ALT_INV_Reg~75_q\,
	datad => \ALT_INV_LeReg1[0]~input_o\,
	datae => \ALT_INV_Reg~59_q\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~307_combout\);

-- Location: LABCELL_X66_Y3_N42
\Reg~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~311_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~310_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~309_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~308_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~307_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~310_combout\,
	datab => \ALT_INV_Reg~308_combout\,
	datac => \ALT_INV_Reg~309_combout\,
	datad => \ALT_INV_Reg~307_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~311_combout\);

-- Location: IOIBUF_X64_Y0_N1
\Data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(7),
	o => \Data[7]~input_o\);

-- Location: LABCELL_X64_Y4_N57
\Reg~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~28feeder_combout\ = ( \Data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[7]~input_o\,
	combout => \Reg~28feeder_combout\);

-- Location: FF_X64_Y4_N59
\Reg~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~28feeder_combout\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~28_q\);

-- Location: FF_X62_Y3_N19
\Reg~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~220_q\);

-- Location: FF_X65_Y5_N32
\Reg~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~92_q\);

-- Location: FF_X64_Y3_N40
\Reg~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~156_q\);

-- Location: LABCELL_X64_Y3_N39
\Reg~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~312_combout\ = ( \Reg~156_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~220_q\) ) ) ) # ( !\Reg~156_q\ & ( \LeReg1[3]~input_o\ & ( (\Reg~220_q\ & \LeReg1[2]~input_o\) ) ) ) # ( \Reg~156_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & (\Reg~28_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~92_q\))) ) ) ) # ( !\Reg~156_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & (\Reg~28_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~92_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~28_q\,
	datab => \ALT_INV_Reg~220_q\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_Reg~92_q\,
	datae => \ALT_INV_Reg~156_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~312_combout\);

-- Location: FF_X62_Y3_N25
\Reg~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~268_q\);

-- Location: FF_X62_Y3_N11
\Reg~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~140_q\);

-- Location: FF_X62_Y4_N23
\Reg~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~76_q\);

-- Location: FF_X63_Y5_N50
\Reg~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~204_q\);

-- Location: LABCELL_X63_Y5_N48
\Reg~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~315_combout\ = ( \Reg~204_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~268_q\) ) ) ) # ( !\Reg~204_q\ & ( \LeReg1[3]~input_o\ & ( (\Reg~268_q\ & \LeReg1[2]~input_o\) ) ) ) # ( \Reg~204_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~76_q\))) # (\LeReg1[2]~input_o\ & (\Reg~140_q\)) ) ) ) # ( !\Reg~204_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~76_q\))) # (\LeReg1[2]~input_o\ & (\Reg~140_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~268_q\,
	datab => \ALT_INV_Reg~140_q\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_Reg~76_q\,
	datae => \ALT_INV_Reg~204_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~315_combout\);

-- Location: FF_X65_Y3_N8
\Reg~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~252_q\);

-- Location: LABCELL_X64_Y3_N15
\Reg~124feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~124feeder_combout\ = ( \Data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[7]~input_o\,
	combout => \Reg~124feeder_combout\);

-- Location: FF_X64_Y3_N17
\Reg~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~124feeder_combout\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~124_q\);

-- Location: FF_X62_Y4_N17
\Reg~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~60_q\);

-- Location: FF_X64_Y3_N19
\Reg~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~188_q\);

-- Location: LABCELL_X64_Y3_N18
\Reg~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~314_combout\ = ( \Reg~188_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~252_q\) ) ) ) # ( !\Reg~188_q\ & ( \LeReg1[3]~input_o\ & ( (\Reg~252_q\ & \LeReg1[2]~input_o\) ) ) ) # ( \Reg~188_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~60_q\))) # (\LeReg1[2]~input_o\ & (\Reg~124_q\)) ) ) ) # ( !\Reg~188_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~60_q\))) # (\LeReg1[2]~input_o\ & (\Reg~124_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~252_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~124_q\,
	datad => \ALT_INV_Reg~60_q\,
	datae => \ALT_INV_Reg~188_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~314_combout\);

-- Location: FF_X65_Y3_N26
\Reg~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~236_q\);

-- Location: FF_X65_Y5_N8
\Reg~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~108_q\);

-- Location: FF_X65_Y3_N2
\Reg~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~172_q\);

-- Location: FF_X60_Y3_N11
\Reg~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[7]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~44_q\);

-- Location: MLABCELL_X65_Y3_N0
\Reg~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~313_combout\ = ( \Reg~172_q\ & ( \Reg~44_q\ & ( (!\LeReg1[2]~input_o\) # ((!\LeReg1[3]~input_o\ & ((\Reg~108_q\))) # (\LeReg1[3]~input_o\ & (\Reg~236_q\))) ) ) ) # ( !\Reg~172_q\ & ( \Reg~44_q\ & ( (!\LeReg1[3]~input_o\ & (((!\LeReg1[2]~input_o\) # 
-- (\Reg~108_q\)))) # (\LeReg1[3]~input_o\ & (\Reg~236_q\ & (\LeReg1[2]~input_o\))) ) ) ) # ( \Reg~172_q\ & ( !\Reg~44_q\ & ( (!\LeReg1[3]~input_o\ & (((\LeReg1[2]~input_o\ & \Reg~108_q\)))) # (\LeReg1[3]~input_o\ & (((!\LeReg1[2]~input_o\)) # 
-- (\Reg~236_q\))) ) ) ) # ( !\Reg~172_q\ & ( !\Reg~44_q\ & ( (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & ((\Reg~108_q\))) # (\LeReg1[3]~input_o\ & (\Reg~236_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~236_q\,
	datab => \ALT_INV_LeReg1[3]~input_o\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_Reg~108_q\,
	datae => \ALT_INV_Reg~172_q\,
	dataf => \ALT_INV_Reg~44_q\,
	combout => \Reg~313_combout\);

-- Location: LABCELL_X63_Y3_N6
\Reg~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~316_combout\ = ( \Reg~313_combout\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\) # (\Reg~315_combout\) ) ) ) # ( !\Reg~313_combout\ & ( \LeReg1[0]~input_o\ & ( (\Reg~315_combout\ & \LeReg1[1]~input_o\) ) ) ) # ( \Reg~313_combout\ & ( 
-- !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~312_combout\)) # (\LeReg1[1]~input_o\ & ((\Reg~314_combout\))) ) ) ) # ( !\Reg~313_combout\ & ( !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~312_combout\)) # (\LeReg1[1]~input_o\ & 
-- ((\Reg~314_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~312_combout\,
	datab => \ALT_INV_Reg~315_combout\,
	datac => \ALT_INV_Reg~314_combout\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~313_combout\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~316_combout\);

-- Location: IOIBUF_X89_Y4_N61
\Data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(8),
	o => \Data[8]~input_o\);

-- Location: LABCELL_X63_Y5_N3
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

-- Location: FF_X63_Y5_N5
\Reg~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~473_combout\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~221_q\);

-- Location: LABCELL_X62_Y3_N39
\Reg~476\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~476_combout\ = ( !\Data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~476_combout\);

-- Location: FF_X62_Y3_N41
\Reg~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~476_combout\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~269_q\);

-- Location: LABCELL_X63_Y4_N45
\Reg~475\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~475_combout\ = ( !\Data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~475_combout\);

-- Location: FF_X63_Y4_N47
\Reg~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~475_combout\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~253_q\);

-- Location: LABCELL_X67_Y4_N48
\Reg~474\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~474_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~474_combout\);

-- Location: FF_X67_Y4_N50
\Reg~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~474_combout\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~237_q\);

-- Location: LABCELL_X63_Y4_N21
\Reg~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~320_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~269_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~253_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~237_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111110000000011110000111100001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~221_q\,
	datab => \ALT_INV_Reg~269_q\,
	datac => \ALT_INV_Reg~253_q\,
	datad => \ALT_INV_Reg~237_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~320_combout\);

-- Location: LABCELL_X62_Y3_N30
\Reg~472\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~472_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~472_combout\);

-- Location: FF_X62_Y3_N32
\Reg~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~472_combout\,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~141_q\);

-- Location: LABCELL_X64_Y3_N24
\Reg~471\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~471_combout\ = ( !\Data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~471_combout\);

-- Location: FF_X64_Y3_N26
\Reg~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~471_combout\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~125_q\);

-- Location: MLABCELL_X65_Y5_N42
\Reg~470\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~470_combout\ = !\Data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~470_combout\);

-- Location: FF_X65_Y5_N44
\Reg~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~470_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~109_q\);

-- Location: MLABCELL_X65_Y5_N18
\Reg~469\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~469_combout\ = ( !\Data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~469_combout\);

-- Location: FF_X65_Y5_N20
\Reg~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~469_combout\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~93_q\);

-- Location: LABCELL_X61_Y3_N21
\Reg~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~318_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~141_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~125_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~109_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111100001111000011001100110011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~141_q\,
	datab => \ALT_INV_Reg~125_q\,
	datac => \ALT_INV_Reg~109_q\,
	datad => \ALT_INV_Reg~93_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~318_combout\);

-- Location: LABCELL_X64_Y3_N33
\Reg~157feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~157feeder_combout\ = ( \Data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[8]~input_o\,
	combout => \Reg~157feeder_combout\);

-- Location: FF_X64_Y3_N35
\Reg~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~157feeder_combout\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~157_q\);

-- Location: FF_X63_Y5_N25
\Reg~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[8]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~205_q\);

-- Location: FF_X67_Y5_N29
\Reg~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[8]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~189_q\);

-- Location: FF_X70_Y4_N35
\Reg~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[8]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~173_q\);

-- Location: LABCELL_X67_Y5_N27
\Reg~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~319_combout\ = ( \Reg~189_q\ & ( \Reg~173_q\ & ( (!\LeReg1[1]~input_o\ & (((\LeReg1[0]~input_o\)) # (\Reg~157_q\))) # (\LeReg1[1]~input_o\ & (((!\LeReg1[0]~input_o\) # (\Reg~205_q\)))) ) ) ) # ( !\Reg~189_q\ & ( \Reg~173_q\ & ( (!\LeReg1[1]~input_o\ 
-- & (((\LeReg1[0]~input_o\)) # (\Reg~157_q\))) # (\LeReg1[1]~input_o\ & (((\Reg~205_q\ & \LeReg1[0]~input_o\)))) ) ) ) # ( \Reg~189_q\ & ( !\Reg~173_q\ & ( (!\LeReg1[1]~input_o\ & (\Reg~157_q\ & ((!\LeReg1[0]~input_o\)))) # (\LeReg1[1]~input_o\ & 
-- (((!\LeReg1[0]~input_o\) # (\Reg~205_q\)))) ) ) ) # ( !\Reg~189_q\ & ( !\Reg~173_q\ & ( (!\LeReg1[1]~input_o\ & (\Reg~157_q\ & ((!\LeReg1[0]~input_o\)))) # (\LeReg1[1]~input_o\ & (((\Reg~205_q\ & \LeReg1[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[1]~input_o\,
	datab => \ALT_INV_Reg~157_q\,
	datac => \ALT_INV_Reg~205_q\,
	datad => \ALT_INV_LeReg1[0]~input_o\,
	datae => \ALT_INV_Reg~189_q\,
	dataf => \ALT_INV_Reg~173_q\,
	combout => \Reg~319_combout\);

-- Location: FF_X63_Y4_N7
\Reg~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[8]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~77_q\);

-- Location: FF_X60_Y3_N44
\Reg~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[8]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~45_q\);

-- Location: FF_X64_Y4_N56
\Reg~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[8]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~29_q\);

-- Location: FF_X63_Y4_N32
\Reg~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[8]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~61_q\);

-- Location: LABCELL_X63_Y4_N30
\Reg~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~317_combout\ = ( \Reg~61_q\ & ( \LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\) # (\Reg~77_q\) ) ) ) # ( !\Reg~61_q\ & ( \LeReg1[1]~input_o\ & ( (\Reg~77_q\ & \LeReg1[0]~input_o\) ) ) ) # ( \Reg~61_q\ & ( !\LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\ 
-- & ((\Reg~29_q\))) # (\LeReg1[0]~input_o\ & (\Reg~45_q\)) ) ) ) # ( !\Reg~61_q\ & ( !\LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\ & ((\Reg~29_q\))) # (\LeReg1[0]~input_o\ & (\Reg~45_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~77_q\,
	datab => \ALT_INV_Reg~45_q\,
	datac => \ALT_INV_LeReg1[0]~input_o\,
	datad => \ALT_INV_Reg~29_q\,
	datae => \ALT_INV_Reg~61_q\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~317_combout\);

-- Location: LABCELL_X64_Y3_N9
\Reg~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~321_combout\ = ( \Reg~317_combout\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~319_combout\))) # (\LeReg1[2]~input_o\ & (\Reg~320_combout\)) ) ) ) # ( !\Reg~317_combout\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & 
-- ((\Reg~319_combout\))) # (\LeReg1[2]~input_o\ & (\Reg~320_combout\)) ) ) ) # ( \Reg~317_combout\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~318_combout\) ) ) ) # ( !\Reg~317_combout\ & ( !\LeReg1[3]~input_o\ & ( (\Reg~318_combout\ & 
-- \LeReg1[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~320_combout\,
	datab => \ALT_INV_Reg~318_combout\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_Reg~319_combout\,
	datae => \ALT_INV_Reg~317_combout\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~321_combout\);

-- Location: IOIBUF_X62_Y0_N1
\Data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(9),
	o => \Data[9]~input_o\);

-- Location: FF_X63_Y4_N2
\Reg~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~254_q\);

-- Location: FF_X68_Y4_N14
\Reg~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~126_q\);

-- Location: FF_X63_Y4_N29
\Reg~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~62_q\);

-- Location: FF_X68_Y4_N19
\Reg~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~190_q\);

-- Location: LABCELL_X68_Y4_N18
\Reg~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~324_combout\ = ( \Reg~190_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~254_q\) ) ) ) # ( !\Reg~190_q\ & ( \LeReg1[3]~input_o\ & ( (\Reg~254_q\ & \LeReg1[2]~input_o\) ) ) ) # ( \Reg~190_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~62_q\))) # (\LeReg1[2]~input_o\ & (\Reg~126_q\)) ) ) ) # ( !\Reg~190_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~62_q\))) # (\LeReg1[2]~input_o\ & (\Reg~126_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~254_q\,
	datab => \ALT_INV_Reg~126_q\,
	datac => \ALT_INV_Reg~62_q\,
	datad => \ALT_INV_LeReg1[2]~input_o\,
	datae => \ALT_INV_Reg~190_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~324_combout\);

-- Location: LABCELL_X60_Y3_N21
\Reg~110feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~110feeder_combout\ = ( \Data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[9]~input_o\,
	combout => \Reg~110feeder_combout\);

-- Location: FF_X60_Y3_N23
\Reg~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~110feeder_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~110_q\);

-- Location: FF_X63_Y5_N8
\Reg~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~238_q\);

-- Location: FF_X63_Y3_N59
\Reg~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~46_q\);

-- Location: FF_X61_Y4_N32
\Reg~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~174_q\);

-- Location: LABCELL_X61_Y4_N30
\Reg~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~323_combout\ = ( \Reg~174_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~238_q\) ) ) ) # ( !\Reg~174_q\ & ( \LeReg1[3]~input_o\ & ( (\LeReg1[2]~input_o\ & \Reg~238_q\) ) ) ) # ( \Reg~174_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~46_q\))) # (\LeReg1[2]~input_o\ & (\Reg~110_q\)) ) ) ) # ( !\Reg~174_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~46_q\))) # (\LeReg1[2]~input_o\ & (\Reg~110_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~110_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~238_q\,
	datad => \ALT_INV_Reg~46_q\,
	datae => \ALT_INV_Reg~174_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~323_combout\);

-- Location: FF_X64_Y4_N2
\Reg~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~30_q\);

-- Location: FF_X64_Y4_N20
\Reg~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~94_q\);

-- Location: FF_X64_Y4_N7
\Reg~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~222_q\);

-- Location: FF_X68_Y4_N37
\Reg~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~158_q\);

-- Location: LABCELL_X68_Y4_N36
\Reg~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~322_combout\ = ( \Reg~158_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~222_q\) ) ) ) # ( !\Reg~158_q\ & ( \LeReg1[3]~input_o\ & ( (\LeReg1[2]~input_o\ & \Reg~222_q\) ) ) ) # ( \Reg~158_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & (\Reg~30_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~94_q\))) ) ) ) # ( !\Reg~158_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & (\Reg~30_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~94_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~30_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~94_q\,
	datad => \ALT_INV_Reg~222_q\,
	datae => \ALT_INV_Reg~158_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~322_combout\);

-- Location: FF_X64_Y5_N5
\Reg~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~142_q\);

-- Location: FF_X64_Y5_N56
\Reg~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~270_q\);

-- Location: FF_X63_Y5_N13
\Reg~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~206_q\);

-- Location: FF_X64_Y5_N53
\Reg~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[9]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~78_q\);

-- Location: LABCELL_X63_Y5_N12
\Reg~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~325_combout\ = ( \Reg~206_q\ & ( \Reg~78_q\ & ( (!\LeReg1[2]~input_o\) # ((!\LeReg1[3]~input_o\ & (\Reg~142_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~270_q\)))) ) ) ) # ( !\Reg~206_q\ & ( \Reg~78_q\ & ( (!\LeReg1[2]~input_o\ & (((!\LeReg1[3]~input_o\)))) 
-- # (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & (\Reg~142_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~270_q\))))) ) ) ) # ( \Reg~206_q\ & ( !\Reg~78_q\ & ( (!\LeReg1[2]~input_o\ & (((\LeReg1[3]~input_o\)))) # (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & 
-- (\Reg~142_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~270_q\))))) ) ) ) # ( !\Reg~206_q\ & ( !\Reg~78_q\ & ( (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & (\Reg~142_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~270_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~142_q\,
	datab => \ALT_INV_Reg~270_q\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_LeReg1[3]~input_o\,
	datae => \ALT_INV_Reg~206_q\,
	dataf => \ALT_INV_Reg~78_q\,
	combout => \Reg~325_combout\);

-- Location: LABCELL_X68_Y4_N15
\Reg~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~326_combout\ = ( \LeReg1[0]~input_o\ & ( \Reg~325_combout\ & ( (\Reg~323_combout\) # (\LeReg1[1]~input_o\) ) ) ) # ( !\LeReg1[0]~input_o\ & ( \Reg~325_combout\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~322_combout\))) # (\LeReg1[1]~input_o\ & 
-- (\Reg~324_combout\)) ) ) ) # ( \LeReg1[0]~input_o\ & ( !\Reg~325_combout\ & ( (!\LeReg1[1]~input_o\ & \Reg~323_combout\) ) ) ) # ( !\LeReg1[0]~input_o\ & ( !\Reg~325_combout\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~322_combout\))) # (\LeReg1[1]~input_o\ & 
-- (\Reg~324_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~324_combout\,
	datab => \ALT_INV_LeReg1[1]~input_o\,
	datac => \ALT_INV_Reg~323_combout\,
	datad => \ALT_INV_Reg~322_combout\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_Reg~325_combout\,
	combout => \Reg~326_combout\);

-- Location: IOIBUF_X60_Y0_N18
\Data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(10),
	o => \Data[10]~input_o\);

-- Location: FF_X65_Y3_N17
\Reg~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~239_q\);

-- Location: FF_X60_Y4_N1
\Reg~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~271_q\);

-- Location: FF_X63_Y4_N49
\Reg~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~255_q\);

-- Location: FF_X66_Y3_N5
\Reg~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~223_q\);

-- Location: LABCELL_X63_Y4_N48
\Reg~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~330_combout\ = ( \Reg~255_q\ & ( \Reg~223_q\ & ( (!\LeReg1[0]~input_o\) # ((!\LeReg1[1]~input_o\ & (\Reg~239_q\)) # (\LeReg1[1]~input_o\ & ((\Reg~271_q\)))) ) ) ) # ( !\Reg~255_q\ & ( \Reg~223_q\ & ( (!\LeReg1[0]~input_o\ & 
-- (((!\LeReg1[1]~input_o\)))) # (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & (\Reg~239_q\)) # (\LeReg1[1]~input_o\ & ((\Reg~271_q\))))) ) ) ) # ( \Reg~255_q\ & ( !\Reg~223_q\ & ( (!\LeReg1[0]~input_o\ & (((\LeReg1[1]~input_o\)))) # (\LeReg1[0]~input_o\ & 
-- ((!\LeReg1[1]~input_o\ & (\Reg~239_q\)) # (\LeReg1[1]~input_o\ & ((\Reg~271_q\))))) ) ) ) # ( !\Reg~255_q\ & ( !\Reg~223_q\ & ( (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & (\Reg~239_q\)) # (\LeReg1[1]~input_o\ & ((\Reg~271_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~239_q\,
	datab => \ALT_INV_Reg~271_q\,
	datac => \ALT_INV_LeReg1[0]~input_o\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~255_q\,
	dataf => \ALT_INV_Reg~223_q\,
	combout => \Reg~330_combout\);

-- Location: FF_X64_Y4_N22
\Reg~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~95_q\);

-- Location: LABCELL_X60_Y3_N54
\Reg~111feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~111feeder_combout\ = ( \Data[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[10]~input_o\,
	combout => \Reg~111feeder_combout\);

-- Location: FF_X60_Y3_N56
\Reg~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~111feeder_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~111_q\);

-- Location: FF_X66_Y4_N31
\Reg~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~143_q\);

-- Location: FF_X68_Y4_N26
\Reg~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~127_q\);

-- Location: LABCELL_X68_Y4_N24
\Reg~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~328_combout\ = ( \Reg~127_q\ & ( \LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\) # (\Reg~143_q\) ) ) ) # ( !\Reg~127_q\ & ( \LeReg1[1]~input_o\ & ( (\LeReg1[0]~input_o\ & \Reg~143_q\) ) ) ) # ( \Reg~127_q\ & ( !\LeReg1[1]~input_o\ & ( 
-- (!\LeReg1[0]~input_o\ & (\Reg~95_q\)) # (\LeReg1[0]~input_o\ & ((\Reg~111_q\))) ) ) ) # ( !\Reg~127_q\ & ( !\LeReg1[1]~input_o\ & ( (!\LeReg1[0]~input_o\ & (\Reg~95_q\)) # (\LeReg1[0]~input_o\ & ((\Reg~111_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[0]~input_o\,
	datab => \ALT_INV_Reg~95_q\,
	datac => \ALT_INV_Reg~111_q\,
	datad => \ALT_INV_Reg~143_q\,
	datae => \ALT_INV_Reg~127_q\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~328_combout\);

-- Location: FF_X70_Y4_N5
\Reg~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~175_q\);

-- Location: FF_X71_Y4_N59
\Reg~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~159_q\);

-- Location: FF_X68_Y4_N31
\Reg~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~191_q\);

-- Location: FF_X66_Y4_N37
\Reg~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~207_q\);

-- Location: LABCELL_X68_Y4_N30
\Reg~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~329_combout\ = ( \Reg~191_q\ & ( \Reg~207_q\ & ( ((!\LeReg1[0]~input_o\ & ((\Reg~159_q\))) # (\LeReg1[0]~input_o\ & (\Reg~175_q\))) # (\LeReg1[1]~input_o\) ) ) ) # ( !\Reg~191_q\ & ( \Reg~207_q\ & ( (!\LeReg1[0]~input_o\ & (!\LeReg1[1]~input_o\ & 
-- ((\Reg~159_q\)))) # (\LeReg1[0]~input_o\ & (((\Reg~175_q\)) # (\LeReg1[1]~input_o\))) ) ) ) # ( \Reg~191_q\ & ( !\Reg~207_q\ & ( (!\LeReg1[0]~input_o\ & (((\Reg~159_q\)) # (\LeReg1[1]~input_o\))) # (\LeReg1[0]~input_o\ & (!\LeReg1[1]~input_o\ & 
-- (\Reg~175_q\))) ) ) ) # ( !\Reg~191_q\ & ( !\Reg~207_q\ & ( (!\LeReg1[1]~input_o\ & ((!\LeReg1[0]~input_o\ & ((\Reg~159_q\))) # (\LeReg1[0]~input_o\ & (\Reg~175_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[0]~input_o\,
	datab => \ALT_INV_LeReg1[1]~input_o\,
	datac => \ALT_INV_Reg~175_q\,
	datad => \ALT_INV_Reg~159_q\,
	datae => \ALT_INV_Reg~191_q\,
	dataf => \ALT_INV_Reg~207_q\,
	combout => \Reg~329_combout\);

-- Location: FF_X64_Y4_N13
\Reg~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~31_q\);

-- Location: FF_X63_Y4_N14
\Reg~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~79_q\);

-- Location: FF_X63_Y4_N37
\Reg~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~63_q\);

-- Location: FF_X62_Y4_N59
\Reg~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[10]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~47_q\);

-- Location: LABCELL_X63_Y4_N36
\Reg~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~327_combout\ = ( \Reg~63_q\ & ( \Reg~47_q\ & ( (!\LeReg1[0]~input_o\ & (((\LeReg1[1]~input_o\)) # (\Reg~31_q\))) # (\LeReg1[0]~input_o\ & (((!\LeReg1[1]~input_o\) # (\Reg~79_q\)))) ) ) ) # ( !\Reg~63_q\ & ( \Reg~47_q\ & ( (!\LeReg1[0]~input_o\ & 
-- (\Reg~31_q\ & ((!\LeReg1[1]~input_o\)))) # (\LeReg1[0]~input_o\ & (((!\LeReg1[1]~input_o\) # (\Reg~79_q\)))) ) ) ) # ( \Reg~63_q\ & ( !\Reg~47_q\ & ( (!\LeReg1[0]~input_o\ & (((\LeReg1[1]~input_o\)) # (\Reg~31_q\))) # (\LeReg1[0]~input_o\ & (((\Reg~79_q\ 
-- & \LeReg1[1]~input_o\)))) ) ) ) # ( !\Reg~63_q\ & ( !\Reg~47_q\ & ( (!\LeReg1[0]~input_o\ & (\Reg~31_q\ & ((!\LeReg1[1]~input_o\)))) # (\LeReg1[0]~input_o\ & (((\Reg~79_q\ & \LeReg1[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~31_q\,
	datab => \ALT_INV_Reg~79_q\,
	datac => \ALT_INV_LeReg1[0]~input_o\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~63_q\,
	dataf => \ALT_INV_Reg~47_q\,
	combout => \Reg~327_combout\);

-- Location: LABCELL_X63_Y4_N24
\Reg~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~331_combout\ = ( \Reg~327_combout\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~329_combout\))) # (\LeReg1[2]~input_o\ & (\Reg~330_combout\)) ) ) ) # ( !\Reg~327_combout\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & 
-- ((\Reg~329_combout\))) # (\LeReg1[2]~input_o\ & (\Reg~330_combout\)) ) ) ) # ( \Reg~327_combout\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~328_combout\) ) ) ) # ( !\Reg~327_combout\ & ( !\LeReg1[3]~input_o\ & ( (\Reg~328_combout\ & 
-- \LeReg1[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~330_combout\,
	datab => \ALT_INV_Reg~328_combout\,
	datac => \ALT_INV_Reg~329_combout\,
	datad => \ALT_INV_LeReg1[2]~input_o\,
	datae => \ALT_INV_Reg~327_combout\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~331_combout\);

-- Location: IOIBUF_X64_Y0_N52
\Data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(11),
	o => \Data[11]~input_o\);

-- Location: FF_X60_Y3_N2
\Reg~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~48_q\);

-- Location: FF_X60_Y4_N7
\Reg~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~240_q\);

-- Location: FF_X60_Y3_N41
\Reg~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~112_q\);

-- Location: FF_X61_Y4_N37
\Reg~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~176_q\);

-- Location: LABCELL_X61_Y4_N36
\Reg~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~333_combout\ = ( \Reg~176_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~240_q\) ) ) ) # ( !\Reg~176_q\ & ( \LeReg1[3]~input_o\ & ( (\LeReg1[2]~input_o\ & \Reg~240_q\) ) ) ) # ( \Reg~176_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & (\Reg~48_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~112_q\))) ) ) ) # ( !\Reg~176_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & (\Reg~48_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~112_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[2]~input_o\,
	datab => \ALT_INV_Reg~48_q\,
	datac => \ALT_INV_Reg~240_q\,
	datad => \ALT_INV_Reg~112_q\,
	datae => \ALT_INV_Reg~176_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~333_combout\);

-- Location: FF_X66_Y4_N47
\Reg~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~144_q\);

-- Location: FF_X60_Y4_N50
\Reg~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~272_q\);

-- Location: LABCELL_X64_Y5_N33
\Reg~80feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~80feeder_combout\ = \Data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[11]~input_o\,
	combout => \Reg~80feeder_combout\);

-- Location: FF_X64_Y5_N34
\Reg~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~80feeder_combout\,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~80_q\);

-- Location: FF_X60_Y4_N44
\Reg~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~208_q\);

-- Location: LABCELL_X60_Y4_N42
\Reg~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~335_combout\ = ( \Reg~208_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~144_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~272_q\))) ) ) ) # ( !\Reg~208_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~144_q\)) # (\LeReg1[3]~input_o\ 
-- & ((\Reg~272_q\))) ) ) ) # ( \Reg~208_q\ & ( !\LeReg1[2]~input_o\ & ( (\Reg~80_q\) # (\LeReg1[3]~input_o\) ) ) ) # ( !\Reg~208_q\ & ( !\LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & \Reg~80_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[3]~input_o\,
	datab => \ALT_INV_Reg~144_q\,
	datac => \ALT_INV_Reg~272_q\,
	datad => \ALT_INV_Reg~80_q\,
	datae => \ALT_INV_Reg~208_q\,
	dataf => \ALT_INV_LeReg1[2]~input_o\,
	combout => \Reg~335_combout\);

-- Location: FF_X64_Y4_N25
\Reg~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~224_q\);

-- Location: FF_X64_Y4_N16
\Reg~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~32_q\);

-- Location: FF_X64_Y4_N50
\Reg~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~96_q\);

-- Location: FF_X65_Y4_N14
\Reg~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~160_q\);

-- Location: MLABCELL_X65_Y4_N12
\Reg~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~332_combout\ = ( \Reg~160_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & ((\Reg~96_q\))) # (\LeReg1[3]~input_o\ & (\Reg~224_q\)) ) ) ) # ( !\Reg~160_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & ((\Reg~96_q\))) # (\LeReg1[3]~input_o\ 
-- & (\Reg~224_q\)) ) ) ) # ( \Reg~160_q\ & ( !\LeReg1[2]~input_o\ & ( (\Reg~32_q\) # (\LeReg1[3]~input_o\) ) ) ) # ( !\Reg~160_q\ & ( !\LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & \Reg~32_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~224_q\,
	datab => \ALT_INV_LeReg1[3]~input_o\,
	datac => \ALT_INV_Reg~32_q\,
	datad => \ALT_INV_Reg~96_q\,
	datae => \ALT_INV_Reg~160_q\,
	dataf => \ALT_INV_LeReg1[2]~input_o\,
	combout => \Reg~332_combout\);

-- Location: FF_X67_Y3_N20
\Reg~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~256_q\);

-- Location: FF_X63_Y4_N59
\Reg~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~64_q\);

-- Location: FF_X67_Y3_N13
\Reg~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~192_q\);

-- Location: FF_X67_Y3_N41
\Reg~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[11]~input_o\,
	sload => VCC,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~128_q\);

-- Location: LABCELL_X67_Y3_N12
\Reg~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~334_combout\ = ( \Reg~192_q\ & ( \Reg~128_q\ & ( (!\LeReg1[2]~input_o\ & (((\Reg~64_q\)) # (\LeReg1[3]~input_o\))) # (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\) # ((\Reg~256_q\)))) ) ) ) # ( !\Reg~192_q\ & ( \Reg~128_q\ & ( (!\LeReg1[2]~input_o\ & 
-- (!\LeReg1[3]~input_o\ & ((\Reg~64_q\)))) # (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\) # ((\Reg~256_q\)))) ) ) ) # ( \Reg~192_q\ & ( !\Reg~128_q\ & ( (!\LeReg1[2]~input_o\ & (((\Reg~64_q\)) # (\LeReg1[3]~input_o\))) # (\LeReg1[2]~input_o\ & 
-- (\LeReg1[3]~input_o\ & (\Reg~256_q\))) ) ) ) # ( !\Reg~192_q\ & ( !\Reg~128_q\ & ( (!\LeReg1[2]~input_o\ & (!\LeReg1[3]~input_o\ & ((\Reg~64_q\)))) # (\LeReg1[2]~input_o\ & (\LeReg1[3]~input_o\ & (\Reg~256_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[2]~input_o\,
	datab => \ALT_INV_LeReg1[3]~input_o\,
	datac => \ALT_INV_Reg~256_q\,
	datad => \ALT_INV_Reg~64_q\,
	datae => \ALT_INV_Reg~192_q\,
	dataf => \ALT_INV_Reg~128_q\,
	combout => \Reg~334_combout\);

-- Location: LABCELL_X66_Y3_N48
\Reg~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~336_combout\ = ( \Reg~332_combout\ & ( \Reg~334_combout\ & ( (!\LeReg1[0]~input_o\) # ((!\LeReg1[1]~input_o\ & (\Reg~333_combout\)) # (\LeReg1[1]~input_o\ & ((\Reg~335_combout\)))) ) ) ) # ( !\Reg~332_combout\ & ( \Reg~334_combout\ & ( 
-- (!\LeReg1[1]~input_o\ & (\Reg~333_combout\ & (\LeReg1[0]~input_o\))) # (\LeReg1[1]~input_o\ & (((!\LeReg1[0]~input_o\) # (\Reg~335_combout\)))) ) ) ) # ( \Reg~332_combout\ & ( !\Reg~334_combout\ & ( (!\LeReg1[1]~input_o\ & (((!\LeReg1[0]~input_o\)) # 
-- (\Reg~333_combout\))) # (\LeReg1[1]~input_o\ & (((\LeReg1[0]~input_o\ & \Reg~335_combout\)))) ) ) ) # ( !\Reg~332_combout\ & ( !\Reg~334_combout\ & ( (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & (\Reg~333_combout\)) # (\LeReg1[1]~input_o\ & 
-- ((\Reg~335_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[1]~input_o\,
	datab => \ALT_INV_Reg~333_combout\,
	datac => \ALT_INV_LeReg1[0]~input_o\,
	datad => \ALT_INV_Reg~335_combout\,
	datae => \ALT_INV_Reg~332_combout\,
	dataf => \ALT_INV_Reg~334_combout\,
	combout => \Reg~336_combout\);

-- Location: IOIBUF_X62_Y0_N52
\Data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(12),
	o => \Data[12]~input_o\);

-- Location: MLABCELL_X65_Y5_N48
\Reg~97feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~97feeder_combout\ = ( \Data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~97feeder_combout\);

-- Location: FF_X65_Y5_N50
\Reg~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~97feeder_combout\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~97_q\);

-- Location: MLABCELL_X65_Y5_N24
\Reg~113feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~113feeder_combout\ = ( \Data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~113feeder_combout\);

-- Location: FF_X65_Y5_N26
\Reg~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~113feeder_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~113_q\);

-- Location: FF_X65_Y5_N55
\Reg~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[12]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~145_q\);

-- Location: FF_X66_Y5_N19
\Reg~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[12]~input_o\,
	sload => VCC,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~129_q\);

-- Location: LABCELL_X66_Y5_N18
\Reg~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~338_combout\ = ( \Reg~129_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~113_q\)) # (\LeReg1[1]~input_o\ & ((\Reg~145_q\))) ) ) ) # ( !\Reg~129_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~113_q\)) # (\LeReg1[1]~input_o\ 
-- & ((\Reg~145_q\))) ) ) ) # ( \Reg~129_q\ & ( !\LeReg1[0]~input_o\ & ( (\LeReg1[1]~input_o\) # (\Reg~97_q\) ) ) ) # ( !\Reg~129_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~97_q\ & !\LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~97_q\,
	datab => \ALT_INV_Reg~113_q\,
	datac => \ALT_INV_Reg~145_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~129_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~338_combout\);

-- Location: FF_X62_Y4_N2
\Reg~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[12]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~49_q\);

-- Location: LABCELL_X64_Y4_N12
\Reg~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~33feeder_combout\ = ( \Data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~33feeder_combout\);

-- Location: FF_X64_Y4_N14
\Reg~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~33feeder_combout\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~33_q\);

-- Location: FF_X62_Y4_N13
\Reg~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[12]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~65_q\);

-- Location: FF_X62_Y4_N20
\Reg~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[12]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~81_q\);

-- Location: LABCELL_X62_Y4_N12
\Reg~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~337_combout\ = ( \Reg~65_q\ & ( \Reg~81_q\ & ( ((!\LeReg1[0]~input_o\ & ((\Reg~33_q\))) # (\LeReg1[0]~input_o\ & (\Reg~49_q\))) # (\LeReg1[1]~input_o\) ) ) ) # ( !\Reg~65_q\ & ( \Reg~81_q\ & ( (!\LeReg1[1]~input_o\ & ((!\LeReg1[0]~input_o\ & 
-- ((\Reg~33_q\))) # (\LeReg1[0]~input_o\ & (\Reg~49_q\)))) # (\LeReg1[1]~input_o\ & (((\LeReg1[0]~input_o\)))) ) ) ) # ( \Reg~65_q\ & ( !\Reg~81_q\ & ( (!\LeReg1[1]~input_o\ & ((!\LeReg1[0]~input_o\ & ((\Reg~33_q\))) # (\LeReg1[0]~input_o\ & (\Reg~49_q\)))) 
-- # (\LeReg1[1]~input_o\ & (((!\LeReg1[0]~input_o\)))) ) ) ) # ( !\Reg~65_q\ & ( !\Reg~81_q\ & ( (!\LeReg1[1]~input_o\ & ((!\LeReg1[0]~input_o\ & ((\Reg~33_q\))) # (\LeReg1[0]~input_o\ & (\Reg~49_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~49_q\,
	datab => \ALT_INV_LeReg1[1]~input_o\,
	datac => \ALT_INV_Reg~33_q\,
	datad => \ALT_INV_LeReg1[0]~input_o\,
	datae => \ALT_INV_Reg~65_q\,
	dataf => \ALT_INV_Reg~81_q\,
	combout => \Reg~337_combout\);

-- Location: LABCELL_X70_Y4_N39
\Reg~477\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~477_combout\ = ( !\Data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~477_combout\);

-- Location: FF_X70_Y4_N41
\Reg~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~477_combout\,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~161_q\);

-- Location: LABCELL_X63_Y5_N18
\Reg~480\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~480_combout\ = ( !\Data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~480_combout\);

-- Location: FF_X63_Y5_N20
\Reg~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~480_combout\,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~209_q\);

-- Location: LABCELL_X67_Y3_N24
\Reg~479\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~479_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~479_combout\);

-- Location: FF_X67_Y3_N26
\Reg~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~479_combout\,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~193_q\);

-- Location: LABCELL_X70_Y4_N12
\Reg~478\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~478_combout\ = ( !\Data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~478_combout\);

-- Location: FF_X70_Y4_N14
\Reg~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~478_combout\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~177_q\);

-- Location: LABCELL_X62_Y4_N36
\Reg~339\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~339_combout\ = ( \LeReg1[0]~input_o\ & ( \Reg~177_q\ & ( (!\Reg~209_q\ & \LeReg1[1]~input_o\) ) ) ) # ( !\LeReg1[0]~input_o\ & ( \Reg~177_q\ & ( (!\LeReg1[1]~input_o\ & (!\Reg~161_q\)) # (\LeReg1[1]~input_o\ & ((!\Reg~193_q\))) ) ) ) # ( 
-- \LeReg1[0]~input_o\ & ( !\Reg~177_q\ & ( (!\Reg~209_q\) # (!\LeReg1[1]~input_o\) ) ) ) # ( !\LeReg1[0]~input_o\ & ( !\Reg~177_q\ & ( (!\LeReg1[1]~input_o\ & (!\Reg~161_q\)) # (\LeReg1[1]~input_o\ & ((!\Reg~193_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011110000111111111100110010101010111100000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~161_q\,
	datab => \ALT_INV_Reg~209_q\,
	datac => \ALT_INV_Reg~193_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_Reg~177_q\,
	combout => \Reg~339_combout\);

-- Location: LABCELL_X62_Y3_N36
\Reg~484\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~484_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~484_combout\);

-- Location: FF_X62_Y3_N38
\Reg~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~484_combout\,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~273_q\);

-- Location: LABCELL_X63_Y4_N42
\Reg~483\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~483_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~483_combout\);

-- Location: FF_X63_Y4_N44
\Reg~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~483_combout\,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~257_q\);

-- Location: LABCELL_X63_Y5_N54
\Reg~482\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~482_combout\ = ( !\Data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~482_combout\);

-- Location: FF_X63_Y5_N56
\Reg~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~482_combout\,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~241_q\);

-- Location: LABCELL_X63_Y5_N0
\Reg~481\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~481_combout\ = !\Data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[12]~input_o\,
	combout => \Reg~481_combout\);

-- Location: FF_X63_Y5_N2
\Reg~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~481_combout\,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~225_q\);

-- Location: LABCELL_X62_Y4_N42
\Reg~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~340_combout\ = ( \LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~273_q\ ) ) ) # ( !\LeReg1[0]~input_o\ & ( \LeReg1[1]~input_o\ & ( !\Reg~257_q\ ) ) ) # ( \LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~241_q\ ) ) ) # ( 
-- !\LeReg1[0]~input_o\ & ( !\LeReg1[1]~input_o\ & ( !\Reg~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111100001111000011001100110011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~273_q\,
	datab => \ALT_INV_Reg~257_q\,
	datac => \ALT_INV_Reg~241_q\,
	datad => \ALT_INV_Reg~225_q\,
	datae => \ALT_INV_LeReg1[0]~input_o\,
	dataf => \ALT_INV_LeReg1[1]~input_o\,
	combout => \Reg~340_combout\);

-- Location: LABCELL_X62_Y4_N54
\Reg~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~341_combout\ = ( \LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~340_combout\ ) ) ) # ( !\LeReg1[2]~input_o\ & ( \LeReg1[3]~input_o\ & ( \Reg~339_combout\ ) ) ) # ( \LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~338_combout\ ) ) ) # ( 
-- !\LeReg1[2]~input_o\ & ( !\LeReg1[3]~input_o\ & ( \Reg~337_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~338_combout\,
	datab => \ALT_INV_Reg~337_combout\,
	datac => \ALT_INV_Reg~339_combout\,
	datad => \ALT_INV_Reg~340_combout\,
	datae => \ALT_INV_LeReg1[2]~input_o\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~341_combout\);

-- Location: IOIBUF_X60_Y0_N52
\Data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(13),
	o => \Data[13]~input_o\);

-- Location: FF_X65_Y4_N26
\Reg~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~258_q\);

-- Location: FF_X61_Y3_N17
\Reg~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~66_q\);

-- Location: LABCELL_X68_Y4_N9
\Reg~130feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~130feeder_combout\ = ( \Data[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[13]~input_o\,
	combout => \Reg~130feeder_combout\);

-- Location: FF_X68_Y4_N11
\Reg~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~130feeder_combout\,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~130_q\);

-- Location: FF_X65_Y4_N49
\Reg~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~194_q\);

-- Location: MLABCELL_X65_Y4_N48
\Reg~344\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~344_combout\ = ( \Reg~194_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~258_q\) ) ) ) # ( !\Reg~194_q\ & ( \LeReg1[3]~input_o\ & ( (\Reg~258_q\ & \LeReg1[2]~input_o\) ) ) ) # ( \Reg~194_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & (\Reg~66_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~130_q\))) ) ) ) # ( !\Reg~194_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & (\Reg~66_q\)) # (\LeReg1[2]~input_o\ & ((\Reg~130_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~258_q\,
	datab => \ALT_INV_Reg~66_q\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_Reg~130_q\,
	datae => \ALT_INV_Reg~194_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~344_combout\);

-- Location: FF_X62_Y3_N14
\Reg~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~226_q\);

-- Location: FF_X64_Y4_N32
\Reg~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~34_q\);

-- Location: FF_X67_Y5_N1
\Reg~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~162_q\);

-- Location: FF_X64_Y4_N40
\Reg~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~98_q\);

-- Location: LABCELL_X67_Y5_N0
\Reg~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~342_combout\ = ( \Reg~162_q\ & ( \Reg~98_q\ & ( (!\LeReg1[2]~input_o\ & (((\LeReg1[3]~input_o\) # (\Reg~34_q\)))) # (\LeReg1[2]~input_o\ & (((!\LeReg1[3]~input_o\)) # (\Reg~226_q\))) ) ) ) # ( !\Reg~162_q\ & ( \Reg~98_q\ & ( (!\LeReg1[2]~input_o\ & 
-- (((\Reg~34_q\ & !\LeReg1[3]~input_o\)))) # (\LeReg1[2]~input_o\ & (((!\LeReg1[3]~input_o\)) # (\Reg~226_q\))) ) ) ) # ( \Reg~162_q\ & ( !\Reg~98_q\ & ( (!\LeReg1[2]~input_o\ & (((\LeReg1[3]~input_o\) # (\Reg~34_q\)))) # (\LeReg1[2]~input_o\ & (\Reg~226_q\ 
-- & ((\LeReg1[3]~input_o\)))) ) ) ) # ( !\Reg~162_q\ & ( !\Reg~98_q\ & ( (!\LeReg1[2]~input_o\ & (((\Reg~34_q\ & !\LeReg1[3]~input_o\)))) # (\LeReg1[2]~input_o\ & (\Reg~226_q\ & ((\LeReg1[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~226_q\,
	datab => \ALT_INV_Reg~34_q\,
	datac => \ALT_INV_LeReg1[2]~input_o\,
	datad => \ALT_INV_LeReg1[3]~input_o\,
	datae => \ALT_INV_Reg~162_q\,
	dataf => \ALT_INV_Reg~98_q\,
	combout => \Reg~342_combout\);

-- Location: FF_X65_Y5_N25
\Reg~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~114_q\);

-- Location: FF_X65_Y3_N50
\Reg~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~242_q\);

-- Location: FF_X60_Y3_N5
\Reg~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~50_q\);

-- Location: FF_X65_Y3_N44
\Reg~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~178_q\);

-- Location: MLABCELL_X65_Y3_N42
\Reg~343\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~343_combout\ = ( \Reg~178_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~114_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~242_q\))) ) ) ) # ( !\Reg~178_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~114_q\)) # (\LeReg1[3]~input_o\ 
-- & ((\Reg~242_q\))) ) ) ) # ( \Reg~178_q\ & ( !\LeReg1[2]~input_o\ & ( (\Reg~50_q\) # (\LeReg1[3]~input_o\) ) ) ) # ( !\Reg~178_q\ & ( !\LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & \Reg~50_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~114_q\,
	datab => \ALT_INV_LeReg1[3]~input_o\,
	datac => \ALT_INV_Reg~242_q\,
	datad => \ALT_INV_Reg~50_q\,
	datae => \ALT_INV_Reg~178_q\,
	dataf => \ALT_INV_LeReg1[2]~input_o\,
	combout => \Reg~343_combout\);

-- Location: FF_X62_Y3_N35
\Reg~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~146_q\);

-- Location: FF_X62_Y3_N50
\Reg~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~274_q\);

-- Location: FF_X61_Y4_N43
\Reg~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~210_q\);

-- Location: FF_X61_Y3_N47
\Reg~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[13]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~82_q\);

-- Location: LABCELL_X61_Y4_N42
\Reg~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~345_combout\ = ( \Reg~210_q\ & ( \Reg~82_q\ & ( (!\LeReg1[2]~input_o\) # ((!\LeReg1[3]~input_o\ & (\Reg~146_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~274_q\)))) ) ) ) # ( !\Reg~210_q\ & ( \Reg~82_q\ & ( (!\LeReg1[2]~input_o\ & (((!\LeReg1[3]~input_o\)))) 
-- # (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & (\Reg~146_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~274_q\))))) ) ) ) # ( \Reg~210_q\ & ( !\Reg~82_q\ & ( (!\LeReg1[2]~input_o\ & (((\LeReg1[3]~input_o\)))) # (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & 
-- (\Reg~146_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~274_q\))))) ) ) ) # ( !\Reg~210_q\ & ( !\Reg~82_q\ & ( (\LeReg1[2]~input_o\ & ((!\LeReg1[3]~input_o\ & (\Reg~146_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~274_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~146_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~274_q\,
	datad => \ALT_INV_LeReg1[3]~input_o\,
	datae => \ALT_INV_Reg~210_q\,
	dataf => \ALT_INV_Reg~82_q\,
	combout => \Reg~345_combout\);

-- Location: MLABCELL_X65_Y4_N0
\Reg~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~346_combout\ = ( \Reg~345_combout\ & ( \LeReg1[0]~input_o\ & ( (\LeReg1[1]~input_o\) # (\Reg~343_combout\) ) ) ) # ( !\Reg~345_combout\ & ( \LeReg1[0]~input_o\ & ( (\Reg~343_combout\ & !\LeReg1[1]~input_o\) ) ) ) # ( \Reg~345_combout\ & ( 
-- !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~342_combout\))) # (\LeReg1[1]~input_o\ & (\Reg~344_combout\)) ) ) ) # ( !\Reg~345_combout\ & ( !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~342_combout\))) # (\LeReg1[1]~input_o\ & 
-- (\Reg~344_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~344_combout\,
	datab => \ALT_INV_Reg~342_combout\,
	datac => \ALT_INV_Reg~343_combout\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~345_combout\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~346_combout\);

-- Location: IOIBUF_X70_Y0_N18
\Data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(14),
	o => \Data[14]~input_o\);

-- Location: LABCELL_X64_Y4_N15
\Reg~35feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~35feeder_combout\ = ( \Data[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[14]~input_o\,
	combout => \Reg~35feeder_combout\);

-- Location: FF_X64_Y4_N17
\Reg~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~35feeder_combout\,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~35_q\);

-- Location: FF_X62_Y4_N26
\Reg~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~83_q\);

-- Location: FF_X62_Y4_N53
\Reg~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~51_q\);

-- Location: FF_X61_Y4_N49
\Reg~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~67_q\);

-- Location: LABCELL_X61_Y4_N48
\Reg~347\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~347_combout\ = ( \Reg~67_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~51_q\))) # (\LeReg1[1]~input_o\ & (\Reg~83_q\)) ) ) ) # ( !\Reg~67_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~51_q\))) # (\LeReg1[1]~input_o\ & 
-- (\Reg~83_q\)) ) ) ) # ( \Reg~67_q\ & ( !\LeReg1[0]~input_o\ & ( (\LeReg1[1]~input_o\) # (\Reg~35_q\) ) ) ) # ( !\Reg~67_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~35_q\ & !\LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~35_q\,
	datab => \ALT_INV_Reg~83_q\,
	datac => \ALT_INV_Reg~51_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~67_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~347_combout\);

-- Location: FF_X61_Y4_N55
\Reg~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~211_q\);

-- Location: LABCELL_X71_Y4_N39
\Reg~179feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~179feeder_combout\ = ( \Data[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[14]~input_o\,
	combout => \Reg~179feeder_combout\);

-- Location: FF_X71_Y4_N41
\Reg~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~179feeder_combout\,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~179_q\);

-- Location: FF_X71_Y4_N43
\Reg~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~195_q\);

-- Location: FF_X71_Y4_N35
\Reg~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~163_q\);

-- Location: LABCELL_X71_Y4_N42
\Reg~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~349_combout\ = ( \Reg~195_q\ & ( \Reg~163_q\ & ( (!\LeReg1[0]~input_o\) # ((!\LeReg1[1]~input_o\ & ((\Reg~179_q\))) # (\LeReg1[1]~input_o\ & (\Reg~211_q\))) ) ) ) # ( !\Reg~195_q\ & ( \Reg~163_q\ & ( (!\LeReg1[0]~input_o\ & (!\LeReg1[1]~input_o\)) # 
-- (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & ((\Reg~179_q\))) # (\LeReg1[1]~input_o\ & (\Reg~211_q\)))) ) ) ) # ( \Reg~195_q\ & ( !\Reg~163_q\ & ( (!\LeReg1[0]~input_o\ & (\LeReg1[1]~input_o\)) # (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & 
-- ((\Reg~179_q\))) # (\LeReg1[1]~input_o\ & (\Reg~211_q\)))) ) ) ) # ( !\Reg~195_q\ & ( !\Reg~163_q\ & ( (\LeReg1[0]~input_o\ & ((!\LeReg1[1]~input_o\ & ((\Reg~179_q\))) # (\LeReg1[1]~input_o\ & (\Reg~211_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[0]~input_o\,
	datab => \ALT_INV_LeReg1[1]~input_o\,
	datac => \ALT_INV_Reg~211_q\,
	datad => \ALT_INV_Reg~179_q\,
	datae => \ALT_INV_Reg~195_q\,
	dataf => \ALT_INV_Reg~163_q\,
	combout => \Reg~349_combout\);

-- Location: LABCELL_X64_Y4_N21
\Reg~99feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~99feeder_combout\ = ( \Data[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[14]~input_o\,
	combout => \Reg~99feeder_combout\);

-- Location: FF_X64_Y4_N23
\Reg~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~99feeder_combout\,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~99_q\);

-- Location: MLABCELL_X65_Y5_N45
\Reg~115feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~115feeder_combout\ = \Data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[14]~input_o\,
	combout => \Reg~115feeder_combout\);

-- Location: FF_X65_Y5_N46
\Reg~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Reg~115feeder_combout\,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~115_q\);

-- Location: FF_X62_Y5_N49
\Reg~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~147_q\);

-- Location: FF_X66_Y5_N26
\Reg~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~131_q\);

-- Location: LABCELL_X66_Y5_N24
\Reg~348\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~348_combout\ = ( \Reg~131_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~115_q\)) # (\LeReg1[1]~input_o\ & ((\Reg~147_q\))) ) ) ) # ( !\Reg~131_q\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & (\Reg~115_q\)) # (\LeReg1[1]~input_o\ 
-- & ((\Reg~147_q\))) ) ) ) # ( \Reg~131_q\ & ( !\LeReg1[0]~input_o\ & ( (\LeReg1[1]~input_o\) # (\Reg~99_q\) ) ) ) # ( !\Reg~131_q\ & ( !\LeReg1[0]~input_o\ & ( (\Reg~99_q\ & !\LeReg1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~99_q\,
	datab => \ALT_INV_Reg~115_q\,
	datac => \ALT_INV_Reg~147_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~131_q\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~348_combout\);

-- Location: FF_X66_Y3_N53
\Reg~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~227_q\);

-- Location: FF_X65_Y3_N35
\Reg~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~243_q\);

-- Location: FF_X67_Y3_N32
\Reg~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~259_q\);

-- Location: FF_X66_Y3_N25
\Reg~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[14]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~275_q\);

-- Location: LABCELL_X67_Y3_N30
\Reg~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~350_combout\ = ( \Reg~259_q\ & ( \Reg~275_q\ & ( ((!\LeReg1[0]~input_o\ & (\Reg~227_q\)) # (\LeReg1[0]~input_o\ & ((\Reg~243_q\)))) # (\LeReg1[1]~input_o\) ) ) ) # ( !\Reg~259_q\ & ( \Reg~275_q\ & ( (!\LeReg1[0]~input_o\ & (\Reg~227_q\ & 
-- ((!\LeReg1[1]~input_o\)))) # (\LeReg1[0]~input_o\ & (((\LeReg1[1]~input_o\) # (\Reg~243_q\)))) ) ) ) # ( \Reg~259_q\ & ( !\Reg~275_q\ & ( (!\LeReg1[0]~input_o\ & (((\LeReg1[1]~input_o\)) # (\Reg~227_q\))) # (\LeReg1[0]~input_o\ & (((\Reg~243_q\ & 
-- !\LeReg1[1]~input_o\)))) ) ) ) # ( !\Reg~259_q\ & ( !\Reg~275_q\ & ( (!\LeReg1[1]~input_o\ & ((!\LeReg1[0]~input_o\ & (\Reg~227_q\)) # (\LeReg1[0]~input_o\ & ((\Reg~243_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~227_q\,
	datab => \ALT_INV_LeReg1[0]~input_o\,
	datac => \ALT_INV_Reg~243_q\,
	datad => \ALT_INV_LeReg1[1]~input_o\,
	datae => \ALT_INV_Reg~259_q\,
	dataf => \ALT_INV_Reg~275_q\,
	combout => \Reg~350_combout\);

-- Location: LABCELL_X71_Y4_N30
\Reg~351\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~351_combout\ = ( \Reg~350_combout\ & ( \LeReg1[2]~input_o\ & ( (\LeReg1[3]~input_o\) # (\Reg~348_combout\) ) ) ) # ( !\Reg~350_combout\ & ( \LeReg1[2]~input_o\ & ( (\Reg~348_combout\ & !\LeReg1[3]~input_o\) ) ) ) # ( \Reg~350_combout\ & ( 
-- !\LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~347_combout\)) # (\LeReg1[3]~input_o\ & ((\Reg~349_combout\))) ) ) ) # ( !\Reg~350_combout\ & ( !\LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~347_combout\)) # (\LeReg1[3]~input_o\ & 
-- ((\Reg~349_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~347_combout\,
	datab => \ALT_INV_Reg~349_combout\,
	datac => \ALT_INV_Reg~348_combout\,
	datad => \ALT_INV_LeReg1[3]~input_o\,
	datae => \ALT_INV_Reg~350_combout\,
	dataf => \ALT_INV_LeReg1[2]~input_o\,
	combout => \Reg~351_combout\);

-- Location: IOIBUF_X60_Y0_N35
\Data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(15),
	o => \Data[15]~input_o\);

-- Location: FF_X61_Y3_N11
\Reg~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~68_q\);

-- Location: FF_X67_Y3_N11
\Reg~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~132_q\);

-- Location: FF_X65_Y4_N20
\Reg~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~260_q\);

-- Location: FF_X65_Y4_N43
\Reg~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~196_q\);

-- Location: MLABCELL_X65_Y4_N42
\Reg~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~354_combout\ = ( \Reg~196_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~132_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~260_q\))) ) ) ) # ( !\Reg~196_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~132_q\)) # (\LeReg1[3]~input_o\ 
-- & ((\Reg~260_q\))) ) ) ) # ( \Reg~196_q\ & ( !\LeReg1[2]~input_o\ & ( (\LeReg1[3]~input_o\) # (\Reg~68_q\) ) ) ) # ( !\Reg~196_q\ & ( !\LeReg1[2]~input_o\ & ( (\Reg~68_q\ & !\LeReg1[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~68_q\,
	datab => \ALT_INV_Reg~132_q\,
	datac => \ALT_INV_Reg~260_q\,
	datad => \ALT_INV_LeReg1[3]~input_o\,
	datae => \ALT_INV_Reg~196_q\,
	dataf => \ALT_INV_LeReg1[2]~input_o\,
	combout => \Reg~354_combout\);

-- Location: FF_X67_Y4_N19
\Reg~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~228_q\);

-- Location: FF_X64_Y4_N37
\Reg~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~100_q\);

-- Location: FF_X60_Y3_N17
\Reg~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~36_q\);

-- Location: FF_X65_Y4_N37
\Reg~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~164_q\);

-- Location: MLABCELL_X65_Y4_N36
\Reg~352\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~352_combout\ = ( \Reg~164_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & ((\Reg~100_q\))) # (\LeReg1[3]~input_o\ & (\Reg~228_q\)) ) ) ) # ( !\Reg~164_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & ((\Reg~100_q\))) # 
-- (\LeReg1[3]~input_o\ & (\Reg~228_q\)) ) ) ) # ( \Reg~164_q\ & ( !\LeReg1[2]~input_o\ & ( (\Reg~36_q\) # (\LeReg1[3]~input_o\) ) ) ) # ( !\Reg~164_q\ & ( !\LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & \Reg~36_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~228_q\,
	datab => \ALT_INV_LeReg1[3]~input_o\,
	datac => \ALT_INV_Reg~100_q\,
	datad => \ALT_INV_Reg~36_q\,
	datae => \ALT_INV_Reg~164_q\,
	dataf => \ALT_INV_LeReg1[2]~input_o\,
	combout => \Reg~352_combout\);

-- Location: FF_X62_Y5_N29
\Reg~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~148_q\);

-- Location: FF_X61_Y3_N28
\Reg~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~84_q\);

-- Location: FF_X60_Y4_N37
\Reg~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~276_q\);

-- Location: FF_X60_Y4_N32
\Reg~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~212_q\);

-- Location: LABCELL_X60_Y4_N30
\Reg~355\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~355_combout\ = ( \Reg~212_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~148_q\)) # (\LeReg1[3]~input_o\ & ((\Reg~276_q\))) ) ) ) # ( !\Reg~212_q\ & ( \LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & (\Reg~148_q\)) # (\LeReg1[3]~input_o\ 
-- & ((\Reg~276_q\))) ) ) ) # ( \Reg~212_q\ & ( !\LeReg1[2]~input_o\ & ( (\Reg~84_q\) # (\LeReg1[3]~input_o\) ) ) ) # ( !\Reg~212_q\ & ( !\LeReg1[2]~input_o\ & ( (!\LeReg1[3]~input_o\ & \Reg~84_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[3]~input_o\,
	datab => \ALT_INV_Reg~148_q\,
	datac => \ALT_INV_Reg~84_q\,
	datad => \ALT_INV_Reg~276_q\,
	datae => \ALT_INV_Reg~212_q\,
	dataf => \ALT_INV_LeReg1[2]~input_o\,
	combout => \Reg~355_combout\);

-- Location: FF_X60_Y3_N26
\Reg~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~116_q\);

-- Location: FF_X60_Y3_N50
\Reg~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~52_q\);

-- Location: FF_X60_Y4_N25
\Reg~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~244_q\);

-- Location: FF_X61_Y4_N1
\Reg~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Data[15]~input_o\,
	sload => VCC,
	ena => \Reg~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg~180_q\);

-- Location: LABCELL_X61_Y4_N0
\Reg~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~353_combout\ = ( \Reg~180_q\ & ( \LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\) # (\Reg~244_q\) ) ) ) # ( !\Reg~180_q\ & ( \LeReg1[3]~input_o\ & ( (\LeReg1[2]~input_o\ & \Reg~244_q\) ) ) ) # ( \Reg~180_q\ & ( !\LeReg1[3]~input_o\ & ( 
-- (!\LeReg1[2]~input_o\ & ((\Reg~52_q\))) # (\LeReg1[2]~input_o\ & (\Reg~116_q\)) ) ) ) # ( !\Reg~180_q\ & ( !\LeReg1[3]~input_o\ & ( (!\LeReg1[2]~input_o\ & ((\Reg~52_q\))) # (\LeReg1[2]~input_o\ & (\Reg~116_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~116_q\,
	datab => \ALT_INV_LeReg1[2]~input_o\,
	datac => \ALT_INV_Reg~52_q\,
	datad => \ALT_INV_Reg~244_q\,
	datae => \ALT_INV_Reg~180_q\,
	dataf => \ALT_INV_LeReg1[3]~input_o\,
	combout => \Reg~353_combout\);

-- Location: MLABCELL_X65_Y4_N54
\Reg~356\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~356_combout\ = ( \Reg~353_combout\ & ( \LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\) # (\Reg~355_combout\) ) ) ) # ( !\Reg~353_combout\ & ( \LeReg1[0]~input_o\ & ( (\LeReg1[1]~input_o\ & \Reg~355_combout\) ) ) ) # ( \Reg~353_combout\ & ( 
-- !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~352_combout\))) # (\LeReg1[1]~input_o\ & (\Reg~354_combout\)) ) ) ) # ( !\Reg~353_combout\ & ( !\LeReg1[0]~input_o\ & ( (!\LeReg1[1]~input_o\ & ((\Reg~352_combout\))) # (\LeReg1[1]~input_o\ & 
-- (\Reg~354_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg1[1]~input_o\,
	datab => \ALT_INV_Reg~354_combout\,
	datac => \ALT_INV_Reg~352_combout\,
	datad => \ALT_INV_Reg~355_combout\,
	datae => \ALT_INV_Reg~353_combout\,
	dataf => \ALT_INV_LeReg1[0]~input_o\,
	combout => \Reg~356_combout\);

-- Location: IOIBUF_X66_Y0_N58
\LeReg2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg2(1),
	o => \LeReg2[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\LeReg2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg2(0),
	o => \LeReg2[0]~input_o\);

-- Location: LABCELL_X63_Y3_N42
\Reg~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~357_combout\ = ( \Reg~53_q\ & ( \LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & (!\Reg~37_q\)) # (\LeReg2[1]~input_o\ & ((!\Reg~69_q\))) ) ) ) # ( !\Reg~53_q\ & ( \LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & (!\Reg~37_q\)) # (\LeReg2[1]~input_o\ & 
-- ((!\Reg~69_q\))) ) ) ) # ( \Reg~53_q\ & ( !\LeReg2[0]~input_o\ & ( (\Reg~21_q\) # (\LeReg2[1]~input_o\) ) ) ) # ( !\Reg~53_q\ & ( !\LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & \Reg~21_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111110111000101110001011100010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~37_q\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_Reg~69_q\,
	datad => \ALT_INV_Reg~21_q\,
	datae => \ALT_INV_Reg~53_q\,
	dataf => \ALT_INV_LeReg2[0]~input_o\,
	combout => \Reg~357_combout\);

-- Location: IOIBUF_X64_Y0_N35
\LeReg2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg2(3),
	o => \LeReg2[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\LeReg2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeReg2(2),
	o => \LeReg2[2]~input_o\);

-- Location: LABCELL_X66_Y3_N6
\Reg~360\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~360_combout\ = ( \Reg~245_q\ & ( \LeReg2[1]~input_o\ & ( (!\LeReg2[0]~input_o\) # (!\Reg~261_q\) ) ) ) # ( !\Reg~245_q\ & ( \LeReg2[1]~input_o\ & ( (\LeReg2[0]~input_o\ & !\Reg~261_q\) ) ) ) # ( \Reg~245_q\ & ( !\LeReg2[1]~input_o\ & ( 
-- (!\LeReg2[0]~input_o\ & ((\Reg~213_q\))) # (\LeReg2[0]~input_o\ & (!\Reg~229_q\)) ) ) ) # ( !\Reg~245_q\ & ( !\LeReg2[1]~input_o\ & ( (!\LeReg2[0]~input_o\ & ((\Reg~213_q\))) # (\LeReg2[0]~input_o\ & (!\Reg~229_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000001111000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~229_q\,
	datab => \ALT_INV_Reg~213_q\,
	datac => \ALT_INV_LeReg2[0]~input_o\,
	datad => \ALT_INV_Reg~261_q\,
	datae => \ALT_INV_Reg~245_q\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~360_combout\);

-- Location: LABCELL_X66_Y5_N12
\Reg~359\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~359_combout\ = ( \Reg~181_q\ & ( \LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & ((!\Reg~165_q\))) # (\LeReg2[1]~input_o\ & (!\Reg~197_q\)) ) ) ) # ( !\Reg~181_q\ & ( \LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & ((!\Reg~165_q\))) # 
-- (\LeReg2[1]~input_o\ & (!\Reg~197_q\)) ) ) ) # ( \Reg~181_q\ & ( !\LeReg2[0]~input_o\ & ( (\Reg~149_q\) # (\LeReg2[1]~input_o\) ) ) ) # ( !\Reg~181_q\ & ( !\LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & \Reg~149_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011111111010010100001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[1]~input_o\,
	datab => \ALT_INV_Reg~149_q\,
	datac => \ALT_INV_Reg~197_q\,
	datad => \ALT_INV_Reg~165_q\,
	datae => \ALT_INV_Reg~181_q\,
	dataf => \ALT_INV_LeReg2[0]~input_o\,
	combout => \Reg~359_combout\);

-- Location: LABCELL_X66_Y5_N30
\Reg~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~358_combout\ = ( \Reg~117_q\ & ( \LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & (!\Reg~101_q\)) # (\LeReg2[1]~input_o\ & ((!\Reg~133_q\))) ) ) ) # ( !\Reg~117_q\ & ( \LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & (!\Reg~101_q\)) # 
-- (\LeReg2[1]~input_o\ & ((!\Reg~133_q\))) ) ) ) # ( \Reg~117_q\ & ( !\LeReg2[0]~input_o\ & ( (\LeReg2[1]~input_o\) # (\Reg~85_q\) ) ) ) # ( !\Reg~117_q\ & ( !\LeReg2[0]~input_o\ & ( (\Reg~85_q\ & !\LeReg2[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111110101111101000001010111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~101_q\,
	datab => \ALT_INV_Reg~85_q\,
	datac => \ALT_INV_LeReg2[1]~input_o\,
	datad => \ALT_INV_Reg~133_q\,
	datae => \ALT_INV_Reg~117_q\,
	dataf => \ALT_INV_LeReg2[0]~input_o\,
	combout => \Reg~358_combout\);

-- Location: LABCELL_X63_Y4_N54
\Reg~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~361_combout\ = ( \Reg~359_combout\ & ( \Reg~358_combout\ & ( (!\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\)) # (\Reg~357_combout\))) # (\LeReg2[3]~input_o\ & (((!\LeReg2[2]~input_o\) # (\Reg~360_combout\)))) ) ) ) # ( !\Reg~359_combout\ & ( 
-- \Reg~358_combout\ & ( (!\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\)) # (\Reg~357_combout\))) # (\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\ & \Reg~360_combout\)))) ) ) ) # ( \Reg~359_combout\ & ( !\Reg~358_combout\ & ( (!\LeReg2[3]~input_o\ & 
-- (\Reg~357_combout\ & (!\LeReg2[2]~input_o\))) # (\LeReg2[3]~input_o\ & (((!\LeReg2[2]~input_o\) # (\Reg~360_combout\)))) ) ) ) # ( !\Reg~359_combout\ & ( !\Reg~358_combout\ & ( (!\LeReg2[3]~input_o\ & (\Reg~357_combout\ & (!\LeReg2[2]~input_o\))) # 
-- (\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\ & \Reg~360_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~357_combout\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_Reg~360_combout\,
	datae => \ALT_INV_Reg~359_combout\,
	dataf => \ALT_INV_Reg~358_combout\,
	combout => \Reg~361_combout\);

-- Location: LABCELL_X64_Y5_N18
\Reg~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~365_combout\ = ( \Reg~262_q\ & ( \Reg~70_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\) # ((\Reg~134_q\)))) # (\LeReg2[3]~input_o\ & (((\Reg~198_q\)) # (\LeReg2[2]~input_o\))) ) ) ) # ( !\Reg~262_q\ & ( \Reg~70_q\ & ( (!\LeReg2[3]~input_o\ & 
-- ((!\LeReg2[2]~input_o\) # ((\Reg~134_q\)))) # (\LeReg2[3]~input_o\ & (!\LeReg2[2]~input_o\ & (\Reg~198_q\))) ) ) ) # ( \Reg~262_q\ & ( !\Reg~70_q\ & ( (!\LeReg2[3]~input_o\ & (\LeReg2[2]~input_o\ & ((\Reg~134_q\)))) # (\LeReg2[3]~input_o\ & 
-- (((\Reg~198_q\)) # (\LeReg2[2]~input_o\))) ) ) ) # ( !\Reg~262_q\ & ( !\Reg~70_q\ & ( (!\LeReg2[3]~input_o\ & (\LeReg2[2]~input_o\ & ((\Reg~134_q\)))) # (\LeReg2[3]~input_o\ & (!\LeReg2[2]~input_o\ & (\Reg~198_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[3]~input_o\,
	datab => \ALT_INV_LeReg2[2]~input_o\,
	datac => \ALT_INV_Reg~198_q\,
	datad => \ALT_INV_Reg~134_q\,
	datae => \ALT_INV_Reg~262_q\,
	dataf => \ALT_INV_Reg~70_q\,
	combout => \Reg~365_combout\);

-- Location: LABCELL_X67_Y4_N42
\Reg~364\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~364_combout\ = ( \Reg~246_q\ & ( \Reg~182_q\ & ( ((!\LeReg2[2]~input_o\ & (\Reg~54_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~118_q\)))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~246_q\ & ( \Reg~182_q\ & ( (!\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)) # 
-- (\Reg~54_q\))) # (\LeReg2[2]~input_o\ & (((\Reg~118_q\ & !\LeReg2[3]~input_o\)))) ) ) ) # ( \Reg~246_q\ & ( !\Reg~182_q\ & ( (!\LeReg2[2]~input_o\ & (\Reg~54_q\ & ((!\LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\) # 
-- (\Reg~118_q\)))) ) ) ) # ( !\Reg~246_q\ & ( !\Reg~182_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~54_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~118_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~54_q\,
	datab => \ALT_INV_Reg~118_q\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~246_q\,
	dataf => \ALT_INV_Reg~182_q\,
	combout => \Reg~364_combout\);

-- Location: LABCELL_X67_Y4_N30
\Reg~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~362_combout\ = ( \Reg~214_q\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~86_q\) ) ) ) # ( !\Reg~214_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~86_q\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~214_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & (\Reg~22_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~150_q\))) ) ) ) # ( !\Reg~214_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & (\Reg~22_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~150_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~22_q\,
	datab => \ALT_INV_Reg~86_q\,
	datac => \ALT_INV_LeReg2[3]~input_o\,
	datad => \ALT_INV_Reg~150_q\,
	datae => \ALT_INV_Reg~214_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~362_combout\);

-- Location: LABCELL_X67_Y4_N6
\Reg~363\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~363_combout\ = ( \Reg~230_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~102_q\) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~230_q\ & ( \LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & \Reg~102_q\) ) ) ) # ( \Reg~230_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & (\Reg~38_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~166_q\))) ) ) ) # ( !\Reg~230_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & (\Reg~38_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~166_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[3]~input_o\,
	datab => \ALT_INV_Reg~102_q\,
	datac => \ALT_INV_Reg~38_q\,
	datad => \ALT_INV_Reg~166_q\,
	datae => \ALT_INV_Reg~230_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~363_combout\);

-- Location: LABCELL_X64_Y5_N15
\Reg~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~366_combout\ = ( \LeReg2[0]~input_o\ & ( \Reg~363_combout\ & ( (!\LeReg2[1]~input_o\) # (\Reg~365_combout\) ) ) ) # ( !\LeReg2[0]~input_o\ & ( \Reg~363_combout\ & ( (!\LeReg2[1]~input_o\ & ((\Reg~362_combout\))) # (\LeReg2[1]~input_o\ & 
-- (\Reg~364_combout\)) ) ) ) # ( \LeReg2[0]~input_o\ & ( !\Reg~363_combout\ & ( (\Reg~365_combout\ & \LeReg2[1]~input_o\) ) ) ) # ( !\LeReg2[0]~input_o\ & ( !\Reg~363_combout\ & ( (!\LeReg2[1]~input_o\ & ((\Reg~362_combout\))) # (\LeReg2[1]~input_o\ & 
-- (\Reg~364_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~365_combout\,
	datab => \ALT_INV_Reg~364_combout\,
	datac => \ALT_INV_LeReg2[1]~input_o\,
	datad => \ALT_INV_Reg~362_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_Reg~363_combout\,
	combout => \Reg~366_combout\);

-- Location: LABCELL_X64_Y5_N0
\Reg~368\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~368_combout\ = ( \Reg~135_q\ & ( \Reg~119_q\ & ( ((!\LeReg2[0]~input_o\ & (\Reg~87_q\)) # (\LeReg2[0]~input_o\ & ((\Reg~103_q\)))) # (\LeReg2[1]~input_o\) ) ) ) # ( !\Reg~135_q\ & ( \Reg~119_q\ & ( (!\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\)) # 
-- (\Reg~87_q\))) # (\LeReg2[0]~input_o\ & (((\Reg~103_q\ & !\LeReg2[1]~input_o\)))) ) ) ) # ( \Reg~135_q\ & ( !\Reg~119_q\ & ( (!\LeReg2[0]~input_o\ & (\Reg~87_q\ & ((!\LeReg2[1]~input_o\)))) # (\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\) # 
-- (\Reg~103_q\)))) ) ) ) # ( !\Reg~135_q\ & ( !\Reg~119_q\ & ( (!\LeReg2[1]~input_o\ & ((!\LeReg2[0]~input_o\ & (\Reg~87_q\)) # (\LeReg2[0]~input_o\ & ((\Reg~103_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~87_q\,
	datab => \ALT_INV_Reg~103_q\,
	datac => \ALT_INV_LeReg2[0]~input_o\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_Reg~135_q\,
	dataf => \ALT_INV_Reg~119_q\,
	combout => \Reg~368_combout\);

-- Location: LABCELL_X66_Y3_N54
\Reg~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~370_combout\ = ( \Reg~263_q\ & ( \Reg~231_q\ & ( ((!\LeReg2[1]~input_o\ & (\Reg~215_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~247_q\)))) # (\LeReg2[0]~input_o\) ) ) ) # ( !\Reg~263_q\ & ( \Reg~231_q\ & ( (!\LeReg2[1]~input_o\ & (((\LeReg2[0]~input_o\)) # 
-- (\Reg~215_q\))) # (\LeReg2[1]~input_o\ & (((\Reg~247_q\ & !\LeReg2[0]~input_o\)))) ) ) ) # ( \Reg~263_q\ & ( !\Reg~231_q\ & ( (!\LeReg2[1]~input_o\ & (\Reg~215_q\ & ((!\LeReg2[0]~input_o\)))) # (\LeReg2[1]~input_o\ & (((\LeReg2[0]~input_o\) # 
-- (\Reg~247_q\)))) ) ) ) # ( !\Reg~263_q\ & ( !\Reg~231_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & (\Reg~215_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~247_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[1]~input_o\,
	datab => \ALT_INV_Reg~215_q\,
	datac => \ALT_INV_Reg~247_q\,
	datad => \ALT_INV_LeReg2[0]~input_o\,
	datae => \ALT_INV_Reg~263_q\,
	dataf => \ALT_INV_Reg~231_q\,
	combout => \Reg~370_combout\);

-- Location: LABCELL_X62_Y5_N36
\Reg~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~369_combout\ = ( \Reg~199_q\ & ( \Reg~167_q\ & ( ((!\LeReg2[1]~input_o\ & (\Reg~151_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~183_q\)))) # (\LeReg2[0]~input_o\) ) ) ) # ( !\Reg~199_q\ & ( \Reg~167_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & 
-- (\Reg~151_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~183_q\))))) # (\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\)))) ) ) ) # ( \Reg~199_q\ & ( !\Reg~167_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & (\Reg~151_q\)) # (\LeReg2[1]~input_o\ & 
-- ((\Reg~183_q\))))) # (\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\)))) ) ) ) # ( !\Reg~199_q\ & ( !\Reg~167_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & (\Reg~151_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~183_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~151_q\,
	datab => \ALT_INV_Reg~183_q\,
	datac => \ALT_INV_LeReg2[0]~input_o\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_Reg~199_q\,
	dataf => \ALT_INV_Reg~167_q\,
	combout => \Reg~369_combout\);

-- Location: LABCELL_X64_Y5_N24
\Reg~367\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~367_combout\ = ( \Reg~71_q\ & ( \Reg~39_q\ & ( ((!\LeReg2[1]~input_o\ & ((\Reg~23_q\))) # (\LeReg2[1]~input_o\ & (\Reg~55_q\))) # (\LeReg2[0]~input_o\) ) ) ) # ( !\Reg~71_q\ & ( \Reg~39_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & 
-- ((\Reg~23_q\))) # (\LeReg2[1]~input_o\ & (\Reg~55_q\)))) # (\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\)))) ) ) ) # ( \Reg~71_q\ & ( !\Reg~39_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & ((\Reg~23_q\))) # (\LeReg2[1]~input_o\ & 
-- (\Reg~55_q\)))) # (\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\)))) ) ) ) # ( !\Reg~71_q\ & ( !\Reg~39_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & ((\Reg~23_q\))) # (\LeReg2[1]~input_o\ & (\Reg~55_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~55_q\,
	datab => \ALT_INV_Reg~23_q\,
	datac => \ALT_INV_LeReg2[0]~input_o\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_Reg~71_q\,
	dataf => \ALT_INV_Reg~39_q\,
	combout => \Reg~367_combout\);

-- Location: LABCELL_X64_Y5_N36
\Reg~371\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~371_combout\ = ( \Reg~369_combout\ & ( \Reg~367_combout\ & ( (!\LeReg2[2]~input_o\) # ((!\LeReg2[3]~input_o\ & (\Reg~368_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~370_combout\)))) ) ) ) # ( !\Reg~369_combout\ & ( \Reg~367_combout\ & ( 
-- (!\LeReg2[2]~input_o\ & (((!\LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & (\Reg~368_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~370_combout\))))) ) ) ) # ( \Reg~369_combout\ & ( !\Reg~367_combout\ & ( (!\LeReg2[2]~input_o\ & 
-- (((\LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & (\Reg~368_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~370_combout\))))) ) ) ) # ( !\Reg~369_combout\ & ( !\Reg~367_combout\ & ( (\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & 
-- (\Reg~368_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~370_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~368_combout\,
	datab => \ALT_INV_LeReg2[2]~input_o\,
	datac => \ALT_INV_LeReg2[3]~input_o\,
	datad => \ALT_INV_Reg~370_combout\,
	datae => \ALT_INV_Reg~369_combout\,
	dataf => \ALT_INV_Reg~367_combout\,
	combout => \Reg~371_combout\);

-- Location: LABCELL_X67_Y4_N0
\Reg~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~374_combout\ = ( \Reg~248_q\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~120_q\) ) ) ) # ( !\Reg~248_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~120_q\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~248_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & (\Reg~56_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~184_q\))) ) ) ) # ( !\Reg~248_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & (\Reg~56_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~184_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~120_q\,
	datab => \ALT_INV_Reg~56_q\,
	datac => \ALT_INV_LeReg2[3]~input_o\,
	datad => \ALT_INV_Reg~184_q\,
	datae => \ALT_INV_Reg~248_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~374_combout\);

-- Location: LABCELL_X64_Y5_N42
\Reg~375\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~375_combout\ = ( \Reg~264_q\ & ( \Reg~200_q\ & ( ((!\LeReg2[2]~input_o\ & (\Reg~72_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~136_q\)))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~264_q\ & ( \Reg~200_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & 
-- (\Reg~72_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~136_q\))))) # (\LeReg2[3]~input_o\ & (!\LeReg2[2]~input_o\)) ) ) ) # ( \Reg~264_q\ & ( !\Reg~200_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~72_q\)) # (\LeReg2[2]~input_o\ & 
-- ((\Reg~136_q\))))) # (\LeReg2[3]~input_o\ & (\LeReg2[2]~input_o\)) ) ) ) # ( !\Reg~264_q\ & ( !\Reg~200_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~72_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~136_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[3]~input_o\,
	datab => \ALT_INV_LeReg2[2]~input_o\,
	datac => \ALT_INV_Reg~72_q\,
	datad => \ALT_INV_Reg~136_q\,
	datae => \ALT_INV_Reg~264_q\,
	dataf => \ALT_INV_Reg~200_q\,
	combout => \Reg~375_combout\);

-- Location: LABCELL_X64_Y4_N42
\Reg~372\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~372_combout\ = ( \Reg~216_q\ & ( \LeReg2[3]~input_o\ & ( (\Reg~152_q\) # (\LeReg2[2]~input_o\) ) ) ) # ( !\Reg~216_q\ & ( \LeReg2[3]~input_o\ & ( (!\LeReg2[2]~input_o\ & \Reg~152_q\) ) ) ) # ( \Reg~216_q\ & ( !\LeReg2[3]~input_o\ & ( 
-- (!\LeReg2[2]~input_o\ & (\Reg~24_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~88_q\))) ) ) ) # ( !\Reg~216_q\ & ( !\LeReg2[3]~input_o\ & ( (!\LeReg2[2]~input_o\ & (\Reg~24_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~88_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~24_q\,
	datab => \ALT_INV_LeReg2[2]~input_o\,
	datac => \ALT_INV_Reg~88_q\,
	datad => \ALT_INV_Reg~152_q\,
	datae => \ALT_INV_Reg~216_q\,
	dataf => \ALT_INV_LeReg2[3]~input_o\,
	combout => \Reg~372_combout\);

-- Location: LABCELL_X67_Y4_N54
\Reg~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~373_combout\ = ( \Reg~232_q\ & ( \Reg~168_q\ & ( ((!\LeReg2[2]~input_o\ & (\Reg~40_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~104_q\)))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~232_q\ & ( \Reg~168_q\ & ( (!\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)) # 
-- (\Reg~40_q\))) # (\LeReg2[2]~input_o\ & (((\Reg~104_q\ & !\LeReg2[3]~input_o\)))) ) ) ) # ( \Reg~232_q\ & ( !\Reg~168_q\ & ( (!\LeReg2[2]~input_o\ & (\Reg~40_q\ & ((!\LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\) # 
-- (\Reg~104_q\)))) ) ) ) # ( !\Reg~232_q\ & ( !\Reg~168_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~40_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~104_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~40_q\,
	datab => \ALT_INV_Reg~104_q\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~232_q\,
	dataf => \ALT_INV_Reg~168_q\,
	combout => \Reg~373_combout\);

-- Location: LABCELL_X64_Y5_N48
\Reg~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~376_combout\ = ( \LeReg2[0]~input_o\ & ( \Reg~373_combout\ & ( (!\LeReg2[1]~input_o\) # (\Reg~375_combout\) ) ) ) # ( !\LeReg2[0]~input_o\ & ( \Reg~373_combout\ & ( (!\LeReg2[1]~input_o\ & ((\Reg~372_combout\))) # (\LeReg2[1]~input_o\ & 
-- (\Reg~374_combout\)) ) ) ) # ( \LeReg2[0]~input_o\ & ( !\Reg~373_combout\ & ( (\Reg~375_combout\ & \LeReg2[1]~input_o\) ) ) ) # ( !\LeReg2[0]~input_o\ & ( !\Reg~373_combout\ & ( (!\LeReg2[1]~input_o\ & ((\Reg~372_combout\))) # (\LeReg2[1]~input_o\ & 
-- (\Reg~374_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~374_combout\,
	datab => \ALT_INV_Reg~375_combout\,
	datac => \ALT_INV_Reg~372_combout\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_Reg~373_combout\,
	combout => \Reg~376_combout\);

-- Location: LABCELL_X61_Y3_N33
\Reg~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~377_combout\ = ( \Reg~41_q\ & ( \LeReg2[1]~input_o\ & ( (!\LeReg2[0]~input_o\ & ((!\Reg~57_q\))) # (\LeReg2[0]~input_o\ & (!\Reg~73_q\)) ) ) ) # ( !\Reg~41_q\ & ( \LeReg2[1]~input_o\ & ( (!\LeReg2[0]~input_o\ & ((!\Reg~57_q\))) # (\LeReg2[0]~input_o\ 
-- & (!\Reg~73_q\)) ) ) ) # ( \Reg~41_q\ & ( !\LeReg2[1]~input_o\ & ( (\Reg~25_q\) # (\LeReg2[0]~input_o\) ) ) ) # ( !\Reg~41_q\ & ( !\LeReg2[1]~input_o\ & ( (!\LeReg2[0]~input_o\ & \Reg~25_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111111100100111001001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_Reg~73_q\,
	datac => \ALT_INV_Reg~57_q\,
	datad => \ALT_INV_Reg~25_q\,
	datae => \ALT_INV_Reg~41_q\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~377_combout\);

-- Location: MLABCELL_X65_Y5_N39
\Reg~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~378_combout\ = ( \Reg~105_q\ & ( \Reg~137_q\ & ( (!\LeReg2[1]~input_o\ & (((\LeReg2[0]~input_o\)) # (\Reg~89_q\))) # (\LeReg2[1]~input_o\ & (((!\Reg~121_q\ & !\LeReg2[0]~input_o\)))) ) ) ) # ( !\Reg~105_q\ & ( \Reg~137_q\ & ( (!\LeReg2[0]~input_o\ & 
-- ((!\LeReg2[1]~input_o\ & (\Reg~89_q\)) # (\LeReg2[1]~input_o\ & ((!\Reg~121_q\))))) ) ) ) # ( \Reg~105_q\ & ( !\Reg~137_q\ & ( ((!\LeReg2[1]~input_o\ & (\Reg~89_q\)) # (\LeReg2[1]~input_o\ & ((!\Reg~121_q\)))) # (\LeReg2[0]~input_o\) ) ) ) # ( 
-- !\Reg~105_q\ & ( !\Reg~137_q\ & ( (!\LeReg2[1]~input_o\ & (\Reg~89_q\ & ((!\LeReg2[0]~input_o\)))) # (\LeReg2[1]~input_o\ & (((!\Reg~121_q\) # (\LeReg2[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010000110011011101001111111101110100000000000111010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~89_q\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_Reg~121_q\,
	datad => \ALT_INV_LeReg2[0]~input_o\,
	datae => \ALT_INV_Reg~105_q\,
	dataf => \ALT_INV_Reg~137_q\,
	combout => \Reg~378_combout\);

-- Location: LABCELL_X66_Y4_N0
\Reg~379\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~379_combout\ = ( \Reg~169_q\ & ( \LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\) # (!\Reg~201_q\) ) ) ) # ( !\Reg~169_q\ & ( \LeReg2[0]~input_o\ & ( (\LeReg2[1]~input_o\ & !\Reg~201_q\) ) ) ) # ( \Reg~169_q\ & ( !\LeReg2[0]~input_o\ & ( 
-- (!\LeReg2[1]~input_o\ & (\Reg~153_q\)) # (\LeReg2[1]~input_o\ & ((!\Reg~185_q\))) ) ) ) # ( !\Reg~169_q\ & ( !\LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & (\Reg~153_q\)) # (\LeReg2[1]~input_o\ & ((!\Reg~185_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100011101000111010000110011000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~153_q\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_Reg~185_q\,
	datad => \ALT_INV_Reg~201_q\,
	datae => \ALT_INV_Reg~169_q\,
	dataf => \ALT_INV_LeReg2[0]~input_o\,
	combout => \Reg~379_combout\);

-- Location: LABCELL_X67_Y4_N12
\Reg~380\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~380_combout\ = ( \Reg~233_q\ & ( \Reg~249_q\ & ( (!\LeReg2[1]~input_o\ & (((\LeReg2[0]~input_o\) # (\Reg~217_q\)))) # (\LeReg2[1]~input_o\ & (!\Reg~265_q\ & ((\LeReg2[0]~input_o\)))) ) ) ) # ( !\Reg~233_q\ & ( \Reg~249_q\ & ( (!\LeReg2[1]~input_o\ & 
-- (((\Reg~217_q\ & !\LeReg2[0]~input_o\)))) # (\LeReg2[1]~input_o\ & (!\Reg~265_q\ & ((\LeReg2[0]~input_o\)))) ) ) ) # ( \Reg~233_q\ & ( !\Reg~249_q\ & ( (!\LeReg2[1]~input_o\ & (((\LeReg2[0]~input_o\) # (\Reg~217_q\)))) # (\LeReg2[1]~input_o\ & 
-- ((!\Reg~265_q\) # ((!\LeReg2[0]~input_o\)))) ) ) ) # ( !\Reg~233_q\ & ( !\Reg~249_q\ & ( (!\LeReg2[1]~input_o\ & (((\Reg~217_q\ & !\LeReg2[0]~input_o\)))) # (\LeReg2[1]~input_o\ & ((!\Reg~265_q\) # ((!\LeReg2[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100100010001111111110111000001100001000100000110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~265_q\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_Reg~217_q\,
	datad => \ALT_INV_LeReg2[0]~input_o\,
	datae => \ALT_INV_Reg~233_q\,
	dataf => \ALT_INV_Reg~249_q\,
	combout => \Reg~380_combout\);

-- Location: LABCELL_X66_Y4_N48
\Reg~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~381_combout\ = ( \Reg~379_combout\ & ( \Reg~380_combout\ & ( ((!\LeReg2[2]~input_o\ & (\Reg~377_combout\)) # (\LeReg2[2]~input_o\ & ((\Reg~378_combout\)))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~379_combout\ & ( \Reg~380_combout\ & ( 
-- (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~377_combout\)) # (\LeReg2[2]~input_o\ & ((\Reg~378_combout\))))) # (\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\)))) ) ) ) # ( \Reg~379_combout\ & ( !\Reg~380_combout\ & ( (!\LeReg2[3]~input_o\ & 
-- ((!\LeReg2[2]~input_o\ & (\Reg~377_combout\)) # (\LeReg2[2]~input_o\ & ((\Reg~378_combout\))))) # (\LeReg2[3]~input_o\ & (((!\LeReg2[2]~input_o\)))) ) ) ) # ( !\Reg~379_combout\ & ( !\Reg~380_combout\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & 
-- (\Reg~377_combout\)) # (\LeReg2[2]~input_o\ & ((\Reg~378_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~377_combout\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_Reg~378_combout\,
	datae => \ALT_INV_Reg~379_combout\,
	dataf => \ALT_INV_Reg~380_combout\,
	combout => \Reg~381_combout\);

-- Location: MLABCELL_X65_Y3_N12
\Reg~383\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~383_combout\ = ( \Reg~234_q\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~106_q\) ) ) ) # ( !\Reg~234_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~106_q\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~234_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & ((\Reg~42_q\))) # (\LeReg2[3]~input_o\ & (\Reg~170_q\)) ) ) ) # ( !\Reg~234_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~42_q\))) # (\LeReg2[3]~input_o\ & (\Reg~170_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~170_q\,
	datab => \ALT_INV_Reg~42_q\,
	datac => \ALT_INV_Reg~106_q\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~234_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~383_combout\);

-- Location: LABCELL_X62_Y3_N0
\Reg~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~382_combout\ = ( \Reg~218_q\ & ( \Reg~26_q\ & ( (!\LeReg2[2]~input_o\ & (((!\LeReg2[3]~input_o\) # (\Reg~154_q\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)) # (\Reg~90_q\))) ) ) ) # ( !\Reg~218_q\ & ( \Reg~26_q\ & ( (!\LeReg2[2]~input_o\ & 
-- (((!\LeReg2[3]~input_o\) # (\Reg~154_q\)))) # (\LeReg2[2]~input_o\ & (\Reg~90_q\ & ((!\LeReg2[3]~input_o\)))) ) ) ) # ( \Reg~218_q\ & ( !\Reg~26_q\ & ( (!\LeReg2[2]~input_o\ & (((\Reg~154_q\ & \LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & 
-- (((\LeReg2[3]~input_o\)) # (\Reg~90_q\))) ) ) ) # ( !\Reg~218_q\ & ( !\Reg~26_q\ & ( (!\LeReg2[2]~input_o\ & (((\Reg~154_q\ & \LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & (\Reg~90_q\ & ((!\LeReg2[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~90_q\,
	datab => \ALT_INV_LeReg2[2]~input_o\,
	datac => \ALT_INV_Reg~154_q\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~218_q\,
	dataf => \ALT_INV_Reg~26_q\,
	combout => \Reg~382_combout\);

-- Location: MLABCELL_X65_Y3_N18
\Reg~384\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~384_combout\ = ( \Reg~250_q\ & ( \Reg~58_q\ & ( (!\LeReg2[2]~input_o\ & (((!\LeReg2[3]~input_o\)) # (\Reg~186_q\))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\) # (\Reg~122_q\)))) ) ) ) # ( !\Reg~250_q\ & ( \Reg~58_q\ & ( (!\LeReg2[2]~input_o\ & 
-- (((!\LeReg2[3]~input_o\)) # (\Reg~186_q\))) # (\LeReg2[2]~input_o\ & (((\Reg~122_q\ & !\LeReg2[3]~input_o\)))) ) ) ) # ( \Reg~250_q\ & ( !\Reg~58_q\ & ( (!\LeReg2[2]~input_o\ & (\Reg~186_q\ & ((\LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & 
-- (((\LeReg2[3]~input_o\) # (\Reg~122_q\)))) ) ) ) # ( !\Reg~250_q\ & ( !\Reg~58_q\ & ( (!\LeReg2[2]~input_o\ & (\Reg~186_q\ & ((\LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & (((\Reg~122_q\ & !\LeReg2[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~186_q\,
	datab => \ALT_INV_LeReg2[2]~input_o\,
	datac => \ALT_INV_Reg~122_q\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~250_q\,
	dataf => \ALT_INV_Reg~58_q\,
	combout => \Reg~384_combout\);

-- Location: LABCELL_X62_Y3_N42
\Reg~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~385_combout\ = ( \Reg~266_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~138_q\) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~266_q\ & ( \LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & \Reg~138_q\) ) ) ) # ( \Reg~266_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & ((\Reg~74_q\))) # (\LeReg2[3]~input_o\ & (\Reg~202_q\)) ) ) ) # ( !\Reg~266_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~74_q\))) # (\LeReg2[3]~input_o\ & (\Reg~202_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~202_q\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_Reg~74_q\,
	datad => \ALT_INV_Reg~138_q\,
	datae => \ALT_INV_Reg~266_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~385_combout\);

-- Location: LABCELL_X63_Y3_N54
\Reg~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~386_combout\ = ( \LeReg2[1]~input_o\ & ( \LeReg2[0]~input_o\ & ( \Reg~385_combout\ ) ) ) # ( !\LeReg2[1]~input_o\ & ( \LeReg2[0]~input_o\ & ( \Reg~383_combout\ ) ) ) # ( \LeReg2[1]~input_o\ & ( !\LeReg2[0]~input_o\ & ( \Reg~384_combout\ ) ) ) # ( 
-- !\LeReg2[1]~input_o\ & ( !\LeReg2[0]~input_o\ & ( \Reg~382_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~383_combout\,
	datab => \ALT_INV_Reg~382_combout\,
	datac => \ALT_INV_Reg~384_combout\,
	datad => \ALT_INV_Reg~385_combout\,
	datae => \ALT_INV_LeReg2[1]~input_o\,
	dataf => \ALT_INV_LeReg2[0]~input_o\,
	combout => \Reg~386_combout\);

-- Location: LABCELL_X66_Y4_N24
\Reg~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~389_combout\ = ( \Reg~203_q\ & ( \Reg~155_q\ & ( (!\LeReg2[1]~input_o\ & (((!\LeReg2[0]~input_o\)) # (\Reg~171_q\))) # (\LeReg2[1]~input_o\ & (((\Reg~187_q\) # (\LeReg2[0]~input_o\)))) ) ) ) # ( !\Reg~203_q\ & ( \Reg~155_q\ & ( (!\LeReg2[1]~input_o\ 
-- & (((!\LeReg2[0]~input_o\)) # (\Reg~171_q\))) # (\LeReg2[1]~input_o\ & (((!\LeReg2[0]~input_o\ & \Reg~187_q\)))) ) ) ) # ( \Reg~203_q\ & ( !\Reg~155_q\ & ( (!\LeReg2[1]~input_o\ & (\Reg~171_q\ & (\LeReg2[0]~input_o\))) # (\LeReg2[1]~input_o\ & 
-- (((\Reg~187_q\) # (\LeReg2[0]~input_o\)))) ) ) ) # ( !\Reg~203_q\ & ( !\Reg~155_q\ & ( (!\LeReg2[1]~input_o\ & (\Reg~171_q\ & (\LeReg2[0]~input_o\))) # (\LeReg2[1]~input_o\ & (((!\LeReg2[0]~input_o\ & \Reg~187_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~171_q\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_LeReg2[0]~input_o\,
	datad => \ALT_INV_Reg~187_q\,
	datae => \ALT_INV_Reg~203_q\,
	dataf => \ALT_INV_Reg~155_q\,
	combout => \Reg~389_combout\);

-- Location: LABCELL_X61_Y3_N0
\Reg~387\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~387_combout\ = ( \Reg~75_q\ & ( \LeReg2[1]~input_o\ & ( (\Reg~59_q\) # (\LeReg2[0]~input_o\) ) ) ) # ( !\Reg~75_q\ & ( \LeReg2[1]~input_o\ & ( (!\LeReg2[0]~input_o\ & \Reg~59_q\) ) ) ) # ( \Reg~75_q\ & ( !\LeReg2[1]~input_o\ & ( (!\LeReg2[0]~input_o\ 
-- & ((\Reg~27_q\))) # (\LeReg2[0]~input_o\ & (\Reg~43_q\)) ) ) ) # ( !\Reg~75_q\ & ( !\LeReg2[1]~input_o\ & ( (!\LeReg2[0]~input_o\ & ((\Reg~27_q\))) # (\LeReg2[0]~input_o\ & (\Reg~43_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_Reg~59_q\,
	datac => \ALT_INV_Reg~43_q\,
	datad => \ALT_INV_Reg~27_q\,
	datae => \ALT_INV_Reg~75_q\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~387_combout\);

-- Location: LABCELL_X66_Y4_N12
\Reg~388\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~388_combout\ = ( \Reg~139_q\ & ( \Reg~91_q\ & ( (!\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\) # (\Reg~123_q\)))) # (\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\)) # (\Reg~107_q\))) ) ) ) # ( !\Reg~139_q\ & ( \Reg~91_q\ & ( (!\LeReg2[0]~input_o\ & 
-- (((!\LeReg2[1]~input_o\) # (\Reg~123_q\)))) # (\LeReg2[0]~input_o\ & (\Reg~107_q\ & ((!\LeReg2[1]~input_o\)))) ) ) ) # ( \Reg~139_q\ & ( !\Reg~91_q\ & ( (!\LeReg2[0]~input_o\ & (((\Reg~123_q\ & \LeReg2[1]~input_o\)))) # (\LeReg2[0]~input_o\ & 
-- (((\LeReg2[1]~input_o\)) # (\Reg~107_q\))) ) ) ) # ( !\Reg~139_q\ & ( !\Reg~91_q\ & ( (!\LeReg2[0]~input_o\ & (((\Reg~123_q\ & \LeReg2[1]~input_o\)))) # (\LeReg2[0]~input_o\ & (\Reg~107_q\ & ((!\LeReg2[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_Reg~107_q\,
	datac => \ALT_INV_Reg~123_q\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_Reg~139_q\,
	dataf => \ALT_INV_Reg~91_q\,
	combout => \Reg~388_combout\);

-- Location: LABCELL_X66_Y3_N12
\Reg~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~390_combout\ = ( \Reg~267_q\ & ( \Reg~219_q\ & ( (!\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\) # (\Reg~251_q\)))) # (\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\)) # (\Reg~235_q\))) ) ) ) # ( !\Reg~267_q\ & ( \Reg~219_q\ & ( (!\LeReg2[0]~input_o\ 
-- & (((!\LeReg2[1]~input_o\) # (\Reg~251_q\)))) # (\LeReg2[0]~input_o\ & (\Reg~235_q\ & (!\LeReg2[1]~input_o\))) ) ) ) # ( \Reg~267_q\ & ( !\Reg~219_q\ & ( (!\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\ & \Reg~251_q\)))) # (\LeReg2[0]~input_o\ & 
-- (((\LeReg2[1]~input_o\)) # (\Reg~235_q\))) ) ) ) # ( !\Reg~267_q\ & ( !\Reg~219_q\ & ( (!\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\ & \Reg~251_q\)))) # (\LeReg2[0]~input_o\ & (\Reg~235_q\ & (!\LeReg2[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_Reg~235_q\,
	datac => \ALT_INV_LeReg2[1]~input_o\,
	datad => \ALT_INV_Reg~251_q\,
	datae => \ALT_INV_Reg~267_q\,
	dataf => \ALT_INV_Reg~219_q\,
	combout => \Reg~390_combout\);

-- Location: LABCELL_X67_Y3_N6
\Reg~391\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~391_combout\ = ( \Reg~390_combout\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~388_combout\) ) ) ) # ( !\Reg~390_combout\ & ( \LeReg2[2]~input_o\ & ( (\Reg~388_combout\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~390_combout\ & ( 
-- !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~387_combout\))) # (\LeReg2[3]~input_o\ & (\Reg~389_combout\)) ) ) ) # ( !\Reg~390_combout\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~387_combout\))) # (\LeReg2[3]~input_o\ & 
-- (\Reg~389_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~389_combout\,
	datab => \ALT_INV_Reg~387_combout\,
	datac => \ALT_INV_Reg~388_combout\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~390_combout\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~391_combout\);

-- Location: LABCELL_X62_Y3_N24
\Reg~395\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~395_combout\ = ( \Reg~268_q\ & ( \Reg~204_q\ & ( ((!\LeReg2[2]~input_o\ & (\Reg~76_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~140_q\)))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~268_q\ & ( \Reg~204_q\ & ( (!\LeReg2[2]~input_o\ & (((\Reg~76_q\)) # 
-- (\LeReg2[3]~input_o\))) # (\LeReg2[2]~input_o\ & (!\LeReg2[3]~input_o\ & ((\Reg~140_q\)))) ) ) ) # ( \Reg~268_q\ & ( !\Reg~204_q\ & ( (!\LeReg2[2]~input_o\ & (!\LeReg2[3]~input_o\ & (\Reg~76_q\))) # (\LeReg2[2]~input_o\ & (((\Reg~140_q\)) # 
-- (\LeReg2[3]~input_o\))) ) ) ) # ( !\Reg~268_q\ & ( !\Reg~204_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~76_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~140_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[2]~input_o\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_Reg~76_q\,
	datad => \ALT_INV_Reg~140_q\,
	datae => \ALT_INV_Reg~268_q\,
	dataf => \ALT_INV_Reg~204_q\,
	combout => \Reg~395_combout\);

-- Location: MLABCELL_X65_Y3_N24
\Reg~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~393_combout\ = ( \Reg~236_q\ & ( \Reg~44_q\ & ( (!\LeReg2[2]~input_o\ & (((!\LeReg2[3]~input_o\) # (\Reg~172_q\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)) # (\Reg~108_q\))) ) ) ) # ( !\Reg~236_q\ & ( \Reg~44_q\ & ( (!\LeReg2[2]~input_o\ & 
-- (((!\LeReg2[3]~input_o\) # (\Reg~172_q\)))) # (\LeReg2[2]~input_o\ & (\Reg~108_q\ & ((!\LeReg2[3]~input_o\)))) ) ) ) # ( \Reg~236_q\ & ( !\Reg~44_q\ & ( (!\LeReg2[2]~input_o\ & (((\Reg~172_q\ & \LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & 
-- (((\LeReg2[3]~input_o\)) # (\Reg~108_q\))) ) ) ) # ( !\Reg~236_q\ & ( !\Reg~44_q\ & ( (!\LeReg2[2]~input_o\ & (((\Reg~172_q\ & \LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & (\Reg~108_q\ & ((!\LeReg2[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[2]~input_o\,
	datab => \ALT_INV_Reg~108_q\,
	datac => \ALT_INV_Reg~172_q\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~236_q\,
	dataf => \ALT_INV_Reg~44_q\,
	combout => \Reg~393_combout\);

-- Location: MLABCELL_X65_Y3_N6
\Reg~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~394_combout\ = ( \Reg~252_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~124_q\) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~252_q\ & ( \LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & \Reg~124_q\) ) ) ) # ( \Reg~252_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & ((\Reg~60_q\))) # (\LeReg2[3]~input_o\ & (\Reg~188_q\)) ) ) ) # ( !\Reg~252_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~60_q\))) # (\LeReg2[3]~input_o\ & (\Reg~188_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~188_q\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_Reg~124_q\,
	datad => \ALT_INV_Reg~60_q\,
	datae => \ALT_INV_Reg~252_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~394_combout\);

-- Location: LABCELL_X62_Y3_N18
\Reg~392\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~392_combout\ = ( \Reg~220_q\ & ( \Reg~156_q\ & ( ((!\LeReg2[2]~input_o\ & (\Reg~28_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~92_q\)))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~220_q\ & ( \Reg~156_q\ & ( (!\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)) # 
-- (\Reg~28_q\))) # (\LeReg2[2]~input_o\ & (((\Reg~92_q\ & !\LeReg2[3]~input_o\)))) ) ) ) # ( \Reg~220_q\ & ( !\Reg~156_q\ & ( (!\LeReg2[2]~input_o\ & (\Reg~28_q\ & ((!\LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\) # (\Reg~92_q\)))) 
-- ) ) ) # ( !\Reg~220_q\ & ( !\Reg~156_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~28_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~92_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~28_q\,
	datab => \ALT_INV_LeReg2[2]~input_o\,
	datac => \ALT_INV_Reg~92_q\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~220_q\,
	dataf => \ALT_INV_Reg~156_q\,
	combout => \Reg~392_combout\);

-- Location: LABCELL_X61_Y3_N54
\Reg~396\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~396_combout\ = ( \Reg~394_combout\ & ( \Reg~392_combout\ & ( (!\LeReg2[0]~input_o\) # ((!\LeReg2[1]~input_o\ & ((\Reg~393_combout\))) # (\LeReg2[1]~input_o\ & (\Reg~395_combout\))) ) ) ) # ( !\Reg~394_combout\ & ( \Reg~392_combout\ & ( 
-- (!\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\)))) # (\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & ((\Reg~393_combout\))) # (\LeReg2[1]~input_o\ & (\Reg~395_combout\)))) ) ) ) # ( \Reg~394_combout\ & ( !\Reg~392_combout\ & ( (!\LeReg2[0]~input_o\ & 
-- (((\LeReg2[1]~input_o\)))) # (\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & ((\Reg~393_combout\))) # (\LeReg2[1]~input_o\ & (\Reg~395_combout\)))) ) ) ) # ( !\Reg~394_combout\ & ( !\Reg~392_combout\ & ( (\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & 
-- ((\Reg~393_combout\))) # (\LeReg2[1]~input_o\ & (\Reg~395_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_Reg~395_combout\,
	datac => \ALT_INV_Reg~393_combout\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_Reg~394_combout\,
	dataf => \ALT_INV_Reg~392_combout\,
	combout => \Reg~396_combout\);

-- Location: LABCELL_X61_Y3_N18
\Reg~398\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~398_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~141_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~125_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~109_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111110000000011001100110011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~141_q\,
	datab => \ALT_INV_Reg~125_q\,
	datac => \ALT_INV_Reg~93_q\,
	datad => \ALT_INV_Reg~109_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~398_combout\);

-- Location: LABCELL_X63_Y5_N24
\Reg~399\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~399_combout\ = ( \Reg~205_q\ & ( \Reg~173_q\ & ( ((!\LeReg2[1]~input_o\ & (\Reg~157_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~189_q\)))) # (\LeReg2[0]~input_o\) ) ) ) # ( !\Reg~205_q\ & ( \Reg~173_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & 
-- (\Reg~157_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~189_q\))))) # (\LeReg2[0]~input_o\ & (!\LeReg2[1]~input_o\)) ) ) ) # ( \Reg~205_q\ & ( !\Reg~173_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & (\Reg~157_q\)) # (\LeReg2[1]~input_o\ & 
-- ((\Reg~189_q\))))) # (\LeReg2[0]~input_o\ & (\LeReg2[1]~input_o\)) ) ) ) # ( !\Reg~205_q\ & ( !\Reg~173_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & (\Reg~157_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~189_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_Reg~157_q\,
	datad => \ALT_INV_Reg~189_q\,
	datae => \ALT_INV_Reg~205_q\,
	dataf => \ALT_INV_Reg~173_q\,
	combout => \Reg~399_combout\);

-- Location: LABCELL_X63_Y4_N6
\Reg~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~397_combout\ = ( \Reg~77_q\ & ( \LeReg2[0]~input_o\ & ( (\LeReg2[1]~input_o\) # (\Reg~45_q\) ) ) ) # ( !\Reg~77_q\ & ( \LeReg2[0]~input_o\ & ( (\Reg~45_q\ & !\LeReg2[1]~input_o\) ) ) ) # ( \Reg~77_q\ & ( !\LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ 
-- & (\Reg~29_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~61_q\))) ) ) ) # ( !\Reg~77_q\ & ( !\LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & (\Reg~29_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~61_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~45_q\,
	datab => \ALT_INV_Reg~29_q\,
	datac => \ALT_INV_LeReg2[1]~input_o\,
	datad => \ALT_INV_Reg~61_q\,
	datae => \ALT_INV_Reg~77_q\,
	dataf => \ALT_INV_LeReg2[0]~input_o\,
	combout => \Reg~397_combout\);

-- Location: LABCELL_X63_Y4_N18
\Reg~400\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~400_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~269_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~253_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~237_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111100001111000011111111000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~221_q\,
	datab => \ALT_INV_Reg~269_q\,
	datac => \ALT_INV_Reg~237_q\,
	datad => \ALT_INV_Reg~253_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~400_combout\);

-- Location: LABCELL_X62_Y4_N30
\Reg~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~401_combout\ = ( \Reg~397_combout\ & ( \Reg~400_combout\ & ( (!\LeReg2[2]~input_o\ & (((!\LeReg2[3]~input_o\) # (\Reg~399_combout\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)) # (\Reg~398_combout\))) ) ) ) # ( !\Reg~397_combout\ & ( 
-- \Reg~400_combout\ & ( (!\LeReg2[2]~input_o\ & (((\Reg~399_combout\ & \LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)) # (\Reg~398_combout\))) ) ) ) # ( \Reg~397_combout\ & ( !\Reg~400_combout\ & ( (!\LeReg2[2]~input_o\ & 
-- (((!\LeReg2[3]~input_o\) # (\Reg~399_combout\)))) # (\LeReg2[2]~input_o\ & (\Reg~398_combout\ & ((!\LeReg2[3]~input_o\)))) ) ) ) # ( !\Reg~397_combout\ & ( !\Reg~400_combout\ & ( (!\LeReg2[2]~input_o\ & (((\Reg~399_combout\ & \LeReg2[3]~input_o\)))) # 
-- (\LeReg2[2]~input_o\ & (\Reg~398_combout\ & ((!\LeReg2[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[2]~input_o\,
	datab => \ALT_INV_Reg~398_combout\,
	datac => \ALT_INV_Reg~399_combout\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~397_combout\,
	dataf => \ALT_INV_Reg~400_combout\,
	combout => \Reg~401_combout\);

-- Location: LABCELL_X63_Y5_N6
\Reg~403\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~403_combout\ = ( \Reg~238_q\ & ( \Reg~174_q\ & ( ((!\LeReg2[2]~input_o\ & ((\Reg~46_q\))) # (\LeReg2[2]~input_o\ & (\Reg~110_q\))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~238_q\ & ( \Reg~174_q\ & ( (!\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\) # 
-- (\Reg~46_q\)))) # (\LeReg2[2]~input_o\ & (\Reg~110_q\ & ((!\LeReg2[3]~input_o\)))) ) ) ) # ( \Reg~238_q\ & ( !\Reg~174_q\ & ( (!\LeReg2[2]~input_o\ & (((\Reg~46_q\ & !\LeReg2[3]~input_o\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)) # 
-- (\Reg~110_q\))) ) ) ) # ( !\Reg~238_q\ & ( !\Reg~174_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & ((\Reg~46_q\))) # (\LeReg2[2]~input_o\ & (\Reg~110_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~110_q\,
	datab => \ALT_INV_LeReg2[2]~input_o\,
	datac => \ALT_INV_Reg~46_q\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~238_q\,
	dataf => \ALT_INV_Reg~174_q\,
	combout => \Reg~403_combout\);

-- Location: LABCELL_X64_Y5_N54
\Reg~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~405_combout\ = ( \Reg~270_q\ & ( \Reg~78_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\) # ((\Reg~142_q\)))) # (\LeReg2[3]~input_o\ & (((\Reg~206_q\)) # (\LeReg2[2]~input_o\))) ) ) ) # ( !\Reg~270_q\ & ( \Reg~78_q\ & ( (!\LeReg2[3]~input_o\ & 
-- ((!\LeReg2[2]~input_o\) # ((\Reg~142_q\)))) # (\LeReg2[3]~input_o\ & (!\LeReg2[2]~input_o\ & ((\Reg~206_q\)))) ) ) ) # ( \Reg~270_q\ & ( !\Reg~78_q\ & ( (!\LeReg2[3]~input_o\ & (\LeReg2[2]~input_o\ & (\Reg~142_q\))) # (\LeReg2[3]~input_o\ & 
-- (((\Reg~206_q\)) # (\LeReg2[2]~input_o\))) ) ) ) # ( !\Reg~270_q\ & ( !\Reg~78_q\ & ( (!\LeReg2[3]~input_o\ & (\LeReg2[2]~input_o\ & (\Reg~142_q\))) # (\LeReg2[3]~input_o\ & (!\LeReg2[2]~input_o\ & ((\Reg~206_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[3]~input_o\,
	datab => \ALT_INV_LeReg2[2]~input_o\,
	datac => \ALT_INV_Reg~142_q\,
	datad => \ALT_INV_Reg~206_q\,
	datae => \ALT_INV_Reg~270_q\,
	dataf => \ALT_INV_Reg~78_q\,
	combout => \Reg~405_combout\);

-- Location: LABCELL_X63_Y4_N0
\Reg~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~404_combout\ = ( \Reg~254_q\ & ( \Reg~190_q\ & ( ((!\LeReg2[2]~input_o\ & (\Reg~62_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~126_q\)))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~254_q\ & ( \Reg~190_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & 
-- (\Reg~62_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~126_q\))))) # (\LeReg2[3]~input_o\ & (((!\LeReg2[2]~input_o\)))) ) ) ) # ( \Reg~254_q\ & ( !\Reg~190_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~62_q\)) # (\LeReg2[2]~input_o\ & 
-- ((\Reg~126_q\))))) # (\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\)))) ) ) ) # ( !\Reg~254_q\ & ( !\Reg~190_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~62_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~126_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~62_q\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_Reg~126_q\,
	datae => \ALT_INV_Reg~254_q\,
	dataf => \ALT_INV_Reg~190_q\,
	combout => \Reg~404_combout\);

-- Location: LABCELL_X64_Y4_N6
\Reg~402\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~402_combout\ = ( \Reg~222_q\ & ( \Reg~158_q\ & ( ((!\LeReg2[2]~input_o\ & (\Reg~30_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~94_q\)))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~222_q\ & ( \Reg~158_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & 
-- (\Reg~30_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~94_q\))))) # (\LeReg2[3]~input_o\ & (((!\LeReg2[2]~input_o\)))) ) ) ) # ( \Reg~222_q\ & ( !\Reg~158_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~30_q\)) # (\LeReg2[2]~input_o\ & 
-- ((\Reg~94_q\))))) # (\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\)))) ) ) ) # ( !\Reg~222_q\ & ( !\Reg~158_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & (\Reg~30_q\)) # (\LeReg2[2]~input_o\ & ((\Reg~94_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~30_q\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_Reg~94_q\,
	datad => \ALT_INV_LeReg2[2]~input_o\,
	datae => \ALT_INV_Reg~222_q\,
	dataf => \ALT_INV_Reg~158_q\,
	combout => \Reg~402_combout\);

-- Location: LABCELL_X64_Y4_N3
\Reg~406\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~406_combout\ = ( \LeReg2[0]~input_o\ & ( \Reg~402_combout\ & ( (!\LeReg2[1]~input_o\ & (\Reg~403_combout\)) # (\LeReg2[1]~input_o\ & ((\Reg~405_combout\))) ) ) ) # ( !\LeReg2[0]~input_o\ & ( \Reg~402_combout\ & ( (!\LeReg2[1]~input_o\) # 
-- (\Reg~404_combout\) ) ) ) # ( \LeReg2[0]~input_o\ & ( !\Reg~402_combout\ & ( (!\LeReg2[1]~input_o\ & (\Reg~403_combout\)) # (\LeReg2[1]~input_o\ & ((\Reg~405_combout\))) ) ) ) # ( !\LeReg2[0]~input_o\ & ( !\Reg~402_combout\ & ( (\Reg~404_combout\ & 
-- \LeReg2[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~403_combout\,
	datab => \ALT_INV_Reg~405_combout\,
	datac => \ALT_INV_Reg~404_combout\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_Reg~402_combout\,
	combout => \Reg~406_combout\);

-- Location: LABCELL_X63_Y4_N12
\Reg~407\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~407_combout\ = ( \Reg~79_q\ & ( \Reg~47_q\ & ( ((!\LeReg2[1]~input_o\ & (\Reg~31_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~63_q\)))) # (\LeReg2[0]~input_o\) ) ) ) # ( !\Reg~79_q\ & ( \Reg~47_q\ & ( (!\LeReg2[1]~input_o\ & (((\Reg~31_q\)) # 
-- (\LeReg2[0]~input_o\))) # (\LeReg2[1]~input_o\ & (!\LeReg2[0]~input_o\ & ((\Reg~63_q\)))) ) ) ) # ( \Reg~79_q\ & ( !\Reg~47_q\ & ( (!\LeReg2[1]~input_o\ & (!\LeReg2[0]~input_o\ & (\Reg~31_q\))) # (\LeReg2[1]~input_o\ & (((\Reg~63_q\)) # 
-- (\LeReg2[0]~input_o\))) ) ) ) # ( !\Reg~79_q\ & ( !\Reg~47_q\ & ( (!\LeReg2[0]~input_o\ & ((!\LeReg2[1]~input_o\ & (\Reg~31_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~63_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[1]~input_o\,
	datab => \ALT_INV_LeReg2[0]~input_o\,
	datac => \ALT_INV_Reg~31_q\,
	datad => \ALT_INV_Reg~63_q\,
	datae => \ALT_INV_Reg~79_q\,
	dataf => \ALT_INV_Reg~47_q\,
	combout => \Reg~407_combout\);

-- Location: LABCELL_X66_Y4_N36
\Reg~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~409_combout\ = ( \Reg~207_q\ & ( \LeReg2[0]~input_o\ & ( (\Reg~175_q\) # (\LeReg2[1]~input_o\) ) ) ) # ( !\Reg~207_q\ & ( \LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & \Reg~175_q\) ) ) ) # ( \Reg~207_q\ & ( !\LeReg2[0]~input_o\ & ( 
-- (!\LeReg2[1]~input_o\ & ((\Reg~159_q\))) # (\LeReg2[1]~input_o\ & (\Reg~191_q\)) ) ) ) # ( !\Reg~207_q\ & ( !\LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & ((\Reg~159_q\))) # (\LeReg2[1]~input_o\ & (\Reg~191_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~191_q\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_Reg~175_q\,
	datad => \ALT_INV_Reg~159_q\,
	datae => \ALT_INV_Reg~207_q\,
	dataf => \ALT_INV_LeReg2[0]~input_o\,
	combout => \Reg~409_combout\);

-- Location: LABCELL_X60_Y4_N0
\Reg~410\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~410_combout\ = ( \Reg~271_q\ & ( \Reg~223_q\ & ( (!\LeReg2[1]~input_o\ & (((!\LeReg2[0]~input_o\) # (\Reg~239_q\)))) # (\LeReg2[1]~input_o\ & (((\LeReg2[0]~input_o\)) # (\Reg~255_q\))) ) ) ) # ( !\Reg~271_q\ & ( \Reg~223_q\ & ( (!\LeReg2[1]~input_o\ 
-- & (((!\LeReg2[0]~input_o\) # (\Reg~239_q\)))) # (\LeReg2[1]~input_o\ & (\Reg~255_q\ & ((!\LeReg2[0]~input_o\)))) ) ) ) # ( \Reg~271_q\ & ( !\Reg~223_q\ & ( (!\LeReg2[1]~input_o\ & (((\Reg~239_q\ & \LeReg2[0]~input_o\)))) # (\LeReg2[1]~input_o\ & 
-- (((\LeReg2[0]~input_o\)) # (\Reg~255_q\))) ) ) ) # ( !\Reg~271_q\ & ( !\Reg~223_q\ & ( (!\LeReg2[1]~input_o\ & (((\Reg~239_q\ & \LeReg2[0]~input_o\)))) # (\LeReg2[1]~input_o\ & (\Reg~255_q\ & ((!\LeReg2[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[1]~input_o\,
	datab => \ALT_INV_Reg~255_q\,
	datac => \ALT_INV_Reg~239_q\,
	datad => \ALT_INV_LeReg2[0]~input_o\,
	datae => \ALT_INV_Reg~271_q\,
	dataf => \ALT_INV_Reg~223_q\,
	combout => \Reg~410_combout\);

-- Location: LABCELL_X66_Y4_N30
\Reg~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~408_combout\ = ( \Reg~143_q\ & ( \Reg~127_q\ & ( ((!\LeReg2[0]~input_o\ & ((\Reg~95_q\))) # (\LeReg2[0]~input_o\ & (\Reg~111_q\))) # (\LeReg2[1]~input_o\) ) ) ) # ( !\Reg~143_q\ & ( \Reg~127_q\ & ( (!\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\) # 
-- (\Reg~95_q\)))) # (\LeReg2[0]~input_o\ & (\Reg~111_q\ & ((!\LeReg2[1]~input_o\)))) ) ) ) # ( \Reg~143_q\ & ( !\Reg~127_q\ & ( (!\LeReg2[0]~input_o\ & (((\Reg~95_q\ & !\LeReg2[1]~input_o\)))) # (\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\)) # 
-- (\Reg~111_q\))) ) ) ) # ( !\Reg~143_q\ & ( !\Reg~127_q\ & ( (!\LeReg2[1]~input_o\ & ((!\LeReg2[0]~input_o\ & ((\Reg~95_q\))) # (\LeReg2[0]~input_o\ & (\Reg~111_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_Reg~111_q\,
	datac => \ALT_INV_Reg~95_q\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_Reg~143_q\,
	dataf => \ALT_INV_Reg~127_q\,
	combout => \Reg~408_combout\);

-- Location: LABCELL_X66_Y4_N21
\Reg~411\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~411_combout\ = ( \Reg~410_combout\ & ( \Reg~408_combout\ & ( ((!\LeReg2[3]~input_o\ & (\Reg~407_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~409_combout\)))) # (\LeReg2[2]~input_o\) ) ) ) # ( !\Reg~410_combout\ & ( \Reg~408_combout\ & ( 
-- (!\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & (\Reg~407_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~409_combout\))))) # (\LeReg2[2]~input_o\ & (!\LeReg2[3]~input_o\)) ) ) ) # ( \Reg~410_combout\ & ( !\Reg~408_combout\ & ( (!\LeReg2[2]~input_o\ & 
-- ((!\LeReg2[3]~input_o\ & (\Reg~407_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~409_combout\))))) # (\LeReg2[2]~input_o\ & (\LeReg2[3]~input_o\)) ) ) ) # ( !\Reg~410_combout\ & ( !\Reg~408_combout\ & ( (!\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & 
-- (\Reg~407_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~409_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[2]~input_o\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_Reg~407_combout\,
	datad => \ALT_INV_Reg~409_combout\,
	datae => \ALT_INV_Reg~410_combout\,
	dataf => \ALT_INV_Reg~408_combout\,
	combout => \Reg~411_combout\);

-- Location: LABCELL_X60_Y4_N48
\Reg~415\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~415_combout\ = ( \Reg~272_q\ & ( \Reg~208_q\ & ( ((!\LeReg2[2]~input_o\ & ((\Reg~80_q\))) # (\LeReg2[2]~input_o\ & (\Reg~144_q\))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~272_q\ & ( \Reg~208_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & 
-- ((\Reg~80_q\))) # (\LeReg2[2]~input_o\ & (\Reg~144_q\)))) # (\LeReg2[3]~input_o\ & (((!\LeReg2[2]~input_o\)))) ) ) ) # ( \Reg~272_q\ & ( !\Reg~208_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & ((\Reg~80_q\))) # (\LeReg2[2]~input_o\ & 
-- (\Reg~144_q\)))) # (\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\)))) ) ) ) # ( !\Reg~272_q\ & ( !\Reg~208_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & ((\Reg~80_q\))) # (\LeReg2[2]~input_o\ & (\Reg~144_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[3]~input_o\,
	datab => \ALT_INV_Reg~144_q\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_Reg~80_q\,
	datae => \ALT_INV_Reg~272_q\,
	dataf => \ALT_INV_Reg~208_q\,
	combout => \Reg~415_combout\);

-- Location: LABCELL_X67_Y3_N18
\Reg~414\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~414_combout\ = ( \Reg~256_q\ & ( \Reg~128_q\ & ( ((!\LeReg2[3]~input_o\ & ((\Reg~64_q\))) # (\LeReg2[3]~input_o\ & (\Reg~192_q\))) # (\LeReg2[2]~input_o\) ) ) ) # ( !\Reg~256_q\ & ( \Reg~128_q\ & ( (!\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & 
-- ((\Reg~64_q\))) # (\LeReg2[3]~input_o\ & (\Reg~192_q\)))) # (\LeReg2[2]~input_o\ & (((!\LeReg2[3]~input_o\)))) ) ) ) # ( \Reg~256_q\ & ( !\Reg~128_q\ & ( (!\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & ((\Reg~64_q\))) # (\LeReg2[3]~input_o\ & 
-- (\Reg~192_q\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)))) ) ) ) # ( !\Reg~256_q\ & ( !\Reg~128_q\ & ( (!\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & ((\Reg~64_q\))) # (\LeReg2[3]~input_o\ & (\Reg~192_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~192_q\,
	datab => \ALT_INV_Reg~64_q\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~256_q\,
	dataf => \ALT_INV_Reg~128_q\,
	combout => \Reg~414_combout\);

-- Location: LABCELL_X60_Y4_N6
\Reg~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~413_combout\ = ( \Reg~240_q\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~112_q\) ) ) ) # ( !\Reg~240_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~112_q\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~240_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & ((\Reg~48_q\))) # (\LeReg2[3]~input_o\ & (\Reg~176_q\)) ) ) ) # ( !\Reg~240_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~48_q\))) # (\LeReg2[3]~input_o\ & (\Reg~176_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~176_q\,
	datab => \ALT_INV_Reg~112_q\,
	datac => \ALT_INV_LeReg2[3]~input_o\,
	datad => \ALT_INV_Reg~48_q\,
	datae => \ALT_INV_Reg~240_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~413_combout\);

-- Location: LABCELL_X64_Y4_N24
\Reg~412\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~412_combout\ = ( \Reg~224_q\ & ( \Reg~160_q\ & ( ((!\LeReg2[2]~input_o\ & ((\Reg~32_q\))) # (\LeReg2[2]~input_o\ & (\Reg~96_q\))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~224_q\ & ( \Reg~160_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & 
-- ((\Reg~32_q\))) # (\LeReg2[2]~input_o\ & (\Reg~96_q\)))) # (\LeReg2[3]~input_o\ & (((!\LeReg2[2]~input_o\)))) ) ) ) # ( \Reg~224_q\ & ( !\Reg~160_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & ((\Reg~32_q\))) # (\LeReg2[2]~input_o\ & 
-- (\Reg~96_q\)))) # (\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\)))) ) ) ) # ( !\Reg~224_q\ & ( !\Reg~160_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & ((\Reg~32_q\))) # (\LeReg2[2]~input_o\ & (\Reg~96_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~96_q\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_Reg~32_q\,
	datae => \ALT_INV_Reg~224_q\,
	dataf => \ALT_INV_Reg~160_q\,
	combout => \Reg~412_combout\);

-- Location: LABCELL_X64_Y4_N51
\Reg~416\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~416_combout\ = ( \LeReg2[1]~input_o\ & ( \Reg~412_combout\ & ( (!\LeReg2[0]~input_o\ & ((\Reg~414_combout\))) # (\LeReg2[0]~input_o\ & (\Reg~415_combout\)) ) ) ) # ( !\LeReg2[1]~input_o\ & ( \Reg~412_combout\ & ( (!\LeReg2[0]~input_o\) # 
-- (\Reg~413_combout\) ) ) ) # ( \LeReg2[1]~input_o\ & ( !\Reg~412_combout\ & ( (!\LeReg2[0]~input_o\ & ((\Reg~414_combout\))) # (\LeReg2[0]~input_o\ & (\Reg~415_combout\)) ) ) ) # ( !\LeReg2[1]~input_o\ & ( !\Reg~412_combout\ & ( (\Reg~413_combout\ & 
-- \LeReg2[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~415_combout\,
	datab => \ALT_INV_Reg~414_combout\,
	datac => \ALT_INV_Reg~413_combout\,
	datad => \ALT_INV_LeReg2[0]~input_o\,
	datae => \ALT_INV_LeReg2[1]~input_o\,
	dataf => \ALT_INV_Reg~412_combout\,
	combout => \Reg~416_combout\);

-- Location: MLABCELL_X65_Y5_N54
\Reg~418\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~418_combout\ = ( \Reg~145_q\ & ( \Reg~129_q\ & ( ((!\LeReg2[0]~input_o\ & (\Reg~97_q\)) # (\LeReg2[0]~input_o\ & ((\Reg~113_q\)))) # (\LeReg2[1]~input_o\) ) ) ) # ( !\Reg~145_q\ & ( \Reg~129_q\ & ( (!\LeReg2[1]~input_o\ & ((!\LeReg2[0]~input_o\ & 
-- (\Reg~97_q\)) # (\LeReg2[0]~input_o\ & ((\Reg~113_q\))))) # (\LeReg2[1]~input_o\ & (((!\LeReg2[0]~input_o\)))) ) ) ) # ( \Reg~145_q\ & ( !\Reg~129_q\ & ( (!\LeReg2[1]~input_o\ & ((!\LeReg2[0]~input_o\ & (\Reg~97_q\)) # (\LeReg2[0]~input_o\ & 
-- ((\Reg~113_q\))))) # (\LeReg2[1]~input_o\ & (((\LeReg2[0]~input_o\)))) ) ) ) # ( !\Reg~145_q\ & ( !\Reg~129_q\ & ( (!\LeReg2[1]~input_o\ & ((!\LeReg2[0]~input_o\ & (\Reg~97_q\)) # (\LeReg2[0]~input_o\ & ((\Reg~113_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~97_q\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_LeReg2[0]~input_o\,
	datad => \ALT_INV_Reg~113_q\,
	datae => \ALT_INV_Reg~145_q\,
	dataf => \ALT_INV_Reg~129_q\,
	combout => \Reg~418_combout\);

-- Location: LABCELL_X62_Y4_N45
\Reg~420\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~420_combout\ = ( \LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~273_q\ ) ) ) # ( !\LeReg2[0]~input_o\ & ( \LeReg2[1]~input_o\ & ( !\Reg~257_q\ ) ) ) # ( \LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~241_q\ ) ) ) # ( 
-- !\LeReg2[0]~input_o\ & ( !\LeReg2[1]~input_o\ & ( !\Reg~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111110000000011001100110011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~273_q\,
	datab => \ALT_INV_Reg~257_q\,
	datac => \ALT_INV_Reg~225_q\,
	datad => \ALT_INV_Reg~241_q\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~420_combout\);

-- Location: LABCELL_X62_Y4_N3
\Reg~419\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~419_combout\ = ( \Reg~161_q\ & ( \Reg~209_q\ & ( (!\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\ & !\Reg~193_q\)))) # (\LeReg2[0]~input_o\ & (!\Reg~177_q\ & (!\LeReg2[1]~input_o\))) ) ) ) # ( !\Reg~161_q\ & ( \Reg~209_q\ & ( (!\LeReg2[0]~input_o\ & 
-- (((!\LeReg2[1]~input_o\) # (!\Reg~193_q\)))) # (\LeReg2[0]~input_o\ & (!\Reg~177_q\ & (!\LeReg2[1]~input_o\))) ) ) ) # ( \Reg~161_q\ & ( !\Reg~209_q\ & ( (!\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\ & !\Reg~193_q\)))) # (\LeReg2[0]~input_o\ & 
-- ((!\Reg~177_q\) # ((\LeReg2[1]~input_o\)))) ) ) ) # ( !\Reg~161_q\ & ( !\Reg~209_q\ & ( (!\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\) # (!\Reg~193_q\)))) # (\LeReg2[0]~input_o\ & ((!\Reg~177_q\) # ((\LeReg2[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111100101010011110100010111101010111000000100101001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_Reg~177_q\,
	datac => \ALT_INV_LeReg2[1]~input_o\,
	datad => \ALT_INV_Reg~193_q\,
	datae => \ALT_INV_Reg~161_q\,
	dataf => \ALT_INV_Reg~209_q\,
	combout => \Reg~419_combout\);

-- Location: LABCELL_X62_Y4_N18
\Reg~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~417_combout\ = ( \Reg~81_q\ & ( \LeReg2[0]~input_o\ & ( (\LeReg2[1]~input_o\) # (\Reg~49_q\) ) ) ) # ( !\Reg~81_q\ & ( \LeReg2[0]~input_o\ & ( (\Reg~49_q\ & !\LeReg2[1]~input_o\) ) ) ) # ( \Reg~81_q\ & ( !\LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ 
-- & (\Reg~33_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~65_q\))) ) ) ) # ( !\Reg~81_q\ & ( !\LeReg2[0]~input_o\ & ( (!\LeReg2[1]~input_o\ & (\Reg~33_q\)) # (\LeReg2[1]~input_o\ & ((\Reg~65_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~33_q\,
	datab => \ALT_INV_Reg~65_q\,
	datac => \ALT_INV_Reg~49_q\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_Reg~81_q\,
	dataf => \ALT_INV_LeReg2[0]~input_o\,
	combout => \Reg~417_combout\);

-- Location: LABCELL_X62_Y4_N6
\Reg~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~421_combout\ = ( \Reg~417_combout\ & ( \LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & (\Reg~418_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~420_combout\))) ) ) ) # ( !\Reg~417_combout\ & ( \LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & 
-- (\Reg~418_combout\)) # (\LeReg2[3]~input_o\ & ((\Reg~420_combout\))) ) ) ) # ( \Reg~417_combout\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\) # (\Reg~419_combout\) ) ) ) # ( !\Reg~417_combout\ & ( !\LeReg2[2]~input_o\ & ( (\Reg~419_combout\ & 
-- \LeReg2[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~418_combout\,
	datab => \ALT_INV_Reg~420_combout\,
	datac => \ALT_INV_Reg~419_combout\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~417_combout\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~421_combout\);

-- Location: MLABCELL_X65_Y3_N48
\Reg~423\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~423_combout\ = ( \Reg~242_q\ & ( \Reg~178_q\ & ( ((!\LeReg2[2]~input_o\ & ((\Reg~50_q\))) # (\LeReg2[2]~input_o\ & (\Reg~114_q\))) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~242_q\ & ( \Reg~178_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & 
-- ((\Reg~50_q\))) # (\LeReg2[2]~input_o\ & (\Reg~114_q\)))) # (\LeReg2[3]~input_o\ & (((!\LeReg2[2]~input_o\)))) ) ) ) # ( \Reg~242_q\ & ( !\Reg~178_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & ((\Reg~50_q\))) # (\LeReg2[2]~input_o\ & 
-- (\Reg~114_q\)))) # (\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\)))) ) ) ) # ( !\Reg~242_q\ & ( !\Reg~178_q\ & ( (!\LeReg2[3]~input_o\ & ((!\LeReg2[2]~input_o\ & ((\Reg~50_q\))) # (\LeReg2[2]~input_o\ & (\Reg~114_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~114_q\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_Reg~50_q\,
	datad => \ALT_INV_LeReg2[2]~input_o\,
	datae => \ALT_INV_Reg~242_q\,
	dataf => \ALT_INV_Reg~178_q\,
	combout => \Reg~423_combout\);

-- Location: LABCELL_X62_Y3_N12
\Reg~422\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~422_combout\ = ( \Reg~226_q\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~98_q\) ) ) ) # ( !\Reg~226_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~98_q\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~226_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & ((\Reg~34_q\))) # (\LeReg2[3]~input_o\ & (\Reg~162_q\)) ) ) ) # ( !\Reg~226_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~34_q\))) # (\LeReg2[3]~input_o\ & (\Reg~162_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~162_q\,
	datab => \ALT_INV_Reg~98_q\,
	datac => \ALT_INV_Reg~34_q\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~226_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~422_combout\);

-- Location: MLABCELL_X65_Y4_N24
\Reg~424\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~424_combout\ = ( \Reg~258_q\ & ( \Reg~130_q\ & ( ((!\LeReg2[3]~input_o\ & ((\Reg~66_q\))) # (\LeReg2[3]~input_o\ & (\Reg~194_q\))) # (\LeReg2[2]~input_o\) ) ) ) # ( !\Reg~258_q\ & ( \Reg~130_q\ & ( (!\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & 
-- ((\Reg~66_q\))) # (\LeReg2[3]~input_o\ & (\Reg~194_q\)))) # (\LeReg2[2]~input_o\ & (((!\LeReg2[3]~input_o\)))) ) ) ) # ( \Reg~258_q\ & ( !\Reg~130_q\ & ( (!\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & ((\Reg~66_q\))) # (\LeReg2[3]~input_o\ & 
-- (\Reg~194_q\)))) # (\LeReg2[2]~input_o\ & (((\LeReg2[3]~input_o\)))) ) ) ) # ( !\Reg~258_q\ & ( !\Reg~130_q\ & ( (!\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & ((\Reg~66_q\))) # (\LeReg2[3]~input_o\ & (\Reg~194_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~194_q\,
	datab => \ALT_INV_Reg~66_q\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~258_q\,
	dataf => \ALT_INV_Reg~130_q\,
	combout => \Reg~424_combout\);

-- Location: LABCELL_X62_Y3_N48
\Reg~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~425_combout\ = ( \Reg~274_q\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~146_q\) ) ) ) # ( !\Reg~274_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~146_q\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~274_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & ((\Reg~82_q\))) # (\LeReg2[3]~input_o\ & (\Reg~210_q\)) ) ) ) # ( !\Reg~274_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~82_q\))) # (\LeReg2[3]~input_o\ & (\Reg~210_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~146_q\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_Reg~210_q\,
	datad => \ALT_INV_Reg~82_q\,
	datae => \ALT_INV_Reg~274_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~425_combout\);

-- Location: LABCELL_X62_Y3_N57
\Reg~426\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~426_combout\ = ( \LeReg2[0]~input_o\ & ( \Reg~425_combout\ & ( (\LeReg2[1]~input_o\) # (\Reg~423_combout\) ) ) ) # ( !\LeReg2[0]~input_o\ & ( \Reg~425_combout\ & ( (!\LeReg2[1]~input_o\ & (\Reg~422_combout\)) # (\LeReg2[1]~input_o\ & 
-- ((\Reg~424_combout\))) ) ) ) # ( \LeReg2[0]~input_o\ & ( !\Reg~425_combout\ & ( (\Reg~423_combout\ & !\LeReg2[1]~input_o\) ) ) ) # ( !\LeReg2[0]~input_o\ & ( !\Reg~425_combout\ & ( (!\LeReg2[1]~input_o\ & (\Reg~422_combout\)) # (\LeReg2[1]~input_o\ & 
-- ((\Reg~424_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~423_combout\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_Reg~422_combout\,
	datad => \ALT_INV_Reg~424_combout\,
	datae => \ALT_INV_LeReg2[0]~input_o\,
	dataf => \ALT_INV_Reg~425_combout\,
	combout => \Reg~426_combout\);

-- Location: LABCELL_X61_Y4_N54
\Reg~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~429_combout\ = ( \Reg~211_q\ & ( \LeReg2[1]~input_o\ & ( (\LeReg2[0]~input_o\) # (\Reg~195_q\) ) ) ) # ( !\Reg~211_q\ & ( \LeReg2[1]~input_o\ & ( (\Reg~195_q\ & !\LeReg2[0]~input_o\) ) ) ) # ( \Reg~211_q\ & ( !\LeReg2[1]~input_o\ & ( 
-- (!\LeReg2[0]~input_o\ & (\Reg~163_q\)) # (\LeReg2[0]~input_o\ & ((\Reg~179_q\))) ) ) ) # ( !\Reg~211_q\ & ( !\LeReg2[1]~input_o\ & ( (!\LeReg2[0]~input_o\ & (\Reg~163_q\)) # (\LeReg2[0]~input_o\ & ((\Reg~179_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~195_q\,
	datab => \ALT_INV_Reg~163_q\,
	datac => \ALT_INV_LeReg2[0]~input_o\,
	datad => \ALT_INV_Reg~179_q\,
	datae => \ALT_INV_Reg~211_q\,
	dataf => \ALT_INV_LeReg2[1]~input_o\,
	combout => \Reg~429_combout\);

-- Location: LABCELL_X62_Y4_N24
\Reg~427\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~427_combout\ = ( \Reg~83_q\ & ( \Reg~67_q\ & ( ((!\LeReg2[0]~input_o\ & (\Reg~35_q\)) # (\LeReg2[0]~input_o\ & ((\Reg~51_q\)))) # (\LeReg2[1]~input_o\) ) ) ) # ( !\Reg~83_q\ & ( \Reg~67_q\ & ( (!\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\)) # 
-- (\Reg~35_q\))) # (\LeReg2[0]~input_o\ & (((\Reg~51_q\ & !\LeReg2[1]~input_o\)))) ) ) ) # ( \Reg~83_q\ & ( !\Reg~67_q\ & ( (!\LeReg2[0]~input_o\ & (\Reg~35_q\ & ((!\LeReg2[1]~input_o\)))) # (\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\) # (\Reg~51_q\)))) ) 
-- ) ) # ( !\Reg~83_q\ & ( !\Reg~67_q\ & ( (!\LeReg2[1]~input_o\ & ((!\LeReg2[0]~input_o\ & (\Reg~35_q\)) # (\LeReg2[0]~input_o\ & ((\Reg~51_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~35_q\,
	datab => \ALT_INV_LeReg2[0]~input_o\,
	datac => \ALT_INV_Reg~51_q\,
	datad => \ALT_INV_LeReg2[1]~input_o\,
	datae => \ALT_INV_Reg~83_q\,
	dataf => \ALT_INV_Reg~67_q\,
	combout => \Reg~427_combout\);

-- Location: LABCELL_X62_Y5_N48
\Reg~428\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~428_combout\ = ( \Reg~147_q\ & ( \Reg~131_q\ & ( ((!\LeReg2[0]~input_o\ & ((\Reg~99_q\))) # (\LeReg2[0]~input_o\ & (\Reg~115_q\))) # (\LeReg2[1]~input_o\) ) ) ) # ( !\Reg~147_q\ & ( \Reg~131_q\ & ( (!\LeReg2[1]~input_o\ & ((!\LeReg2[0]~input_o\ & 
-- ((\Reg~99_q\))) # (\LeReg2[0]~input_o\ & (\Reg~115_q\)))) # (\LeReg2[1]~input_o\ & (((!\LeReg2[0]~input_o\)))) ) ) ) # ( \Reg~147_q\ & ( !\Reg~131_q\ & ( (!\LeReg2[1]~input_o\ & ((!\LeReg2[0]~input_o\ & ((\Reg~99_q\))) # (\LeReg2[0]~input_o\ & 
-- (\Reg~115_q\)))) # (\LeReg2[1]~input_o\ & (((\LeReg2[0]~input_o\)))) ) ) ) # ( !\Reg~147_q\ & ( !\Reg~131_q\ & ( (!\LeReg2[1]~input_o\ & ((!\LeReg2[0]~input_o\ & ((\Reg~99_q\))) # (\LeReg2[0]~input_o\ & (\Reg~115_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~115_q\,
	datab => \ALT_INV_LeReg2[1]~input_o\,
	datac => \ALT_INV_LeReg2[0]~input_o\,
	datad => \ALT_INV_Reg~99_q\,
	datae => \ALT_INV_Reg~147_q\,
	dataf => \ALT_INV_Reg~131_q\,
	combout => \Reg~428_combout\);

-- Location: LABCELL_X66_Y3_N24
\Reg~430\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~430_combout\ = ( \Reg~275_q\ & ( \Reg~227_q\ & ( (!\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\) # (\Reg~259_q\)))) # (\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\)) # (\Reg~243_q\))) ) ) ) # ( !\Reg~275_q\ & ( \Reg~227_q\ & ( (!\LeReg2[0]~input_o\ 
-- & (((!\LeReg2[1]~input_o\) # (\Reg~259_q\)))) # (\LeReg2[0]~input_o\ & (\Reg~243_q\ & (!\LeReg2[1]~input_o\))) ) ) ) # ( \Reg~275_q\ & ( !\Reg~227_q\ & ( (!\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\ & \Reg~259_q\)))) # (\LeReg2[0]~input_o\ & 
-- (((\LeReg2[1]~input_o\)) # (\Reg~243_q\))) ) ) ) # ( !\Reg~275_q\ & ( !\Reg~227_q\ & ( (!\LeReg2[0]~input_o\ & (((\LeReg2[1]~input_o\ & \Reg~259_q\)))) # (\LeReg2[0]~input_o\ & (\Reg~243_q\ & (!\LeReg2[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_Reg~243_q\,
	datac => \ALT_INV_LeReg2[1]~input_o\,
	datad => \ALT_INV_Reg~259_q\,
	datae => \ALT_INV_Reg~275_q\,
	dataf => \ALT_INV_Reg~227_q\,
	combout => \Reg~430_combout\);

-- Location: LABCELL_X62_Y4_N48
\Reg~431\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~431_combout\ = ( \Reg~430_combout\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~428_combout\) ) ) ) # ( !\Reg~430_combout\ & ( \LeReg2[2]~input_o\ & ( (\Reg~428_combout\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~430_combout\ & ( 
-- !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~427_combout\))) # (\LeReg2[3]~input_o\ & (\Reg~429_combout\)) ) ) ) # ( !\Reg~430_combout\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & ((\Reg~427_combout\))) # (\LeReg2[3]~input_o\ & 
-- (\Reg~429_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~429_combout\,
	datab => \ALT_INV_Reg~427_combout\,
	datac => \ALT_INV_Reg~428_combout\,
	datad => \ALT_INV_LeReg2[3]~input_o\,
	datae => \ALT_INV_Reg~430_combout\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~431_combout\);

-- Location: MLABCELL_X65_Y4_N18
\Reg~434\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~434_combout\ = ( \Reg~260_q\ & ( \Reg~132_q\ & ( ((!\LeReg2[3]~input_o\ & (\Reg~68_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~196_q\)))) # (\LeReg2[2]~input_o\) ) ) ) # ( !\Reg~260_q\ & ( \Reg~132_q\ & ( (!\LeReg2[3]~input_o\ & (((\LeReg2[2]~input_o\)) # 
-- (\Reg~68_q\))) # (\LeReg2[3]~input_o\ & (((!\LeReg2[2]~input_o\ & \Reg~196_q\)))) ) ) ) # ( \Reg~260_q\ & ( !\Reg~132_q\ & ( (!\LeReg2[3]~input_o\ & (\Reg~68_q\ & (!\LeReg2[2]~input_o\))) # (\LeReg2[3]~input_o\ & (((\Reg~196_q\) # (\LeReg2[2]~input_o\)))) 
-- ) ) ) # ( !\Reg~260_q\ & ( !\Reg~132_q\ & ( (!\LeReg2[2]~input_o\ & ((!\LeReg2[3]~input_o\ & (\Reg~68_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~196_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~68_q\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_LeReg2[2]~input_o\,
	datad => \ALT_INV_Reg~196_q\,
	datae => \ALT_INV_Reg~260_q\,
	dataf => \ALT_INV_Reg~132_q\,
	combout => \Reg~434_combout\);

-- Location: LABCELL_X60_Y4_N24
\Reg~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~433_combout\ = ( \Reg~244_q\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~116_q\) ) ) ) # ( !\Reg~244_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~116_q\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~244_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & (\Reg~52_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~180_q\))) ) ) ) # ( !\Reg~244_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & (\Reg~52_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~180_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~116_q\,
	datab => \ALT_INV_LeReg2[3]~input_o\,
	datac => \ALT_INV_Reg~52_q\,
	datad => \ALT_INV_Reg~180_q\,
	datae => \ALT_INV_Reg~244_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~433_combout\);

-- Location: LABCELL_X60_Y4_N36
\Reg~435\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~435_combout\ = ( \Reg~276_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~148_q\) # (\LeReg2[3]~input_o\) ) ) ) # ( !\Reg~276_q\ & ( \LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & \Reg~148_q\) ) ) ) # ( \Reg~276_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & (\Reg~84_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~212_q\))) ) ) ) # ( !\Reg~276_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & (\Reg~84_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~212_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~84_q\,
	datab => \ALT_INV_Reg~212_q\,
	datac => \ALT_INV_LeReg2[3]~input_o\,
	datad => \ALT_INV_Reg~148_q\,
	datae => \ALT_INV_Reg~276_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~435_combout\);

-- Location: LABCELL_X67_Y4_N18
\Reg~432\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~432_combout\ = ( \Reg~228_q\ & ( \LeReg2[2]~input_o\ & ( (\LeReg2[3]~input_o\) # (\Reg~100_q\) ) ) ) # ( !\Reg~228_q\ & ( \LeReg2[2]~input_o\ & ( (\Reg~100_q\ & !\LeReg2[3]~input_o\) ) ) ) # ( \Reg~228_q\ & ( !\LeReg2[2]~input_o\ & ( 
-- (!\LeReg2[3]~input_o\ & (\Reg~36_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~164_q\))) ) ) ) # ( !\Reg~228_q\ & ( !\LeReg2[2]~input_o\ & ( (!\LeReg2[3]~input_o\ & (\Reg~36_q\)) # (\LeReg2[3]~input_o\ & ((\Reg~164_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reg~36_q\,
	datab => \ALT_INV_Reg~100_q\,
	datac => \ALT_INV_LeReg2[3]~input_o\,
	datad => \ALT_INV_Reg~164_q\,
	datae => \ALT_INV_Reg~228_q\,
	dataf => \ALT_INV_LeReg2[2]~input_o\,
	combout => \Reg~432_combout\);

-- Location: LABCELL_X66_Y4_N57
\Reg~436\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg~436_combout\ = ( \Reg~435_combout\ & ( \Reg~432_combout\ & ( (!\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\)) # (\Reg~434_combout\))) # (\LeReg2[0]~input_o\ & (((\Reg~433_combout\) # (\LeReg2[1]~input_o\)))) ) ) ) # ( !\Reg~435_combout\ & ( 
-- \Reg~432_combout\ & ( (!\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\)) # (\Reg~434_combout\))) # (\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\ & \Reg~433_combout\)))) ) ) ) # ( \Reg~435_combout\ & ( !\Reg~432_combout\ & ( (!\LeReg2[0]~input_o\ & 
-- (\Reg~434_combout\ & (\LeReg2[1]~input_o\))) # (\LeReg2[0]~input_o\ & (((\Reg~433_combout\) # (\LeReg2[1]~input_o\)))) ) ) ) # ( !\Reg~435_combout\ & ( !\Reg~432_combout\ & ( (!\LeReg2[0]~input_o\ & (\Reg~434_combout\ & (\LeReg2[1]~input_o\))) # 
-- (\LeReg2[0]~input_o\ & (((!\LeReg2[1]~input_o\ & \Reg~433_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LeReg2[0]~input_o\,
	datab => \ALT_INV_Reg~434_combout\,
	datac => \ALT_INV_LeReg2[1]~input_o\,
	datad => \ALT_INV_Reg~433_combout\,
	datae => \ALT_INV_Reg~435_combout\,
	dataf => \ALT_INV_Reg~432_combout\,
	combout => \Reg~436_combout\);

-- Location: LABCELL_X45_Y45_N0
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


