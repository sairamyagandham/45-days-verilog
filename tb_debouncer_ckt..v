`timescale 1ns/1ps
module tb_debouncer;
  reg clk;
  reg btn;
  wire btn_out;
  debouncer uut
  (
    .clk(clk),
    .btn(btn),
    .btn_out(btn_out)
  );
  always #5 clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_debouncer);
    clk = 0;
    btn = 0;
    #10 btn = 1;
    #10 btn = 0;
    #10 btn = 1;
    #10 btn = 0;
    #10 btn = 1;
    #100;
    btn = 0;
    #20;
    $finish;
end
endmodule
