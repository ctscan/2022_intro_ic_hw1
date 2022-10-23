`timescale 1ns/1ns
`define clock_period 20
`include "q2.v"

module q2_tb;

    wire [15:0] address;
    reg [15:0] d;
    reg c, s;


    q2 tb(
        .d(d),
        .c(c),
        .s(s),
        .address(address)
    );


    initial
        begin

            d = 16'h0001;
            c = 0;
            s = 0;

            #100
            c = 0;
            s = 1;

            #100
            c = 1;
            s = 0;

            #100
            c = 1;
            s = 1;

        end

endmodule
