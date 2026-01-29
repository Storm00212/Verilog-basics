# 2. Dataflow Modelling

Dataflow modelling is a way of describing a digital circuit in terms of the flow of data between its components. In dataflow modelling, the circuit is described as a set of concurrent assignment statements.

## In this section, you will learn about:

*   How to use dataflow modelling to describe a digital circuit
*   How to write a Verilog program that uses dataflow modelling
*   How to simulate a Verilog program that uses dataflow modelling

## Files in this directory:

*   `combination.v`: A Verilog program that implements a simple combinational circuit using dataflow modelling.
*   `combination_tb.v`: A testbench for the `combination.v` program.

## How to run the code:

To run the code, you will need to have a Verilog simulator installed on your computer. Once you have a Verilog simulator installed, you can run the following commands in your terminal:

```
iverilog -o combination.out combination.v combination_tb.v
vvp combination.out
```

This will compile the Verilog code and then run the simulation. You should see the following output in your terminal:

```
a=0, b=0, y=0
a=0, b=1, y=1
a=1, b=0, y=1
a=1, b=1, y=0
```
