type I record {|
    int x;
|};

type S record {|
    string x;
|};

type IS record {|
    int|string x;
|};

// @type IorS < IS
type IorS I|S;

type NN record {|
    int x;
    int y;
|};

type SS record {|
    string x;
    string y;
|};

type NS record {|
    int x;
    string y;
|};

type SN record {|
    string x;
    int y;
|};

type UU record {|
    int|string x;
    int|string y;
|};

// @type U < UU
type U NN|SS|NS|SN;
