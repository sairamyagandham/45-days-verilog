`timescale 1ns/1ps
module tb_mod10_counter;
  reg clk;
  wire [3:0] q;
  mod10_counter uut
  (
    .clk(clk),
    .q(q)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_mod10_counter);
    clk=0;
    #120
    $finish;
  end
endmodule
