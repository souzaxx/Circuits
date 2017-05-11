library ieee;
use ieee.std_logic_1164.all;

ENTITY counterFFD IS
	PORT( clock: 				IN 		std_logic;
			reset: 				IN			std_logic;
			wxyz: 				INOUT	 	std_logic_vector(3 downto 0);
			Cout:					OUT 		std_logic);
END counterFFD;

ARCHITECTURE structural OF counterFFD IS

	COMPONENT FlipFlopD PORT (D,clock,reset: IN std_logic;Q,nQ: INOUT std_logic); END COMPONENT;
	
	FOR ALL: FlipFlopD USE ENTITY work.FlipFlopD(structural);

	SIGNAL Qn_reg: std_logic_vector(3 downto 0);
	signal a,b,c,d,e,f,g,h,i,j : std_logic;
	
BEGIN
			a	<=	not wxyz(0);
			FFD1: FlipFlopD PORT MAP (a,clock,reset,wxyz(0),Qn_reg(0));
			b	<=(wxyz(0) xor wxyz(1));
			FFD2: FlipFlopD PORT MAP (b,clock,reset,wxyz(1),Qn_reg(1));
			c	<= wxyz(0) and wxyz(1)and Qn_reg(2);
			d	<= Qn_reg(0) or Qn_reg(1);
			e	<= wxyz(2) and d ;
			j	<= c or e;
			FFD3: FlipFlopD PORT MAP (j,clock,reset,wxyz(2),Qn_reg(2));
			f	<= Qn_reg(0) or Qn_reg(1) or Qn_reg(2);
			g	<= f and wxyz(3);
			h	<= wxyz(0) and wxyz(1) and wxyz(2) and Qn_reg(3);
			i	<=g or h;
			FFD4: FlipFlopD PORT MAP (i,clock,reset,wxyz(3),Qn_reg(3));
			
END structural;