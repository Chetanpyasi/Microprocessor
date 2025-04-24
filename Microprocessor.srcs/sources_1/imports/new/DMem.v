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
    input E,               
    input WE,              
    input [3:0] Addr,      
    input [7:0] DI,        
    output reg [7:0] DO    
);

  reg [7:0] mem [0:15]; 

  always @(posedge clk) begin
    if (E) begin
      if (WE) begin
        mem[Addr] <= DI;    
      end
    end
  end

  always @(*) begin
    if (E && !WE) begin
      DO = mem[Addr];       
    end else begin
      DO = 8'bz;            
    end
  end

endmodule
