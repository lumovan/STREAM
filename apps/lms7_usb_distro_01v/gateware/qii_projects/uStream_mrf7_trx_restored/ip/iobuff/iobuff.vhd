-- megafunction wizard: %ALTIOBUF%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altiobuf_in 

-- ============================================================
-- File Name: iobuff.vhd
-- Megafunction Name(s):
-- 			altiobuf_in
--
-- Simulation Library Files(s):
-- 			cycloneive
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 15.0.0 Build 145 04/22/2015 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, the Altera Quartus II License Agreement,
--the Altera MegaCore Function License Agreement, or other 
--applicable license agreement, including, without limitation, 
--that your use is for the sole purpose of programming logic 
--devices manufactured by Altera and sold by Altera or its 
--authorized distributors.  Please refer to the applicable 
--agreement for further details.


--altiobuf_in CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone IV E" ENABLE_BUS_HOLD="FALSE" NUMBER_OF_CHANNELS=13 USE_DIFFERENTIAL_MODE="FALSE" USE_DYNAMIC_TERMINATION_CONTROL="FALSE" datain dataout
--VERSION_BEGIN 15.0 cbx_altiobuf_in 2015:04:22:18:04:07:SJ cbx_mgl 2015:04:22:18:06:50:SJ cbx_stratixiii 2015:04:22:18:04:08:SJ cbx_stratixv 2015:04:22:18:04:08:SJ  VERSION_END

 LIBRARY cycloneive;
 USE cycloneive.all;

--synthesis_resources = cycloneive_io_ibuf 13 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  iobuff_iobuf_in_0ai IS 
	 PORT 
	 ( 
		 datain	:	IN  STD_LOGIC_VECTOR (12 DOWNTO 0);
		 dataout	:	OUT  STD_LOGIC_VECTOR (12 DOWNTO 0)
	 ); 
 END iobuff_iobuf_in_0ai;

 ARCHITECTURE RTL OF iobuff_iobuf_in_0ai IS

	 SIGNAL  wire_ibufa_i	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_ibufa_o	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 COMPONENT  cycloneive_io_ibuf
	 GENERIC 
	 (
		bus_hold	:	STRING := "false";
		differential_mode	:	STRING := "false";
		simulate_z_as	:	STRING := "Z";
		lpm_type	:	STRING := "cycloneive_io_ibuf"
	 );
	 PORT
	 ( 
		i	:	IN STD_LOGIC := '0';
		ibar	:	IN STD_LOGIC := '0';
		o	:	OUT STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	dataout <= wire_ibufa_o;
	wire_ibufa_i <= datain;
	loop0 : FOR i IN 0 TO 12 GENERATE 
	  ibufa :  cycloneive_io_ibuf
	  GENERIC MAP (
		bus_hold => "false",
		differential_mode => "false"
	  )
	  PORT MAP ( 
		i => wire_ibufa_i(i),
		o => wire_ibufa_o(i)
	  );
	END GENERATE loop0;

 END RTL; --iobuff_iobuf_in_0ai
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY iobuff IS
	PORT
	(
		datain		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		dataout		: OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
	);
END iobuff;


ARCHITECTURE RTL OF iobuff IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (12 DOWNTO 0);



	COMPONENT iobuff_iobuf_in_0ai
	PORT (
			datain	: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
			dataout	: OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	dataout    <= sub_wire0(12 DOWNTO 0);

	iobuff_iobuf_in_0ai_component : iobuff_iobuf_in_0ai
	PORT MAP (
		datain => datain,
		dataout => sub_wire0
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
-- Retrieval info: CONSTANT: enable_bus_hold STRING "FALSE"
-- Retrieval info: CONSTANT: number_of_channels NUMERIC "13"
-- Retrieval info: CONSTANT: use_differential_mode STRING "FALSE"
-- Retrieval info: CONSTANT: use_dynamic_termination_control STRING "FALSE"
-- Retrieval info: USED_PORT: datain 0 0 13 0 INPUT NODEFVAL "datain[12..0]"
-- Retrieval info: USED_PORT: dataout 0 0 13 0 OUTPUT NODEFVAL "dataout[12..0]"
-- Retrieval info: CONNECT: @datain 0 0 13 0 datain 0 0 13 0
-- Retrieval info: CONNECT: dataout 0 0 13 0 @dataout 0 0 13 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL iobuff.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL iobuff.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL iobuff.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL iobuff.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL iobuff_inst.vhd FALSE
-- Retrieval info: LIB_FILE: cycloneive