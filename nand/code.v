`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2026 11:22:25 PM
// Design Name: 
// Module Name: nand
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


module nand_gate(
    input a,b,
    output y
    );
    supply0 gnd;
    supply1 vdd;
    wire t1;
    pmos p1(y,vdd,a);
    pmos p2 (y,vdd,b);
    nmos n1(y,t1,a);
    nmos n2(t1,gnd,b);
endmodule
