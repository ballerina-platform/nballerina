type L1 [int, int];
type L2 [int, int|string];
type L3 [int, int|string, string];

// @type I1 = L1
// @type I2 = L1
// @type I3 = L1
type I1 L1 & L2;
type I2 L1 & L3;
type I3 L1 & L2 & L3;
