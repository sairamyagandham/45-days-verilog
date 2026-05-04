`timescale 1ns/1ps
module tb_basic_gates;
reg a, b;
wire and_out, or_out, not_out;

// Instantiate the module
basic_gates uut (
    .a(a),
    .b(b),
    .and_out(and_out),
    .or_out(or_out),
  .not_out(not_out)
);

initial begin
    $dumpfile("wave.vcd");   // for waveform
    $dumpvars(0, tb_basic_gates);

    // Test cases
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
end

endmodule
