`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 08:43:31 PM
// Design Name: 
// Module Name: MUX1_tb
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

module MUX1_tb;

    // Testbench signals
    reg [7:0] In1;
    reg [7:0] In2;
    reg Sel;
    wire [7:0] Out;

    // Instantiate the MUX1 module
    MUX1 uut (
        .In1(In1),
        .In2(In2),
        .Sel(Sel),
        .Out(Out)
    );

    initial begin
        // Monitor changes
        $monitor("Time: %0dns | Sel = %b | In1 = %h | In2 = %h | Out = %h", 
                  $time, Sel, In1, In2, Out);

        // Test Case 1: Sel = 0, should output In1
        In1 = 8'hA5;  // 10100101
        In2 = 8'h3C;  // 00111100
        Sel = 0;
        #10;

        // Test Case 2: Sel = 1, should output In2
        Sel = 1;
        #10;

        // Test Case 3: Change inputs, Sel = 0
        In1 = 8'hFF;
        In2 = 8'h00;
        Sel = 0;
        #10;

        // Test Case 4: Sel = 1
        Sel = 1;
        #10;

        // Finish simulation
        $finish;
    end

endmodule

