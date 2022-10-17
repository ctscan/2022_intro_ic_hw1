module Q3(clk, in, out);
input clk, in;
output reg out;

parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100;
reg [2:0] state;

initial begin
    state = s0;
    out = 0;
end

always@(posedge clk) begin
    case(state)
        s0: state = in == 1 ? s1 : s0;
        s1: state = in == 1 ? s3 : s2;
        s2: state = in == 1 ? s0 : s4;
        s3: state = in == 1 ? s2 : s1;
        s4: state = in == 1 ? s4 : s3;
     endcase
     
     if(state == s0)
        out = 1;
     else
        out = 0;
end

endmodule