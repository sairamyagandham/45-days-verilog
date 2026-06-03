module spi_master(
    input clk,
    input start,
    input [7:0] data_in,
    output reg mosi,
    output reg sclk,
    output reg cs
);

reg [2:0] count;
reg [7:0] shift_reg;

always @(posedge clk)
begin
    if(start)
    begin
        cs <= 0;

        shift_reg <= data_in;

        mosi <= shift_reg[7];

        shift_reg <= shift_reg << 1;

        sclk <= ~sclk;

        count <= count + 1;

        if(count == 7)
        begin
            cs <= 1;
            count <= 0;
        end
    end
end

endmodule
