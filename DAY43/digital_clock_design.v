module digital_clock
  (
    input clk,
    input reset,
    output reg [5:0] seconds
  );
  always@(posedge clk)
    begin
      if(reset)
        seconds<=0;
      else
        begin
          if(seconds==59)
            seconds<=0;
          else
            seconds<=seconds+1;
        end
    end
endmodule
