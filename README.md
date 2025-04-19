# 8-bit Microprocessor in Verilog

This project demonstrates a simple, educational 8-bit microprocessor implemented in Verilog and verified through simulation in Vivado. It is built from scratch and showcases how a processor executes instructions using custom components like an ALU, program memory, control logic, and data memory.

---

## 🧠 Features

- 8-bit word size for instruction and data
- Custom instruction set
- Basic instruction cycle implementation: Fetch → Decode → Execute
- Modular Verilog code for each subsystem
- Vivado project integration for synthesis and simulation

---

## 🧱 Architecture Overview

### Core Components

| Module           | Description                                                  |
|------------------|--------------------------------------------------------------|
| `ALU`            | Performs arithmetic and logical operations (ADD, SUB, AND, OR) |
| `PMem`           | Program memory (ROM) containing the instruction set          |
| `DMem`           | Data memory (RAM) for runtime data storage                   |
| `Control_Logic`  | Decodes opcodes and generates control signals                |
| `MUX1`           | Selects between different data inputs                        |
| `adder`          | Used for program counter incrementing                        |
| `top`            | Top-level module connecting all submodules                   |

---

## 🧾 Instruction Set

| Opcode | Operation     | Description                        |
|--------|---------------|------------------------------------|
| 0000   | NOP           | No operation                       |
| 0001   | LOAD          | Load from memory                   |
| 0010   | STORE         | Store to memory                    |
| 0011   | ADD           | Add two values                     |
| 0100   | SUB           | Subtract two values                |
| 0101   | AND           | Bitwise AND                        |
| 0110   | OR            | Bitwise OR                         |
| 0111   | JMP           | Jump to address                    |
| 1000   | JZ            | Jump if zero                       |
| 1001   | JNZ           | Jump if not zero                   |

---

## 🛠️ Getting Started

### Prerequisites

- [Xilinx Vivado Design Suite](https://www.xilinx.com/products/design-tools/vivado.html)
- Basic knowledge of Verilog and digital design

### Cloning the Repo

```bash
git clone https://github.com/Chetanpyasi/Microprocessor.git
cd Microprocessor
