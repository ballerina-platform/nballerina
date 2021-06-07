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

@test:Config
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

function assertSource(string src, ModuleLevelDef[] expt) {

    do {
        ModuleLevelDef[] actual = check parseSourcePart(src);
        assertModuleLevelDefListEqual(actual, expt);
    } on fail error e {
        test:assertFail("error parsing source \"" + src + "\", " + e.toString());
    }
}

function assertModuleLevelDef(string str, ModuleLevelDef expect) {

    do {
        Tokenizer tok = new (str);
        check tok.advance();
        ModuleLevelDef actual = check parseModuleLevelConstructs(tok);
        assertModuleLevelDefEqual(actual, expect);
        test:assertEquals(tok.current(), (), "Unexpected token" + tok.current().toString());
    } on fail error e {
        test:assertFail("error parsing statement \"" + str + "\", " + e.toString());
    }
}

function assertModuleLevelDefEqual(ModuleLevelDef actual, ModuleLevelDef expect) {

    if actual is FunctionDef && expect is FunctionDef {
        test:assertEquals(actual.pos, expect.pos);
        test:assertEquals(actual.name, expect.name);
        test:assertEquals(actual.paramNames, expect.paramNames);
        assertStmtListEqual(actual.body, expect.body);
        assertTypeDescEqual(actual.typeDesc, expect.typeDesc);
        return;
    }
    test:assertFail("Incompatible ModuleLevelDef");
}

function assertModuleLevelDefListEqual(ModuleLevelDef[] actual, ModuleLevelDef[] expect) {

    test:assertEquals(actual.length(), expect.length(), "ModuleLevelDef list size mismatch");
    foreach var i in 0 ..< actual.length() {
        assertModuleLevelDefEqual(actual[i], expect[i]);
    }
}

function assertTypeDescEqual(TypeDesc actual, TypeDesc expect) {

    if actual is LeafTypeDesc && expect is LeafTypeDesc {
        test:assertEquals(actual, expect);
        return;
    }

    if actual is FunctionTypeDesc && expect is FunctionTypeDesc {
        assertTypeDescListEqual(actual.args, expect.args);
        assertTypeDescEqual(actual.ret, expect.ret);
        // TODO : Handle t:FunctionDefinition
        return;
    }

    test:assertFail("Not supported test TypeDef equal " + actual.toString());
}

function assertTypeDescListEqual(TypeDesc[] actual, TypeDesc[] expect) {

    test:assertEquals(actual.length(), expect.length(), "typedesc list size mismatch");
    foreach var i in 0 ..< actual.length() {
        assertTypeDescEqual(actual[i], expect[i]);
    }
}
