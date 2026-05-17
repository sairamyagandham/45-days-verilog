module piso_shift_register
  (
    input clk,
    input load,
    input parallel_in,
    output reg q
  );
  reg [3:0] temp;
  always@(posedge clk)
    begin
      if(load)
        begin
          temp<=parallel_in;
        end
      else
        begin
          q<=temp[3];
           temp[3] <= temp[2];
        temp[2] <= temp[1];
        temp[1] <= temp[0];
        temp[0] <= 0;
    end

end

endmodule
