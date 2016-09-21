// megafunction wizard: %LPM_MUX%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_MUX 

// ============================================================
// File Name: SPRITER_mux_4.v
// Megafunction Name(s):
// 			LPM_MUX
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 16.0.0 Build 211 04/27/2016 SJ Lite Edition
// ************************************************************

//Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, the Altera Quartus Prime License Agreement,
//the Altera MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Altera and sold by Altera or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.

module SPRITER_mux_4 (
	data0x,
	data1x,
	data2x,
	data3x,
	sel,
	result);

	input	[3:0]  data0x;
	input	[3:0]  data1x;
	input	[3:0]  data2x;
	input	[3:0]  data3x;
	input	[1:0]  sel;
	output	[3:0]  result;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "4"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "4"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "2"
// Retrieval info: USED_PORT: data0x 0 0 4 0 INPUT NODEFVAL "data0x[3..0]"
// Retrieval info: USED_PORT: data1x 0 0 4 0 INPUT NODEFVAL "data1x[3..0]"
// Retrieval info: USED_PORT: data2x 0 0 4 0 INPUT NODEFVAL "data2x[3..0]"
// Retrieval info: USED_PORT: data3x 0 0 4 0 INPUT NODEFVAL "data3x[3..0]"
// Retrieval info: USED_PORT: result 0 0 4 0 OUTPUT NODEFVAL "result[3..0]"
// Retrieval info: USED_PORT: sel 0 0 2 0 INPUT NODEFVAL "sel[1..0]"
// Retrieval info: CONNECT: @data 0 0 4 0 data0x 0 0 4 0
// Retrieval info: CONNECT: @data 0 0 4 4 data1x 0 0 4 0
// Retrieval info: CONNECT: @data 0 0 4 8 data2x 0 0 4 0
// Retrieval info: CONNECT: @data 0 0 4 12 data3x 0 0 4 0
// Retrieval info: CONNECT: @sel 0 0 2 0 sel 0 0 2 0
// Retrieval info: CONNECT: result 0 0 4 0 @result 0 0 4 0
// Retrieval info: GEN_FILE: TYPE_NORMAL SPRITER_mux_4.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL SPRITER_mux_4.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL SPRITER_mux_4.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL SPRITER_mux_4.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL SPRITER_mux_4_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL SPRITER_mux_4_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
