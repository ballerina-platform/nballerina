import ballerina/test;

function assertSource(string src, ModuleLevelDef[] expt, string? message = ()) {

    do {
        ModuleLevelDef[] actual = check parseSourcePart(src);
        assertModuleLevelDefListEqual(actual, expt, message);
    } on fail error e {
        test:assertFail("error parsing source \"" + src + "\", " + e.toString());
    }
}

function assertModuleLevelDef(string str, ModuleLevelDef expect, string? message = ()) {

    do {
        Tokenizer tok = new (str);
        check tok.advance();
        ModuleLevelDef actual = check parseModuleDecl(tok);
        assertModuleLevelDefEqual(actual, expect, message);
        test:assertEquals(tok.current(), (), "Unexpected token at the end");
    } on fail error e {
        test:assertFail("error parsing statement \"" + str + "\", " + e.toString());
    }
}

function assertStmtBlock(string str, Stmt[] expt, string? message = ()) {

    do {
        Tokenizer tok = new (str);
        check tok.advance();
        Stmt[] actual = check parseStmtBlock(tok);
        assertStmtListEqual(actual, expt, message);
        test:assertEquals(tok.current(), (), "Unexpected token at the end");
    } on fail error e {
        test:assertFail("error parsing statment block \"" + str + "\", " + e.toString());
    }
}

function assertStmt(string str, Stmt expect, string? message = ()) {

    do {
        Tokenizer tok = new (str);
        check tok.advance();
        Stmt stmt = check parseStmt(tok);
        assertStmtEqual(stmt, expect, message);
        test:assertEquals(tok.current(), (), "Unexpected token at the end");
    } on fail error e {
        test:assertFail("error parsing statement \"" + str + "\", " + e.toString());
    }
}

function assertExpr(string str, Expr expt, string? message = ()) {

    do {
        Tokenizer tok = new (str);
        check tok.advance();
        Expr actual = check parseExpr(tok);
        assertExprEqual(actual, expt, message);
        test:assertEquals(tok.current(), (), "Unexpected token at the end");
    } on fail error e {
        test:assertFail("error parsing expression \"" + str + "\", " + e.toString());
    }
}
