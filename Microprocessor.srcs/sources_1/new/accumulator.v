`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2025 11:09:41 PM
// Design Name: 
// Module Name: accumulator
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


module accumulator (
    input wire clk,
    input wire reset,
    input wire acc_en,
    input wire [7:0] alu_out,
    output wire [7:0] acc_out
);

    reg [7:0] ACC;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            ACC <= 8'b0;
        end else if (acc_en) begin
            ACC <= alu_out;
        end
    end

    assign acc_out = ACC;

endmodule

