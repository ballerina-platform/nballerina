type M1 map<int>;

type M2 map<anydata>;

type R1 record {| int a; anydata...; |};

// @type M1 < R2
// @type R2 < M2
// @type R1 < R2
type R2 record {| int a?; anydata...; |};

// @type R2 <> R3
type R3 record {| int? a; anydata...; |};

// @type R4 < R2
type R4 record {| int a?; string b; anydata...; |};

type R5 record {| int a; string b; anydata...; |};

// @type R1 <> R6
// @type R6 < R2
// @type R4 < R6
// @type R5 < R6
// @type R6 < M2
type R6 record {| int a?; string b?; anydata...; |};

// @type R7 < R1
// @type R7 < R2
// @type R4 <> R7
// @type R5 < R7
// @type R7 < R6
// @type R7 < M2
type R7 record {| int a; string b?; anydata...; |};

// @type R2 < R8
type R8 record {| int|string a?; anydata...; |};

// @type R9 <> R2
// @type R1 <> R9
// @type R9 < M2
type R9 record {| int|string a?; string|boolean b?; boolean c?; anydata...; |};

// @type R1 < R10
// @type R2 < R10
type R10 record {| int? a?; anydata...; |};

// @type R1 < R11
// @type R2 < R11
// @type R3 < R11
// @type R4 < R11
// @type R5 < R11
// @type R6 < R11
// @type R7 < R11
// @type R8 < R11
// @type R9 < R11
// @type R10 < R11
// @type M2 = R11
type R11 record {| anydata...; |};
