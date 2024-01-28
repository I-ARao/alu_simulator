`timescale 1ns / 1ps
module digit_sel(bcd_out,AN,digit_out);
input [7:0] AN;
input [11:0] bcd_out;


output reg [3:0]digit_out;

always @ (bcd_out,AN)
begin
        if(AN[0]==0)
            digit_out= bcd_out[3:0];
        else if(AN[1]==0)
            digit_out= bcd_out[7:4];
        else if(AN[2]==0)
            digit_out= bcd_out[11:8];
        else
            digit_out = 4'b1111;
end
endmodule