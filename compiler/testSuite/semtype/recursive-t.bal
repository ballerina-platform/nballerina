type R1 record {| R2 f; |};

type R2 record {| R1 f; |};

// @type R1 <> L
type L string[];

type RL1 [int, RL2];

type RL2 [int, RL1];

// @type R1 <> I
// @type RL1 <> I
type I int;
