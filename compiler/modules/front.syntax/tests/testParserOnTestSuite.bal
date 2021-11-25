
import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

// JBUG the `enable: false` fails to work if there is a comment on the line before it
@test:Config {
    enable: false
}
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
            // XXX remove after fixing #555
            if filename.endsWith("-t.bal") {
                continue;
            }
            string[] lines = check io:fileReadLines(filename);
            ModulePart|err:Syntax part = scanAndParseModulePart(lines, { filename }, 0);
            if part is error {
                continue;
            }
            else {
                SourceFile file = part.file;
                Tokenizer tok = new(file);
                [d:Position, d:Position][] topLevelDefnPos = [];
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
                        foreach Stmt stmt in defn.body.stmts {
                            check validateStatementPos(stmt, tok, defn.startPos, defn.endPos);
                        }
                    }
                    else if defn is ConstDefn {
                        check validateExpressionPos(defn.expr, tok, defn.startPos, defn.endPos);
                        TypeDesc? td = defn.td;
                        if td != () {
                            check validateTypeDescPos(td, tok, defn.startPos, defn.endPos);
                        }
                    }
                    else {
                        check validateTypeDescPos(defn.td, tok, defn.startPos, defn.endPos);
                    }
                }
                topLevelDefnPos = topLevelDefnPos.sort();
                d:Position lastEnd = 1<<32;
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
                else {
                    string[] roundTripSrc = partToLines(part);
                    test:assertEquals(canonSrc, roundTripSrc);
                }
            }
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
    return checkPosFragCode(file, pos, FRAG_WHITESPACE, FRAG_COMMENT);
}
