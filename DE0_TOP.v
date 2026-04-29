module DE0_TOP (
    input  CLOCK_50,     
    input  [2:0] BUTTON,   
    input  [9:0] SW,       
    output [6:0] HEX0_D, HEX1_D, HEX2_D, HEX3_D,
    output HEX0_DP, HEX1_DP, HEX2_DP, HEX3_DP
);
    wire [3:0] current_state;
    reg [31:0] limit;

    assign {HEX0_DP, HEX1_DP, HEX2_DP, HEX3_DP} = 4'b1111;


    always @(*) begin
        case(SW[1:0])
            2'b00:   limit = 32'd50_000_000; 
            2'b01:   limit = 32'd25_000_000;
            2'b10:   limit = 32'd5_000_000;  
            2'b11:   limit = 32'd50_000;     
            default: limit = 32'd50_000_000;
        endcase
    end

    ring_controller u_control (
        .clk(CLOCK_50),
        .rst_n(BUTTON[0]),
        .limit(limit),
        .state(current_state)
    );

    ring_driver u_driver (
        .state(current_state),
        .h0(HEX0_D), .h1(HEX1_D), .h2(HEX2_D), .h3(HEX3_D)
    );

endmodule