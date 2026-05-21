`timescale 1ns/1ps;
module tb_elevator_controller;
  reg clk;
  reg [1:0] req;
  wire [1:0] floor;
  elevator_controller uut
  (
    .clk(clk),
    .req(req),
    .floor(floor)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_elevator_controller);
    clk=0;
    req = 2'b00; #20;
    req = 2'b01; #20;
    req = 2'b10; #20;
    req = 2'b00; #20;
    $finish;
  end
endmodule
