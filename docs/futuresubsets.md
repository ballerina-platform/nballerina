# Possible future subsets

**This is in the process of being migrated into issues.**

These are possible future subsets that build on [subset 2](subset02.md).

We will give them symbolic names until implemented. We may group some together. We only specify immediate dependencies of each subset.

Subsets towards the end are less well worked out.

## Subset type narrowing

Summary: support `is` operator

* New expression `is`
* New type descriptor `T?`
* New type descriptor `()`

Notes:
* If x is type `T?`, then `if x == ()` requires type narrowing; so we cannot add `T?` without doing type narrowing.
* We could use a different representation for `int?` as an `{i64,i1}`.
* We have to think about we handle type checking in BIR when there is type narrowing.

## Subset langlib

Summary: call langlib function using method call syntax

Depends on subsets: (none)

* New syntax: method calls `v.foo(arg)` for calling langlib functions
* Langlib function: `int:abs`

Might invent some langlib functions for doing wrapping binary `+`, `-`, `*` on `int` (same
as what corresponding Java oeprators do and what LLVM add/sub/mul instructions do).

## Subset string

Summary: type descriptor `string` and some minimal operations on it

Depends on subsets: any, langlib

* New type descriptor: `string`
* New expressions
   * string literals `"abc"` - ASCII characters only
   * member access  `E[k]` (can panic for out of bounds index); works for strings
 * Langlib (called using method call syntax)
    * string:length
    * string:substring
    * string:getCodePoint
 
Existing syntax extended for string:

* `==`, `!=`
* `<`, `<=`, `>`, `>=`
* `===`, `!==`
* `+`
* `io:println`
* `<T>E`

It depends on subset any so we can have `io:println` both work on `string` and continue to work on `int`.

TBD:
  * Implement value:toString/value:toBalString and implement io:println on top of value:toString

## Subset array

Summary: type descriptor `any[]` and some minimal operations on it

Depends on subsets: any, langlib

* New type descriptors: `any[]`
* New expressions
   * list constructors `[1, 2, 3]` - syntactically allowed only where there is an explicit contextually expected type e.g. as function argument, initializer or following a type cast
* Statements
   * `foreach` with ranges `foreach int i in MinExpr ..< MaxExpr { ... }`
 * Langlib (called using method call syntax)
    * array:length

Existing syntax extended:
* `===`, `!==`
* `E[n]`
* `io:println`

Notes: at this point `io:println` does not have to deal with cycles

This does `any[]` without mutation.

## Subset array mutation

Summary: allow mutation of arrays

Depends on subsets: array

* Syntax
   * allow member access lvalues in assignment `V[k] = E;`
* Langlib
  * array:push
  * array:setLength

Existing syntax applies:
* io:println handles cycles

## Subset record

Summary: record types

Depends on subsets: any

Also useful to have optional types done.

* Add type definitions with syntax `type T record {| ... |};` (only)
* Allow type descriptor in function definitions to refer to type definition
* Expression syntax
  * mapping constructor `{ xyz: E }` syntactically allowed only where there is an explicit contextually expected type e.g. as function argument, initializer or following a type cast
  * field access E.x


Existing syntax applies:
* `===`, `!==`
* `==`, `!=`
* type cast 

Not yet allowed:
* field access as lvalue `S.x = E;`

Notes:
* `==` and `!=` become a bit more difficult when cycles are possible. A subset can avoid the possibility of cycles by not allowing mutation of things
  that are subtypes of anydata. For example, allowing only mutable arrays of type any[] isn't a problem, because if a record has a member of type
  `any[]`, then it's not a subtype of `anydata` and `==` isn't allowed.


### Implementation notes

Each type definition has a unique integer associated with it; let's call this the atomic record type id: we can use a uint32_t for this.

The most challenging thing is how to deal with type cast to a record type: I think the easiest solution is to compute subtype relationships at compile time. If we see a cast <T>E, we store in the .ll  a sorted array of atomic record type ids that are a subtype of T (since we have only a single file this is easy); the runtime then simply does a lookup in that list. Because we are dealing with closed records, we have only to consider records with exactly the same set of field names.

The runtime representation of a record with N fields has a pointer to a type descriptor followed by value of each field stored sorted by field name, where each field uses a tagged pointer (boxed) representation. The type descriptor for now can just have an atomic type id, number of fields and the list of subtypes. This keeps the runtime trivial for now. The number of fields is needed to implement `==` and `!=`. The type descriptor will also need the names of the fields, so `io:println` can print it out (and for `toString` to work later).

This won't work for a multi-module program, but we might be able to extend to handle some common cases in a multi-module program.

## Subset typed arrays

Summary: support type descriptor `T[]`

Underlying implementation the same as `any[]`, but the array also has an inherent type.

Also need to handle cycles for `==`, `!=` when array is subtype of anydata.

## Subset map

Summary: add type `map<any>` and minimal operations on it

Depends on subsets: string, any

* New type descriptor: `map<any>`
* New expressions
   * mapping constructors `{ "xyz": E }` - allowed in same syntactic contexts as list constructors
* Langlib
  * map:length

Existing syntax extended:
* `===`, `!==`
* `io:println` handles maps
* `E[k]`
* `M[k] = E`

Notes: this becomes much harder (and less useful) if subset record is also done.

## Subset byte

Summary: Byte and bitwise integer operations

Depends on subsets: (none)

* New type descriptor: byte
* New expressions
   * `&`, `|`, `^`
   * `<<`, `>>`, `>>>`

The interesting part of this is that it introduces a new subtype relationship: `byte <: int`.

## Subset byte array

Summary: type `byte[]`

Depends on subsets: byte, array, array mutation

Notes:
* Needs arrays to have inherent type
* Have subtype relationship `byte[] <: any[]`
* Filler value is 0
* Mutating a value of type `any[]` may produce inherent type violation

## Subset error

Summary: add type `error` and minimal operations on it

Depends on subset: string

* New type descriptors:
  * `error`
  * `TD|error` where TD is any type descriptor
* New syntax
  * `error(msg)`
  * `check E`


Notes:

* `any` no longer includes all values
* `map<any>` no longer includes all mapping values allowed by Ballerina, although it does include all mapping values allowed by the subset


## Subset Unicode string

Summary: allow strings to contain arbitrary code points

Useful to have subset error before this, so we can `string:fromCodePointInt`.