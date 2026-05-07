`timescale 1ns/1ps
module tb_full_subtractor;
  reg a,b,bin;
  wire diff,bout;
  full_subtractor uut
  (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
  );
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_full_subtractor);
              a=0; b=0; bin=0; #10;
              a=0; b=0; bin=1; #10;
              a=0; b=1; bin=0; #10;
              a=0; b=1; bin=1; #10;
              a=1; b=0; bin=0; #10;
              a=1; b=0; bin=1; #10;
              a=1; b=1; bin=0; #10;
              a=1; b=1; bin=1; #10;
            
    $finish;
  end            
endmodule
