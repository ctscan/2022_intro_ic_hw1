module test_tb();

reg [3:0] d;

wire d_o;

test t(d,d_o);

initial
begin

    #0
     d=4'b0010;
    #1
     $display(d_o);

    $finish;
end

endmodule
