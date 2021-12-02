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
type T table<R> & readonly | table<R1> & readonly;
type W table<R1> & readonly;
type Y table<R1>;
