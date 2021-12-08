import ballerina/io;

public function main() {
    io:println(1 < ()); // @output false
    io:println(() < ()); // @output false
    io:println(() <= ()); // @output true

    int[]? a = [1];
    io:println(a < ()); // @output false
    io:println(() < a); // @output false

    int[]?[] b = [[1]];
    io:println(b < ()); // @output false
    io:println(() < b); // @output false

    int[]?[] c = [()];
    io:println(b < c); // @output false

    int?[] d = [1];
    io:println(d < ()); // @output false

    int?[] e = [()];
    io:println(d < e); // @output false
    io:println(e < d); // @output false

    int[] f = [1, 2, 3];
    ()[] g = [(), (), ()];
    io:println(f < g); // @output false
    io:println(g < f); // @output false

    int?[] h = [1, 2, 3];
    ()[] i = [(), (), (), ()];
    io:println(h > i); // @output false
    io:println(i > h); // @output false

    io:println(g < i); // @output true
    io:println(i < g); // @output false

    ()[][] j = [[()], [(), ()]];
    ()[][] k = [[()], [(), (), ()]];
    io:println(j < k); // @output true
    io:println(k < j); // @output false
}
