import ballerina/test;
import wso2/nballerina.err;

// import wso2/nballerina.types as t;

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
        typeDesc: { args : [], ret : "()"},
        paramNames: [],
        pos: pos,
        body: [
            {varName: "i", expr: {value: 10}}
        ]
    };
    assertModuleLevelDef(actual, expt);
}

function assertModuleLevelDef(string str, ModuleLevelDef expect) {

    do {
        Tokenizer tok = new (str);
        check tok.advance();
        ModuleLevelDef actual = check parseModuleLevelConstructs(tok);
        assertModuleLevelDefEqual(actual, expect);

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

    test:assertEquals(actual.length(), expect.length(), "function type args size mismatch");
    foreach var i in 0 ..< actual.length() {
        assertTypeDescEqual(actual[i], expect[i]);
    }
}
