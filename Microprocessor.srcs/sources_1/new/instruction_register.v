`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2025 11:07:47 PM
// Design Name: 
// Module Name: instruction_register
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


module instruction_register (
    input wire clk,
    input wire reset,
    input wire ir_e,
    input wire [15:0] pmem_out,
    output wire [15:0] ir_out
);

    reg [15:0] IR;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            IR <= 16'b0;
        end else if (ir_e) begin
            IR <= pmem_out;
        end
    end

    assign ir_out = IR;

endmodule

