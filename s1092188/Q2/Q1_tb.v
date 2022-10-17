module Q1_tb();
reg [15:0] d;
reg c;
reg s;

wire [15:0] address;

Q1 Q1(
    .d(d),
    .c(c),
    .s(s),
    .address(address)
);

initial begin
    d = 5;
    c = 0;
    s = 0;
    #5;
    
    d = 5;
    c = 0;
    s = 1;
    #5;
    
    d = 5;
    c = 1;
    s = 0;
    #5;
    
    d = 5;
    c = 1;
    s = 1;
end
endmodule