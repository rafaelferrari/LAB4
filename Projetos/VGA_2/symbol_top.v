// Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"
// CREATED		"Wed Aug 03 11:36:17 2016"

module symbol_top2(
	CLOCK_50,
	KEY,
	VGA_HS,
	VGA_VS,
	column,
	row,
	VGA_B,
	VGA_G,
	VGA_R
);


input wire	CLOCK_50;
input wire	[0:0] KEY;
output wire	VGA_HS;
output wire	VGA_VS;
output wire	[9:0] column;
output wire	[8:0] row;
output wire	[7:0] VGA_B;
output wire	[7:0] VGA_G;
output wire	[7:0] VGA_R;

wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[31:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	[23:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	[7:0] SYNTHESIZED_WIRE_13;
wire	[7:0] SYNTHESIZED_WIRE_14;
wire	[7:0] SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	[3:0] SYNTHESIZED_WIRE_20;





FIFO	b2v_buffer(
	.clk(SYNTHESIZED_WIRE_21),
	.rst(SYNTHESIZED_WIRE_22),
	.rd_en(SYNTHESIZED_WIRE_2),
	.wr_en(SYNTHESIZED_WIRE_3),
	.data_in(SYNTHESIZED_WIRE_4),
	.empty(SYNTHESIZED_WIRE_9),
	.data_pixel(SYNTHESIZED_WIRE_10),
	.freeslots(SYNTHESIZED_WIRE_20));


FIFO_reader	b2v_controller(
	.clk100(SYNTHESIZED_WIRE_21),
	.clk25(SYNTHESIZED_WIRE_23),
	.rst(SYNTHESIZED_WIRE_22),
	.videoon(SYNTHESIZED_WIRE_8),
	.empty(SYNTHESIZED_WIRE_9),
	.data_pixel(SYNTHESIZED_WIRE_10),
	.rd_en(SYNTHESIZED_WIRE_2),
	.rstVGA(SYNTHESIZED_WIRE_12),
	.blue(SYNTHESIZED_WIRE_13),
	.green(SYNTHESIZED_WIRE_14),
	.red(SYNTHESIZED_WIRE_15));


PixelLogic	b2v_dac_interface(
	.clk(SYNTHESIZED_WIRE_23),
	.reset(SYNTHESIZED_WIRE_12),
	.blue(SYNTHESIZED_WIRE_13),
	.green(SYNTHESIZED_WIRE_14),
	.red(SYNTHESIZED_WIRE_15),
	.hsync(VGA_HS),
	.vsync(VGA_VS),
	.videoon(SYNTHESIZED_WIRE_8),
	.b(VGA_B),
	.column(column),
	.g(VGA_G),
	.r(VGA_R),
	.row(row));


resetLogic	b2v_inst(
	.clkin(SYNTHESIZED_WIRE_23),
	.locked(SYNTHESIZED_WIRE_17),
	.rstSignal(SYNTHESIZED_WIRE_22));


sdram_simulator	b2v_inst1(
	.clkin(SYNTHESIZED_WIRE_21),
	.rst(SYNTHESIZED_WIRE_22),
	.freeslots(SYNTHESIZED_WIRE_20),
	.wr_en(SYNTHESIZED_WIRE_3),
	.data_out(SYNTHESIZED_WIRE_4));


pll	b2v_pelele(
	.inclk0(CLOCK_50),
	.areset(KEY),
	.c0(SYNTHESIZED_WIRE_21),
	.c1(SYNTHESIZED_WIRE_23),
	.locked(SYNTHESIZED_WIRE_17));


endmodule
