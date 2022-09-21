module q2 (address, d, c, s);

    output reg [15:0] address;
    input wire [15:0] d;
    input wire c, s;

    initial begin
        address = 16'h0000;
    end

    always @(*) begin
        if(c == 0) address = d;
        else if(c == 1 && s == 0) address = d + 1;
        else if(c == 1 && s == 1) address = d - 1;
        else;
    end
    
endmodule