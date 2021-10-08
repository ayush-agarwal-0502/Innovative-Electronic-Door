`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2021 17:02:22
// Design Name: 
// Module Name: testbench_times_gate_operated
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

//testbench for magic counter
module testbench_times_gate_operated();
//times_gate_operated A(count1,count2,clk1);
wire [0:3] count1;
wire [0:3] count2;
reg clk1;
times_gate_operated G(count1,count2,clk1);
//testbench code for clock attached to this counter
initial 
begin 
clk1 = 0;
repeat(50)
#10 clk1=~clk1 ;
$finish;
end
endmodule
