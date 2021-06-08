# nballerina

This will eventually be a Ballerina compiler, written in Ballerina,
which uses LLVM to generate native executables.

The compiler is divided into the following Ballerina packages:

* `driver` - this coordinates the other packages to perform the compilation
* `bir` - this defines a Ballerina-specific intermediate representation (BIR) of Ballerina programs
* `front` - this turns Ballerina source code into BIR
* `llvm` - this generates LLVM IR from BIR
* `types` - this defines a normalized representation of Ballerina's types, and
   associated operations such as subtype testing and intersection

The dependencies are as follows:

* `bir` depends on `types` (BIR is typed using the normalized types provided by `types`)
* `llvm` depends on `bir` and `types` (but not `front`)
* `front` depends on `bir` and `types` (but not `llvm)
* `driver` depends on everything

So far, the only implemented functionality relates to types:

* the `front` module can parse a module containing Ballerina type
  definitions in this [subset](compiler/modules/front/grammar.md) of Ballerina syntax;

* the `front` module can use the `types` module to build a normalized
  representation;

* the `types` module can determine whether one type is a semantic subtype of another
  ([more information](compiler/modules/types/README.md) on this);

* the `driver` module allows you to play with this: it will print out the subtype
  relationships between all named types in a Ballerina module; the directory
  [driver/tests/data](driver/tests/data) has some examples you can try out.
