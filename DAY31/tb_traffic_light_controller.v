`timescale 1ns/1ps;
module tb_traffic_light_controller;
  reg clk;
  wire red,yellow,green;
  traffic_light_controller uut
  (
    .clk(clk),
    .red(red),
    .yellow(yellow),
    .green(green)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_traffic_light_controller);
    clk=0;
    #100;
    $finish;
  end
endmodule
