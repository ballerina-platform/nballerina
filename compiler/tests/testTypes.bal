import ballerina/test;

// XXX move testJsonTypes here
@test:Config {}
function testTypesJson() returns error? {
    check testJsonTypes("tests.json");
}

@test:Config
function testReadonlyTypesJson() returns error? {
    check testJsonTypes("tests-readonly.json");
}

@test:Config {}
function testMutableTypesJson() returns error? {
    check testJsonTypes("tests-mutable.json");
}
