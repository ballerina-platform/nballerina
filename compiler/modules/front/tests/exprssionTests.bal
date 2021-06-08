import ballerina/test;

@test:Config {enable: false}
function testExprSimpleConst() {

    assertExpr("()", {value: ()});
    assertExpr("123", {value: 123});
    //assertExpr("\"hello world\"", {value: "hello world"});
    assertExpr("true", {value: true});
    assertExpr("false", {value: false});
}

@test:Config {enable: false}
function testExprUnary() {

    assertExpr("-()", {op: "-", operand: {value: ()}}); // Invalid Sematics
    assertExpr("-2", {value: -2});
}

@test:Config {enable: false}
function testExprBinary() {

    assertExpr("12 + 23", {op: "+", left: {value: 12}, right: {value: 23}});
    assertExpr("12 - 23", {op: "-", left: {value: 12}, right: {value: 23}});
    assertExpr("12 * 23", {op: "*", left: {value: 12}, right: {value: 23}});
    assertExpr("12 / 23", {op: "/", left: {value: 12}, right: {value: 23}});
    assertExpr("12 % 23", {op: "%", left: {value: 12}, right: {value: 23}});
}

@test:Config {enable: false}
function testExprVarRef() {

    assertExpr("x", {varName: "x"});
    assertExpr("x1", {varName: "x1"});
    assertExpr("x1a", {varName: "x1a"});
}

@test:Config {enable: false}
function testExprFunctionCall() {

    assertExpr("x()", {funcName: "x", args: [], pos: {lineNumber: 1, indexInLine: 0}});
    assertExpr("xx(1,2)", {funcName: "xx", args: [{value: 1}, {value: 2}], pos: {lineNumber: 1, indexInLine: 0}});
    assertExpr("xxx(123, 12 + 23)", {funcName: "xxx", args: [{value: 123}, {op: "+", left: {value: 12}, right: {value: 23}}], pos: {lineNumber: 1, indexInLine: 0}});
}

@test:Config {enable: false}
function testExprGroup() {

    assertExpr("(())", {value: ()});
    assertExpr("(123)", {value: 123});
    //assertExpr("(\"hello world\")", {value: "hello world"});
    assertExpr("(true)", {value: true});
    assertExpr("(false)", {value: false});

    assertExpr("(x1a)", {varName: "x1a"});

    assertExpr("(12 + 23)", {op: "+", left: {value: 12}, right: {value: 23}});

    // assertExpr("(-2)", {op: "-", operand: {value: 2}});
    assertExpr("(-2)", {value: -2});

    assertExpr("(x())", {funcName: "x", args: [], pos: {lineNumber: 1, indexInLine: 1}});

}
