`timescale 1ns/1ps
module tb_simple_alu;
  reg [3:0] a,b;
  reg [1:0] sel;
  wire [3:0] result;
  simple_alu uut
  (
    .a(a),
    .b(b),
    .sel(sel),
    .result(result)
  );
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_simple_alu);
    a=4'b0101; b=4'b0011;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
end
endmodule
