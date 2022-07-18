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

type ThreeFourFive 3|4|5;

type R9 record {|
    OneTwoThree l1;
|};

type R10 record {|
    TwoThreeFour l1;
|};

type R11 record {|
    ThreeFourFive l1;
|};

type R9R10R11 record {|
    3 l1;
|};

// @type T5 = R9R10R11
type T5 R9 & R10 & R11;

type R12 record {|
    OneTwoThree l1;
    anydata...;
|};

type R13 record {|
    TwoThreeFour l1;
    anydata...;
|};

type R14 record {|
    ThreeFourFive l1;
    anydata...;
|};

type R12R13R14 record {|
    3 l1;
    anydata...;
|};

// @type T6 = R12R13R14
type T6 R12 & R13 & R14;

type R15 record {|
    int l1;
    (float|string)...;
|};

type R16 record {|
    int l1;
    (float|int)...;
|};

type R15R16 record {|
    int l1;
    float...;
|};

// @type T7 = R15R16
type T7 R15 & R16;

type R17 record {|
    int l1;
    (float|string)...;
|};

type R18 record {|
    string|int l1;
    (float|int)...;
|};

type R17R18 record {|
    int l1;
    float...;
|};

// @type T8 = R17R18
type T8 R17 & R18;
