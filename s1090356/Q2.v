module Q2(d,c,s,address);
    input wire [15:0] d;
    input wire c;
    input wire s;
    output reg [15:0] address;
    always @(*) begin
    begin
        if(c==0)begin
            address=d;
        end
        else if(c==1&&s==0)begin
            address=d+1;
        end
        else if(c==1&&s==1)begin
            address=d-1;
        end
        else begin
            address=d;
        end
    end
        
endmodule
