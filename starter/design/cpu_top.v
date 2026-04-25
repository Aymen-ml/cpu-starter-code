`default_nettype none

module cpu_top (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    // Workshop task:
    // 1) Declare internal wires between control_unit and datapath.
    // 2) Instantiate control_unit.
    // 3) Instantiate datapath.
    // 4) Map outputs:
    //    - uo_out = accumulator
    //    - uio_out = {fetch_phase, opcode[2:0], pc[3:0]}
    assign uo_out  = 8'h00;
    assign uio_out = 8'h00;
  assign uio_oe  = 8'hff;

    wire _unused = &{uio_in, ui_in, ena, clk, rst_n, 1'b0};

endmodule
