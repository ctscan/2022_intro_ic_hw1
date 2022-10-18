module Q3_tb();

reg clk;
reg num;
wire ans;

// clk
always #3 clk = ~clk;

Q3 q3 (
       .clk (clk),
       .num (num),
       .ans (ans)
   );


initial
begin
    $dumpfile("Q3.vcd");
    $dumpvars;
    clk = 1'b0;

    num = 1'b1;
    #6 
     num <= 1'b0;
    $display("Input : %b , Output : %b",num,ans);

    #6
     num <= 1'b1;
    $display("Input : %b , Output : %b",num,ans);

    #6
     num <= 1'b0;
    $display("Input : %b , Output : %b",num,ans);

    #6
     num <= 1'b1;
    $display("Input : %b , Output : %b",num,ans);

    #6
     $display("Input : %b , Output : %b",num,ans);

    $finish;

end

endmodule