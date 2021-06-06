import ballerina/test;
import wso2/nballerina.err;

type TestableStmt AssignStmt|ReturnStmt|FunctionCallExpr;
type TestableStmtBlock TestableStmt[];

@test:Config
function testStmtBlock() {

    assertTestableStmtBlock("{x1 = 10;}", [{varName: "x1", expr: {value: 10}}]);
    
    err:Position pos = {lineNumber: 3, indexInLine: 0};
    assertTestableStmtBlock("{\n x1 = 10; \nfunc1();\n}", [
        {varName: "x1", expr: {value: 10}},
        {funcName: "func1", pos: pos, args: []}
        ]);
}

@test:Config
function testAssignStmt() {
    assertTestableStmt("x1 = 10;", {varName: "x1", expr: {value: 10}});
    assertTestableStmt("x2 = -10;", {varName: "x2", expr: {value: -10}});
    assertTestableStmt("x3 = true;", {varName: "x3", expr: {value: true}});
    assertTestableStmt("x4 = false;", {varName: "x4", expr: {value: false}});
    assertTestableStmt("x5 = ();", {varName: "x5", expr: {value: ()}});

    assertTestableStmt("a1 = 11 + 22;", 
        {varName: "a1", expr: {op: "+", left: {value: 11}, right: {value: 22}}});
}

@test:Config
function testFunctionCallStmt() {
    err:Position pos = {lineNumber: 1, indexInLine: 0};
    assertTestableStmt("func1();", {funcName: "func1", pos: pos, args: []});
    assertTestableStmt("func1(1);", {funcName: "func1", pos: pos, args: [{value: 1}]});
    assertTestableStmt("func1(1, true);", 
        {funcName: "func1", pos: pos, args: [{value: 1}, {value: true}]});

    assertTestableStmt("func1(1, 11 + 22);", 
        {
        funcName: "func1",
        pos: pos,
        args: 
        [
            {value: 1}, 
            {op: "+", left: {value: 11}, right: {value: 22}}
        ]
    });
}

@test:Config
function testReturnStmt() {
    assertTestableStmt("return;", {returnExpr: {value: ()}});
    assertTestableStmt("return ();", {returnExpr: {value: ()}});
    assertTestableStmt("return 10;", {returnExpr: {value: 10}});
    assertTestableStmt("return -10;", {returnExpr: {value: -10}});
    assertTestableStmt("return true;", {returnExpr: {value: true}});
    assertTestableStmt("return false;", {returnExpr: {value: false}});
}

function assertTestableStmt(string str, TestableStmt expt) {
    do {
        Tokenizer tok = new (str);
        check tok.advance();
        Stmt stmt = check parseStmt(tok);
        TestableStmt res = check stmt.ensureType(TestableStmt);
        test:assertEquals(res, expt);
    } on fail error e {
        test:assertFail("error parsing stmt \"" + str + "\", " + e.toString());
    }
}

function assertTestableStmtBlock(string str, TestableStmt[] expt) {
    do {
        Tokenizer tok = new (str);
        check tok.advance();
        Stmt[] stmts = check parseStmtBlock(tok);
        // TestableStmtBlock res = check stmts.ensureType(TestableStmtBlock); // TODO : Bug.
        test:assertEquals(stmts.length(), expt.length());
        foreach var i in 0..<stmts.length() {
            TestableStmt res = check stmts[i].ensureType(TestableStmt);
            test:assertEquals(res, expt[i]);
        }
    } on fail error e {
        test:assertFail("error parsing block \"" + str + "\", " + e.toString());
    }
}
