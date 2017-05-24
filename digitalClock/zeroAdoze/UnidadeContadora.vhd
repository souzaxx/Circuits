library ieee;
use ieee.std_logic_1164.all;

ENTITY unidadeContadora IS
	PORT( clock: 				IN 		std_logic;
			reset: 				IN			std_logic;
			habilita: 			IN			std_logic;
			Q: 					INOUT	 	std_logic;
			Qn: 					INOUT	 	std_logic;
			Cout:					OUT 		std_logic);
END UnidadeContadora;

ARCHITECTURE structural OF unidadeContadora IS

	COMPONENT FlipFlopD PORT (D,clock,reset: IN std_logic;Q,nQ: INOUT std_logic); END COMPONENT;
	
	FOR ALL: FlipFlopD USE ENTITY work.FlipFlopD(structural);

	signal XOR0,AND0 : std_logic;
	
BEGIN
			XOR0	<=		Q XOR habilita;
			Cout	<=		Q AND habilita;
			FFD1: FlipFlopD PORT MAP (XOR0,clock,reset,Q,Qn);
			
END structural;