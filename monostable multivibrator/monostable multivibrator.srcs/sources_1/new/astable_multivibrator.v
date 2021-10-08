`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2021 20:01:19
// Design Name: 
// Module Name: astable_multivibrator
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


module monostable_multivibrator(out,signal);
output reg out ;
input signal ;
initial out = 1'b0 ;
always @(negedge signal)
begin
out = 1'b1 ;
#50
out = 1'b0;
end
endmodule
