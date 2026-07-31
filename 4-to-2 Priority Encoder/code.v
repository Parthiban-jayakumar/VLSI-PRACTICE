`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2026 09:41:37 PM
// Design Name: 
// Module Name: pri_encoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 

// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pri_encoder(
    input [3:0]d,
    output [1:0]y
    );
    assign y[0]=d[3]|((~d[2])&d[1]);
    assign y[1]=d[3]|d[2];
endmodule
