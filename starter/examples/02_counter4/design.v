`default_nettype none

module counter4 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    output reg  [3:0] count
);
  always @(posedge clk) begin
    if (!rst_n) begin
      count <= 4'h0;
    end else if (en) begin
      count <= count + 4'h1;
    end
  end
endmodule
