module Q3_tb();
    reg inp,clk;
    wire out;

    HW1_3(
	     .inp(inp),
        .clk(clk),
        .out(out)
    );

    initial begin
        inp=0;
        clk=0;
        #10;

        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;
        #10 inp = 0;
        #10 inp = 1;


    end

endmodule