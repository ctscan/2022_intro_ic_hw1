module Q2(d,c,s,address);
     input [15:0] d;
     input c,s;
     output reg [15:0] address; 
        if(c==0)    
            address=d;
        else if (s==1) 
            address=d-1; 
        else 
            adress=d+1;
     end

 endmodule
