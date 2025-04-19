`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2025 03:59:33 PM
// Design Name: 
// Module Name: DMem
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


module DMem (
    input clk,
    input E,               // Enable signal
    input WE,              // Write Enable signal
    input [3:0] Addr,      // Address for memory
    input [7:0] DI,        // Data input to memory
    output reg [7:0] DO    // Data output from memory
);

  reg [7:0] mem [0:15]; // 16 bytes of data memory

  // Write operation (synchronous)
  always @(posedge clk) begin
    if (E) begin
      if (WE) begin
        mem[Addr] <= DI;    // Write on WE
      end
    end
  end

  // Read operation (combinational)
  always @(*) begin
    if (E && !WE) begin
      DO = mem[Addr];       // Combinational read
    end else begin
      DO = 8'bz;            // Tri-state when not reading
    end
  end

endmodule
