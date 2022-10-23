module q3 (out, clk, inp);
    
    input wire inp;
    input wire clk;    
    output reg out;
    

    parameter m0 = 3'b000, m1 = 3'b001, m2 = 3'b010, m3 = 3'b011, m4 = 3'b100;
    reg [2:0] state;

    initial begin
        state = m0;
        out = 0;
    end

    always @(posedge clk) begin
        case (state)
            m0:state = inp == 0 ? m0 : m1;
            m1:state = inp == 0 ? m2 : m3;
            m2:state = inp == 0 ? m4 : m0;
            m3:state = inp == 0 ? m1 : m2;
            m4:state = inp == 0 ? m3 : m4;
        endcase
        out = state == m0;
    end
    
endmodule