type O1 object {
    int|string foo;
    function bar(int a) returns int;
};

type O2 object {
    int|float foo;
    function bar(string a) returns int;
    string baz;
};

// @type T = O12
// @type T < ObjectTop
type T O1 & O2;

type O12 object {
    int foo;
    function bar(int|string a) returns int;
    string baz;
};

type ObjectTop object {};

type O3 object {
    O1 o;
};

type O4 object {
    O2 o;
};

// @type T1 = O34
// @type T1 < ObjectTop
type T1 O3 & O4;
type O34 object {
    O12 o;
};
