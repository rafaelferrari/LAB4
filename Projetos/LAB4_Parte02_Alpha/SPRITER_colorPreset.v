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
// Created on Mon Sep 12 21:26:53 2016

// synthesis message_off 10175

`timescale 1ns/1ns

module color_preset (
    reset_n,clock,
    data_color);

    input reset_n;
    input clock;
    tri0 reset_n;
    output [23:0] data_color;
    reg [23:0] data_color;
    reg [32:0] fstate;
    reg [32:0] reg_fstate;
    parameter state0=0,state1=1,state2=2,state3=3,state4=4,state5=5,state6=6,state7=7,state8=8,state9=9,state10=10,state11=11,state12=12,state13=13,state14=14,state15=15,state16=16,state17=17,state18=18,state19=19,state21=20,state22=21,state23=22,state24=23,state25=24,state26=25,state27=26,state28=27,state29=28,state30=29,state31=30,state20=31,state32=32;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset_n)
    begin
        if (~reset_n) begin
            reg_fstate <= state0;
            data_color <= 24'b111111111111111111111111;
        end
        else begin
            data_color <= 24'b111111111111111111111111;
            case (fstate)
                state0: begin
                    reg_fstate <= state1;

                    data_color <= 24'b111111111111111111111111;
                end
                state1: begin
                    reg_fstate <= state2;

                    data_color <= 24'b111011101111111111111111;
                end
                state2: begin
                    reg_fstate <= state3;

                    data_color <= 24'b110111011111111111111111;
                end
                state3: begin
                    reg_fstate <= state4;

                    data_color <= 24'b110011001111111111111111;
                end
                state4: begin
                    reg_fstate <= state5;

                    data_color <= 24'b101110111111111111111111;
                end
                state5: begin
                    reg_fstate <= state6;

                    data_color <= 24'b101010101111111111111111;
                end
                state6: begin
                    reg_fstate <= state7;

                    data_color <= 24'b100110011111111111111111;
                end
                state7: begin
                    reg_fstate <= state8;

                    data_color <= 24'b100010001111111111111111;
                end
                state8: begin
                    reg_fstate <= state9;

                    data_color <= 24'b011101111111111111111111;
                end
                state9: begin
                    reg_fstate <= state10;

                    data_color <= 24'b011001101111111111111111;
                end
                state10: begin
                    reg_fstate <= state11;

                    data_color <= 24'b010101011111111111111111;
                end
                state11: begin
                    reg_fstate <= state12;

                    data_color <= 24'b010001001111111111111111;
                end
                state12: begin
                    reg_fstate <= state13;

                    data_color <= 24'b001100111111111111111111;
                end
                state13: begin
                    reg_fstate <= state14;

                    data_color <= 24'b001000101111111111111111;
                end
                state14: begin
                    reg_fstate <= state15;

                    data_color <= 24'b000100011111111111111111;
                end
                state15: begin
                    reg_fstate <= state16;

                    data_color <= 24'b000100011110111011111111;
                end
                state16: begin
                    reg_fstate <= state17;

                    data_color <= 24'b000100011101110111111111;
                end
                state17: begin
                    reg_fstate <= state18;

                    data_color <= 24'b000100011100110011111111;
                end
                state18: begin
                    reg_fstate <= state19;

                    data_color <= 24'b000100011011101111111111;
                end
                state19: begin
                    reg_fstate <= state20;

                    data_color <= 24'b000100011010101011111111;
                end
                state21: begin
                    reg_fstate <= state22;

                    data_color <= 24'b000100011000100011111111;
                end
                state22: begin
                    reg_fstate <= state23;

                    data_color <= 24'b000100010111011111111111;
                end
                state23: begin
                    reg_fstate <= state24;

                    data_color <= 24'b000100010110011011111111;
                end
                state24: begin
                    reg_fstate <= state25;

                    data_color <= 24'b000100010101010111111111;
                end
                state25: begin
                    reg_fstate <= state26;

                    data_color <= 24'b000100010100010011111111;
                end
                state26: begin
                    reg_fstate <= state27;

                    data_color <= 24'b000100010011001111111111;
                end
                state27: begin
                    reg_fstate <= state28;

                    data_color <= 24'b000100010010001011111111;
                end
                state28: begin
                    reg_fstate <= state29;

                    data_color <= 24'b000100010001000111111111;
                end
                state29: begin
                    reg_fstate <= state30;

                    data_color <= 24'b000100010001000111101110;
                end
                state30: begin
                    reg_fstate <= state31;

                    data_color <= 24'b000100010001000111011101;
                end
                state31: begin
                    reg_fstate <= state32;

                    data_color <= 24'b000100010001000111001100;
                end
                state20: begin
                    reg_fstate <= state21;

                    data_color <= 24'b000100011001100111111111;
                end
                state32: begin
                    reg_fstate <= state32;

                    data_color <= 24'b000000000000000000000000;
                end
                default: begin
                    data_color <= 24'bxxxxxxxxxxxxxxxxxxxxxxxx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // color_preset
