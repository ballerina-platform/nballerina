type A1 readonly & record {|
    string id;
|};

// @type A1 = A2
type A2 record {|
    readonly string id;
|};

type B1 readonly & record {|
    int id;
    string name;
    boolean married;
|};

// @type B1 = B2
// @type B2 <> A1
// @type B2 <> A2
type B2 record {|
    readonly int id;
    readonly string name;
    readonly boolean married;
|};

// @type B1 < C1
// @type B2 < C1
type C1 record {|
    readonly int id;
    string name;
    readonly boolean married;
|};

// @type C1 < C2
type C2 record {|
    int id;
    string name;
    boolean married;
|};

// @type D1 = B1
// @type D1 = B2
// @type D1 < C1
// @type D1 < C2
type D1 readonly & record {|
    readonly int id;
    readonly string name;
    readonly boolean married;
|};

// @type B1 < E1
// @type B2 < E1
// @type E1 <> C1
// @type E1 <> C2
type E1 record {|
    readonly int id;
    readonly string name;
    readonly boolean married;
    string...;
|};

// @type E2 < E1
// @type B1 < E2
// @type B2 < E2
type E2 readonly & record {|
    int id;
    string name;
    boolean married;
    string...;
|};

// @type B1 < F1
// @type B2 < F1
// @type C1 < F1
// @type C2 <> F1
// @type D1 < F1
// @type E1 < F1
// @type E2 < F1
type F1 record {|
    readonly int id;
    string name;
    boolean married;
    string...;
|};
