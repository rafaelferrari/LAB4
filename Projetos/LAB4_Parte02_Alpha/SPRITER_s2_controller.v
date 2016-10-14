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

// Generated by Quartus Prime Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition
// Created on Mon Sep 05 17:29:13 2016

// synthesis message_off 10175

`timescale 1ns/1ns

module s2_controller (
    reset_n,clk,sp0_en,sp1_en,sp2_en,sp3_en,valid_rd,clkPipeline,
    mux_sel,pipeline_rst,rd_en);

    input reset_n;
    input clk;
    input sp0_en;
    input sp1_en;
    input sp2_en;
    input sp3_en;
    input valid_rd;
    input clkPipeline;
    tri0 reset_n;
    tri0 sp0_en;
    tri0 sp1_en;
    tri0 sp2_en;
    tri0 sp3_en;
    tri0 valid_rd;
    tri0 clkPipeline;
    output [1:0] mux_sel;
    output pipeline_rst;
    output rd_en;
    reg [1:0] mux_sel;
    reg pipeline_rst;
    reg rd_en;
    reg [6:0] fstate;
    reg [6:0] reg_fstate;
    parameter startup=0,read1=1,idle_wait0=2,read0=3,read3=4,read2=5,idle_wait1=6;

    always @(posedge clk)
    begin
        if (clk) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset_n or sp0_en or sp1_en or sp2_en or sp3_en or valid_rd or clkPipeline)
    begin
        if (~reset_n) begin
            reg_fstate <= startup;
            mux_sel <= 2'b00;
            pipeline_rst <= 1'b0;
            rd_en <= 1'b0;
        end
        else begin
            mux_sel <= 2'b00;
            pipeline_rst <= 1'b0;
            rd_en <= 1'b0;
            case (fstate)
                startup: begin
                    if (sp0_en)
                        reg_fstate <= read0;
                    else if ((~(sp0_en) & clkPipeline))
                        reg_fstate <= idle_wait0;
                    else if ((~(sp0_en) & ~(clkPipeline)))
                        reg_fstate <= idle_wait1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= startup;

                    pipeline_rst <= 1'b1;

                    mux_sel <= 2'b00;

                    rd_en <= 1'b0;
                end
                read1: begin
                    if (((~(sp2_en) & clkPipeline) & valid_rd))
                        reg_fstate <= idle_wait0;
                    else if ((sp2_en & valid_rd))
                        reg_fstate <= read2;
                    else if (((~(sp2_en) & ~(clkPipeline)) & valid_rd))
                        reg_fstate <= idle_wait1;
                    else if (~(valid_rd))
                        reg_fstate <= read1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= read1;

                    pipeline_rst <= 1'b0;

                    mux_sel <= 2'b01;

                    rd_en <= 1'b1;
                end
                idle_wait0: begin
                    if (clkPipeline)
                        reg_fstate <= idle_wait0;
                    else if (~(clkPipeline))
                        reg_fstate <= idle_wait1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= idle_wait0;

                    pipeline_rst <= 1'b0;

                    mux_sel <= 2'b00;

                    rd_en <= 1'b0;
                end
                read0: begin
                    if ((valid_rd & sp1_en))
                        reg_fstate <= read1;
                    else if (((~(sp1_en) & clkPipeline) & valid_rd))
                        reg_fstate <= idle_wait0;
                    else if (((~(sp1_en) & ~(clkPipeline)) & valid_rd))
                        reg_fstate <= idle_wait1;
                    else if (~(valid_rd))
                        reg_fstate <= read0;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= read0;

                    pipeline_rst <= 1'b0;

                    mux_sel <= 2'b00;

                    rd_en <= 1'b1;
                end
                read3: begin
                    if ((clkPipeline & valid_rd))
                        reg_fstate <= idle_wait0;
                    else if (~(valid_rd))
                        reg_fstate <= read3;
                    else if ((~(clkPipeline) & valid_rd))
                        reg_fstate <= idle_wait1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= read3;

                    pipeline_rst <= 1'b0;

                    mux_sel <= 2'b11;

                    rd_en <= 1'b1;
                end
                read2: begin
                    if (((~(sp3_en) & clkPipeline) & valid_rd))
                        reg_fstate <= idle_wait0;
                    else if ((sp3_en & valid_rd))
                        reg_fstate <= read3;
                    else if (((~(sp3_en) & ~(clkPipeline)) & valid_rd))
                        reg_fstate <= idle_wait1;
                    else if (~(valid_rd))
                        reg_fstate <= read2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= read2;

                    pipeline_rst <= 1'b0;

                    mux_sel <= 2'b10;

                    rd_en <= 1'b1;
                end
                idle_wait1: begin
                    if (clkPipeline)
                        reg_fstate <= startup;
                    else if (~(clkPipeline))
                        reg_fstate <= idle_wait1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= idle_wait1;

                    pipeline_rst <= 1'b0;

                    mux_sel <= 2'b00;

                    rd_en <= 1'b0;
                end
                default: begin
                    mux_sel <= 2'bxx;
                    pipeline_rst <= 1'bx;
                    rd_en <= 1'bx;
//                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // s2_controller