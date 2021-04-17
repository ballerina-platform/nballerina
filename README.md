This is the very beginnings of an implementation of semantic subtyping for the type system
of the Ballerina programming language, written in Ballerina.

The algorithm here is based on the work of Giuseppe Castagna and Alain Frisch, implemented in
[CDuce](http://cduce.org). I have found the best paper to be:

[Covariance and Contravariance: a fresh look at an old issue (a primer in advanced type systems for learning functional programmers)](https://arxiv.org/abs/1809.01427),
G. Castagna, 2020

Section 4 of this paper has a description of the algorithms.

There is also a very useful tutorial by Andrew M. Kent:

[Down and Dirty with Semantic Set-theoretic Types (a tutorial)](https://pnwamk.github.io/sst-tutorial/)

The implementation currently handles a tiny subset of Ballerina type system:
* nil, boolean, int, string types (without any subtypes)
* tuple types of length 2 (without recursion)
* union
* intersection
* any and never (can be derived from the above)
* complement and difference (Ballerina has no syntax for this, but deciding whether S is a subtype of T is equivalent to deciding whether the difference of S and T is empty)

There is a [list](TODO.md) of everything still to be done to handle the whole type system.