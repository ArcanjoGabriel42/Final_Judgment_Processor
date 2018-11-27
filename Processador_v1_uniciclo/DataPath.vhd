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
		
		--------Saidas da Memoria de instrução-----------------------
		Instruction_to_multiplexador:	 inout  std_logic_vector(2  downto 0);
		Instruction_to_Control:   	    inout  std_logic_vector(3  downto 0);
		Instruction_to_register1:   	 inout  std_logic_vector(2  downto 0);
		Instruction_to_register2:   	 inout  std_logic_vector(2  downto 0);
		Instruction_to_controlULA:   	 inout  std_logic_vector(2  downto 0);
		Instruction_to_is_BEQ:   	    inout  std_logic_vector(5  downto 0);
		Instruction_to_Jump:			  	 inout  std_logic_vector(11 downto 0);
		--------------------------------------------------------------
		
		---------Saída Geral da ROM-----------------------------------
		Instruct_out:                	 out   std_logic_vector(15 downto 0);
		--------------------------------------------------------------
		
		--------Saída do Multiplexador1-------------------------------
		multiplexador_to_writeRegister:inout std_logic_vector(2  downto 0);
		--------------------------------------------------------------
		
		--------Dados Para o Banco De Registradores--------------------
		Data_to_writeRegister: 			in     std_logic_vector(15 downto 0);
		--------------------------------------------------------------
		
		-------- Flags da Unidade de controle-------------------------
		Flag_regdest:					   inout  std_logic;
		Flag_origialu:						inout  std_logic;
		Flag_memparareg:					inout  std_logic;
		Flag_escrevereg:					inout  std_logic;
		Flag_lemem:							inout  std_logic;
		Flag_escrevemem:					inout  std_logic;
		Flag_branch: 						inout  std_logic;
		Flag_aluop1: 	  					inout  std_logic;
		Flag_aluop0: 	 					inout  std_logic
		---------------------------------------------------------------
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

	COMPONENT memoria_ROM2 IS 
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

	COMPONENT Multiplexador2x1 IS
		PORT( 
		SIGNAL A,B  : IN   STD_LOGIC_VECTOR(2 DOWNTO 0);
		SIGNAL S	   : IN   STD_LOGIC;
		SIGNAL SAIDA: OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
		) ;
END COMPONENT;
	
	COMPONENT UnidadedeControle IS
		PORT(
			 entrada : 		in std_logic_vector (3 DOWNTO 0);
			 regdest : 		out std_logic; 
			 origalu : 		out std_logic; 
			 memparareg : 	out std_logic;	
			 escrevereg :  out std_logic;	
			 lemem : 		out std_logic;	
			 escrevemem :  out std_logic;	
			 branch : 		out std_logic;	
			 aluop1 :      out std_logic;
			 aluop0 : 		out std_logic	
			);
END COMPONENT;

	COMPONENT BancoRegistradores IS
		PORT(
			Clock:  in std_logic;
			EscReg: in std_logic; 							 -- Sinal da unidade de controle
			RegA:   out std_logic_vector (15 downto 0);
		   RegB:   out std_logic_vector (15 downto 0); 
		   Data:   in std_logic_vector (15 downto 0); -- Dado a ser escrito
			RegDst: in std_logic_vector (2 downto 0);  -- Registrador de destino
			LeReg1: in std_logic_vector (2 downto 0);  -- Endereço do resgistrador 1
			LeReg2: in std_logic_vector (2 downto 0)   -- Endereço do resgistrador 2
		);
END COMPONENT;
		
	
	SIGNAL SomadorToPc      :  std_logic_vector(15 downto 0);
	SIGNAL SaidaPc          :  std_logic_vector(15 downto 0);
	SIGNAL SaidaRegA        :  std_logic_vector(15 downto 0);
	SIGNAL SaidaRegB        :  std_logic_vector(15 downto 0);


BEGIN

		--BI = BUSCA DE INSTRUÇÃO--
		
G1: PC           		  port map (Clock_Sistema, SomadorToPc, SaidaPc);
G2: SomadorPC    		  port map (SaidaPc, SomadorToPc);
G3: memoria_ROM2 		  port map (Clock_Sistema, SaidaPc, Instruct_out, Instruction_to_Control, Instruction_to_register1, Instruction_to_register2, 
										   Instruction_to_multiplexador,Instruction_to_controlULA, Instruction_to_is_BEQ, Instruction_to_Jump);
G4: UnidadedeControle  port map (Instruction_to_Control, Flag_regdest, Flag_origialu, Flag_memparareg, Flag_escrevereg, Flag_lemem, Flag_escrevemem,
										   Flag_branch, Flag_aluop1, Flag_aluop0);								 
G5: Multiplexador2x1   port map (Instruction_to_register2,Instruction_to_multiplexador,Flag_regdest,multiplexador_to_writeRegister);
G6: BancoRegistradores port map (Clock_Sistema, Flag_escrevereg, SaidaRegA,SaidaRegB,Data_to_writeRegister, multiplexador_to_writeRegister,
											Instruction_to_register1, Instruction_to_register2);
END behavior;
