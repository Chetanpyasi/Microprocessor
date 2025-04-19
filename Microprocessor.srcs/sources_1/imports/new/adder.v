`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2025 04:05:20 PM
// Design Name: 
// Module Name: adder
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


module adder (
    input clk,                // Clock signal
    input [7:0] In,           // Input Program Counter (PC)
    output reg [7:0] Out      // Output Program Counter (incremented PC)
);

  always @(posedge clk) begin
    // Increment the input PC by 1 on the rising edge of the clock
    Out <= In + 1;
  end

endmodule
