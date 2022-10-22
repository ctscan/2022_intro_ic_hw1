
 module q2_;

     reg c, s;
     reg [15:0] d;
     wire [15:0] address;

     q2 test(address, d, c, s);

    initial
        
    begin
        d = 16'h0001;
        c = 0;
        s = 0;
        
        #100                        
        c = 1;
        s = 0;

        #100
        c = 0;
        s = 1;
        
        #100
        c = 1;
        s = 1;
    end

 endmodule