type R1 record {|
    int|string l1;
|};

type R2 record {|
    int|float l1;
|};

type R1R2 record {|
    int l1;
|};

// @type T1 = R1R2
type T1 R1 & R2;

type R3 record {|
    int l1;
    float l2;
|};

type R4 record {|
    int l1;
    anydata...;
|};

// @type T2 = R3
type T2 R3 & R4;

type R5 record {|
    int|string l1;
|};

type R6 record {|
    int|boolean l1;
    anydata...;
|};

type R5R6 record {|
    int l1;
|};

// @type T3 = R5R6
type T3 R5 & R6;

type OneTwoThree 1|2|3;
type TwoThreeFour 2|3|4;
type TwoThree 2|3;

type R7 record {|
    OneTwoThree x;
    OneTwoThree y;
|};

type R8 record {|
    TwoThreeFour x;
    TwoThreeFour y;
|};

type R7R8 record {|
    TwoThree x;
    TwoThree y;
|};

// @type T4 = R7R8
type T4 R7 & R8;
