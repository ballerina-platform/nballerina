import ballerina/test;

function assertModuleLevelDefEqual(ModuleLevelDef actual, ModuleLevelDef expect, string? message = ()) {

    string msg = message ?: "ModuleLevelDef equal assertion failed!"; // This is for test:assert*
    if actual is FunctionDef && expect is FunctionDef {
        test:assertEquals(actual.pos, expect.pos, msg);
        test:assertEquals(actual.name, expect.name, msg);
        test:assertEquals(actual.paramNames, expect.paramNames, msg);
        assertStmtListEqual(actual.body, expect.body, message);
        assertTypeDescEqual(actual.typeDesc, expect.typeDesc, message);
        return;
    }
    test:assertFail("Not supported ModuleLevelDef, " + msg);
}

function assertModuleLevelDefListEqual(ModuleLevelDef[] actual, ModuleLevelDef[] expect, string? message = ()) {

    string msg = message ?: "ModuleLevelDef[] equal assertion failed!"; // This is for test:assert*
    test:assertEquals(actual.length(), expect.length(),  msg + ", size mismatch");
    foreach var i in 0 ..< actual.length() {
        assertModuleLevelDefEqual(actual[i], expect[i], message);
    }
}

function assertStmtEqual(Stmt actual, Stmt expect, string? message = ()) {

    string msg = message ?: "Stmt equal assertion failed!"; // This is for test:assert*
    if actual is AnydataStmt && expect is AnydataStmt {
        test:assertEquals(actual, expect, msg);
        return;
    }

    if actual is VarDeclStmt && expect is VarDeclStmt {
        assertExprEqual(actual.initExpr, expect.initExpr, message);
        test:assertEquals(actual.varName, expect.varName, msg);
        // TODO : Fix this, only works for Simple Types
        test:assertTrue(actual.semType === expect.semType, msg);
        assertTypeDescEqual(actual.td, expect.td, message);
        return;
    }

    if actual is IfElseStmt && expect is IfElseStmt {
        assertExprEqual(actual.condition, expect.condition, message);
        assertStmtListEqual(actual.ifTrue, expect.ifTrue, message);
        assertStmtListEqual(actual.ifFalse, expect.ifFalse, message);
        return;
    }

    if actual is WhileStmt && expect is WhileStmt {
        assertExprEqual(actual.condition, expect.condition, message);
        assertStmtListEqual(actual.body, expect.body, message);
        return;
    }
    test:assertFail("Not supported Stmt, " + msg);
}

function assertStmtListEqual(Stmt[] actual, Stmt[] expect, string? message = ()) {

    string msg = message ?: "Stmt[] equal assertion failed!"; // This is for test:assert*
    test:assertEquals(actual.length(), expect.length(), msg + ", size mismatch");
    foreach var i in 0 ..< actual.length() {
        assertStmtEqual(actual[i], expect[i], message);
    }
}

function assertExprEqual(Expr actual, Expr expt, string? message = ()) {

    string msg = message ?: "Expr equal assertion failed!"; // This is for test:assert*
    test:assertEquals(actual, expt, msg);
}

function assertExprListEqual(Expr[] actual, Expr[] expect, string? message = ()) {

    string msg = message ?: "Expr[] equal assertion failed!"; // This is for test:assert*
    test:assertEquals(actual.length(), expect.length(), msg + ", size mismatch");
    foreach var i in 0 ..< actual.length() {
        assertExprEqual(actual[i], expect[i], message);
    }
}

function assertTypeDescEqual(TypeDesc actual, TypeDesc expect, string? message = ()) {

    string msg = message ?: "TypeDesc equal assertion failed!"; // This is for test:assert*
    if actual is LeafTypeDesc && expect is LeafTypeDesc {
        test:assertEquals(actual, expect, msg);
        return;
    }

    if actual is FunctionTypeDesc && expect is FunctionTypeDesc {
        assertTypeDescListEqual(actual.args, expect.args);
        assertTypeDescEqual(actual.ret, expect.ret);
        // TODO : Handle t:FunctionDefinition
        return;
    }

    test:assertFail("Not supported TypeDesc, " + msg);
}

function assertTypeDescListEqual(TypeDesc[] actual, TypeDesc[] expect, string? message = ()) {

    string msg = message ?: "TypeDesc[] equal assertion failed!"; // This is for test:assert*
    test:assertEquals(actual.length(), expect.length(), msg + ", size mismatch");
    foreach var i in 0 ..< actual.length() {
        assertTypeDescEqual(actual[i], expect[i]);
    }
}
