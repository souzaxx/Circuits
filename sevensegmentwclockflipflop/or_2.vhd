ENTITY or_2 IS
	PORT(a,b: IN bit; output: OUT bit);
END or_2;

ARCHITECTURE data_flow OF or_2 IS
BEGIN
	output <= a OR b;
END data_flow;