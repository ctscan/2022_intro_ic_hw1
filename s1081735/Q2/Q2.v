module Q2(
           input [15:0]d,
           input c,s,
           output [15:0]address,
           output testbit
       );
wire [15:0] out_temp;
wire [15:0] out_temp2;
wire nor1,nor2,nor3;
wire b1_top_out,b2_top_out,b3_top_out,b4_top_out,b5_top_out,b6_top_out;

assign out_temp = {d[15],d[14:0]~^{15{s}}}; //xnor

test b1(out_temp[1],d[1],out_temp[0],d[0],c,b1_top_out,out_temp2[1],out_temp2[0]);
test b2(out_temp[3],d[3],out_temp[2],d[2],b1_top_out,b2_top_out,out_temp2[3],out_temp2[2]);
test b3(out_temp[5],d[5],out_temp[4],d[4],b2_top_out,b3_top_out,out_temp2[5],out_temp2[4]);
xnor(out_temp2[6],d[6],b3_top_out);

nor(nor1,!c,out_temp[6],out_temp[5],out_temp[4],out_temp[3],out_temp[2],out_temp[1],out_temp[0]);

test b4(out_temp[8],d[8],out_temp[7],d[7],nor1,b4_top_out,out_temp2[8],out_temp2[7]);
test b5(out_temp[10],d[10],out_temp[9],d[9],b4_top_out,b5_top_out,out_temp2[10],out_temp2[9]);
xnor(out_temp2[11],d[11],b5_top_out);

nor(nor2,~nor1,out_temp[11],out_temp[10],out_temp[9],out_temp[8],out_temp[7]);

test b6(out_temp[13],d[13],out_temp[12],d[12],nor2,b6_top_out,out_temp2[13],out_temp2[12]);
xnor(out_temp2[14],d[14],b6_top_out);

nor(nor3,~nor2,out_temp[14],out_temp[13],out_temp[12]);

xnor(out_temp2[15],d[15],nor3);

assign address = ~out_temp2;

endmodule


    module test (
        input a,
        input b,
        input c,
        input d,
        input e,
        output o1,
        output o2,
        output o3
    );
nor(o1,c,a,~e);

wire pre;
nor(pre,~e,c);
xnor(o2,b,pre);

xnor(o3,e,d);

endmodule
