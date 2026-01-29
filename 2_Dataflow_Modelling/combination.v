// This is a Verilog program that implements a simple combinational circuit using dataflow modelling.

module combination(
  input a,
  input b,
  output y
);

  assign y = a ^ b;

endmodule
