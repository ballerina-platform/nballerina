# Possible future subsets

This are possible future subsets are subset [01](subset01.md).

We will give them symbolic names until implemented. We may group some together.

We only specify immediate dependencies of each subset.

Subsets towards the end are less well worked out.

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

## Subset langlib

Summary: call langlib function using method call syntax
Depends on subsets: (none)

* New syntax: method calls `v.foo(arg)` for calling langlib functions
* Langlib function: `int:abs`

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

Existing syntax extended:
* io:println handles cycles

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