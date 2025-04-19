//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 06:00:00 PM
// Design Name: 
// Module Name: top_tb
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

`timescale 1ns / 1ps

module top_tb;

    reg clk;
    reg reset;
    wire [7:0] debug_out;

    top uut (
        .clk(clk),
        .reset(reset),
        .debug_out(debug_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    integer i;
    initial begin
        // Initialize program memory with 8-bit opcode instruction set
        // Format: {8-bit opcode, 4-bit operand} (12-bit total)
        uut.pmem[0]  = {8'b00000000, 4'b0000, 8'b00000101};  // LDI 5 into ACC
        uut.pmem[1]  = {8'b00010000, 4'b0001, 8'b00000011};  // ADD 3 => ACC = 5 + 3
        uut.pmem[2]  = {8'b00100000, 4'b0010, 8'b00000001};  // SUB 1
        uut.pmem[3]  = {8'b00110000, 4'b0011, 8'b00001111};  // AND 0x0F
        uut.pmem[4]  = {8'b01000000, 4'b0100, 8'b11110000};  // OR 0xF0
        uut.pmem[5]  = {8'b01010000, 4'b0101, 8'b10101010};  // XOR 0xAA
        uut.pmem[6]  = {8'b01100000, 4'b0110, 8'b00000000};  // NOT (ignores operand)
        uut.pmem[7]  = {8'b01110000, 4'b0111, 8'b00000001};  // SHL 1
        uut.pmem[8]  = {8'b10000000, 4'b1000, 8'b00000001};  // SHR 1
        uut.pmem[9]  = {8'b10010000, 4'b1001, 8'b00000001};  // ROL 1
        uut.pmem[10] = {8'b10100000, 4'b1010, 8'b00000001};  // ROR 1
        uut.pmem[11] = {8'b10110000, 4'b1011, 8'b00000001};  // ADC 1
        uut.pmem[12] = {8'b11000000, 4'b1100, 8'b00000001};  // SBC 1
        uut.pmem[13] = {8'b11010000, 4'b1101, 8'b00000000};  // INC (ignores operand)
        uut.pmem[14] = {8'b11100000, 4'b1110, 8'b00000000};  // DEC (ignores operand)
        uut.pmem[15] = {8'b11110000, 4'b1111, 8'b00000000};  // STO 0 (8-bit opcode)
        uut.pmem[16] = {8'b11110001, 4'b1111, 8'b00000000};  // LOD 0 (8-bit opcode)
        uut.pmem[17] = {8'b11111111, 4'b1111, 8'b00000000};  // HLT (8-bit opcode)

        
        // Fill rest with NOPs (using 00 opcode)
//        for (i = 18; i < 256; i = i + 1) begin
//            uut.pmem[i] = 12'b0;
//        end
    end

    initial begin
        reset = 1;
        #20;
        reset = 0;
        
        $display("Time\tStage\tPC\tIR\t\tACC\tALU_OUT\tSR\tDMem[0]");
        $monitor("%0t\t%b\t%h\t%h\t%h\t%h\t%b\t%h", 
                 $time, uut.stage, uut.pc_out, uut.ir_out, 
                 uut.acc_out, uut.alu_out, uut.sr_out, 
                 uut.data_memory.mem[0]);
        
        #2000;
        
        $display("Final ACC = %h", uut.acc_out);
        $display("Final DMem[0] = %h", uut.data_memory.mem[0]);
        $finish;
    end
endmodule