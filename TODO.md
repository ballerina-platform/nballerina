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
16. boolean singleton type
17. integer singleton type
18. integer subtypes with specific width/signedness
19. float singletons
20. decimal singletons
21. objects (without member qualifiers or object qualifiers)
22. typedesc subtypes
23. future subtypes
24. stream subtypes
25. table type without keys
26. table keys
27. distinct types
28. error subtypes
29. public, private object member qualifiers
30. client, service remote qualifiers
31. string:Char type
32. xml subtypes
33. isolated qualifier
32. transactional qualifier

## Other things

* Implement concept of a module (collection of mutually recursive named definitions)
* Conversion from SemType to JSON representation
* JSON syntax for varargs functions
* JSON syntax for difference and/or complement `["!" T]` or `["-" T1 T2]`
* Support Ballerina syntax for types (start with a subset)
* One of the subtype tests creates >600 BDDs: we should understand why and try to reduce it
* Use isolated in core and json modules
* Make use of Ballerina's data-driven test feature
* Add JSON `["?" T]` meaning `["|", T, "()"]`
* Extend to provide error messages for subtype failure
* I suspect we have a problem with a function return type of `never`
* Move desugaring of multiple function arguments into core

