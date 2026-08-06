`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2026 10:52:10 PM
// Design Name: 
// Module Name: shift_register
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


module shift_register(
    input clk,clr,din,
    output reg dout
    );
    always@ (posedge clk)
    begin
    if(clr==1'b1)
    dout<=1'b0;
    else
    dout<=din;
    end
endmodule
