`timescale 1ns / 1ps
module controller(CLK_100MHz,RST, Timer_pulse,AN);

input CLK_100MHz,RST, Timer_pulse;
output reg [7:0] AN;
reg [3:0] PS,NS; 

parameter S1= 1, S2= 2, S3= 3, SReset=0;


always @(posedge CLK_100MHz, posedge RST)
begin
    if (RST==1)
        PS<= SReset;
    else
        PS<= NS;
end

always @(PS,Timer_pulse)
begin 
    case (PS)
    SReset: begin
            if(Timer_pulse==0) NS= SReset; else NS= S1; end
    S1: begin
            if(Timer_pulse==0) NS= S1; else NS= S2; end
    S2: begin
            if(Timer_pulse==0) NS= S2; else NS= S3; end 
    S3: begin
            if(Timer_pulse==0) NS= S3; else NS= S1; end
    
    default: NS= SReset; 
    endcase
    end  
    
  always@(PS)
    begin
        case(PS)
        SReset: AN= 8'b1111_1111;
        S1: AN= 8'b1111_1110;
        S2: AN= 8'b1111_1101;
        S3: AN= 8'b1111_1011;
        default: AN= 8'b1111_1111;
     endcase
     end

endmodule