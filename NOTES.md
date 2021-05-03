# Implementation Notes

## Done

### Functions

We model functions as a having a single argument of tuple type and returning a single value.

### Readonly

We handle readonly by treating each selectively immutable basic type as if it were two basic types: one containing values that are readonly, and one containing values that are mutable.

### Rest type for tuples

Need to modify inhabited function.

Let S be `[S0, S1,...,Sm, Srest...]` and T be `[T0, T1,,....,Tm,Trest...]`.
For a list lv to be in S but not in T, there are two possibilites

1. lv is [v0, v1,...,vm] and lv is in S but not in T (i.e. Srest and Trest are not relevant)
2. lv is [v0, v1,...,vm,...,vn] and for each vi with m < i <= n, vi is in diff(Srest,Trest)

Case 1 is the same as without rest type.
Case 2 just requires diff(Srest,Trest) to be non-empty.

## Not yet done

### Open records

These are handled in the Castagna paper, so should not be too difficult.

### Optional fields

JSON representation can be `["?" Name T]`.

Internal representation can have parallel array of booleans, saying whether field is required.
Alternatively can change type to be a pair of type and whether required.

These are handled in the Castagna paper, so should not be too difficult.

### Readonly fields

JSON representation can be `["readonly" Name T]`.

Closed records with all readonly fields count as readonly.

We want to be able to share BDDs between RO and RW mappings.

In order to be closed under difference, we probably need to have both mutable fields and readonly fields
(with the default being a union of the two).

Maybe representation is for each field, array of allowed mutable type plus array of allowed readonly type.

### Objects

These are similar to open records including fields of function type, except that fields and methods are distinguishable.

There is some material on Castagna on this, which should cover this.

### Futures

They can be recursive:

```
type F future<F?>;
```

### XML

We have:
* Empty XML sequence
* Singleton. One if
    1. Text item, which is always readonly
    2. Readonly element item
    3. Mutable element item
    4. Readonly processing instruction item
    5. Mutable processing instruction item
    6. Readonly comment item
    7. Mutable comment item
* Concatenation of two or more singletons

Concatenation is mutable iff any of its constituent singletons is mutable.
 
We need to split into readonly/mutable parts.

We need to generalize what we have in the language to be closed under difference.

In JSON syntax:
* `["xml", "element", "text"]` can mean `xml<xml:Element|xml:Text>`.
* `"xml"` can mean `xml`.
* `["xml"]` can mean `xml<never>`

We need to accomodate this sort of thing:

```
xml<xml:Element|(readonly & xml:Comment)>
```

Note that `xml<xml:Element>|xml<xml:Text>` is not the same as `xml<xml:Element|xml:Text>`.

We can, I think, represent an XML subtype with the following:
* a flag saying whether the empty sequence is allowed
* a bit vector with one bit for each of the 7 singleton subtypes, saying whether a singleton of that type is allowed
* a Bdd for the concatenation of two or more items, where the atom is the bit vector for the singleton subtypes

### string:Char

Quite tricky. We need to be closed under difference, e.g. be able to represent `string - string:Char`.

We will no longer be able to represent a string subtype just as a list of strings and a boolean.


