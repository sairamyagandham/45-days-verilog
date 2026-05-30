`timescale 1ns/1ps
module tb_digital_clock;
  reg clk;
  reg reset;
  wire [5:0] seconds;
  digital_clock uut
  (
    .clk(clk),
    .reset(reset),
    .seconds(seconds)
    );
    always #5 clk=~clk;
    initial begin
      $dumpfile("wave.vcd");
      $dumpvars(0,tb_digital_clock);
      clk=0;
      reset=1;
      #10;
      reset=0;
      #100;
      $finish;
    end
endmodule
