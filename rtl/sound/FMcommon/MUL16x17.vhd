-- megafunction wizard: %LPM_MULT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_mult 

-- ============================================================
-- File Name: MUL16x17.vhd
-- Megafunction Name(s):
-- 			lpm_mult
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 17.0.2 Build 602 07/19/2017 SJ Lite Edition
-- ************************************************************


--Copyright (C) 2017  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel MegaCore Function License Agreement, or other 
--applicable license agreement, including, without limitation, 
--that your use is for the sole purpose of programming logic 
--devices manufactured by Intel and sold by Intel or its 
--authorized distributors.  Please refer to the applicable 
--agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY MUL16x17 IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (16 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (32 DOWNTO 0)
	);
END MUL16x17;


ARCHITECTURE SYN OF mul16x17 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (32 DOWNTO 0);



	COMPONENT lpm_mult
	GENERIC (
		lpm_hint		: STRING;
		lpm_pipeline		: NATURAL;
		lpm_representation		: STRING;
		lpm_type		: STRING;
		lpm_widtha		: NATURAL;
		lpm_widthb		: NATURAL;
		lpm_widthp		: NATURAL
	);
	PORT (
			clock	: IN STD_LOGIC ;
			dataa	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (16 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (32 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(32 DOWNTO 0);

	lpm_mult_component : lpm_mult
	GENERIC MAP (
		lpm_hint => "MAXIMIZE_SPEED=5",
		lpm_pipeline => 1,
		lpm_representation => "SIGNED",
		lpm_type => "LPM_MULT",
		lpm_widtha => 16,
		lpm_widthb => 17,
		lpm_widthp => 33
	)
	PORT MAP (
		clock => clock,
		dataa => dataa,
		datab => datab,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: AutoSizeResult NUMERIC "1"
-- Retrieval info: PRIVATE: B_isConstant NUMERIC "0"
-- Retrieval info: PRIVATE: ConstantB NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "1"
-- Retrieval info: PRIVATE: Latency NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: SignedMult NUMERIC "1"
-- Retrieval info: PRIVATE: USE_MULT NUMERIC "1"
-- Retrieval info: PRIVATE: ValidConstant NUMERIC "0"
-- Retrieval info: PRIVATE: WidthA NUMERIC "16"
-- Retrieval info: PRIVATE: WidthB NUMERIC "17"
-- Retrieval info: PRIVATE: WidthP NUMERIC "33"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: PRIVATE: optimize NUMERIC "0"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_HINT STRING "MAXIMIZE_SPEED=5"
-- Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "SIGNED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MULT"
-- Retrieval info: CONSTANT: LPM_WIDTHA NUMERIC "16"
-- Retrieval info: CONSTANT: LPM_WIDTHB NUMERIC "17"
-- Retrieval info: CONSTANT: LPM_WIDTHP NUMERIC "33"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: USED_PORT: dataa 0 0 16 0 INPUT NODEFVAL "dataa[15..0]"
-- Retrieval info: USED_PORT: datab 0 0 17 0 INPUT NODEFVAL "datab[16..0]"
-- Retrieval info: USED_PORT: result 0 0 33 0 OUTPUT NODEFVAL "result[32..0]"
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @dataa 0 0 16 0 dataa 0 0 16 0
-- Retrieval info: CONNECT: @datab 0 0 17 0 datab 0 0 17 0
-- Retrieval info: CONNECT: result 0 0 33 0 @result 0 0 33 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUL16x17.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUL16x17.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUL16x17.cmp FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUL16x17.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUL16x17_inst.vhd FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUL16x17_waveforms.html TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUL16x17_wave*.jpg FALSE
-- Retrieval info: LIB_FILE: lpm
