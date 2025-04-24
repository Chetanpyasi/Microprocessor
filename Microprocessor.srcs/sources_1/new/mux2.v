`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2025 11:30:51 PM
// Design Name: 
// Module Name: mux2
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


module mux2 (
    input wire mux2_sel,
    input wire [7:0] dr_out,
    input wire [15:0] ir_out, 
    output wire [7:0] mux2_out
);

    reg [7:0] mux2_out_reg;

    always @(*) begin
        if (mux2_sel) begin
            mux2_out_reg = dr_out;
        end else begin
            mux2_out_reg = ir_out[7:0];
        end
    end

    assign mux2_out = mux2_out_reg;

endmodule

