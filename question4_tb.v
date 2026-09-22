`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:09:17 PM
// Design Name: 
// Module Name: question4_tb
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


module question4_tb();
reg clk,rst,occupancy,is_dark,manual_on;
wire light_on,light_latch;
question4 uut(clk,rst,occupancy,is_dark,manual_on,
             light_on,light_latch);
always #5 clk=~clk;
initial 
begin
    clk=0; rst=1;
    occupancy=0; is_dark=0; manual_on=0;
    #10 rst=0;
    occupancy=1; is_dark=1;
    #20;
    occupancy=0;
    #20;
    manual_on=1;
    #10 manual_on=0;
    #20 $finish;
end
endmodule

