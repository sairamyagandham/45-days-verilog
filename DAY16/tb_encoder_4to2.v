`timescale 1ns/1ps
module tb_encoder_4to2;
  reg [3:0] in;
  wire [1:0] y;
  encoder_4to2 uut
  (
    .in(in),
    .y(y)
  );
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_encoder_4to2);
     in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;

    $finish;
end
endmodule
