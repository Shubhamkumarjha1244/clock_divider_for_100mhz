`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 10:09:00
// Design Name: 
// Module Name: hundred_mhz_clock_divider_tb
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


module hundred_mhz_clock_divider_tb();
    reg hundred_mhz_clk=0;
    wire one_hz_clk;
    hundred_mhz_clock_divider dut(hundred_mhz_clk,one_hz_clk);

    always
        #(0.5) hundred_mhz_clk=~hundred_mhz_clk;

endmodule
