module Q3_tb();
    reg in,clk;
    wire out;
    
    Q3 Q3(
        .clk(clk),
        .in(in),
        .out(out)
    );
    
    initial begin
        in=0;
        clk=0;
        #5;
        
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10
        in = 0;
    end
    
    always #5 clk=~clk;
endmodule