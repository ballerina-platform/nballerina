# Correctness

We need to be clear about what correctness means with respect to a
language subset, where each subset is defined by:

* a grammar, and
* additional semantic restrictions

We say that a module conforms to a language subset if and only if:

* the module is correct according to the Ballerina spec
* each part of the module belongs to the language defined by the
  `module-part` production in the grammar section
* the module satisfies the restrictions in the Semantic restrictions section


The input to the compiler is a single file containing a Ballerina
module. The compiler either outputs .ll file, or rejects it with one
of three kinds of error:

1. syntax error
2. semantic error
3. unimplemented error

Correctness means that for every input:

* if the input is a module that conforms to the subset, the compiler must compile it
  to an `.ll` file, such that
   * the `.ll` file is a valid LLVM IR file
   * when compiled by LLVM, linked to a runtime, and then executed, the output of
     the program must be as required by the Ballerina language spec, and by the
     specification of any library functions called by the program

* otherwise:
   * if the program does not conform to the grammar in the grammar section,
     the compiler must reject it with a syntax error
   * otherwise, if the program does not satisfy the semantics restrictions of the subset
     the compiler must reject it with an unimplemented error
   * otherwise, if the progam is not correct according to the Ballerina spec,
     the compiler must reject it with a semantic error
   * otherwise, the compiler must reject it with an unimplemented error

The compiler must never panic for any input.

As a pragmatic exception to the above criteria, we permit temporary overimplementation: we allow the compiler to accept a program outside the defined subset, provided the program is correct according to the Ballerina spec and the compiler compiles it into something that executes with the runtime behaviour required by the specification.
