// This is a testbench for the hello_world.v program.

`include "hello_world.v"

module hello_world_tb;

  initial begin
    #1;
    $finish;
  end

endmodule
