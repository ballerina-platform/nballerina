Grammar for type definitions currently supported for semantic type checking.

Unlike the grammar in the Ballerina language spec, this make precedence explicit.

Undefined symbols as defined in the currently implemented subset.

```
type-defn := "type" identifier type-desc ";"

type-desc := function-td 

function-td =
    union-td
    | "function" identifier "(" opt-td-list ")" ["returns" function-td]

union-td :=
    intersection-td
    | union-td "|" intersection-td

intersection-td :=
    postfix-td
    | intersection-td "&" postfix-td

postfix-td := 
  primary-td
  | postfix-td array-dimension+
  | postfix-td "?"

primary-td :=
  predefined-td
  | int-td
  | map-td
  | record-td
  | tuple-td
  | xml-td
  | error-td
  | function-td
  | nil-td
  | singleton-td
  | td-ref 
  | "(" type-desc ")"
    
nil-td := "(" ")"
int-td := "int" [ ":" identifier ]
map-td := "map" type-param
error-td := "error" [type-param]
// XXX handle "..." in tuple-td and record-td
tuple-td := "[" opt-td-list "]"

array-dimension := "[" [simple-const-expr] "]"

opt-td-list := [ td-list ]
td-list :=
  type-desc
  | td-list "," type-desc

record-td := "record" "{|" field-desc* "|}"
field-desc := type-desc identifier ";"

xml-rd := "xml" [type-param]

type-param := "<" type-desc ">"

td-ref := qualified-identifier | identifier // can also refer to const definition

qualified-identifier = module-prefix ":" identifier

module-prefix = identifier | predeclared-prefix

predeclared-prefix = "string" | "int" | "xml"

predefined-td :=
    "boolean"
    | "decimal"
    | "float"
    | "string"
    | "typedesc"
    | "handle"
    | "any"
    | "never"
    | "json"
    | "byte"
    | "readonly"
    | "true"
    | "false"

singleton-td = simple-const-expr
```
