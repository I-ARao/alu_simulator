`timescale 1ns / 1ps
  module ALU(A,B,Op,alu_out);
input [7:0]A,B;
input [3:0] Op;
output reg [7:0] alu_out;
always@(*)
begin
case(Op)
	//When nothing is pressed
	4'b0000:alu_out=0;
	//Addition
	4'b0001:alu_out=A+B; //Op[0] = N17
	//Subtraction
	4'b0010:alu_out=A-B; //Op[1] = M18
	//NAND
	4'b0100:alu_out=(A&B); //Op[2] = P17
	//NOR
	4'b1000:alu_out=(A|B); //Op[3] = M17
	//3'b101:alu_out=~A;
	//3'b011:alu_out=~B;
	//3'b111:alu_out=0;
	default:alu_out=0;
endcase
end 
endmodule