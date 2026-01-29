# 3. Gate-Level Modelling

Gate-level modelling is a way of describing a digital circuit in terms of the logic gates that it is made up of. In gate-level modelling, the circuit is described as a netlist of gates and the connections between them.

## In this section, you will learn about:

*   How to use gate-level modelling to describe a digital circuit
*   How to write a Verilog program that uses gate-level modelling
*   How to simulate a Verilog program that uses gate-level modelling

## Files in this directory:

*   `mux.v`: A Verilog program that implements a 2-to-1 multiplexer using gate-level modelling.
*   `mux_tb.v`: A testbench for the `mux.v` program.

## How to run the code:

To run the code, you will need to have a Verilog simulator installed on your computer. Once you have a Verilog simulator installed, you can run the following commands in your terminal:

```
iverilog -o mux.out mux.v mux_tb.v
vvp mux.out
```

This will compile the Verilog code and then run the simulation. You should see the following output in your terminal:

```
s=0, a=0, b=0, y=0
s=0, a=0, b=1, y=0
s=0, a=1, b=0, y=1
s=0, a=1, b=1, y=1
s=1, a=0, b=0, y=0
s=1, a=0, b=1, y=1
s=1, a=1, b=0, y=0
s=1, a=1, b=1, y=1
```
