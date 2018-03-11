-> declaration of pivileged registers as an array P

R0			0000	
oldPC		0001	P1
oldSP		0010	P2
Flags		0011	P3
oldFlags	0100	P4
CauseReg	0101	P5
Sp			1110	R14

We have implemented 3 exceptions and all kinds of interrupts (nested interrupts excluded)

Exceptions Implemented:
1) Divide by zero
2) Data Read error
3) Data Write Error

The instruction fetch error will never occur since if the PC is out of range then data in MEM file is always 0xffffffff which converts to invalid opcode error
However if there is an invalid opcode the program will be terminated, because we could not handle whether the checkValidPC returns false due to completion of instruction memory or invalid opcode separately

Our PC jumps to 0x4 or 0x8 as per the requirement from EX stage as this would ensure that the incorrect instructions do not change/modify the context of the flags

to run the program with interrupts the special argument is :

-intt [INTERRUPT_IN File name] : Specify INTERRUPT_IN File Name

In case EX stage has a bubble instruction in the cycle in which interrupt occured , then the interrupt would not be executed

for example:
SAMPLE RUN: 

parul@parul-virtual-machine:~/Documents/SimpleRISC$ ./simulator/RISC-Simulator-master/bin/sim -input file.hex -output file.log -pipe -intt file.intt
Interrupt caused in Cycle No.: 6
Servicing begins in Cycle No.: 7
Program resumed in Cycle No.: 73

Exception caused in Cycle No.: 79
Servicing begins in Cycle No.: 80
Exception caused in Instruction No. 92 due to division by zero
Program resumed in Cycle No.: 146

Exception caused in Cycle No.: 158
Servicing begins in Cycle No.: 159
Exception caused in Instruction No. 98 due to data read error
Program resumed in Cycle No.: 225

Exception caused in Cycle No.: 227
Servicing begins in Cycle No.: 228
Exception caused in Instruction No. 99 due to data write error
Program resumed in Cycle No.: 294

Running time: 0.003817
