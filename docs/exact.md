# Exactness tracking

This is issue [#204](https://github.com/ballerina-platform/nballerina/issues/204).

Exactness tracking is an optimization that applies to tagged pointers with a uniform type of read-write list or read-write mapping, which we will call the _potentially exact_ uniform types.

Exactness tracking maintains a bit in tagged pointers of these uniform types, called the _exact bit_. (This is the bit #2, starting with 0 as the least significant.) We say that a tagged pointer is exact if its exact bit is set. The goal of exactness tracking is to guarantee that whenever a get or set operation is performed on an exact tagged pointer, the compile-time type is equal to the inherent type. The compile-time type is the type of the register in the instruction in the intermediate representation (BIR).

This enables two important optimizations.

First, when a a member of a structure s is set to a value v, and the tagged pointer for s is exact, then it is not necessary to check that the v has the type required by the inherent type. The check performed at compile-time will be sufficient to guarantee this.

Second, it allows us to optimize the case when we have multiple representations of a uniform type, with the representation chosen based on the inherent type. We can optimize by having fast and slow execution paths: the fast execution path is applied when the exact bit is set and can be optimized knowing what representation is used; the slow execution path is used otherwise and would typically use a function pointer in the structure's descriptor. For example, suppose we want to have three different representations for lists:

1. as an array of i8, used when the inherent type is a subtype of byte[]
2. as an array of i64, used when the inherent type is a subtype of int[] but not of byte[]
3. as an array of tagged pointers

Then suppose we have an expression `v[i]` where the type of `v` is `int[]`.  We can compile this into code that checks the exact bit, and if it is set, performs the access knowing that representation 2 is being used, and otherwise uses a `get` function pointer accessed via the list's descriptor. When there are only 3 representations, this could be done easily without exact tracking. But with exact tracking we can efficiently have many optimized representations, for example a representation for every tuple type (and every record type): if we have a type `[int,int]` we can represent it as an LLVM `{i64*, i64, i64}`, where the initial `i64*` points to a list descriptor. 

We define a type S to be _equivalent within_ X to type T, if T & X is equivalent to S & X.  We write this S =<sub>X</sub> T. If v is a mutable structure, then we write I(v) to mean the inherent type of v, and U(v) to mean the uniform type of V.

Exactness tracking maintains the following invariants:

- when a BIR register with type T contains an exact tagged pointer referring to a value v, then T =<sub>U(v)</sub> I(v)
- when a structure with inherent type S has a member with key k that is an exact tagged pointer referring to a value v, then the type S[k] =<sub>U(v)</sub> I(v), where S[k] means the type that S requires for a member with key k

Exactness tracking works by

- setting the exact bit when the structure is created
- clearing the exact bit whenever a BIR instruction might cause the invariants not to hold;
- when a type test is performed, setting the exact bit if the narrowed type is now exact

Most cases where the exact bit needs clearing involve a type widening and are straightforward.  For example, if an assignment instruction has a source type of `byte[]` and a result type of `int[]`, then it needs to clear the exact bit.

It is a little more subtle with instructions that do a get or set on a list or mapping.

## Structure get/set

Consider a list/mapping get instruction:

```
r3 = r1[r2];
```

or a list/mapping set instruction

```
r1[r2] = r3
```

Clearing the exact bit here happens for the get before storing the tagged pointer in r3, and for the set before the value of r3 is stored.
For both get and set, there are two cases when the exact bit needs to be cleared:

- if the tagged pointer for r1 is not exact, and
- if the type of r2 is not an _exact key type_ for the type of r1

When S is a structure type and K is a key type for that structure type, define `S[K]` to be the projection of S for K i.e. the type of an expression `s[k]` when s has type S and k has type K.

Let E be the union of all the potentially exact uniform types. A key type K is an _exact key type_ for a structure type S iff

- S & E is an atomic type A (note the effect of this is ignoring the readonly uniform types), and
- for every value k in K, if A allows k as a key, then A[k] =<sub>E</sub> A[K] and
- (S & readonly)[K] is a subtype of A[K]

Why is clearing the exact bit in these two cases sufficient to maintain the invariants?

Consider first the get case.

Let C1, C2, C3 be the types of r1, r2 and r3 registers respectively. Let p1 be the tagged pointer stored in r1 and let p3 be the tagged pointer that will be stored in r3. Let R1 and R3 be the inherent (runtime) types of the structures referenced by p1 and p3. Let U1 and U3 be the uniform types of p1 and p3. Let v2 be the value stored in r2.

We have to prove that if

- p1 is exact,
- p3 is exact, and
- C2 is an exact key type for C1

then

   C3 =<sub>U3</sub> R3

Let A1 be the intersection of C1 and U1. p1 being exact implies that

(1)  A1 = R1

This together with the exactness of the key type imply that

(2)  A1[C2] =<sub>E</sub> R1[v2]

The exactness of the key type (third bullet) also implies that

(3) C1[C2] = A1[C2]

p3 being exact implies that

(4)  R1[v2] =<sub>U3</sub> R3

The typing rules of BIR say that

(5)  C3 = C1[C2]

Together (2), (3), (4), and (5) imply

(6) C3 = C1[C2] = A1[C2] =<sub>E</sub> R1[v2] =<sub>U3</sub> R3

This implies that

(7)  C3 =<sub>E & U3</sub> R3

But U3 is a subtype of E, which implies that

(8) C3 =<sub>U3</sub> R3

as required.

TBD Set case: I think it's very similar, but need to work it through.

## Readonly

In the future, we will want to extend this to work with readonly mappings and readonly lists.

First, we will need to say that if exactness implies that if the static type allows mutability, then the value is mutable. So if an exact tagged pointer has a static type of `int[]`, then the value must be a mutable list not a readonly list.  If the value is a readonly list, then the static type would need to be readonly for the tagged pointer to be exact.

Second, readonly values don't have an inherent type. So we will need to define something for readonly values that can be used instead.


