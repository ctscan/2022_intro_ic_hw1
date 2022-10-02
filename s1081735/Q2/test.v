module test(
           input [3:0]d,
           output d_o
       );

// nor(d_o,d[0],d[1],d[2],d[3]);

nor(d_o,d[3:0]);

// nor(d_o,[3:0]d);

endmodule
