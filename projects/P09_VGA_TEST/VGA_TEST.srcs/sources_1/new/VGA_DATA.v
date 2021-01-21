	
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

input						      extern_in;
output					      extern_out;	


//	Clock Setting
parameter	  CLK_Freq	=	65000000;	//	50	MHz

parameter     LED_Freq =  4;
parameter     BUZZER_Freq =4000;



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
 
reg           trig;
reg   [1:0]   cnt;
reg   [1:0]   cnt_m;
reg   [7:0]   data;


wire          CLK_OUT;
reg           l1_extern_in;


assign  led = oLED;

assign  extern_out = extern_in;	

assign  vga_clk = ~clk_in;					

								 
always@(posedge clk_in or negedge rst_n)
begin
	if(!rst_n)
	begin
		l1_extern_in <= 1'b0;
		trig         <= 1'b0;
	end
	else
	begin
		l1_extern_in <= extern_in;
		
		if(extern_in == 1'b1 && l1_extern_in <= 1'b0)
			trig      <= 1'b1;
		else
			trig      <= 1'b0;	
	end
end								 
								 
								 

always@(posedge clk_in or negedge rst_n)
begin
	if(!rst_n)
	begin
		cnt <= 2'b00;
		cnt_m <= 2'b00;
	end
	else
	begin
		if(trig == 1'b1)
			cnt <= cnt + 1'b1;
		else
			cnt <= cnt;
	
      if(new_frame == 1'b1	)
			cnt_m <= cnt;
		else
			cnt_m <= cnt_m;
	
	end
end


/*********************************led CONFIG*****************************************************/
always@(posedge clk_in or negedge rst_n)
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
 

always@(*)
begin
	if(cnt_m == 2'b00)
	begin
      mGreen = 8'h0;
		mBlue  = 8'h0;
		mRed   = data;
	end
	else	if(cnt_m == 2'b01)
	begin
      mGreen = data;
		mBlue  = 8'h0;
		mRed   = 8'h0;
	end
	else	if(cnt_m == 2'b10)
	begin
      mGreen = 8'h0;
		mBlue  = data;
		mRed   = 8'h0;
	end
	else	
	begin
      mGreen = data;
		mBlue  = data;
		mRed   = data;
	end

end





always@(posedge clk_in or negedge rst_n)
begin
	if(!rst_n)
	begin
      data <= 8'h0;
	end
	else
	begin	
	   if(new_frame == 1'b1 || vga_read == 1'b0)
	   begin
			data <= 8'h0;
	   end		
		else if(vga_read == 1'b1 && new_frame == 1'b0)
		begin
			data <= data + 1'b1;
		end
		else
	   begin
			data <= data;
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
					
							