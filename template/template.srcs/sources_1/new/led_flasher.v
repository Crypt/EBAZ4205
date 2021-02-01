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
    output [1:0] led,
    input clk
    );
reg [31:0] cnt;
//reg [1:0] led_i;

assign led[0] =  cnt[26] || cnt[25] || cnt[24] || cnt[22]; // green
assign led[1] = 1;
//assign led[1] = cnt[26];
//assign led[0] = cnt[24];

initial begin
cnt = 0;
end

always @(posedge clk)
begin
    cnt<=cnt+1;
end

endmodule
