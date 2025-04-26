`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2025 11:28:36 PM
// Design Name: 
// Module Name: program_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Program Memory that stores 20-bit instructions
// 
// Dependencies: program.mem (in binary format)
// 
// Revision:
// Revision 0.01 - Updated for 20-bit instructions
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module program_memory (
    input wire clk,
    input wire pmem_le,              
    input wire pmem_e,               
    input wire [7:0] pc_out,         
    input wire [15:0] acc_out,       
    output wire [15:0] pmem_out      
);

    (* rom_style = "block" *) reg [15:0] pmem [0:255];          // 256 x 16-bit program memory
    reg [15:0] pmem_do;



    // Write to memory
    always @(posedge clk) begin
        if (pmem_le) begin
            pmem[pc_out] <= acc_out;
        end
    end

    // Combinational read
    always @(*) begin
        if (pmem_e) begin
            pmem_do = pmem[pc_out];
        end else begin
            pmem_do = 16'b0;
        end
    end

    assign pmem_out = pmem_do;

endmodule
