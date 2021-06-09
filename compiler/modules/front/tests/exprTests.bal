import ballerina/test;

@test:Config {}
function testIntLiteral() {
    assertExpr("123", {value: 123});
    assertExpr("0", {value: 0});
}

@test:Config {}
function testUnaryExpr() {
    assertExpr("-2", {op: "-", operand: {value: 2}});
    assertExpr("(-2)", {op: "-", operand: {value: 2}});
}

@test:Config {}
function testMultiplicativeExpr() {
    assertExpr("12 * 23", {op: "*", left: {value: 12}, right: {value: 23}});
    assertExpr("12 / 23", {op: "/", left: {value: 12}, right: {value: 23}});
    assertExpr("12 % 23", {op: "%", left: {value: 12}, right: {value: 23}});
}

@test:Config {}
function testAdditiveExpr() {
    assertExpr("12 + 23", {op: "+", left: {value: 12}, right: {value: 23}});
    assertExpr("12 - 23", {op: "-", left: {value: 12}, right: {value: 23}});
}

@test:Config {}
function testVarRefExpr() {
    assertExpr("x", {varName: "x"});
    assertExpr("x1", {varName: "x1"});
    assertExpr("x1a", {varName: "x1a"});
}

@test:Config {}
function testFunctionCallExpr() {

    assertExpr("x()", {funcName: "x", args: [], pos: {lineNumber: 1, indexInLine: 0}});
    assertExpr("xx(1,2)", {funcName: "xx", args: [{value: 1}, {value: 2}], pos: {lineNumber: 1, indexInLine: 0}});
    assertExpr("xxx(123, 12 + 23)", {funcName: "xxx", args: [{value: 123}, {op: "+", left: {value: 12}, right: {value: 23}}], pos: {lineNumber: 1, indexInLine: 0}});
}

@test:Config {}
function testGroupExpr() {
    assertExpr("(123)", {value: 123});
    //assertExpr("(\"hello world\")", {value: "hello world"});
  
    assertExpr("(x1a)", {varName: "x1a"});

    assertExpr("(12 + 23)", {op: "+", left: {value: 12}, right: {value: 23}});

    // assertExpr("(-2)", {op: "-", operand: {value: 2}});

    assertExpr("(x())", {funcName: "x", args: [], pos: {lineNumber: 1, indexInLine: 1}});

}

@test:Config {enable: false}
function testNilConst() {
    assertExpr("()", {value: ()});
    assertExpr("-()", {op: "-", operand: {value: ()}}); // Invalid Semnatics
    assertExpr("(())", {value: ()});
}

@test:Config {enable: false}
function testBooleanConst() {
    assertExpr("(true)", {value: true});
    assertExpr("(false)", {value: false});
    assertExpr("true", {value: true});
    assertExpr("false", {value: false});
}

@test:Config {enable: false}
function testStringLiteral() {
    //assertExpr("\"hello world\"", {value: "hello world"});

}
