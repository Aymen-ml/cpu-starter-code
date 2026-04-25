`default_nettype none
`timescale 1ns / 1ps

module tb;
  reg  [7:0] a;
  wire [7:0] y;

  invert8 dut (
      .a(a),
      .y(y)
  );
endmodule
