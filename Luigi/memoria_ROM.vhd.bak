Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY memoria_ROM is 
PORT(
	clk: IN STD_LOGIC;
	entrada: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	saida: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rd : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rt : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rs : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	funct : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	jump : out STD_LOGIC_VECTOR(12 DOWNTO 0);
);
END memoria_ROM;

ARCHITECTURE behavior OF memoria_ROM IS

TYPE matriz IS ARRAY(0 TO 65535) OF STD_LOGIC_VECTOR(15 downto 0);
SIGNAL ROM : matriz := ("0101010101010101", "1010101010101010", 
								"0011001100110011", "1100110011001100", OTHERS => "0000000000000000");

BEGIN
	PROCESS (clk) BEGIN
		IF (clk = '1' AND clk'EVENT) THEN
			saida <= ROM(conv_integer(entrada));
		END IF;
	END PROCESS;
END behavior;