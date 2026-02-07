// Testbench for the parametric_adder
`timescale 1ns / 1ps

module parametric_adder_tb;

    // Parameters
    localparam WIDTH = 8;

    // Inputs
    reg [WIDTH-1:0] a;
    reg [WIDTH-1:0] b;

    // Outputs
    wire [WIDTH-1:0] sum;

    // Instantiate the Unit Under Test (UUT)
    parametric_adder #(.WIDTH(WIDTH)) uut (
        .a(a),
        .b(b),
        .sum(sum)
    );

    initial begin
        // Initialize Inputs
        a = 0;
        b = 0;

        // Wait 100 ns for global reset to finish
        #100;

        // Add stimulus here
        a = 10;
        b = 20;
        #100;

        a = 255;
        b = 1;
        #100;

        $finish;
    end

    initial begin
        $monitor("Time=%0t a=%d, b=%d, sum=%d", $time, a, b, sum);
    end

endmodule
