
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
                [err:Position, err:Position][] topLevelDefnPos = [];
                foreach ImportDecl decl in part.importDecls {
                    topLevelDefnPos.push([decl.startPos, decl.endPos]);
                }
                foreach ModuleLevelDefn defn in part.defns {
                    topLevelDefnPos.push([defn.startPos, defn.endPos]);
                }
                topLevelDefnPos = topLevelDefnPos.sort();
                err:Position lastEnd = 1<<32;
                foreach var [startPos, endPos] in topLevelDefnPos {
                    test:assertTrue(startPos >= lastEnd, "overlapping top level definitions");
                    test:assertTrue(startPos <= endPos, "invalid start and end positions");
                    SourceFile file = part.file;
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

function partToLines(ModulePart part) returns string[] {
    Word[] w = [];
    modulePartToWords(w, part);
    return wordsToLines(w);
}

function scanAndParseModulePart(string[] lines, FilePath path, int partIndex) returns ModulePart|err:Syntax {
    return parseModulePart(check scanModulePart(createSourceFile(lines, path), partIndex));
}

function testIsWhitespace(SourceFile file, Position startPos, Position endPos) returns boolean {
    err:LineColumn st = file.lineColumn(startPos);
    err:LineColumn end = file.lineColumn(endPos);
    int startLineIndex = st[0];
    int endLineIndex = end[0];
    int startFragIndex = fragIndex(st, file.line(startLineIndex));
    int endFragIndex = fragIndex(end, file.line(endLineIndex));
    int lineIndex = startLineIndex;
    int i = st[1];
    while lineIndex <= endLineIndex {
        ScannedLine line = file.line(lineIndex);
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

function fragIndex(err:LineColumn lineColumn, ScannedLine line) returns int {
    int codePoint = lineColumn[1];
    int fragCodeIndex = 0;
    int fragmentIndex = 0;
    int i = 0;
    Mode mode = MODE_NORMAL;
    FragCode[] fragCodes = line.fragCodes;
    while (i < codePoint) {
        FragCode fragCode = fragCodes[fragCodeIndex];
        match fragCode {
            FRAG_STRING_OPEN |
            FRAG_STRING_CLOSE => {
                i += 1;
            }
            FRAG_STRING_CHARS |
            FRAG_STRING_CHAR_ESCAPE |
            FRAG_STRING_CONTROL_ESCAPE |
            FRAG_STRING_NUMERIC_ESCAPE |
            FRAG_WHITESPACE |
            FRAG_DECIMAL_NUMBER |
            FRAG_IDENTIFIER |
            FRAG_HEX_NUMBER |
            FRAG_DECIMAL_FP_NUMBER_F |
            FRAG_DECIMAL_FP_NUMBER |
            FRAG_DECIMAL_FP_NUMBER_D=> {
                string fragment = line.fragments[fragmentIndex];
                fragmentIndex += 1;
                i += fragment.length();
            }
            FRAG_GREATER_THAN => {
                if mode == MODE_NORMAL && fragCodeIndex < fragCodes.length() && fragCodes[fragCodeIndex] == FRAG_GREATER_THAN {
                    if fragCodeIndex + 1 < fragCodes.length() && fragCodes[fragCodeIndex + 1] == FRAG_GREATER_THAN {
                        fragCodeIndex += 2;
                        i += 3;
                    }
                    else {
                        fragCodeIndex += 1;
                        i += 2;
                    }
                }
                else {
                    i += 1;
                }
            }
            _ => {
                FixedToken? ft = fragTokens[fragCode];
                // if we've missed something above, we'll get a panic from the cast here
                i += (<string>ft).length();
            }
        }
        fragmentIndex += 1;
    }
    return fragmentIndex - 1;
}
