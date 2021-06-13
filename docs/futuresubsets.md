# Possible future subsets

This are possible future subsets are subset [01](subset01.md).

We will give them symbolic names until implemented. We may group some together. We only specify immediate dependencies of each subset.

Subsets towards the end are less well worked out.

Key idea here (compared to previous schemes) is to start by doing `any` rather than general unions. This keeps runtime type-checking simple.

## Subset any

Summary: type `any` and `()` and some minimal operations on them

Depends on subset: (none)

* New type descriptors: `any` and `()`
* New expression syntax:
   * type cast `<TD>E` (can panic)
   * `===` and `!==` operators
   * nil constant `()`
* Standard Library
   * `io:println` takes a single argument of type `any`

Implementation notes:
* When a variable has type any, its representation is a tagged pointer: at this stage, a tagged pointer puts all `int`s on the heap; nil and booleans are represented by tagged bits
* Type cast converts from tagged pointer representation to
* Upcast is implicit in BIR, but results in conversion the other way
* Operations on `any` are `===`, `!==` and type cast
* We now have the subtype relationships: `int <: any` and `boolean <: any`

## Subset optional type

Summary: allow `T?`

* New type descriptor `T?`

Notes:
* Representation of T? will be same as any? i.e. conversion between these two types does not involve a representation change

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

If this is does before

* New type descriptors: `any[]`
* New expressions
   * list constructors `[1, 2, 3]` - syntactically allowed only where there is an explicit contextually expected type e.g. as function argument, initializer or following a type cast
* Statements
   * `foreach` with ranges `foreach int  i in MinExpr ..< MaxExpr { ... }`
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
  * mapping constructor `{ xyz: E }` syntactically allowed only where list constructors are allowed
  * field access E.x


Existing syntax applies:
* `==`, `!=` allowed when subtype of `anydata` i.e. no references to arrays; this means `==` and `!=` don't need to deal with cycles (which is a bit tricky)
* type cast 

Not yet allowed:
* field access not allowed as lvalue, so maps cannot be mutated once created; this prevents cycles; we can
allow mutation once we support cycles in `==` and `!=`. 

### Implementation notes

Each type definition has a unique integer associated with it; let's call this the
atomic record type id: we can use a uint32_t for this.

The most challenging thing is how to deal with type cast to a record type: I think the easiest solution is to compute subtype relationships at compile time. If we see a cast <T>E, we store in the .ll  a sorted array of atomic record type ids that are a subtype of T (since we have only a single file this is easy); the runtime then simply does a lookup in that list. Because we are dealing with closed records, we have only to consider records with exactly the same set of field names.

The runtime representation of a record with N fields has a pointer to a type descriptor
followed by value of each field stored sorted by field name, where each field uses a tagged pointer (boxed) representation.
The type descriptor for now can just have an atomic type id, number of fields and the list of subtypes. This keeps the runtime
trivial for now. The number of fields is needed to implement `==` and `!=`.

This won't be scaleable to multi-module programs without modification, but it might be applicable to, for example, checking a value
created in a module M against a record type that occurs in M (which is probably the common case).

## Subset typed arrays

Summary: support type descriptor `T[]`

Underlying implementation the same as `any[]`, but the array also has an inherent type.

Also need to handle cycles for `==`, `!=`.

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