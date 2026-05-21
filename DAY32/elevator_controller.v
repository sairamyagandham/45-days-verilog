module elevator_controller
  (
    input clk,
    input [1:0] req,
    output reg [1:0] floor
  );
  reg [1:0] state;
  parameter s0=2'b00,
            s1=2'b01,
            s2=2'b10;
  initial begin
    state=s0;
    floor=2'b00;
  end
  always@(posedge clk)
    begin
      case(state)
        s0:
          begin
            floor<=2'b00;
            if(req==2'b01)
              state<=s1;
            else if(req==2'b10)
              state<=s2;
            else
              state<=s0;
          end
        s1:
          begin
            floor<=2'b01;
            if(req==2'b00)
              state<=s0;
            else if(req==2'b01)
              state<=s2;
            else
              state<=s1;
          end
        s2:
          begin
            floor=2'b10;
            if(req==2'b00)
              state<=s0;
            else if(req==2'b01)
              state<=s1;
            else
              state<=s2;
          end
      endcase
    end
endmodule
            
