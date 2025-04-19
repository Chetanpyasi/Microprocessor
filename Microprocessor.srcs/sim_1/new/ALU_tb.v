`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 06:53:31 PM
// Design Name: 
// Module Name: ALU_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for ALU with ADC and SBC integration
//////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

    reg [7:0] Operand1, Operand2;
    reg E;
    reg [3:0] Mode;
    reg [3:0] CFlags;
    wire [7:0] Out;
    wire [3:0] Flags;

    // Instantiate the ALU
    ALU uut (
        .Operand1(Operand1),
        .Operand2(Operand2),
        .E(E),
        .Mode(Mode),
        .CFlags(CFlags),
        .Out(Out),
        .Flags(Flags)
    );

    initial begin
        // Enable ALU
        E = 1;
        CFlags = 4'b0000; // default carry flag

        Operand1 = 8'd15;
        Operand2 = 8'd10;
        Mode = 4'b0000; // ADD
        #10;

        Mode = 4'b0001; // SUB
        #10;

        Mode = 4'b0010; // AND
        #10;

        Mode = 4'b0011; // OR
        #10;

        Mode = 4'b0100; // XOR
        #10;

        Mode = 4'b0101; // NOT
        #10;

        Mode = 4'b0110; // SHIFT_LEFT
        #10;

        Mode = 4'b0111; // SHIFT_RIGHT
        #10;

        // ---- New Tests for Carry-In Modes ----

        // ADC: 15 + 10 + 1 = 26
        CFlags = 4'b0001;  // Carry-in set
        Operand1 = 8'd15;
        Operand2 = 8'd10;
        Mode = 4'b1000;    // ADC
        #10;

        // SBC: 15 - 10 - 1 = 4
        CFlags = 4'b0001;  // Carry-in set
        Operand1 = 8'd15;
        Operand2 = 8'd10;
        Mode = 4'b1001;    // SBC
        #10;

        // ADC without carry-in: 15 + 10 + 0 = 25
        CFlags = 4'b0000;
        Operand1 = 8'd15;
        Operand2 = 8'd10;
        Mode = 4'b1000;    // ADC
        #10;

        // SBC without carry-in: 15 - 10 - 0 = 5
        CFlags = 4'b0000;
        Operand1 = 8'd15;
        Operand2 = 8'd10;
        Mode = 4'b1001;    // SBC
        #10;

        // Done
        $finish;
    end

    initial begin
        // Monitor the ALU output and flags
        $monitor("Time = %t | Mode = %b | Operand1 = %d | Operand2 = %d | CFlags = %b | Out = %d | Flags = %b", 
                 $time, Mode, Operand1, Operand2, CFlags, Out, Flags);
    end

endmodule
