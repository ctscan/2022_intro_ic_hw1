module Q2_tb();
reg [15:0] d;
reg c;
reg s;

wire [15:0] address;

hw1 Q2(
  .d(d),
  .s(s),
  .c(c),
  .address(address)
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

  
