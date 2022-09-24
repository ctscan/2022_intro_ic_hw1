module Q3(inp,out,clock);
    input inp,clock;
    output reg out;
    parameter n0 = 3'b000 ,n1 = 3'b001 ,n2 = 3'b010 ,n3 = 3'b011 ,n4 = 3'b100 ;
    reg[2:0] state;

    initial begin
        state=n0;
        out=0;
    end

    always @(posedge clock)begin
        case(state)
            n0: 
                state=inp==0 ? n0:n1;
            n1: 
                state=inp==0 ? n2:n3;
            n2: 
                state=inp==0 ? n4:n0;
            n3: 
                state=inp==0 ? n1:n2;
            n4: 
                state=inp==0 ? n3:n4;
        endcase

        out=state==n0;
    end
endmodule