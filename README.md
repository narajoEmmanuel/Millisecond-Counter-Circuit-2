# Millisecond Counter Project - Digital Electronics

This repository documents the Millisecond Counter project conducted in the Digital Electronics course at the Costa Rica Institute of Technology.

### Circuit Design
Design a sequential circuit to count the number of input pulses through the "Pulse" port, considering pulses with a minimum duration of 4 clock cycles as valid. Pulses with durations less than 4 cycles should not be counted. The system outputs two 4-bit signals, "Units" representing the count units in BCD, and "Tens" representing the count tens, also in BCD. The system operates with a 100MHz clock signal ("CLK"). A synchronous "Reset" input resets the circuit to its initial state, restoring the count. The system can count up to 20 before resetting to zero upon a new input pulse.

### Verilog Implementation
Implement the designed circuit in Verilog, ensuring it adheres to the specified design and is synthesizable for the 100MHz clock frequency. Provide a clear explanation of the steps taken in the design process.
