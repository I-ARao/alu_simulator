`timescale 1ns / 1ps

module multiplex_seg_tb();
reg RST, CLK_100MHz;
reg [11:0] bcd_out;
wire [6:0] seg;
wire [7:0] an;


parameter Clock_period= 10;
parameter tsim= 2000;
multiplex_seg X1 (RST, CLK_100MHz, bcd_out,seg,an);

initial bcd_out= 12'b000100100011;

initial CLK_100MHz = 0;
always #(Clock_period/2) CLK_100MHz= ~CLK_100MHz;



initial begin
        RST=1;
        #15 RST=0;
        end     
initial #tsim $finish;


endmodule
