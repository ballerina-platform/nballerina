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

// @type BL[1] = B
// @type BL[2] = B
type BL boolean[]; 

// @type R["f1"] = INTEGER 
// @type R["f2"] = B 
type R record {|
    int f1;
    boolean f2;
|};

