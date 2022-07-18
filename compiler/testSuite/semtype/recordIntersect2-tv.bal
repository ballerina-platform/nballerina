type R1 record {|
    int|string l1;
|};

type T1 int|R1;

type R2 record {|
    int|float l1;
|};

type T2 int|R2;

type R1R2 record {|
    int l1;
|};

type T3 int|R1R2;

// @type I1 = T3
type I1 T1 & T2;

// @type T1_bar = T1;
// @type T2_bar = T2;
// @type T3_bar = T3;
type T1_bar R1|int;
type T2_bar R2|int;
type T3_bar R1R2|int;

// @type I1_bar = T3_bar;
// @type I1_bar = I1;
type I1_bar T1_bar & T2_bar;
