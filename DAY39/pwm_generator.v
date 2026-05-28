module pwm_generator
  (
    input clk,
    input [3:0] duty,
    output reg pwm
  );
  reg [3:0] count;
  initial begin
    count=0;
    pwm=0;
  end
  always@(posedge clk)
   begin
     count<=count+1;
     if(count<duty)
       pwm<=1;
     else
       pwm<=0;
   end
endmodule
