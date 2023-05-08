import ballerina/test;

@test:Config { groups: ["longRunning", "random"] }
function testSubtyping() {
    testSemtypePropositions(generator = generateSubtypeProposition);
}

@test:Config { groups: ["longRunning", "random"] }
function testNonEmptyTypes() {
    testSemtypePropositions(generator = generateNonEmptyProposition);
}
