`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:15:32 PM
// Design Name: 
// Module Name: question5
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


module question5(
    input clk,rst_n,sensor,full_open,full_closed,
    output reg [1:0] state
);
localparam IDLE=0, OPENING=1, OPEN=2, CLOSING=3;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        state <= IDLE;
    else 
    case(state)
IDLE:if(sensor) state <= OPENING;
OPENING:if(full_open) state <= OPEN;
OPEN:if(!sensor) state <= CLOSING;
CLOSING:if(full_closed) state <= IDLE;
    endcase
end
endmodule
