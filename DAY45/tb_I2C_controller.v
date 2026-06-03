`timescale 1ns/1ps

module tb_i2c_controller;

reg clk;
reg start;

wire scl;
wire sda;

i2c_controller uut(
    .clk(clk),
    .start(start),
    .scl(scl),
    .sda(sda)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0,tb_i2c_controller);

    clk = 0;

    start = 0;

    #10;
    start = 1;

    #100;

    $finish;

end

endmodule
