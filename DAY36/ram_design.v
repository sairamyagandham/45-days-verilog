module ram_design
  (
    input clk,
    input we,
    input [3:0] addr,
    input [7:0] din,
    output reg [7:0] dout
  );
  reg [7:0] mem[15:0];
  always@(posedge clk)
    begin
      if(we)
        begin
          mem[addr]<=din;
        end
      else 
        begin
          dout<=mem[addr];
        end
    end
endmodule
