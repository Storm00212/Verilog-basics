// This is a testbench for the combination.v program.

`include "combination.v"

module combination_tb;

  reg a;
  reg b;
  wire y;

  combination uut(
    .a(a),
    .b(b),
    .y(y)
  );

  initial begin
    a = 0;
    b = 0;
    #1;
    $display("a=%b, b=%b, y=%b", a, b, y);

    a = 0;
    b = 1;
    #1;
    $display("a=%b, b=%b, y=%b", a, b, y);

    a = 1;
    b = 0;
    #1;
    $display("a=%b, b=%b, y=%b", a, b, y);

    a = 1;
    b = 1;
    #1;
    $display("a=%b, b=%b, y=%b", a, b, y);

    $finish;
  end

endmodule
