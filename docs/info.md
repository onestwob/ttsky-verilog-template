<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project takes an 8-bit external input signal and shifts it right by 10 bits. When the shifted result equals zero, a counter increments from 0 to 9. The current counter value is then displayed on a seven-segment display. The system continuously updates the display as the counter cycles through the numbers.


## How to test

To test the project, provide an 8-bit input signal and observe the output on the seven-segment display. After the signal is right-shifted by 10 bits and reaches zero, the counter should increment. You can verify that the display correctly shows the numbers from 0 to 9 in sequence.


## External hardware

The external hardware used in this project includes a seven-segment display to show the counter values. A clock signal is also needed to control the timing of the shift and counting operations. No additional external hardware is required.

