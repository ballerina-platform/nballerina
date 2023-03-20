// @type R11 < R12
type R11 record {| int a; |};

type R12 record {| int a; anydata...; |};

// @type R11 < R21
// @type R21 < R22
type R21 record {| int a?; |};

// @type R11 < R22
// @type R12 < R22
type R22 record {| int a?; anydata...; |};

// @type R11 < R31
// @type R31 < R32
type R31 record {| int? a; |};

// @type R11 < R32
// @type R12 < R32
type R32 record {| int? a; anydata...; |};

// @type R41 < R22
// @type R41 < R42
type R41 record {| int a?; string b; |};

// @type R42 < R22
type R42 record {| int a?; string b; anydata...; |};

// @type R51 < R12
// @type R51 < R22
// @type R51 < R32
// @type R51 < R41
// @type R51 < R42
// @type R51 < R52
type R51 record {| int a; string b; |};

// @type R52 < R12
// @type R52 < R22
// @type R52 < R32
// @type R52 < R42
type R52 record {| int a; string b; anydata...; |};

// @type R11 < R61
// @type R21 < R61
// @type R61 < R22
// @type R41 < R61
// @type R51 < R61
// @type R61 < R62
type R61 record {| int a?; string b?; |};

// @type R11 < R62
// @type R21 < R62
// @type R41 < R62
// @type R42 < R62
// @type R51 < R62
// @type R52 < R62
// @type R62 < R22
type R62 record {| int a?; string b?; anydata...; |};

// @type R11 < R71
// @type R71 < R12
// @type R71 < R22
// @type R71 < R32
// @type R71 < R61
// @type R71 < R62
// @type R51 < R71
// @type R71 < R72
type R71 record {| int a; string b?; |};

// @type R11 < R72
// @type R72 < R12
// @type R72 < R22
// @type R72 < R32
// @type R51 < R72
// @type R52 < R72
// @type R72 < R62
type R72 record {| int a; string b?; anydata...; |};

// @type R11 < R81
// @type R21 < R81
// @type R81 < R82
type R81 record {| int|string a?; |};

// @type R11 < R82
// @type R12 < R82
// @type R21 < R82
// @type R22 < R82
// @type R42 < R82
// @type R41 < R82
// @type R51 < R82
// @type R52 < R82
// @type R61 < R82
// @type R62 < R82
// @type R71 < R82
// @type R72 < R82
type R82 record {| int|string a?; anydata...; |};

// @type R11 < R91
// @type R21 < R91
// @type R41 < R91
// @type R51 < R91
// @type R61 < R91
// @type R71 < R91
// @type R81 < R91
// @type R91 < R82
// @type R91 < R92
type R91 record {| int|string a?; string|boolean b?; boolean c?; |};

// @type R11 < R92
// @type R21 < R92
// @type R41 < R92
// @type R51 < R92
// @type R61 < R92
// @type R71 < R92
// @type R81 < R92
// @type R92 < R82
type R92 record {| int|string a?; string|boolean b?; boolean c?; anydata...; |};

// @type R11 < R101
// @type R21 < R101
// @type R31 < R101
// @type R101 < R102
type R101 record {| int? a?; |};

// @type R11 < R102
// @type R12 < R102
// @type R21 < R102
// @type R22 < R102
// @type R31 < R102
// @type R41 < R102
// @type R42 < R102
// @type R51 < R102
// @type R52 < R102
// @type R61 < R102
// @type R62 < R102
// @type R71 < R102
// @type R72 < R102
type R102 record {| int? a?; anydata...; |};

// @type R111 < R21
// @type R111 < R22
// @type R111 < R61
// @type R111 < R62
// @type R111 < R81
// @type R111 < R82
// @type R111 < R91
// @type R111 < R92
// @type R111 < R101
// @type R111 < R102
// @type R111 < R112
type R111 record {| |};

// @type R11 < R112
// @type R12 < R112
// @type R21 < R112
// @type R22 < R112
// @type R31 < R112
// @type R32 < R112
// @type R41 < R112
// @type R42 < R112
// @type R51 < R112
// @type R52 < R112
// @type R61 < R112
// @type R62 < R112
// @type R71 < R112
// @type R72 < R112
// @type R81 < R112
// @type R82 < R112
// @type R91 < R112
// @type R92 < R112
// @type R101 < R112
// @type R102 < R112
type R112 record {| anydata...; |};
