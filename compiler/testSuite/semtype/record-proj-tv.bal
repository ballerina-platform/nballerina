type A record {|
    int x;
    string y;
|};

// @type B[XorY] = IorS
// @type B[other] = NEVER
type B record {|
    string x;
    int y;
|};

// @type C[other] = BOOLEAN
// @type C[XorY] = IorS
// @type C[XorYorOther] = IorSOrB
type C record {|
    string x;
    int y;
    float z;
    boolean...;
|};

type IorS int|string;
type IorSOrB IorS|boolean;

const x = "x";
type XorY "x"|"y";
const other = "other";
type NEVER never;
type BOOLEAN boolean;
type XorYorOther XorY|other;

// @type AorB[x] = IorS
// @type AorB[XorY] = IorS
type AorB A|B;
