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
type T O1 & O2;

type O12 object {
    int foo;
    function bar(int|string a) returns int;
    string baz;
};
