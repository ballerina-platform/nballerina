import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.err;

type TestSuiteCases map<[string, string]>;

@test:Config {
    dataProvider: listSourcesVPO
}
function testCompileVPO(string path, string kind) returns io:Error? {
    CompileError? err = testCompileFile(path);
    if err is io:Error {
        return err;
    }
    else {
        string msg = "compilation error";
        if err is err:Any {
            verifyErrorFileName(err);
            // JBUG #31334 cast
            string? functionName = (<err:Detail>err.detail()).functionName;
            if functionName is string {
                msg += " :function " + functionName;
            }
        }
        test:assertEquals(err, (), msg);
    }
}

function verifyErrorFileName(err:Any err) {
    err:Detail detail = <err:Detail>err.detail();
    test:assertTrue(detail.location is err:Location, "error without location");
    test:assertNotEquals((<err:Location>detail.location).filename.length(), 0, "error with an empty filename");
}

@test:Config {
    dataProvider: listSourcesEU
}
function testCompileEU(string path, string kind) returns file:Error|io:Error? {
    CompileError? err = testCompileFile(path);
    if err is err:Any? {
        if err is () {
            test:assertNotExactEquals(err, (), "expected an error " + path);
        }
        else {
            // JBUG #31334 cast needed
            verifyErrorFileName(err);
            string base = check file:basename(path);
            boolean isE = kind[0] == "e";
            if isE {
                test:assertFalse(err is err:Unimplemented, "unimplemented error on E test" + path);
            }
            // io:println U errors are reported as semantic errors
            else if !err.message().includes("'io:println'") {
                test:assertFalse(err is err:Semantic, "semantic error on U test" + path);
            }
            int? lineNumber = compileErrorLineNumber(err);
            if lineNumber != () && (isE || kind[1] == "e") {
                test:assertEquals(lineNumber, check errorLine(path), "wrong line number in error " + path);
            }
        }
    }
    else {
        return err;
    }
}

function compileErrorLineNumber(CompileError err) returns int? {
    if err is io:Error {
        return ();
    }
    else {
        // JBUG #31334 cast needed
        err:Detail detail = <err:Detail>err.detail();
        err:LineColumn? lc = detail.location?.startPos;
        return lc == () ? () : lc[0];
    }
}

function listSourcesVPO() returns TestSuiteCases|error => listSources("vpo", "./testSuite");

function listSourcesEU() returns TestSuiteCases|error => listSources("eu", "./testSuite");

function listSources(string initialChars, string path) returns TestSuiteCases|io:Error|file:Error {
    TestSuiteCases cases = {};
    // JBUG #32615 can't use from-in-from query syntax
    foreach var dir in check file:readDir(path) {
        if !check file:test(dir.absPath, file:IS_DIR) {
            continue;
        }
        string category = check file:basename(dir.absPath);
        foreach var test in check file:readDir(dir.absPath) {
            string name = check file:basename(test.absPath);
            var [base, ext] = basenameExtension(name);
            if check file:test(test.absPath, file:IS_DIR) && ext == ".modules" {
                TestSuiteCases subCases = check listSources(initialChars, test.absPath);
                foreach var k in subCases.keys() {
                    cases[k] = subCases.get(k);
                }
                continue;
            }
            else if ext != ".bal" {
                continue;
            }
            int? dash = base.lastIndexOf("-");
            test:assertTrue(dash is int, "test file name must be in <name>-<kind>.bal format");
            string testKind = base.substring(1 + <int>dash);
            if initialChars.includes(testKind[0]) {
                cases[category + "/" + name] = [test.absPath, testKind];
            }
        }
    }
    return cases;
}

function testKind(string base) returns string:Char {
    int? dash = base.lastIndexOf("-");
    test:assertTrue(dash is int, "test file name must be in <name>-<kind>.bal format");
    return <string:Char> base.substring(1 + <int>dash, 2 + <int>dash).toLowerAscii();
}

function includePath(string path, string initialChars) returns boolean|file:Error {
    string base = check file:basename(path);
    // this deals with comparing extension case-insensitively
    var [_, extension] = basenameExtension(base);
    return extension == SOURCE_EXTENSION && initialChars.includes(base[0].toUpperAscii());
}

function errorLine(string path) returns int|io:Error {
    string[] lines = check io:fileReadLines(path);
    foreach var i in 0 ..< lines.length() {
        if lines[i].indexOf("// @error") != () {
            return i + 1;
        }
    }
    test:assertFail("Test with 'E' prefix missing error annotation : " + path);
    // JBUG #31338 panic with function returning never here cases a bytecode error
    panic err:impossible();
}

// This outputs nothing
function testCompileFile(string filename) returns CompileError? {
    var [basename, _] = basenameExtension(filename);
    return compileBalFile(filename, basename, (), {}, {});
}
