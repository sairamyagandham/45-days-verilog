module moore_fsm
  (
    input clk,
    input in,
    output reg out
  );
  reg state;
  initial 
    begin
      state=0;
      out=0;
    end
 always @(posedge clk)
begin

    case(state)

        1'b0:
        begin

            out <= 0;

            if(in)
                state <= 1'b1;

            else
                state <= 1'b0;

        end

        1'b1:
        begin

            out <= 1;

            if(in)
                state <= 1'b1;

            else
                state <= 1'b0;

        end

    endcase

end

endmodule
