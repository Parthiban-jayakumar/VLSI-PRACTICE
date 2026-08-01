`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2026 10:18:16 PM
// Design Name: 
// Module Name: endoer_8_3
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


module endoer_8_3(
    input [7:0]d,
    output [2:0]y
    );
    assign y= 
    (d[7] == 1'b 1) ? 3'b 111:
    (d[6] == 1'b 1) ? 3'b 111:
    (d[5] == 1'b 1)? 3'b 111:
    (d[4] == 1'b 1)? 3'b 111:
    (d[3] == 1'b 1)? 3'b 111:
    (d[2] == 1'b 1)? 3'b 111:
    (d[1] == 1'b 1)? 3'b 111:
    (d[0] == 1'b 1)? 3'b 111: 3'b xxx;
endmodule
