`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module button_tb;
 reg clock=1'b0;
 reg button=1'b0;
 wire[7:0] n_press;

button potential_sol(.clk(clock),
                     .btn1(button),
                     .sum(n_press));
 always #5 clock=!clock;
 always #27 button=!button;
endmodule
