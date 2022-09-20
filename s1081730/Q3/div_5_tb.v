`timescale 1ns/1ns
`include "div_5.v"

module div_5_tb;

    wire out;
    reg clk;
    reg inp;

    div_5 test(out, clk, inp);

    initial begin
        $dumpfile("div_5.vcd");
        $dumpvars;

        clk = 0;
        inp = 0;

        #4  inp = 1;
        #10 inp = 0;
        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;
        #100 $finish;
    end

    always #5 clk = ~clk;

endmodule