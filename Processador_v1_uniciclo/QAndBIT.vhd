Library ieee;
use ieee.std_logic_1164.all;

ENTITY QAndBIT is 
PORT(
	clk: in std_logic;
	E1, E2 : IN STD_LOGIC;
	S1 : OUT STD_LOGIC
);
END QAndBIT;

ARCHITECTURE behavior of QandBIT is
begin
process(clk)
	BEGIN
		IF (clk = '1' AND clk'EVENT) THEN
			S1 <= E1 and E2;
		end if;
end process;
	
END behavior;