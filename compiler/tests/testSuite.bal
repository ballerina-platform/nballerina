import ballerina/test;
import ballerina/file;
import wso2/nballerina.front;
import ballerina/io;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;

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
    dataProvider: listSourcesT
}
function testSemTypes(string path, string kind) returns error? {
    SubtypeTestCase res = check readSubtypeTests(path);
    return testSubtypes([{ lines : res[1], filename : res[0] }], res[2]);
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
                if err is err:Unimplemented {
                    io:println(err);
                }
                test:assertFalse(err is err:Unimplemented, "unimplemented error on E test" + path);
            }
            // io:println U errors are reported as semantic errors
            else if !err.message().includes("'io:println'") {
                test:assertFalse(err is err:Semantic, "semantic error on U test" + path);
            }
            if kind == "e" || kind == "ue" {
                var [expectedFilename, expectedLineNo] = <FilenameLine> check expectedErrorLocation(err, path);
                // JBUG #31334 cast needed
                err:Detail detail = <err:Detail> err.detail();
                test:assertTrue(detail.location is err:Location, "error without location");
                string filename =(<err:Location>detail.location).filename;
                test:assertEquals(file:getAbsolutePath(filename), expectedFilename, "invalid error filename" + filename);
                err:LineColumn? lc = detail.location?.startPos;
                if lc is err:LineColumn {
                    test:assertEquals(lc[0], expectedLineNo, "invalid error line number in " + expectedFilename);
                }
            }
        }
    }
    else {
        return err;
    }
}

type FilenameLine [string, int];

function expectedErrorLocation(CompileError err, string path) returns FilenameLine|file:Error|io:Error? {
    string? modulePath = check moduleDir(path);
    FilenameLine? errorLocation = ();
    if modulePath is string {
        foreach var md in check file:readDir(modulePath) {
            if md.dir {
                foreach var file in check file:readDir(md.absPath) {
                    errorLocation = check findErrorLine(file.absPath, errorLocation);
                }
            }
        }
    }
    errorLocation = check findErrorLine(path, errorLocation);
    test:assertFalse(errorLocation is (), "failed to find any files with error annotation for " + path);
    return errorLocation;
}

function moduleDir(string filePath) returns string|file:Error? {
    string subModPath = filePath.substring(0, filePath.length()-4) + ".modules";
    if check file:test(subModPath, file:IS_DIR) {
        return check file:normalizePath(subModPath, file:CLEAN);
    }
}

function findErrorLine(string filePath, FilenameLine? currentErrorLocation) returns FilenameLine|io:Error? {
    int? fileErrorLine = check errorLine(filePath);
    if fileErrorLine is int {
        test:assertTrue(currentErrorLocation is (), "multiple files with error annotations found");
        return [filePath, fileErrorLine];
    }
    else {
        return currentErrorLocation;
    }
}

function listSourcesVPO() returns TestSuiteCases|error => listSources("vpo");

function listSourcesEU() returns TestSuiteCases|error => listSources("eu");

function listSourcesT() returns TestSuiteCases|error => listSources("t");

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

function testSubtypes(front:SourcePart[] sources, string[] expected) returns error? {
    var [env, m] = check front:typesFromString(sources);
    var tc = t:typeContext(env);
    foreach var item in expected {
        s:TypeTest test = check s:parseTypeTest(item);
        t:SemType left = resolveTestSemtype(tc, m, test.left);
        t:SemType right = resolveTestSemtype(tc, m, test.right);
        match test.op { 
            "<" => {
                test:assertTrue(t:isSubtype(tc, left, right), "LHS is not a subtype of RHS");
                test:assertFalse(t:isSubtype(tc, right, left), "RHS is a subtype of LHS" );
            }
            "<>" => {
                test:assertFalse(t:isSubtype(tc, left, right), "LHS is a subtype of RHS");
                test:assertFalse(t:isSubtype(tc, right, left), "RHS is a subtype of LHS");
            }
            "=" => {
                test:assertTrue(t:isSubtype(tc, left, right), "LHS is not a subtype of RHS");
                test:assertTrue(t:isSubtype(tc, right, left), "RHS is not a subtype of LHS");
            }
        }
    }
}

function resolveTestSemtype(t:Context tc, map<t:SemType> m, string|s:TypeProjection tn) returns t:SemType {
    if tn is string {
        t:SemType? t = m[tn];
        if t is () {
            test:assertFail(tn + " is not declared");
        }
        else {
            return t;
        }
    }
    else {
        t:SemType? t = m[tn.identifier];
        if t is () {
            test:assertFail(tn.identifier + " is not declared");
        }
        else {
            int|string index = tn.index;
            if t:isSubtype(tc, t, t:LIST) {
                if index is int {
                    return t:listMemberType(tc, t, index);
                }
                test:assertFail("index for list must be an integer");
            }
            else if t:isSubtype(tc, t, t:MAPPING) {
                if index is string {
                    return t:mappingMemberType(tc, t, index);
                }
                test:assertFail("index for mapping must be a string");
            }
            else {
                test:assertFail(tn.identifier + " is not a list or a mapping type");
            } 
        }
    }
    // JBUG: #31642 function must return a call
    panic error("unreachable");
}
