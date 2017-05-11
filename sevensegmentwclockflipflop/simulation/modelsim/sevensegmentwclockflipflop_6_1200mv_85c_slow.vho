-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "05/11/2017 09:19:19"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sevensegmentwclockflipflop IS
    PORT (
	clock : IN std_logic;
	habilita : IN std_logic;
	reset : BUFFER std_logic;
	abcdefg : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END sevensegmentwclockflipflop;

-- Design Ports Information
-- abcdefg[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sevensegmentwclockflipflop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_habilita : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_abcdefg : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~output_o\ : std_logic;
SIGNAL \abcdefg[0]~output_o\ : std_logic;
SIGNAL \abcdefg[1]~output_o\ : std_logic;
SIGNAL \abcdefg[2]~output_o\ : std_logic;
SIGNAL \abcdefg[3]~output_o\ : std_logic;
SIGNAL \abcdefg[4]~output_o\ : std_logic;
SIGNAL \abcdefg[5]~output_o\ : std_logic;
SIGNAL \abcdefg[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \counter|UNIDADE1|XOR0~combout\ : std_logic;
SIGNAL \counter|UNIDADE1|FFD1|Q~reg0_q\ : std_logic;
SIGNAL \counter|UNIDADE2|XOR0~combout\ : std_logic;
SIGNAL \counter|UNIDADE2|FFD1|Q~reg0_q\ : std_logic;
SIGNAL \counter|UNIDADE3|XOR0~combout\ : std_logic;
SIGNAL \counter|UNIDADE3|FFD1|Q~reg0_q\ : std_logic;
SIGNAL \counter|UNIDADE3|Cout~combout\ : std_logic;
SIGNAL \counter|UNIDADE4|XOR0~combout\ : std_logic;
SIGNAL \counter|UNIDADE4|FFD1|Q~reg0_q\ : std_logic;
SIGNAL \reseter|process_0~0_combout\ : std_logic;
SIGNAL \display|C34|output~0_combout\ : std_logic;
SIGNAL \display|C34|output~1_combout\ : std_logic;
SIGNAL \display|C33|output~0_combout\ : std_logic;
SIGNAL \display|C33|output~1_combout\ : std_logic;
SIGNAL \display|C32|output~0_combout\ : std_logic;
SIGNAL \display|C31|output~0_combout\ : std_logic;
SIGNAL \display|C31|output~1_combout\ : std_logic;
SIGNAL \display|C30|output~0_combout\ : std_logic;
SIGNAL \display|C29|output~0_combout\ : std_logic;
SIGNAL \display|C28|output~0_combout\ : std_logic;
SIGNAL \display|C28|output~1_combout\ : std_logic;
SIGNAL \reseter|ALT_INV_process_0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_habilita <= habilita;
reset <= ww_reset;
abcdefg <= ww_abcdefg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\reseter|ALT_INV_process_0~0_combout\ <= NOT \reseter|process_0~0_combout\;

-- Location: IOOBUF_X20_Y0_N9
\reset~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reseter|ALT_INV_process_0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \reset~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\abcdefg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|C34|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefg[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\abcdefg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|C33|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefg[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\abcdefg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|C32|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\abcdefg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|C31|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefg[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\abcdefg[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|C30|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\abcdefg[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|C29|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\abcdefg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|C28|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefg[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X26_Y0_N8
\habilita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: LCCOMB_X24_Y1_N18
\counter|UNIDADE1|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE1|XOR0~combout\ = \counter|UNIDADE1|FFD1|Q~reg0_q\ $ (\habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \counter|UNIDADE1|XOR0~combout\);

-- Location: FF_X24_Y1_N19
\counter|UNIDADE1|FFD1|Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter|UNIDADE1|XOR0~combout\,
	clrn => \reseter|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|UNIDADE1|FFD1|Q~reg0_q\);

-- Location: LCCOMB_X24_Y1_N22
\counter|UNIDADE2|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE2|XOR0~combout\ = \counter|UNIDADE2|FFD1|Q~reg0_q\ $ (((\habilita~input_o\ & \counter|UNIDADE1|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datac => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datad => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \counter|UNIDADE2|XOR0~combout\);

-- Location: FF_X24_Y1_N23
\counter|UNIDADE2|FFD1|Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter|UNIDADE2|XOR0~combout\,
	clrn => \reseter|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|UNIDADE2|FFD1|Q~reg0_q\);

-- Location: LCCOMB_X24_Y1_N4
\counter|UNIDADE3|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE3|XOR0~combout\ = \counter|UNIDADE3|FFD1|Q~reg0_q\ $ (((\counter|UNIDADE2|FFD1|Q~reg0_q\ & (\habilita~input_o\ & \counter|UNIDADE1|FFD1|Q~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \habilita~input_o\,
	datac => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \counter|UNIDADE3|XOR0~combout\);

-- Location: FF_X24_Y1_N5
\counter|UNIDADE3|FFD1|Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter|UNIDADE3|XOR0~combout\,
	clrn => \reseter|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|UNIDADE3|FFD1|Q~reg0_q\);

-- Location: LCCOMB_X24_Y1_N16
\counter|UNIDADE3|Cout\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE3|Cout~combout\ = (\habilita~input_o\ & (\counter|UNIDADE3|FFD1|Q~reg0_q\ & (\counter|UNIDADE2|FFD1|Q~reg0_q\ & \counter|UNIDADE1|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datab => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	datac => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datad => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \counter|UNIDADE3|Cout~combout\);

-- Location: LCCOMB_X24_Y1_N12
\counter|UNIDADE4|XOR0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|UNIDADE4|XOR0~combout\ = \counter|UNIDADE4|FFD1|Q~reg0_q\ $ (\counter|UNIDADE3|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|UNIDADE4|FFD1|Q~reg0_q\,
	datad => \counter|UNIDADE3|Cout~combout\,
	combout => \counter|UNIDADE4|XOR0~combout\);

-- Location: FF_X24_Y1_N13
\counter|UNIDADE4|FFD1|Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter|UNIDADE4|XOR0~combout\,
	clrn => \reseter|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|UNIDADE4|FFD1|Q~reg0_q\);

-- Location: LCCOMB_X24_Y1_N14
\reseter|process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reseter|process_0~0_combout\ = (\counter|UNIDADE4|FFD1|Q~reg0_q\ & (!\counter|UNIDADE3|FFD1|Q~reg0_q\ & (\counter|UNIDADE2|FFD1|Q~reg0_q\ & !\counter|UNIDADE1|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE4|FFD1|Q~reg0_q\,
	datab => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	datac => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datad => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	combout => \reseter|process_0~0_combout\);

-- Location: LCCOMB_X24_Y1_N8
\display|C34|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C34|output~0_combout\ = (\counter|UNIDADE4|FFD1|Q~reg0_q\) # ((\counter|UNIDADE2|FFD1|Q~reg0_q\ & ((!\counter|UNIDADE3|FFD1|Q~reg0_q\) # (!\counter|UNIDADE1|FFD1|Q~reg0_q\))) # (!\counter|UNIDADE2|FFD1|Q~reg0_q\ & 
-- ((\counter|UNIDADE3|FFD1|Q~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \counter|UNIDADE4|FFD1|Q~reg0_q\,
	datac => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	datad => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	combout => \display|C34|output~0_combout\);

-- Location: LCCOMB_X25_Y1_N4
\display|C34|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C34|output~1_combout\ = (\habilita~input_o\ & \display|C34|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilita~input_o\,
	datad => \display|C34|output~0_combout\,
	combout => \display|C34|output~1_combout\);

-- Location: LCCOMB_X24_Y1_N30
\display|C33|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C33|output~0_combout\ = (\counter|UNIDADE4|FFD1|Q~reg0_q\) # ((\counter|UNIDADE2|FFD1|Q~reg0_q\ & (!\counter|UNIDADE1|FFD1|Q~reg0_q\ & \counter|UNIDADE3|FFD1|Q~reg0_q\)) # (!\counter|UNIDADE2|FFD1|Q~reg0_q\ & ((\counter|UNIDADE3|FFD1|Q~reg0_q\) # 
-- (!\counter|UNIDADE1|FFD1|Q~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \counter|UNIDADE4|FFD1|Q~reg0_q\,
	datac => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	datad => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	combout => \display|C33|output~0_combout\);

-- Location: LCCOMB_X25_Y1_N30
\display|C33|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C33|output~1_combout\ = (\habilita~input_o\ & \display|C33|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \habilita~input_o\,
	datad => \display|C33|output~0_combout\,
	combout => \display|C33|output~1_combout\);

-- Location: LCCOMB_X24_Y1_N28
\display|C32|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C32|output~0_combout\ = (!\counter|UNIDADE1|FFD1|Q~reg0_q\ & (\habilita~input_o\ & ((\counter|UNIDADE2|FFD1|Q~reg0_q\) # (!\counter|UNIDADE3|FFD1|Q~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	datac => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \display|C32|output~0_combout\);

-- Location: LCCOMB_X24_Y1_N6
\display|C31|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C31|output~0_combout\ = (\habilita~input_o\ & ((\counter|UNIDADE2|FFD1|Q~reg0_q\ & ((!\counter|UNIDADE3|FFD1|Q~reg0_q\))) # (!\counter|UNIDADE2|FFD1|Q~reg0_q\ & (\counter|UNIDADE1|FFD1|Q~reg0_q\ & \counter|UNIDADE3|FFD1|Q~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	datac => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \display|C31|output~0_combout\);

-- Location: LCCOMB_X24_Y1_N20
\display|C31|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C31|output~1_combout\ = (\display|C32|output~0_combout\) # ((\display|C31|output~0_combout\) # ((\counter|UNIDADE4|FFD1|Q~reg0_q\ & \habilita~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|C32|output~0_combout\,
	datab => \counter|UNIDADE4|FFD1|Q~reg0_q\,
	datac => \display|C31|output~0_combout\,
	datad => \habilita~input_o\,
	combout => \display|C31|output~1_combout\);

-- Location: LCCOMB_X24_Y1_N26
\display|C30|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C30|output~0_combout\ = (\habilita~input_o\ & (((\counter|UNIDADE1|FFD1|Q~reg0_q\) # (\counter|UNIDADE3|FFD1|Q~reg0_q\)) # (!\counter|UNIDADE2|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	datac => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \display|C30|output~0_combout\);

-- Location: LCCOMB_X24_Y1_N24
\display|C29|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C29|output~0_combout\ = (\habilita~input_o\ & ((\counter|UNIDADE2|FFD1|Q~reg0_q\ $ (!\counter|UNIDADE1|FFD1|Q~reg0_q\)) # (!\counter|UNIDADE3|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	datac => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	datad => \habilita~input_o\,
	combout => \display|C29|output~0_combout\);

-- Location: LCCOMB_X24_Y1_N10
\display|C28|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C28|output~0_combout\ = (\counter|UNIDADE2|FFD1|Q~reg0_q\) # ((\counter|UNIDADE4|FFD1|Q~reg0_q\) # (\counter|UNIDADE1|FFD1|Q~reg0_q\ $ (!\counter|UNIDADE3|FFD1|Q~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|UNIDADE2|FFD1|Q~reg0_q\,
	datab => \counter|UNIDADE4|FFD1|Q~reg0_q\,
	datac => \counter|UNIDADE1|FFD1|Q~reg0_q\,
	datad => \counter|UNIDADE3|FFD1|Q~reg0_q\,
	combout => \display|C28|output~0_combout\);

-- Location: LCCOMB_X25_Y1_N24
\display|C28|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C28|output~1_combout\ = (\habilita~input_o\ & \display|C28|output~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \habilita~input_o\,
	datad => \display|C28|output~0_combout\,
	combout => \display|C28|output~1_combout\);

-- Location: IOIBUF_X20_Y0_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_abcdefg(0) <= \abcdefg[0]~output_o\;

ww_abcdefg(1) <= \abcdefg[1]~output_o\;

ww_abcdefg(2) <= \abcdefg[2]~output_o\;

ww_abcdefg(3) <= \abcdefg[3]~output_o\;

ww_abcdefg(4) <= \abcdefg[4]~output_o\;

ww_abcdefg(5) <= \abcdefg[5]~output_o\;

ww_abcdefg(6) <= \abcdefg[6]~output_o\;

ww_reset <= \reset~output_o\;
END structure;


