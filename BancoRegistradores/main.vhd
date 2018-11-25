library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
end main;

architecture tb of main is

component BancoRegistradores
	port(
	 Clock : in std_logic;
	 EscReg: in std_logic;							  -- flag da unidade de controle
		RegA: out std_logic_vector (15 downto 0);
		RegB: out std_logic_vector (15 downto 0); 
	   Data: in std_logic_vector (15 downto 0); -- Dado a ser escrito
	 RegDst: in std_logic_vector (3 downto 0);  -- Registrador de destino
	 LeReg1: in std_logic_vector (3 downto 0);  -- Endereço do resgistrador 1
	 LeReg2: in std_logic_vector (3 downto 0)   -- Endereço do resgistrador 2
	);
end component;

signal teste_flag_esc_reg: std_logic;
signal teste_reg_dst: std_logic_vector(3 downto 0);
signal teste_dado_esc: std_logic_vector(15 downto 0);
signal teste_reg_a: std_logic_vector(15 downto 0);
signal teste_reg_b: std_logic_vector(15 downto 0);
signal teste_end_reg_a : std_logic_vector(3 downto 0);
signal teste_end_reg_b : std_logic_vector(3 downto 0);
signal clock_test: std_logic;

begin
	clock_test <= '1';
	
	teste_reg_dst <= "0000";
	teste_dado_esc <= "0000000000000001";
	teste_end_reg_a <= "0000";
	teste_end_reg_b <= "0000";
	
	RegFile: BancoRegistradores port map(clock_test,
													teste_flag_esc_reg,
													teste_reg_a, 
													teste_reg_b, 
													teste_dado_esc,
													teste_reg_dst, 
													teste_end_reg_a, 
													teste_end_reg_b
													);	
	process
		begin
			teste_flag_esc_reg <= '0';
			--wait for 5 ns;
			teste_flag_esc_reg <= '1';
			--wait for 5 ns;
	end process;
end tb;