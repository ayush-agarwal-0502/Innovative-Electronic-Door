`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2021 12:58:15
// Design Name: 
// Module Name: testbench_mod_10_counter
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


module testbench_mod_10_counter();
reg clk;
reg reset;
wire [0:3] count;
mod_10_counter A(count,clk,reset);
initial 
begin
clk=0 ;
forever
#20 clk = ~clk ;
end
initial
begin
reset=1 ;
#40
reset = 0;
end
initial #500 $finish ;
endmodule
