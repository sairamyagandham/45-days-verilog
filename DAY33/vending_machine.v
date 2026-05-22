module vending_machine
  (
    input clk,
    input coin,
    output reg dispense
  );
  reg [1:0] state;
  parameter s0=2'b00,
            s1=2'b01,
            s2=2'b10;
  initial begin
    state=s0;
    dispense=0;
  end
  always@(posedge clk)
    begin
      case(state)
        s0:
          begin
            dispense<=0;
            if(coin)
              state<=s1;
            else 
              state<=s0;
          end
        s1:
          begin
            dispense<=0;
            if(coin)
              state<=s2;
            else
              state<=s1;
          end
        s2:
          begin
            dispense<=1;
            state<=s0;
          end
      endcase
    end
endmodule
