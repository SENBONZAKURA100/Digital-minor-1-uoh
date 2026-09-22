`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:15:57 PM
// Design Name: 
// Module Name: question5_tb
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


module question5_tb();
reg clk,rst_n,sensor,full_open,full_closed;
wire [1:0] state;
question5 uut(clk,rst_n,sensor,full_open,full_closed,state);
always #5 clk=~clk;
initial begin
    clk=0; rst_n=0;
    sensor=0; full_open=0; full_closed=1;
    #10 rst_n=1;
    sensor=1;
    #10 full_open=1; full_closed=0;
    #10 sensor=0;
    #10 full_closed=1; full_open=0;
    #10 $finish;
end
endmodule
