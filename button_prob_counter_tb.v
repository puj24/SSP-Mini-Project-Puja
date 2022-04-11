`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module button_prob_tb();
  
  reg clk=1'b0;
  reg btn_inp=1'b0;
  wire btn_outpt; 
  
 button_prob solution( .clock(clk),
                       .button(btn_inp),
                       .btn_opt(btn_outpt));
 always #1000000 clk=!clk;
 initial begin
  #5400000 btn_inp =1'b0;
  #8400000 btn_inp =1'b1;
  #9500000 btn_inp=1'b0;
  #8700000 btn_inp =1'b1;
  #14500000 btn_inp=1'b0;
  #5500000 btn_inp =1'b1;
  #10000000 btn_inp=1'b0;
 end

endmodule
