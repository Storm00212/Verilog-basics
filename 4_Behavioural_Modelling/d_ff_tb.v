// This is a testbench for the d_ff.v program.

`include "d_ff.v"

module d_ff_tb;

  reg d;
  reg clk;
  wire q;

  d_ff uut(
    .d(d),
    .clk(clk),
    .q(q)
  );

  initial begin
    d = 0;
    clk = 0;
    #1;
    $display("d=%b, clk=%b, q=%b", d, clk, q);

    clk = 1;
    #1;
    $display("d=%b, clk=%b, q=%b", d, clk, q);

    d = 1;
    clk = 0;
    #1;
    $display("d=%b, clk=%b, q=%b", d, clk, q);

    clk = 1;
    #1;
    $display("d=%b, clk=%b, q=%b", d, clk, q);

    $finish;
  end

endmodule
