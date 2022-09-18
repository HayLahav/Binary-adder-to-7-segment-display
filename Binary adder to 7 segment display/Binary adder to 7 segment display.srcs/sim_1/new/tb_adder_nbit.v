`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hay Lahav 
// 
// Create Date: 17.09.2022 02:01:31
// Design Name: 
// Module Name: tb_adder_nbit
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


module tb_adder_nbit

reg [9:0}= a;
reg [9:0}= b;
reg [10:0}= sum;



Adder1
(
.a(a),
.b(b),
.sum(sum)
    );
    
initial begin
    $monitor($time' "a =%d, b=%d, sum=%sum", a, b, sum) ;
    #1; a=0 ; b=0;
    #2; a=99 ; b=1;
    #1; a=33 ; b=66;
    #1; a=100 ; b=47;
    #1; $stop;
    
end
    
endmodule
