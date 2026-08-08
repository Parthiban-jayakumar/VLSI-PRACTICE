`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2026 10:33:20 AM
// Design Name: 
// Module Name: ram
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


module ram(
    input clk,
    input we,
    input reset,
    input [5:0]addr,
    input [7:0]din,
    output [7:0]dout
    );
    reg[7:0] mem[63:0];
    reg[7:0]temp;
    integer i=0;
    always@(posedge clk)
    begin
    if(reset==1'b1)
    begin
    for (i=0;i<64;i=i+1)
    begin
    mem[i]<=8'h00;
    end
    temp<=8'h00;
    end
    else
    begin
    if(we==1'b1)
    
    mem[addr]<=din;
    else
    temp<=mem[addr];
   
    end
    
    
    end
    assign dout=temp;
    
endmodule
