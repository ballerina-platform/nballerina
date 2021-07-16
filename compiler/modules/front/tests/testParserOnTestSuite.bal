
import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.err;

const SOURCE_DIR = "testSuite";

@test:Config{}
function testParserOnTestSuite() returns err:Syntax|io:Error|file:Error? {
    foreach var f in check file:readDir(SOURCE_DIR) {
        string src = check io:fileReadString(f.absPath);
        ModulePart|error part = parseModulePart(src);
        if part is error {
            continue;
        }
        else {
            string canonSrc = partToString(part);
            string roundTripSrc = partToString(check parseModulePart(canonSrc));
            test:assertEquals(canonSrc, roundTripSrc);
        }
    }
}

function partToString(ModulePart part) returns string {
    Word[] w = [];
    modulePartToWords(w, part);
    return wordsToString(w);
}
