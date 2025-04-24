`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2025 04:00:17 PM
// Design Name: 
// Module Name: Control_Logic
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

module Control_Logic (
    input [1:0] stage,
    input [15:0] IR,      
    input [3:0] SR,
    output reg PC_E,
    output reg Acc_E,
    output reg SR_E,
    output reg IR_E,
    output reg DR_E,
    output reg PMem_E,
    output reg DMem_E,
    output reg DMem_WE,
    output reg ALU_E,
    output reg MUX2_Sel,
    output reg PMem_LE,
    output reg [3:0] ALU_Mode
);

    wire [7:0] opcode = {IR[15:8]}; 

   
    parameter LDI  = 8'b0000_0000; 
    parameter ADD  = 8'b0001_0000;
    parameter SUB  = 8'b0010_0000;
    parameter AND  = 8'b0011_0000;
    parameter OR   = 8'b0100_0000;
    parameter XOR  = 8'b0101_0000;
    parameter NOT  = 8'b0110_0000;
    parameter SHL  = 8'b0111_0000;
    parameter SHR  = 8'b1000_0000;
    parameter ROL  = 8'b1001_0000;
    parameter ROR  = 8'b1010_0000;
    parameter ADC  = 8'b1011_0000;
    parameter SBC  = 8'b1100_0000;
    parameter INC  = 8'b1101_0000;
    parameter DEC  = 8'b1110_0000;
    parameter STO  = 8'b1111_0000;  
    parameter LOD  = 8'b1111_0001;  
    parameter HLT  = 8'b1111_1111;  

    

    always @(*) begin
        // Default values
        PC_E = 0;
        Acc_E = 0;
        SR_E = 0;
        IR_E = 0;
        DR_E = 0;
        PMem_E = 0;
        DMem_E = 0;
        DMem_WE = 0;
        ALU_E = 0;
        MUX2_Sel = 0;
        PMem_LE = 0;
        ALU_Mode = 4'b0000;

        case (stage)
            2'b00: begin  // FETCH
                PC_E = (opcode != HLT);
                PMem_E = 1;
                IR_E = 1;
            end
            
            2'b01: begin  // DECODE
                casez (opcode)
                    LDI: begin
                        MUX2_Sel = 0; // Immediate value
                        ALU_E = 1;
                        Acc_E = 1;
                        ALU_Mode = 4'b1100; // PASS mode
                    end
                    ADD, SUB, AND, OR, XOR, NOT, SHL, SHR, ROL, ROR, ADC, SBC, INC, DEC: begin
                        MUX2_Sel = (opcode == NOT || opcode == INC || opcode == DEC) ? 1 : 0;
                        ALU_E = 1;
                        Acc_E = 1;
                        SR_E = 1;
                        ALU_Mode = opcode[7:4]; // Use upper nibble for ALU mode
                    end
                    8'b1111_0000: begin // STO
                        DMem_E = 1;
                        DMem_WE = 1;
                    end
                    8'b1111_0001: begin // LOD
                        DMem_E = 1;
                        DR_E = 1;
                    end
                    HLT: begin
                        PC_E = 0;
                    end
                    default: begin
                        // Handle undefined opcodes
                    end
                endcase
            end
            
            2'b10: begin  // EXECUTE
                if (opcode == LOD) begin
                    Acc_E = 1;
                    ALU_Mode = 4'b1100; // PASS mode
                    ALU_E = 1;
                end
            end
            
            2'b11: begin  
            end
        endcase
    end
endmodule