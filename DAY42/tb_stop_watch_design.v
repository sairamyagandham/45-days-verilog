`timescale 1ns/1ps
module tb_stop_watch;
  reg clk;
  reg start;
  reg stop;
  reg reset;
  wire [7:0] count;
  stop_watch uut
  (
    .clk(clk),
    .start(start),
    .stop(stop),
    .reset(reset),
    .count(count)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_stop_watch);
    clk=0;
    
    clk = 0;
    start = 0;
    stop = 0;
    reset = 1;
    // Reset stopwatch
    #10;
    reset = 0;
    // Start counting
    start = 1;
    stop = 0;
    #50;
    // Stop counting
    stop = 1;
    #30;
    // Start again
    stop = 0;
    #40;
    // Reset again
    reset = 1;
    #10;
    reset = 0;
    #20;
    $finish;
  end
endmodule
