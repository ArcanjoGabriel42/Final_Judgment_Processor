LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DataPath IS
	PORT
	(
				--Clock Geral do Sistema--
				
		Clock_Sistema:               in  std_logic;
		
		-------------------------------------------------------------

		Instruction_to_writeRegister:	out std_logic_vector(2  downto 0);
		Instruction_to_Control:   	   out std_logic_vector(3  downto 0);
		Instruction_to_register1:   	out std_logic_vector(2  downto 0);
		Instruction_to_register2:   	out std_logic_vector(2  downto 0);
		Instruction_to_controlULA:   	out std_logic_vector(2  downto 0);
		Instruction_to_is_BEQ:   	   out std_logic_vector(5  downto 0);
		Instruction_to_Jump:			  	out std_logic_vector(11 downto 0);
		
				--Saída Geral da ROM--
				
		Instruct_out:                	out std_logic_vector(15 downto 0)
	);
END DataPath;


ARCHITECTURE behavior OF DataPath IS

	COMPONENT PC IS
		PORT
		(
			--ativo : IN STD_LOGIC;
			clk :  IN  STD_LOGIC;
			pin :  IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
			pout : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
			
		);
	END COMPONENT;

	COMPONENT SomadorPC IS
		PORT
		(
			entrada : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
			saida : 	 out STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT memoria_ROM2 is 
		PORT
		(
			clk: 		IN  STD_LOGIC;
			entrada: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			rom_out: out std_logic_vector(15 downto 0);
			op : 		OUT STD_LOGIC_VECTOR(3  DOWNTO 0);
			rd : 		OUT STD_LOGIC_VECTOR(2  DOWNTO 0);
			rt : 		OUT STD_LOGIC_VECTOR(2  DOWNTO 0);
			rs : 		OUT STD_LOGIC_VECTOR(2  DOWNTO 0);
			funct : 	OUT STD_LOGIC_VECTOR(2  DOWNTO 0);
			tipoi : 	OUT STD_LOGIC_VECTOR(5  DOWNTO 0);
			jump : 	out STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL SomadorToPc      : std_logic_vector(15 downto 0);
	SIGNAL SaidaPc          : std_logic_vector(15 downto 0);


BEGIN

		--BI = BUSCA DE INSTRUÇÃO--
		
G1: PC           port map (Clock_Sistema, SomadorToPc, SaidaPc);
G2: SomadorPC    port map (SaidaPc, SomadorToPc);
G3: memoria_ROM2 port map (Clock_Sistema, SaidaPc, Instruct_out, Instruction_to_Control, Instruction_to_register1, Instruction_to_register2, 
								  Instruction_to_writeRegister,Instruction_to_controlULA, Instruction_to_is_BEQ, Instruction_to_Jump);

END behavior;
