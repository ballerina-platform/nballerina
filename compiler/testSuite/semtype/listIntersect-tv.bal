type L1 [int, int];
type L2 [int, int|string];

// @type I1 = L1
type I1 L1 & L2;

type L3 [1|2|3, 1|2|3];
type L4 [2|3|4, 2|3|4];
type L5 [3|4|5, 3|4|5];

type L6 [3, 3];

// @type I2 = L6
type I2 L3 & L4 & L5;

type A1 (int|string)[];
type A2 (int|float)[];

type A3 int[];

// @type I3 = A3
type I3 A1 & A2;

type A4 (1|2|3)[];
type A5 (2|3|4)[];
type A6 (3|4|5)[];

type A7 3[];

// @type I4 = A7
type I4 A4 & A5 & A6;

type L7 [2|3, 2|3];

// @type I5 = L7
// @type I2 < I5
type I5 L3&L4;
