// type O0 < ObjectTop
// type O1 < ObjectTop
// type O2 < ObjectTop
// type O3 < ObjectTop
// type O4 < ObjectTop
// type O5 < ObjectTop
// type O6 < ObjectTop
// type O7 < ObjectTop
// type O8 < ObjectTop
// type O9 < ObjectTop
type ObjectTop object {};

// @type O0 = O1
// @type O0 = Ox
// @type O2 < O1
type O0 object {
    function fooFn(int a) returns int;
    int foo;
};

type Ox object {
    function fooFn(int b) returns int;
    int foo;
};

type O1 object {
    int foo;
    function fooFn(int a) returns int;
};

type O2 object {
    int foo;
    string bar;
    function fooFn(int a) returns int;
};

// @type O3 <> R
type O3 object {
    int foo;
};

type R record {};

// @type O4 < O5
// @type O4 < O6
type O4 object {
    byte foo;
    function bar(int a) returns int;
};

type O5 object {
    int foo;
    function bar(byte a) returns int;
};

type O6 object {
    byte|string foo;
    function bar(int a) returns int;
};

// @type O7 < O8
// @type O7 < O9
type O7 object {
    O4 o;
};

type O8 object {
    O5 o;
};

type O9 object {
    O6 o;
};
