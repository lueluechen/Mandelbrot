
module vga(
	          input            vga_clk, // Input clock signal 25Mhz
	          output reg       hsync, // Horizontal Sync signal
	          output reg       vsync, // Vertical Sync signal
	          output reg [9:0] hcount,
	          output reg [9:0] vcount     
                  );
   
   reg                             nextline = 0;                   // Set high when hcount reaches 799 - enables vcount to increment
   reg [9:0]                       hc;                   // Housekeeping - keep track of horizontal pixel position
   reg [9:0]                       vc;
      
   always @(posedge vga_clk) begin
      hcount = hc;                  
      vcount = vc;               
      
      if (hc == 799) begin          // End of back porch
	 nextline <= 1'b1;               // Enable vc to increment 
	 hc  <= 0;		            // Reset to beginning of the row
      end
      else begin
	 hc  <= hc + 1'b1;          // Or keep moving along the row
	 nextline <= 0;                  // Block vc from incrementing
      end
      
      if (hc < 96) begin            // Horizontal Sync pulse kept LOW for 96 "pixels"
	 hsync <= 1'b0;
      end
      else begin 
	 hsync <= 1'b1;              // Kept HIGH for the rest of the row
      end 
      
      if (nextline == 1'b1) begin         
	 if (vc == 520) begin       // End of display back porch
	    vc <= 0;                // Rest to beginning of the frame
	 end
	 else begin
	    vc <= vc + 1'b1;           // Or kep moving down the vertical dimension of the display
	 end
	 
	 if (vc < 2) begin             // Vertical Sync pulse kept LOW for 2 "rows"
	    vsync <= 1'b0;
	 end
	 else begin 
	    vsync <= 1'b1;             // Kept HIGH for the rest of the display
	 end 
      end
   end


endmodule
