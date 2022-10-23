module QQQ2();
    reg [15:0] d;
    reg c,s;

    wire [15:0] address;

    Q2(
        d(d),
        c(c),
        s(s),
        address(address)
    );

    initial begin
        d = 5;
        c = 0;
        s = 0;
        #10;

        d = 5;
        c = 0;
        s = 1;
        #10;

        d = 5;
        c = 1;
        s = 0;
        #10;

        d = 5;
        c = 1;
        s = 1;
    end
 endmodule
