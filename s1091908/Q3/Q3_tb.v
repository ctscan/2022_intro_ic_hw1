module Q3_tb();
    reg in,clk;
    wire out;

    hw1 Q3(
        .clk(clk),
        .in(in),
        .out(out)
    );

    initial begin
        in=0;
        clk=0;
        #10;

        inp = 1;
        #10
        inp = 0;
        #10
        inp = 1;
        #10
        inp = 0;
        #10
        inp = 1;
        #10
        inp = 0;
        #10
        inp = 1;
        #10
        inp = 0;
        #10
        inp = 1;
    end

    always #5 clk=~clk;
endmodule
