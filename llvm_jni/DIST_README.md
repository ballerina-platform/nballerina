# nBallerina:0.1
Compiler for the [Ballerina language](https://ballerina.io/) that can generate native executables.

## Requirements
+ Compiler uses the operating system's C compiler (`cc`) for linking.

## Usage
Run `nballerina.sh <Path to bal source file>` to compile. Resulting executable (along with build artifacts) will be in `./build` directory

## Language restrictions
Currently only a subset of the language is supported
* Only values allowed are of basic type nil, boolean, int, float, decimal, string, list, mapping, error and function.
* At module level
   * function definitions
      * no default arguments
      * no rest arguments
      * may be declared `public`
   * const definitions
      * not of structured types
   * type definitions
* Type descriptors:
   * predefined basic type name: `boolean`, `decimal`, `error`, `float`, `int`, `string`
   * nil type `()`
   * singletons of basic type boolean, int, float, decimal, string
   * `any` type
   * `byte` type
   * `anydata` type
   * optional type: `T?`
   * unions: `T1|T2`
   * intersections: `T1&T2`
   * structure types
      * map type: `map<T>`
      * array type: `T[]`
      * record types: `record { T1 f1; T2 f2; }` and `record {| T1 f1; T2 f2; R...; |}`
      * tuple types: `[T1, T2]` and `[T1, T2, R...]`
   * function types
      * bare function type: `function`
      * proper subtypes of `function` such as: `function(T1) returns T2`
   * `object` type
   * a reference to a type defined by a type definition
* Statements:
   * function/method call statement
   * local variable declaration with explicit type descriptor and initializer
      * binding pattern is either an identifier or `_`
   * assignment
      * assignment statement `L = E;`
      * compound assignment `L op= E;`
      * lvalues for fields `L.x`
      * lvalues for a list or mapping `L[E]`
      * assignment to wildcard binding pattern `_ = E;`
   * `return` statement
   * `if`/`else` statements
   * `while` statement
   * `break` and `continue` statements
   * `foreach` statements that use  `<..`
   * `match` statement with match patterns that are const
   * `panic` statement
* Expressions:
   * literals for nil, boolean, int, float and string
   * binary operators: `+`, `-`, `*`, `/`, `%`, `<`, `<=`, `>`, `>=`, `==`, `!=`, `===`, `!==`, `&`, `^`, `|`, `<<`, `>>`, `>>>`, `&&`, `||`
   * unary operators: `-`, `!`, `~`
   * type cast `<T>E`
   * type test `E is T`, `E !is T`
   * function call
   * method call `v.f(args)` syntax for calling langlib functions
   * member access `E[i]` for both list and mapping
   * field access `E.f`
   * list constructor `[E1, E2, ..., En]`
   * mapping constructor `{ f1: E1, f2: E2,..., fn: En }`
   * error constructor `error(msg)`
   * `check` expression
   * `checkpanic` expression
   * anonymous function with explicit parameter types `function (T1 P1, T2 P2, ..., Tn Pn) { ... }`
* Langlib functions:
  * `array:length`
  * `array:push`
  * `string:length`
  * `map:length`
  * `int:toHexString`
  * `error:message`
* Standard library functions:
  * `io:println` (restricted to a single argument)
For a more formal definition of language restrictions please refer to [grammar file](https://github.com/ballerina-platform/nballerina/blob/58eb1c0add1eb7fe84a570f01b275444a88ca202/docs/subset15.md)
