`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2026 12:14:46 AM
// Design Name: 
// Module Name: inv
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


module inv(
    input vin,
    output vout
    );
    
    
    supply0 gnd;
supply1 vdd;

 pmos p1 (vout,vdd,vin);
 nmos n1 (vout,gnd,vin);
endmodule

