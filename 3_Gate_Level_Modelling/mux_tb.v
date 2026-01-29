// This is a testbench for the mux.v program.

`include "mux.v"

module mux_tb;

  reg s;
  reg a;
  reg b;
  wire y;

  mux uut(
    .s(s),
    .a(a),
    .b(b),
    .y(y)
  );

  initial begin
    s = 0;
    a = 0;
    b = 0;
    #1;
    $display("s=%b, a=%b, b=%b, y=%b", s, a, b, y);

    s = 0;
    a = 0;
    b = 1;
    #1;
    $display("s=%b, a=%b, b=%b, y=%b", s, a, b, y);

    s = 0;
    a = 1;
    b = 0;
    #1;
    $display("s=%b, a=%b, b=%b, y=%b", s, a, b, y);

    s = 0;
    a = 1;
    b = 1;
    #1;
    $display("s=%b, a=%b, b=%b, y=%b", s, a, b, y);

    s = 1;
    a = 0;
    b = 0;
    #1;
    $display("s=%b, a=%b, b=%b, y=%b", s, a, b, y);

    s = 1;
    a = 0;
    b = 1;
    #1;
    $display("s=%b, a=%b, b=%b, y=%b", s, a, b, y);

    s = 1;
    a = 1;
    b = 0;
    #1;
    $display("s=%b, a=%b, b=%b, y=%b", s, a, b, y);

    s = 1;
    a = 1;
    b = 1;
    #1;
    $display("s=%b, a=%b, b=%b, y=%b", s, a, b, y);

    $finish;
  end

endmodule
