-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "12/15/2021 12:30:53"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ham_decoder IS
    PORT (
	y : IN std_logic_vector(14 DOWNTO 0);
	msgOut : OUT std_logic_vector(10 DOWNTO 0)
	);
END ham_decoder;

-- Design Ports Information
-- msgOut[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[9]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msgOut[10]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ham_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_msgOut : std_logic_vector(10 DOWNTO 0);
SIGNAL \msgOut[0]~output_o\ : std_logic;
SIGNAL \msgOut[1]~output_o\ : std_logic;
SIGNAL \msgOut[2]~output_o\ : std_logic;
SIGNAL \msgOut[3]~output_o\ : std_logic;
SIGNAL \msgOut[4]~output_o\ : std_logic;
SIGNAL \msgOut[5]~output_o\ : std_logic;
SIGNAL \msgOut[6]~output_o\ : std_logic;
SIGNAL \msgOut[7]~output_o\ : std_logic;
SIGNAL \msgOut[8]~output_o\ : std_logic;
SIGNAL \msgOut[9]~output_o\ : std_logic;
SIGNAL \msgOut[10]~output_o\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \y[14]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \m~0_combout\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \y[11]~input_o\ : std_logic;
SIGNAL \xor4_b|y~0_combout\ : std_logic;
SIGNAL \xor4_b|y~1_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \y[12]~input_o\ : std_logic;
SIGNAL \y[13]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \xor4_a|y~0_combout\ : std_logic;
SIGNAL \xor4_a|y~1_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \xor4_c|y~0_combout\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \k~0_combout\ : std_logic;
SIGNAL \xor4_c|y~1_combout\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \xor4_d|y~0_combout\ : std_logic;
SIGNAL \xor4_d|y~1_combout\ : std_logic;
SIGNAL \and1|and3|y~0_combout\ : std_logic;
SIGNAL \xor_last11|y~combout\ : std_logic;
SIGNAL \and1|and3|y~1_combout\ : std_logic;
SIGNAL \xor_last10|y~combout\ : std_logic;
SIGNAL \and1|and3|y~2_combout\ : std_logic;
SIGNAL \xor_last9|y~combout\ : std_logic;
SIGNAL \and1|and3|y~3_combout\ : std_logic;
SIGNAL \xor_last8|y~combout\ : std_logic;
SIGNAL \and1|and3|y~4_combout\ : std_logic;
SIGNAL \xor_last7|y~combout\ : std_logic;
SIGNAL \and1|and3|y~5_combout\ : std_logic;
SIGNAL \xor_last6|y~combout\ : std_logic;
SIGNAL \and1|and3|y~6_combout\ : std_logic;
SIGNAL \xor_last5|y~combout\ : std_logic;
SIGNAL \and1|and3|y~7_combout\ : std_logic;
SIGNAL \xor_last4|y~combout\ : std_logic;
SIGNAL \and1|and3|y~8_combout\ : std_logic;
SIGNAL \xor_last3|y~combout\ : std_logic;
SIGNAL \and1|and3|y~9_combout\ : std_logic;
SIGNAL \xor_last2|y~combout\ : std_logic;
SIGNAL \and1|and3|y~10_combout\ : std_logic;
SIGNAL \xor_last1|y~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_y <= y;
msgOut <= ww_msgOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y22_N2
\msgOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last11|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\msgOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last10|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\msgOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last9|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\msgOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last8|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[3]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\msgOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last7|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[4]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\msgOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last6|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[5]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\msgOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last5|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[6]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\msgOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last4|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[7]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\msgOut[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last3|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[8]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\msgOut[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last2|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[9]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\msgOut[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_last1|y~combout\,
	devoe => ww_devoe,
	o => \msgOut[10]~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\y[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\y[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(14),
	o => \y[14]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: LCCOMB_X27_Y25_N0
\m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m~0_combout\ = \y[8]~input_o\ $ (\y[14]~input_o\ $ (\y[7]~input_o\ $ (\y[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datab => \y[14]~input_o\,
	datac => \y[7]~input_o\,
	datad => \y[4]~input_o\,
	combout => \m~0_combout\);

-- Location: IOIBUF_X33_Y15_N1
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\y[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(10),
	o => \y[10]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\y[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(11),
	o => \y[11]~input_o\);

-- Location: LCCOMB_X27_Y25_N10
\xor4_b|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4_b|y~0_combout\ = \y[5]~input_o\ $ (\y[10]~input_o\ $ (\y[2]~input_o\ $ (\y[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datab => \y[10]~input_o\,
	datac => \y[2]~input_o\,
	datad => \y[11]~input_o\,
	combout => \xor4_b|y~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\xor4_b|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4_b|y~1_combout\ = \m~0_combout\ $ (\xor4_b|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~0_combout\,
	datad => \xor4_b|y~0_combout\,
	combout => \xor4_b|y~1_combout\);

-- Location: IOIBUF_X33_Y25_N8
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\y[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(12),
	o => \y[12]~input_o\);

-- Location: IOIBUF_X16_Y31_N1
\y[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(13),
	o => \y[13]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: LCCOMB_X27_Y25_N30
\xor4_a|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4_a|y~0_combout\ = \y[3]~input_o\ $ (\y[12]~input_o\ $ (\y[13]~input_o\ $ (\y[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \y[12]~input_o\,
	datac => \y[13]~input_o\,
	datad => \y[6]~input_o\,
	combout => \xor4_a|y~0_combout\);

-- Location: LCCOMB_X27_Y25_N16
\xor4_a|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4_a|y~1_combout\ = \m~0_combout\ $ (\xor4_a|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~0_combout\,
	datac => \xor4_a|y~0_combout\,
	combout => \xor4_a|y~1_combout\);

-- Location: IOIBUF_X26_Y0_N8
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X27_Y25_N8
\xor4_c|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4_c|y~0_combout\ = \y[8]~input_o\ $ (\y[1]~input_o\ $ (\y[13]~input_o\ $ (\y[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[13]~input_o\,
	datad => \y[11]~input_o\,
	combout => \xor4_c|y~0_combout\);

-- Location: IOIBUF_X16_Y31_N8
\y[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

-- Location: LCCOMB_X27_Y25_N18
\k~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \k~0_combout\ = \y[5]~input_o\ $ (\y[6]~input_o\ $ (\y[9]~input_o\ $ (\y[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datab => \y[6]~input_o\,
	datac => \y[9]~input_o\,
	datad => \y[4]~input_o\,
	combout => \k~0_combout\);

-- Location: LCCOMB_X27_Y25_N2
\xor4_c|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4_c|y~1_combout\ = \xor4_c|y~0_combout\ $ (\k~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xor4_c|y~0_combout\,
	datad => \k~0_combout\,
	combout => \xor4_c|y~1_combout\);

-- Location: IOIBUF_X33_Y25_N1
\y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X27_Y25_N4
\xor4_d|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4_d|y~0_combout\ = \y[0]~input_o\ $ (\y[7]~input_o\ $ (\y[12]~input_o\ $ (\y[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[12]~input_o\,
	datad => \y[10]~input_o\,
	combout => \xor4_d|y~0_combout\);

-- Location: LCCOMB_X27_Y25_N6
\xor4_d|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4_d|y~1_combout\ = \k~0_combout\ $ (\xor4_d|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k~0_combout\,
	datac => \xor4_d|y~0_combout\,
	combout => \xor4_d|y~1_combout\);

-- Location: LCCOMB_X27_Y25_N20
\and1|and3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~0_combout\ = (\xor4_b|y~1_combout\ & (\xor4_a|y~1_combout\ & (\xor4_c|y~1_combout\ & \xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_a|y~1_combout\,
	datac => \xor4_c|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~0_combout\);

-- Location: LCCOMB_X27_Y25_N22
\xor_last11|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last11|y~combout\ = \and1|and3|y~0_combout\ $ (\y[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \and1|and3|y~0_combout\,
	datad => \y[4]~input_o\,
	combout => \xor_last11|y~combout\);

-- Location: LCCOMB_X27_Y27_N0
\and1|and3|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~1_combout\ = (\xor4_b|y~1_combout\ & (\xor4_c|y~1_combout\ & (!\xor4_a|y~1_combout\ & \xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_c|y~1_combout\,
	datac => \xor4_a|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~1_combout\);

-- Location: LCCOMB_X27_Y27_N10
\xor_last10|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last10|y~combout\ = \y[5]~input_o\ $ (\and1|and3|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[5]~input_o\,
	datad => \and1|and3|y~1_combout\,
	combout => \xor_last10|y~combout\);

-- Location: LCCOMB_X27_Y27_N4
\and1|and3|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~2_combout\ = (!\xor4_b|y~1_combout\ & (\xor4_c|y~1_combout\ & (\xor4_a|y~1_combout\ & \xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_c|y~1_combout\,
	datac => \xor4_a|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~2_combout\);

-- Location: LCCOMB_X27_Y27_N22
\xor_last9|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last9|y~combout\ = \and1|and3|y~2_combout\ $ (\y[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \and1|and3|y~2_combout\,
	datac => \y[6]~input_o\,
	combout => \xor_last9|y~combout\);

-- Location: LCCOMB_X27_Y27_N8
\and1|and3|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~3_combout\ = (\xor4_b|y~1_combout\ & (!\xor4_c|y~1_combout\ & (\xor4_a|y~1_combout\ & \xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_c|y~1_combout\,
	datac => \xor4_a|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~3_combout\);

-- Location: LCCOMB_X27_Y27_N26
\xor_last8|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last8|y~combout\ = \and1|and3|y~3_combout\ $ (\y[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \and1|and3|y~3_combout\,
	datad => \y[7]~input_o\,
	combout => \xor_last8|y~combout\);

-- Location: LCCOMB_X27_Y25_N24
\and1|and3|y~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~4_combout\ = (\xor4_b|y~1_combout\ & (\xor4_a|y~1_combout\ & (\xor4_c|y~1_combout\ & !\xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_a|y~1_combout\,
	datac => \xor4_c|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~4_combout\);

-- Location: LCCOMB_X27_Y25_N26
\xor_last7|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last7|y~combout\ = \y[8]~input_o\ $ (\and1|and3|y~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[8]~input_o\,
	datad => \and1|and3|y~4_combout\,
	combout => \xor_last7|y~combout\);

-- Location: LCCOMB_X27_Y27_N28
\and1|and3|y~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~5_combout\ = (!\xor4_b|y~1_combout\ & (\xor4_c|y~1_combout\ & (!\xor4_a|y~1_combout\ & \xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_c|y~1_combout\,
	datac => \xor4_a|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~5_combout\);

-- Location: LCCOMB_X27_Y27_N6
\xor_last6|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last6|y~combout\ = \y[9]~input_o\ $ (\and1|and3|y~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[9]~input_o\,
	datad => \and1|and3|y~5_combout\,
	combout => \xor_last6|y~combout\);

-- Location: LCCOMB_X27_Y27_N16
\and1|and3|y~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~6_combout\ = (\xor4_b|y~1_combout\ & (!\xor4_c|y~1_combout\ & (!\xor4_a|y~1_combout\ & \xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_c|y~1_combout\,
	datac => \xor4_a|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~6_combout\);

-- Location: LCCOMB_X27_Y27_N2
\xor_last5|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last5|y~combout\ = \and1|and3|y~6_combout\ $ (\y[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \and1|and3|y~6_combout\,
	datad => \y[10]~input_o\,
	combout => \xor_last5|y~combout\);

-- Location: LCCOMB_X27_Y27_N20
\and1|and3|y~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~7_combout\ = (\xor4_b|y~1_combout\ & (\xor4_c|y~1_combout\ & (!\xor4_a|y~1_combout\ & !\xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_c|y~1_combout\,
	datac => \xor4_a|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~7_combout\);

-- Location: LCCOMB_X27_Y27_N14
\xor_last4|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last4|y~combout\ = \and1|and3|y~7_combout\ $ (\y[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \and1|and3|y~7_combout\,
	datac => \y[11]~input_o\,
	combout => \xor_last4|y~combout\);

-- Location: LCCOMB_X27_Y27_N24
\and1|and3|y~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~8_combout\ = (!\xor4_b|y~1_combout\ & (!\xor4_c|y~1_combout\ & (\xor4_a|y~1_combout\ & \xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_c|y~1_combout\,
	datac => \xor4_a|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~8_combout\);

-- Location: LCCOMB_X32_Y27_N24
\xor_last3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last3|y~combout\ = \y[12]~input_o\ $ (\and1|and3|y~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[12]~input_o\,
	datac => \and1|and3|y~8_combout\,
	combout => \xor_last3|y~combout\);

-- Location: LCCOMB_X27_Y27_N18
\and1|and3|y~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~9_combout\ = (!\xor4_b|y~1_combout\ & (\xor4_c|y~1_combout\ & (\xor4_a|y~1_combout\ & !\xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_c|y~1_combout\,
	datac => \xor4_a|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~9_combout\);

-- Location: LCCOMB_X27_Y27_N12
\xor_last2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last2|y~combout\ = \y[13]~input_o\ $ (\and1|and3|y~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[13]~input_o\,
	datad => \and1|and3|y~9_combout\,
	combout => \xor_last2|y~combout\);

-- Location: LCCOMB_X27_Y25_N28
\and1|and3|y~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \and1|and3|y~10_combout\ = (\xor4_b|y~1_combout\ & (\xor4_a|y~1_combout\ & (!\xor4_c|y~1_combout\ & !\xor4_d|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4_b|y~1_combout\,
	datab => \xor4_a|y~1_combout\,
	datac => \xor4_c|y~1_combout\,
	datad => \xor4_d|y~1_combout\,
	combout => \and1|and3|y~10_combout\);

-- Location: LCCOMB_X27_Y25_N14
\xor_last1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_last1|y~combout\ = \and1|and3|y~10_combout\ $ (\y[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \and1|and3|y~10_combout\,
	datac => \y[14]~input_o\,
	combout => \xor_last1|y~combout\);

ww_msgOut(0) <= \msgOut[0]~output_o\;

ww_msgOut(1) <= \msgOut[1]~output_o\;

ww_msgOut(2) <= \msgOut[2]~output_o\;

ww_msgOut(3) <= \msgOut[3]~output_o\;

ww_msgOut(4) <= \msgOut[4]~output_o\;

ww_msgOut(5) <= \msgOut[5]~output_o\;

ww_msgOut(6) <= \msgOut[6]~output_o\;

ww_msgOut(7) <= \msgOut[7]~output_o\;

ww_msgOut(8) <= \msgOut[8]~output_o\;

ww_msgOut(9) <= \msgOut[9]~output_o\;

ww_msgOut(10) <= \msgOut[10]~output_o\;
END structure;


