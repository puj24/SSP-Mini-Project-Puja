`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module n_mod_counter_tb;
 reg clock= 1'b0;
 reg enable=1'b1;
 reg Reset=1'b0;
 wire output_y;
 
 modn_counter mycounter(
          .i_clk(clock),
          .en(enable),
          .reset(Reset),
          .y(output_y)
          );
  always #10 clock<= !clock;
  initial
  begin 
  #50 Reset<=1'b0;
  #35 Reset<=1'b1;
  #100 Reset<=1'b0;
  #35 Reset<=1'b1;
  #50 Reset<=1'b0;
  #80 Reset<=1'b1;
  #40 Reset<=1'b0;
  #75 Reset<=1'b1;
  #45 Reset<=1'b0;
  #5 Reset<=1'b1;
  #35 Reset<=1'b0;
  #65 Reset<=1'b1;
  end

endmodule
