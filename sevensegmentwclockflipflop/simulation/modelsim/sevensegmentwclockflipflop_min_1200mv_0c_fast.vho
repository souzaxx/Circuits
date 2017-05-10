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

-- DATE "05/10/2017 09:07:03"

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
	abcdefg : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END sevensegmentwclockflipflop;

-- Design Ports Information
-- abcdefg[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[6]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_abcdefg : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \display|C32|output~combout\ : std_logic;
SIGNAL \counter|WXYZ_FFD[0]~feeder_combout\ : std_logic;
SIGNAL \counter|FFD1|Q~q\ : std_logic;
SIGNAL \display|C34|output~combout\ : std_logic;
SIGNAL \counter|WXYZ_FFD\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_habilita <= habilita;
abcdefg <= ww_abcdefg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X33_Y10_N2
\abcdefg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|C34|output~combout\,
	devoe => ww_devoe,
	o => \abcdefg[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\abcdefg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habilita~input_o\,
	devoe => ww_devoe,
	o => \abcdefg[1]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\abcdefg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|C32|output~combout\,
	devoe => ww_devoe,
	o => \abcdefg[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\abcdefg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habilita~input_o\,
	devoe => ww_devoe,
	o => \abcdefg[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\abcdefg[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habilita~input_o\,
	devoe => ww_devoe,
	o => \abcdefg[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\abcdefg[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habilita~input_o\,
	devoe => ww_devoe,
	o => \abcdefg[5]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\abcdefg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habilita~input_o\,
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

-- Location: IOIBUF_X33_Y14_N1
\habilita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: LCCOMB_X32_Y10_N18
\display|C32|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C32|output~combout\ = (\habilita~input_o\ & !\counter|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datad => \counter|FFD1|Q~q\,
	combout => \display|C32|output~combout\);

-- Location: LCCOMB_X32_Y10_N8
\counter|WXYZ_FFD[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter|WXYZ_FFD[0]~feeder_combout\ = \display|C32|output~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display|C32|output~combout\,
	combout => \counter|WXYZ_FFD[0]~feeder_combout\);

-- Location: FF_X32_Y10_N9
\counter|WXYZ_FFD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter|WXYZ_FFD[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|WXYZ_FFD\(0));

-- Location: FF_X32_Y10_N21
\counter|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter|WXYZ_FFD\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|FFD1|Q~q\);

-- Location: LCCOMB_X32_Y10_N20
\display|C34|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display|C34|output~combout\ = (\counter|FFD1|Q~q\ & \habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|FFD1|Q~q\,
	datad => \habilita~input_o\,
	combout => \display|C34|output~combout\);

ww_abcdefg(0) <= \abcdefg[0]~output_o\;

ww_abcdefg(1) <= \abcdefg[1]~output_o\;

ww_abcdefg(2) <= \abcdefg[2]~output_o\;

ww_abcdefg(3) <= \abcdefg[3]~output_o\;

ww_abcdefg(4) <= \abcdefg[4]~output_o\;

ww_abcdefg(5) <= \abcdefg[5]~output_o\;

ww_abcdefg(6) <= \abcdefg[6]~output_o\;
END structure;


