`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 09:54:15 PM
// Design Name: 
// Module Name: Control_Logic_tb
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



module Control_Logic_tb;

  // Inputs
  reg [1:0] stage;
  reg [11:0] IR;
  reg [3:0] SR;

  // Outputs
  wire PC_E;
  wire Acc_E;
  wire SR_E;
  wire IR_E;
  wire DR_E;
  wire PMem_E;
  wire DMem_E;
  wire DMem_WE;
  wire ALU_E;
  wire MUX1_Sel;
  wire MUX2_Sel;
  wire PMem_LE;
  wire [3:0] ALU_Mode;

  // Instantiate the Unit Under Test (UUT)
  Control_Logic uut (
    .stage(stage),
    .IR(IR),
    .SR(SR),
    .PC_E(PC_E),
    .Acc_E(Acc_E),
    .SR_E(SR_E),
    .IR_E(IR_E),
    .DR_E(DR_E),
    .PMem_E(PMem_E),
    .DMem_E(DMem_E),
    .DMem_WE(DMem_WE),
    .ALU_E(ALU_E),
    .MUX1_Sel(MUX1_Sel),
    .MUX2_Sel(MUX2_Sel),
    .PMem_LE(PMem_LE),
    .ALU_Mode(ALU_Mode)
  );

  // Test stimulus
  initial begin
    // Dump waveforms for analysis (optional)
    $dumpfile("Control_Logic_tb.vcd");
    $dumpvars(0, Control_Logic_tb);

    // Initialize inputs
    IR = 12'hABC;
    SR = 4'hF;

    $display("Testing LOAD Stage");
    stage = 2'b00; #10;  // LOAD
    $display("PC_E=%b, Acc_E=%b, SR_E=%b, IR_E=%b", PC_E, Acc_E, SR_E, IR_E);

    $display("Testing FETCH Stage");
    stage = 2'b01; #10;  // FETCH
    $display("PMem_E=%b, ALU_E=%b, MUX1_Sel=%b, ALU_Mode=%b", PMem_E, ALU_E, MUX1_Sel, ALU_Mode);

    $display("Testing DECODE Stage");
    stage = 2'b10; #10;  // DECODE
    $display("DMem_E=%b, DMem_WE=%b, IR_E=%b, MUX2_Sel=%b", DMem_E, DMem_WE, IR_E, MUX2_Sel);

    $display("Testing EXECUTE Stage");
    stage = 2'b11; #10;  // EXECUTE
    $display("ALU_E=%b, Acc_E=%b", ALU_E, Acc_E);

    $display("Testing Default / Invalid Stage");
    stage = 2'bxx; #10;
    $display("Default behavior, all control signals should be 0.");

    $finish;
  end

endmodule

