`timescale 1ns/1ps
module tb_demux_1to4;
reg in;
reg [1:0] sel;
wire out0,out1,out2,out3;
demux_1to4 uut
(
  .in(in),
  .sel(sel),
  .out0(out0),
  .out1(out1),
  .out2(out2),
  .out3(out3)
);
initial begin
  $dumpfile("wave.vcd");
  $dumpvars(0,tb_demux_1to4);
  in=1;
  sel=2'b00; #10;
  sel=2'b01; #10;
  sel=2'b10; #10;
  sel=2'b11; #10;
  $finish;
end 
endmodule
