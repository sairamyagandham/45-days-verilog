`timescale 1ns/1ps
module tb_sequence_detector;
  reg in,clk;
  wire out;
  sequence_detector uut
  (
    .clk(clk),
    .in(in),
    .out(out)
  );
  always #5clk=~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_sequence_detector);
    clk = 0;

    in = 1; #10;
    in = 0; #10;
    in = 1; #10;
    in = 1; #10;
    in = 0; #10;
    in = 1; #10;
    
    $finish;

end

endmodule
  
