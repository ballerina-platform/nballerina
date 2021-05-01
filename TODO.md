# To do

## Type system features

1. ~~Minimal subset with 2-tuples as only basic type subtype~~
2. ~~Framework for handling subtypes of multiple basic types~~
3. ~~Tuples of arbitrary fixed length~~
4. ~~Closed records without optional fields~~
5. ~~Recursion~~
6. ~~Functions of one argument~~
7. ~~Represent multiple function arguments using tuples~~
8. Recursive function types
9. ~~String singleton type~~
10. ~~readonly type~~
11. Rest field for tuples
12. Rest field for records
13. readonly record fields
14. Optional record fields
15. boolean singleton type
16. integer singleton type
17. integer width subtypes
18. float type
19. float singletons
20. objects (without member qualifiers or object qualifiers)
21. typedesc type
22. future type
23. stream type
24. handle type
25. table type without keys
26. table keys
27. distinct types
28. error subtypes
29. public, private object member qualifiers
30. client, service remote qualifiers
31. xml type
32. xml subtypes
33. isolated qualifier
32. transactional qualifier

## Other things

* Conversion from SemType to JSON representation
* JSON syntax for varargs functions
* JSON syntax for difference and/or complement
* Support subset of Ballerina syntax
* Divide into modules
* Support a type module (collection of mutually recursive named definitions)
* One of the subtype tests creates >600 BDDs: we should understand why and try to reduce it
