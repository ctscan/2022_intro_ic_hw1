`include "Q3.v"

module Q3_tb;

    wire out;
    reg clk;
    reg inp;

    Q3 test(out, clk, inp);

    initial begin
        $dumpfile("Q3_wave.vcd");
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