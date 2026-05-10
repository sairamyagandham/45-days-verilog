`timescale 1ns/1ps
module tb_t_flipflop;
  reg t,clk;
  wire q;
  t_flipflop uut
    (
    .t(t),
    .clk(clk),
    .q(q)
  );
    always #5 clk = ~clk;

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, tb_t_flipflop);

    clk = 0;

    t = 0; #10;
    t = 1; #40;
    t = 0; #10;

    $finish;

end

endmodule
