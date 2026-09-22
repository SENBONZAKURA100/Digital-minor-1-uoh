`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:02:22 PM
// Design Name: 
// Module Name: question3_tb
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


module question3_tb();

reg clk,rst,ignition,seatbelt;
wire buzzer;

question3 uut(clk,rst,ignition,seatbelt,buzzer);

always #5 clk=~clk;

initial begin
    clk=0; rst=1;
    ignition=0; seatbelt=1;

    #10 rst=0;
    ignition=1;
    seatbelt=0;

    #70 seatbelt=1;
    #20 $finish;
end

endmodule
