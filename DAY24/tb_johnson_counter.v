`timescale 1ns/1ps
module tb_johnson_counter;
  reg clk;
  wire [3:0] q;
  johnson_counter uut
  (
    .clk(clk),
    .q(q)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_johnson_counter);
    clk=0;
    #100;
    $finish;
  end
endmodule
