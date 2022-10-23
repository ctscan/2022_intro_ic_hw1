module Q2_tb;
    reg c;
    reg s;
    reg [15:0] d;
    wire [15:0] address;

    Q2 test(d,c,s,address);

    initial begin
        $dumpfile("q2_wave.vcd");
        $dumpvars;

        d = 16'h0000;
        c = 0;s = 0;

        #10
        d = 16'h0800;
        c = 0;s = 1;

        #10
        d = 16'h64b3;
        c = 1;s = 0;

        #10
        d = 16'hffff;
        c = 1;s = 0;

        #10
        d = 16'h0000;
        c = 1;s = 0;

        #10
        d = 16'h34a6;
        c = 1;s = 1;

        #10
        d = 16'hffff;
        c = 1;s = 1;

        #10
        d = 16'h0000;
        c = 1;s = 1;

        #100 $finish;
    end

endmodule
