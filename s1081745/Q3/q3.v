module q3 (inp, out, clk);

    input inp;
    input clk;
    output reg out;
    parameter s0 = 3'b000,  s1 = 3'b001, s2 = 3'b010, s3 = 3'b011 , s4 = 3'b100;
    reg [2:0] state;

    initial
        begin
            state=t0;
            out=0;
        end

    always @(posedge clk)
        begin
            case(state)
                s0:
                    state=inp==0 ? s0:s1;
                s1:
                    state=inp==0 ? s2:s3;
                s2:
                    state=inp==0 ? s4:s0;
                s3:
                    state=inp==0 ? s1:s2;
                s4:
                    state=inp==0 ? s3:s4;
            endcase

            out = state == s0;
        end
endmodule