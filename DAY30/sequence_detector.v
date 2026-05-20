module sequence_detector
  (
    input clk,
    input in,
    output reg out
  );
  reg [1:0] state;
  parameter  S0=2'b00,
             S1=2'b01,
             S2=2'b10;
  initial begin
    state=S0;
    out=0;
  end
  always@(posedge clk)
    begin
      case(state)
        S0:
          begin
            out<=0;
            if(in)
              state<=S1;
            else
              state<=S0;
          end
        S1:
          begin
            out<=0;
            if(in)
              state<=S2;
            else
              state<=S1;
          end
        S2:
          begin
            if(in)
              begin
                state<=S1;
                out<=1;
              end
            else
              begin
                state<=S0;
                out<=0;
              end
          end
      endcase
    end
endmodule
