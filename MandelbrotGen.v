/*
 64- bit fixed point representation:
 [64] -> Sign bit
 [63:61] -> integer bits
 [60:0] -> fractional bits
 
 when multiplying 64x64 you get 128 bits. In order to maintain 20 bit representation you need to do some bit slicing
 We only retain [123:60] bits.
 */

module MandelbrotGen(
		     input wire        clk, 								// 100Mhz Clock input
           input wire [4:0]  keyCode,                    // Keycode of keypad
           input wire        keyReady,                   // Determine whether a key is pressed
		     input wire        SW0,                        // Used to select zoom in/out
		     input wire        reset, 							// Used to rest to start position
		     output reg [18:0] addrA, 							// Writing address
		     output reg [11:0] dinA, 							   // Data to write to RAM
		     output reg        wea,           					// Write enable signal
           output reg [7:0]  ite,                        // Iterations times of the center
			  output reg [7:0]  remain                      // Remaining times to zoom in
                     );

   
   reg [9:0]                           x_count;          // Holds horizontal position
   reg signed [63:0]                   shift_val;        // Hold complex and real incrementals
   reg signed [63:0]                   C_real_start;     // Starting real value
   reg signed [63:0]                   C_imag_start;     // Starting imaginary value
   reg signed [63:0]                   C_real;           // Current real component of C being operated on
   reg signed [63:0]                   C_imag ;          // Current imaginary component of C being operated on
   reg [11:0]                          iterations;       // Holds number of iterations it takes to prove classification
   reg signed [63:0]                   Z_real;           // Current real component of Z for computations
   reg signed [63:0]                   Z_imag;           // Current imaginary component of Z for computations
   reg signed [125:0]                  Temp_Z_imag_real; // Temp register used for multiplication when working out next Z value
   reg signed [125:0]                  temp_imag;        // Temp register used for working out next Z value (stores imaginary squared)
   reg signed [125:0]                  temp_real;        // As above (real real squared)
   reg signed [63:0]                   Z_real2;          // Maintaining binary point using bitvector-slicing
   reg signed [63:0]                   Z_imag2;          // As above
   reg signed [63:0]                   Z_imag2_re2_sum;  // Used to check for divergence (outside circle radius 2 centered at origin)
   reg signed [63:0]                   base_x;           // The coordinates of the base point
   reg signed [63:0]                   base_y;
   reg                                 calculating;      // Used to maintain state - 1 = iterating 0 = set up next C value.
   reg                                 init = 0;         // Start up block. Hard-coded reset/start display
   reg                                 Count = 0;        // Used to generate 50 Mhz clock
   wire [11:0]                         color;				// Store the target color of a certain pixel
   reg                                 wasReady;         // Used to help to detect the press of the key

	// ManelbrotColor module to generate the color of a certain pixel by its iteration times
   mandelbrotColor m (clk,iterations,color); 
   
   always @(posedge clk) begin
		
		//KEY PRESS
      wasReady <= keyReady;
      if (!wasReady && keyReady) begin
         addrA <= 0;
         x_count = 0;
         iterations <= 1;
         calculating = 1;
         case (keyCode)
			  5'h5: base_x       = base_x  - shift_val;      // Slightly Left by a pixel
			  5'h7: base_x       = base_x  + shift_val;      // Slightly right
			  5'h2: base_y       = base_y + shift_val;       // Slightly Up
			  5'ha: base_y       = base_y - shift_val;       // Slightly Down
           5'hc: base_x       = base_x  - (shift_val<<5); // Left
           5'he: base_x = base_x + (shift_val << 5);      // Right
           5'h9: base_y       = base_y + (shift_val<<5);  // Down
           5'h11:base_y       = base_y - (shift_val<<5) ; // Up
           5'hd: begin
              if (SW0 == 1'b1) begin
                 shift_val          = shift_val <<1;      // Scale up by 1
                 C_real_start = base_x - 320 * shift_val;
                 C_imag_start = base_y + 240 * shift_val;
					  remain = remain + 1;
	           end
              else begin
                 shift_val          = shift_val >> 1;     // Scale down by 1 and sign extend
                 C_real_start = base_x - 320 * shift_val;
                 C_imag_start = base_y + 240 * shift_val;
					  remain = remain - 1;
              end
           end
           default: ;
         endcase // case (keyCode)
         
			// Assign start values of first pixel
		   C_real           = C_real_start;                     
	      C_imag           = C_imag_start;  
	      Z_real           = C_real_start;
	      Z_imag           = C_imag_start;   
      end

		// Assign the value of coordinates for the first pixel
      C_real_start = base_x - 320 * shift_val;
      C_imag_start = base_y + 240 * shift_val;
      
      //INITIALISATION STAGE
      if (init == 0 || reset == 1'b1) begin
			remain = 52;
         base_x = 0;
         base_y = 0;
	      x_count           = 0;
	      addrA             <= 0;
		   temp_imag         = 0;
		   temp_real         = 0;
		   shift_val         = 64'sb0000_0000_0001_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000; // 1/256 increments
		   C_real            = C_real_start;
			C_imag            = C_imag_start;
		   Z_real            = C_real;
		   Z_imag            = C_imag; 
		   iterations        <= 1;
		   Temp_Z_imag_real  = 0;                       
		   Z_real2           = 0; 
		   Z_imag2           = 0; 
		   Z_imag2_re2_sum   = 0;
		   calculating       = 1;
		   init              = 1;
			end // END INITIALISATION STAGE
      
         //CALCULATION & NEXT-C STAGE
         if (&Count) begin
	         Count <= 0;
	         if (addrA > 307199) begin                       // If reached end of RAM block, reset writing address
	            addrA <= 0;
	         end
	      else begin
	    /* 
	     Z(n+1) = Z(n)^2 + C and |Z(n+1)| should less than or equal to a certain
		  constant n. In our program, we set n to be 4 and if after 150 iterations
		  Z(n) still satisfy the condition, we say it is in the Mandelbrot set.
		  
	     For working out the next iterations Z(n+1):
	     => Z(n+1)[real] = Z(n)[real]^2 - Z(n)[imaginary]^2 + C[real]
	     => Z(n+1)[imaginary] = 2*Z(n)[real]*Z(n)[imaginary] + C[imaginary]
	     */
	    // CALCULATION STAGE
	    if (calculating == 1) begin
	       temp_real       = Z_real*Z_real;            // Z(n)[real]^2
	       Z_real2         = temp_real[123:60];         // Maintain binary point
	       temp_imag       = Z_imag*Z_imag;            // Z(n)[imaginary]^2
	       Z_imag2         = temp_imag[123:60];			// Maintain binary point
	       Z_imag2_re2_sum = Z_real2 + Z_imag2;        // Add together to see if diverged
	       
	       if ((Z_imag2_re2_sum > (64'sb0100_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000)) 
											 || (iterations == 150)) begin  // Divergend or max iterations reached (n = 150 max)
		       wea         = 1;                                        // Enable write
				 // Draw the cursor on the center of the screen
		       if ((C_real < base_x + 10 * shift_val && C_real > base_x - 10 * shift_val && C_imag == base_y) || 
				     (C_real == base_x && C_imag < base_y + 10 * shift_val && C_imag > base_y - 10 * shift_val)) begin
		          dinA        <= 12'hfff;               // Color white
		       end else if (iterations == 150)begin
                dinA        <= 12'h000;               // If it's in the set, it gets black  
             end else begin
		          dinA        <= color;                 // If not in the set - some color mapping involved here
		       end	
				 // the iteration times of the current center 
				 if (C_real == base_x && C_imag == base_y) begin
                ite = iterations[7:0];
             end
             // Reset all registers     
		       Z_real2     = 0;                                        
		       Z_imag2     = 0;
		       Z_imag      = 0;
		       Z_real      = 0;
		       calculating = 0;                                        // Start working out next C value
		  
	       end else begin                                             // Or if not diverged work out Z(n+1)
		       Temp_Z_imag_real = Z_real*Z_imag;                       // Z(n)[real]*Z(n)[imaginary]
		       Temp_Z_imag_real = Temp_Z_imag_real<<1;                 // 2*Z(n)[real]*Z(n)[imaginary]
		       Z_imag           = (Temp_Z_imag_real[123:60]) + C_imag; // Z(n+1)[imaginary] - Maintain binary point
		       Z_real           = Z_real2 - Z_imag2 + C_real;          // Z(n+1)[real] = Z(n)[real]^2 - Z(n)[imaginary]^2 + C[real]
		       iterations      <= iterations + 1'b1;                   // Increment number of iterations
	       end
	       // NEXT-C STAGE
	    end if (calculating == 0) begin	
	       
	       C_real = C_real + shift_val;                           // Increment real co-ordinate
	       //640 * 480
	       if (x_count == 639) begin                              // If reached end of Row
		       x_count = 0;
		       C_imag  = C_imag - shift_val;                       // Increment imaginary co-ordinate
		       C_real  = C_real_start;                             // Re-initialise the real co-ordinate
		       if (addrA == 307199) begin                          // If at end of frame
		          C_imag = C_imag_start;                           // Re-initialise imaginary co-ordinate
		       end
	       end else begin                                         // Else keep going along the current row
		       x_count = x_count + 1;
	       end
	       calculating	= 1;                                     // Start calculating stage again
	       addrA      <= addrA +1'b1;                             
	       iterations <= 1;
	    end		
	 end 
      end else Count <= Count+ 1; 
   end // END CALCULATION & NEXT-C STAGE
endmodule
