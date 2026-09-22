`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 11:47:11 AM
// Design Name: 
// Module Name: question2_tb
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


module question2_tb();

reg clk;
reg rst;
reg [7:0] a_in;
reg [7:0] b_in;
wire [7:0] a;
wire [7:0] b;
question2 uut (
    .clk(clk),
    .rst(rst),
    .a_in(a_in),
    .b_in(b_in),
    .a(a),
    .b(b)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    a_in = 8'd10;
    b_in = 8'd20;
    #10;
    rst = 0;
    #10;
    #10;
    #10;
    $finish;
end
endmodule
