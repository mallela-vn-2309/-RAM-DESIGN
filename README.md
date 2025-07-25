# -RAM-DESIGN

# COMPANY: COOTECH IT SOLUTIONS
# NAME: MALLELA VEERANIKHITHA
# INTERN ID: CT08DF2955
# DOMAIN: VLSI
# DURATION: 2 MONTHS
# MENTOR: NEELA SANTOSH

🔧 Project Title: Synchronous RAM Design Using Verilog
Internship Program: VLSI Internship @ CODTECH
Tools Used: Verilog HDL, ModelSim (Mentor Graphics)

📌 Objective
The aim of this project is to design, implement, and simulate a synchronous RAM (Random Access Memory) module using Verilog HDL. This project focuses on understanding memory design, synchronous operation with a clock, and verifying correct data storage and retrieval through a testbench. It emphasizes RTL (Register Transfer Level) coding style and simulation-based validation using ModelSim.

🛠️ Project Overview
Synchronous RAM is a memory element where all operations—read and write—are triggered by a clock signal. In this task, an 8-word deep, 8-bit wide single-port RAM was designed. It supports:

Write Operation: When wr_en is high and clk edge arrives, data_in is written into the RAM location pointed to by addr.

Read Operation: When rd_en is high and clk edge arrives, the RAM outputs the content of the location pointed to by addr onto data_out.

The design consists of a register array to hold the memory values, synchronous read and write logic inside an always @(posedge clk) block, and reset functionality to initialize the memory.

🧪 Simulation and Testing
A testbench was developed to simulate different memory operations. The key inputs—clk, rst, addr, wr_en, rd_en, and data_in—were controlled in the testbench, and data_out was monitored.

Simulation Steps:

Assert reset and deassert after some time to initialize memory.

Write data to multiple memory locations using different addr values.

Read back data from those addresses to verify correctness.

Check simultaneous or invalid control combinations (like both wr_en and rd_en high) to ensure design handles it as expected.

ModelSim was used for compilation and simulation. After compiling the RAM RTL and testbench, a waveform simulation was run (run 300ns) to verify correct timing behavior and output transitions.

📈 Results and Output
Simulation confirmed correct RAM behavior:

Data written at specific addresses was retained and correctly read back.

No data corruption was observed during simultaneous read/write because the design was tested with such edge cases.

Waveform clearly showed how data_out responded only on clock edges when rd_en was high.

All control signals (wr_en, rd_en, rst) influenced RAM operation as expected.

Example:

At time 50ns, wr_en=1, addr=3, data_in=8'hA5 → Location 3 stored value A5.

At 100ns, rd_en=1, addr=3 → data_out=8'hA5, confirming successful read.

🧰 Tools and Technologies

Verilog HDL: For describing RAM logic and writing the testbench.

ModelSim: To compile, simulate, and verify the design via waveform.

Waveform Viewer (ModelSim): For signal-level verification of memory behavior.

✅ Conclusion
This task deepened my understanding of memory design in digital systems. I learned how synchronous RAM operates with clocked read/write access and how to rigorously test memory operations. Working with ModelSim helped improve my simulation debugging and waveform analysis skills. The synchronous RAM project serves as a solid foundation for future work in processor design and memory-mapped systems, which are explored in upcoming internship tasks.

#output
<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/53698895-ab6f-47c7-9c65-f3e64082dcad" />
