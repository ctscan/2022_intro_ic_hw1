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
    clk = 1'b0;

    num=1'b1;
    #10 //第一個cycle後
     num <= 1'b0;
    $display("Input : %b , Output : %b",num,d5_s);

    #10
     num <= 1'b1;
    $display("Input : %b , Output : %b",num,d5_s);

    #10
     num <= 1'b0;
    $display("Input : %b , Output : %b",num,d5_s);

    #10
     num <= 1'b1;
    $display("Input : %b , Output : %b",num,d5_s);

    #10
     $display("Input : %b , Output : %b",num,d5_s);

    $finish;

end

endmodule
