`default_nettype none

module invert8 (
    input  wire [7:0] a,
    output wire [7:0] y
);
  assign y = ~a;
endmodule
