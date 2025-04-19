`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2025 03:58:54 PM
// Design Name: 
// Module Name: MUX1
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


module MUX1 (
    input [7:0] In1,   // 8-bit input 1
    input [7:0] In2,   // 8-bit input 2
    input Sel,         // 1-bit select signal
    output reg [7:0] Out  // 8-bit output
);

    // Always block for combinational logic
    always @(*) begin
        if (Sel) begin
            Out = In2;  // If Sel is 1, select In2
        end else begin
            Out = In1;  // If Sel is 0, select In1
        end
    end

endmodule


