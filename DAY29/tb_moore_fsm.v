`timescale 1ns/1ps
module tb_moore_fsm;
  reg in,clk;
  wire out;
  moore_fsm uut
  (
    .clk(clk),
    .in(in),
    .out(out)
  );
  always #5clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_moore_fsm);
    clk = 0;

    in = 0; #10;
    in = 1; #10;
    in = 0; #10;
    in = 1; #10;

    $finish;

end

endmodule
