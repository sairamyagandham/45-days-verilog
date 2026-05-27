`timescale 1ns/1ps

module tb_fifo_design;

reg clk, rst;
reg wr_en, rd_en;

reg [7:0] din;

wire [7:0] dout;

fifo_design uut(
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .din(din),
    .dout(dout)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, tb_fifo_design);

    clk = 0;

    rst = 1;
    wr_en = 0;
    rd_en = 0;

    #10;

    rst = 0;

    wr_en = 1;

    din = 8'h11; #10;
    din = 8'h22; #10;
    din = 8'h33; #10;

    wr_en = 0;

    rd_en = 1;

    #30;

    rd_en = 0;

    #20;

    $finish;

end

endmodule
