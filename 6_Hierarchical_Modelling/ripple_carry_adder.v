// This is a Verilog program that implements a 4-bit ripple-carry adder using hierarchical modelling.

`include "full_adder.v"

module ripple_carry_adder(
  input [3:0] a,
  input [3:0] b,
  input c_in,
  output [3:0] sum,
  output c_out
);

  wire c1;
  wire c2;
  wire c3;

  full_adder fa0(
    .a(a[0]),
    .b(b[0]),
    .c_in(c_in),
    .sum(sum[0]),
    .c_out(c1)
  );

  full_adder fa1(
    .a(a[1]),
    .b(b[1]),
    .c_in(c1),
    .sum(sum[1]),
    .c_out(c2)
  );

  full_adder fa2(
    .a(a[2]),
    .b(b[2]),
    .c_in(c2),
    .sum(sum[2]),
    .c_out(c3)
  );

  full_adder fa3(
    .a(a[3]),
    .b(b[3]),
    .c_in(c3),
    .sum(sum[3]),
    .c_out(c_out)
  );

endmodule
