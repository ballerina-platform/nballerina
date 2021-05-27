# nballerina

Ballerina compiler, written in Ballerina, which uses LLVM to generate native executables.

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
