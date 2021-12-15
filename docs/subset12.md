# Language subset 12

## Summary

* Only values allowed are of basic type nil, boolean, int, float, decimal, string, list, mapping and error.
* At module level
   * function definitions
      * no default arguments
      * no rest arguments
      * may be declared public
   * const definitions
      * not of structured types
   * type definitions
* Type descriptors:
   * predefined basic type name: `boolean`, `decimal`, `error`, `float`, `int`, `string`
   * nil type `()`
   * `any` type
   * optional type: `T?`
   * unions: `T1|T2`
   * intersections: `T1&T2`
   * structure types
      * map type: `map<T>`
      * array type: `T[]`
      * record types: `record { T1 f1; T2 f2; }` and `record {| T1 f1; T2 f2; R...; |}`
   * a reference to a type defined by a type definition
* Statements:
   * function/method call statement
   * local variable declaration with explicit type descriptor and initializer
      * binding pattern is either an identifier or `_`
   * assignment
      * to variable `v = E;`
      * to member of a list or mapping `v[E1] = E2;`
      * to a field `v.x.y.z = E`
      * to wildcard binding pattern `_ = E`
      * compound assignment `op=`
   * `return` statement
   * `if`/`else` statements
   * `while` statement
   * `break` and `continue` statements
   * `foreach` statements that use  `<..`
   * `match` statement with match patterns that are const
   * `panic` statement
* Expressions:
   * literals for nil, boolean, int, float and string
   * binary operators: `+`, `-`, `*`, `/`, `%`, `<`, `<=`, `>`, `>=`, `==`, `!=`, `===`, `!==`, `&`, `^`, `|`, `<<`, `>>`, `>>>`
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

optional-type-desc = postfix-type-desc [ "?" ]

array-type-desc = optional-type-desc "[" "]"

primary-type-desc =
  builtin-type-name
  | nil-type-desc
  | "(" type-desc ")"
  | type-reference
  | mapping-type-desc

builtin-type-name = "any" | "boolean" | "int" | "float" | "string" | "error"

nil-type-desc = nil-literal

# reference to a type definition
type-reference = identifier | qualified-identifier

mapping-type-desc = map-type-desc | record-type-desc

map-type-desc = "map" "<" type-desc ">"

record-type-desc = inclusive-record-type-desc | exclusive-record-type-desc
inclusive-record-type-desc = "record" "{" field-desc* "}"
exclusive-record-type-desc = "record" "{|" field-desc* [rest-field-desc] "|}"
field-desc = type-desc identifier ";"
rest-field-desc = type-desc "..." ";"

param-list = param ["," param]*
param = type-desc identifier

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
   chainable-lvexpr
   | member-access-lvexpr

chainable-lvexpr = variable-reference-lvexpr | field-access-lvexpr

member-access-lvexpr = chainable-lvexpr "[" expression "]"

field-access-lvexpr = chainable-lvexpr "." identifier

variable-reference-lvexpr = variable-reference

return-stmt = "return" [expression] ";"

if-else-stmt = "if" expression stmt-block ["else" (if-else-stmt | stmt-block)]

while-stmt = "while" expression stmt-block

break-stmt = "break" ";"

continue-stmt = "continue" ";"

foreach-stmt = "foreach" "int" identifier "in" additive-expr "..<" additive-expr stmt-block

panic-stmt = "panic" inner-expr ";"

match-stmt = "match" inner-expr "{" match-clause+ "}"

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

expression = inner-expr | list-constructor-expr | mapping-constructor-expr

const-expr = inner-expr # must also satisfy restrictions of const-expr as in Ballerina language spec

const-reference-expr = identifier | qualified-identifier # must refer to something defined with a const-decl

inner-expr = bitwise-or-expr

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
  | "(" inner-expr ")"

literal = nil-literal | boolean-literal | int-literal | floating-point-literal | string-literal
nil-literal = "(" ")" | "null"
boolean-literal = "true" | "false"

error-constructor-expr = "error" "(" inner-expr ")"

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

variable-reference-expr = variable-reference

variable-reference = identifier | qualified-identifier # can refer to parameter, local variable or constant

// tokens
int-literal = (as in Ballerina language spec)
floating-point-literal = (as in Ballerina spec, except HexFloatingPointLiteral is not allowed)
string-literal = (as in Ballerina language spec)
identifier = [A-Za-z][A-Za-z0-9_]*
CompoundAssignmentOperator = (as in Ballerina language spec)

// comments starting with // allowed as in Ballerina language spec
```

Language spec syntax references:
* [string-literal](https://ballerina.io/spec/lang/2021R1/#string-literal)
* [floating-point-literal](https://ballerina.io/spec/lang/2021R1/#floating-point-literal)
* [int-literal](https://ballerina.io/spec/lang/2021R1/#int-literal)
* [const-expr](https://ballerina.io/spec/lang/2021R1/#const-expr)
* [CompoundAssignmentOperator](https://ballerina.io/spec/lang/2021R1/#CompoundAssignmentOperator)

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

* The syntax restricts where a `list-constructor-expr` or `mapping-constructor-expr` can occur so as to avoid the need to infer a type for the constructed list.
* Types in type definitions are restricted semantically, rather than syntactically: a type definition that is referenced from a function definition must define a type that is equivalent to one that can be described using the type-defn grammar in this document. It must also match the type-defn [grammar supported for semantic type-checking](type-subset.md).

## Additions from subset 11

* `decimal` has been added
* inclusive record types have been added

## Implemented spec changes since 2021R1

* [#752](https://github.com/ballerina-platform/ballerina-spec/issues/752) - `!is` operator
* [#791](https://github.com/ballerina-platform/ballerina-spec/issues/791) - restrict characters in organization/module name in an import declaration
* [#814](https://github.com/ballerina-platform/ballerina-spec/issues/814) - improved typing rules for `==` and `!=`
* [#827](https://github.com/ballerina-platform/ballerina-spec/issues/827#issuecomment-895601520) - improved type narrowing for `match` statement
* [#887](https://github.com/ballerina-platform/ballerina-spec/issues/887) - improved treatment of unreachability
* [#902](https://github.com/ballerina-platform/ballerina-spec/issues/902) - expression has a singleton type when its subexpressions have singleton type
* [#904](https://github.com/ballerina-platform/ballerina-spec/issues/904) - restrict assignment to type-narrowed variables within loops
* [#905](https://github.com/ballerina-platform/ballerina-spec/issues/905) - disallow trailing dot in floating-point literals
* [#970](https://github.com/ballerina-platform/ballerina-spec/issues/970#issuecomment-952463711) - disallow white space in qualified identifier
* [#991](https://github.com/ballerina-platform/ballerina-spec/issues/991) - clarify that `null` is allowed as a type descriptor

