type I int;

type M1 map<float>;

type M map<string>;

type R1 record {| M1 f; |};

type R2 record {| M f; |};


type L1 [int, int, int, int, int, (int|string)...];
// @type L1 < L2 | 0
type L2 string[]|float[];
