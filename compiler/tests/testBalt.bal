import wso2/nballerina.err;

import ballerina/test;
import ballerina/file;

// map of `BaltTestCase` as tuples. test framework needs each case presented as a tuple
type TestCaseMap map<[string, int, BaltTestHeader, string[]]>;

// disable because there are no .balt tests
// JBUG: #32575
// @test:Config {
//     dataProvider: parseBalts
// }
function testBalt(string baltName, int offset, BaltTestHeader header, string[] lines) returns error? {
    string fakeFilename = baltName + ":" + offset.toString();
    LlvmModule|CompileError compileResult = compileModule(DEFAULT_ROOT_MODULE_ID, [{ lines }], {});
    CompileError? err = compileResult is error ? compileResult : ();

    if header["Fail-Issue"] != () {
        return;
    }

    if header.Test\-Case == "error" {
        // JBUG #32440 can't use assertNotEqual
        test:assertNotExactEquals(err, (), "expected an error");
    }
    else {
        string msg = "compilation error";
        if err is err:Any {
            // JBUG #31334 cast
            string? functionName = (<err:Detail>err.detail()).functionName;
            if functionName is string {
                msg += ": function " + functionName;
            }
        }
        test:assertEquals(err, (), msg);
    }
}

function parseBalts() returns TestCaseMap|error {
    string[] files = from var entry in check file:readDir("testSuite")
            where basenameExtension(check file:basename(entry.absPath))[1] == ".balt"
            select entry.absPath;

    TestCaseMap testMap = {};
    foreach var file in files {
        BaltTestCase[] tests = check parseBalt(file);
        string base = check file:basename(file);
        foreach var test in tests {
            testMap[base + ":" + test.offset.toString()] = [base, test.offset, test.header, test.content];
        }
    }
    return testMap;
}
