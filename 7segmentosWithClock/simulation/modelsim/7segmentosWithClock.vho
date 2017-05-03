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

-- DATE "05/03/2017 08:53:00"

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

ENTITY 	setesegmentosWithClock IS
    PORT (
	clock : IN std_logic;
	habilita : IN std_logic;
	abcdefg : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END setesegmentosWithClock;

-- Design Ports Information
-- abcdefg[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF setesegmentosWithClock IS
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
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \C1|C34|output~0_combout\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \C1|C31|output~6_combout\ : std_logic;
SIGNAL \C1|C34|output~1_combout\ : std_logic;
SIGNAL \C1|C31|output~7_combout\ : std_logic;
SIGNAL \C1|C33|output~0_combout\ : std_logic;
SIGNAL \C1|C32|output~0_combout\ : std_logic;
SIGNAL \C1|C31|output~3_combout\ : std_logic;
SIGNAL \C1|C31|output~8_combout\ : std_logic;
SIGNAL \C1|C30|output~0_combout\ : std_logic;
SIGNAL \C1|C29|output~0_combout\ : std_logic;
SIGNAL \C1|C28|output~0_combout\ : std_logic;
SIGNAL \C1|C28|output~1_combout\ : std_logic;
SIGNAL zeroANove : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_habilita <= habilita;
abcdefg <= ww_abcdefg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X24_Y0_N9
\abcdefg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C34|output~1_combout\,
	devoe => ww_devoe,
	o => \abcdefg[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\abcdefg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C33|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\abcdefg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C32|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\abcdefg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C31|output~8_combout\,
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
	i => \C1|C30|output~0_combout\,
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
	i => \C1|C29|output~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\abcdefg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C28|output~1_combout\,
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

-- Location: LCCOMB_X26_Y1_N18
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!zeroANove(0) & (((!zeroANove(1) & !zeroANove(2))) # (!zeroANove(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zeroANove(3),
	datab => zeroANove(1),
	datac => zeroANove(0),
	datad => zeroANove(2),
	combout => \Mux3~0_combout\);

-- Location: FF_X26_Y1_N19
\zeroANove[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => zeroANove(0));

-- Location: LCCOMB_X26_Y1_N10
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (zeroANove(1) & (zeroANove(2) & (!zeroANove(3) & zeroANove(0)))) # (!zeroANove(1) & (!zeroANove(2) & (zeroANove(3) & !zeroANove(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zeroANove(1),
	datab => zeroANove(2),
	datac => zeroANove(3),
	datad => zeroANove(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X26_Y1_N11
\zeroANove[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => zeroANove(3));

-- Location: LCCOMB_X26_Y1_N12
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!zeroANove(3) & (zeroANove(1) $ (zeroANove(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zeroANove(3),
	datac => zeroANove(1),
	datad => zeroANove(0),
	combout => \Mux2~0_combout\);

-- Location: FF_X26_Y1_N13
\zeroANove[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => zeroANove(1));

-- Location: LCCOMB_X26_Y1_N16
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!zeroANove(3) & (zeroANove(2) $ (((zeroANove(1) & zeroANove(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zeroANove(1),
	datab => zeroANove(0),
	datac => zeroANove(2),
	datad => zeroANove(3),
	combout => \Mux1~0_combout\);

-- Location: FF_X26_Y1_N17
\zeroANove[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => zeroANove(2));

-- Location: LCCOMB_X26_Y1_N20
\C1|C34|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C34|output~0_combout\ = (!zeroANove(3) & ((zeroANove(1)) # (!zeroANove(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => zeroANove(2),
	datac => zeroANove(3),
	datad => zeroANove(1),
	combout => \C1|C34|output~0_combout\);

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

-- Location: LCCOMB_X26_Y1_N8
\C1|C31|output~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C31|output~6_combout\ = (zeroANove(2) & zeroANove(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => zeroANove(2),
	datad => zeroANove(0),
	combout => \C1|C31|output~6_combout\);

-- Location: LCCOMB_X26_Y1_N26
\C1|C34|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C34|output~1_combout\ = (\habilita~input_o\ & (((!\C1|C31|output~6_combout\ & zeroANove(1))) # (!\C1|C34|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C34|output~0_combout\,
	datab => \habilita~input_o\,
	datac => \C1|C31|output~6_combout\,
	datad => zeroANove(1),
	combout => \C1|C34|output~1_combout\);

-- Location: LCCOMB_X26_Y1_N30
\C1|C31|output~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C31|output~7_combout\ = (!zeroANove(2) & zeroANove(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => zeroANove(2),
	datad => zeroANove(1),
	combout => \C1|C31|output~7_combout\);

-- Location: LCCOMB_X26_Y1_N24
\C1|C33|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C33|output~0_combout\ = (\habilita~input_o\ & (((!\C1|C31|output~7_combout\ & !zeroANove(0))) # (!\C1|C34|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C34|output~0_combout\,
	datab => \C1|C31|output~7_combout\,
	datac => \habilita~input_o\,
	datad => zeroANove(0),
	combout => \C1|C33|output~0_combout\);

-- Location: LCCOMB_X26_Y1_N2
\C1|C32|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C32|output~0_combout\ = (\habilita~input_o\ & (!zeroANove(0) & ((zeroANove(1)) # (!zeroANove(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zeroANove(1),
	datab => \habilita~input_o\,
	datac => zeroANove(2),
	datad => zeroANove(0),
	combout => \C1|C32|output~0_combout\);

-- Location: LCCOMB_X26_Y1_N0
\C1|C31|output~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C31|output~3_combout\ = (zeroANove(1) & ((!zeroANove(2)) # (!zeroANove(0)))) # (!zeroANove(1) & (zeroANove(0) $ (!zeroANove(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zeroANove(1),
	datab => zeroANove(0),
	datac => zeroANove(2),
	combout => \C1|C31|output~3_combout\);

-- Location: LCCOMB_X26_Y1_N6
\C1|C31|output~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C31|output~8_combout\ = (\habilita~input_o\ & ((\C1|C31|output~3_combout\) # (zeroANove(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C31|output~3_combout\,
	datab => zeroANove(3),
	datac => \habilita~input_o\,
	combout => \C1|C31|output~8_combout\);

-- Location: LCCOMB_X26_Y1_N28
\C1|C30|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C30|output~0_combout\ = (\habilita~input_o\ & (((zeroANove(2)) # (zeroANove(0))) # (!zeroANove(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zeroANove(1),
	datab => \habilita~input_o\,
	datac => zeroANove(2),
	datad => zeroANove(0),
	combout => \C1|C30|output~0_combout\);

-- Location: LCCOMB_X26_Y1_N22
\C1|C29|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C29|output~0_combout\ = (\habilita~input_o\ & ((zeroANove(1) $ (!zeroANove(0))) # (!zeroANove(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zeroANove(1),
	datab => \habilita~input_o\,
	datac => zeroANove(2),
	datad => zeroANove(0),
	combout => \C1|C29|output~0_combout\);

-- Location: LCCOMB_X26_Y1_N4
\C1|C28|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C28|output~0_combout\ = (zeroANove(1)) # ((zeroANove(3)) # (zeroANove(2) $ (!zeroANove(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zeroANove(1),
	datab => zeroANove(3),
	datac => zeroANove(2),
	datad => zeroANove(0),
	combout => \C1|C28|output~0_combout\);

-- Location: LCCOMB_X26_Y1_N14
\C1|C28|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C1|C28|output~1_combout\ = (\C1|C28|output~0_combout\ & \habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C28|output~0_combout\,
	datac => \habilita~input_o\,
	combout => \C1|C28|output~1_combout\);

ww_abcdefg(0) <= \abcdefg[0]~output_o\;

ww_abcdefg(1) <= \abcdefg[1]~output_o\;

ww_abcdefg(2) <= \abcdefg[2]~output_o\;

ww_abcdefg(3) <= \abcdefg[3]~output_o\;

ww_abcdefg(4) <= \abcdefg[4]~output_o\;

ww_abcdefg(5) <= \abcdefg[5]~output_o\;

ww_abcdefg(6) <= \abcdefg[6]~output_o\;
END structure;


