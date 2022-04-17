-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/17/2022 16:17:15"

-- 
-- Device: Altera 5M160ZT100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	alu IS
    PORT (
	alu_a : IN std_logic_vector(15 DOWNTO 0);
	alu_b : IN std_logic_vector(15 DOWNTO 0);
	alu_c : OUT std_logic_vector(15 DOWNTO 0);
	carry_flag : OUT std_logic;
	zero_flag : OUT std_logic;
	clk : IN std_logic;
	selop : IN std_logic_vector(1 DOWNTO 0);
	cop : IN std_logic_vector(1 DOWNTO 0)
	);
END alu;

-- Design Ports Information


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_alu_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu_c : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_carry_flag : std_logic;
SIGNAL ww_zero_flag : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_selop : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cop : std_logic_vector(1 DOWNTO 0);
SIGNAL \alu1:temp[1]~regout\ : std_logic;
SIGNAL \alu1:temp[2]~regout\ : std_logic;
SIGNAL \alu1:temp[3]~regout\ : std_logic;
SIGNAL \alu1:temp[4]~regout\ : std_logic;
SIGNAL \alu1:temp[5]~regout\ : std_logic;
SIGNAL \alu1:temp[6]~regout\ : std_logic;
SIGNAL \alu1:temp[7]~regout\ : std_logic;
SIGNAL \alu1:temp[8]~regout\ : std_logic;
SIGNAL \alu1:temp[9]~regout\ : std_logic;
SIGNAL \alu1:temp[10]~regout\ : std_logic;
SIGNAL \alu1:temp[11]~regout\ : std_logic;
SIGNAL \alu1:temp[12]~regout\ : std_logic;
SIGNAL \alu1:temp[13]~regout\ : std_logic;
SIGNAL \alu1:temp[14]~regout\ : std_logic;
SIGNAL \alu1:temp[15]~regout\ : std_logic;
SIGNAL \alu1:temp[0]~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \temp~0\ : std_logic;
SIGNAL \temp~79\ : std_logic;
SIGNAL \temp~80_combout\ : std_logic;
SIGNAL \alu_c[0]~reg0_regout\ : std_logic;
SIGNAL \temp~5_combout\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \temp~6\ : std_logic;
SIGNAL \temp~1\ : std_logic;
SIGNAL \temp~4_combout\ : std_logic;
SIGNAL \alu_c[1]~reg0_regout\ : std_logic;
SIGNAL \temp~10_combout\ : std_logic;
SIGNAL \carry~2_combout\ : std_logic;
SIGNAL \temp~8_combout\ : std_logic;
SIGNAL \temp~11\ : std_logic;
SIGNAL \temp~7\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \alu_c[2]~reg0_regout\ : std_logic;
SIGNAL \temp~15_combout\ : std_logic;
SIGNAL \carry~3_combout\ : std_logic;
SIGNAL \temp~13_combout\ : std_logic;
SIGNAL \temp~16\ : std_logic;
SIGNAL \temp~12\ : std_logic;
SIGNAL \temp~14_combout\ : std_logic;
SIGNAL \alu_c[3]~reg0_regout\ : std_logic;
SIGNAL \temp~20_combout\ : std_logic;
SIGNAL \carry~4_combout\ : std_logic;
SIGNAL \carry~5_combout\ : std_logic;
SIGNAL \temp~18_combout\ : std_logic;
SIGNAL \temp~21\ : std_logic;
SIGNAL \temp~17\ : std_logic;
SIGNAL \temp~19_combout\ : std_logic;
SIGNAL \alu_c[4]~reg0_regout\ : std_logic;
SIGNAL \temp~25_combout\ : std_logic;
SIGNAL \carry~6_combout\ : std_logic;
SIGNAL \temp~23_combout\ : std_logic;
SIGNAL \temp~26\ : std_logic;
SIGNAL \temp~22\ : std_logic;
SIGNAL \temp~24_combout\ : std_logic;
SIGNAL \alu_c[5]~reg0_regout\ : std_logic;
SIGNAL \temp~30_combout\ : std_logic;
SIGNAL \carry~7_combout\ : std_logic;
SIGNAL \carry~8_combout\ : std_logic;
SIGNAL \temp~28_combout\ : std_logic;
SIGNAL \temp~31\ : std_logic;
SIGNAL \temp~27\ : std_logic;
SIGNAL \temp~29_combout\ : std_logic;
SIGNAL \alu_c[6]~reg0_regout\ : std_logic;
SIGNAL \temp~35_combout\ : std_logic;
SIGNAL \carry~9_combout\ : std_logic;
SIGNAL \temp~33_combout\ : std_logic;
SIGNAL \temp~36\ : std_logic;
SIGNAL \temp~32\ : std_logic;
SIGNAL \temp~34_combout\ : std_logic;
SIGNAL \alu_c[7]~reg0_regout\ : std_logic;
SIGNAL \temp~40_combout\ : std_logic;
SIGNAL \carry~10_combout\ : std_logic;
SIGNAL \carry~11_combout\ : std_logic;
SIGNAL \temp~38_combout\ : std_logic;
SIGNAL \temp~41\ : std_logic;
SIGNAL \temp~37\ : std_logic;
SIGNAL \temp~39_combout\ : std_logic;
SIGNAL \alu_c[8]~reg0_regout\ : std_logic;
SIGNAL \temp~45_combout\ : std_logic;
SIGNAL \carry~12_combout\ : std_logic;
SIGNAL \temp~43_combout\ : std_logic;
SIGNAL \temp~46\ : std_logic;
SIGNAL \temp~42\ : std_logic;
SIGNAL \temp~44_combout\ : std_logic;
SIGNAL \alu_c[9]~reg0_regout\ : std_logic;
SIGNAL \temp~50_combout\ : std_logic;
SIGNAL \carry~13_combout\ : std_logic;
SIGNAL \carry~14_combout\ : std_logic;
SIGNAL \temp~48_combout\ : std_logic;
SIGNAL \temp~51\ : std_logic;
SIGNAL \temp~47\ : std_logic;
SIGNAL \temp~49_combout\ : std_logic;
SIGNAL \alu_c[10]~reg0_regout\ : std_logic;
SIGNAL \temp~55_combout\ : std_logic;
SIGNAL \carry~15_combout\ : std_logic;
SIGNAL \temp~53_combout\ : std_logic;
SIGNAL \temp~56\ : std_logic;
SIGNAL \temp~52\ : std_logic;
SIGNAL \temp~54_combout\ : std_logic;
SIGNAL \alu_c[11]~reg0_regout\ : std_logic;
SIGNAL \temp~60_combout\ : std_logic;
SIGNAL \carry~16_combout\ : std_logic;
SIGNAL \carry~17_combout\ : std_logic;
SIGNAL \temp~58_combout\ : std_logic;
SIGNAL \temp~61\ : std_logic;
SIGNAL \temp~57\ : std_logic;
SIGNAL \temp~59_combout\ : std_logic;
SIGNAL \alu_c[12]~reg0_regout\ : std_logic;
SIGNAL \temp~65_combout\ : std_logic;
SIGNAL \carry~18_combout\ : std_logic;
SIGNAL \temp~63_combout\ : std_logic;
SIGNAL \temp~66\ : std_logic;
SIGNAL \temp~62\ : std_logic;
SIGNAL \temp~64_combout\ : std_logic;
SIGNAL \alu_c[13]~reg0_regout\ : std_logic;
SIGNAL \temp~71_combout\ : std_logic;
SIGNAL \temp~68_combout\ : std_logic;
SIGNAL \temp~67_combout\ : std_logic;
SIGNAL \temp~72\ : std_logic;
SIGNAL \carry~19_combout\ : std_logic;
SIGNAL \carry~20_combout\ : std_logic;
SIGNAL \temp~69\ : std_logic;
SIGNAL \temp~70_combout\ : std_logic;
SIGNAL \alu_c[14]~reg0_regout\ : std_logic;
SIGNAL \temp~73_combout\ : std_logic;
SIGNAL \temp~74_combout\ : std_logic;
SIGNAL \temp~75_combout\ : std_logic;
SIGNAL \carry~23_combout\ : std_logic;
SIGNAL \carry~21_combout\ : std_logic;
SIGNAL \sum~0_combout\ : std_logic;
SIGNAL \temp~78\ : std_logic;
SIGNAL \temp~76\ : std_logic;
SIGNAL \temp~77_combout\ : std_logic;
SIGNAL \alu_c[15]~reg0_regout\ : std_logic;
SIGNAL \carry~22_combout\ : std_logic;
SIGNAL \carry_flag~reg0_regout\ : std_logic;
SIGNAL \selop~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \alu_a~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \alu_b~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cop~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_clk~combout\ : std_logic;

BEGIN

ww_alu_a <= alu_a;
ww_alu_b <= alu_b;
alu_c <= ww_alu_c;
carry_flag <= ww_carry_flag;
zero_flag <= ww_zero_flag;
ww_clk <= clk;
ww_selop <= selop;
ww_cop <= cop;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(0),
	combout => \alu_a~combout\(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cop[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cop(0),
	combout => \cop~combout\(0));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cop[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cop(1),
	combout => \cop~combout\(1));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(0),
	combout => \alu_b~combout\(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\selop[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_selop(1),
	combout => \selop~combout\(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\selop[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_selop(0),
	combout => \selop~combout\(0));

-- Location: LC_X2_Y4_N7
\alu_c[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~0\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~80_combout\)))) # (!\cop~combout\(1) & (!\alu_a~combout\(0)))
-- \alu_c[0]~reg0_regout\ = DFFEAS(\temp~0\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c505",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_a~combout\(0),
	datab => \cop~combout\(0),
	datac => \cop~combout\(1),
	datad => \temp~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~0\,
	regout => \alu_c[0]~reg0_regout\);

-- Location: LC_X2_Y4_N5
\alu1:temp[0]\ : maxv_lcell
-- Equation(s):
-- \temp~79\ = (\selop~combout\(0) & ((\selop~combout\(1) & (\alu1:temp[0])) # (!\selop~combout\(1) & ((!\alu_a~combout\(0)))))) # (!\selop~combout\(0) & (((\alu_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \selop~combout\(0),
	datab => \selop~combout\(1),
	datac => \temp~0\,
	datad => \alu_a~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~79\,
	regout => \alu1:temp[0]~regout\);

-- Location: LC_X2_Y4_N6
\temp~80\ : maxv_lcell
-- Equation(s):
-- \temp~80_combout\ = (\temp~79\ & ((\selop~combout\(0)) # (\alu_b~combout\(0) $ (!\selop~combout\(1))))) # (!\temp~79\ & (!\selop~combout\(1) & (\alu_b~combout\(0) $ (\selop~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f912",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(0),
	datab => \selop~combout\(1),
	datac => \selop~combout\(0),
	datad => \temp~79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~80_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(1),
	combout => \alu_a~combout\(1));

-- Location: LC_X2_Y4_N0
\temp~5\ : maxv_lcell
-- Equation(s):
-- \temp~5_combout\ = \alu_a~combout\(1) $ ((((\cop~combout\(0) & !\alu_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(1),
	datac => \cop~combout\(0),
	datad => \alu_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~5_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(1),
	combout => \alu_b~combout\(1));

-- Location: LC_X2_Y4_N1
\temp~2\ : maxv_lcell
-- Equation(s):
-- \temp~2_combout\ = (((\alu_b~combout\(0) & \alu_a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu_b~combout\(0),
	datad => \alu_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~2_combout\);

-- Location: LC_X2_Y4_N9
\temp~3\ : maxv_lcell
-- Equation(s):
-- \temp~3_combout\ = (\selop~combout\(1) & (\alu_b~combout\(1) & (\alu_a~combout\(1)))) # (!\selop~combout\(1) & (\alu_b~combout\(1) $ (\alu_a~combout\(1) $ (\temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c194",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \selop~combout\(1),
	datab => \alu_b~combout\(1),
	datac => \alu_a~combout\(1),
	datad => \temp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~3_combout\);

-- Location: LC_X2_Y4_N4
\alu_c[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~6\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~4_combout\)))) # (!\cop~combout\(1) & (\temp~5_combout\))
-- \alu_c[1]~reg0_regout\ = DFFEAS(\temp~6\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e444",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \cop~combout\(1),
	datab => \temp~5_combout\,
	datac => \cop~combout\(0),
	datad => \temp~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~6\,
	regout => \alu_c[1]~reg0_regout\);

-- Location: LC_X2_Y4_N2
\alu1:temp[1]\ : maxv_lcell
-- Equation(s):
-- \temp~1\ = (\selop~combout\(1) & (((\alu1:temp[1])))) # (!\selop~combout\(1) & (((!\alu_b~combout\(1))) # (!\alu_a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_a~combout\(1),
	datab => \selop~combout\(1),
	datac => \temp~6\,
	datad => \alu_b~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~1\,
	regout => \alu1:temp[1]~regout\);

-- Location: LC_X2_Y4_N3
\temp~4\ : maxv_lcell
-- Equation(s):
-- \temp~4_combout\ = ((\selop~combout\(0) & ((\temp~1\))) # (!\selop~combout\(0) & (\temp~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp~3_combout\,
	datac => \selop~combout\(0),
	datad => \temp~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~4_combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(2),
	combout => \alu_a~combout\(2));

-- Location: LC_X2_Y2_N9
\temp~10\ : maxv_lcell
-- Equation(s):
-- \temp~10_combout\ = \alu_a~combout\(2) $ (((!\alu_a~combout\(1) & (\cop~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(1),
	datab => \alu_a~combout\(2),
	datac => \cop~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~10_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(2),
	combout => \alu_b~combout\(2));

-- Location: LC_X2_Y4_N8
\carry~2\ : maxv_lcell
-- Equation(s):
-- \carry~2_combout\ = (\alu_b~combout\(1) & ((\alu_a~combout\(1)) # ((\alu_b~combout\(0) & \alu_a~combout\(0))))) # (!\alu_b~combout\(1) & (\alu_b~combout\(0) & (\alu_a~combout\(1) & \alu_a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(0),
	datab => \alu_b~combout\(1),
	datac => \alu_a~combout\(1),
	datad => \alu_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~2_combout\);

-- Location: LC_X2_Y2_N5
\temp~8\ : maxv_lcell
-- Equation(s):
-- \temp~8_combout\ = (\selop~combout\(1) & (\alu_a~combout\(2) & (\alu_b~combout\(2)))) # (!\selop~combout\(1) & (\alu_a~combout\(2) $ (\alu_b~combout\(2) $ (\carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a192",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(2),
	datab => \selop~combout\(1),
	datac => \alu_b~combout\(2),
	datad => \carry~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~8_combout\);

-- Location: LC_X2_Y2_N4
\alu_c[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~11\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~9_combout\)))) # (!\cop~combout\(1) & (\temp~10_combout\))
-- \alu_c[2]~reg0_regout\ = DFFEAS(\temp~11\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e444",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \cop~combout\(1),
	datab => \temp~10_combout\,
	datac => \cop~combout\(0),
	datad => \temp~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~11\,
	regout => \alu_c[2]~reg0_regout\);

-- Location: LC_X2_Y2_N2
\alu1:temp[2]\ : maxv_lcell
-- Equation(s):
-- \temp~7\ = (\selop~combout\(1) & (((\alu1:temp[2])))) # (!\selop~combout\(1) & (((!\alu_a~combout\(2))) # (!\alu_b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f077",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_b~combout\(2),
	datab => \alu_a~combout\(2),
	datac => \temp~11\,
	datad => \selop~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~7\,
	regout => \alu1:temp[2]~regout\);

-- Location: LC_X2_Y2_N3
\temp~9\ : maxv_lcell
-- Equation(s):
-- \temp~9_combout\ = ((\selop~combout\(0) & ((\temp~7\))) # (!\selop~combout\(0) & (\temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \selop~combout\(0),
	datac => \temp~8_combout\,
	datad => \temp~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~9_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(3),
	combout => \alu_a~combout\(3));

-- Location: LC_X2_Y2_N7
\temp~15\ : maxv_lcell
-- Equation(s):
-- \temp~15_combout\ = (\alu_a~combout\(3) $ (((\cop~combout\(0) & !\alu_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(3),
	datac => \cop~combout\(0),
	datad => \alu_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~15_combout\);

-- Location: LC_X2_Y2_N8
\carry~3\ : maxv_lcell
-- Equation(s):
-- \carry~3_combout\ = ((\alu_a~combout\(2) & ((\alu_b~combout\(2)) # (\carry~2_combout\))) # (!\alu_a~combout\(2) & (\alu_b~combout\(2) & \carry~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(2),
	datac => \alu_b~combout\(2),
	datad => \carry~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~3_combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(3),
	combout => \alu_b~combout\(3));

-- Location: LC_X2_Y2_N6
\temp~13\ : maxv_lcell
-- Equation(s):
-- \temp~13_combout\ = (\selop~combout\(1) & (((\alu_a~combout\(3) & \alu_b~combout\(3))))) # (!\selop~combout\(1) & (\carry~3_combout\ $ (\alu_a~combout\(3) $ (\alu_b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c096",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry~3_combout\,
	datab => \alu_a~combout\(3),
	datac => \alu_b~combout\(3),
	datad => \selop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~13_combout\);

-- Location: LC_X2_Y1_N0
\alu_c[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~16\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~14_combout\)))) # (!\cop~combout\(1) & (\temp~15_combout\))
-- \alu_c[3]~reg0_regout\ = DFFEAS(\temp~16\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \temp~15_combout\,
	datab => \cop~combout\(1),
	datac => \cop~combout\(0),
	datad => \temp~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~16\,
	regout => \alu_c[3]~reg0_regout\);

-- Location: LC_X2_Y1_N1
\alu1:temp[3]\ : maxv_lcell
-- Equation(s):
-- \temp~12\ = (\selop~combout\(1) & (((\alu1:temp[3])))) # (!\selop~combout\(1) & (((!\alu_b~combout\(3))) # (!\alu_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \selop~combout\(1),
	datab => \alu_a~combout\(3),
	datac => \temp~16\,
	datad => \alu_b~combout\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~12\,
	regout => \alu1:temp[3]~regout\);

-- Location: LC_X2_Y1_N2
\temp~14\ : maxv_lcell
-- Equation(s):
-- \temp~14_combout\ = ((\selop~combout\(0) & ((\temp~12\))) # (!\selop~combout\(0) & (\temp~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \selop~combout\(0),
	datac => \temp~13_combout\,
	datad => \temp~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~14_combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(4),
	combout => \alu_a~combout\(4));

-- Location: LC_X2_Y1_N4
\temp~20\ : maxv_lcell
-- Equation(s):
-- \temp~20_combout\ = (\alu_a~combout\(4) $ (((!\alu_a~combout\(3) & \cop~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(3),
	datac => \cop~combout\(0),
	datad => \alu_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~20_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(4),
	combout => \alu_b~combout\(4));

-- Location: LC_X2_Y2_N0
\carry~4\ : maxv_lcell
-- Equation(s):
-- \carry~4_combout\ = ((\alu_a~combout\(2) & ((\alu_b~combout\(2)) # (\carry~2_combout\))) # (!\alu_a~combout\(2) & (\alu_b~combout\(2) & \carry~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(2),
	datac => \alu_b~combout\(2),
	datad => \carry~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~4_combout\);

-- Location: LC_X2_Y2_N1
\carry~5\ : maxv_lcell
-- Equation(s):
-- \carry~5_combout\ = ((\alu_a~combout\(3) & ((\alu_b~combout\(3)) # (\carry~4_combout\))) # (!\alu_a~combout\(3) & (\alu_b~combout\(3) & \carry~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(3),
	datac => \alu_b~combout\(3),
	datad => \carry~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~5_combout\);

-- Location: LC_X2_Y1_N3
\temp~18\ : maxv_lcell
-- Equation(s):
-- \temp~18_combout\ = (\selop~combout\(1) & (\alu_b~combout\(4) & (\alu_a~combout\(4)))) # (!\selop~combout\(1) & (\alu_b~combout\(4) $ (\alu_a~combout\(4) $ (\carry~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(4),
	datab => \alu_a~combout\(4),
	datac => \selop~combout\(1),
	datad => \carry~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~18_combout\);

-- Location: LC_X2_Y1_N7
\alu_c[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~21\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~19_combout\)))) # (!\cop~combout\(1) & (\temp~20_combout\))
-- \alu_c[4]~reg0_regout\ = DFFEAS(\temp~21\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \temp~20_combout\,
	datab => \cop~combout\(1),
	datac => \cop~combout\(0),
	datad => \temp~19_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~21\,
	regout => \alu_c[4]~reg0_regout\);

-- Location: LC_X2_Y1_N5
\alu1:temp[4]\ : maxv_lcell
-- Equation(s):
-- \temp~17\ = (\selop~combout\(1) & (((\alu1:temp[4])))) # (!\selop~combout\(1) & (((!\alu_a~combout\(4))) # (!\alu_b~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f077",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_b~combout\(4),
	datab => \alu_a~combout\(4),
	datac => \temp~21\,
	datad => \selop~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~17\,
	regout => \alu1:temp[4]~regout\);

-- Location: LC_X2_Y1_N6
\temp~19\ : maxv_lcell
-- Equation(s):
-- \temp~19_combout\ = (\selop~combout\(0) & (((\temp~17\)))) # (!\selop~combout\(0) & (\temp~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp~18_combout\,
	datab => \selop~combout\(0),
	datad => \temp~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~19_combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(5),
	combout => \alu_a~combout\(5));

-- Location: LC_X3_Y1_N3
\temp~25\ : maxv_lcell
-- Equation(s):
-- \temp~25_combout\ = (\alu_a~combout\(5) $ (((\cop~combout\(0) & !\alu_a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cop~combout\(0),
	datac => \alu_a~combout\(4),
	datad => \alu_a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~25_combout\);

-- Location: LC_X2_Y1_N8
\carry~6\ : maxv_lcell
-- Equation(s):
-- \carry~6_combout\ = ((\alu_a~combout\(4) & ((\alu_b~combout\(4)) # (\carry~5_combout\))) # (!\alu_a~combout\(4) & (\alu_b~combout\(4) & \carry~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(4),
	datac => \alu_b~combout\(4),
	datad => \carry~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~6_combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(5),
	combout => \alu_b~combout\(5));

-- Location: LC_X3_Y1_N9
\temp~23\ : maxv_lcell
-- Equation(s):
-- \temp~23_combout\ = (\selop~combout\(1) & (\alu_a~combout\(5) & ((\alu_b~combout\(5))))) # (!\selop~combout\(1) & (\alu_a~combout\(5) $ (\carry~6_combout\ $ (\alu_b~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a912",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(5),
	datab => \selop~combout\(1),
	datac => \carry~6_combout\,
	datad => \alu_b~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~23_combout\);

-- Location: LC_X3_Y1_N6
\alu_c[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~26\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~24_combout\)))) # (!\cop~combout\(1) & (\temp~25_combout\))
-- \alu_c[5]~reg0_regout\ = DFFEAS(\temp~26\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \temp~25_combout\,
	datab => \cop~combout\(0),
	datac => \cop~combout\(1),
	datad => \temp~24_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~26\,
	regout => \alu_c[5]~reg0_regout\);

-- Location: LC_X3_Y1_N4
\alu1:temp[5]\ : maxv_lcell
-- Equation(s):
-- \temp~22\ = (\selop~combout\(1) & (((\alu1:temp[5])))) # (!\selop~combout\(1) & (((!\alu_b~combout\(5))) # (!\alu_a~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_a~combout\(5),
	datab => \selop~combout\(1),
	datac => \temp~26\,
	datad => \alu_b~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~22\,
	regout => \alu1:temp[5]~regout\);

-- Location: LC_X3_Y1_N5
\temp~24\ : maxv_lcell
-- Equation(s):
-- \temp~24_combout\ = ((\selop~combout\(0) & ((\temp~22\))) # (!\selop~combout\(0) & (\temp~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp~23_combout\,
	datac => \selop~combout\(0),
	datad => \temp~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~24_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(6),
	combout => \alu_a~combout\(6));

-- Location: LC_X4_Y2_N3
\temp~30\ : maxv_lcell
-- Equation(s):
-- \temp~30_combout\ = \alu_a~combout\(6) $ ((((!\alu_a~combout\(5) & \cop~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(6),
	datac => \alu_a~combout\(5),
	datad => \cop~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~30_combout\);

-- Location: LC_X2_Y1_N9
\carry~7\ : maxv_lcell
-- Equation(s):
-- \carry~7_combout\ = ((\alu_a~combout\(4) & ((\alu_b~combout\(4)) # (\carry~5_combout\))) # (!\alu_a~combout\(4) & (\alu_b~combout\(4) & \carry~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(4),
	datac => \alu_b~combout\(4),
	datad => \carry~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~7_combout\);

-- Location: LC_X3_Y1_N2
\carry~8\ : maxv_lcell
-- Equation(s):
-- \carry~8_combout\ = ((\alu_b~combout\(5) & ((\carry~7_combout\) # (\alu_a~combout\(5)))) # (!\alu_b~combout\(5) & (\carry~7_combout\ & \alu_a~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_b~combout\(5),
	datac => \carry~7_combout\,
	datad => \alu_a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~8_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(6),
	combout => \alu_b~combout\(6));

-- Location: LC_X4_Y2_N1
\temp~28\ : maxv_lcell
-- Equation(s):
-- \temp~28_combout\ = (\selop~combout\(1) & (((\alu_a~combout\(6) & \alu_b~combout\(6))))) # (!\selop~combout\(1) & (\carry~8_combout\ $ (\alu_a~combout\(6) $ (\alu_b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e112",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry~8_combout\,
	datab => \selop~combout\(1),
	datac => \alu_a~combout\(6),
	datad => \alu_b~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~28_combout\);

-- Location: LC_X4_Y2_N7
\alu_c[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~31\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~29_combout\)))) # (!\cop~combout\(1) & (\temp~30_combout\))
-- \alu_c[6]~reg0_regout\ = DFFEAS(\temp~31\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \temp~30_combout\,
	datab => \cop~combout\(0),
	datac => \cop~combout\(1),
	datad => \temp~29_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~31\,
	regout => \alu_c[6]~reg0_regout\);

-- Location: LC_X4_Y2_N5
\alu1:temp[6]\ : maxv_lcell
-- Equation(s):
-- \temp~27\ = (\selop~combout\(1) & (((\alu1:temp[6])))) # (!\selop~combout\(1) & (((!\alu_b~combout\(6))) # (!\alu_a~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_a~combout\(6),
	datab => \selop~combout\(1),
	datac => \temp~31\,
	datad => \alu_b~combout\(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~27\,
	regout => \alu1:temp[6]~regout\);

-- Location: LC_X4_Y2_N6
\temp~29\ : maxv_lcell
-- Equation(s):
-- \temp~29_combout\ = ((\selop~combout\(0) & ((\temp~27\))) # (!\selop~combout\(0) & (\temp~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp~28_combout\,
	datac => \selop~combout\(0),
	datad => \temp~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~29_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(7),
	combout => \alu_a~combout\(7));

-- Location: LC_X5_Y2_N7
\temp~35\ : maxv_lcell
-- Equation(s):
-- \temp~35_combout\ = \alu_a~combout\(7) $ (((\cop~combout\(0) & (!\alu_a~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a6a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(7),
	datab => \cop~combout\(0),
	datac => \alu_a~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~35_combout\);

-- Location: LC_X4_Y2_N2
\carry~9\ : maxv_lcell
-- Equation(s):
-- \carry~9_combout\ = (\alu_a~combout\(6) & (((\carry~8_combout\) # (\alu_b~combout\(6))))) # (!\alu_a~combout\(6) & (((\carry~8_combout\ & \alu_b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(6),
	datac => \carry~8_combout\,
	datad => \alu_b~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~9_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(7),
	combout => \alu_b~combout\(7));

-- Location: LC_X4_Y2_N4
\temp~33\ : maxv_lcell
-- Equation(s):
-- \temp~33_combout\ = (\selop~combout\(1) & (\alu_a~combout\(7) & ((\alu_b~combout\(7))))) # (!\selop~combout\(1) & (\alu_a~combout\(7) $ (\carry~9_combout\ $ (\alu_b~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a906",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(7),
	datab => \carry~9_combout\,
	datac => \selop~combout\(1),
	datad => \alu_b~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~33_combout\);

-- Location: LC_X5_Y2_N6
\alu_c[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~36\ = (\cop~combout\(1) & (\cop~combout\(0) & ((\temp~34_combout\)))) # (!\cop~combout\(1) & (((\temp~35_combout\))))
-- \alu_c[7]~reg0_regout\ = DFFEAS(\temp~36\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d850",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \cop~combout\(1),
	datab => \cop~combout\(0),
	datac => \temp~35_combout\,
	datad => \temp~34_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~36\,
	regout => \alu_c[7]~reg0_regout\);

-- Location: LC_X5_Y2_N4
\alu1:temp[7]\ : maxv_lcell
-- Equation(s):
-- \temp~32\ = (\selop~combout\(1) & (((\alu1:temp[7])))) # (!\selop~combout\(1) & (((!\alu_b~combout\(7))) # (!\alu_a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_a~combout\(7),
	datab => \selop~combout\(1),
	datac => \temp~36\,
	datad => \alu_b~combout\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~32\,
	regout => \alu1:temp[7]~regout\);

-- Location: LC_X5_Y2_N5
\temp~34\ : maxv_lcell
-- Equation(s):
-- \temp~34_combout\ = ((\selop~combout\(0) & ((\temp~32\))) # (!\selop~combout\(0) & (\temp~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp~33_combout\,
	datac => \selop~combout\(0),
	datad => \temp~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~34_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(8),
	combout => \alu_a~combout\(8));

-- Location: LC_X4_Y1_N9
\temp~40\ : maxv_lcell
-- Equation(s):
-- \temp~40_combout\ = \alu_a~combout\(8) $ (((!\alu_a~combout\(7) & (\cop~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(7),
	datab => \alu_a~combout\(8),
	datac => \cop~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~40_combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(8),
	combout => \alu_b~combout\(8));

-- Location: LC_X4_Y2_N9
\carry~10\ : maxv_lcell
-- Equation(s):
-- \carry~10_combout\ = (\alu_a~combout\(6) & (((\carry~8_combout\) # (\alu_b~combout\(6))))) # (!\alu_a~combout\(6) & (((\carry~8_combout\ & \alu_b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(6),
	datac => \carry~8_combout\,
	datad => \alu_b~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~10_combout\);

-- Location: LC_X4_Y2_N8
\carry~11\ : maxv_lcell
-- Equation(s):
-- \carry~11_combout\ = (\alu_a~combout\(7) & ((\carry~10_combout\) # ((\alu_b~combout\(7))))) # (!\alu_a~combout\(7) & (\carry~10_combout\ & ((\alu_b~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(7),
	datab => \carry~10_combout\,
	datad => \alu_b~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~11_combout\);

-- Location: LC_X4_Y1_N0
\temp~38\ : maxv_lcell
-- Equation(s):
-- \temp~38_combout\ = (\selop~combout\(1) & (\alu_b~combout\(8) & (\alu_a~combout\(8)))) # (!\selop~combout\(1) & (\alu_b~combout\(8) $ (\alu_a~combout\(8) $ (\carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a192",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(8),
	datab => \selop~combout\(1),
	datac => \alu_a~combout\(8),
	datad => \carry~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~38_combout\);

-- Location: LC_X4_Y1_N6
\alu_c[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~41\ = (\cop~combout\(1) & (\cop~combout\(0) & ((\temp~39_combout\)))) # (!\cop~combout\(1) & (((\temp~40_combout\))))
-- \alu_c[8]~reg0_regout\ = DFFEAS(\temp~41\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \cop~combout\(0),
	datab => \temp~40_combout\,
	datac => \cop~combout\(1),
	datad => \temp~39_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~41\,
	regout => \alu_c[8]~reg0_regout\);

-- Location: LC_X4_Y1_N4
\alu1:temp[8]\ : maxv_lcell
-- Equation(s):
-- \temp~37\ = (\selop~combout\(1) & (((\alu1:temp[8])))) # (!\selop~combout\(1) & (((!\alu_a~combout\(8))) # (!\alu_b~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f077",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_b~combout\(8),
	datab => \alu_a~combout\(8),
	datac => \temp~41\,
	datad => \selop~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~37\,
	regout => \alu1:temp[8]~regout\);

-- Location: LC_X4_Y1_N5
\temp~39\ : maxv_lcell
-- Equation(s):
-- \temp~39_combout\ = ((\selop~combout\(0) & ((\temp~37\))) # (!\selop~combout\(0) & (\temp~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp~38_combout\,
	datac => \selop~combout\(0),
	datad => \temp~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~39_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(9),
	combout => \alu_a~combout\(9));

-- Location: LC_X4_Y1_N7
\temp~45\ : maxv_lcell
-- Equation(s):
-- \temp~45_combout\ = (\alu_a~combout\(9) $ (((!\alu_a~combout\(8) & \cop~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(8),
	datac => \cop~combout\(0),
	datad => \alu_a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~45_combout\);

-- Location: LC_X4_Y1_N3
\carry~12\ : maxv_lcell
-- Equation(s):
-- \carry~12_combout\ = ((\alu_a~combout\(8) & ((\alu_b~combout\(8)) # (\carry~11_combout\))) # (!\alu_a~combout\(8) & (\alu_b~combout\(8) & \carry~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(8),
	datac => \alu_b~combout\(8),
	datad => \carry~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~12_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(9),
	combout => \alu_b~combout\(9));

-- Location: LC_X4_Y1_N8
\temp~43\ : maxv_lcell
-- Equation(s):
-- \temp~43_combout\ = (\selop~combout\(1) & (((\alu_b~combout\(9) & \alu_a~combout\(9))))) # (!\selop~combout\(1) & (\carry~12_combout\ $ (\alu_b~combout\(9) $ (\alu_a~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e112",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry~12_combout\,
	datab => \selop~combout\(1),
	datac => \alu_b~combout\(9),
	datad => \alu_a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~43_combout\);

-- Location: LC_X3_Y1_N0
\alu_c[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~46\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~44_combout\)))) # (!\cop~combout\(1) & (\temp~45_combout\))
-- \alu_c[9]~reg0_regout\ = DFFEAS(\temp~46\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \temp~45_combout\,
	datab => \cop~combout\(0),
	datac => \cop~combout\(1),
	datad => \temp~44_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~46\,
	regout => \alu_c[9]~reg0_regout\);

-- Location: LC_X3_Y1_N7
\alu1:temp[9]\ : maxv_lcell
-- Equation(s):
-- \temp~42\ = (\selop~combout\(1) & (((\alu1:temp[9])))) # (!\selop~combout\(1) & (((!\alu_a~combout\(9))) # (!\alu_b~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_b~combout\(9),
	datab => \selop~combout\(1),
	datac => \temp~46\,
	datad => \alu_a~combout\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~42\,
	regout => \alu1:temp[9]~regout\);

-- Location: LC_X3_Y1_N8
\temp~44\ : maxv_lcell
-- Equation(s):
-- \temp~44_combout\ = ((\selop~combout\(0) & ((\temp~42\))) # (!\selop~combout\(0) & (\temp~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp~43_combout\,
	datac => \selop~combout\(0),
	datad => \temp~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~44_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(10),
	combout => \alu_a~combout\(10));

-- Location: LC_X5_Y1_N8
\temp~50\ : maxv_lcell
-- Equation(s):
-- \temp~50_combout\ = \alu_a~combout\(10) $ (((\cop~combout\(0) & (!\alu_a~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a6a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(10),
	datab => \cop~combout\(0),
	datac => \alu_a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~50_combout\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(10),
	combout => \alu_b~combout\(10));

-- Location: LC_X4_Y1_N1
\carry~13\ : maxv_lcell
-- Equation(s):
-- \carry~13_combout\ = ((\alu_a~combout\(8) & ((\alu_b~combout\(8)) # (\carry~11_combout\))) # (!\alu_a~combout\(8) & (\alu_b~combout\(8) & \carry~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_a~combout\(8),
	datac => \alu_b~combout\(8),
	datad => \carry~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~13_combout\);

-- Location: LC_X4_Y1_N2
\carry~14\ : maxv_lcell
-- Equation(s):
-- \carry~14_combout\ = ((\carry~13_combout\ & ((\alu_b~combout\(9)) # (\alu_a~combout\(9)))) # (!\carry~13_combout\ & (\alu_b~combout\(9) & \alu_a~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \carry~13_combout\,
	datac => \alu_b~combout\(9),
	datad => \alu_a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~14_combout\);

-- Location: LC_X5_Y1_N9
\temp~48\ : maxv_lcell
-- Equation(s):
-- \temp~48_combout\ = (\selop~combout\(1) & (\alu_b~combout\(10) & ((\alu_a~combout\(10))))) # (!\selop~combout\(1) & (\alu_b~combout\(10) $ (\carry~14_combout\ $ (\alu_a~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a096",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(10),
	datab => \carry~14_combout\,
	datac => \alu_a~combout\(10),
	datad => \selop~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~48_combout\);

-- Location: LC_X5_Y1_N7
\alu_c[10]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~51\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~49_combout\)))) # (!\cop~combout\(1) & (\temp~50_combout\))
-- \alu_c[10]~reg0_regout\ = DFFEAS(\temp~51\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \temp~50_combout\,
	datab => \cop~combout\(0),
	datac => \cop~combout\(1),
	datad => \temp~49_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~51\,
	regout => \alu_c[10]~reg0_regout\);

-- Location: LC_X5_Y1_N5
\alu1:temp[10]\ : maxv_lcell
-- Equation(s):
-- \temp~47\ = (\selop~combout\(1) & (((\alu1:temp[10])))) # (!\selop~combout\(1) & (((!\alu_b~combout\(10))) # (!\alu_a~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_a~combout\(10),
	datab => \selop~combout\(1),
	datac => \temp~51\,
	datad => \alu_b~combout\(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~47\,
	regout => \alu1:temp[10]~regout\);

-- Location: LC_X5_Y1_N6
\temp~49\ : maxv_lcell
-- Equation(s):
-- \temp~49_combout\ = ((\selop~combout\(0) & ((\temp~47\))) # (!\selop~combout\(0) & (\temp~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp~48_combout\,
	datac => \selop~combout\(0),
	datad => \temp~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~49_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(11),
	combout => \alu_a~combout\(11));

-- Location: LC_X5_Y2_N8
\temp~55\ : maxv_lcell
-- Equation(s):
-- \temp~55_combout\ = (\alu_a~combout\(11) $ (((\cop~combout\(0) & !\alu_a~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cop~combout\(0),
	datac => \alu_a~combout\(11),
	datad => \alu_a~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~55_combout\);

-- Location: LC_X5_Y1_N0
\carry~15\ : maxv_lcell
-- Equation(s):
-- \carry~15_combout\ = ((\carry~14_combout\ & ((\alu_a~combout\(10)) # (\alu_b~combout\(10)))) # (!\carry~14_combout\ & (\alu_a~combout\(10) & \alu_b~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \carry~14_combout\,
	datac => \alu_a~combout\(10),
	datad => \alu_b~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~15_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(11),
	combout => \alu_b~combout\(11));

-- Location: LC_X5_Y2_N1
\temp~53\ : maxv_lcell
-- Equation(s):
-- \temp~53_combout\ = (\selop~combout\(1) & (((\alu_a~combout\(11) & \alu_b~combout\(11))))) # (!\selop~combout\(1) & (\carry~15_combout\ $ (\alu_a~combout\(11) $ (\alu_b~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c906",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry~15_combout\,
	datab => \alu_a~combout\(11),
	datac => \selop~combout\(1),
	datad => \alu_b~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~53_combout\);

-- Location: LC_X5_Y2_N0
\alu_c[11]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~56\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~54_combout\)))) # (!\cop~combout\(1) & (\temp~55_combout\))
-- \alu_c[11]~reg0_regout\ = DFFEAS(\temp~56\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \temp~55_combout\,
	datab => \cop~combout\(0),
	datac => \cop~combout\(1),
	datad => \temp~54_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~56\,
	regout => \alu_c[11]~reg0_regout\);

-- Location: LC_X5_Y2_N2
\alu1:temp[11]\ : maxv_lcell
-- Equation(s):
-- \temp~52\ = (\selop~combout\(1) & (((\alu1:temp[11])))) # (!\selop~combout\(1) & (((!\alu_b~combout\(11))) # (!\alu_a~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_a~combout\(11),
	datab => \selop~combout\(1),
	datac => \temp~56\,
	datad => \alu_b~combout\(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~52\,
	regout => \alu1:temp[11]~regout\);

-- Location: LC_X5_Y2_N3
\temp~54\ : maxv_lcell
-- Equation(s):
-- \temp~54_combout\ = ((\selop~combout\(0) & ((\temp~52\))) # (!\selop~combout\(0) & (\temp~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp~53_combout\,
	datac => \selop~combout\(0),
	datad => \temp~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~54_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(12),
	combout => \alu_a~combout\(12));

-- Location: LC_X3_Y4_N9
\temp~60\ : maxv_lcell
-- Equation(s):
-- \temp~60_combout\ = (\alu_a~combout\(12) $ (((\cop~combout\(0) & !\alu_a~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f05a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cop~combout\(0),
	datac => \alu_a~combout\(12),
	datad => \alu_a~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~60_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(12),
	combout => \alu_b~combout\(12));

-- Location: LC_X5_Y1_N2
\carry~16\ : maxv_lcell
-- Equation(s):
-- \carry~16_combout\ = ((\carry~14_combout\ & ((\alu_a~combout\(10)) # (\alu_b~combout\(10)))) # (!\carry~14_combout\ & (\alu_a~combout\(10) & \alu_b~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \carry~14_combout\,
	datac => \alu_a~combout\(10),
	datad => \alu_b~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~16_combout\);

-- Location: LC_X5_Y2_N9
\carry~17\ : maxv_lcell
-- Equation(s):
-- \carry~17_combout\ = ((\carry~16_combout\ & ((\alu_a~combout\(11)) # (\alu_b~combout\(11)))) # (!\carry~16_combout\ & (\alu_a~combout\(11) & \alu_b~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \carry~16_combout\,
	datac => \alu_a~combout\(11),
	datad => \alu_b~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~17_combout\);

-- Location: LC_X3_Y4_N4
\temp~58\ : maxv_lcell
-- Equation(s):
-- \temp~58_combout\ = (\selop~combout\(1) & (\alu_a~combout\(12) & (\alu_b~combout\(12)))) # (!\selop~combout\(1) & (\alu_a~combout\(12) $ (\alu_b~combout\(12) $ (\carry~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(12),
	datab => \alu_b~combout\(12),
	datac => \selop~combout\(1),
	datad => \carry~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~58_combout\);

-- Location: LC_X3_Y4_N0
\alu_c[12]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~61\ = (\cop~combout\(1) & (\cop~combout\(0) & ((\temp~59_combout\)))) # (!\cop~combout\(1) & (((\temp~60_combout\))))
-- \alu_c[12]~reg0_regout\ = DFFEAS(\temp~61\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \cop~combout\(0),
	datab => \temp~60_combout\,
	datac => \cop~combout\(1),
	datad => \temp~59_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~61\,
	regout => \alu_c[12]~reg0_regout\);

-- Location: LC_X3_Y4_N1
\alu1:temp[12]\ : maxv_lcell
-- Equation(s):
-- \temp~57\ = (\selop~combout\(1) & (((\alu1:temp[12])))) # (!\selop~combout\(1) & (((!\alu_b~combout\(12))) # (!\alu_a~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_a~combout\(12),
	datab => \selop~combout\(1),
	datac => \temp~61\,
	datad => \alu_b~combout\(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~57\,
	regout => \alu1:temp[12]~regout\);

-- Location: LC_X3_Y4_N2
\temp~59\ : maxv_lcell
-- Equation(s):
-- \temp~59_combout\ = ((\selop~combout\(0) & ((\temp~57\))) # (!\selop~combout\(0) & (\temp~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \selop~combout\(0),
	datac => \temp~58_combout\,
	datad => \temp~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~59_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(13),
	combout => \alu_a~combout\(13));

-- Location: LC_X3_Y4_N5
\temp~65\ : maxv_lcell
-- Equation(s):
-- \temp~65_combout\ = (\alu_a~combout\(13) $ (((\cop~combout\(0) & !\alu_a~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cop~combout\(0),
	datac => \alu_a~combout\(12),
	datad => \alu_a~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~65_combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(13),
	combout => \alu_b~combout\(13));

-- Location: LC_X3_Y4_N3
\carry~18\ : maxv_lcell
-- Equation(s):
-- \carry~18_combout\ = ((\alu_b~combout\(12) & ((\alu_a~combout\(12)) # (\carry~17_combout\))) # (!\alu_b~combout\(12) & (\alu_a~combout\(12) & \carry~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_b~combout\(12),
	datac => \alu_a~combout\(12),
	datad => \carry~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~18_combout\);

-- Location: LC_X3_Y4_N6
\temp~63\ : maxv_lcell
-- Equation(s):
-- \temp~63_combout\ = (\selop~combout\(1) & (\alu_b~combout\(13) & (\alu_a~combout\(13)))) # (!\selop~combout\(1) & (\alu_b~combout\(13) $ (\alu_a~combout\(13) $ (\carry~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(13),
	datab => \alu_a~combout\(13),
	datac => \selop~combout\(1),
	datad => \carry~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~63_combout\);

-- Location: LC_X4_Y4_N4
\alu_c[13]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~66\ = (\cop~combout\(1) & (((\cop~combout\(0) & \temp~64_combout\)))) # (!\cop~combout\(1) & (\temp~65_combout\))
-- \alu_c[13]~reg0_regout\ = DFFEAS(\temp~66\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \temp~65_combout\,
	datab => \cop~combout\(0),
	datac => \cop~combout\(1),
	datad => \temp~64_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~66\,
	regout => \alu_c[13]~reg0_regout\);

-- Location: LC_X4_Y4_N2
\alu1:temp[13]\ : maxv_lcell
-- Equation(s):
-- \temp~62\ = (\selop~combout\(1) & (((\alu1:temp[13])))) # (!\selop~combout\(1) & (((!\alu_b~combout\(13))) # (!\alu_a~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f077",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_a~combout\(13),
	datab => \alu_b~combout\(13),
	datac => \temp~66\,
	datad => \selop~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~62\,
	regout => \alu1:temp[13]~regout\);

-- Location: LC_X4_Y4_N3
\temp~64\ : maxv_lcell
-- Equation(s):
-- \temp~64_combout\ = ((\selop~combout\(0) & ((\temp~62\))) # (!\selop~combout\(0) & (\temp~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \selop~combout\(0),
	datac => \temp~63_combout\,
	datad => \temp~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~64_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(14),
	combout => \alu_b~combout\(14));

-- Location: LC_X4_Y4_N1
\temp~71\ : maxv_lcell
-- Equation(s):
-- \temp~71_combout\ = ((\selop~combout\(0) & ((\selop~combout\(1)) # (!\alu_b~combout\(14)))) # (!\selop~combout\(0) & (\selop~combout\(1) & !\alu_b~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \selop~combout\(0),
	datac => \selop~combout\(1),
	datad => \alu_b~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~71_combout\);

-- Location: LC_X3_Y4_N7
\temp~68\ : maxv_lcell
-- Equation(s):
-- \temp~68_combout\ = (((\cop~combout\(1) & \cop~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \cop~combout\(1),
	datad => \cop~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~68_combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(14),
	combout => \alu_a~combout\(14));

-- Location: LC_X4_Y4_N0
\temp~67\ : maxv_lcell
-- Equation(s):
-- \temp~67_combout\ = (\cop~combout\(0) & (\alu_a~combout\(14) $ (((!\alu_a~combout\(13) & !\cop~combout\(1)))))) # (!\cop~combout\(0) & (((!\cop~combout\(1) & \alu_a~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cb04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(13),
	datab => \cop~combout\(0),
	datac => \cop~combout\(1),
	datad => \alu_a~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~67_combout\);

-- Location: LC_X4_Y4_N7
\alu_c[14]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~72\ = (\temp~68_combout\ & (\temp~70_combout\ $ (((\temp~71_combout\) # (\temp~67_combout\))))) # (!\temp~68_combout\ & (((\temp~67_combout\))))
-- \alu_c[14]~reg0_regout\ = DFFEAS(\temp~72\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34f8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \temp~71_combout\,
	datab => \temp~68_combout\,
	datac => \temp~67_combout\,
	datad => \temp~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~72\,
	regout => \alu_c[14]~reg0_regout\);

-- Location: LC_X3_Y4_N8
\carry~19\ : maxv_lcell
-- Equation(s):
-- \carry~19_combout\ = ((\alu_b~combout\(12) & ((\alu_a~combout\(12)) # (\carry~17_combout\))) # (!\alu_b~combout\(12) & (\alu_a~combout\(12) & \carry~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_b~combout\(12),
	datac => \alu_a~combout\(12),
	datad => \carry~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~19_combout\);

-- Location: LC_X4_Y4_N8
\carry~20\ : maxv_lcell
-- Equation(s):
-- \carry~20_combout\ = (\alu_a~combout\(13) & ((\alu_b~combout\(13)) # ((\carry~19_combout\)))) # (!\alu_a~combout\(13) & (\alu_b~combout\(13) & (\carry~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(13),
	datab => \alu_b~combout\(13),
	datac => \carry~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~20_combout\);

-- Location: LC_X4_Y4_N5
\alu1:temp[14]\ : maxv_lcell
-- Equation(s):
-- \temp~69\ = (\selop~combout\(1) & (((\alu1:temp[14])))) # (!\selop~combout\(1) & (((\carry~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \selop~combout\(1),
	datac => \temp~72\,
	datad => \carry~20_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~69\,
	regout => \alu1:temp[14]~regout\);

-- Location: LC_X4_Y4_N6
\temp~70\ : maxv_lcell
-- Equation(s):
-- \temp~70_combout\ = (\selop~combout\(0) & ((\selop~combout\(1) & ((!\temp~69\))) # (!\selop~combout\(1) & (\alu_b~combout\(14))))) # (!\selop~combout\(0) & (\alu_b~combout\(14) $ (((\selop~combout\(1)) # (\temp~69\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "19da",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(14),
	datab => \selop~combout\(0),
	datac => \selop~combout\(1),
	datad => \temp~69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~70_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(15),
	combout => \alu_a~combout\(15));

-- Location: LC_X5_Y4_N3
\temp~73\ : maxv_lcell
-- Equation(s):
-- \temp~73_combout\ = (\cop~combout\(0) & (!\cop~combout\(1) & (\alu_a~combout\(14) $ (!\alu_a~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cop~combout\(0),
	datab => \cop~combout\(1),
	datac => \alu_a~combout\(14),
	datad => \alu_a~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~73_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(15),
	combout => \alu_b~combout\(15));

-- Location: LC_X5_Y4_N7
\temp~74\ : maxv_lcell
-- Equation(s):
-- \temp~74_combout\ = (\alu_b~combout\(15) & (\cop~combout\(1) & (\selop~combout\(1) & !\selop~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(15),
	datab => \cop~combout\(1),
	datac => \selop~combout\(1),
	datad => \selop~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~74_combout\);

-- Location: LC_X5_Y4_N1
\temp~75\ : maxv_lcell
-- Equation(s):
-- \temp~75_combout\ = (\temp~73_combout\) # ((\alu_a~combout\(15) & ((\temp~74_combout\) # (!\cop~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp~73_combout\,
	datab => \cop~combout\(0),
	datac => \temp~74_combout\,
	datad => \alu_a~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~75_combout\);

-- Location: LC_X4_Y4_N9
\carry~23\ : maxv_lcell
-- Equation(s):
-- \carry~23_combout\ = (\alu_b~combout\(14) & ((\alu_a~combout\(13) & ((\alu_b~combout\(13)) # (\carry~19_combout\))) # (!\alu_a~combout\(13) & (\alu_b~combout\(13) & \carry~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(13),
	datab => \alu_b~combout\(13),
	datac => \carry~19_combout\,
	datad => \alu_b~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~23_combout\);

-- Location: LC_X5_Y4_N5
\carry~21\ : maxv_lcell
-- Equation(s):
-- \carry~21_combout\ = ((\alu_a~combout\(14) & ((\alu_b~combout\(14)) # (\carry~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(14),
	datac => \alu_a~combout\(14),
	datad => \carry~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~21_combout\);

-- Location: LC_X5_Y4_N6
\sum~0\ : maxv_lcell
-- Equation(s):
-- \sum~0_combout\ = \alu_b~combout\(15) $ (\alu_a~combout\(15) $ (((\carry~23_combout\) # (\carry~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(15),
	datab => \carry~23_combout\,
	datac => \carry~21_combout\,
	datad => \alu_a~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sum~0_combout\);

-- Location: LC_X5_Y4_N0
\alu_c[15]~reg0\ : maxv_lcell
-- Equation(s):
-- \temp~78\ = (\temp~75_combout\) # ((\cop~combout\(0) & (\cop~combout\(1) & \temp~77_combout\)))
-- \alu_c[15]~reg0_regout\ = DFFEAS(\temp~78\, !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \cop~combout\(0),
	datab => \temp~75_combout\,
	datac => \cop~combout\(1),
	datad => \temp~77_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~78\,
	regout => \alu_c[15]~reg0_regout\);

-- Location: LC_X5_Y4_N8
\alu1:temp[15]\ : maxv_lcell
-- Equation(s):
-- \temp~76\ = (\selop~combout\(1) & (((\alu1:temp[15])))) # (!\selop~combout\(1) & (((!\alu_a~combout\(15))) # (!\alu_b~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \alu_b~combout\(15),
	datab => \selop~combout\(1),
	datac => \temp~78\,
	datad => \alu_a~combout\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~76\,
	regout => \alu1:temp[15]~regout\);

-- Location: LC_X5_Y4_N9
\temp~77\ : maxv_lcell
-- Equation(s):
-- \temp~77_combout\ = (\selop~combout\(0) & (((\temp~76\)))) # (!\selop~combout\(0) & (\sum~0_combout\ & (!\selop~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum~0_combout\,
	datab => \selop~combout\(0),
	datac => \selop~combout\(1),
	datad => \temp~76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp~77_combout\);

-- Location: LC_X5_Y4_N4
\carry~22\ : maxv_lcell
-- Equation(s):
-- \carry~22_combout\ = (\alu_b~combout\(15) & ((\carry~23_combout\) # ((\carry~21_combout\) # (\alu_a~combout\(15))))) # (!\alu_b~combout\(15) & (\alu_a~combout\(15) & ((\carry~23_combout\) # (\carry~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(15),
	datab => \carry~23_combout\,
	datac => \carry~21_combout\,
	datad => \alu_a~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~22_combout\);

-- Location: LC_X5_Y4_N2
\carry_flag~reg0\ : maxv_lcell
-- Equation(s):
-- \carry_flag~reg0_regout\ = DFFEAS((\selop~combout\(0) & (((\carry_flag~reg0_regout\)))) # (!\selop~combout\(0) & ((\selop~combout\(1) & ((\carry_flag~reg0_regout\))) # (!\selop~combout\(1) & (\carry~22_combout\)))), !GLOBAL(\clk~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \carry~22_combout\,
	datab => \selop~combout\(0),
	datac => \selop~combout\(1),
	datad => \carry_flag~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \carry_flag~reg0_regout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[0]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[1]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(1));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[2]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(2));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[3]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(3));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[4]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(4));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[5]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(5));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[6]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[7]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(7));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[8]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(8));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[9]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(9));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[10]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(10));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[11]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(11));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[12]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(12));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[13]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(13));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[14]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(14));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_c[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_c[15]~reg0_regout\,
	oe => VCC,
	padio => ww_alu_c(15));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\carry_flag~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \carry_flag~reg0_regout\,
	oe => VCC,
	padio => ww_carry_flag);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\zero_flag~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_zero_flag);
END structure;


