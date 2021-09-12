
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
    
    io:println(100.0 === 10e1); // @output true
    io:println(0.0 === 0.0); // @output true
    io:println(0.0 === -0.0); // @output false
    io:println(0.0 !== -0.0); // @output true
    io:println(nan0 === nan1); // @output true
    io:println(nan0 !== nan1); // @output false
    io:println(pInf !== nInf); // @output true
}

function exactEq(float f1, float f2) returns any {
    boolean eq = f1 === f2;
    boolean neEq = f1 !== f2;
    if eq == neEq {
        return ();
    }
    return eq;
}
