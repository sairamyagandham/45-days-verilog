`timescale 1ns/1ps;
module tb_rom_design;
  reg [3:0] addr;
  wire [7:0] dout;
  rom_design uut
  (
    .addr(addr),
    .dout(dout)
  );
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_rom_design);
    addr = 4'd0; #10;
    addr = 4'd1; #10;
    addr = 4'd2; #10;
    addr = 4'd3; #10;
    addr = 4'd4; #10;
    $finish;
  end
endmodule
