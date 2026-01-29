// This is a testbench for the full_adder.v program.

`include "full_adder.v"

module full_adder_tb;

  reg a;
  reg b;
  reg c_in;
  wire sum;
  wire c_out;

  full_adder uut(
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum),
    .c_out(c_out)
  );

  initial begin
    a = 0;
    b = 0;
    c_in = 0;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    a = 0;
    b = 0;
    c_in = 1;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    a = 0;
    b = 1;
    c_in = 0;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    a = 0;
    b = 1;
    c_in = 1;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    a = 1;
    b = 0;
    c_in = 0;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    a = 1;
    b = 0;
    c_in = 1;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    a = 1;
    b = 1;
    c_in = 0;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    a = 1;
    b = 1;
    c_in = 1;
    #1;
    $display("a=%b, b=%b, c_in=%b, sum=%b, c_out=%b", a, b, c_in, sum, c_out);

    $finish;
  end

endmodule
