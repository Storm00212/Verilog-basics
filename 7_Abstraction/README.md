# Abstraction in Verilog

Abstraction in hardware design means hiding the complex implementation details of a module and providing a simple interface to interact with it. This is a fundamental concept in Hardware Description Languages (HDLs) like Verilog.

In this example, `parametric_adder.v` is an abstract module. The user of this module only needs to know:
- It takes two inputs `a` and `b`.
- It has a parameter `WIDTH` to control the data width.
- It provides an output `sum`.

The user doesn't need to know *how* the addition is performed internally. This allows for:
- **Reusability:** The same module can be used in different parts of a design.
- **Simplicity:** It makes the overall design easier to understand.
- **Maintainability:** The internal implementation can be changed without affecting the rest of the design, as long as the interface remains the same.
