module i2c_controller(
    input clk,
    input start,
    output reg scl,
    output reg sda
);

reg [2:0] state;

always @(posedge clk)
begin

    case(state)

        0:
        begin
            scl <= 1;
            sda <= 1;

            if(start)
                state <= 1;
        end

        1:
        begin
            sda <= 0;   // START condition
            state <= 2;
        end

        2:
        begin
            scl <= 0;
            state <= 3;
        end

        3:
        begin
            scl <= 1;
            sda <= 1;   // STOP condition
            state <= 0;
        end

    endcase

end

endmodule
