library ieee;
use ieee.std_logic_1164.all;

ENTITY zeroAdoze IS
	PORT (clock,habilita:				IN			std_logic;
			abcdefgFor1,abcdefgFor2:	OUT 		std_logic_vector(6 downto 0));
END zeroAdoze;

ARCHITECTURE structural OF zeroAdoze IS 

	COMPONENT resetador PORT(	ABCD,Value_set: 	IN 	std_logic_vector(3 downto 0);
										reset,Cout:				INOUT	std_logic	);
										END COMPONENT;
										
	COMPONENT counterFFD PORT( clock: 				IN 		std_logic;
										reset: 				IN 		std_logic;
										habilita: 			IN			std_logic;
										wxyz: 				INOUT 	std_logic_vector(3 downto 0);
										Cout:					OUT 		std_logic);
										END COMPONENT;
										
	COMPONENT sete_segmentos PORT(ABCD:				IN std_logic_vector(3 downto 0);
											habilita:		IN std_logic;
											abcdefg:			OUT std_logic_vector(6 downto 0));
											END COMPONENT;
									
	COMPONENT MUXDOZE 		PORT( wxyz: 			INOUT	 	std_logic_vector(3 downto 0);
											wxyz1,wxyz2: 	OUT	 	std_logic_vector(3 downto 0));
											END COMPONENT;
	
	FOR ALL: resetador 		USE ENTITY work.resetador(structural);
	FOR ALL: counterFFD 		USE ENTITY work.counterFFD(structural);
	FOR ALL: sete_segmentos USE ENTITY work.sete_segmentos(structural);
	FOR ALL: MUXDOZE 			USE ENTITY work.MUXDOZE(structural);
	
	SIGNAL abcd,abcd1,abcd2: std_logic_vector(3 downto 0);
	SIGNAL reset: std_logic;
	
	BEGIN
	
	counter: 	counterFFD 		PORT MAP (clock,reset,habilita,abcd);
	reseter: 	resetador		PORT MAP (abcd,"1101",reset);
	mux:			MUXDOZE			PORT MAP (abcd,abcd1,abcd2); 
	display1:		sete_segmentos	PORT MAP (abcd1,habilita,abcdefgFor1);
	display2:		sete_segmentos	PORT MAP (abcd2,habilita,abcdefgFor2);
END structural;