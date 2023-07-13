import ballerina/test;

@test:Config { groups: ["longRunning", "private"] }
function testSubtyping() {
    testSemtypePropositions(generator = generateSubtypeProposition);
}

@test:Config { groups: ["longRunning", "private"] }
function testNonEmptyTypes() {
    testSemtypePropositions(generator = generateNonEmptyProposition);
}

@test:Config { groups: ["longRunning", "private"] }
function testReturnTypes() {
    testSemtypePropositions(generator = generateReturnTypePropositions);
}
