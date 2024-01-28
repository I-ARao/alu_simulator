# Students Training Programme conducted under

# S.P.I.T. Students Empowerment Scheme

# **(AY: 2023-2024)**

# **Silicon to System Journey**

# **Conducted by**

**Industry Experts: IngotSEMI Technologies LLP., Bangalore**

**&**

**Experts from Academics**

## **Duration:**

## **23**

## **rd**

## **December 2023 to 28**

## **th**

## **December 2023**

**Venue: VLSI/Embedded Systems Laboratory, Room No. 301**

**A Report on Project Based Assignment**

## Group No. 3

**Title of the Assignment: ALU IMPLEMENTATION**

Link for video recording of the running project (10 Marks):

A video recording should be a minimum 5-10 mins. It should cover the introduction to the Group Member, Description of the Assignment Problem, FPGA Board used, Discussion on results of Simulation and Hardware Results.

## **Details of the Group Members**

| **Sr. No** | **Name** | **UCID** | **Marks Obtained**  **Maximum Marks 50** |
| --- | --- | --- | --- |
|
| |
| Video (10 M) | Code (20 M) | Simulation Results (10 M) | Hardware Results (10 M) | Total (50 M) |
| **1.** | Adya Jha | 2022200054 |
 |
 |
 |
 |
 |
| **2.** | Aditya Nagane | 2023201001 |
 |
 |
 |
 |
 |
| **3.** | Aditi Rao | 2022200003 |
 |
 |
 |
 |
 |
| **4.** | Ameya Joshi | 2022200058 |
 |
 |
 |
 |
 |
| **5.** | Diya Shah | 2022200032 |
 |
 |
 |
 |
 |

**Problem Statement:**

Designing and implementing an 8-bit Arithmetic Logic Unit (ALU) for a specific function and

replicating the output on a seven-segment display using a Nexys 4 A7 FPGA board.

Questions asked:

1. Number of LUTs used: 224

2. Number of FF used: 37

3. Number of I/O used: 37

4. Number of BUFG used: In main only 1

In this project, we were expected to design and implement an Arithmetic Logic Unit (ALU) on a Nexys A7 FPGA board.

Our ALUperforms Addition, Subtraction, AND, OR operations, emulating a basic ALU, and its output is displayed on the board's seven-segment display.

**Our Approach:**

We first designed the ALU module, based on specifications. Then, we designed the seven\_segment\_disply module to interface the output with the seven segment display.

However, here is where we hit our roadblock. Our ALU is an 8-bit ALU, whose limits are 0-255 (+ve integers). However, the interfacing module could only access one seven-segment display at a time, even though we needed 3.

The program, after a lot of research and brainstorming, includes a multiplexing segment to accommodate the 3-digit display we require. It relies on the principle of persistence of vision to display 3 outputs, when only one seven segment display is accessible at a time.

VHDL/Verilog Code with comments:

Module Structure:

![](RackMultipart20240128-1-7m4nwr_html_135864e80b94c59a.png)

![](RackMultipart20240128-1-7m4nwr_html_f8c3109b5fdb29d0.png)

![](RackMultipart20240128-1-7m4nwr_html_4752c22ea7f0994f.png)

![](RackMultipart20240128-1-7m4nwr_html_806df0aaee16eeb3.png)

![](RackMultipart20240128-1-7m4nwr_html_b59df1e2d22bdc78.png)

![](RackMultipart20240128-1-7m4nwr_html_e40a90e46b109dda.png)

![](RackMultipart20240128-1-7m4nwr_html_8bbc35e7eaa681f0.png)

![](RackMultipart20240128-1-7m4nwr_html_e5d29c3b3b32fb44.png)

![](RackMultipart20240128-1-7m4nwr_html_72160398c17106a4.png)

Simulation Results:

ALU Design:

![](RackMultipart20240128-1-7m4nwr_html_d5847ceaa683e9bf.png)

![](RackMultipart20240128-1-7m4nwr_html_7c775e5e260c8933.png)

![](RackMultipart20240128-1-7m4nwr_html_204e3362df289911.png)

Magnified version:
 ![](RackMultipart20240128-1-7m4nwr_html_6fb1342f31dc8dd9.png)

![](RackMultipart20240128-1-7m4nwr_html_2e8502a858a87ef0.png)

![](RackMultipart20240128-1-7m4nwr_html_7e4e71da67788afd.png)

![](RackMultipart20240128-1-7m4nwr_html_a335e422d1e3e494.png)

![](RackMultipart20240128-1-7m4nwr_html_7cb675550dfd3ee9.png)

Power Utilization Report:

![](RackMultipart20240128-1-7m4nwr_html_343a98ccc824df87.png)

Synthesis Design:

![](RackMultipart20240128-1-7m4nwr_html_c183fae7d5aeb4a0.png)

Overall Utilization Report:

![](RackMultipart20240128-1-7m4nwr_html_87f2f6891d78d35e.png)

![](RackMultipart20240128-1-7m4nwr_html_ff0ad97c19e99c37.png)

![](RackMultipart20240128-1-7m4nwr_html_7f94cb02d8763a10.png)

Simulation Results:

![](RackMultipart20240128-1-7m4nwr_html_b118ff173db58d0.png)

Magnified Result:

![](RackMultipart20240128-1-7m4nwr_html_47e60d297b48447.png)

Hardware Results (Photograph of the FPGA Development Board with desired output):

We took 16 and 1 as our input and this is the result for addition of 16+1=17

![](RackMultipart20240128-1-7m4nwr_html_38258a3f71b51f61.jpg)

We took 16 and 1 as our input and this is the result for subtraction of 16-1=15

![](RackMultipart20240128-1-7m4nwr_html_38305bf7b33363e4.jpg)

We took 2 and 3 as our input and OR operation and this is the result for operation:

![](RackMultipart20240128-1-7m4nwr_html_6f2fdea203c451bc.png)

We took 2 and 3 as our input and AND operation and this is the result for operation:

![](RackMultipart20240128-1-7m4nwr_html_f13ce0232e87b049.png)

Any other description related to the problem statement:

This is a rough block diagram for the main module of our code:

![](RackMultipart20240128-1-7m4nwr_html_62a0dcc0380261b7.jpg)

This is a rough block diagram for the schematic of our code:

![](RackMultipart20240128-1-7m4nwr_html_b5ac3b5c1c3db80f.jpg)

![](RackMultipart20240128-1-7m4nwr_html_f9c54dbb6d4851a2.png)
