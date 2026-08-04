`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2026 10:23:19 PM
// Design Name: 
// Module Name: MUX_4_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_2_1(
    input a,b,sel,
    output y
    );
    assign y= (sel==1'b0)? a:b;
endmodule

module mux_4_1(
input i0,i1,i2,i3,
input[1:0]s,
output y
);
wire t1,t2;
MUX_2_1 m1(i0,i1,s[0],t1);
MUX_2_1 m2(i2,i3,s[1],t2);
MUX_2_1 m3(t1,t2,s[1],y);

endmodule

