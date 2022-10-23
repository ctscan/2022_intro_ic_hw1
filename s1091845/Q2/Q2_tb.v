`timescale 1ns/10ps

module Q2_tb();
reg [15:0]d;
reg s;
reg c;

wire [15:0] address;

Q2 uut(
    .d(d),
    .c(c),
    .s(s),
    .address(address)
);

initial begin
    d=16'h0002;c=0;s=0;

    #10
    d=16'h00ff;c=0;s=0;

    #10
    d=16'h0003;c=0;s=1;

    #10
    d=16'h0010;c=0;s=1;

    #10
    d=16'h0004;c=1;s=0;

    #10
    d=16'h000f;c=1;s=0;

    #10
    d=16'h0005;c=1;s=1;

    #10
    d=16'hf0a3;c=1;s=1;

    #80 $finish;
end

endmodule