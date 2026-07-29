`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2026 10:59:40 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,rst,
    input id,
    input invalude,
    output [3:0] dout
    );
    reg[3:0] temp;
    initial begin
    temp=0;
    end
    always@(posedge clk , posedge rst)
    begin
    if(rst==1'b1)
    begin
    temp=4'b0000;
    end
    else
    begina
    if(id==1'b1)
    begin
    temp<=invalude;
    end 
    else
    temp=temp+1;
    end
    end
    assign dout=temp;
    
endmodule
