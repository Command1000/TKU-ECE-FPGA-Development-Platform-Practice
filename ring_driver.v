module ring_driver (
    input [3:0] state,
    output reg [6:0] h0, h1, h2, h3
);
    always @(*) begin
        h0 = 7'b1111111; h1 = 7'b1111111;
        h2 = 7'b1111111; h3 = 7'b1111111;
        case(state)
            4'd0: h3 = 7'b1111110; 
            4'd1: h2 = 7'b1111110; 
            4'd2: h1 = 7'b1111110; 
            4'd3: h0 = 7'b1111110; 
            4'd4: h0 = 7'b1111101; 
            4'd5: h0 = 7'b1111011; 
            4'd6: h0 = 7'b1110111; 
            4'd7: h1 = 7'b1110111; 
            4'd8: h2 = 7'b1110111; 
            4'd9: h3 = 7'b1110111; 
            4'd10: h3 = 7'b1101111; 
            4'd11: h3 = 7'b1011111; 
            default: ;
        endcase
    end
endmodule
