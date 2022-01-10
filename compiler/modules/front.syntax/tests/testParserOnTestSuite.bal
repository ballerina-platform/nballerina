
import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.comm.err;

// JBUG the `enable: false` fails to work if there is a comment on the line before it
@test:Config {
    enable: true
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
            string[] lines = check io:fileReadLines(filename);
            SourceFile sourceFile = createSourceFile(lines, { filename });
            foreach int lineNum in 0 ..< lines.length() {
                string expectedLine = lines[lineNum];
                if expectedLine.length() == 0 {
                    continue;
                }
                int columnNum = 0;
                Position pos = createPosition(lineNum + 1, columnNum);
                string actualLine = "".'join(...sourceFile.lineContent(pos));
                test:assertEquals(actualLine, expectedLine);
            }
            ModulePart|err:Syntax part = scanAndParseModulePart(sourceFile, 0);
            if part is error {
                continue;
            }
            else {
                validateModulePart(part);
                string[] canonSrc = partToLines(part);
                part = scanAndParseModulePart(createSourceFile(canonSrc, { filename }), 0);
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

function scanAndParseModulePart(SourceFile sourceFile, int partIndex) returns ModulePart|err:Syntax {
    return parseModulePart(check scanModulePart(sourceFile, partIndex));
}

// pr-todo: remove this
//function testPositionIsWhiteSpace(SourceFile file, Position pos) returns boolean {
//    return checkPosFragCode(file, pos, FRAG_WHITESPACE, FRAG_COMMENT);
//}
