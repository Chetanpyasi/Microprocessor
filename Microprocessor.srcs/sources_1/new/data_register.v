`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2025 11:11:30 PM
// Design Name: 
// Module Name: data_register
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


module data_register (
    input wire clk,
    input wire reset,
    input wire dr_e,
    input wire [7:0] dmem_out,
    output wire [7:0] dr_out
);

    reg [7:0] DR;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            DR <= 8'b0;
        end else if (dr_e) begin
            DR <= dmem_out;
        end
    end

    assign dr_out = DR;

endmodule
