
import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.err;

const SOURCE_DIR = "testSuite";

@test:Config{}
function testParserOnTestSuite() returns err:Syntax|io:Error|file:Error? {
    foreach var f in check file:readDir(SOURCE_DIR) {
        string filename = f.absPath;
        string[] lines = check io:fileReadLines(filename);
        ModulePart|err:Syntax part = parseModulePart(lines, filename, 0);
        if part is error {
            continue;
        }
        else {
            string[] canonSrc = partToLines(part);
            part = parseModulePart(canonSrc, filename, 0);
            if part is error {
                test:assertEquals(lines, canonSrc, "serialized ast can't be re-parsed");
                panic err:impossible("if src is equal to canonSrc second parse can't fail");
            }
            string[] roundTripSrc = partToLines(check part);
            test:assertEquals(canonSrc, roundTripSrc);
        }
    }
}

function partToLines(ModulePart part) returns string[] {
    Word[] w = [];
    modulePartToWords(w, part);
    return wordsToLines(w);
}
