`timescale 1ns/1ps;
module tb_vending_machine;
  reg clk,coin;
  wire dispense;
  vending_machine uut
  (
    .clk(clk),
    .coin(coin),
    .dispense(dispense)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_vending_machine);
    clk=0;
    coin = 0; #10;
    coin = 1; #10;
    coin = 1; #10;
    coin = 0; #10;
    $finish;
  end
endmodule
