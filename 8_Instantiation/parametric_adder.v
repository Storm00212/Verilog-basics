// A simple parametric adder to demonstrate abstraction.
// The user of this module doesn't need to know how the addition is implemented.
// They only need to know the interface (inputs, outputs, and parameters).

module parametric_adder #(parameter WIDTH = 8) (
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    output [WIDTH-1:0] sum
);

    assign sum = a + b;

endmodule
