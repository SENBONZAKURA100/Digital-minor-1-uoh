`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 11:40:31 AM
// Design Name: 
// Module Name: question2
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


module question2(
    input  wire clk,rst,
    input  wire [7:0] a_in,b_in,
    output reg  [7:0] a,b
);
always @(posedge clk or posedge rst) begin
    if (rst) begin
        a <= a_in;
        b <= b_in;
    end
    else begin
        a <= b;
        b <= a;
    end
end
endmodule
