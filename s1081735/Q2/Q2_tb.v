module Q2_tb();

reg [15:0] d;
reg c,s;

wire [15:0] address;

Q2 q2(.d(d),.c(c),.s(s),.address(address));

initial
begin
    $dumpfile("Q2.vcd");
    $dumpvars;

    #0
     d=16'h0000;
    c=0;
    s=0;
    #1
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #2
     d=16'h0000;
    c=0;
    s=1;
    #3
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #4
     d=16'h0000;
    c=1;
    s=0;
    #5
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #6
     d=16'h0000;
    c=1;
    s=1;
    #7
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);


    #8
     d=16'hffff;
    c=0;
    s=0;
    #9
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #10
     d=16'hffff;
    c=0;
    s=1;
    #11
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #12
     d=16'hffff;
    c=1;
    s=0;
    #13
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #14
     d=16'hffff;
    c=1;
    s=1;
    #15
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #16
     d=16'h589a;
    c=0;
    s=0;
    #17
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #18
     d=16'h71f3;
    c=0;
    s=1;
    #19
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #20
     d=16'hc1ba;
    c=1;
    s=0;
    #21
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);

    #22
     d=16'h4ba3;
    c=1;
    s=1;
    #23
     $display("d:%h , c:%b , s:%b , address = %h", d,c,s,address);



    $finish;
end

endmodule
