`default_nettype none

module memory (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       ena,
    input  wire       data_we,
    input  wire [3:0] data_addr,
    input  wire [7:0] data_wdata,
    output wire [7:0] data_rdata
);

  // Workshop task:
  // Add RAM storage and implement:
  // 1) reset clear behavior,
  // 2) gated write (ena && data_we),
  // 3) read path for data_addr.
  // Suggested depth/width: 16 x 8.
  assign data_rdata = 8'h00;

endmodule
