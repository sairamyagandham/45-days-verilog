`timescale 1ns/1ps;
module tb_ram_design;
  reg clk,we;
  reg [3:0] addr;
  reg [7:0] din;
  wire [7:0] dout;
  ram_design uut
  (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_ram_design);
    clk=0;
    we=1;
    addr=4'b0011;
    din=8'hAA;
    #10;
    we = 0;
    addr = 4'b0011;

    #10;
    $finish;
end
endmodule
