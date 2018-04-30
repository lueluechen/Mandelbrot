`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:31 01/08/2018
// Design Name:   MandelbrotGen
// Module Name:   F:/file/homework/Logic_and_computer_design/MANDELBROT-master/mandelbrot1.04_64bit/paste/Mandelbrot_sim.v
// Project Name:  paste
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MandelbrotGen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mandelbrot_sim;

	// Inputs
	reg clk;
	reg [4:0] keyCode;
	reg keyReady;
	reg SW0;
	reg reset;

	// Outputs
	wire [18:0] addrA;
	wire [11:0] dinA;
	wire wea;
	wire [7:0] ite;
	wire [7:0] remain;

	// Instantiate the Unit Under Test (UUT)
	MandelbrotGen uut (
		.clk(clk), 
		.keyCode(keyCode), 
		.keyReady(keyReady), 
		.SW0(SW0), 
		.reset(reset), 
		.addrA(addrA), 
		.dinA(dinA), 
		.wea(wea), 
		.ite(ite), 
		.remain(remain)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		keyCode = 0;
		keyReady = 0;
		SW0 = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		forever #10 clk = ~clk;
        
		// Add stimulus here

	end
      
endmodule

