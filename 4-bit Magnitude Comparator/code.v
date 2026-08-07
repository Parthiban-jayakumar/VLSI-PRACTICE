`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2026 10:21:45 PM
// Design Name: 
// Module Name: 4_b_com
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


module four_b_com(
     input [0:3] a,b,
     output  reg g,l,e
    );
    always@(a or b)begin
    g=0;
    l=0;
    e=0;
     if(a>b)begin
        g=1;
     end  else if (a<b) begin
        l=1;
     end else  begin
        e=1;
     
     end
     end 
     
    
endmodule
