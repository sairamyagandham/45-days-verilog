module uart_rx
  (
    input clk,
    input rx,
    output reg [7:0] data_out
  );
  reg [3:0] count;
  initial begin
    count=0;
    data_out=0;
  end
  always@(posedge clk)
    begin
      if(rx==0 && count==0)
        begin
          count<=1;
        end
      else if(count>0 && count<9)
        begin
           data_out[count-1] <= rx;
          count <= count + 1;
        end
      else if(count==9)
        begin
          count<=0;
        end
    end
endmodule
        
