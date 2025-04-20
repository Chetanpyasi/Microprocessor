`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2025 11:13:30 PM
// Design Name: 
// Module Name: status_register
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


module status_register (
    input wire clk,
    input wire reset,
    input wire sr_e,
    input wire [3:0] alu_flags,
    output wire [3:0] sr_out
);

    reg [3:0] SR;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            SR <= 4'b0;
        end else if (sr_e) begin
            SR <= alu_flags;
        end
    end

    assign sr_out = SR;

endmodule
