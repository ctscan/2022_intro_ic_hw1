module Q3 (out, clk, inp);

    output reg out;

    input wire clk;

    input wire inp;

    parameter h0 = 3'b000, h1 = 3'b001, h2 = 3'b010, h3 = 3'b011, h4 = 3'b100;
    reg [2:0] state;

    initial begin

        state = h0;

        out = 0;

    end

    always @(posedge clk) begin
        case (state)
            h0:
                state = inp == 0 ? h0 : h1;
            h1:
                state = inp == 0 ? h2 : h3;
            h2:
                state = inp == 0 ? h4 : h0;
            h3:
                state = inp == 0 ? h1 : h2;
            h4:
                state = inp == 0 ? h3 : h4;
        endcase

        out = state == h0;
    end
    
endmodule