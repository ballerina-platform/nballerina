type O1 object {
    int|string foo;
    function bar(1|2 a) returns int;
};

type O2 object {
    int|float foo;
    function bar(2|3 a) returns string;
};

// @type T < O12
type T O1 | O2;

type O12 object {
    int|float|string foo;
    function bar(2 a) returns string|int;
};
