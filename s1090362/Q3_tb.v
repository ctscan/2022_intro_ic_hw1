module Q3_tb();
    reg inp,clk;
    wire out;
    
    hw1 Q3(
        .clk(clk),
        .in(in),
        .out(out)
    );
    
    initial begin
        inp=0;
        clk=0;
        #10;
        
        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;

       
    end
    
    always #10 clk=~clk;
endmodule
