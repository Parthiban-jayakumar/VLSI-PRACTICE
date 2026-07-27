`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2026 10:41:14 PM
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(
    input a,b,c,d,
    input [1:0]sel,
    output reg y
    );
     always@(*)
     if(sel==2'b00)
     begin
     y=a;
     end
     else if(sel==2'b01)
     begin
     y=b;
     end
     else if(sel==2'b10)
     begin
     y=c;
     end
     else
     y=d;
     
     
     
     
 
     
endmodule
