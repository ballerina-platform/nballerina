
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
                    _ = check parseImportDecl(tok, decl.partIndex);
                    test:assertEquals(decl.endPos, tok.previousEndPos()); // parser advances to next token after parsing the import
                }
                foreach ModuleLevelDefn defn in part.defns {
                    topLevelDefnPos.push([defn.startPos, defn.endPos]);
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
        _= check parseTypeDefinition(tok, defn.part, defn.vis, defn.startPos);
    }
    test:assertEquals(defn.endPos, tok.previousEndPos()); // parser advances to next token after parsing the import
}

function partToLines(ModulePart part) returns string[] {
    Word[] w = [];
    modulePartToWords(w, part);
    return wordsToLines(w);
}

function scanAndParseModulePart(string[] lines, FilePath path, int partIndex) returns ModulePart|err:Syntax {
    return parseModulePart(check scanModulePart(createSourceFile(lines, path), partIndex));
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
