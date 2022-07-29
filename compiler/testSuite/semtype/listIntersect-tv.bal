type L1 [int, int];
type L2 [int, int|string];

// @type I1 = L1
type I1 L1 & L2;
