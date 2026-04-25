`default_nettype none

module datapath (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       ena,
    input  wire [7:0] instr_i,
    input  wire       acc_we_i,
    input  wire       pc_we_i,
    input  wire       ir_we_i,
    input  wire       data_we_i,
    input  wire       alu_sub_i,
    input  wire [1:0] acc_src_sel_i,
    input  wire       pc_load_operand_i,
    output wire [7:0] acc_o,
    output wire [3:0] pc_o,
    output wire [3:0] opcode_o,
    output wire [3:0] operand_o,
    output wire       acc_zero_o
);

  // Workshop task:
  // 1) Instantiate registers, memory, and alu.
  // 2) Decode opcode/operand from IR.
  // 3) Build ACC source mux and PC next logic.
  // 4) Drive acc_o and acc_zero_o from ACC register.
  assign opcode_o   = 4'h0;
  assign operand_o  = 4'h0;
  assign acc_zero_o = 1'b1;
  assign acc_o      = 8'h00;

  // Workshop task:
  // 1) Build ACC writeback mux using acc_src_sel_i:
  //    00=operand immediate, 01=ALU, 10=RAM, 11=hold.
  // 2) Implement pc_next:
  //    if pc_load_operand_i use operand_o else pc_q + 1.
  // This placeholder keeps behavior inert until students complete it.
    wire _unused = &{clk, rst_n, ena, instr_i, acc_we_i, pc_we_i, ir_we_i, data_we_i,
                                     alu_sub_i, acc_src_sel_i, pc_load_operand_i, 1'b0};

endmodule
