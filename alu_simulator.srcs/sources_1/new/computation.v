`timescale 1ns / 1ps
module computation(A,B,Op,bcd_out);

input [7:0] A,B;
input [3:0] Op;
output [11:0] bcd_out;

wire [7:0] alu_out;

ALU A1(A,B,Op,alu_out);

BCD A2(alu_out,bcd_out);

endmodule
