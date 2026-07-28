`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2026 10:38:36 PM
// Design Name: 
// Module Name: din_seg
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


module din_seg(
    input [3:0] pin,
    output [6:0] sout
    );
    reg [7:0] temp=0;
    always @(*)
    begin
    case (pin)
    4'b0000:temp=8'hfc;
    4'b0001:temp=8'h60;
    4'b0010:temp=8'hf2;
    4'b0011:temp=8'h66;
    4'b0100:temp=8'hb6;
    4'b0101:temp=8'hbe;
    4'b0110:temp=8'hb0;
    4'b0111:temp=8'hff;
    4'b1000:temp=8'hf0;
    4'b1001:temp=8'h00;
    
    endcase
   
    
    
    end
     assign sout =temp[7:1];
endmodule
