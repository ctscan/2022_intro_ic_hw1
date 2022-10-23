module Q3_tb();
    reg I,C;
    wire O;

  Q3(.I(I),.C(C),.O(O));
    initial begin
        I=0;
        C=0;
        #10;
        
        #10 I = 1;
        #10 I = 0;
        #10 I = 1;
        #10 I = 0;
        #10 I = 1;
        #10 I = 0;
        #10 I = 1;
        #10 I = 0;
        #10 I = 1;

    end

endmodule
