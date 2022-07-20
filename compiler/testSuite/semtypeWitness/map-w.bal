type M1 map<float>;

// @type M1 < M2 | { ...: 2.5f }
// @type M2 < M1 | { ...: "non empty string" }
type M2 map<string>;

// @type R1 < R2 | { f: { ...: 2.5f } }
type R1 record {| M1 f; |};

// @type R2 < R1 | { f: { ...: "non empty string" } }
type R2 record {| M2 f; |};
