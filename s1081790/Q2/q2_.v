module q2_;

    reg c, s;
    reg [15:0] d;
    wire [15:0] address;

    q2 test(c, s, d, address);

    initial;
    begin
        $dumpfile("q2_w.vcd");
        $dumpvars;
        
        #10
        d = 16'h0000;
        c = 0; s = 0;

        d = 16'h0002;
        c = 0; s = 1;

        d = 16'h0008;
        c = 1; s = 0;

        d = 16'h000f;
        c = 1; s = 1;

        d = 16'hffff;
        c = 1; s = 0;

        d = 16'hffff;
        c = 1; s = 1; 
                 
        #100 finish    
    end

 endmodule
