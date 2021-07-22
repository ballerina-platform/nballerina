# Language subset 2

## Summary

* Only values allowed are of basic type int, boolean and nil.
* The only type descriptors allowed are `any`, `int`, `boolean`.
* At module level, only function definitions:
   * no default arguments
   * no rest arguments
   * may be declared public
* Statements:
   * function call
   * local variable declaration with explicit type and initializer
   * assignment
   * return
   * if/else
   * while
   * break and continue
* Expressions:
   * Binary operators: `+`, `-`, `*`, `/`, `%`, `<`, `<=`, `>`, `>=`, `==`, `!=`, `===`, `!==`, `&`, `^`, `|`
   * Unary operators: `-`, `!`
   * Type cast
   * Literals for int, boolean and nil
* The only imported function that can be called is `io:println` and
  it can only be called with a single argument.

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

local-var-decl-stmt = type-desc identifier "=" expression ";"

function-call-stmt = function-call-expr ";"

assign-stmt = lvexpr "=" expression ";"

lvexpr = identifier 

return-stmt = "return" [expression];

if-else-stmt = "if" stmt ["else" (if-else-stmt | stmt-block)]

while-stmt = "while" expression stmt-block

break-stmt = "break" ";"

continue-stmt = "continue" ";"

expression = bitwise-or-expr

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
  | function-call-expr
  | variable-reference-expr
  | "(" expression ")"

literal = integer-literal | boolean-literal | nil-literal
boolean-literal = "true" | "false"
nil-literal = "(" ")" | "null"

function-call-expr = function-reference arg-list

arg-list = "(" [expr-list] ")"

function-reference = identifier | qualified-identifier

qualified-identifier = module-prefix ":" identifier

module-prefix = identifier

expr-list = expression ["," expression]*

variable-reference-expr = identifier

// tokens
integer-literal = "0" | [1-9][0-9]* // leading zeros are not allowed (to prevent confusion with octal)
identifier = [A-Za-z][A-Za-z0-9_]*

// comments starting with // allowed as in spec
```

## Semantic restrictions

The following restrictions apply to imported modules:

* only `ballerina/io` can be imported
* the only function from `ballerina/io` that can be called is `println`
* `println` only accepts a single argument (which is of type `any`)

## Additions from subset 1

Type `any` and some related operations:

* New type descriptor: `any`
* Explicit nil values
* New expression syntax:
   * type cast `<TD>E` (can panic)
   * `===` and `!==` operators
   * nil constant `()`
* Standard Library
   * Argument for `io:println` has type `any` not just `int`

## Implemented spec changes since 2021R1

* [#814](https://github.com/ballerina-platform/ballerina-spec/issues/814) - improved typing rules for `==` and `!=`
