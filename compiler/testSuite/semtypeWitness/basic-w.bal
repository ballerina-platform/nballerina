type I int;

type M1 map<float>;

type M map<string>;

type R1 record {| R2 f; |};

type R2 record {| R1 f; |};


type L1 [int, int, int, int, int, (int|string)...];
// @type R1 < L2 | 0
type L2 string[]|float[]|int[];
