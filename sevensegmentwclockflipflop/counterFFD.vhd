library ieee;
use ieee.std_logic_1164.all;

ENTITY counterFFD IS
	PORT( clock: 				IN 		std_logic;
			habilita:			IN 		std_logic;
			reset: 				INOUT		std_logic;
			wxyz: 				OUT	 	std_logic_vector(3 downto 0);
			Cout:					OUT 		std_logic);
END counterFFD;

ARCHITECTURE structural OF counterFFD IS

	COMPONENT FlipFlopD PORT (clock,D: IN std_logic;Q,nQ: OUT std_logic); END COMPONENT;
	
	FOR ALL: FlipFlopD USE ENTITY work.FlipFlopD(structural);
	
	SIGNAL A,wxyz_reg,WXYZ_FFD,Qn_reg: std_logic_vector(3 downto 0);
	--SIGNAL wxyz_reg: BUFFER STD_logic;
	--SIGNAL W,X,Y,Z: std_logic;
	
BEGIN

	FFD1: FlipFlopD PORT MAP (clock,WXYZ_FFD(0),wxyz(0),Qn_reg(0));
	FFD2: FlipFlopD PORT MAP (clock,WXYZ_FFD(1),wxyz(1),Qn_reg(1));
	FFD3: FlipFlopD PORT MAP (clock,WXYZ_FFD(2),wxyz(2),Qn_reg(2));
	FFD4: FlipFlopD PORT MAP (clock,WXYZ_FFD(3),wxyz(3),Qn_reg(3));

	PROCESS(clock,reset) BEGIN
		IF clock'event and clock='1' THEN
			IF reset='1' THEN
				wxyz_reg	<= "0000";
				WXYZ_FFD	<= "0000";
				A			<= "0000";
				reset		<= '0';
			ELSE
				WXYZ_FFD(0)	<= wxyz_reg(0) XOR habilita;
				A(0) 		<= habilita AND wxyz_reg(0);

				WXYZ_FFD(1)	<= wxyz_reg(1) XOR habilita;
				A(1) 		<= A(0) AND wxyz_reg(1);
			
				WXYZ_FFD(2)	<= wxyz_reg(2) XOR habilita;
				A(2) 		<= A(1) AND wxyz_reg(2);
			
				WXYZ_FFD(3)	<= wxyz_reg(3) XOR habilita;
				Cout 		<= A(2) AND wxyz_reg(3);
			END IF;
		END IF;	
	END PROCESS;
		
END structural;