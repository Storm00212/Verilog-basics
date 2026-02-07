# Instantiation in Verilog

Instantiation is the process of creating an instance of a module. When you instantiate a module, you are creating a specific, usable copy of that hardware block within your design.

In this example, `adder_instantiation.v` instantiates the `parametric_adder` module.

```verilog
parametric_adder #(.WIDTH(16)) my_adder (
    .a(in1),
    .b(in2),
    .sum(out)
);
```

Here:
- `parametric_adder` is the module being instantiated.
- `#(.WIDTH(16))` sets the `WIDTH` parameter of this specific instance to 16.
- `my_adder` is the name given to this instance.
- `.a(in1)`, `.b(in2)`, and `.sum(out)` connect the ports of the `my_adder` instance to the wires in the `adder_instantiation` module.

Instantiation allows you to build complex designs by connecting smaller, pre-designed modules.
