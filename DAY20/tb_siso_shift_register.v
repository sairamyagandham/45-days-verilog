`timescale 1ns/1ps
module tb_siso_shift_register;
  reg clk,data_in;
  wire [3:0] q;
  siso_shift_register uut(
    .clk(clk),
    .data_in(data_in),
    .q(q)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_siso_shift_register);
    clk=0;
      data_in = 1; #10;
    data_in = 0; #10;
    data_in = 1; #10;
    data_in = 1; #10;
    data_in = 0; #10;

    $finish;
end
endmodule
