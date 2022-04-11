`timescale 1ns / 1ps
///////////////////////////////////////
module button(input clk,
              input btn1,
              output reg[7:0] sum);
   reg prev=1'b0;
   reg sum=0;
   
   always@(posedge clk)
   begin
    if(btn1!==prev)
     begin
      if(btn1) 
        begin
       sum<=sum+1;
        end
       prev<=btn1 ? 1'b1:1'b0;
      end
     else
      sum<=sum;
    end

endmodule
