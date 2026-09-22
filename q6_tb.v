`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:26:05 PM
// Design Name: 
// Module Name: q6_tb
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


module q6_tb();

reg clk,rst,coin5,coin10;
wire dispense;

q6 uut(clk,rst,coin5,coin10,dispense);
always #5 clk=~clk;
initial begin
    clk=0; rst=1;
    coin5=0; coin10=0;
    #10 rst=0;
    coin5=1; #10 coin5=0;
    coin10=1; #10 coin10=0;
    #20 $finish;
end
endmodule
