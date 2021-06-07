Grammar for subset of Ballerina syntax that can describe types currently supported.

Unlike grammar in the spec, this makes precedence explicit.

```
module := top-level-defn*
top-level-defn := const-defn | type-defn

type-defn := "type" identifier type-desc ";"
const-defn := "const" identifier  ["-"] IntLiteral ";"

boolean-literal := "true" | "false"

IntLiteral := [0-9][0-9]+
StringLiteral := ["] StringChar* ["]
StringChar :=
  <any ASCII character except CR, LF, \ and ">
  | [\] [\"nrt]

identifier := [A-Za-Z][A-Za-z0-9_]*

type-desc := function-td 

function-td =
    union-td
    | "function" identifier "(" type-desc-list ")" ["returns" function-td]

union-td :=
    intersection-td
    | union-td "|" intersection-td

intersection-td :=
    postfix-td
    | intersection-td "&" postfix-td

postfix-td := 
  primary-td
  | postfix-td "[" "]"
  | postfix-td "?"

primary-td :=
  predefined-td
  | int-td
  | map-td
  | record-td
  | tuple-td
  | error-td
  | function-td
  | nil-td
  | StringLiteral
  | td-ref 
  | "(" type-desc ")"
    
nil-td := "(" ")"
int-td := "int" [ ":" identifier ]
map-td := "map" "<" type-desc ">"
error-td := "error" ["<" type-desc ">"]
// XXX handle "..."
tuple-td := "[" type-desc-list "]"
td-ref := identifier

predefined-td :=
    "boolean"
    | "decimal"
    | "float"
    | "string"
    | "xml"
    | "typedesc"
    | "handle"
    | "any"
    | "never"
    | "json"
    | "byte"
    | "readonly"
    | "true"
    | "false"
```
