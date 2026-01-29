// This is a testbench for the ripple_carry_adder.v program.

`include "ripple_carry_adder.v"

module ripple_carry_adder_tb;

  reg [3:0] a;
  reg [3:0] b;
  reg c_in;
  wire [3:0] sum;
  wire c_out;

  ripple_carry_adder uut(
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum),
    .c_out(c_out)
  );

  initial begin
    a = 4'b0000;
    b = 4'b0000;
    c_in = 1'b0;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    a = 4'b0001;
    b = 4'b0001;
    c_in = 1'b0;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    a = 4'b1111;
    b = 4'b0001;
    c_in = 1'b0;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    $finish;
  end

endmodule
