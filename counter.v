module counter (
    input clk,
    input reset,
    output reg [7:0] show
);

always @(posedge clk or posedge reset) begin
    if (reset)
        show <= 8'd0;
    else
        show <= show + 1'b1;
end

endmodule
