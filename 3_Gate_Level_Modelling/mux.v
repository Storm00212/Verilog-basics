// This is a Verilog program that implements a 2-to-1 multiplexer using gate-level modelling.

module mux(
  input s,
  input a,
  input b,
  output y
);

  wire s_n;
  wire y0;
  wire y1;

  not(s_n, s);
  and(y0, a, s_n);
  and(y1, b, s);
  or(y, y0, y1);

endmodule
