import ballerina/test;

@test:Config
function testFunctionDefToJson() {
    FunctionDef subject = {
        vis: (),
        name: "foo",
        typeDesc: {args: [], ret: "int"},
        paramNames: [],
        pos: {lineNumber: 2, indexInLine: 9},
        body: [
            {td: "int", varName: "i", initExpr: {value: 10}},
            {returnExpr: {varName: "i"}}
        ]
    };
    json actual = functionDefToJson(subject);
    json expected = ["function", "non-public", "foo", [], "int", [
                        ["var-decl", "int", "i", ["const", 10]],
                        ["ret", ["ref", "i"]]
                    ]];
    test:assertEquals(actual.toJsonString(), expected.toJsonString());
}
