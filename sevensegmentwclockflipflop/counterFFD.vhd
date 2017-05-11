library ieee;
use ieee.std_logic_1164.all;

ENTITY counterFFD IS
	PORT( clock: 				IN 		std_logic;
			reset: 				IN			std_logic;
			habilita: 			IN			std_logic;
			wxyz: 				INOUT	 	std_logic_vector(3 downto 0);
			Cout:					OUT 		std_logic);
END counterFFD;

ARCHITECTURE structural OF counterFFD IS

	COMPONENT unidadeContadora PORT( clock: 				IN 		std_logic;
												reset: 				IN			std_logic;
												habilita: 			IN			std_logic;
												Q: 					INOUT	 	std_logic;
												Qn: 					INOUT	 	std_logic;
												Cout:					OUT 		std_logic); END COMPONENT;
				
	FOR ALL: unidadeContadora 	USE ENTITY work.unidadeContadora(structural);

	SIGNAL Qn_null: std_logic_vector(3 downto 0);
	SIGNAL aux1, aux2, aux3: std_logic;
	
BEGIN
			UNIDADE1: unidadeContadora PORT MAP (clock,reset,habilita,wxyz(0),Qn_null(0),aux1);
			UNIDADE2: unidadeContadora PORT MAP (clock,reset,aux1,wxyz(1),Qn_null(1),aux2);
			UNIDADE3: unidadeContadora PORT MAP (clock,reset,aux2,wxyz(2),Qn_null(2),aux3);
			UNIDADE4: unidadeContadora PORT MAP (clock,reset,aux3,wxyz(3),Qn_null(3),Cout);		
END structural;