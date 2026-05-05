`timescale 1ns/1ps
module tb_mux_4to1;
  reg a,b,c,d;
  reg [1:0] sel;
  wire y;
  mux_4to1 uut
  (
  .a(a),
  .b(b),
  .c(c),
  .d(d),
  .sel(sel),
  .y(y)
  );
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_mux_4to1);
    //inputs
    a=1; b=0; c=1; d=0;
    
   sel=2'b00; #10;
   sel=2'b01; #10;
   sel=2'b10; #10;
   sel=2'b11; #10;
   
    $finish;
  end
  endmodule
