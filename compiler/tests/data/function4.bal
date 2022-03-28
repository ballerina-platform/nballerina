// T1<:T2
// T2<:T1
type T1 (function (int) returns int) & (function (int) returns string);
type T2 function (int) returns never;
