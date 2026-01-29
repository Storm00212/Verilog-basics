# 4. Behavioural Modelling

Behavioural modelling is a way of describing a digital circuit in terms of its behaviour. In behavioural modelling, the circuit is described as a set of sequential statements that are executed one after another.

## In this section, you will learn about:

*   How to use behavioural modelling to describe a digital circuit
*   How to write a Verilog program that uses behavioural modelling
*   How to simulate a Verilog program that uses behavioural modelling

## Files in this directory:

*   `d_ff.v`: A Verilog program that implements a D-type flip-flop using behavioural modelling.
*   `d_ff_tb.v`: A testbench for the `d_ff.v` program.

## How to run the code:

To run the code, you will need to have a Verilog simulator installed on your computer. Once you have a Verilog simulator installed, you can run the following commands in your terminal:

```
iverilog -o d_ff.out d_ff.v d_ff_tb.v
vvp d_ff.out
```

This will compile the Verilog code and then run the simulation. You should see the following output in your terminal:

```
d=0, clk=0, q=x
d=0, clk=1, q=0
d=1, clk=0, q=0
d=1, clk=1, q=1
```
