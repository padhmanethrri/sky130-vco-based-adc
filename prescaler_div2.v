module prescaler_div2 (
    input  wire clk_in,
    input  wire rst_n,
    output reg  clk_out
);

    always @(posedge clk_in) begin
        if (!rst_n)
            clk_out <= 1'b0;
        else
            clk_out <= ~clk_out;
    end

endmodule