`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2021 20:27:38
// Design Name: 
// Module Name: led_flasher
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


module led_flasher(
    output led_g,
    input clk
    );
reg [23:0] cnt;

assign led_g =  cnt[23] || cnt[22] || cnt[20]; // green

initial begin
cnt = 0;
end

always @(posedge clk)
begin
    cnt<=cnt+1;
end

endmodule
