import ballerina/test;

// XXX move testJsonTypes here
@test:Config {}
function testTypesJson() returns error? {
    check testJsonTypes("tests.json");
}
