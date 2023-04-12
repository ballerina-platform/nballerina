// @case
type F1 function (int) | int;
type F2 int | function (int) | int;
type F3 function (int) returns int | int;
type F4 function (int, int) returns int | int;
type F5 int | function (int) returns int | int;
type F6 function (int) returns int | function (int, int) returns int | int;
type G1 function (int) & function (int, int);
type G2 function (int, int) & function (int) & int;
type G3 function (int) returns int & int;
type G4 function (int, int) returns int & int;
type G5 int & function (int) returns int & int;
type G6 function (int) returns int & function (int, int) returns int | int;
// @end
