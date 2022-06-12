import ballerina/test;

@test:Config { groups: ["longRunning"] }
function testSubtyping() {
    testSemtypePropositions(generator = generateSubtypeProposition);
}

@test:Config { groups: ["longRunning"] }
function testNonEmptyTypes() {
    testSemtypePropositions(generator = generateNonEmptyProposition);
}
