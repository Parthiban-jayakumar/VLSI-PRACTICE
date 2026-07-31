`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2026 11:13:41 PM
// Design Name: 
// Module Name: half_gate
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


module full_gate(
    input a,b,cin,
    output sum, carry
    );
    wire t1,t2,t3;
    assign t1=a^b;
    assign t2=t1&cin;
    assign t3=a&b;
    assign sum=t1^cin;
    assign carry=t3|t2;
endmodule
