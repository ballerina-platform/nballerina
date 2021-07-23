# Language subset 4

## Summary

* Only values allowed are of basic type nil, boolean, int, string, list and mapping.
* The only type descriptors allowed are `boolean`, `int`, `string`, `any`, `any[]` and `map<any>`.
* At module level, only function definitions:
   * no default arguments
   * no rest arguments
   * may be declared public
* Statements:
   * function/method call statement
   * local variable declaration with explicit type and initializer
   * assignment
      * to variable `v = E;`
      * to member of a list or mapping `v[E1] = E2;`
   * `return` statement
   * `if`/`else` statements
   * `while` statement
   * `break` and `continue` statements
   * `foreach` statements that use  `<..`
* Expressions:
   * binary operators: `+`, `-`, `*`, `/`, `%`, `<`, `<=`, `>`, `>=`, `==`, `!=`, `===`, `!==`, `&`, `^`, `|`, `<<`, `>>`, `>>>`
   * unary operators: `-`, `!`
   * type cast
   * function call
   * method call `v.f(args)` syntax for calling langlib functions
   * member access `E[i]` for both list and mapping
   * list constructor `[E1, E2, ..., En]`
   * mapping constructor `{ f1: E1, f2: E2,..., fn: En }`
   * literals for nil, boolean, int and string
* Langlib functions:
  * `array:length`
  * `array:push`
  * `string:length`
  * `map:length`
  * `int:toHexString`
* The only imported function that can be called is `io:println` and it can only be called with a single argument.

## Grammar

This deals explicitly with operator precedence and associativity.

```
module-part = import-decl? module-decl*
import-decl = "import" identifier "/" identifier ";"

module-decl = function-defn

function-defn = ["public"] "function" identifier signature stmt-block
signature = "(" [param-list] ")" [ "returns" type-desc ]
type-desc = basic-type-name | "any" | array-type-desc | map-type-desc

basic-type-name = "int" | "boolean"
array-type-desc = "any" "[" "]"
map-type-desc = "map" "<" "any" ">"

param-list = param ["," param]*
param = type-desc identifier

stmt-block = "{" statement* "}"

statement =
  local-var-decl-stmt
  | call-stmt
  | assign-stmt
  | return-stmt
  | if-else-stmt
  | while-stmt
  | break-stmt
  | continue-stmt
  | foreach-stmt

local-var-decl-stmt = ["final"] type-desc identifier "=" expression ";"

call-stmt =
   function-call-expr ";"
   | method-call-expr ";"

assign-stmt = lvexpr "=" expression ";"

lvexpr =
   identifier
   | identifier "[" expression "]"

return-stmt = "return" [expression] ";"

if-else-stmt = "if" stmt ["else" (if-else-stmt | stmt-block)]

while-stmt = "while" expression stmt-block

break-stmt = "break" ";"

continue-stmt = "continue" ";"

foreach-stmt = "foreach" "int" identifier "in" additive-expr "..<" additive-expr stmt-block

expression = bitwise-or-expr | list-constructor-expr | mapping-constructor-expr

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
  | type-cast-expr

type-cast-expr = "<" type-desc ">" unary-expr

primary-expr =
  literal
  | member-access-expr
  | function-call-expr
  | method-call-expr
  | variable-reference-expr
  | "(" bitwise-or-expr ")"

literal = nil-literal | boolean-literal | integer-literal | string-literal
nil-literal = "(" ")" | "null"
boolean-literal = "true" | "false"

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

variable-reference-expr = identifier

// tokens
int-literal = (as in Ballerina language spec)
string-literal = (as in Ballerina language spec)
identifier = [A-Za-z][A-Za-z0-9_]*

// comments starting with // allowed as in Ballerina language spec
```

Language spec syntax references:
* [string-literal](https://ballerina.io/spec/lang/2021R1/#string-literal)
* [int-literal](https://ballerina.io/spec/lang/2021R1/#int-literal)

## Semantic restrictions

The implementation of `string` has the following additional restrictions:

 * member access `s[i]` is not supported when `s` has type `string`

Method call syntax can be used for calling the following langlib functions:

* `array:length`
* `array:push`
* `string:length`
* `map:length`
* `int:toHexString`

The following restrictions apply to imported modules:

* only `ballerina/io` can be imported
* the only function from `ballerina/io` that can be called is `println`
* `println` only accepts a single argument (which is of type `any`)

## Notes

* The syntax restricts where a `list-constructor-expr` or `mapping-constructor-expr` can occur so as to avoid the need to infer a type for the constructed list.

## Additions from subset 3

Add `string` and `map<any>`:

* New type descriptors
  * `string`
  * `map<any>`
* New expressions
  * string literals `"abc"`
  * mapping constructor `{"x": 1, "y": 2}`

Existing syntax extended:

* `===`, `!==` for string and map
* `+` for string
* `==`, `!=` for string
* `<`, `<=`, `>`, `>=` for string
* `<T>E` for `string` and `map<any>`
* `io:println` for `map<any>`

Langlib:
* `string:length`
* `map:length`

Other additions:
* shift expressions `255 >> 2`
* hex int literals `0Xba1decaf`
* `final` qualifier for local variable declarations
* `int:toHexString`

## Implemented spec changes since 2021R1

* [#814](https://github.com/ballerina-platform/ballerina-spec/issues/814) - improved typing rules for `==` and `!=`
* [#887](https://github.com/ballerina-platform/ballerina-spec/issues/887) - improved treatment of unreachability
