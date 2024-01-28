`timescale 1ns / 1ps
module BCD(
		alu_out,
		 bcd_out
		); 
		
		input [7:0]alu_out;
		output[11:0] bcd_out;
		reg [3:0] hundreds, tens, ones;
		reg [6:0] temp_reg;
		
		always @(*) begin
			hundreds= alu_out / 100;
			temp_reg= alu_out % 100;
			tens= temp_reg / 10;
			ones= temp_reg% 10;
		end
		
assign bcd_out = {hundreds, tens, ones};

endmodule