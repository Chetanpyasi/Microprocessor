`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 09:10:13 PM
// Design Name: 
// Module Name: Dmem_tb
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



module DMem_tb;

// Testbench signals
reg clk;
reg E;
reg WE;
reg [3:0] Addr;
reg [7:0] DI;
wire [7:0] DO;

// Instantiate the DMem module
DMem uut (
    .clk(clk),
    .E(E),
    .WE(WE),
    .Addr(Addr),
    .DI(DI),
    .DO(DO)
);

// Clock generation
always begin
    clk = 0; #5;
    clk = 1; #5;
end

// Initial block for test vectors
initial begin
    // Initialize inputs
    clk = 0;
    E = 0;
    WE = 0;
    Addr = 4'b0000;
    DI = 8'b00000000;
    
    // Test case 1: Write data to memory location 0
    #10;
    E = 1; WE = 1; Addr = 4'b0000; DI = 8'b10101010;
    #10;
    E = 0; WE = 0; // Disable to isolate output
    
    // Test case 2: Read from memory location 0 (expected output 0xAA)
    #10;
    E = 1; WE = 0; Addr = 4'b0000;
    #10;
    
    // Test case 3: Write to a different address (location 1)
    #10;
    E = 1; WE = 1; Addr = 4'b0001; DI = 8'b11001100;
    #10;
    E = 0; WE = 0;
    
    // Test case 4: Read from memory location 1 (expected output 0xCC)
    #10;
    E = 1; WE = 0; Addr = 4'b0001;
    #10;
    
    // Test case 5: Disable memory (check high impedance state for DO)
    #10;
    E = 0; WE = 0; Addr = 4'b0001;
    #10;
    
    // Test case 6: Write to memory location 2 (with different data)
    #10;
    E = 1; WE = 1; Addr = 4'b0010; DI = 8'b11110000;
    #10;
    
    // Test case 7: Read from memory location 2 (expected output 0xF0)
    #10;
    E = 1; WE = 0; Addr = 4'b0010;
    #10;
    
    // Test case 8: Try a memory read with disabled memory
    #10;
    E = 0; WE = 0; Addr = 4'b0011;
    #10;

    // End the simulation
    $finish;
end

// Monitor the signals
initial begin
    $monitor("Time: %0t, Addr: %b, DI: %b, DO: %b, E: %b, WE: %b", 
             $time, Addr, DI, DO, E, WE);
end

endmodule

