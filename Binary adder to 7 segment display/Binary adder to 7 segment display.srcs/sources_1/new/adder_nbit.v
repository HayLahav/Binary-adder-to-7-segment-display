`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hay Lahav
// 
// Create Date: 16.09.2022 19:58:57
// Design Name: 
// Module Name: adder_nbit
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


module adder_nbit(
 
 // port section
  input [2:0]a ,
  input [2:0] b ,
  output reg [2:0] sum 
  
);

always @(*) begin
sum[3:0]= a[2:0] + b[2:0];
end

endmodule
