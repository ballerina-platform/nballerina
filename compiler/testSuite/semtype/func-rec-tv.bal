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

type I function(I...);

// @type I < I0
// @type I < I1
// @type I < I2
// @type I < I3
type I0 function();
type I1 function(I);
type I2 function(I, I);
type I3 function(I, I, I);

// @type A < Aa
// @type A < Ab
// @type X = A
// @type Y = A
// @type Aax <> A
// @type Aay <> A
type A function() returns A;
type X function() returns X;
type Y function() returns A;
type Aa function() returns A|int;
type Ab int|A;

// @type A1 < Aa1
// @type Aax = A1
// @type Aay = A1
// @type A1 < Ab1
type A1 function(int) returns A1;
type Aa1 function(int) returns A1|int;
type Aax function(int) returns Aax;
type Aay function(int) returns A1;
type Ab1 int|A1;
