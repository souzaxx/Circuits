ENTITY somador_8bits IS
	PORT(x,y:		IN BIT_vector(7 downto 0);
		  habilita: IN BIT;
		  S:			OUT BIT_vector(7 downto 0);
		  cout:		OUT BIT);
END somador_8bits;

ARCHITECTURE structural OF somador_8bits IS
	COMPONENT somador4bits_meio 				PORT(	x,y:			IN BIT_vector(3 downto 0);
														habilita: 		IN BIT;
														S:					OUT BIT_vector(3 downto 0);
														cout:				OUT BIT); END COMPONENT;
	COMPONENT somador4bits_completo	PORT(x,y:			IN BIT_vector(3 downto 0);
														habilita,Cin: 	IN BIT;
														S:					OUT BIT_vector(3 downto 0);
														cout:				OUT BIT); END COMPONENT;
	
	FOR ALL: somador4bits_meio 		USE ENTITY work.Somador4bits 	(structural);
	FOR ALL: somador4bits_completo 	USE ENTITY work.somador_4b_so_somadores	(structural);
	
	SIGNAL out1: BIT;
	
	BEGIN
	C1: somador4bits_meio 		PORT MAP (	x(3 downto 0), y(3 downto 0), habilita,
														S(3 downto 0), out1 );
	C2: somador4bits_completo 	PORT MAP (	x(7 downto 4), y(7 downto 4), habilita, out1,
														S(7 downto 4), cout );
	END structural;