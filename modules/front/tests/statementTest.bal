import ballerina/test;
import wso2/nballerina.err;
import wso2/nballerina.types as t;

type AnydataStmt AssignStmt|ReturnStmt|FunctionCallExpr|BreakStmt|ContinueStmt;

@test:Config
function testVarDeclStmt() {
    assertStmt( "int i = 10", { td : "int", varName : "i", initExpr : { value : 10}, semType : t:INT});
    assertStmt( "boolean bb = false", { td : "boolean", varName : "bb", initExpr : { value : false}, semType : t:BOOLEAN});
}


@test:Config
function testAssignStmt() {
    assertStmt("x1 = 10;", {varName: "x1", expr: {value: 10}});
    assertStmt("x2 = -10;", {varName: "x2", expr: {value: -10}});
    assertStmt("x3 = true;", {varName: "x3", expr: {value: true}});
    assertStmt("x4 = false;", {varName: "x4", expr: {value: false}});
    assertStmt("x5 = ();", {varName: "x5", expr: {value: ()}});

    assertStmt("a1 = 11 + 22;", 
        {varName: "a1", expr: {op: "+", left: {value: 11}, right: {value: 22}}});
}

@test:Config
function testFunctionCallStmt() {
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
function testReturnStmt() {
    assertStmt("return;", {returnExpr: {value: ()}});
    assertStmt("return ();", {returnExpr: {value: ()}});
    assertStmt("return 10;", {returnExpr: {value: 10}});
    assertStmt("return -10;", {returnExpr: {value: -10}});
    assertStmt("return true;", {returnExpr: {value: true}});
    assertStmt("return false;", {returnExpr: {value: false}});
}

@test:Config
function testSingleWordStmt() {
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
function testWhileStmt() {
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
function testIfStmt() {
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
function testIfElseStmt() {
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
function testIfElseIfStmt() {
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
function testNestedIfElseStmt() {
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
function testIfElseIfElseStmt() {
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
        Stmt[] stmts = check parseStmtBlock(tok);
        test:assertEquals(stmts.length(), expt.length());
        foreach var i in 0 ..< stmts.length() {
            assertStmtEqual(stmts[i], expt[i]);
        }
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
        TypeDesc tdActual = actual.td;
        TypeDesc tdExpect = expect.td;
        if tdActual is LeafTypeDesc &&  tdExpect is LeafTypeDesc {
            test:assertEquals(tdActual, tdExpect);
        } else {
            test:assertFail("Can't test VarDecl stmts for complex TypeDesc");
        }
        return;
    }

    if actual is IfElseStmt && expect is IfElseStmt {
        assertExprEqual(actual.condition, expect.condition);
        test:assertEquals(actual.ifTrue.length(), expect.ifTrue.length(), "ifTrue size mismatch");
        test:assertEquals(actual.ifFalse.length(), expect.ifFalse.length(), "ifFalse size mismatch");
        foreach var i in 0 ..< actual.ifTrue.length() {
            assertStmtEqual(actual.ifTrue[i], expect.ifTrue[i]);
        }
        foreach var i in 0 ..< actual.ifFalse.length() {
            assertStmtEqual(actual.ifFalse[i], expect.ifFalse[i]);
        }
        return;
    }

    if actual is WhileStmt && expect is WhileStmt {
        assertExprEqual(actual.condition, expect.condition);
        test:assertEquals(actual.body.length(), expect.body.length(), "body size mismatch");
        foreach var i in 0 ..< actual.body.length() {
            assertStmtEqual(actual.body[i], expect.body[i]);
        }
        return;
    }
    test:assertFail("Incompatible stmts");
}
