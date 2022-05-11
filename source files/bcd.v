`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 11:14:18 AM
// Design Name: 
// Module Name: bcd
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


module sdcc (x, enable , y);
input [3:0] x;

//input [1:0] select ;
input enable ;
output reg [6:0] y;
//output reg [3:0] enableOut ;
 always @(x, enable ) begin
 if( enable )
 case (x)
4'b0000 : y = 7'b0000_001 ;
4'b0001 : y = 7'b1001_111 ;
4'b0010 : y = 7'b0010_010 ;
4'b0011 : y = 7'b0000_110 ;
4'b0100 : y = 7'b1001_100 ;
4'b0101 : y = 7'b0100_100 ;
4'b0110 : y = 7'b0100_000 ;
4'b0111 : y = 7'b0001_111 ;
4'b1000 : y = 7'b0000_000 ;
4'b1001 : y = 7'b0000_100 ;
4'b1111 : y=  7'b1111_110 ;

endcase
else
y = 7'b1111_111 ;
end
//always @(enableOut) begin
//case (select)  
//2'b00 : enableOut = 4'b0111;
//2'b01 : enableOut = 4'b1011;
//2'b10 : enableOut = 4'b1101;
//2'b11 : enableOut = 4'b1110;
//default :  enableOut = 4'b1111;
//endcase
//end
endmodule
