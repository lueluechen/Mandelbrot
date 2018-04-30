`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:17 01/04/2018 
// Design Name: 
// Module Name:    top 
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
module top(
           input            clk,               // 100Mhz clock
           inout [4:0]      BTN_X,
           inout [3:0]      BTN_Y,
           input            SW0,               // Used to switch between zoom-in and zoom-out
           input            reset,             // Reset the display to start screen
           output           hsync,             // VGA control signal
           output           vsync,             // VGA control signal 2
           output           Buzzer,
           output           SEGLED_CLK,
	        output           SEGLED_CLR,
	        output           SEGLED_DO,
	        output           SEGLED_PEN,
			  output reg [7:0] LED,
           output reg [3:0] r,g,b              // RGB data output to display
           );

   wire [9:0]               hcount;            // Used to know which pixel in a row the display is currently on
   wire [9:0]               vcount;            // Used to know which row of pixels the display is currently on
   // RAM stuff - Port A for writing, B for reading
   wire [11:0]              doutA;             // Not used
   wire [11:0]              doutB;             // Output data port send to RGB output
   reg [11:0]               dinB;              // Not used
   wire [11:0]              dinA;              // used by Mandelbrot Module to write data in
   reg [18:0]               addrB = 307199;    // Used to read data address
   wire [18:0]              addrA;             // Used by Mandelbrot Module to select write address
   wire                     wea;               // Used by Mandelbrot Module to enable write
   reg                      web = 0;           // Not used, always LOW
   
	reg [11:0]               RGB = 0;           // The 11 bits color stand for bbbb_gggg_rrrr
   wire                     Buzzer;
   reg [31:0]               clkdiv;
   wire [4:0]               keyCode;           // The keycode of keypad
   wire                     keyReady;          // Determine whether a key is pressed
   wire [7:0]               iterations;        // The iteration times of the center
	wire [7:0]               remain;            // The remaining times we can zoom in
   wire [31:0]              segTestData;       // The data displayed in 7 segments device
   wire [3:0]               sout;
   
	initial LED = 8'b1111_1111;
	
   always @ (posedge clk) begin
      clkdiv <= clkdiv + 1'b1;
		if (SW0)
			LED[3] = 0;
		else
			LED[3] = 1;
   end
	
	assign Buzzer = 1;
	
	// Keypad Module - enable keypad to control the movement of the graph 
	// From the VGAdemo
   Keypad k0 (.clk(clkdiv[15]), .keyX(BTN_Y), .keyY(BTN_X),.keyCode(keyCode),.ready(keyReady));

   // Mandelbrot Module - iterates over the complex plane
   MandelbrotGen MandelbrotGen0(clk,keyCode,keyReady,SW0,reset,addrA,dinA,wea,iterations,remain);

   // VGA Module - Controls VGA display at 480x640
   vga vga0(clkdiv[1],hsync,vsync,hcount,vcount); 
   
   // RAM module - Dual port RAM, 307 200 addressable memory locations, each 12-bits wide. (excuse the name!)
   ram ram3(.clka(clk),.wea(wea),.addra(addrA),.dina(dinA),.douta(doutA),
	    .clkb(clk),.web(web),.addrb(addrB),.dinb(dinB),.doutb(doutB));
   
	// Seg7Device Module - Since there is only 8 digits, it's used to display the remaining times we can zoom in 
	// and the iteration times of the curret center
	// From the VGAdemo
   assign segTestData = {8'b0,remain,8'b0,iterations};
   Seg7Device segDevice(.clkIO(clkdiv[3]),.clkScan(clkdiv[15:14]),.clkBlink(clkdiv[25]),                         
								.data(segTestData),.point(8'h0),.LES(8'h0),.sout(sout));
   assign SEGLED_CLK = sout[3];
   assign SEGLED_DO = sout[2];
   assign SEGLED_PEN = sout[1];
   assign SEGLED_CLR = sout[0];
   

   // Read from memory
   always @ (posedge clkdiv[1]) begin
      if (reset) begin
         addrB <= 0;
      end
      if ((vcount == 31) &&(hcount == 143)) begin // First Pixel in the display
	 addrB <= 0;
      end
      if ((vcount > 31 ) && (vcount < 512) && (143 < hcount) && (hcount < 784)) begin // All other pixels
	 if(addrB < 307199) begin
	    addrB <= addrB + 1;             // Increment through memory
       r[3:0] <= doutB[3:0];				// Load the color
       g[3:0] <= doutB[3:0];
       b[3:0] <= doutB[11:8];
	 end 
      end else begin
         r[3:0] <= 0;
         g[3:0] <= 0;
         b[3:0] <= 0;
      end
   end
endmodule

