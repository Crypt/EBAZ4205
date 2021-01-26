`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/02/17 21:08:10
// Design Name: 
// Module Name: LED_TEST
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

module VGA_TEST (
                 vga_blank_n,
                 vga_clk,
                 vga_r,
                 vga_g,
                 vga_b,
                 vga_hs,
                 vga_vs,

                 led_g,
                 led_r,
                 led_b,
                 switch,
                 switch1,
                 clk_out2o               
                 );
output           led_g;
output           led_r;
output           led_b;
input            switch;
input            switch1;
output           clk_out2o;

output   [7:0]   vga_b;
output		     vga_blank_n;
output		     vga_clk;
output	 [7:0]	 vga_g;
output		     vga_hs;
output	 [7:0]	 vga_r;
output		     vga_vs;

 wire           clk;
 wire           rst_n;
    
 wire           clk_out;
 wire           locked;
    
 wire   [1:0]   gpio;
 
 wire [0:0]GPIO_0_tri_i_0;
 wire [1:1]GPIO_0_tri_i_1;
 wire [0:0]GPIO_0_tri_io_0;
 wire [1:1]GPIO_0_tri_io_1;
 wire [0:0]GPIO_0_tri_o_0;
 wire [1:1]GPIO_0_tri_o_1;
 wire [0:0]GPIO_0_tri_t_0;
 wire [1:1]GPIO_0_tri_t_1;
 
    
zynq       u0     (
                   .FCLK_CLK0(clk),
                   .FCLK_RESET0_N(rst_n),
                   .GPIO_0_tri_i({GPIO_0_tri_i_1,GPIO_0_tri_i_0}),
                   .GPIO_0_tri_o({GPIO_0_tri_o_1,GPIO_0_tri_o_0}),
                   .GPIO_0_tri_t({GPIO_0_tri_t_1,GPIO_0_tri_t_0})
                    );
                

clk_wiz_0    u1     (
                    // Clock out ports
                    .clk_out1(clk_out),     // output clk_out1
                    .clk_out2(clk_out2o),     // output clk_out2
                    // Status and control signals
                    .reset(~rst_n), // input reset
                    .locked(locked),       // output locked
                   // Clock in ports
                    .clk_in1(clk));      // input clk_in1         
                                 
VGA_DATA     u2      (
                     //////// VGA//////////        
                     .vga_blank_n(vga_blank_n),
                     .vga_clk(vga_clk),
                     .vga_r(vga_r),
                     .vga_g(vga_g),
                     .vga_b(vga_b),
                     .vga_hs(vga_hs),
                     .vga_vs(vga_vs),
                      /////////CONTROL/////////
                     .clk_in(clk_out),
//                     .rst_n(GPIO_0_tri_o_0),
//                     .rst_n(switch1), // 
                     .rst_n(1'b1), // force not in reset, could be switch or gpio
//                     .rst_n(vga_vs), // force not in reset, could be switch or gpio
                     .led(led_g),
                     /////////INOUT/////////////                                            
//                     .extern_in(GPIO_0_tri_o_1),
                     .extern_in(switch), // perform colour change cycle
//                     .extern_in(clk_out), // perform colour change cycle
//                     .extern_in( 1'b0), // 
                     .extern_out(led_r)
                     );                               
                                 
    
endmodule
