import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.comm.err;

function testCases() returns map<[string]> {
    map<[string]> files = {};
    foreach var dir in checkpanic file:readDir("./testSuite") {
        if !checkpanic file:test(dir.absPath, file:IS_DIR) {
            continue;
        }
        foreach var test in checkpanic file:readDir(dir.absPath) {
            if test.dir {
                continue;
            }
            string filename = checkpanic file:relativePath(checkpanic file:getAbsolutePath("./testSuite"), test.absPath);
            files[filename] = [filename];
        }
    }
    return files;
}
// JBUG the `enable: false` fails to work if there is a comment on the line before it
@test:Config {
    enable: true,
    dataProvider:  testCases
}
function testParserOnTestSuite(string filename) returns err:Syntax|io:Error|file:Error|PositionValidationError? {
    string[] lines = check io:fileReadLines(check file:joinPath("./testSuite", filename));
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
    if part !is error {
        check validateModulePartPositions(part);
        string[] canonSrc = partToLines(part);
        part = scanAndParseModulePart(createSourceFile(canonSrc, { filename: sourceFile.filename() }), 0);
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

function partToLines(ModulePart part) returns string[] {
    RootSyntaxNode root = rootSyntaxNode(part);
    return syntaxNodeToString(root);
}

function scanAndParseModulePart(SourceFile sourceFile, int partIndex) returns ModulePart|err:Syntax {
    return parseModulePart(check scanModulePart(sourceFile, partIndex));
}
