`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:51 01/05/2018 
// Design Name: 
// Module Name:    mandelbrotColor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mandelbrotColor(
                       input clk,
                       input [11:0]  iterations,
                       output reg [11:0] color
    );
   reg [3:0]                            mod;
   
   always @ (clk) begin
		mod = iterations[3:0];
      case (mod)
        12'd0: color = 12'b0000_0001_0100;
        12'd1: color = 12'b0001_0000_0001;
        12'd2: color = 12'b0010_0000_0000;
        12'd3: color = 12'b0100_0000_0000;
        12'd4: color = 12'b0110_0000_0000;
        12'd5: color = 12'b1000_0010_0000;
        12'd6: color = 12'b1011_0101_0001;
        12'd7: color = 12'b1101_0111_0011;
        12'd8: color = 12'b1110_1011_1000;
        12'd9: color = 12'b1111_1110_1101;
        12'd10:color = 12'b1011_1110_1111;
        12'd11:color = 12'b0101_1100_1111;
        12'd12:color = 12'b0000_1100_1111;
        12'd13:color = 12'b0000_1000_1100;
        12'd14:color = 12'b0000_0101_1001;
        12'd15:color = 12'b0000_0011_0110;
        default: ;
      endcase // case (mod)
   end
   

endmodule
