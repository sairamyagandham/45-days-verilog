`timescale 1ns/1ps
module tb_ripple_carry_subtractor;
  reg [3:0] a, b;
  reg bin;
  wire [3:0]diff;
  wire bout;
  ripple_carry_subtractor uut
  (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
);

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, tb_ripple_carry_subtractor);

    a = 4'b0100; b = 4'b0001; bin = 0; #10;
    a = 4'b0111; b = 4'b0010; bin = 0; #10;
    a = 4'b1000; b = 4'b0001; bin = 0; #10;
    a = 4'b0000; b = 4'b0001; bin = 0; #10;

    $finish;
end
endmodule
