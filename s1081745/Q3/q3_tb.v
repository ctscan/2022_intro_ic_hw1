`timescale 1ns/1ns
`include "q3.v"

module q3_tb;

    wire out;
    reg clk;
    reg inp;

    q3 tb(
            .inp(inp),
            .out(out),
            .clk(clk)
        );

    initial
        begin
            clk = 0;
            inp = 0;

            #10 inp = 1;
            #10 inp = 0;
            #10 inp = 1;
            #10 inp = 0;
            #10 inp = 1;
            #10 inp = 0;
            #10 inp = 1;
            #10 $finish;
        end

    always #10 clk = ~clk;

endmodule