`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 11:58:51 AM
// Design Name: 
// Module Name: question3
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


module question3(
    input clk,rst,ignition,seatbelt,
    output reg buzzer
);
reg [2:0] count;
always @(posedge clk or posedge rst) begin
    if(rst) begin
        count <= 0;
        buzzer <= 0;
    end
    else if(!ignition || seatbelt) begin
        count <= 0;
        buzzer <= 0;
    end
    else if(count < 5) begin
        count <= count + 1;
        if(count == 4)
            buzzer <= 1;
    end
end
endmodule
