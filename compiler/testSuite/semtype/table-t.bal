type R record {|
    int id;
    string f;
|};

type R1 record {|
    int id;
    string f;
    float d;
|};

type READ readonly;

// @type W < T
// @type W < READ
// @type T < READ
// @type W < Y
// @type Y <> T
// @type Z < Y;
// @type Z <> T;
type T table<R> & readonly | table<R1> & readonly;
type W table<R1> & readonly;
type Y table<R1>;
type Z table<R1> & !readonly;

type X1 record {|
    int id;
    string f;
|};

type X2 record {|
    int id;
    string:Char f;
|};

// @type T2 < T1;
type T1 table<X1>;
type T2 table<X2>;