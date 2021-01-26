	
module    VGA_DATA    (
	                   //////// ADV7123 //////////		
		                vga_blank_n,
		                vga_clk,
		                vga_r,
		                vga_g,
		                vga_b,
	                   /////////////VGA/////////////
		                vga_hs,
		                vga_vs,
	                   /////////CTR/////////
	                    clk_in,
					    rst_n,
		                led,
		                		
		                extern_in,
		                extern_out
		                );	
		
	//////////// VGA //////////
output		     [7:0]		vga_b;
output		          		vga_blank_n;
output		          		vga_clk;
output		     [7:0]		vga_g;
output		          		vga_hs;
output		     [7:0]		vga_r;
output		          		vga_vs;

input                      clk_in;
input                      rst_n;
output                     led;

input						  extern_in;
output					      extern_out;	


//	Clock Setting
parameter	  CLK_Freq	=	65000000;	//	50	MHz
parameter     LED_Freq =  4;

//	For VGA Controller
reg	[7:0]	  mRed;//=10'h0;
reg	[7:0]	  mGreen;//=10'h0;
reg	[7:0]	  mBlue;

//	VGA Controller
wire  [10:0]  vga_x;
wire  [10:0]  vga_y;

wire          vga_read;
wire          new_frame;

reg   [25:0]  LED_CLK_DIV;
reg           oLED;
 
parameter Hde_start=0;
parameter bar_interval=128;

wire          CLK_OUT;
reg           l1_extern_in;


assign  led = oLED;

assign  extern_out = extern_in;	

assign  vga_clk = ~clk_in;					

    //------------------------------------------------ ----------------
    ////////// Color bar test image generation
    //------------------------------------------------ ----------------
     always @(posedge clk_in)
       begin
         if (vga_x == Hde_start) 
            begin
            mGreen = 8'hff; // White color bar
		    mBlue  = 8'hff;
		    mRed   = 8'hFF;
		    end
          else if (vga_x == Hde_start+ bar_interval)
            begin
            mGreen = 8'hff; // Yellow color bar
		    mBlue  = 8'h00;
		    mRed   = 8'hff;
		    end
          else if (vga_x == Hde_start + bar_interval*2)
            begin
            mGreen = 8'hff; // Cyan color bar
		    mBlue  = 8'hff;
		    mRed   = 8'h00;
		    end
          else if (vga_x == Hde_start + bar_interval*3)
            begin
            mGreen = 8'hff; // Green color bar
		    mBlue  = 8'h0;
		    mRed   = 8'h0;
		    end
          else if (vga_x == Hde_start + bar_interval*4)
            begin
            mGreen = 8'h0; // Magenta color bar
		    mBlue  = 8'hff;
		    mRed   = 8'hFF;
		    end
          else if (vga_x == Hde_start + bar_interval*5)
            begin
             mGreen = 8'h0; // Red color bar
		     mBlue  = 8'h0;
		     mRed   = 8'hFF;
		     end
          else if (vga_x == Hde_start + bar_interval*6)
            begin
            mGreen = 8'h0; // Blue color bar
		    mBlue  = 8'hff;
		    mRed   = 8'h00;
		    end
          else if (vga_x == Hde_start + bar_interval*7)
            begin
            mGreen = 8'h0; // Black
		    mBlue  = 8'h0;
		    mRed   = 8'h00;
		    end
        end
        

/*********************************led CONFIG*****************************************************/
always@(posedge clk_in or negedge rst_n )
begin
	if(!rst_n)
	begin
		oLED	<=	1'b1;
	end
	else
	begin
		if( LED_CLK_DIV	< (CLK_Freq/LED_Freq) )
		LED_CLK_DIV	<=	LED_CLK_DIV + 1'b1;
		else
		begin
			LED_CLK_DIV	<=	0;
			oLED	<=	~oLED;
		end
	end
end
 


VGA_CTRL			u0	(	//	Host Side
							.iRed(mRed),
							.iGreen(mGreen),
							.iBlue(mBlue),
							.oCurrent_X(vga_x),
							.oCurrent_Y(vga_y),
							.oRequest(vga_read),
							.oLoad(new_frame),
							//	VGA Side
							.oVGA_R(vga_r),
							.oVGA_G(vga_g),
							.oVGA_B(vga_b),
							.oVGA_HS(vga_hs),
							.oVGA_VS(vga_vs),
							.oVGA_BLANK(vga_blank_n),
							//	Control Signal
							.iCLK(clk_in),
							.iRST_N(rst_n)	);
							


endmodule
					
							