
import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.err;

@test:Config{}
function testParserOnTestSuite() returns err:Syntax|io:Error|file:Error? {
    foreach var dir in check file:readDir("./testSuite") {
        if !check file:test(dir.absPath, file:IS_DIR) {
            continue;
        }
        foreach var test in check file:readDir(dir.absPath) {
            if test.dir {
                continue;
            }
            string filename = test.absPath;
            string[] lines = check io:fileReadLines(filename);
            ModulePart|err:Syntax part = scanAndParseModulePart(lines, { filename }, 0);
            if part is error {
                continue;
            }
            else {
                SourceFile file = part.file;
                Tokenizer tok = new(file);
                [err:Position, err:Position][] topLevelDefnPos = [];
                foreach ImportDecl decl in part.importDecls {
                    topLevelDefnPos.push([decl.startPos, decl.endPos]);
                    check tok.moveToPos(decl.startPos, MODE_NORMAL);
                    test:assertEquals(tok.currentStartPos(), decl.startPos, "moved to wrong position");
                    ImportDecl newDecl = check parseImportDecl(tok, decl.partIndex);
                    test:assertEquals(decl.endPos, tok.previousEndPos()); // parser advances to next token after parsing the import
                    test:assertEquals(decl, newDecl);
                }
                foreach ModuleLevelDefn defn in part.defns {
                    topLevelDefnPos.push([defn.startPos, defn.endPos]);
                    check validateModuleLevelDefnPos(defn, tok);
                    if defn is FunctionDefn {
                        foreach Stmt stmt in defn.body {
                            check validateStatementPos(stmt, tok, defn.startPos, defn.endPos);
                        }
                    }
                }
                topLevelDefnPos = topLevelDefnPos.sort();
                err:Position lastEnd = 1<<32;
                foreach var [startPos, endPos] in topLevelDefnPos {
                    test:assertTrue((startPos == (1<<32)) || (startPos > lastEnd), "overlapping top level definitions");
                    test:assertTrue(startPos < endPos, "invalid start and end positions");
                    var [stLine, stCol] = file.lineColumn(startPos);
                    var [endLine, endCol] = file.lineColumn(lastEnd);
                    string errorBody = string ` filename: ${file.filename()} between (${endLine}, ${endCol})  and (${stLine}, ${stCol})`;
                    test:assertTrue(testIsWhitespace(part.file, lastEnd, startPos), "none white space tokens between top level definition" + errorBody);
                    test:assertFalse(testPositionIsWhiteSpace(part.file, startPos), "start position is a white space");
                    test:assertFalse(testPositionIsWhiteSpace(part.file, endPos), "end position is a white space");
                    lastEnd = endPos;
                }
                string[] canonSrc = partToLines(part);
                part = scanAndParseModulePart(canonSrc, { filename }, 0);
                if part is error {
                    test:assertEquals(lines, canonSrc, "serialized ast can't be re-parsed");
                    panic err:impossible("if src is equal to canonSrc second parse can't fail");
                }
                string[] roundTripSrc = partToLines(check part);
                test:assertEquals(canonSrc, roundTripSrc);
            }
        }
    }
}

function validateModuleLevelDefnPos(ModuleLevelDefn defn, Tokenizer tok) returns err:Syntax? {
    check tok.moveToPos(defn.startPos, MODE_NORMAL);
    test:assertEquals(tok.currentStartPos(), defn.startPos, "moved to wrong position");
    ModuleLevelDefn newDefn;
    if defn.vis == "public" {
        check tok.advance();
    }
    if defn is FunctionDefn {
        _ = check parseFunctionDefinition(tok, defn.part, defn.vis, defn.startPos);
    }
    else if defn is ConstDefn {
        _ = check parseConstDefinition(tok, defn.part, defn.vis, defn.startPos);
    }
    else {
        _ = check parseTypeDefinition(tok, defn.part, defn.vis, defn.startPos);
    }
    test:assertEquals(defn.endPos, tok.previousEndPos()); // parser advances to next token after parsing the import
}

function validateStatementPos(Stmt stmt, Tokenizer tok, Position parentStartPos, Position parentEndPos) returns err:Syntax? {
    // TODO: Once stmts that can be expressions also support positions remove this check
    if !(stmt is CallStmt) {
        check tok.moveToPos(stmt.startPos, MODE_NORMAL);
        test:assertEquals(tok.currentStartPos(), stmt.startPos, "moved to wrong position");
        _ = check parseStmt(tok);
        test:assertEquals(stmt.endPos, tok.previousEndPos()); // parser advances to next token after parsing the import
        test:assertTrue(stmt.startPos >= parentStartPos && stmt.endPos <= parentEndPos, "child node outside of parent");
        [err:Position, err:Position][] childNodePos = [];
        if stmt is IfElseStmt {
            foreach Stmt trueStmt in stmt.ifTrue {
                check validateStatementPos(trueStmt, tok, stmt.startPos, stmt.endPos);
                // TODO: Once stmts that can be expressions also support positions remove this check
                if !(trueStmt is CallStmt) {
                    childNodePos.push([trueStmt.startPos, trueStmt.endPos]);
                }
            }
            foreach Stmt falseStmt in stmt.ifFalse {
                check validateStatementPos(falseStmt, tok, stmt.startPos, stmt.endPos);
                // TODO: Once stmts that can be expressions also support positions remove this check
                if !(falseStmt is CallStmt) {
                    childNodePos.push([falseStmt.startPos, falseStmt.endPos]);
                }
            }
        }
        else if stmt is MatchStmt {
            foreach var clause in stmt.clauses {
                foreach var matchStmt in clause.block {
                    check validateStatementPos(matchStmt, tok, stmt.startPos, stmt.endPos);
                        // TODO: Once stmts that can be expressions also support positions remove this check
                        if !(matchStmt is CallStmt) {
                            childNodePos.push([matchStmt.startPos, matchStmt.endPos]);
                        }
                }
            }
        }
        else if stmt is (WhileStmt|ForeachStmt) {
            foreach var bodyStmt in <Stmt[]>stmt.body {
                check validateStatementPos(bodyStmt, tok, stmt.startPos, stmt.endPos);
                // TODO: Once stmts that can be expressions also support positions remove this check
                if !(bodyStmt is CallStmt) {
                    childNodePos.push([bodyStmt.startPos, bodyStmt.endPos]);
                }
            }
        }
        childNodePos = childNodePos.sort();
        err:Position lastEnd = stmt.startPos;
        foreach var [startPos, endPos] in childNodePos {
            test:assertTrue(startPos < endPos, "invalid start and end positions");
            test:assertTrue((startPos == stmt.startPos) || (startPos > lastEnd), "overlapping statements");
            test:assertFalse(testPositionIsWhiteSpace(tok.file, startPos), "start position is a white space");
            test:assertFalse(testPositionIsWhiteSpace(tok.file, endPos), "end position is a white space");
            lastEnd = endPos;
        }
    }
}

function partToLines(ModulePart part) returns string[] {
    Word[] w = [];
    modulePartToWords(w, part);
    return wordsToLines(w);
}

function scanAndParseModulePart(string[] lines, FilePath path, int partIndex) returns ModulePart|err:Syntax {
    return parseModulePart(check scanModulePart(createSourceFile(lines, path), partIndex));
}

function testPositionIsWhiteSpace(SourceFile file, Position pos) returns boolean {
    var [lineIndex, fragIndex] = sourceFileFragIndex(file, pos);
    ScannedLine line = file.scannedLine(lineIndex);
    FragCode frag = line.fragCodes[fragIndex];
    return frag == FRAG_WHITESPACE || frag == FRAG_COMMENT;
}

function testIsWhitespace(SourceFile file, Position startPos, Position endPos) returns boolean {
    var [startLineIndex, startFragIndex] = sourceFileFragIndex(file, startPos);
    var [endLineIndex, endFragIndex] = sourceFileFragIndex(file, endPos);
    int lineIndex = startLineIndex;
    int i = unpackPosition(startPos)[1];
    while lineIndex <= endLineIndex {
        ScannedLine line = file.scannedLine(lineIndex);
        while i < line.fragments.length() {
            if lineIndex >= endLineIndex && i >= endFragIndex {
                return true;
            }
            FragCode frag = line.fragCodes[i];
            if frag != FRAG_WHITESPACE && frag != FRAG_COMMENT {
                return false;
            }
            i += 1;
        }
        i = 0;
        lineIndex += 1;
    }
    return true; // start == end
}

function sourceFileFragIndex(SourceFile file, Position pos) returns [int, int] {
    var [lineNumber, codePointIndex] = unpackPosition(pos);
    ScannedLine line = file.scannedLine(lineNumber);
    return [lineNumber, scanLineFragIndex(line, codePointIndex)[0]];
}
