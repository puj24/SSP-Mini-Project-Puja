module modn_counter(
        input  i_clk,
        input en,
        input reset,
        output y);  
        
   reg y_temp= 1'b0;
   integer count=1;
   integer n=3;
   
  always @(posedge i_clk)
  begin
    if(!reset)
    begin
      if (count>=n)
       begin
        y_temp <=!y_temp;
        count  <=(count>n)?0:n+1;
       end
      else 
       count <= count+1;
     end
    else          //reset=1
      begin
       count<=0;
       y_temp <=1'b0;
      end
   end

  assign y = y_temp & en;

endmodule