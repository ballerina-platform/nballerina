// T11<:T13
// T12<:T13
// T14<:T11
// T14<:T12
// T14<:T13
type T11 function (int) returns int;
type T12 function (int) returns string;
type T13 function (int) returns (int | string);
type T14 T11 & T12;
