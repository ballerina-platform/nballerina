import ballerina/test;

import wso2/nballerina.bir;

@test:Config{}
function manglingTest() {
    testMangle("ballerina", ["io"], "println", "_Bb02ioprintln");
    testMangle("ballerinax", ["choreo"], "hello", "_Bb1x6choreohello");
    testMangle("ballerina", ["lang", "value"], "toString", "_Bb0m4lang5valuetoString");
    testMangle("wso2", ["nballerina", "front", "syntax"], "parse", "_B4wso2m10nballerinam5front6syntaxparse");
    testMangle("", ["foo_bar", "baz"], "hello", "_B0m7foo_bar3bazhello");
}

function testMangle(string org, readonly & [string, string...] names, string local, string expected) {
    bir:ModuleId modId = { org, names };
    test:assertEquals(manglePublicSymbol(modId, local), expected);
}
