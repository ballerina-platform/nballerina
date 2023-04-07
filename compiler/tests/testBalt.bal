import wso2/nballerina.comm.err;
import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.nback;
import wso2/nballerina.types as t;

import ballerina/test;
import ballerina/file;

// map of `BaltTestCase` as tuples. test framework needs each case presented as a tuple
type TestCaseMap map<[string, int, BaltTestHeader, string[]]>;

// disable because there are no .balt tests
// @test:Config {
//     dataProvider: parseBalts
// }
function testBalt(string baltName, int offset, BaltTestHeader header, string[] lines) returns error? {
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
        if err is err:Diagnostic {
            string? defnName = err.detail().defnName;
            if defnName != () {
                msg += ": definition " + defnName;
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

function compileModule(bir:ModuleId modId, front:SourcePart[] sources, nback:Options nbackOptions) returns LlvmModule|CompileError {
    t:Env env = new;
    front:ScannedModule scanned = check front:scanModule(sources, modId);
    bir:Module birMod = check front:resolveModule(scanned, env, []);
    var [llMod, _, _] = check nback:buildModule(birMod, nbackOptions);
    return llMod;
}
