`default_nettype none

module alu (
    input  wire [7:0] acc_i,
    input  wire [7:0] mem_i,
    input  wire       sub_i,
    output wire [7:0] result_o
);

  // Workshop task:
  // Complete the arithmetic unit so it can add or subtract.
  // Hint: use sub_i to choose between ACC + MEM and ACC - MEM.
  assign result_o = 8'h00;

endmodule
