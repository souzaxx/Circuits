library ieee;
use ieee.std_logic_1164.all;

ENTITY counterFFD IS
	PORT( clock: 				IN 	std_logic;
			habilita,reset: 	IN 	std_logic;
			wxyz: 				OUT 	std_logic_vector(3 downto 0);
			Cout:					OUT 	std_logic);
END counterFFD;

ARCHITECTURE structural OF counterFFD IS

	COMPONENT FlipFlopD PORT (clock,D: IN std_logic;Q,nQ: OUT std_logic); END COMPONENT;
	
	FOR ALL: FlipFlopD USE ENTITY work.FlipFlopD(structural);
	
	SIGNAL A,X,wxyz_reg,Qn_reg: std_logic_vector(3 downto 0);
	
BEGIN
	PROCESS(clock,reset,A,X,wxyz_reg) BEGIN
		IF reset='1' THEN
			wxyz_reg	<= "0000";
			A			<= "0000";
			X			<= "0000";
		ELSIF clock'event and clock='1' THEN
			X(0) <= wxyz_reg(0) XOR habilita;
			A(0) <= habilita AND wxyz_reg(0);

			X(1) <= wxyz_reg(1) XOR habilita;
			A(1) <= A(0) AND wxyz_reg(1);
		
			X(2) <= wxyz_reg(2) XOR habilita;
			A(2) <= A(1) AND wxyz_reg(2);
		
			X(3) <= wxyz_reg(3) XOR habilita;
			Cout <= A(2) AND wxyz_reg(3);
		END IF;	
	END PROCESS;
		
		FFD1: FlipFlopD PORT MAP (clock,X(0),wxyz_reg(0),Qn_reg(0));
		FFD2: FlipFlopD PORT MAP (clock,X(1),wxyz_reg(1),Qn_reg(1));
		FFD3: FlipFlopD PORT MAP (clock,X(2),wxyz_reg(2),Qn_reg(2));
		FFD4: FlipFlopD PORT MAP (clock,X(3),wxyz_reg(3),Qn_reg(3));
		out1: wxyz <= wxyz_reg;
		
END structural;