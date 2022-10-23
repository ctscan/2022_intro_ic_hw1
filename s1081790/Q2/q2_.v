module q2_;

    reg c, s;
    reg [15:0] d;
    wire [15:0] address;

    q2 test(c, s, d, address);

    initial;
    begin

        d = 16'h0001;        #10
        c = 0;
        s = 0;

        d = 16'h0002;
        c = 0;
        s = 1;

        d = 16'h0004;
        c = 1;
        s = 0;

        d = 16'h0008;
        c = 1;
        s = 1;

        d = 16'hFFFF;
        c = 1;
        s = 0;

        d = 16'hFFFF;
        c = 1;
        s = 1;              #100 finish
       
    end

 endmodule
