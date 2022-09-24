`include "Q3.v"
`timescale 1ns/1ns

module Q3_tb();
    reg inp,clock;
    wire out;

    Q3 test(inp,out,clock);

    always #10 clock=~clock;

    initial begin
        $dumpfile("Q3.vcd");
        $dumpvars;

        inp=0;clock=0;

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

