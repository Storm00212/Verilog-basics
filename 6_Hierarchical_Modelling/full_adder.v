// This is a Verilog program that implements a full adder using structural modelling.

module full_adder(
  input a,
  input b,
  input c_in,
  output sum,
  output c_out
);

  wire w1;
  wire w2;
  wire w3;

  xor(w1, a, b);
  xor(sum, w1, c_in);
  and(w2, a, b);
  and(w3, w1, c_in);
  or(c_out, w2, w3);

endmodule
