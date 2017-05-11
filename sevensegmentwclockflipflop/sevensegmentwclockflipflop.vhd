library ieee;
use ieee.std_logic_1164.all;

ENTITY sevensegmentwclockflipflop IS
	PORT (clock,habilita:				 IN	std_logic;
			reset: 						 INOUT 	std_logic;
			abcdefg:							OUT 	std_logic_vector(6 downto 0));
END sevensegmentwclockflipflop;

ARCHITECTURE structural OF sevensegmentwclockflipflop IS 

	COMPONENT zeroAnove PORT(	ABCD: 	IN 	std_logic_vector(3 downto 0);
										reset:	INOUT	std_logic	); END COMPONENT;
										
	COMPONENT counterFFD PORT( clock: 				IN 		std_logic;
										reset: 				IN 		std_logic;
										wxyz: 				INOUT 	std_logic_vector(3 downto 0);
										Cout:					OUT 		std_logic); END COMPONENT;
										
	COMPONENT sete_segmentos PORT(	ABCD:			IN std_logic_vector(3 downto 0);
												habilita:	IN std_logic;
												abcdefg:		OUT std_logic_vector(6 downto 0)); END COMPONENT;
	
	FOR ALL: zeroAnove USE ENTITY work.zeroAnove(structural);
	FOR ALL: counterFFD USE ENTITY work.counterFFD(structural);
	FOR ALL: sete_segmentos USE ENTITY work.sete_segmentos(structural);
	
	--SIGNAL reset: std_logic;
	SIGNAL Cout: std_logic;
	SIGNAL abcd: std_logic_vector(3 downto 0);
	
	BEGIN
	
	counter: 	counterFFD 		PORT MAP (clock,reset,abcd,Cout);
	reseter: 	zeroAnove		PORT MAP (abcd,reset);
	display:		sete_segmentos	PORT MAP (abcd,habilita,abcdefg);
	
END structural;