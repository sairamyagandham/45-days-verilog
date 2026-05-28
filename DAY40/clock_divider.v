module clock_divider
  (
    input clk,
    output reg clk_out
  );
  reg [2:0] count;
  initial begin
    count=0;
    clk_out=0;
  end
  always@(posedge clk)
    begin
      if(count==3)
        begin
      clk_out<=~clk_out;
      count<=0;
    end
  else
    begin
      count<=count+1;
    end
  end
endmodule
    
    
