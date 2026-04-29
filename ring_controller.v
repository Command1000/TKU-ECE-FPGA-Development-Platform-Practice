module ring_controller (
    input clk,
    input rst_n,
    input [31:0] limit,
    output reg [3:0] state
);
    reg [31:0] count;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= 0;
            state <= 0;
        end else begin
            if (count >= limit - 1) begin
                count <= 0;
                if (state >= 11) state <= 0; 
                else state <= state + 1;
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule