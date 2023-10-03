# 7SegmentFPGA
Using the DE10-Lite FPGA board, created a BCD decoder displaying on a 7-segment display with Verilog.

Stack: Intel Quartus, Verilog HDL

First created a truth table of all possible binary combinations represented on the 7-segment display, then mapped each output onto Karnaugh maps, deriving boolean functions.

Finally, implemented the logic circuits derived from the Karnaugh maps for each segment in the Quartus software. Used one input and output for the switches and display segments respectively. SW3-0 --> in[3:0] , HEX00-06 --> seg[6:0] .

Video Demonstration: https://youtu.be/Ar5T22X13lw?si=OF6Zw3vlBkUHr3Yv