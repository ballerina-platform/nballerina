type B boolean;

// @type TF = B
type TF true|false;

// @type T < TF
type T true;

// @type F < B
type F false;

// @type INTEGER <> B
type INTEGER int;

type S string;
type I int;

// @type BL[1] = B
// @type BL[2] = B
// @type BL[I] = B
type BL boolean[]; 

// @type M["k"] = B
// @type M[S] = B
type M map<boolean>;

// @type R["f1"] = INTEGER 
// @type R["f2"] = B 
type R record {|
    int f1;
    boolean f2;
|};

