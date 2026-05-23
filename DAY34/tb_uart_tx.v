`timescale 1ns/1ps
module tb_uart_tx;
  reg clk;
  reg [7:0] data;
  reg start;
  wire tx;
  uart_tx uut(
    .clk(clk),
    .data(data),
    .start(start),
    .tx(tx)
  );
  always #5 clk=~clk;
  initial begin
  $dumpfile("wave.vcd");
  $dumpvars(0,tb_uart_tx);
    clk=0;
    data = 8'b10101010;
    start = 0; #10;
    start = 1; #120;
    start = 0;
    #20;
    $finish;
end
endmodule
