library ieee;
use ieee.std_logic_1164.all;

ENTITY FlipFlopD IS
		PORT( clock,D: IN 	std_logic;
				Q,nQ: 	OUT 	std_logic);
END FlipFlopD;

ARCHITECTURE structural OF FlipFlopD IS
	signal N: std_logic_vector(5 downto 0);
BEGIN
	process(clock) begin
		IF clock'event and clock='1' THEN
			Q <= D;
		END IF;	
	END PROCESS;
END structural;