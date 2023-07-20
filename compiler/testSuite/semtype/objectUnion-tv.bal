type O1 object {
    int|string foo;
    function bar(1|2 a) returns int;
};

type O2 object {
    int|float foo;
    function bar(2|3 a) returns string;
};

// @type T < ObjectTop
// @type T < O12
type T O1 | O2;

type O12 object {
    int|float|string foo;
    function bar(2 a) returns string|int;
};

type ObjectTop object { };

type O3 object {
    O1 o;
};

type O4 object {
    O2 o;
};

// @type T1 < ObjectTop
// @type T1 < O34
type T1 O3 | O4;

type O34 object {
    O12 o;
};
