library ieee;
use ieee.std_logic_1164.all;

ENTITY FlipFlopD IS
	PORT( clock,D: IN 	std_logic;
			Q,nQ: 	OUT 	std_logic);
END FlipFlopD;

ARCHITECTURE structural OF FlipFlopD IS
	signal N: std_logic_vector(5 downto 0);
BEGIN
	N(0) 	<=	N(1) NAND N(3);
	N(1) 	<=	N(0) NAND clock;
	N(2) 	<= not(N(1) AND clock AND N(3));
	N(3) 	<= N(2) NAND d;
	N(4) 	<= N(1) NAND N(5);
	N(5) 	<= N(2) NAND N(4);
	Q		<=	N(4);	
END structural;