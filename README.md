# 8-bit Arithmetic Logic Unit (ALU) built on NEXYS A7 FPGA with Seven Segment Support

## Problem Statement:

Designing and implementing an 8-bit Arithmetic Logic Unit (ALU) for a specific function and replicating the output on a seven-segment display using a Nexys A7 FPGA board.

## Tech Stack

The design is developed in Verilog HDL, simulated and synthesized using the Xilinx Vivado Design Suite
The synthesized designs were mapped to the Nexys A7 board featuring an Artix-7 FPGA. 
Behavioural simulation, timing analysis and on-hardware validation were performed to verify correct behavior for different configurations and input stimulus.

## Authors

- Aditya Nagane ([AadityaNagane](https://github.com/AadityaNagane))
- Aditi Rao ([unfortunatelygeek](https://github.com/unfortunatelygeek))
- Adya Jha ([adyajha15](https://github.com/adyajha15))
- Diya Shah
- Ameya Joshi ([1mbot](https://github.com/1mbot))

## Documentation

The relevant documentation is given below!

[Nexys A7 Documentation](https://digilent.com/reference/programmable-logic/nexys-a7/start)

[XDC File](https://github.com/Digilent/digilent-xdc/blob/master/Nexys-A7-100T-Master.xdc)



## Run Locally

##### Note: You must have Vivado installed on to your personal computer or VM. Note that before you can run Vivado (or any Xilinx tool), you must add them to your PATH.
```source /tools/Xilinx/Vivado/2020.2/settings64.sh```
You can then run Vivado with the command:
```vivado```

##### Main Installation:

Please download the files into the folder alu_simulator. Now, you can run the code on your local machine (and on the FPGA connected to your machine) by running:

```bash
vivado -source alu_simulator.tcl
```







