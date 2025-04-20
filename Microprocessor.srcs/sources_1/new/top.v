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

    wire [7:0] pc_out,adder_out,dmem_out,alu_out,acc_out,dr_out,mux2_out;
    wire [11:0] ir_out,pmem_out;
    wire [3:0] sr_out;
    
    wire pc_e,acc_e,sr_e,ir_e,dr_e,pmem_e,dmem_e,alu_e;
    wire dmem_we;
    wire mux2_sel;
    wire pmem_le;
    wire [3:0] alu_mode,alu_flags;

    reg [1:0] stage;
    
    parameter HLT = 4'b1111;  

    
    ProgramCounter pc_inst (
        .clk(clk),
        .reset(reset),
        .enable(pc_e),
        .next_pc(adder_out),
        .opcode(ir_out[11:8]),
        .pc_out(pc_out)
    );


    
    // Instantiate the instruction_register module
    instruction_register IR_unit (
        .clk(clk),
        .reset(reset),
        .ir_e(ir_e),
        .pmem_out(pmem_out),
        .ir_out(ir_out)
    );


    
    // Instantiate the accumulator
    accumulator ACC_unit (
        .clk(clk),
        .reset(reset),
        .acc_en(acc_e),     // Make sure `acc_en` is your control signal
        .alu_out(alu_out),   // Connect from your ALU output
        .acc_out(acc_out)
    );


    wire [7:0] dr_out;
    
    // Instantiate the data_register module
    data_register DR_unit (
        .clk(clk),
        .reset(reset),
        .dr_e(dr_e),
        .dmem_out(dmem_out),
        .dr_out(dr_out)
    );
    

    wire [3:0] sr_out;
    
    // Instantiate the status_register module
    status_register SR_unit (
        .clk(clk),
        .reset(reset),
        .sr_e(sr_e),
        .alu_flags(alu_flags),
        .sr_out(sr_out)
    );


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

    wire [11:0] pmem_out;
    
    // Instantiate the program_memory module
    program_memory pmem_unit (
        .clk(clk),
        .pmem_le(pmem_le),
        .pmem_e(pmem_e),
        .pc_out(pc_out),
        .acc_out(acc_out),
        .pmem_out(pmem_out)
    );
    
    wire [7:0] mux2_out;
    
    // Instantiate the mux2 module
    mux2 mux2_unit (
        .mux2_sel(mux2_sel),   // Select signal to choose between dr_out and ir_out[7:0]
        .dr_out(dr_out),       // Data input from dr_out
        .ir_out(ir_out),       // Instruction register output (12 bits, only lower 8 bits used)
        .mux2_out(mux2_out)    // Output of the mux2
    );
    assign debug_out = acc_out;

endmodule


