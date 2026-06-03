`timescale 1ns/1ps

module tb_spi_master;

reg clk;
reg start;
reg [7:0] data_in;

wire mosi;
wire sclk;
wire cs;

spi_master uut(
    .clk(clk),
    .start(start),
    .data_in(data_in),
    .mosi(mosi),
    .sclk(sclk),
    .cs(cs)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0,tb_spi_master);

    clk = 0;

    start = 0;
    data_in = 8'b10101010;

    #10;
    start = 1;

    #100;

    $finish;
end

endmodule
