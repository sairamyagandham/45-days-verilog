`timescale 1ns/1ps
module tb_clock_divider;
  reg clk;
  wire clk_out;
  clock_divider uut
  (
    .clk(clk),
    .clk_out(clk_out)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_clock_divider);
    clk=0;
    #200;
    $finish;
  end
endmodule
