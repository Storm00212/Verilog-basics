# 5. Structural Modelling

Structural modelling is a way of describing a digital circuit in terms of its components and their interconnections. In structural modelling, the circuit is described as a set of modules and the connections between them.

## In this section, you will learn about:

*   How to use structural modelling to describe a digital circuit
*   How to write a Verilog program that uses structural modelling
*   How to simulate a Verilog program that uses structural modelling

## Files in this directory:

*   `full_adder.v`: A Verilog program that implements a full adder using structural modelling.
*   `full_adder_tb.v`: A testbench for the `full_adder.v` program.

## How to run the code:

To run the code, you will need to have a Verilog simulator installed on your computer. Once you have a Verilog simulator installed, you can run the following commands in your terminal:

```
iverilog -o full_adder.out full_adder.v full_adder_tb.v
vvp full_adder.out
```

This will compile the Verilog code and then run the simulation. You should see the following output in your terminal:

```
a=0, b=0, c_in=0, sum=0, c_out=0
a=0, b=0, c_in=1, sum=1, c_out=0
a=0, b=1, c_in=0, sum=1, c_out=0
a=0, b=1, c_in=1, sum=0, c_out=1
a=1, b=0, c_in=0, sum=1, c_out=0
a=1, b=0, c_in=1, sum=0, c_out=1
a=1, b=1, c_in=0, sum=0, c_out=1
a=1, b=1, c_in=1, sum=1, c_out=1
```
