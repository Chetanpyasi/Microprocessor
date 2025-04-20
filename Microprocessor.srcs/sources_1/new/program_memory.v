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
    input wire pmem_le,              // Write enable
    input wire pmem_e,               // Read enable
    input wire [7:0] pc_out,         // Address from program counter
    input wire [19:0] acc_out,       // Data to write
    output wire [19:0] pmem_out      // Data output
);

    reg [19:0] pmem [0:255];         // 256 x 20-bit program memory
    reg [19:0] pmem_do;

    // Load contents from binary file
    initial begin
        $readmemb("program.mem", pmem);  // Use binary-formatted memory file
    end

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
            pmem_do = 20'b0;
        end
    end

    assign pmem_out = pmem_do;

endmodule
