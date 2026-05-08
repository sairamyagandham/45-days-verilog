`timescale 1ns/1ps
module tb_comparator_2bit;
  reg [1:0] a,b;
  wire greater,less,equal;
  comparator_2bit uut
  (
    .a(a),
    .b(b),
    .greater(greater),
    .less(less),
    .equal(equal)
  );
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_comparator_2bit);

    a = 2'b00; b = 2'b01; #10;
    a = 2'b10; b = 2'b01; #10;
    a = 2'b11; b = 2'b11; #10;
    a = 2'b01; b = 2'b10; #10;

    $finish;
end
endmodule
