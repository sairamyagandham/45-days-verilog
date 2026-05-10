`timescale 1ns/1ps
module tb_jk_flipflop;
  reg j,k,clk;
  wire q;
  jk_flipflop uut
  (
    .j(j),
    .k(k),
    .clk(clk),
    .q(q)
  );
  always #5 clk=~clk;
    initial begin
      $dumpfile("wave.vcd");
      $dumpvars(0,tb_jk_flipflop);
      clk = 0;

    j = 0; k = 0; #10;
    j = 0; k = 1; #10;
    j = 1; k = 0; #10;
    j = 1; k = 1; #20;

    $finish;

end

endmodule
