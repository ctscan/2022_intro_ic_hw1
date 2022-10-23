module Q3(i,c,out);
    input i,c;
    output reg out;
    
    parameter t0 = 3'b000,  t1 = 3'b001, t2 = 3'b010, t3 = 3'b011 , t4 = 3'b100;
    reg[2:0] state;

    initial begin
        state = n0;
        out = 0;
    end

    always @(posedge c) begin
        case (state)
            n0:
                state = i == 0 ? n0:n1;
            n1:
                state = i == 0 ? n2:n3;
            n2:
                state = i == 0 ? n4:n0;
            n3:
                state = i == 0 ? n1:n2;
            n4:
                state = i == 0 ? n3:n4;
        endcase

        out = state == n0;
    end

 endmodule

