`timescale 1ns/1ps
module tb_gates_advanced;
reg a, b;
wire out_nand , out_nor, out_xor, out_xnor; 

// Instantiate the module
gates_advanced uut (
    .a(a),
    .b(b),
  .out_nand(out_nand),
  .out_nor(out_nor),
  .out_xor(out_xor),
  .out_xnor(out_xnor)
);

initial begin
    $dumpfile("wave.vcd");   // for waveform
  $dumpvars(0, tb_gates_advanced);

    // Test cases
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
end

endmodule
