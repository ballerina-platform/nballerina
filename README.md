# nBallerina

## Goals

The long-term goal of the nBallerina project is to create a new compiler for the [Ballerina language](https://ballerina.io/) that is written in Ballerina and can generate native code using LLVM. It will implement the Ballerina language as defined by the [2021R1 version of the language specification](https://ballerina.io/spec/lang/2021R1/).

Eventually we expect nBallerina to replace the existing [jBallerina](https://github.com/ballerina-platform/ballerina-lang) compiler, which is written in Java. The long-term vision for Ballerina is to support execution both natively and on top of the JVM, which means it will eventually need to be possible also to generate JVM bytecode using nBallerina.

At a high level, nBallerina and jBallerina share a common architecture: they are divided into a frontend and a backend, which communicate using an intermediate representation called BIR. Since we expect it to be several years until nBallerina can replace jBallerina, in the meantime we want to set things up so that we can combine the jBallerina frontend with the nBallerina backend. Eventually we may also want to use the jBallerina backend to allow nBallerina to produce JVM bytecode.

One of the most fundamental features of the Ballerina language is that subtyping is semantic. This means that a type corresponds to a set of values, and the subtype relationship between types is defined in terms of the subset relationship between the corresponding sets of values: a type S is a subtype of T if and only if the set of values denoted by S is a subset of the set of values denoted by T. This is a very simple and powerful idea, but unfortunately is rather challenging to implement.

The implementation of jBallerina was begun many years ago, before typing was fully worked out. Its most significant current limitation is that its implementation of subtyping is not semantic. Instead it implements a syntactic approximation to semantic subtyping. Although this is good enough for many uses, it is a high priority to fix this. Semantic subtyping needs to be consistently applied in the frontend, the backend and the runtime.

The initial goals for nBallerina are the things that jBallerina does not yet do:

*   generating LLVM IR from BIR
*   semantic subtyping.

## Structure

The nBallerina compiler, which is organized as a Ballerina project in the [compiler](compiler/) directory, is structured into the following components written in Ballerina:


*   Semantic subtyping implementation (in the [types](compiler/modules/types) module). This provides a normalized representation of Ballerina types and operations on that normalized representation.
*   BIR (in the [bir](compiler/modules/bit) module). This is a definition of BIR as a Ballerina type, together with some utility functions. BIR (as used in nBallerina) represents types using the normalized representation provided by the semantic subtyping implementation. This also includes a verifier that uses the semantic subtyper to verify that the BIR is well-typed. This depends on the types module.
*   Frontend (in the [front](compiler/modules/front) module). This generates BIR from the source code of a Ballerina module. This depends on the bir module.
*   Native backend (in modules/nback). This builds the LLVM IR representation of a Ballerina module from the BIR representation of a Ballerina module. This depends on the bir module (but and the front module).
*   LLVM API (in the [nback.llvm](compiler/modules/nback.llvm) module). This provides a Ballerina API to LLVM, which is used by the native backend. This is designed to be very similar to the LLVM C API. The implementation of this API builds a textual representation of the LLVM IR as LLVM assembly language, which can be written to an `.ll` file and then compiled with LLVM's clang command. This does not depend on any of the other modules.
*   A compiler driver (in [default](compiler/main.bal) module). This calls the frontend to generate the BIR and then calls the backend to generate LLVM. It depends on the bir, front and nback modules.

The starting point for the `types` and `front` modules were the [semtype](https://github.com/jclark/semtype) project.

As well as a compiler, nBallerina needs a runtime, which is in the [runtime](runtime) directory. This is currently in C and trivial. The major components will include


*   runtime type checker (we hope to write this mostly in Ballerina);
*   implementation of the langlib;
*   garbage collector (current plan is eventually for this to be in Rust and built on top of [MMTK](https://www.mmtk.io/));
*   scheduler.

<!--
Say something about libraries
Safe FFI interface. We have not started this bit yet.
-->

## Implementation plan

Initially the nBallerina will have just enough of a frontend will to support these priorities. Later, we will evolve it into something more usable.

## Usage

The compiler has not yet got to a stage where it is useful. But if you want to play with it or help with development, this is the way:

1. Clone the nBallerina repository.
2. [Download](https://ballerina.io/downloads/) and [install](https://ballerina.io/learn/user-guide/getting-started/installation-options/) the current Ballerina distribution.
3. Build the compiler by using the command `bal build` in the `compiler` directory; this will generate a file `target/bin/nballerina.jar`.
4. You can use` java -jar nballerina.jar example.bal` to compile a Ballerina module into an LLVM assembly file `example.ll`.
5. The LLVM assembly file then needs to be compiled and combined with the runtime using the LLVM `clang` command. See [test/run.sh](test/run.sh) for exact command.

You can try out the semantic subtyping implementation using

```
java -jar ballerina.jar --showTypes example.bal
```

where `example.bal` is a Ballerina module containing only type definitions and const definitions.  It will print out the subtype relationships between all the defined types.

## Testing

The compiler is tested using the test cases in the [compiler/testSuite])(compiler/testSuite/) directory. The `bal build` command performs a first level of testing on these: it checks that the test cases that should get compile errors do, and that the test cases that should not get compile errors do not. This should work on any platform on which the Ballerina distribution works.

For those test cases that are valid Ballerina programs, the scripts in the [test](test/) directory further test that the generated LLVM assembly file can be compiled with LLVM and gives the correct output when executed:

* [compile.sh](test/compile.sh) uses `nballerina.jar` to compiles all of the test cases into `.ll` files;
* [testll.sh](test/testll.sh) uses `clang` to compile every test case into a native executable, then runs it and checks that the output is what it should be

## Status

We are finishing up the implementation of subset 1.

The semantic subtyping implementation is further along than the backend. It implements the type syntax according to this grammar.
