module timer #(parameter NCycles= 10000)(CLK_100MHz,RST,Timer_pulse);

input CLK_100MHz,RST;
output reg Timer_pulse;
reg [127:0] count_value;

always @(posedge CLK_100MHz, posedge RST)
    begin
       if (RST==1) begin
                    count_value=0;
                    Timer_pulse= 1;
                    end
       else
            begin
                if(count_value == NCycles)
                    begin       
                        count_value = 0;
                        Timer_pulse = 1;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                    end
                 else begin
                    Timer_pulse= 0;
                    count_value = count_value + 1;
                 end
             end
  end
endmodule                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  