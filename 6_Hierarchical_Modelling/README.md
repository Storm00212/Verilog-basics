# 6. Hierarchical Modelling

Hierarchical modelling is a way of describing a digital circuit in terms of a hierarchy of modules. In hierarchical modelling, the circuit is described as a set of modules, where each module can contain instances of other modules.

## In this section, you will learn about:

*   How to use hierarchical modelling to describe a digital circuit
*   How to write a Verilog program that uses hierarchical modelling
*   How to simulate a Verilog program that uses hierarchical modelling

## Files in this directory:

*   `ripple_carry_adder.v`: A Verilog program that implements a 4-bit ripple-carry adder using hierarchical modelling.
*   `ripple_carry_adder_tb.v`: A testbench for the `ripple_carry_adder.v` program.
*   `full_adder.v`: A Verilog program that implements a full adder using structural modelling.

## How to run the code:

To run the code, you will need to have a Verilog simulator installed on your computer. Once you have a Verilog simulator installed, you can run the following commands in your terminal:

```
iverilog -o ripple_carry_adder.out ripple_carry_adder.v ripple_carry_adder_tb.v
vvp ripple_carry_adder.out
```

This will compile the Verilog code and then run the simulation. You should see the following output in your terminal:

```
a=0000, b=0000, c_in=0, sum=0000, c_out=0
a=0001, b=0001, c_in=0, sum=0010, c_out=0
a=1111, b=0001, c_in=0, sum=0000, c_out=1
```
