`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:08:51 PM
// Design Name: 
// Module Name: question4
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


module question4(
    input clk,rst,
    input occupancy,is_dark,manual_on,
    output reg light_on,light_latch
);
always @(posedge clk or posedge rst) begin
    if(rst) begin
        light_latch <= 0;
        light_on <= 0;
    end
    else begin
        if((occupancy && is_dark) || manual_on)
            light_latch <= 1;
        light_on <= (occupancy && is_dark) ||
                    manual_on || light_latch;
    end
end
endmodule
