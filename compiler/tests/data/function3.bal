// T09<:T10
// T09<:T11
// T09<:T16
// T16<:T09
// T16<:T10
// T16<:T11
type T09 function (int|string) returns int;
type T10 function (string) returns int;
type T11 function (int) returns int;
type T16 T10 & T11;
