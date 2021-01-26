module     VGA_CTRL     (	
						      //	Control Signal
						      iCLK,
						      iRST_N,								
                        //	Host Side
						      iRed,
						      iGreen,
						      iBlue,
						      oCurrent_X,
						      oCurrent_Y,
						      oRequest,
						      oLoad,
						      //	VGA Side
						      oVGA_R,
						      oVGA_G,
						      oVGA_B,
						      oVGA_HS,
						      oVGA_VS,
						      oVGA_SYNC,
						      oVGA_BLANK						
						      );
																		
						
//	Control Signal						
input				         iCLK;
input				         iRST_N;															
//	Host Side
input		   [7:0]	      iRed;
input		   [7:0]	      iGreen;
input		   [7:0]	      iBlue;
output		[10:0]	   oCurrent_X;
output		[10:0]	   oCurrent_Y;
output				      oRequest;
output                  oLoad;
//	VGA Side
output	   [7:0]	      oVGA_R;
output	   [7:0]	      oVGA_G;
output	   [7:0]	      oVGA_B;
output				      oVGA_HS;
output				      oVGA_VS;
output				      oVGA_SYNC;
output				      oVGA_BLANK;

//	Internal Registers
reg		   [11:0]	   H_Cont;
reg		   [11:0]	   V_Cont;

wire                    nVGA_HS;
wire                    nVGA_VS;
wire                    nVGA_BLANK;


reg				         oVGA_HS;
reg				         oVGA_VS;
reg                     oVGA_BLANK;


/*

//////////////////////////640X480@60HZ-25.175MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd8;
parameter	H_FRONT	       =	12'd8;
parameter	H_SYNC	       =	12'd96;
parameter	H_BACK	       =	12'd40;
parameter   H_BOR_L         = 12'd8;

parameter	H_ACT	          =	12'd640;
parameter   H_SYNC_POLARITY = 1'b0;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd8;
parameter	V_FRONT	       =	12'd2;
parameter	V_SYNC	       =	12'd2;
parameter	V_BACK	       =	12'd25;
parameter   V_BOR_T         = 12'd8;

parameter	V_ACT	          =	12'd480;
parameter   V_SYNC_POLARITY = 1'b0;
/////////////////////////////////////////////////////////////////////////////



//////////////////////////640X480@72HZ-31.5MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd8;
parameter	H_FRONT	       =	12'd16;
parameter	H_SYNC	       =	12'd40;
parameter	H_BACK	       =	12'd120;
parameter   H_BOR_L         = 12'd8;

parameter	H_ACT	          =	12'd640;
parameter   H_SYNC_POLARITY = 1'b0;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd8;
parameter	V_FRONT	       =	12'd1;
parameter	V_SYNC	       =	12'd3;
parameter	V_BACK	       =	12'd20;
parameter   V_BOR_T         = 12'd8;

parameter	V_ACT	          =	12'd480;
parameter   V_SYNC_POLARITY = 1'b0;
/////////////////////////////////////////////////////////////////////////////




//////////////////////////800X600@60HZ-40MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd0;
parameter	H_FRONT	       =	12'd40;
parameter	H_SYNC	       =	12'd128;
parameter	H_BACK	       =	12'd88;
parameter   H_BOR_L         = 12'd0;

parameter	H_ACT	          =	12'd800;
parameter   H_SYNC_POLARITY = 1'b1;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd0;
parameter	V_FRONT	       =	12'd1;
parameter	V_SYNC	       =	12'd4;
parameter	V_BACK	       =	12'd23;
parameter   V_BOR_T         = 12'd0;

parameter	V_ACT	          =	12'd600;
parameter   V_SYNC_POLARITY = 1'b1;
/////////////////////////////////////////////////////////////////////////////



//////////////////////////1024X768@60HZ-65MHZ//////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd0;
parameter	H_FRONT	       =	12'd24;
parameter	H_SYNC	       =	12'd136;
parameter	H_BACK	       =	12'd160;
parameter   H_BOR_L         = 12'd0;

parameter	H_ACT	          =	12'd1024;
parameter   H_SYNC_POLARITY = 1'b0;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd0;
parameter	V_FRONT	       =	12'd3;
parameter	V_SYNC	       =	12'd6;
parameter	V_BACK	       =	12'd29;
parameter   V_BOR_T         = 12'd0;

parameter	V_ACT	          =	12'd768;
parameter   V_SYNC_POLARITY = 1'b0;
/////////////////////////////////////////////////////////////////////////////



//////////////////////////1280X720@60HZ-74.25MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd0;
parameter	H_FRONT	       =	12'd110;
parameter	H_SYNC	       =	12'd40;
parameter	H_BACK	       =	12'd220;
parameter   H_BOR_L         = 12'd0;

parameter	H_ACT	          =	12'd1280;
parameter   H_SYNC_POLARITY = 1'b1;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd0;
parameter	V_FRONT	       =	12'd5;
parameter	V_SYNC	       =	12'd5;
parameter	V_BACK	       =	12'd20;
parameter   V_BOR_T         = 12'd0;

parameter	V_ACT	          =	12'd720;
parameter   V_SYNC_POLARITY = 1'b1;
/////////////////////////////////////////////////////////////////////////////



//////////////////////////1280X1024@60HZ-108MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd0;
parameter	H_FRONT	       =	12'd48;
parameter	H_SYNC	       =	12'd112;
parameter	H_BACK	       =	12'd248;
parameter   H_BOR_L         = 12'd0;

parameter	H_ACT	          =	12'd1280;
parameter   H_SYNC_POLARITY = 1'b1;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd0;
parameter	V_FRONT	       =	12'd1;
parameter	V_SYNC	       =	12'd3;
parameter	V_BACK	       =	12'd38;
parameter   V_BOR_T         = 12'd0;

parameter	V_ACT	          =	12'd1024;
parameter   V_SYNC_POLARITY = 1'b1;
/////////////////////////////////////////////////////////////////////////////



//////////////////////////1366X768@60HZ-85.5MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd0;
parameter	H_FRONT	       =	12'd70;
parameter	H_SYNC	       =	12'd143;
parameter	H_BACK	       =	12'd213;
parameter   H_BOR_L         = 12'd0;

parameter	H_ACT	          =	12'd1366;
parameter   H_SYNC_POLARITY = 1'b1;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd0;
parameter	V_FRONT	       =	12'd3;
parameter	V_SYNC	       =	12'd3;
parameter	V_BACK	       =	12'd24;
parameter   V_BOR_T         = 12'd0;

parameter	V_ACT	          =	12'd768;
parameter   V_SYNC_POLARITY = 1'b1;
/////////////////////////////////////////////////////////////////////////////




//////////////////////////1440X900@60HZ-106.5MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd0;
parameter	H_FRONT	       =	12'd80;
parameter	H_SYNC	       =	12'd152;
parameter	H_BACK	       =	12'd232;
parameter   H_BOR_L         = 12'd0;

parameter	H_ACT	          =	12'd1440;
parameter   H_SYNC_POLARITY = 1'b0;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd0;
parameter	V_FRONT	       =	12'd3;
parameter	V_SYNC	       =	12'd6;
parameter	V_BACK	       =	12'd25;
parameter   V_BOR_T         = 12'd0;

parameter	V_ACT	          =	12'd900;
parameter   V_SYNC_POLARITY = 1'b1;
/////////////////////////////////////////////////////////////////////////////



//////////////////////////1920X1080@60HZ-148.5MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd0;
parameter	H_FRONT	       =	12'd88;
parameter	H_SYNC	       =	12'd44;
parameter	H_BACK	       =	12'd148;
parameter   H_BOR_L         = 12'd0;

parameter	H_ACT	          =	12'd1920;
parameter   H_SYNC_POLARITY = 1'b1;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd0;
parameter	V_FRONT	       =	12'd4;
parameter	V_SYNC	       =	12'd5;
parameter	V_BACK	       =	12'd36;
parameter   V_BOR_T         = 12'd0;

parameter	V_ACT	          =	12'd1080;
parameter   V_SYNC_POLARITY = 1'b1;
/////////////////////////////////////////////////////////////////////////////
*/ 		

//////////////////////////1024X768@60HZ-65MHZ//////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd0;
parameter	H_FRONT	       =	12'd24;
parameter	H_SYNC	       =	12'd136;
parameter	H_BACK	       =	12'd160;
parameter   H_BOR_L         = 12'd0;

parameter	H_ACT	          =	12'd1024;
parameter   H_SYNC_POLARITY = 1'b0;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd0;
parameter	V_FRONT	       =	12'd3;
parameter	V_SYNC	       =	12'd6;
parameter	V_BACK	       =	12'd29;
parameter   V_BOR_T         = 12'd0;

parameter	V_ACT	          =	12'd768;
parameter   V_SYNC_POLARITY = 1'b0;
/////////////////////////////////////////////////////////////////////////////


/*
//////////////////////////640X480@60HZ-25.175MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd8;
parameter	H_FRONT	       =	12'd8;
parameter	H_SYNC	       =	12'd96;
parameter	H_BACK	       =	12'd40;
parameter   H_BOR_L         = 12'd8;

parameter	H_ACT	          =	12'd640;
parameter   H_SYNC_POLARITY = 1'b0;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd8;
parameter	V_FRONT	       =	12'd2;
parameter	V_SYNC	       =	12'd2;
parameter	V_BACK	       =	12'd25;
parameter   V_BOR_T         = 12'd8;

parameter	V_ACT	          =	12'd480;
parameter   V_SYNC_POLARITY = 1'b0;
/////////////////////////////////////////////////////////////////////////////
*/
/*
//////////////////////////800X600@60HZ-40MHZ//////////////////////////////////
//	Horizontal	Parameter
parameter   H_BOR_R         = 12'd0;
parameter	H_FRONT	       =	12'd40;
parameter	H_SYNC	       =	12'd128;
parameter	H_BACK	       =	12'd88;
parameter   H_BOR_L         = 12'd0;

parameter	H_ACT	          =	12'd800;
parameter   H_SYNC_POLARITY = 1'b1;

//	Vertical Parameter
parameter   V_BOR_B         = 12'd0;
parameter	V_FRONT	       =	12'd1;
parameter	V_SYNC	       =	12'd4;
parameter	V_BACK	       =	12'd23;
parameter   V_BOR_T         = 12'd0;

parameter	V_ACT	          =	12'd600;
parameter   V_SYNC_POLARITY = 1'b1;
/////////////////////////////////////////////////////////////////////////////
*/


parameter	H_TOTAL	     = H_BOR_R+H_FRONT+H_SYNC+H_BACK+H_BOR_L+H_ACT-1;
parameter	V_TOTAL	     = V_BOR_B+V_FRONT+V_SYNC+V_BACK+V_BOR_T+V_ACT-1;	

parameter   H_SYNC_START  = H_ACT + H_BOR_R + H_FRONT;
parameter   H_SYNC_END    = H_ACT+H_BOR_R+H_FRONT+H_SYNC-1; 

parameter   V_SYNC_START  = V_ACT+V_BOR_B+V_FRONT;
parameter   V_SYNC_END    = V_ACT+V_BOR_B+V_FRONT+V_SYNC-1;

parameter   H_BLANK_START = H_ACT+H_BOR_R;
parameter   H_BLANK_END   = H_ACT+H_BOR_R+H_FRONT+H_SYNC+H_BACK-1;

parameter   V_BLANK_START = V_ACT+V_BOR_B;
parameter   V_BLANK_END   = V_ACT+V_BOR_B+V_FRONT+V_SYNC+V_BACK-1;

parameter   H_ACT_STATUS  = (H_SYNC_POLARITY == 1'b1) ? 1'b1 : 1'b0;
parameter   H_IDLE_STATUS = (H_SYNC_POLARITY == 1'b1) ? 1'b0 : 1'b1;

parameter   V_ACT_STATUS  = (V_SYNC_POLARITY == 1'b1) ? 1'b1 : 1'b0;
parameter   V_IDLE_STATUS = (V_SYNC_POLARITY == 1'b1) ? 1'b0 : 1'b1;



assign   nVGA_HS = (H_Cont >= H_SYNC_START && H_Cont <= H_SYNC_END) ? H_ACT_STATUS : H_IDLE_STATUS;
assign   nVGA_VS = (V_Cont >= V_SYNC_START && V_Cont <= V_SYNC_END) ? V_ACT_STATUS : V_IDLE_STATUS;

//	If sync information is not required on the green channel, the SYNC input should be tied to Logic 0
assign	oVGA_SYNC	=	1'b0;	
	
// While BLANK is a Logic 0, the R0 to R9, G0 to G9, and B0 to B9 pixel inputs are ignored	
assign	nVGA_BLANK	=	((H_Cont >= H_BLANK_START && H_Cont <= H_BLANK_END) 
                      || (V_Cont >= V_BLANK_START && V_Cont <= V_BLANK_END)) ? 1'b0 : 1'b1; 


							 
//generate requst signal							 
assign	oRequest	=	(H_Cont >= 0 && H_Cont < H_ACT
                                       && V_Cont >= 0 && V_Cont < V_ACT) ? 1'b1 : 1'b0;							 

assign   oLoad    = 	(V_Cont >= V_SYNC_START && V_Cont <= V_SYNC_END) ? 1'b1 : 1'b0;		

assign	oCurrent_X	=	(H_Cont < H_ACT)	?	H_Cont[10:0]	:	11'h0	;
assign	oCurrent_Y	=	(V_Cont < V_ACT)	?	V_Cont[10:0]	:	11'h0	;
										
													
//vga data 
assign   oVGA_R = iRed;
assign   oVGA_G = iGreen;
assign   oVGA_B = iBlue;	
								  							  
									  
always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	begin		
		oVGA_HS    <= 1'b0;
		oVGA_VS    <= 1'b0;
		oVGA_BLANK <= 1'b0;
	end
	else
	begin		
		oVGA_HS    <= nVGA_HS;
		oVGA_VS    <= nVGA_VS;
		oVGA_BLANK <= nVGA_BLANK;	
	end
end
									  								 									 									 
									 
//	Horizontal and Vertical Generator: Refer to the pixel clock
always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	begin
		H_Cont	 <= 0;
		V_Cont	 <= 0;
	end
	else
	begin
		if(H_Cont < H_TOTAL )
			H_Cont <= H_Cont + 1'b1;
		else
			H_Cont <= 0;
			
		if(V_Cont < V_TOTAL  && H_Cont == H_TOTAL)
			V_Cont <= V_Cont + 1'b1;
		else if(V_Cont == V_TOTAL  && H_Cont == H_TOTAL)
			V_Cont <= 0;
		else
			V_Cont <= V_Cont;				
	end
end									 
									 
								 

endmodule
