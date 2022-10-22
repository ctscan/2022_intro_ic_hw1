`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:29 10/14/2022 
// Design Name: 
// Module Name:    ic_homework 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ic_homework(
    input [15:0] d,
    input c,
    input s,
	 
    output [15:0] address
    );
    
	 wire z_one,z_two,z_three;
	 wire test_one_line,test_two_line,test_three_line,test_four_line;
	 wire m_one_line,m_two_line,m_three_line,m_four_line,m_five_line,m_six_line,m_seven_line,m_eight_line,m_nine_line,m_ten_line;
	 wire m_eleven_line,m_twelve_line,m_thirteen_line,m_fourteen_line,m_fifteen_line,m_sixteen_line,m_seventeen_line,m_eighteen_line,m_ninteen_line;
	 wire p_one,p_two,p_three,p_four;
	 
	 assign z_one = m_seven_line ^ m_six_line ^ m_five_line ^ m_four_line ^ m_three_line ^ m_two_line ^ m_one_line ^ ~c;
	 assign z_two = m_twelve_line ^ m_eleven_line ^ m_ten_line ^ m_nine_line ^ m_eight_line ^ ~z_one;
	 assign z_three = m_fifteen_line ^ m_fourteen_line ^ m_thirteen_line ^ ~z_two;
	 assign address[6] = ~ p_one;
	 assign address[11] = ~ p_two;
	 assign address[14] = ~ p_three;
	 assign address[15] = ~ p_four;
	 
    test test_one(
	     .e   (c),
		  .f   (d[0]),
		  .g   (m_one_line),      
	     .h   (d[1]),
		  .i   (m_two_line),
		  .j   (test_one_line),
		  .k   (address[1]),
		  .l   (address[0])
	 );
	 test test_two(
	     .e   (test_one_line),
		  .f   (d[2]),
		  .g   (m_three_line),      
	     .h   (d[3]),
		  .i   (m_four_line),
		  .j   (test_two_line),
		  .k   (address[3]),
		  .l   (address[2])
	 );
	 test test_three(
	     .e   (z_one),
		  .f   (d[7]),
		  .g   (m_eight_line),      
	     .h   (d[8]),
		  .i   (m_nine_line),
		  .j   (test_three_line),
		  .k   (address[8]),
		  .l   (address[7])
	 );
	 test test_four(
	     .e   (z_two),
		  .f   (d[12]),
		  .g   (m_thirteen_line),      
	     .h   (d[13]),
		  .i   (m_fourteen_line),
		  .j   (test_four_line),
		  .k   (address[13]),
		  .l   (address[12])
	 );
	 test test_five(
	     .e   (test_three_line),
		  .f   (d[9]),
		  .g   (m_ten_line),      
	     .h   (d[10]),
		  .i   (m_eleven_line),
		  .j   (test_five_line),
		  .k   (address[10]),
		  .l   (address[9])
	 );
	 test test_six(
	     .e   (test_two_line),
		  .f   (d[4]),
		  .g   (m_five_line),      
	     .h   (d[5]),
		  .i   (m_six_line),
		  .j   (test_six_line),
		  .k   (address[5]),
		  .l   (address[4])
	 );
	 
	 m m_one(
	     .n   (s),
		  .o   (d[0]),
		  .p   (m_one_line)
	 );
	 m m_two(
	     .n   (s),
		  .o   (d[1]),
		  .p   (m_two_line)
	 );
	 m m_three(
	     .n   (s),
		  .o   (d[2]),
		  .p   (m_three_line)
	 );
	 m m_four(
	     .n   (s),
		  .o   (d[3]),
		  .p   (m_four_line)
	 );
	 m m_five(
	     .n   (s),
		  .o   (d[4]),
		  .p   (m_five_line)
	 );
	 m m_six(
	     .n   (s),
		  .o   (d[5]),
		  .p   (m_six_line)
	 );
	 m m_seven(
	     .n   (s),
		  .o   (d[6]),
		  .p   (m_seven_line)
	 );
	 m m_eight(
	     .n   (s),
		  .o   (d[7]),
		  .p   (m_eight_line)
	 );
	 m m_nine(
	     .n   (s),
		  .o   (d[8]),
		  .p   (m_nine_line)
	 );
	 m m_ten(
	     .n   (s),
		  .o   (d[9]),
		  .p   (m_ten_line)
	 );
	 m m_eleven(
	     .n   (s),
		  .o   (d[10]),
		  .p   (m_eleven_line)
	 );
	 m m_twelve(
	     .n   (s),
		  .o   (d[11]),
		  .p   (m_twelve_line)
	 );
	 m m_thirteen(
	     .n   (s),
		  .o   (d[12]),
		  .p   (m_thirteen_line)
	 );
	 m m_fourteen(
	     .n   (s),
		  .o   (d[13]),
		  .p   (m_fourteen_line)
	 );
	 m m_fifteen(
	     .n   (s),
		  .o   (d[14]),
		  .p   (m_fifteen_line)
	 );
	 m m_sixteen(
	     .n   (d[6]),
		  .o   (test_six_line),
		  .p   (p_one)
	 );
	 m m_seventeen(
	     .n   (d[11]),
		  .o   (test_five_line),
		  .p   (p_two)
	 );
	 m m_eighteen(
	     .n   (d[14]),
		  .o   (test_four_line),
		  .p   (p_three)
	 );
	 m m_ninteen(
	     .n   (d[15]),
		  .o   (z_three),
		  .p   (p_four)
	 );
endmodule

module test(e,f,g,h,i,j,k,l);
    input e,f,g,h,i;
	 
	 output j,k,l;
	 
	 wire m;
	 
	 assign m = (~e) ^ g;
	 
	 assign j = g ^ i ^ (~e);
	 assign k =~(h ~^ m);
	 assign l =~(e ^ f);

endmodule
	 
module m(n,o,p);
    input n,o;
	 
	 output p;
	 
	 assign p = n ~^ o;
	 
endmodule
	 