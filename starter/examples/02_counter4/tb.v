`default_nettype none
`timescale 1ns / 1ps

module tb;
  reg clk;
  reg rst_n;
  reg en;
  wire [3:0] count;

  counter4 dut (
      .clk(clk),
      .rst_n(rst_n),
      .en(en),
      .count(count)
  );
endmodule
