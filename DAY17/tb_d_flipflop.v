`timescale 1ns/1ps
module tb_d_flipflop;
  reg clk,d;
  wire q;
  d_flipflop uut
  (
    .clk(clk),
    .d(d),
    .q(q)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_d_flipflop);
    clk=0;
    d=0; #10;
    d=1; #10;
    d=0; #10;
    d=1; #10;
    $finish;
  end
endmodule
