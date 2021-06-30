# Language subset 3

## Summary

* Only values allowed are of basic type nil, boolean, int and list.
* The only type descriptors allowed are `boolean`, `int`, `any` and `any[]`.
* At module level, only function definitions:
   * no default arguments
   * no rest arguments
   * may be declared public
* Statements:
   * function call statement
   * local variable declaration with explicit type and expression
   * assignment
      * to variable `v = E;`
      * to member of a list `v[E1] = E2;`
   * `return` statement
   * `if`/`else` statements
   * `while` statement
   * `break` and `continue` statements
   * `foreach` statements that use  `<..`
* Expressions:
   * binary operators: `+`, `-`, `*`, `/`, `%`, `<`, `<=`, `>`, `>=`, `==`, `!=`, `===`, `!==`, `&`, `^`, `|`
   * unary operators: `-`, `!`
   * type cast
   * function call
   * method call `v.f(args)` syntax for calling langlib functions
   * member access `E[i]`
   * list constructor `[E1, E2, ..., En]`
   * literals for nil, boolean and int
* Langlib functions:
  * `array:length`
  * `array:push`
  * `array:setLength`
* The only imported function that can be called is `io:println` and it can only be called with a single argument.

## Grammar

This deals explicitly with operator precedence and associativity.

```
module-part = import-decl? module-decl*
import-decl = "import" identifier "/" identifier ";"

module-decl = function-defn

function-defn = ["public"] "function" identifier signature stmt-block
signature = "(" [param-list] ")" [ "returns" type-desc ]
type-desc = basic-type-name | "any"

basic-type-name = "int" | "boolean"

param-list = param ["," param]*
param = type-desc identifier

stmt-block = "{" statement* "}"

statement =
  local-var-decl-stmt
  | function-call-stmt
  | assign-stmt
  | return-stmt
  | if-else-stmt
  | while-stmt
  | break-stmt
  | continue-stmt
  | foreach-stmt

local-var-decl-stmt = type-desc identifier "=" expression ";"

function-call-stmt = function-call-expr ";"

assign-stmt = lvexpr "=" expression ";"

lvexpr =
   identifier
   | identifier "[" expression "]"

return-stmt = "return" [expression] ";"

if-else-stmt = "if" stmt ["else" (if-else-stmt | stmt-block)]

while-stmt = "while" expression stmt-block

break-stmt = "break" ";"

continue-stmt = "continue" ";"

foreach-stmt = "foreach" typedesc identifier "in" expression "..<" expression stmt-block

expression = bitwise-or-expr | list-constructor-expr

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
  additive-expr
  | additive-expr "<" additive-expr
  | additive-expr "<=" additive-expr
  | additive-expr ">" additive-expr
  | additive-expr ">=" additive-expr

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

literal = integer-literal | boolean-literal | nil-literal
boolean-literal = "true" | "false"
nil-literal = "(" ")" | "null"

list-constructor-expr = "[" expr-list "]"

expr-list = expression ["," expression ]*

member-access-expr = primary-expr "[" expression "]"

function-call-expr = function-reference arg-list

method-call-expr = primary-expr "." identifier arg-list

arg-list = "(" [expr-list] ")"

function-reference = identifier | qualified-identifier

qualified-identifier = module-prefix ":" identifier

module-prefix = identifier

variable-reference-expr = identifier

// tokens
integer-literal = "0" | [1-9][0-9]* // leading zeros are not allowed (to prevent confusion with octal)
identifier = [A-Za-z][A-Za-z0-9_]*

// comments starting with // allowed as in spec
```

## Semantic restrictions

Method call syntax can be used for calling the following langlib functions:

* `array:length`
* `array:push`
* `array:setLength`

The following restrictions apply to imported modules:

* only `ballerina/io` can be imported
* the only function from `ballerina/io` that can be called is `println`
* `println` only accepts a single argument (which is of type `any`)

## Notes

* The syntax restricts where a `list-constructor-expr` can occur so as to avoid the need to infer a type for the constructed list.

## Additions from subset 2

Type `any[]` and some related operations:

* New type descriptors: `any[]`
* New expressions
   * list constructors `[1, 2, 3]`
   * `E[n]`
 * Allow member access lvalues in assignment `V[k] = E;`
 * Langlib (called using method call syntax)
    * array:length

Existing syntax extended:
* `===`, `!==`
* `io:println`

Langlib:
* `array:length`
* `array:push`
* `array:setLength`

## Implemented spec changes since 2021R1

* [#814](https://github.com/ballerina-platform/ballerina-spec/issues/814) - improved typing rules for `==` and `!=`
