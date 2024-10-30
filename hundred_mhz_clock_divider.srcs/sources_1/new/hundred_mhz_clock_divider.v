`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 10:06:22
// Design Name: 
// Module Name: hundred_mhz_clock_divider
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


module hundred_mhz_clock_divider(hundred_mhz_clk,one_hz_clock);
input hundred_mhz_clk;
output reg one_hz_clock=0;

reg[26:0] counter=27'd0;

always  @(posedge hundred_mhz_clk)
    begin
    counter=counter+27'd1;
    if(counter==27'd100000000)
            begin
            one_hz_clock=~one_hz_clock;
            counter=27'd0;
            end
    end  
endmodule
