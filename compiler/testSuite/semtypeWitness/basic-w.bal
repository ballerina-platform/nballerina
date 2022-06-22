type I int;

type M1 map<float>;

type M map<string>;

type R1 record {| M1 f; |};

// @type R1 < R2  | 0
type R2 record {| M f; |};

