// @productions equality if-else-stmt equality-expr return-stmt additive-expr function-call-expr int-literal
import ballerina/io;
public function main() {
    io:println(a(3, 9)); // @output 4093
}
function a(int m, int n) returns int {
    if m == 0 {
        return n+1;
    }
    else if n == 0 {
        return a(m - 1, 1);
    }
    else {
        return a(m - 1, a(m, n - 1));
    }
}
