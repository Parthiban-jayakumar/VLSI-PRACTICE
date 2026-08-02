`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2026 12:04:53 AM
// Design Name: 
// Module Name: nand_to_and
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


module nand_to_and(
    input a,b,
    output y
    );
    supply0 gnd;
    supply1 vdd;
    wire t1,t2;
    pmos p1(t2,vdd,a);
    pmos p2 (t2,vdd,b);
    nmos n1(t2,t1,a);
    nmos n2(t1,gnd,b);
    
    //inverter convert nand to and
    
    pmos p3(y,vdd,t2);
    nmos n3(y,gnd,t2);
endmodule
