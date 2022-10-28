// @type L1 = CYCLE
type L1 [int, L1];

// @type L2 <> CYCLE
type L2 [int, L1] | ();
