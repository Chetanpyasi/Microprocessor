`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 05:57:54 PM
// Design Name: 
// Module Name: top
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

module top (
    input clk,
    input reset,
    output [7:0] debug_out
);

    wire [7:0] pc_out;
    wire [7:0] adder_out;
    wire [11:0] ir_out;
    wire [11:0] pmem_out;
    wire [7:0] dmem_out;
    wire [7:0] alu_out;
    wire [7:0] acc_out;
    wire [7:0] dr_out;
    wire [3:0] sr_out;
    wire [7:0] mux2_out;
    
    wire pc_e;
    wire acc_e;
    wire sr_e;
    wire ir_e;
    wire dr_e;
    wire pmem_e;
    wire dmem_e;
    wire dmem_we;
    wire alu_e;
    wire mux2_sel;
    wire pmem_le;
    wire [3:0] alu_mode;
    wire [3:0] alu_flags;

    reg [1:0] stage;
    reg [7:0] PC;
    
    parameter HLT = 4'b1111;  

    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            PC <= 8'b0;
        end else if (pc_e && (ir_out[11:8] != HLT)) begin  // Freeze if HLT
            PC <= adder_out;
        end
    end
    assign pc_out = PC;

    reg [11:0] IR;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            IR <= 12'b0;
        end else if (ir_e) begin
            IR <= pmem_out;
        end
    end
    assign ir_out = IR;

    reg [7:0] ACC;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            ACC <= 8'b0;
        end else if (acc_e) begin
            ACC <= alu_out;
        end
    end
    assign acc_out = ACC;

    reg [7:0] DR;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            DR <= 8'b0;
        end else if (dr_e) begin
            DR <= dmem_out;
        end
    end
    assign dr_out = DR;

    reg [3:0] SR;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            SR <= 4'b0;
        end else if (sr_e) begin
            SR <= alu_flags;
        end
    end
    assign sr_out = SR;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            stage <= 2'b00;
        end else begin
            stage <= stage + 1;
        end
    end

    adder pc_adder (
        .clk(clk),
        .In(pc_out),
        .Out(adder_out)
    );

    ALU alu (
        .Operand1(acc_out),
        .Operand2(mux2_out),
        .E(alu_e),
        .Mode(alu_mode),
        .CFlags(4'b0),
        .Out(alu_out),
        .Flags(alu_flags)
    );

    Control_Logic control (
        .stage(stage),
        .IR(ir_out),
        .SR(sr_out),
        .PC_E(pc_e),
        .Acc_E(acc_e),
        .SR_E(sr_e),
        .IR_E(ir_e),
        .DR_E(dr_e),
        .PMem_E(pmem_e),
        .DMem_E(dmem_e),
        .DMem_WE(dmem_we),
        .ALU_E(alu_e),
        .MUX2_Sel(mux2_sel),
        .PMem_LE(pmem_le),
        .ALU_Mode(alu_mode)
    );

    DMem data_memory (
        .clk(clk),
        .E(dmem_e),
        .WE(dmem_we),
        .Addr(ir_out[3:0]),  // Use only 4 bits
        .DI(acc_out),
        .DO(dmem_out)
    );

    reg [11:0] pmem [0:255];
    reg [11:0] pmem_do;
    
    always @(posedge clk) begin
        if (pmem_le) begin
            pmem[pc_out] <= {4'b0, acc_out};
        end
    end
    
    always @(*) begin
        if (pmem_e) begin
            pmem_do = pmem[pc_out];
        end else begin
            pmem_do = 12'b0;
        end
    end
    assign pmem_out = pmem_do;

    reg [7:0] mux2_out_reg;
    always @(*) begin
        if (mux2_sel) begin
            mux2_out_reg = dr_out;
        end else begin
            mux2_out_reg = ir_out[7:0];
        end
    end
    assign mux2_out = mux2_out_reg;

    assign debug_out = acc_out;
endmodule


module MUX2 (
    input [7:0] In1,   // 8-bit input 1
    input [7:0] In2,   // 8-bit input 2
    input Sel,         // 1-bit select signal
    output reg [7:0] Out  // 8-bit output
);

    always @(*) begin
        if (Sel) begin
            Out = In2;
        end else begin
            Out = In1;
        end
    end

endmodule