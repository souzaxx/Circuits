ENTITY zeroAnove IS
	PORT(	abcd: 		IN 	std_logic_vector(3 downto 0);
			reset:		OUT	BIT);
END zeroAnove;

ARCHITECTURE structural OF counterFFD IS
	BEGIN
		PROCESS(abcd,reset) BEGIN
			IF abcd >= "9" THEN
				reset <= "1";
			ELSE
				reset <= "0";
		END IF;
	END PROCESS;
END structural;