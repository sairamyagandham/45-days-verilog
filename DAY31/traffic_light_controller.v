module traffic_light_controller
  (
    input clk,
    output reg red,
    output reg yellow,
    output reg green
  );
  reg [1:0] state;
  parameter s0=2'b00,
            s1=2'b01,
            s2=2'b10;
  initial begin
    state=s0;
  end;
  always@(posedge clk)
    begin
      case(state)
        s0:
        begin
          red<=1;
          yellow<=0;
          green<=0;
          state<=s1;
        end
        s1:
          begin
            red<=0;
            yellow<=0;
            green<=1;
            state<=s2;
          end
        s2:
          begin
            red<=0;
            yellow<=1;
            green<=0;
            state<=s1;
          end
      endcase
    end
endmodule
