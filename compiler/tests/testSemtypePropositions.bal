import ballerina/test;

configurable boolean enablePrivateTests = false;
@test:Config {
    groups: ["longRunning", "private"],
    enable: enablePrivateTests
}
function testSubtyping() {
    testSemtypePropositions(generator = generateSubtypeProposition);
}

@test:Config {
    groups: ["longRunning", "random"],
    enable: enablePrivateTests
}
function testNonEmptyTypes() {
    testSemtypePropositions(generator = generateNonEmptyProposition);
}
