# Language subset 15

For programs that are in the subset, the compiler should conform to the Ballerina Language Specification [2022R1](https://ballerina.io/spec/lang/2022R1/).

## Summary

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
* Langlib functions:
  * `array:length`
  * `array:push`
  * `string:length`
  * `map:length`
  * `int:toHexString`
  * `error:message`
* Standard library functions:
  * `io:println` (restricted to a single argument)

## Grammar

This deals explicitly with operator precedence and associativity.

```
module-part = import-decl* module-defn*
import-decl = "import" [org-name "/"] module-name ["as" import-prefix] ";"

org-name = identifier
module-name =
   identifier
   | module-name "." identifier

import-prefix = identifier

module-defn = function-defn | const-defn | type-defn

function-defn = ["public"] "function" identifier signature stmt-block
signature = "(" [param-list] ")" [ "returns" type-desc ]

const-defn = ["public"] "const" [builtin-type-name] identifier "=" const-expr ";"

type-defn = ["public"] "type" identifier type-desc ";"

type-desc = union-type-desc

union-type-desc =
  intersection-type-desc
  | union-type-desc "|" intersection-type-desc

intersection-type-desc =
  postfix-type-desc
  | intersection-type-desc "&" postfix-type-desc

postfix-type-desc =
  primary-type-desc
  | optional-type-desc
  | array-type-desc

optional-type-desc = postfix-type-desc "?"

array-type-desc := array-member-type-desc array-dimension+
array-dimension := "[" [ array-length ] "]"
array-member-type-desc := type-desc *but not* array-type-desc
array-length :=
  int-literal
  | constant-reference-expr

primary-type-desc =
  builtin-type-name
  | nil-type-desc
  | singleton-type-desc
  | "(" type-desc ")"
  | type-reference
  | map-type-desc
  | record-type-desc
  | tuple-type-desc
  | function-type-desc

builtin-type-name = "any" | "anydata" | "boolean" | "byte" | "int" | "float" | "string" | "error" | "function"

nil-type-desc = nil-literal

singleton-type-desc = simple-const-expr

# reference to a type definition
type-reference = identifier | qualified-identifier

map-type-desc = "map" "<" type-desc ">"

record-type-desc = inclusive-record-type-desc | exclusive-record-type-desc
inclusive-record-type-desc = "record" "{" field-desc* "}"
exclusive-record-type-desc = "record" "{|" field-desc* [rest-field-desc] "|}"
field-desc = type-desc identifier ";"
rest-field-desc = type-desc "..." ";"

tuple-type-desc = "[" tuple-member-type-desc-list "]"
tuple-member-type-desc-list =
   type-desc ("," type-desc)* ["," tuple-rest-desc]
   | [ tuple-rest-desc ]
tuple-rest-desc = type-desc "..."

function-type-desc = "function" "(" [param-list] ")" ["returns" type-desc]

param-list = param ["," param]* ["," rest-param]
param = type-desc [identifier] # identifier can only be omitted when occurring in function-type-desc
rest-param = type-desc "..." identifier

stmt-block = "{" statement* "}"

statement =
  local-var-decl-stmt
  | call-stmt
  | assign-stmt
  | compound-assign-stmt
  | destructuring-assign-stmt
  | return-stmt
  | if-else-stmt
  | while-stmt
  | break-stmt
  | continue-stmt
  | foreach-stmt
  | panic-stmt
  | match-stmt
 
local-var-decl-stmt = ["final"] type-desc binding-pattern "=" expression ";"

binding-pattern = identifier | wildcard-binding-pattern

call-stmt = call-expr ";"

call-expr =
   function-call-expr
   | method-call-expr
   | checking-keyword call-expr

assign-stmt = lvexpr "=" expression ";"

compound-assign-stmt = lvexpr CompoundAssignmentOperator expression ";"

destructuring-assign-stmt = wildcard-binding-pattern "=" expression ";"

wildcard-binding-pattern = "_"

lvexpr =
   variable-reference-lvexpr
   | field-access-lvexpr
   | member-access-lvexpr

variable-reference-lvexpr = identifier

field-access-lvexpr =lvexpr "." identifier

member-access-lvexpr = lvexpr "[" expression "]"

return-stmt = "return" [expression] ";"

if-else-stmt = "if" expression stmt-block ["else" (if-else-stmt | stmt-block)]

while-stmt = "while" expression stmt-block

break-stmt = "break" ";"

continue-stmt = "continue" ";"

foreach-stmt = "foreach" "int" identifier "in" additive-expr "..<" additive-expr stmt-block

panic-stmt = "panic" expression ";"

match-stmt = "match" expression "{" match-clause+ "}"

match-clause = match-pattern-list "=>" stmt-block
match-pattern-list =
   match-pattern
   | match-pattern-list "|" match-pattern

match-pattern =
   "_"
   | simple-const-expr

simple-const-expr =
   literal
   | "-" int-literal
   | "-" floating-point-literal
   | const-reference-expr

expression = logical-or-expr

const-expr = logical-or-expr # must also satisfy restrictions of const-expr as in Ballerina language spec

const-reference-expr = identifier | qualified-identifier # must refer to something defined with a const-decl

expression = logical-or-expr

logical-or-expr =
  logical-and-expr
  | logical-or-expr "||" logical-and-expr

logical-and-expr =
  bitwise-or-expr
  | logical-and-expr "&&" bitwise-or-expr

bitwise-or-expr =
  bitwise-xor-expr
  | bitwise-or-expr "|" bitwise-xor-expr

bitwise-xor-expr =
  bitwise-and-expr
  | bitwise-xor-expr "^" bitwise-and-expr

bitwise-and-expr =
  equality-expr
  | bitwise-and-expr "&" equality-expr

equality-expr =
  relational-expr
  | equality-expr "==" relational-expr
  | equality-expr "!=" relational-expr
  | equality-expr "===" relational-expr
  | equality-expr "!==" relational-expr

relational-expr =
  shift-expr
  | shift-expr "<" shift-expr
  | shift-expr "<=" shift-expr
  | shift-expr ">" shift-expr
  | shift-expr ">=" shift-expr
  | shift-expr ["!"] "is" type-desc

shift-expr =
  additive-expr
  | shift-expr "<<" additive-expr
  | shift-expr ">>" additive-expr
  | shift-expr ">>>" additive-expr

additive-expr =
  multiplicative-expr
  | additive-expr "+" multiplicative-expr
  | additive-expr "-" multiplicative-expr

multiplicative-expr =
  unary-expr
  | multiplicative-expr "*" unary-expr
  | multiplicative-expr "/" unary-expr
  | multiplicative-expr "%" unary-expr

unary-expr =
  primary-expr
  | "-" unary-expr
  | "~" unary-expr
  | type-cast-expr
  | checking-expr

type-cast-expr = "<" type-desc ">" unary-expr

checking-expr = checking-keyword unary-expr

checking-keyword = "check" | "checkpanic"

primary-expr =
  literal
  | error-constructor-expr
  | member-access-expr
  | field-access-expr
  | function-call-expr
  | method-call-expr
  | variable-reference-expr
  | list-constructor-expr
  | mapping-constructor-expr
  | "(" expression ")"

literal = nil-literal | boolean-literal | int-literal | floating-point-literal | string-literal
nil-literal = "(" ")" | "null"
boolean-literal = "true" | "false"

error-constructor-expr = "error" "(" expression ")"

list-constructor-expr = "[" [expr-list] "]"

expr-list = expression ["," expression ]*

mapping-constructor-expr = "{" [field-list] "}"

field-list = field ["," field ]*

field = field-name ":" expression

field-name = string-literal | identifier

member-access-expr = primary-expr "[" expression "]"

field-access-expr = primary-expr "." identifier

function-call-expr = function-reference arg-list

method-call-expr = primary-expr "." identifier arg-list

arg-list = "(" [expr-list] ")"

function-reference = identifier | qualified-identifier

qualified-identifier = module-prefix ":" identifier

module-prefix = identifier

variable-reference-expr = identifier | qualified-identifier # can refer to parameter, local variable or constant

// tokens
int-literal = (as in Ballerina language spec)
floating-point-literal = (as in Ballerina spec, except HexFloatingPointLiteral is not allowed)
string-literal = (as in Ballerina language spec)
identifier = [A-Za-z][A-Za-z0-9_]*
CompoundAssignmentOperator = (as in Ballerina language spec)

// comments starting with // allowed as in Ballerina language spec
```

Language spec syntax references:
* [string-literal](https://ballerina.io/spec/lang/2022R1/#string-literal)
* [floating-point-literal](https://ballerina.io/spec/lang/2022R1/#floating-point-literal)
* [int-literal](https://ballerina.io/spec/lang/2022R1/#int-literal)
* [const-expr](https://ballerina.io/spec/lang/2022R1/#const-expr)
* [CompoundAssignmentOperator](https://ballerina.io/spec/lang/2022R1/#CompoundAssignmentOperator)

## Semantic restrictions

There are the following additional restrictions:

 * member access `s[i]` is not supported when `s` has type `string`
 * relational operators are not supported when the static type of either of the operands includes nil

Method call syntax can be used for calling the following langlib functions:

* `array:length`
* `array:push`
* `string:length`
* `map:length`
* `int:toHexString`
* `error:message`

Two kinds of `import` are supported.

1. An import with an organization of `ballerina` is allowed with the following restrictions
   * only `ballerina/io` can be imported
   * the only function from `ballerina/io` that can be called is `println`
   * `println` only accepts a single argument (which is of type `any`)
2. An import with no organization and with a module name starting with `root`. An `import root.X;` in a file `F.bal` will read the module from the files `F.modules/X/*.bal`.

## Notes

* `list-constructor-expr` and `mapping-constructor-expr` are not allowed within a `const-expr`.
* Types in type definitions are restricted semantically, rather than syntactically: a type definition that is referenced from a function definition must define a type that is equivalent to one that can be described using the type-defn grammar in this document. It must also match the type-defn [grammar supported for semantic type-checking](type-subset.md).
* Function typing is not yet fully implemented
   * Structure types can not have subtypes of `function` as a member type.
   * Type `T` in type test expression `E is T` or `E !is T` can not be a proper subtype of `function`.
   * Type `T` in type cast expression `<T>E` can not be a proper subtype of `function`.

## Additions from subset 14

* Add support for `function` values with the restrictions in assignment, type cast and type test

## Implemented spec changes since 2022R1

* [#1024](https://github.com/ballerina-platform/ballerina-spec/issues/1024#issuecomment-1016003543) - decimal values must not use hexadecimal literals
