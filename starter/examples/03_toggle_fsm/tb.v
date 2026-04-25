`default_nettype none
`timescale 1ns / 1ps

module tb;
  reg clk;
  reg rst_n;
  reg en;
  wire phase;

  toggle_fsm dut (
      .clk(clk),
      .rst_n(rst_n),
      .en(en),
      .phase(phase)
  );
endmodule
