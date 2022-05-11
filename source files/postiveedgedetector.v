`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2022 10:47:57 AM
// Design Name: 
// Module Name: postiveedgedetector
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


module postiveedgedetector( input in,input clk,output out);
reg delay;

always @(posedge clk) begin
delay <= in;
end

assign out= in&~delay;

endmodule
