module melay_fsm
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
  always@(posedge clk)
    begin
      case(state)
        1'b0:
        begin
           if(in)
            begin
                state <= 1'b1;
                out <= 1'b1;
            end

            else
            begin
                state <= 1'b0;
                out <= 1'b0;
            end

        end

        1'b1:
        begin

            if(in)
            begin
                state <= 1'b1;
                out <= 1'b1;
            end

            else
            begin
                state <= 1'b0;
                out <= 1'b0;
            end

        end

    endcase

end

endmodule
          
