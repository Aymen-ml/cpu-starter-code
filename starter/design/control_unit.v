`default_nettype none

// Workshop task:
// Connect the FSM to the opcode decoder.
// Students should fill in the missing EXEC phase decode cases.
module control_unit (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       ena,
    input  wire [3:0] opcode_i,
    input  wire       acc_zero_i,
    output wire       fetch_phase_o,
    output wire       exec_phase_o,
    output wire       acc_we_o,
    output wire       pc_we_o,
    output wire       ir_we_o,
    output wire       data_we_o,
    output wire       alu_sub_o,
    output wire [1:0] acc_src_sel_o,
    output wire       pc_load_operand_o
);

  // Workshop task:
  // 1) Instantiate control_fsm.
  // 2) Route fetch/exec signals to fetch_phase_o/exec_phase_o.
  // 3) Add combinational opcode decode for EXEC phase.
  assign fetch_phase_o = 1'b0;
  assign exec_phase_o  = 1'b0;

  // Workshop task:
  // Implement combinational decode logic for FETCH and EXEC phases.
  // Suggested implementation:
  // - Use defaults: all controls deasserted, acc_src_sel_o=2'b11.
  // - FETCH: assert ir_we_o and pc_we_o.
  // - EXEC: decode opcode_i (LDI/ADD/SUB/STO/LDM/JMPZ/NOP).
  assign acc_we_o          = 1'b0;
  assign pc_we_o           = 1'b0;
  assign ir_we_o           = 1'b0;
  assign data_we_o         = 1'b0;
  assign alu_sub_o         = 1'b0;
  assign acc_src_sel_o     = 2'b11;
  assign pc_load_operand_o = 1'b0;

  wire _unused = &{clk, rst_n, ena, opcode_i, acc_zero_i, 1'b0};

endmodule
