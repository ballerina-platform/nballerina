type F int | function(int) returns F;

// @type F0 < F
// @type F1 < F
type F0 function(int) returns int;
type F1 function(int) returns F0;

type G int | function(G) returns int;

// @type G0 < G
// @type G1 <> G
type G0 function(G) returns int;
type G1 function(int) returns int;

// @type GG0 < F
type GG G | string;
type GG0 function(GG) returns int;

type H int | function(H) returns H;

// @type H0 < H
// @type H1 <> H
// @type H2 < H
type H0 function(H) returns int;
type H1 function(int) returns int;
type H2 function(H) returns H;

// @type HH0 < H
type HH H | string;
type HH0 function(HH) returns int;
