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

### Open records

These work quite similarly to rest type for tuples, except that keys are strings rather than integers.

### Errors

`error<T>` and `error<readonly & T>` are equivalent, since the detail record is copied with `cloneReadOnly`.

We can represent the subtype of error as single Bdd, in the same way as a subtype of readonly mapping.

## Not yet done

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

These are similar to open records including fields of function type; fields and methods are in the same space but distinguishable

There is some material in the Castagna paper on this, which should cover this.

### Distinct

We can turn

```
type D1 distinct object {};
type D2 distinct object {
    *D1;
}
```

into

```
type D1 distinct object {};
type D2 D1 & distinct object { }
```

(just as is done with errors). So the JSON representation does not need to represent type inclusion (*T).

During parse, we can generate an integer representing the distinct id for each occurrence of `distinct` by using `===` on the JSON representation.

In the subtype representation for object and error as a Bdd, represent a `distinct` id *d* by an atom -*d* - 1. Suppose we want to check that D2 is a subtype of D1 in the above example. This means checking that the D2 & not(D1) is empty. Let the distinct id for D1 and D2 be I1 and I2. Then the type for D2 is going to have I1 & I2, and the type for D2 will have I1. So the type D2 & not(D1), will have I1 & I2 & not(I1). This is empty because it has both I1 and not(I1). The Bdd construction code recognizes when you have both an atom and its negation on a path, and eliminates this conjunction. So (I think) all we have to do is ignore atoms that are integers \< 0 when accumulating conjunctions.

### Futures

They can be recursive:

```
type F future<F?>;
```
### Streams

Can be recursive:

```
type S stream<S?>;
```

### XML

We have:
* Empty XML sequence
* Singleton. One of
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


