// @productions float string string-literal exact-equality equality multiplicative-expr if-else-stmt equality-expr floating-point-literal return-stmt unary-expr any function-call-expr local-var-decl-stmt int-literal

import ballerina/io;

public function main() {
    float nan0 = 0.0 / 0.0;
    float nan1 = -0.0 / 0.0;
    float pInf = 1.0 / 0.0;
    float nInf = -1.0 / 0.0;

    io:println(exactEq(42.0, 42.0)); // @output true
    io:println(exactEq(1.0, 2.0)); // @output false
    io:println(exactEq(0.0, 0.0)); // @output true
    io:println(exactEq(0.0, -0.0)); // @output false
    io:println(exactEq(nan0, nan1)); // @output true
    io:println(exactEq(nan0, 1.0)); // @output false
    io:println(exactEq(nan0, nInf)); // @output false
    io:println(exactEq(pInf, nInf)); // @output false
    io:println(exactEq(nInf, pInf)); // @output false
    io:println(exactEq(pInf, pInf)); // @output true
    io:println(exactEq(nInf, nInf)); // @output true

    io:println(exactEqAF("not-float", nInf)); // @output false
    io:println(exactEqAF(1, 1.0)); // @output false
    io:println(exactEqFA(1.0, 1)); // @output false
    io:println(exactEqFA(8.0, 8.0)); // @output true
}

function exactEq(float f1, float f2) returns any {
    string b1 = exactEqAF(f1, f2);
    string b2 = exactEqFA(f1, f2);
    string b3 = exactEqAA(f1, f2);
    if b1 != b2 {
        return "a1";
    }
    if b2 != b3 {
        return "a2";
    }
    return b1;
}

function exactEqAF(any f1, float f2) returns string {
    boolean eq = f1 === f2;
    boolean neEq = f1 !== f2;
    if eq == neEq {
        return "b";
    }
    else if eq {
        return "true";
    }
    return "false";
}

function exactEqFA(float f1, any f2) returns string {
    boolean eq = f1 === f2;
    boolean neEq = f1 !== f2;
    if eq == neEq {
        return "c";
    }
    else if eq {
        return "true";
    }
    return "false";
}

function exactEqAA(any f1, any f2) returns string {
    boolean eq = f1 === f2;
    boolean neEq = f1 !== f2;
    if eq == neEq {
        return "d";
    }
    else if eq {
        return "true";
    }
    return "false";
}
