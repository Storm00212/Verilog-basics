// This is a Verilog program that implements a D-type flip-flop using behavioural modelling.

module d_ff(
  input d,
  input clk,
  output reg q
);

  always @(posedge clk) begin
    q <= d;
  end

endmodule
