`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:25:48 PM
// Design Name: 
// Module Name: q6
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


module q6(
    input clk,rst,
    input coin5,coin10,
    output reg dispense
);
localparam S0=0, S5=1, S10=2, DISP=3;
reg [1:0] state,next;
always @(posedge clk or posedge rst)
    if(rst) state <= S0;
    else state <= next;
always @(*) begin
    next=state;
    case(state)
S0:if(coin5) next=S5;
   else if(coin10) next=S10;
S5:if(coin5) next=S10;
   else if(coin10) next=DISP;
S10:if(coin5 || coin10) next=DISP;
DISP:next=S0;
    endcase
end
always @(*)
    dispense = (state==DISP);
endmodule
