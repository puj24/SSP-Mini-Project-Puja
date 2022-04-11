`timescale 1ns / 1ps
///////////////////////////////////////
module button_opt(input clk,
              input btn1,
              output op_btn);
   reg prev=1'b0;
   reg outp=1'b0;
   reg set=1'b0;
   always@(posedge clk)
   begin
    if(btn1!==prev)
     begin
      if(btn1) 
        begin
       outp<=1'b1;
       set<=1'b1;
        end
       prev<=btn1 ? 1'b1:1'b0;
     end
     if(set) begin
      outp<=1'b0;
      set<=1'b0;
     end
    end
 assign op_btn=outp;
endmodule
