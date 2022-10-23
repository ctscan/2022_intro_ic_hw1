timescale 1ns/10ps
include "Q2.v"

module Q2_tb;

    wire [15:0] address;
    reg [15:0] a;
    reg b, c;

  Q2 test(address, a, b, c);

    initial begin
      $dumpfile("Q2_wave.vcd");
        $dumpvars;

        a = 16'h0001;
        b = 0;
        c = 0;

        #10
        a = 16'h0002;
        b = 0;
        c = 1;

        #10
        a = 16'h0004;
        b = 1;
        c = 0;

        #10
        a = 16'h0008;
        b = 1;
        c = 1;

        #10
        a = 16'hFFFF;
        b = 1;
        c = 0;

        #10
        a = 16'hFFFF;
        b = 1;
        c = 1;

        #10
        a = 16'h0000;
        b = 1;
        c = 0;

        #10
        a = 16'h0000;
        b = 1;
        c = 1;
        
        #100 $finish;
    end

endmodule
