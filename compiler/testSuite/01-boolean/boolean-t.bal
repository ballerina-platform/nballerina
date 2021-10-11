// @type T < TF
// @type F < B
type T true;
type F false;

// @type TF = B
type TF true|false;

// @type INTEGER <> B
type B boolean;
type INTEGER int;
type S string;

// @type BL[ONE] = B
// @type BL[2] = B
type BL boolean[]; 
type test "ttt";

// @type R[key] = INTEGER 
type R record {|
    int f1;
    boolean f2;
|};

const ONE = 1;
const key = "f1";
