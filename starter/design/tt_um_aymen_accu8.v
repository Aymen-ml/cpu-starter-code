`default_nettype none

module tt_um_aymen_accu8 (
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
  // Instantiate cpu_top and connect all Tiny Tapeout pins.
  assign uo_out  = 8'h00;
  assign uio_out = 8'h00;
  assign uio_oe  = 8'h00;

  wire _unused = &{ui_in, uio_in, ena, clk, rst_n, 1'b0};

endmodule
