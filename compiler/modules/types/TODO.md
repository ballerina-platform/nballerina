# To do

## Type system features

1. ~~minimal subset with 2-tuples as only basic type subtype~~
2. ~~framework for handling subtypes of multiple basic types~~
3. ~~tuples of arbitrary fixed length~~
4. ~~closed records without optional fields~~
5. ~~recursion~~
6. ~~functions of one argument~~
7. ~~represent multiple function arguments using tuples~~
8. ~~recursive function types~~
9. ~~string singleton type~~
10. ~~readonly type~~
11. ~~rest field for tuples~~
12. ~~all of any basic type~~
13. ~~open records~~
14. readonly record fields
15. optional record fields
16. ~~boolean singleton type~~
17. ~~integer singleton type~~
18. ~~integer subtypes with specific width/signedness~~
19. float singletons
20. decimal singletons
21. objects (without member qualifiers or object qualifiers)
22. typedesc subtypes
23. future subtypes
24. stream subtypes
25. table type without keys
26. table keys
27. distinct object types
28. public, private object member qualifiers
29. client, service remote qualifiers
30. ~~error detail subtypes~~
31. distinct error types
32. string:Char type
33. xml subtypes
34. isolated qualifier
35. transactional qualifier

## JSON syntax features

* Syntax for difference and/or complement `["!" T]` or `["-" T1 T2]`
* Syntax for varargs functions
* Add `["?" T]` meaning `["|", T, "()"]`
* Conversion from SemType to JSON representation
* Syntax for module (collection of mutually recursive named definitions)
  as in Ballerina
* Use Ballerina's data-driven test feature to run tests in JSON syntax
* Maybe use `null` instead of `"nil"` to represent nil type (for consistency with `true`, `false`)

## Other things

* Consider better names than SemType
* One of the subtype tests creates >600 BDDs: we should understand why and try to reduce it
* Use isolated in core and json modules
* Extend to provide error messages for subtype failure
* I suspect we have a problem with a function return type of `never`
* Move desugaring of multiple function arguments into core
* Better to make TypeCheckerContext be an object
