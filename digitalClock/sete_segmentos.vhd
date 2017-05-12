library ieee;
use ieee.std_logic_1164.all;

ENTITY sete_segmentos IS
	PORT(	ABCD:			IN std_logic_vector(3 downto 0);
			habilita:	IN std_logic;
			abcdefg:		OUT std_logic_vector(6 downto 0));
END sete_segmentos;

ARCHITECTURE structural of sete_segmentos IS

	COMPONENT not1 PORT(a: 				IN std_logic; output: OUT std_logic); END COMPONENT;
	COMPONENT or2 	PORT(a,b: 			IN std_logic; output: OUT std_logic); END COMPONENT;
	COMPONENT or3 	PORT(a,b,c: 		IN std_logic; output: OUT std_logic); END COMPONENT;
	COMPONENT or4 	PORT(a,b,c,d: 		IN std_logic; output: OUT std_logic); END COMPONENT;
	COMPONENT or5 	PORT(a,b,c,d,e: 	IN std_logic; output: OUT std_logic); END COMPONENT;
	COMPONENT and2 PORT(a,b: 			IN std_logic; output: OUT std_logic); END COMPONENT;
	COMPONENT and3 PORT(a,b,c: 		IN std_logic; output: OUT std_logic); END COMPONENT;

	FOR ALL: or2 	USE ENTITY work.or_2		(data_flow);
	FOR ALL: or3 	USE ENTITY work.or_3		(data_flow);
	FOR ALL: or4 	USE ENTITY work.or_4		(data_flow);
	FOR ALL: or5 	USE ENTITY work.or_5		(data_flow);
	FOR ALL: and2 	USE ENTITY work.and_2	(data_flow);
	FOR ALL: and3 	USE ENTITY work.and_3	(data_flow);
	FOR ALL: not1 	USE ENTITY work.not_1	(data_flow);
	
	SIGNAL 	nA,nB,nC,nD,
				and1,and_2,and_3,and4,and5,and6,and7,and8,and9,and10,and11,
				and12,and13,and14,and15,and16,
				ya,yb,yc,yd,ye,yf,yg: std_logic;
	
	BEGIN
		C1: 	not1 PORT MAP (ABCD(3),nA);
		C2: 	not1 PORT MAP (ABCD(2),nB);
		C3: 	not1 PORT MAP (ABCD(1),nC);
		C4: 	not1 PORT MAP (ABCD(0),nD);
		C5: 	and2 PORT MAP (ABCD(2),ABCD(0),and1);
		C6: 	and2 PORT MAP (nB,nD,and_2);
		C7: 	and2 PORT MAP (nC,nD,and_3);
		C8: 	and2 PORT MAP (ABCD(1),ABCD(0),and4);
		C9: 	and2 PORT MAP (ABCD(1),nD,and5);
		C10:	and2 PORT MAP (ABCD(1),nB,and6);
		C11: 	and2 PORT MAP (nB,nD,and7);
		C12: 	and3 PORT MAP (ABCD(2),nC,ABCD(0),and8);
		C13: 	and2 PORT MAP (nB,nD,and9);
		C14: 	and2 PORT MAP (ABCD(1),nD,and10);
		C15: 	and2 PORT MAP (nC,nD,and11);
		C16: 	and2 PORT MAP (ABCD(2),nC,and12);
		C17: 	and2 PORT MAP (ABCD(2),nD,and13);
		C18: 	and2 PORT MAP (ABCD(1),nD,and14);
		C19: 	and2 PORT MAP (ABCD(2),nC,and15);
		C20: 	and2 PORT MAP (nB,ABCD(1),and16);
		C21:	or4  PORT MAP (ABCD(3),ABCD(1),and1,and_2,ya);
		C22:  or3  PORT MAP (nB,and_3,and4,yb);
		C23:  or3  PORT MAP (ABCD(2),nC,ABCD(0),yc);
		C24:  or5  PORT MAP (ABCD(3),and5,and6,and7,and8,yd);
		C25:	or2  PORT MAP (and9,and10,ye);
		C26:	or4  PORT MAP (ABCD(3),and11,and12,and13,yf);
		C27:	or4  PORT MAP (ABCD(3),and14,and15,and16,yg);
		C28:  and2 PORT MAP (habilita, ya, abcdefg(6));
		C29:  and2 PORT MAP (habilita, yb, abcdefg(5));
		C30:  and2 PORT MAP (habilita, yc, abcdefg(4));
		C31:  and2 PORT MAP (habilita, yd, abcdefg(3));
		C32:  and2 PORT MAP (habilita, ye, abcdefg(2));
		C33:  and2 PORT MAP (habilita, yf, abcdefg(1));
		C34:  and2 PORT MAP (habilita, yg, abcdefg(0));
		
		
	END structural;