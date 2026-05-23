module uart_tx
  (
    input clk,
    input [7:0] data,
    input start,
    output reg tx
  );
  reg [3:0]count;
  initial begin
    tx=1;
    count=0;
  end
  always@(posedge clk)
    begin
      if(start)
        begin
          case(count)
            0:tx<=0;
            1:tx<=data[0];
            2:tx<=data[1];
            3: tx <= data[2];
            4: tx <= data[3];
            5: tx <= data[4];
            6: tx <= data[5];
            7: tx <= data[6];
            8: tx <= data[7];
            9: tx <= 1;
          endcase
          if(count<9)
            count<=count+1;
          else
            count=0;
        end
      else
        begin
          tx<=1;
          count<=0;
        end
    end
endmodule
