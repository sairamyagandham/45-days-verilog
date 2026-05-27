module fifo_design(
    input clk,
    input rst,
    input wr_en,
    input rd_en,
    input [7:0] din,
    output reg [7:0] dout
);

reg [7:0] fifo [7:0];

reg [2:0] wptr;
reg [2:0] rptr;

integer i;

always @(posedge clk)
begin

    if(rst)
    begin

        wptr <= 0;
        rptr <= 0;
        dout <= 0;

        for(i=0; i<8; i=i+1)
            fifo[i] <= 0;

    end

    else
    begin

        // Write Operation
        if(wr_en)
        begin

            fifo[wptr] <= din;

            wptr <= wptr + 1;

        end

        if(rd_en)
        begin

            dout <= fifo[rptr];

            rptr <= rptr + 1;

        end

    end

end

endmodule
