# Semantic subtyping for Ballerina

The algorithm here is based on the work of Giuseppe Castagna and Alain Frisch, implemented in
[CDuce](http://cduce.org). I have found the most accessible paper to be:

[Covariance and Contravariance: a fresh look at an old issue (a primer in advanced type systems for learning functional programmers)](https://arxiv.org/abs/1809.01427),
G. Castagna, 2020

Section 4 of the above paper has a description of the algorithms.

There is also a tutorial by Andrew M. Kent, which is great for getting started:

[Down and Dirty with Semantic Set-theoretic Types (a tutorial)](https://pnwamk.github.io/sst-tutorial/)

The implementation currently handles a subset of Ballerina type system:
* nil, boolean, int, float, decimal, string, handle types
* array and tuple types
* map and record types
    * no optional record fields yet
    * no readonly record fields yet
* function types
* readonly
* union
* intersection
* string, decimal, float, int, boolean singletons
* byte and other built-in int subtypes
* error with detail record subtypes (but not distinct)
* typedesc, xml (without type parameters)
* json (can be derived from the above)
* any, never (can be derived from the above)
* complement and difference (Ballerina has no syntax for this, but deciding whether S is a subtype of T is equivalent to deciding whether the difference of S and T is empty)

The `types` module implements the subtyping algorithm. There are two other modules:

* `types.bdd` - this implements binary decision diagrams, which is a key data-structure used by the default module
* `types.json` - this parses a JSON representation of types, and uses the `types` module to build an internal representation

The JSON  representation of types is Lisp-like, and documented in the file [`schema.bal`](../types.json/schema.bal).

There is a [list](TODO.md) of everything still to be done to handle the whole type system. There
are also implementation [notes](NOTES.md).

The command-line interface provides a `--testJsonTypes` command-line option that checks the type relationships asserted in a JSON file. The format of
the json file is an array of tests, where each test is a triple [R, T1 T2], where R is a string specifying the relationship that holds between T1 and T2, as follows:

- equivalent: T1 is a subtype of T2 and T2 is a subtype of T1
- proper_subtype: T1 is a subtype of T2 and T2 is not a subtype of T1
- incomparable: T1 is not a subtype of T2 and T2 is not a subtype of T1

An example input file is in [tests.json](../../tests.json).

JSON representation is being replaced with s-expression based representation, and documented in the file [`types.sexpr/README.md`](../types.sexpr/README.md).
