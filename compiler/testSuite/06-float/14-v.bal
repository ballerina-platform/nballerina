// @productions float string string-literal equality multiplicative-expr if-else-stmt equality-expr floating-point-literal boolean-literal return-stmt unary-expr any function-call-expr local-var-decl-stmt int-literal

import ballerina/io;

public function main() {
    float nan0 = 0.0 / 0.0;
    float nan1 = -0.0 / 0.0;
    float pInf = 1.0 / 0.0;
    float nInf = -1.0 / 0.0;

    io:println(eq(42.0, 42.0)); // @output true
    io:println(eq(1.0, 2.0)); // @output false
    io:println(eq(0.0, 0.0)); // @output true
    io:println(eq(0.0, -0.0)); // @output true
    io:println(eq(nan0, nan1)); // @output true
    io:println(eq(nan0, 1.0)); // @output false
    io:println(eq(nan0, nInf)); // @output false
    io:println(eq(pInf, nInf)); // @output false
    io:println(eq(nInf, pInf)); // @output false
    io:println(eq(pInf, pInf)); // @output true
    io:println(eq(nInf, nInf)); // @output true

    io:println(eqAF("not-float", 1.0)); // @output false
    io:println(eqAF(1, 1.0)); // @output false
    io:println(eqFA(0.0, false)); // @output false
    io:println(eqFA(8.0, 8.0)); // @output true
}

function eq(float f1, float f2) returns string {
    string b1 = eqAF(f1, f2);
    string b2 = eqFA(f1, f2);
    if b1 != b2 {
        return "a";
    }
    return b1;
}

function eqAF(any f1, float f2) returns string {
    boolean eq = f1 == f2;
    boolean neEq = f1 != f2;
    if eq == neEq {
        return "b";
    }
    else if eq {
        return "true";
    }
    return "false";
}

function eqFA(float f1, any f2) returns string {
    boolean eq = f1 == f2;
    boolean neEq = f1 != f2;
    if eq == neEq {
        return "c";
    }
    else if eq {
        return "true";
    }
    return "false";
}
