# Implementation Notes

## Functions

We model functions as a having a single argument of tuple type and returning a single value.

## Readonly

We handle readonly by treating each selectively immutable basic type as if it were two basic types: one containing values that are readonly, and one containing values that are mutable.

## Rest type for tuples

Need to modify tuple inhabited

Let S be `[S0, S1,...,Sm, Srest...]` and T be `[T0, T1,,....,Tm,Trest...]`.
For a list lv to be in S but not in T, there are two possibilites

1. lv is [v0, v1,...,vm] and lv is in S but not in T (i.e. Srest and Trest are not relevant)
2. lv is [v0, v1,...,vm,...,vn] and for each vi with m < i <= n, vi is in diff(Srest,Trest)

Case 1 is the same as without rest type.
Case 2 just requires diff(Srest,Trest) to be non-empty.


