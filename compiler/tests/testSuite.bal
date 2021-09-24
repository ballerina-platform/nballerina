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
            // JBUG #31334 cast
            string? functionName = (<err:Detail>err.detail()).functionName;
            if functionName is string {
                msg += " :function " + functionName;
            }
        }
        test:assertEquals(err, (), msg);
    }
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
            string base = check file:basename(path);
            boolean isE = kind[0] == "e";
            if isE {
                test:assertFalse(err is err:Unimplemented, "unimplemented error on E test" + path);
            }
            // io:println U errors are reported as semantic errors
            else if !err.message().includes("'io:println'") {
                test:assertFalse(err is err:Semantic, "semantic error on U test" + path);
            }
            if kind == "e" || kind == "ue" {
                var expectedErrorLocation = checkpanic expectedErrorLocation(err, path);
                if !(expectedErrorLocation is ()) {
                    var [expectedLineNo, expectedFilename] = expectedErrorLocation;
                    // JBUG #31334 cast needed
                    err:Detail detail = <err:Detail> err.detail();
                    test:assertTrue(detail.location is err:Location, "error without location");
                    string filename =(<err:Location>detail.location).filename;
                    test:assertEquals(file:getAbsolutePath(filename), expectedFilename, "Invalid error filename" + filename);
                    err:LineColumn? lc = detail.location?.startPos;
                    if lc is err:LineColumn {
                        test:assertEquals(lc[0], expectedLineNo, "invalid error line number in " + expectedFilename);
                    }
                }
            }
        }
    }
    else {
        return err;
    }
}

function moduleDir(string filePath) returns string|file:Error? {
    string subModPath = filePath.substring(0, filePath.length()-4) + ".modules";
    if check file:test(subModPath, file:IS_DIR) {
        return check file:normalizePath(subModPath, file:CLEAN);
    }
}

function expectedErrorLocation(CompileError err, string path) returns [int, string]|file:Error|io:Error? {
    string? modulePath = check moduleDir(path);
    string? errorFileName = ();
    int? errorLineNumber = ();
    if modulePath is string {
        foreach var dir in check file:readDir(modulePath) {
            if !check file:test(dir.absPath, file:IS_DIR) {
                continue;
            }
            foreach var file in check file:readDir(dir.absPath) {
                [errorLineNumber, errorFileName] = findErrorLine(file.absPath, errorLineNumber);
            }
        }
    }
    [errorLineNumber, errorFileName] = findErrorLine(path, errorLineNumber);
    if errorFileName is string && errorLineNumber is int {
        return [errorLineNumber, errorFileName];
    }
}

function findErrorLine(string filePath, int? currentErrorLine) returns [int?, string?] {
    int? fileErrorLine = checkpanic errorLine(filePath);
    if fileErrorLine is int {
        test:assertTrue(currentErrorLine is (), "Multiple files with error annotations found");
        return [fileErrorLine, filePath];
    }
    else {
        return [(), ()];
    }
}

function listSourcesVPO() returns TestSuiteCases|error => listSources("vpo");

function listSourcesEU() returns TestSuiteCases|error => listSources("eu");

function listSources(string initialChars) returns TestSuiteCases|io:Error|file:Error {
    TestSuiteCases cases = {};
    // JBUG #32615 can't use from-in-from query syntax
    foreach var dir in check file:readDir("./testSuite") {
        if !check file:test(dir.absPath, file:IS_DIR) {
            continue;
        }
        string category = check file:basename(dir.absPath);
        foreach var test in check file:readDir(dir.absPath) {
            string name = check file:basename(test.absPath);
            var [base, ext] = basenameExtension(name);
            if ext != ".bal" {
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

function errorLine(string path) returns int|io:Error? {
    string[] lines = check io:fileReadLines(path);
    int? lineNo = ();
    foreach var i in 0 ..< lines.length() {
        if lines[i].indexOf("// @error") != () {
            test:assertTrue(lineNo is (), "multiple error annotations in file " + path);
            lineNo = i + 1;
        }
    }
    return lineNo;
}

// This outputs nothing
function testCompileFile(string filename) returns CompileError? {
    var [basename, _] = basenameExtension(filename);
    return compileBalFile(filename, basename, (), {}, {});
}
