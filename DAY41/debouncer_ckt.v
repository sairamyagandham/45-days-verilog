module debouncer
(
  input clk,
  input btn,
  output reg btn_out
);
reg [3:0] count;
always@(posedge clk)
  begin
    if(btn)
      begin
        if(count<4'd10)
        count<=count+1;
        else
          btn_out=1;
      end
    else 
      begin
        count<=0;
        btn_out<=0;
      end
  end
endmodule
