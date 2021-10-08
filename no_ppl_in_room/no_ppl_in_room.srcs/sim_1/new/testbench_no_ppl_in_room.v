`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2021 13:38:39
// Design Name: 
// Module Name: testbench_no_ppl_in_room
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


module testbench_no_ppl_in_room();
reg clk1;
reg clk2;
reg reset;
//wire [0:3] difference;
wire low_crowd;
wire medium_crowd;
wire high_crowd;
no_ppl_in_room E(low_crowd,medium_crowd,high_crowd,clk1,clk2,reset);
initial
begin
//$display("%b %b %b",low_crowd,medium_crowd,high_crowd);
reset= 1;
clk1 = 0;
clk2 = 0;
#10
reset = 0;
end
initial 
begin
#20
clk1 = 1;
#10
clk1 = 0;
#10
clk1 = 1;
#10
clk1 = 0;
#10
clk1 = 1;
#10
clk1 = 0;
#10
clk1 = 1;
#10
clk1 = 0;
#10
clk1 = 1;
#10
clk1 = 0;
clk2 = 1;
#10
clk2 = 0;
#10
clk2 = 1;
#10
clk2 = 0;
#10
$finish;
end
endmodule
