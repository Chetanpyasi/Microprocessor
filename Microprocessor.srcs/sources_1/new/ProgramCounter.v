`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2025 11:02:05 PM
// Design Name: 
// Module Name: ProgramCounter
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


module ProgramCounter (
    input clk,
    input reset,
    input enable,             // pc_e
    input [7:0] next_pc,      // adder_out
    input [3:0] opcode,       // ir_out[11:8]
    output reg [7:0] pc_out
);

    parameter HLT = 4'b1111;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc_out <= 8'b0;
        end else if (enable && (opcode != HLT)) begin
            pc_out <= next_pc;
        end
    end

endmodule

