/*
 * tt_um_comp.v
 *
 * Test user module
 *
 * Author: Jongnam Kim <jongnam.kim@dankook.ac.kr>
 */

`default_nettype none

module tt_um_comp (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  reg rst;
  wire [7:0] in;
  wire [15:0] o0, o1, o2, o3;

  always @(posedge clk or negedge rst_n)
    if (~rst_n) rst <= 1'b1;
    else rst <= 1'b0;

  assign uo_out  = o0[7:0] | o0[15:8];
  assign uio_out = o1[7:0] | o2[7:0] | o3[7:0] | o1[15:8] | o2[15:8] | o3[15:8];
  assign uio_oe  = 8'hff;
  assign in = ui_in;

  // avoid linter warning about unused pins:
  wire _unused_pins = ena ;
  wire _unused_pins2 = &uio_in;

  // instantiate processor
  processor u_processor(o0, o1, o2, o3, in, rst, clk) ;

endmodule  // tt_um_comp
