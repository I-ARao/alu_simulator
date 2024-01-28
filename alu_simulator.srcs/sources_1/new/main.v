`timescale 1ns / 1ps


module main(RST, CLK_100MHz,A,B,Op,seg,an);

input RST, CLK_100MHz;
input [7:0] A,B;
input [3:0] Op;
output [6:0] seg;
output [7:0] an;

wire [11:0] bcd_out;

computation C1(A,B,Op,bcd_out);

multiplex_seg C2 (RST, CLK_100MHz, bcd_out,seg,an);
endmodule
