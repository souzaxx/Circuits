library ieee;
use ieee.std_logic_1164.all;

ENTITY counterFFD IS
	PORT( clock: 				IN 	std_logic;
			habilita,reset: 	IN 	std_logic;
			wxyz: 				OUT 	std_logic_vector(3 downto 0);
			Cout:					OUT 	std_logic);
END counterFFD;

ARCHITECTURE structural OF counterFFD IS

	COMPONENT FlipFlopD PORT(clock,D: IN std_logic;Q,nQ: OUT std_logic); END COMPONENT;
	
	FOR ALL: FlipFlopD USE ENTITY work.FlipFlopD(structural);
	
	SIGNAL A,X,wxyz_reg: std_logic_vector(3 downto 0);
	
BEGIN
	PROCESS(clock,reset,A,X) BEGIN
		IF reset='1' THEN
			wxyz_reg	<= "0000";
			A			<= "0000";
			X			<= "0000";
		ELSE 
			X(0) <= wxyz_reg(0) XOR habilita;
			A(0) <= habilita AND wxyz_reg(0);

			X(1) <= wxyz_reg(1) XOR habilita;
			A(1) <= A(0) AND wxyz_reg(1);
		
			X(2) <= wxyz_reg(2) XOR habilita;
			A(2) <= A(1) AND wxyz_reg(2);
		
			X(3) <= wxyz_reg(3) XOR habilita;
			Cout <= A(2) AND wxyz_reg(3);
			
			wxyz <= wxyz_reg;
		END IF;	
		
			FFD1: FlipFlopD(clock,X(0),wxyz(0),null);
			FFD2: FlipFlopD(clock,X(1),wxyz(1),null);
			FFD3: FlipFlopD(clock,X(2),wxyz(2),null);
			FFD4: FlipFlopD(clock,X(3),wxyz(3),null);
		
	END PROCESS;
		
END structural;