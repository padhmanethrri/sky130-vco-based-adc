module sync_counter (
    input  wire       gclk,
    input  wire       rst_n,
    input  wire       en,
    output reg [9:0]  count
);

    always @(posedge gclk) begin
        if (!rst_n)
            count <= 10'd0;
        else if (en)
            count <= count + 10'd1;
    end

endmodule
