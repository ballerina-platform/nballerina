import ballerina/io;

type R record {|
    any a;
|};

function bar(any a) returns any {
    return a;
}

public function main() {
    any a1 = 1d;
    io:println(a1); // @output 1
    any a2 = 1e6144d;
    // Even if the maximum adjusted exponent of decQuad is 6144,
    // (exponent is adjusted to represent the value in scientific notation)
    // since coefficient should be a positive integer or zero,
    // exponent should not be greater than 6111(=6144-(34-1)).
    // In this particular case, unadjusted exponent is 6144
    // which is greater than 6111. In order to bring unadjusted exponent into
    // 6111, 1 should be stored as 1000000000000000000000000000000000.
    // Now 1E6144 is stored as 1000000000000000000000000000000000E6111
    // Because of this change, the output contains 33 trailing zeros
    // Another example, 1E6113 -> 1.00E+6113
    // adjusted to get wasm test passing
    io:println(a2); // @output 1E+6144
    io:println(bar(1.2e3d)); // @output 1.2E+3

    R r = { a: 2.345e32d };
    io:println(r.a); // @output 2.345E+32

    any[] arr = [12d, 1.2e2d, 1.21e3d];
    io:println(arr[0]); // @output 12
    io:println(arr[1]); // @output 1.2E+2
    io:println(arr[2]); // @output 1.21E+3

    any[][] arr1 = [[1.1d, 2.1e2d], [4.2e3d, 3e2d]];
    any[] arr2 = arr1[0];
    io:println(arr2[0]); // @output 1.1
    io:println(arr2[1]); // @output 2.1E+2

    io:println(arr1[1]); // @output [4.2E+3,3E+2]

    map<any> m1 = { "x1": 1.2d, "x2": 1.2e2d };
    io:println(m1["x1"]); // @output 1.2
    io:println(m1["x2"]); // @output 1.2E+2

    map<any[]> m2 = { "x1": [1d, 2d] };
    any[] x = <any[]>m2["x1"];
    io:println(x[0]); // @output 1
}
