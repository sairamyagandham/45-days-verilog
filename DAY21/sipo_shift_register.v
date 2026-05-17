module sipo_shift_register
  (
    input clk,
    input data_in,
    output reg [3:0] q
  );
  initial
    q=4'b0000;
  always@(posedge clk)
    begin
      q[3] <= q[2];
    q[2] <= q[1];
    q[1] <= q[0];
    q[0] <= data_in;

end
endmodule
