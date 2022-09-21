`timescale 1ns/10ps
`include "q2.v"

module q2_tb;

    wire [15:0] address;
    reg [15:0] d;
    reg c, s;

    q2 test(address, d, c, s);

    initial begin
        $dumpfile("q2_wave.vcd");
        $dumpvars;

        d = 16'h0001;
        c = 0;
        s = 0;

        #10
        d = 16'h0002;
        c = 0;
        s = 1;

        #10
        d = 16'h0004;
        c = 1;
        s = 0;

        #10
        d = 16'h0008;
        c = 1;
        s = 1;

        #10
        d = 16'hFFFF;
        c = 1;
        s = 0;

        #10
        d = 16'hFFFF;
        c = 1;
        s = 1;

        #10
        d = 16'h0000;
        c = 1;
        s = 0;

        #10
        d = 16'h0000;
        c = 1;
        s = 1;
        
        #100 $finish;
    end

endmodule