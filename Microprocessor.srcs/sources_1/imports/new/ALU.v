`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2025
// Design Name: ALU
// Module Name: ALU
// Project Name: Microprocessor
// Description: ALU for basic operations and flag generation
//////////////////////////////////////////////////////////////////////////////////


module ALU(
    input [7:0] Operand1,
    input [7:0] Operand2,
    input E,
    input [3:0] Mode,
    input [3:0] CFlags,
    output reg [7:0] Out,
    output reg [3:0] Flags
);

    // ALU operation modes
    parameter ADD         = 4'b0001;  // Addition
    parameter SUB         = 4'b0010;  // Subtraction
    parameter AND         = 4'b0011;  // Bitwise AND
    parameter OR          = 4'b0100;  // Bitwise OR
    parameter XOR         = 4'b0101;  // Bitwise XOR
    parameter NOT         = 4'b0110;  // Bitwise NOT (uses Operand1 only)
    parameter SHIFT_LEFT  = 4'b0111;  // Logical Shift Left
    parameter SHIFT_RIGHT = 4'b1000;  // Logical Shift Right
    parameter ROTATE_LEFT = 4'b1001;  // Rotate Left through Carry
    parameter ROTATE_RIGHT= 4'b1010;  // Rotate Right through Carry
    parameter ADC         = 4'b1011;  // Add with Carry
    parameter SBC         = 4'b1111;  // Subtract with Carry
    parameter PASS        = 4'b1100;  // Pass Operand2 through (for LDI)
    parameter INC         = 4'b1101;  // Increment Operand1
    parameter DEC         = 4'b1110;  // Decrement Operand1

    reg [8:0] temp_result; // Extra bit for carry detection
    always @(*) begin
        Out = 8'b0;
        temp_result = 9'b0;

        if (E) begin
            case (Mode)
                ADD: begin
                    temp_result = Operand1 + Operand2;
                    Out = temp_result[7:0];
                    Flags[0] = temp_result[8]; // Carry
                    if (Operand1[7] == Operand2[7] && Out[7] != Operand1[7])
                        Flags[1] = 1; // Set overflow flag

                end
                SUB: begin
                    temp_result = Operand1 - Operand2;
                    Out = temp_result[7:0];
                    Flags[0] = Operand1 < Operand2; // Borrow
                end
                AND: Out = Operand1 & Operand2;
                OR:  Out = Operand1 | Operand2;
                XOR: Out = Operand1 ^ Operand2;
                NOT: Out = ~Operand1;
                SHIFT_LEFT: begin
                    Out = Operand1 << 1;
                    Flags[0] = Operand1[7]; // Carry out
                end
                SHIFT_RIGHT: begin
                    Out = Operand1 >> 1;
                    Flags[0] = Operand1[0]; // Carry out
                end
                ROTATE_LEFT: begin
                    Out = {Operand1[6:0], CFlags[0]};
                    Flags[0] = Operand1[7];
                end
                ROTATE_RIGHT: begin
                    Out = {CFlags[0], Operand1[7:1]};
                    Flags[0] = Operand1[0];
                end
                ADC: begin
                    temp_result = Operand1 + Operand2 + CFlags[0];
                    Out = temp_result[7:0];
                    Flags[0] = temp_result[8]; // Carry
                end
                SBC: begin
                    temp_result = Operand1 - Operand2 - CFlags[0];
                    Out = temp_result[7:0];
                    Flags[0] = Operand1 < (Operand2 + CFlags[0]); // Borrow
                end
                PASS: Out = Operand2; // For LDI
                INC: Out = Operand1 + 1;
                DEC: Out = Operand1 - 1;
                default: Out = Operand1;
            endcase

            // Set status flags (except carry which is set in operations)
            Flags[2] = (Out == 8'b0);  // Zero flag
            Flags[3] = Out[7];         // Negative flag
        end
    end
endmodule