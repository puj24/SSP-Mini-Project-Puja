`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module button_opt_tb;
 reg clock=1'b0;
 reg button=1'b0;
 wire opt_btn;

button_opt btn_output(.clk(clock),
                     .btn1(button),
                     .op_btn(opt_btn));
 always #1000000 clock=!clock;
 initial begin
  #3400000 button =1'b0;
  #8400000 button =1'b1;
  #18500000 button=1'b0;
  #8700000 button =1'b1;
  #14500000 button=1'b0;
  #5500000 button =1'b1;
  #10000000 button=1'b0;
  
 end
endmodule
