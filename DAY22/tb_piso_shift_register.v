`timescale 1ns/1ps
module tb_piso_shift_register;
  reg clk,load;
  reg [3:0] parallel_in;
  wire q;
  piso_shift_register uut(
    .clk(clk),
    .load(load),
    .parallel_in(parallel_in),
    .q(q)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_piso_shift_register);
    clk=0;
    load=1;
    parallel_in=4'b1011;
    #10;
    load = 0;

    #50;

    $finish;
end
endmodule
