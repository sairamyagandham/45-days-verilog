module stop_watch
  (
    input clk,
    input start,
    input stop,
    input reset,
    output reg [7:0] count
  );
  always@(posedge clk)
    begin
      if(reset)
        count<=0;
      else if(start && stop)
        count<=count+1;
    end
endmodule
