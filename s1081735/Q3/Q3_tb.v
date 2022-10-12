module Q3_tb();

reg clk;
reg num;
wire d5_s;

// clk
always #5 clk = ~clk;

Q3 q3 (
       .clk (clk),
       .num (num),
       .d5_s (d5_s)
   );


initial
begin
    $dumpfile("Q3.vcd");
    $dumpvars;

    num=1'b0;
    clk = 1'b0;

    #4
     num=1'b1;

    #10
     $display("Input : %b , Output : %b",num,d5_s);
    num <= 1'b0;

    #10
     $display("Input : %b , Output : %b",num,d5_s);
    num <= 1'b1;

    #10
     $display("Input : %b , Output : %b",num,d5_s);
    num <= 1'b0;

    #10
     $display("Input : %b , Output : %b",num,d5_s);
    num <= 1'b0;

    #10
     $display("Input : %b , Output : %b",num,d5_s);

    $finish;

end

endmodule
