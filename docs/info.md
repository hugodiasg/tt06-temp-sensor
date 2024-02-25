<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The PTAT sensor allows temperature detection. It sends a voltage value `vts` to its output, which is buffered `out_buff`. Next, there is a Mixed-Signal Σ − ∆ block to convert the voltage value into digital pulses through sigma- delta modulation on `out`.


## How to test

Measure the temperature of the environment and measure the voltage coming out of the buffer `out_buff` at some temperature values to calibrate the sensor and find the linear equation. Observe the pulses being modulated at the output `out`.

## External hardware

Oscilloscope to observe output signals.
