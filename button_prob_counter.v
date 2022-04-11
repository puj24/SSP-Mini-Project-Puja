`timescale 1ns / 1ps

module button_prob( input clock,
                    input button,
                    output btn_opt );
   reg enable=1'b1;
   
   modn_counter but_counter(.i_clk(clock),
                            .en(enable),
                            .reset(!button),
                            .y(btn_opt));
endmodule
