ENTITY somador_4b_so_somadores IS
	PORT(x,y:		IN BIT_vector(3 downto 0);
		  habilita,Cin: IN BIT;
		  S:			OUT BIT_vector(3 downto 0);
		  cout:		OUT BIT);
END somador_4b_so_somadores;

ARCHITECTURE structural OF somador_4b_so_somadores IS
	COMPONENT somador_1bit 			PORT(habilita,Cin,x,y: 	IN bit; cout,S: OUT bit); 	END COMPONENT;
	
	FOR ALL: somador_1bit 		USE ENTITY work.somador_1bit	(structural);
	
	SIGNAL cout1,cout2,cout3: BIT;
	
	BEGIN
	C1: somador_1bit 			PORT MAP (habilita,Cin	,x(0),y(0),cout1,S(0));
	C2: somador_1bit 			PORT MAP (habilita,cout1,x(1),y(1),cout2,S(1));
	C3: somador_1bit 			PORT MAP (habilita,cout2,x(2),y(2),cout3,S(2));
	C4: somador_1bit 			PORT MAP (habilita,cout3,x(3),y(3),cout ,S(3));
	END structural;