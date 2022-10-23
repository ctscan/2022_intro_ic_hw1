module Q2 (address, a, b, c);

    output reg [15:0] address;
    input wire [15:0] a;
    input wire b, c;

    initial begin
        address = 16'h0000;
    end

    always @(*) begin
        if(b == 0) begin 
            address = a;
        end else begin
            if(c == 0) begin
                address = a + 1;
            end else begin
                address = a - 1;
            end
        end
    end
    
endmodule
