`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hay Lahav
// 
// Create Date: 18.09.2022 01:17:17
// Design Name: 
// Module Name: hex_7seg_decoder
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


module hex_7seg_decoder(


    // ports section
    input [3:0]in ,
    output o_a ,
    output o_b ,
    output o_c ,
    output o_d ,
    output o_e ,
    output o_f ,
    output o_g 
    );
   
   //Internal logic 
   parameter COMMON_ANODE_CATHODE = 0; 
   reg a,b,c,d,e,f,g;
   
   // Concatination to pass  values to all the outputs in the same time
   
   always @(8) begin
     case(in)
     4'd0: {a,b,c,d,e,f,g} = 7'b1111110;
     4'd1: {a,b,c,d,e,f,g} = 7'b0110000;
     4'd2: {a,b,c,d,e,f,g} = 7'b1101101;
     4'd3: {a,b,c,d,e,f,g} = 7'b1111001;
     4'd4: {a,b,c,d,e,f,g} = 7'b0110011;
     4'd5: {a,b,c,d,e,f,g} = 7'b1011011;
     4'd6: {a,b,c,d,e,f,g} = 7'b1011111;
     4'd7: {a,b,c,d,e,f,g} = 7'b1110000;
     4'd8: {a,b,c,d,e,f,g} = 7'b1111111;
     4'd9: {a,b,c,d,e,f,g} = 7'b1111011;
     4'd10: {a,b,c,d,e,f,g} = 7'b1110111;
     4'd11: {a,b,c,d,e,f,g} = 7'b0011111;
     4'd12: {a,b,c,d,e,f,g} = 7'b1001110;
     4'd13: {a,b,c,d,e,f,g} = 7'b0111101;
     4'd14: {a,b,c,d,e,f,g} = 7'b1001110;
     4'd15: {a,b,c,d,e,f,g} = 7'b1000111;
     
     default : {a,b,c,d,e,f,g} = 7'b1111110; // best practice
     endcase
  end
  
  assign {o_a,o_b,o_c,o_d,o_e,o_f,o_g} = COMMON_ANODE_CATHODE ? {a,b,c,d,e,f,g} : ~{a,b,c,d,e,f,g}; 
     
     
   
    
endmodule
