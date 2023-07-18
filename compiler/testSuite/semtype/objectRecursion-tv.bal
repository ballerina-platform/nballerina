// @type O1 < O
// @type O3 < O
// @type O2 <> O
type O object {
    O foo;
    function bar(O o);
} | int;

type O1 object {
    int foo;
    function bar(O o);
};

type O2 object {
    int foo;
    function bar(int o);
};

type O3 object {
    int foo;
    function bar(O|string o);
};
