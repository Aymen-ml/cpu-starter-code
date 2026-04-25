`default_nettype none

module control_fsm (
    input  wire clk,
    input  wire rst_n,
    input  wire ena,
    output wire fetch_phase,
    output wire exec_phase
);

  // Workshop task:
  // Add a 1-bit state register (state_q) and sequential logic.
  // Suggested behavior:
  // - On reset: state_q = 0 (fetch phase)
  // - When ena=1: state_q toggles every clock
  // - Derive fetch/exec from state_q
  assign fetch_phase = 1'b1;
  assign exec_phase  = 1'b0;

endmodule
