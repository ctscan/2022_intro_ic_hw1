module Q3(i,c,out);
    input i,c;
    output reg out;
    
    parameter n0 = 3'b000,  n1 = 3'b001, n2 = 3'b010, n3 = 3'b011 , n4 = 3'b100;
    reg[2:0] state;

    initial begin
        state = m0;
        out = 0;
    end

    always @(posedge c) begin
        case (state)
            m0 : state = i == 0 ? m0:m1;
            m1 : state = i == 0 ? m2:m3;
            m2 : state = i == 0 ? m4:m0;
            m3 : state = i == 0 ? m1:m2;
            m4 : state = i == 0 ? m3:m4;
        endcase

        out = state == m0;
    end

 endmodule
