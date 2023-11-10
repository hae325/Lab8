`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2023 12:42:03 PM
// Design Name: 
// Module Name: ss_decode
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


module ss_decode(clk, bcd,seg);
 input clk;
 input [3:0] bcd;
 output reg[6:0] seg;
// output [3:0] an;
// assign an = 4'b1110;
 
    
//always block for converting bcd digit into 7 segment format
    always @(posedge clk)
    begin
        case (bcd) //case statement
        
            0 : seg = 7'b0000001;
            1 : seg = 7'b1001111;
            2 : seg = 7'b0010010;
            3 : seg = 7'b0000110;
            4 : seg = 7'b1001100;
            5 : seg = 7'b0100100;
            6 : seg = 7'b0100000;
            7 : seg = 7'b0001111;
            8 : seg = 7'b0000000;
            9 : seg = 7'b0000100;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg = 7'b1111111; 
            
        endcase
        
        end 
        
       
endmodule
