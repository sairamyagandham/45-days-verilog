`timescale 1ns/1ps
module tb_ring_counter;
  reg clk;
  wire [3:0] q;
  ring_counter uut
  (
    .clk(clk),
    .q(q)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_ring_counter);
    clk=0;
    #80;
    $finish;
  end
endmodule
