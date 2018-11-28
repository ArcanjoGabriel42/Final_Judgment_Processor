library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY memram IS
PORT
(
	entrada : in UNSIGNED (15 DOWNTO 0);
	saida : out UNSIGNED (15 DOWNTO 0);
	endereco : in UNSIGNED (7 DOWNTO 0);
	escrita,funcionando : in std_logic);
end memram;

ARCHITECTURE behavior OF memram IS
	TYPE arranjo is array (0 to 65535) OF UNSIGNED (15 DOWNTO 0);
	SIGNAL memoria:arranjo;
BEGIN
	process(funcionando,endereco)
	BEGIN	
		IF rising_edge(funcionando) THEN
			IF escrita = '0' THEN memoria(to_integer(endereco)) <= entrada;
				END IF;
			END IF;
		END PROCESS;
	saida <= memoria(to_integer(endereco));
end behavior;
		