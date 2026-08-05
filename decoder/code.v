`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2026 10:26:09 PM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [1:0]d,
    input e,
    output [3:0]y
    );
    assign y[0]= e&(~d[1])&(~d[0]);
    assign y[1]=e&d[0]&(~d[1]);
    assign y[2]= e&d[1]&(~d[0]);
    assign y[3]=e&d[1]&d[0];
    
endmodule
