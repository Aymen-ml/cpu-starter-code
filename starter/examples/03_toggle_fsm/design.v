`default_nettype none

module toggle_fsm (
    input  wire clk,
    input  wire rst_n,
    input  wire en,
    output reg  phase
);
  always @(posedge clk) begin
    if (!rst_n) begin
      phase <= 1'b1;
    end else if (en) begin
      phase <= ~phase;
    end
  end
endmodule
