# VLSI-Mini-Projects
Contains mini projects on VLSI using verilog HDL 
This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs common arithmetic and logical operations based on a 3-bit control input (ALUControl) ,by taking 4 bit inputs A and B , it displays the output as ALUResult

| ALUControl | Operation | Description             |
| ---------- | --------- | ----------------------- |
| `000`      | AND       | Bitwise AND of A and B  |
| `001`      | OR        | Bitwise OR of A and B   |
| `010`      | ADD       | A + B                   |
| `011`      | SUBTRACT  | A - B                   |
| `100`      | XOR       | Bitwise XOR of A and B  |
| `101`      | NOR       | Bitwise NOR (A OR B)'   |
| `110`      | NAND      | Bitwise NAND (A AND B)' |
| `111`      | NOT       | Bitwise NOT of A        |

Simulation: used Icarus verilog + GTKwave Through Command promt

iverilog -o sim.out ALU4bit.v ALU4bitTb.v
vvp sim.out
gtkwave ALU4bitTb.vcd

Output waveform:

<img width="1920" height="1020" alt="Screenshot 2025-07-22 180446" src="https://github.com/user-attachments/assets/af819e22-1358-4036-95b2-e16b569b2b94" />

Output in Command prompt:

<img width="1920" height="1020" alt="Screenshot 2025-07-22 180212" src="https://github.com/user-attachments/assets/8298dcfc-caab-42b3-8ebd-40fca9d1c3fb" />



