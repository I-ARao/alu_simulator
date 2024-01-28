`timescale 1ns / 1ps
module multiplex_seg(RST, CLK_100MHz, bcd_out,seg,an);

input RST, CLK_100MHz;
input [11:0] bcd_out;
output [6:0] seg;
output [7:0] an;

parameter NCycles = 10000;

wire Timer_pulse;
wire [7:0] AN;
wire [3:0] digit_out;
timer #(NCycles) U1 (CLK_100MHz,RST,Timer_pulse);

controller U2 (CLK_100MHz,RST, Timer_pulse,AN);
assign an= AN; 

digit_sel U3 (bcd_out,AN,digit_out);

bts U4 (digit_out, seg);

endmodule