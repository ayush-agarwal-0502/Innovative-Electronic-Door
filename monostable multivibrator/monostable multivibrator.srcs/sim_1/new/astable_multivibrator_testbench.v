`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2021 12:18:35
// Design Name: 
// Module Name: astable_multivibrator_testbench
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


module monostable_multivibrator_testbench();
wire out ;
reg signal ;
astable_multivibrator A(out,signal);
initial 
begin 
signal=1'b1 ;
#20 
signal = 1'b0;
#10
signal = 1'b1;
#100
signal = 1'b0;
#5
signal = 1'b1;
end
initial #200 $finish;
endmodule
