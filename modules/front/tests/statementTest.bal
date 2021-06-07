import ballerina/test;
import wso2/nballerina.err;
import wso2/nballerina.types as t;

type AnydataStmt AssignStmt|ReturnStmt|FunctionCallExpr|BreakStmt|ContinueStmt;

@test:Config
function testStmtVarDecl() {

    assertStmt("int i = 10;", {td: "int", varName: "i", initExpr: {value: 10}, semType: t:INT});
    assertStmt("boolean bb = false;", {td: "boolean", varName: "bb", initExpr: {value: false}, semType: t:BOOLEAN});
}

@test:Config
function testStmtAssign() {

    assertStmt("x1 = 10;", {varName: "x1", expr: {value: 10}});
    assertStmt("x2 = -10;", {varName: "x2", expr: {value: -10}});
    assertStmt("x3 = true;", {varName: "x3", expr: {value: true}});
    assertStmt("x4 = false;", {varName: "x4", expr: {value: false}});
    assertStmt("x5 = ();", {varName: "x5", expr: {value: ()}});

    assertStmt("a1 = 11 + 22;", 
        {varName: "a1", expr: {op: "+", left: {value: 11}, right: {value: 22}}});
}

@test:Config
function testStmtFunctionCall() {

    err:Position pos = {lineNumber: 1, indexInLine: 0};
    assertStmt("func1();", {funcName: "func1", pos: pos, args: []});
    assertStmt("func1(1);", {funcName: "func1", pos: pos, args: [{value: 1}]});
    assertStmt("func1(1, true);", 
        {funcName: "func1", pos: pos, args: [{value: 1}, {value: true}]});

    assertStmt("func1(1, 11 + 22);", 
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
function testStmtReturn() {

    assertStmt("return;", {returnExpr: {value: ()}});
    assertStmt("return ();", {returnExpr: {value: ()}});
    assertStmt("return 10;", {returnExpr: {value: 10}});
    assertStmt("return -10;", {returnExpr: {value: -10}});
    assertStmt("return true;", {returnExpr: {value: true}});
    assertStmt("return false;", {returnExpr: {value: false}});
}

@test:Config
function testStmtBranching() {

    assertStmt("break;", {breakStmt: true});
    assertStmt("continue;", {continueStmt: true});
}

@test:Config
function testStmtBlock() {

    assertStmtBlock("{x1 = 10;}", [{varName: "x1", expr: {value: 10}}]);

    err:Position pos = {lineNumber: 3, indexInLine: 0};
    assertStmtBlock("{\n x1 = 10; \nfunc1();\n}", [
        {varName: "x1", expr: {value: 10}}, 
        {funcName: "func1", pos: pos, args: []}
        ]);
}

@test:Config
function testStmtWhile() {

    WhileStmt expt = {
        condition: {value: true},
        body: [
        {varName: "x1", expr: {value: 10}}, 
        {breakStmt: true}
    ]
    };

    string actual = string `
    while true {
        x1 = 10;
        break;
    }`;
    assertStmt(actual, expt);
}

@test:Config
function testStmtIf() {

    IfElseStmt expt = {
        condition: {value: true},
        ifTrue: [
        {varName: "x1", expr: {value: 10}}, 
        {varName: "x1", expr: {value: 20}}
    ],
        ifFalse: []
    };

    string actual = string `
    if true {
        x1 = 10;
        x1 = 20;
    }`;
    assertStmt(actual, expt);
}

@test:Config
function testStmtIfElse() {

    IfElseStmt expt = {
        condition: {value: true},
        ifTrue: [
        {varName: "x1", expr: {value: 10}}, 
        {varName: "x1", expr: {value: 20}}
    ],
        ifFalse: [
        {varName: "x1", expr: {value: 30}}, 
        {varName: "x1", expr: {value: 40}}, 
        {varName: "x1", expr: {value: 50}}
    ]
    };

    string actual = string `
    if true {
        x1 = 10;
        x1 = 20;
    } else {
        x1 = 30;
        x1 = 40;
        x1 = 50;
    }`;
    assertStmt(actual, expt);
}

@test:Config
function testStmtIfElseIf() {

    IfElseStmt expt = {
        condition: {value: true},
        ifTrue: [
            {varName: "x1", expr: {value: 10}}, 
            {varName: "x1", expr: {value: 20}}
        ],
        ifFalse: [
            {
            condition: {value: false},
            ifTrue: [
                    {varName: "x2", expr: {value: 20}}, 
                    {varName: "x2", expr: {value: 30}}
                ],
            ifFalse: []
        }
        ]
    };

    string actual = string `
    if true {
        x1 = 10;
        x1 = 20;
    } else if false {
        x2 = 20;
        x2 = 30;
    }`;
    assertStmt(actual, expt);
}

@test:Config
function testStmtNestedIfElse() {

    IfElseStmt expt = {
        condition: {varName: "b1"},
        ifTrue: [
            {
            condition: {value: true},
            ifTrue: [
                    {varName: "x1", expr: {value: 10}}, 
                    {varName: "x1", expr: {value: 20}}
                ],
            ifFalse: [
                    {varName: "x1", expr: {value: 30}}, 
                    {varName: "x1", expr: {value: 40}}, 
                    {varName: "x1", expr: {value: 50}}
                ]
        }
        ],
        ifFalse: [
            {
            condition: {value: true},
            ifTrue: [
                    {varName: "x1", expr: {value: 10}}, 
                    {varName: "x1", expr: {value: 20}}
                ],
            ifFalse: [
                    {varName: "x1", expr: {value: 30}}, 
                    {varName: "x1", expr: {value: 40}}, 
                    {varName: "x1", expr: {value: 50}}
                ]
        }
        ]
    };

    string actual = string `
    if b1 {
        if true {
            x1 = 10;
            x1 = 20;
        } else {
            x1 = 30;
            x1 = 40;
            x1 = 50;
        }
    } else {
        if true {
            x1 = 10;
            x1 = 20;
        } else {
            x1 = 30;
            x1 = 40;
            x1 = 50;
        }
    }`;
    assertStmt(actual, expt);
}

@test:Config
function testStmtIfElseIfElse() {

    IfElseStmt expt = {
        condition: {varName: "b1"},
        ifTrue: [
            {varName: "x1", expr: {value: 10}}, 
            {varName: "x1", expr: {value: 20}}
        ],
        ifFalse: [
            {
            condition: {varName: "b2"},
            ifTrue: [
                    {varName: "x2", expr: {value: 20}}, 
                    {varName: "x2", expr: {value: 30}}
                ],
            ifFalse: [
                {varName: "x3", expr: {value: 30}}, 
                {varName: "x3", expr: {value: 40}}, 
                {varName: "x3", expr: {value: 50}}
            ]
        }
        ]
    };

    string actual = string `
    if b1 {
        x1 = 10;
        x1 = 20;
    } else if b2 {
        x2 = 20;
        x2 = 30;
    } else {
        x3 = 30;
        x3 = 40;
        x3 = 50;
    }`;
    assertStmt(actual, expt);
}

function assertStmtBlock(string str, Stmt[] expt) {

    do {
        Tokenizer tok = new (str);
        check tok.advance();
        Stmt[] actual = check parseStmtBlock(tok);
        assertStmtListEqual(actual, expt);
    } on fail error e {
        test:assertFail("error parsing block \"" + str + "\", " + e.toString());
    }
}

function assertStmt(string str, Stmt expect) {

    do {
        Tokenizer tok = new (str);
        check tok.advance();
        Stmt stmt = check parseStmt(tok);
        assertStmtEqual(stmt, expect);
        test:assertEquals(tok.current(), (), "Unexpected token" + tok.current().toString());
    } on fail error e {
        test:assertFail("error parsing statement \"" + str + "\", " + e.toString());
    }
}

function assertStmtEqual(Stmt actual, Stmt expect) {

    if actual is AnydataStmt && expect is AnydataStmt {
        test:assertEquals(actual, expect);
        return;
    }

    if actual is VarDeclStmt && expect is VarDeclStmt {
        assertExprEqual(actual.initExpr, expect.initExpr);
        test:assertEquals(actual.varName, expect.varName);
        // TODO : Fix this, only works for Simple Types
        test:assertTrue(actual.semType === expect.semType);
        assertTypeDescEqual(actual.td, expect.td);
        return;
    }

    if actual is IfElseStmt && expect is IfElseStmt {
        assertExprEqual(actual.condition, expect.condition);
        assertStmtListEqual(actual.ifTrue, expect.ifTrue);
        assertStmtListEqual(actual.ifFalse, expect.ifFalse);
        return;
    }

    if actual is WhileStmt && expect is WhileStmt {
        assertExprEqual(actual.condition, expect.condition);
        assertStmtListEqual(actual.body, expect.body);
        return;
    }
    test:assertFail("Incompatible stmts " + actual.toString());
}

function assertStmtListEqual(Stmt[] actual, Stmt[] expect) {

    test:assertEquals(actual.length(), expect.length(), "Stmt[] size mismatch");
    foreach var i in 0 ..< actual.length() {
        assertStmtEqual(actual[i], expect[i]);
    }
}
