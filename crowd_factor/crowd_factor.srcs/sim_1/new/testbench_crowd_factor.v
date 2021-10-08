`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2021 00:45:07
// Design Name: 
// Module Name: testbench_crowd_factor
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

//testbench for crowd factor calculator 
module testbench_crowd_factor();
//declaring the inputs and outputs 
reg clk1, clk2 ,reset;
wire [0:2] k;
crowd_factor A(k,clk1,clk2,reset);
initial
begin
//initialising the values 
reset= 1;
clk1 = 0;
clk2 = 0;
#10
reset = 0;
end
//block for setting the values
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
#30
$finish;
end
endmodule
