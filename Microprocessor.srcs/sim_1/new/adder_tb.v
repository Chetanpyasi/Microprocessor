`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 06:52:24 PM
// Design Name: 
// Module Name: adder_tb
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


module adder_tb;

  // Testbench signals
  reg clk;                 // Clock signal
  reg [7:0] In;            // Input Program Counter
  wire [7:0] Out;          // Output incremented Program Counter

  // Instantiate the adder module
  adder uut (
    .clk(clk),
    .In(In),
    .Out(Out)
  );

  // Clock generation (50 MHz)
  always begin
    #5 clk = ~clk;  // Toggle clock every 5 ns, generating a 100 MHz clock
  end

  // Test sequence
  initial begin
    // Initialize signals
    clk = 0;
    In = 8'b00000000;  // Start with PC value 0
    
    // Display initial values
    $display("Time\tclk\tIn\tOut");
    $monitor("%g\t%b\t%b\t%b", $time, clk, In, Out);

    // Apply test cases with some delay to ensure signal propagation
    #5 In = 8'b00000001;  // Set PC value to 1
    #10 In = 8'b11111110;  // Set PC value to 254
    #10 In = 8'b11111111;  // Set PC value to 255
    #10 In = 8'b00000000;  // Set PC value to 0

    // End the simulation
    #20 $finish;
end

endmodule