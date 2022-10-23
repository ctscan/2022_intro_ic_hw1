`timescale 1ns/1ns

module Q3_tb();
    reg inp,clk;
    wire out;

    Q3 test(inp,out,clk);

    always #10 clk=~clk;

    initial begin

        inp=0;clk=0;

        #9 inp=1;
        #20 inp=0;
        #20 inp=1;
        #20 inp=0;
        #20 inp=1;
        #20 inp=0;
        #20 inp=1;
        #20 inp=0;
        #20 inp=1;
        #200 $finish;
    
    end

endmodule