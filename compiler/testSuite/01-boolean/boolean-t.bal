// @type T < TF
// @type TF = B
// @type F < B
// @type INTEGER <> B
// @type BL[ONE] = B
// @type R[key] = INTEGER 
// @type BL[2] = B
type T true;
type F false;
type TF true|false;
type B boolean;
type INTEGER int;
type S string;
type BL boolean[]; 

type R record {|
    int f1;
    boolean f2;
|};

const ONE = 1;
const key = "f1";
