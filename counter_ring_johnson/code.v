`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2026 11:13:45 PM
// Design Name: 
// Module Name: counter_r
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


module counter_r(
    input clk,rst,
    output reg[1:0]doutr,doutj
    );
    //ring counter
    always@(posedge clk)
    begin
    if(rst==1'b1)
    begin
    doutr<=2'b01;
    end
    else
    begin
    doutr[1]<=doutr[0];
    doutr[0]<=doutr[1];
    end
    end
    
    ///johnson counter
    
    always@(posedge clk)
    begin
    if(rst==1'b1)
    begin
    doutj<=2'b00;
    end
    else
    begin
    doutj[1]<=(~doutj[0]);
    doutj[0]<=doutj[1];
    end
    end
    
    
    
endmodule
