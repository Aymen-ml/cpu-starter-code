`default_nettype none

module registers (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       ena,
    input  wire       acc_we,
    input  wire       pc_we,
    input  wire       ir_we,
    input  wire [7:0] acc_d,
    input  wire [3:0] pc_d,
    input  wire [7:0] ir_d,
    output wire [7:0] acc_q,
    output wire [3:0] pc_q,
    output wire [7:0] ir_q
);

  // Workshop task:
  // Add sequential storage for ACC/PC/IR with write enables.
  // Suggested behavior:
  // - Reset clears all registers to 0.
  // - If ena=1, each register updates only when its *_we is asserted.
  // Keep placeholder outputs until students add the register logic.
  assign acc_q = 8'h00;
  assign pc_q  = 4'h0;
  assign ir_q  = 8'h00;

endmodule
