# 8-bit Arithmetic Logic Unit (ALU) built on NEXYS A7 FPGA with Seven Segment Support

## Problem Statement:

Designing and implementing an 8-bit Arithmetic Logic Unit (ALU) for a specific function and replicating the output on a seven-segment display using a Nexys 4 A7 FPGA board.

## Tech Stack

The design is developed both in:

1. Verilog HDL, simulated and synthesized using the Xilinx Vivado Design Suite

2. C++, simulated and synthesized via Xilinx Vitis High Level Synthesis (HLS) tool
The synthesized designs are mapped to the Nexys A7 board featuring an Artix-7 FPGA. 
Functional simulation, timing analysis and on-hardware validation are performed to verify correct behavior for different configurations and input stimulus.

## Authors

- Aditya Nagane
- Aditi Rao ([I-ARao](https://github.com/I-ARao))
- Adya Jha
- Diya Shah
- Ameya Joshi

## Documentation

The relevant documentation is given below!

[Nexys A7 Documentation](https://digilent.com/reference/programmable-logic/nexys-a7/start)

[XDC File](https://github.com/Digilent/digilent-xdc/blob/master/Nexys-A7-100T-Master.xdc)



### Run Locally

##### Note: You must have Vivado installed on to your personal computer or VM. Note that before you can run Vivado (or any Xilinx tool), you must add them to your PATH.
```source /tools/Xilinx/Vivado/2020.2/settings64.sh```
You can then run Vivado with the command:
```vivado```

##### Main Installation:

Please download the files into the folder alu_simulator. Now, you can run the code on your local machine (and on the FPGA connected to your machine) by running:

```bash
vivado -source alu_simulator.tcl
```







