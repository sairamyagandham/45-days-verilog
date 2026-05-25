module rom_design
  (
    input [3:0] addr,
    output reg [7:0] dout
  );
  always@(*) 
    begin
      case(addr)
         4'd0: dout = 8'h11;
        4'd1: dout = 8'h22;
        4'd2: dout = 8'h33;
        4'd3: dout = 8'h44;
        4'd4: dout = 8'h55;
        4'd5: dout = 8'h66;
        4'd6: dout = 8'h77;
        4'd7: dout = 8'h88;
        default: dout = 8'h00;
      endcase
    end
endmodule
    
