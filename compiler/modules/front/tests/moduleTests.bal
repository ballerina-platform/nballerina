import ballerina/test;
import wso2/nballerina.err;

@test:Config
function testFunction1() {

    string actual = string `
function foo( ) {
    i = 10;
}
    `;

    err:Position pos = {lineNumber: 2, indexInLine: 9};
    FunctionDef expt = {
        name: "foo",
        typeDesc: {args: [], ret: "()"},
        paramNames: [],
        pos: pos,
        body: [
            {varName: "i", expr: {value: 10}}
        ]
    };
    assertModuleLevelDef(actual, expt);
}

@test:Config
function testFunction2() {

    string actual = string `
function foo(int i, boolean b) returns int{
    i = 10;
    return i;
}
    `;

    err:Position pos = {lineNumber: 2, indexInLine: 9};
    FunctionDef expt = {
        name: "foo",
        typeDesc: {args: ["int", "boolean"], ret: "int"},
        paramNames: ["i", "b"],
        pos: pos,
        body: [
            {varName: "i", expr: {value: 10}}, 
            {returnExpr: {varName: "i"}}
        ]
    };
    assertModuleLevelDef(actual, expt);
}

@test:Config {enable: false}
function testModule1() {

    string source1 = string `
function foo(boolean b) returns int{
    return 10;
}

function bar(int i, boolean b) returns boolean{
    return true;
}
    `;

    err:Position fooPos = {lineNumber: 2, indexInLine: 9};
    FunctionDef foo = {
        name: "foo",
        typeDesc: {args: ["boolean"], ret: "int"},
        paramNames: ["b"],
        pos: fooPos,
        body: [
            {returnExpr: {value: 10}}
        ]
    };

    err:Position barPos = {lineNumber: 6, indexInLine: 9};
    FunctionDef bar = {
        name: "bar",
        typeDesc: {args: ["int", "boolean"], ret: "boolean"},
        paramNames: ["i", "b"],
        pos: barPos,
        body: [
            {returnExpr: {value: true}}
        ]
    };
    assertSource(source1, [foo, bar]);

}
