# nBallerina

## Goals

The long-term goal of the nBallerina project is to create a new compiler for the [Ballerina language](https://ballerina.io/) that is written in Ballerina and can generate native code using LLVM. It will implement the Ballerina language as defined by the [2021R1](https://ballerina.io/spec/lang/2021R1/) version of the language specification; we will aim to track any agreed changes to the spec.

Eventually we expect nBallerina to replace the existing [jBallerina](https://github.com/ballerina-platform/ballerina-lang) compiler, which is written in Java. The long-term vision for Ballerina is to support execution both natively and on top of the JVM, which means it will eventually need to be possible also to generate JVM bytecode using nBallerina.

At a high level, nBallerina and jBallerina share a common architecture: they are divided into a frontend and a backend, which communicate using an intermediate representation called BIR. Since we expect it to be several years until nBallerina can replace jBallerina, in the meantime we want to set things up so that we can combine the jBallerina frontend with the nBallerina backend. Eventually we may also want to use the jBallerina backend to allow nBallerina to produce JVM bytecode.

One of the most fundamental features of the Ballerina language is that subtyping is semantic. This means that a type corresponds to a set of values, and the subtype relationship between types is defined in terms of the subset relationship between the corresponding sets of values: a type S is a subtype of T if and only if the set of values denoted by S is a subset of the set of values denoted by T. This is a very simple and powerful idea, but unfortunately is rather challenging to implement.

The implementation of jBallerina was begun many years ago, before typing was fully worked out. Its most significant current limitation is that its implementation of subtyping is not semantic. Instead it implements a syntactic approximation to semantic subtyping. Although this is good enough for many uses, it is a high priority to fix this. Semantic subtyping needs to be consistently applied in the frontend, the backend and the runtime.

The initial goals for nBallerina are the things that jBallerina does not yet do:

*   generating LLVM IR from BIR
*   semantic subtyping.

There is an earlier project that was called nBallerina. It took a different approach: a backend written in C++, which read serialized BIR from the jBallerina frontend. This is in the [nballerina-cpp](https://github.com/ballerina-platform/nballerina-cpp) repository and is no longer being developed.

## Structure

The nBallerina compiler, which is organized as a Ballerina project in the [compiler](compiler/) directory, is structured into the following components written in Ballerina:

*   Semantic subtyping implementation (in the [types](compiler/modules/types) module). This provides a normalized representation of Ballerina types, and operations on that normalized representation.
*   BIR (in the [bir](compiler/modules/bir) module). This is a definition of BIR as a Ballerina type, together with some utility functions. BIR (as used in nBallerina) represents types using the normalized representation provided by the semantic subtyping implementation. This also includes a verifier that uses the semantic subtyper to verify that the BIR is well-typed. This depends on the types module.
*   Front-end (in the [front](compiler/modules/front) module). This generates BIR from the source code of a Ballerina module using the front.syntax module. This depends on the bir module and the front.syntax module.
*   Parser (in the  [front.syntax](compiler/modules/front.syntax) module). This produces an abstract syntax tree from the source code for a single file.
*   LLVM API (in the [print.llvm](compiler/modules/print.llvm) module). This provides a Ballerina API to LLVM. The implementation of this API builds a textual representation of the LLVM IR as LLVM assembly language, which can be written to an `.ll` file and then compiled with LLVM's clang command. This is designed to be very similar to the LLVM C API. This does not depend on any of the other modules.
*   LLVM API on top of JNI (in the [jni.llvm](llvm_jni/modules/jni.llvm) module). This implements the same API as the print.llvm module on top of the LLVM C API via JNI. (So this is Ballerina, on top of Java, on top of C via JNI, on top of C++.)
*   Native backend (in the [nback](compiler/modules/nback) module). This builds the LLVM IR representation of a Ballerina module from the BIR representation of a Ballerina module. It depends on the bir and the nback.llvm modules (but not the front module).
*   A compiler driver (in [default](compiler/main.bal) module). This calls the frontend to generate the BIR and then calls the backend to generate LLVM. It depends on the bir, front and nback modules.

The starting point for the `types` and `front` modules was the [semtype](https://github.com/jclark/semtype) project.

As well as a compiler, nBallerina needs a runtime, which is in the [runtime](runtime) directory. This is currently in C and fairly minimal. The major components will include

*   runtime type checker (we hope to write this mostly in Ballerina);
*   implementation of the langlib;
*   garbage collector (current plan is eventually for this to be in Rust and built on top of [MMTK](https://www.mmtk.io/));
*   scheduler.

<!--
Say something about libraries
Safe FFI interface. We have not started this bit yet.
-->

## Implementation plan

The implementation strategy is start by implementing a tiny subset of the language, and then implement progressively larger subsets. The plan is that
each subset will be implemented [correctly](docs/correctness.md). This implies that

- if the compiler accepts the program, then the result when executed will behave as the language spec requires it to behave;
- the compiler will not accept a program that the language spec says is not a valid program.

In accordance with the initial goals of the project, we will *not* initially devote much engineering effort to usability aspects of the front end, such as high-quality error messages and error recovery. The initial priority for the front-end is correctness; we will evolve it into something more usable later.

In designing the sequence of subsets, we want to

* maintain correctness
* be able to write the appropriate parts of the runtime needed for each subset in Ballerina
* define subsets syntactically as much as possible (i.e. the subset is all programs that have this grammar) 

and then work towards implementing a subset that is sufficient for each of the following milestones

1. Supporting all the BIR instructions needed to self-host the compiler. This will allow us to run the entire nBallerina compiler natively, by compiling it using the jBallerina frontend in conjunction with the nBallerina backend.
2. A full implementation of semantic typing. This provides a foundation for jBallerina to switch over to doing semantic subtyping.
3. Self-hosting the compiler.
4. Implementing useful Ballerina clients.

Note that as regards the third of the above milestones, we will allow the nBallerina to make use all the relevant language features implemented by jBallerina, since a secondary goal of the nBallerina project is to help with testing jBallerina. This should not affect how long it takes us to get to the first of the above milestones, but will mean it takes us longer to get to the third. We will, however, initially restrict nBallerina's use of concurrency: we don't want to have to implement Ballerina's concurrency features before we can self-host.

## Usage

The compiler has not yet got to a stage where it is useful. But if you want to play with it or help with development, this is the way:

1. Clone the nBallerina repository.
2. [Download](https://ballerina.io/downloads/) and [install](https://ballerina.io/learn/user-guide/getting-started/installation-options/) the latest Ballerina distribution (Swan Lake not 1.2.x)
3. You can build the compiler by using the command `bal build` in the `compiler` directory; this will generate a file `target/bin/nballerina.jar`. This should work on any system that Ballerina works on.
4. You can use `java -jar nballerina.jar example.bal` to compile a Ballerina module into an LLVM assembly file `example.ll` (note that only a tiny subset of the language is currently implemented, as described in the Status section).
5. If you want to be able to turn the LLVM assembly file into something you can execute, there are additional requirements: Linux or OS X, LLVM 13 and GNU make. With these, you can build the runtime and run the tests by running `make test` in the top-level directory. This compiles and executes all the test cases and checks that they produce the right outputs. You can use e.g. `make -j8` to make it run tests in parallel.

If you want to turn the LLVM assembly into an executable, you can use the [test/run.sh](test/run.sh) command.

You can try out the semantic subtyping implementation using

```
java -jar ballerina.jar --showTypes example.bal
```

where `example.bal` is a Ballerina module containing only type definitions and const definitions.  It will print out the subtype relationships between all the defined types.

## Testing

The compiler is tested using the test cases in the [compiler/testSuite](compiler/testSuite/) directory. The `bal build` command performs a first level of testing on these: it checks that the test cases that should get compile errors do, and that the test cases that should not get compile errors do not. This should work on any platform on which the Ballerina distribution works.

For those test cases that are valid Ballerina programs, the Makefile in the [test](test/) directory is used to further test that the generated LLVM assembly files can be compiled with LLVM and give the correct output when executed. This Makefile has the following targets:

* `test` (the default target) forces a rebuild of all the `.ll` files if the compiler jar has changed, and then does `compile` and `testll`
* `compile` builds any out of date `.ll` files (but does not consider the compiler jar when determining whether a `.ll` is out of date)
* `testll` builds an executable for each test case, executes it and checks its output

## Status

We have completed [subset 13](docs/subset13.md) and are working on [subset 14](docs/subset14.md).

The semantic subtyping implementation is further along than the backend. It implements the subset of Ballerina's type syntax described by this [grammar](docs/type-subset.md).
