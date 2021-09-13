// @productions float module-const-decl equality multiplicative-expr if-else-stmt equality-expr floating-point-literal relational-expr return-stmt unary-expr additive-expr any function-call-expr local-var-decl-stmt
import ballerina/io;

const A = 0.0 / 0.0;
const B = -0.0 / 0.0;
const C = 1.0 / 0.0;
const D = -1.0 / 0.0;
const E = -0.0;
const F = 0.0;
const G = 1.5 * 0f;
const H = 1.5 <= 2.5;
const I = 1.5 >= 2.5;
const J = -0.0 + 0f;

public function main() {
    io:println(eq(A, B)); // @output true
    io:println(eq(C, D)); // @output false
    io:println(eq(E, F)); // @output true
    io:println(eq(A, C)); // @output false
    io:println(eq(B, D)); // @output false
    io:println(G); // @output 0.0
    io:println(H); // @output true
    io:println(I); // @output false
    io:println(J); // @output 0.0
 }

function eq(float f1, float f2) returns any {
    boolean eq = f1 == f2;
    boolean neEq = f1 != f2;
    if eq == neEq {
        return ();
    }
    return eq;
}