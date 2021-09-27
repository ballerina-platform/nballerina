# Language subset 8

## Summary

* Only values allowed are of basic type nil, boolean, int, float, string, list, mapping and error.
* At module level
   * function definitions
      * no default arguments
      * no rest arguments
      * may be declared public
   * const definitions
      * not of structured types
   * type definitions
* Type descriptors:
   * predefined basic type name: `boolean`, `float`, `int`, `string`, `error`
   * `any` type
   * optional type: `T?` where T is one of the above types
   * union of the above types e.g. `int|string?`
   * `map<M>` where M any of the above types
   * `M[]` where `M` is either a type name `T` or `T?`, or a parenthesized union e.g. `(any|error)[]`
   * a reference to a type defined by a type definition
* Statements:
   * function/method call statement
   * local variable declaration with explicit type descriptor and initializer
      * parentheses are not supported in the type descriptor; a type reference must be used instead
   * assignment
      * to variable `v = E;`
      * to member of a list or mapping `v[E1] = E2;`
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

type-desc = union-type-desc | array-type-desc | map-type-desc | type-reference 

union-type-desc =
  optional-type-desc
  | union-type-desc "|" optional-type-desc

optional-type-desc = builtin-type-name [ "?" ]

builtin-type-name = "any" | "boolean" | "int" | "float" | "string" | "error"

array-type-desc = array-member-type-desc "[" "]"

array-member-type-desc =
  optional-type-desc
  | "(" union-type-desc ")"

map-type-desc = "map" "<" union-type-desc ">"

param-list = param ["," param]*
param = type-desc identifier

stmt-block = "{" statement* "}"

statement =
  local-var-decl-stmt
  | call-stmt
  | assign-stmt
  | compound-assign-stmt
  | return-stmt
  | if-else-stmt
  | while-stmt
  | break-stmt
  | continue-stmt
  | foreach-stmt
  | panic-stmt
  | match-stmt
 
local-var-decl-stmt = ["final"] inline-type-desc identifier "=" expression ";"

# Same as type-desc except the parentheses are not allowed
inline-type-desc = union-type-desc | inline-array-type-desc | map-type-desc | type-reference

inline-array-type-desc = optional-type-desc "[" "]"

# reference to a type definition
type-reference = identifier | qualfied-identifier

call-stmt = call-expr ";"

call-expr =
   function-call-expr
   | method-call-expr
   | checking-keyword call-expr

assign-stmt = lvexpr "=" expression ";"

compound-assign-stmt = lvexpr CompoundAssignmentOperator expression ";"

lvexpr =
   identifier
   | identifier "[" expression "]"

return-stmt = "return" [expression] ";"

if-else-stmt = "if" expression stmt-block ["else" (if-else-stmt | stmt-block)]

while-stmt = "while" expression stmt-block

break-stmt = "break" ";"

continue-stmt = "continue" ";"

foreach-stmt = "foreach" "int" identifier "in" additive-expr "..<" additive-expr stmt-block

panic-stmt = "panic" inner-expr ";"

match-stmt = "match" inner-expr { match-clause+ }

match-clause := match-pattern-list "=>" stmt-block
match-pattern-list :=
   match-pattern
   | match-pattern-list "|" match-pattern

match-pattern :=
   "_"
   | simple-const-expr

simple-const-expr :=
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

function-call-expr = function-reference arg-list

method-call-expr = primary-expr "." identifier arg-list

arg-list = "(" [expr-list] ")"

function-reference = identifier | qualified-identifier

qualified-identifier = module-prefix ":" identifier

module-prefix = identifier

variable-reference-expr = identifier | qualified-identifier # can refer to parameter, local variable or constant

// tokens
int-literal = (as in Ballerina language spec)
floating-point-literal = (as in Ballerina spec, except HexFloatingPointLiteral and DecimalTypeSuffix are not allowed)
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

The following restrictions apply to imports with an organization of `ballerina`:

* only `ballerina/io` can be imported
* the only function from `ballerina/io` that can be called is `println`
* `println` only accepts a single argument (which is of type `any`)

## Notes

* The syntax restricts where a `list-constructor-expr` or `mapping-constructor-expr` can occur so as to avoid the need to infer a type for the constructed list.

## Additions from subset 7

* a qualified identifier in a function-reference can refer to a function definition defined in another module
* a variable-reference or type-reference can be a qualified identifier referring to a constant or type defined in another module
* Support `check` and `checkpanic` in call statements

## Implemented spec changes since 2021R1

* [#752](https://github.com/ballerina-platform/ballerina-spec/issues/752) - `!is` operator
* [#814](https://github.com/ballerina-platform/ballerina-spec/issues/814) - improved typing rules for `==` and `!=`
* [#827](https://github.com/ballerina-platform/ballerina-spec/issues/827#issuecomment-895601520) - improved type narrowing for `match` statement
* [#887](https://github.com/ballerina-platform/ballerina-spec/issues/887) - improved treatment of unreachability
* [#902](https://github.com/ballerina-platform/ballerina-spec/issues/902) - expression has a singleton type when its subexpressions have singleton type
* [#904](https://github.com/ballerina-platform/ballerina-spec/issues/904) - restrict assignment to type-narrowed variables within loops
* [#905](https://github.com/ballerina-platform/ballerina-spec/issues/905) - disallow trailing dot in floating-point literals


