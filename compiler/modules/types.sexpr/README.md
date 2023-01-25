Sexpr syntax
============

```
sexpr = "(" (ATOM | boolean | INT | STRING)* ")"
boolean = "true"|"false"

// Tokens
ATOM: (^ '(' | ')' | '"' | '0' .. '9' | '-' ) (^ TAB | LF | CR | SPACE | ')' )*
STRING: '"' ((^ '"')* ('\' '"')?)* '"'
INT: '-'? ('0' .. '9')*
```

Basic types
===========

| Ballerina Syntax         | Sexpr      |
|--------------------------|------------|
| `()`                     | `()`       |
| `boolean`                | `boolean`  |
| `int`                    | `int`      |
| `float`                  | `float`    |
| `decimal`                | `decimal`  |
| `string`                 | `string`   |
| `error`                  | `error`    |
|f`function`               | `function` |
| `(any\|error)[]`         | `list`     |
| `map<any\|error>`        | `mapping`  |
| `table<map<any\|error>>` | `table`    |
| `xml`                    | `xml`      |

Named types
===========

| Ballerina Syntax | Sexpr   |
|------------------|---------|
| `any`            | `any`   |
| `never`          | `never` |

Boolean subtypes
================

| Ballerina Syntax | Sexpr   |
|------------------|---------|
| `true`           | `true`  |
| `false`          | `false` |

Int subtypes
============

| Ballerina Syntax             | Sexpr                                  |
|------------------------------|----------------------------------------|
| `1 \| 2`                     | `(\| 1 2)`                             |
| `1 \| 2 \| 3`                | `(int-range 1 3)`                      |
| `1 \| 2 \| 3 \| 5 \| 6 \| 7` | `(\| (int-range 1 3) (int-range 5 7))` |
| `int:Signed8`                | `(int-range -128 127)`                 |
| `int`                        | `int`                                  |

Float subtypes
==============

| Ballerina Syntax      | Sexpr                                       |
|-----------------------|---------------------------------------------|
| `1.0`                 | `(float "1.0")`                             |
|f`float:NaN`           | `(float "NaN")`                             |
| `float & !5.0 & !8.0` | `(& float (! (float "5.0") (float "8.0")))` |

Decimal subtypes
================

| Ballerina Syntax      | Sexpr             |
|-----------------------|-------------------|
| `12d`                  | `(decimal "12")` |

String subtypes
===============

`string:Char` is represented by sexpr `char`. A string single shape is represented by the value itself. Every other string subtype is represented by a disjunction of (at most) two conjunctions (one per char and non-char subsets).


| Ballerina Syntax                          | Sexpr                                |
|-------------------------------------------|--------------------------------------|
| `"ABC"`                                   | `"ABC"`                              |
| `"A"`                                     | `"A"`                                |
| `string:Char`                             | `char`                               |
| `"ABC" \| "A"`                            | `(\| "A" "ABC")`                     |
| `string & !"ABC" &!"A"`                   | `(& string (! "A" "ABC"))`           |
| `"ABC" \| string:Char`                    | `(\| char "ABC")`                    |
| `string:Char & !"Y" & !"Z"`               | `(& char (! "Y" "Z"))`               |
| `"ABC" \| string:Char & !"Z"`             | `(\| (& char (! "Z")) "ABC")`        |
| `"A" \| (string & !string:Char)`          | `(\| "A" (& string (! char)))`       |
| `"A" \| (string & !string:Char & !"XYZ")` | `(\| "A" (& string (! char "XYZ")))` |

List/Mapping/Function subtypes
==============================

Each list/mapping/function types consist of multiple atoms. Atoms are created as below
and each atom is given a name. Those atom references are then combined as a disjunction of conjunctions.

Eg:

Internal representation: `(A & !B & !C) | D`

Sexpr: `(| (& A (! B C)) D)`


List atoms
----------

| Ballerina Syntax                    | Sexpr Atoms                                |
|-------------------------------------|--------------------------------------------|
| `[int, string]`                     | `(list (int string))`                      |
| `[int, string, float...]`           | `(list (int string) float)`                |
| `[int, string, string]`             | `(min-length-list (int string) 3)`         |
| `[int, string, string, boolean...]` | `(min-length-list (int string) 3 boolean)` |
| `string[0]`                         | `(list ())`                                |
| `int[10]`                           | `(array int 10)`                           |
| `int[]`                             | `(array int)`                              |
| `()[]`                              | `(array ())`                               |

| Ballerina Syntax          | Sexpr               |
|---------------------------|---------------------|
| `(any\|error)[] & !int[]` | `(& list (! LT.11))` |

Mapping atoms
-------------

| Ballerina Syntax                             | Sexpr Atoms                                            |
|----------------------------------------------|--------------------------------------------------------|
| `map<int>`                                   | `(map int)`                                            |
| `record {\| int...; \|}`                     | `(map int)`                                            |
| `map<()>`                                    | `(map ())`                                             |
| `record {\| int x; string y; \|}`            | `(mapping (("x" int) ("y" string)))`                   |
| `record {\| string x; string y; int...; \|}` | `(mapping (("x" string) ("y" string)) int)`            |
| `record {\| \|}`                             | `(mapping ())`                                         |

Table subtypes
===============

| Ballerina Syntax                      | Sexpr                                                                                                                                                                                         |
|---------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `table<record {\| int k; int v; \|}>` | `(table MT.12)` where `(MT.12 (mapping (("k" int) ("v" int))))`                                                                                                                                 |
| `table<record {\| int a; \|}> & !table<record {\| int b; \|}>` | `(& table (table MT.12) (! (table MT.15)))` where `(MT.12 (mapping (("a" int))))(MT.15 (mapping (("b" int))))`                                                         |
| `table<record {\| int a; \|} \| record {\| int b; \|}> \| table<record {\| int c; \|}>` | `(\| (table (\| MT.12 MT.13)) (table MT.16))` where `(MT.12 (mapping (("a" int))))(MT.13 (mapping (("b" int))))(MT.16 (mapping (("c" int))))` |
| `table<map<any\|error>> & !table<record {\| int a; \|}>` | `(& table (! (table MT.12)))` where `(MT.12 (mapping (("a" int))))`                                                                                                          |

XML subtypes
============

Following symbols can appear as the second symbol of the xml subtype sexpr

- `0` xml never
- `1` single item
- `*` one or more, sequence

| Ballerina Syntax                                     | Sexpr                                                     |
|------------------------------------------------------|-----------------------------------------------------------|
| `xml<never>`                                         | `(xml 0)`                                                 |
| `xml:Element`                                        | `(xml 1 element)`                                         |
| `xml:Element\|xml:Comment`                           | `(xml 1 element comment)`                                 |
| `xml<xml:Element>`                                   | `(xml * element)`                                         |
| `xml & !xml<xml:Element>`                            | `(& xml (! (xml * element)))`                             |
| `xml & !(xml<xml:Element> \| xml:Comment)`           | `(& (& xml (! (xml * element))) (! (xml 1 comment)))`     |
| `(xml & !xml<xml:Element>) \| xml:Element`           | `(| (& xml (! (xml * element))) (xml 1 element))`         |
| `xml & !xml:Element`                                 | `(& xml (! (xml 1 element)))`                             |
| `xml<xml:Element> & !xml<never>`                     | `(& (xml * element) (! (xml 0)))`                         |
| `xml<xml:Element> & !xml:Element`                    | `(& (xml * element) (! (xml 1 element)))`                 |
|f`xml<xml:Element> & !xml:Element & !xml<never>`      | `(& (xml * element) (! (xml 0) (xml 1 element)))`         |
| `xml & !xml<xml:Element> | xml:Element | xml<never>` | `(| (& xml (! (xml * element))) (xml 0) (xml 1 element))` |
| `xml<xml:Element> | (xml & !xml<xml:Comment>)`       | `(| (xml * element) (& xml (! (xml * comment))))`         |
| `xml<xml:Comment\|xml:Element> & !xml<xml:Comment>`  | `(& (xml * element comment) (! (xml * comment)))`         |
| `xml<xml:Comment\|xml:Element> & !xml:Comment`       | `(& (xml * element comment) (! (xml 1 comment)))`         |

Error subtypes
==============

| Ballerina Syntax                                               | Sexpr                                                                                                                 |
|----------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
|f`error<record {\| int code; \|}>`                              | `(error (& readonly MT.9))` where `(MT.9 (mapping (("code" int))))`                                                   |
|f`error<record {\| int a; \|}> \| error<record {\| int b; \|}>` | `(error (\| (& readonly MT.9) (& readonly MT.10)))` where `(MT.9 (mapping (("a" int))))(MT.10 (mapping (("b" int))))` |
|f`error<record {\| int a; \|} \| record {\| int b; \|}>`        | `(error (\| (& readonly MT.9) (& readonly MT.10)))` where `(MT.9 (mapping (("a" int))))(MT.10 (mapping (("b" int))))` |

Function subtypes
=================

| Ballerina Syntax                        | Sexpr                             |
|-----------------------------------------|-----------------------------------|
| `function(int, boolean) returns string` | `(function (int boolean) string)` |
| `function(int, int) returns float`      | `(function (int int) float)`      |

Examples
========

| Ballerina Syntax                          | Sexpr                                                                        |
|-------------------------------------------|------------------------------------------------------------------------------|
| `never`                                   | `never`                                                                      |
|f`any\|error<record {\| int code; \|}>`    | `(\| any (error (& readonly MT.9)))` where `(MT.9 (mapping (("code" int))))` |
|f`readonly & map<any\|error>`              | `(& readonly mapping)`                                                       |
| `!string`                                 | `(! string)`                                                                 |
| `!string:Char`                            | `(! char)`                                                                   |
| `!"A"`                                    | `(! "A")`                                                                    |
| `(any\|error)[] & !int[]`                 | `(& list (! LT.11))` where `(LT.11 (array int))`                               |
