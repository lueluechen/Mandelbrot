// Verilog test fixture created from schematic F:\file\homework\Logic_and_computer_design\MANDELBROT-master\mandelbrot1.04_64bit\paste\Lamp.sch - Mon Jan 08 18:30:57 2018

`timescale 1ns / 1ps

module Lamp_Lamp_sch_tb();

// Inputs
   reg S1;
   reg S2;
   reg S3;

// Output
   wire F;
   wire Buzzer;
   wire [6:0] LED;

// Bidirs

// Instantiate the UUT
   Lamp UUT (
		.S1(S1), 
		.S2(S2), 
		.S3(S3), 
		.F(F), 
		.Buzzer(Buzzer), 
		.LED(LED)
   );
// Initialize Inputs

       initial begin
		S1 = 0;
		S2 = 0;
		S3 = 0;
		#100;
		S3 = 1;
		end
endmodule
