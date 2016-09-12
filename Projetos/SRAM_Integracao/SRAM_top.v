module SRAM_top(CLOCK_50, KEY, rd_en, wr_en, spriteNumber, LEDR, SW);

input CLOCK_50;
input [3:0] KEY;
wire [19:0] SRAM_ADDR, address;
wire SRAM_OE_N, SRAM_WE_N, SRAM_CE_N, SRAM_LB_N, SRAM_UB_N;

input [17:0] SW;
output [17:0] LEDR;

wire clk125, validData;
input rd_en, wr_en;
wire [15:0] data;
//input [3:0] lineNumber;
input [4:0] spriteNumber;

//assign clk125 = CLOCK_50;
pelele pll(.inclk0(CLOCK_50), .c0(clk125));
sram_fsm_quartus controller(.reset(~KEY[0]),.clock(clk125),.wr_en(1'b0),.rd_en(SW[17]),.valid_rd(LEDR[17]));
ram_megafunction sram(.address(address), .clock(clk125), .data(), .wren(1'b0), .rden(SW[17]), .q(LEDR[15:0]));
sram_addr_decoder dec(.lineNumber(SW[3:0]), .spriteNumber(5'd0), .address(address));

endmodule