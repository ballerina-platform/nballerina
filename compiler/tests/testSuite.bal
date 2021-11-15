import ballerina/test;
import ballerina/file;
import wso2/nballerina.front;
import ballerina/io;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;

import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

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
        if err is err:Diagnostic {
            string? defnName = err.detail().defnName;
            if defnName != () {
                msg += " :definition " + defnName;
            }
        }
        test:assertEquals(err, (), msg);
    }
}

@test:Config {
    dataProvider: listSourcesTVE
}
function testSemTypes(string path, string kind) returns error? {
    SubtypeTestCase res = check readSubtypeTests(path);
    error? err;
    if kind == "te" {
        err =  testSubtypes([{ lines : res[1], filename : res[0] }], res[2], true);
    }
    else {
        err =  testSubtypes([{ lines : res[1], filename : res[0] }], res[2]);
    }
    return err;
}

@test:Config {
    dataProvider: listSourcesEU
}
function testCompileEU(string path, string kind) returns file:Error|io:Error? {
    CompileError? err = testCompileFile(path);
    if err is err:Diagnostic? {
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
            else if !err.detail().message.includes("'io:println'") {
                test:assertFalse(err is err:Semantic, "semantic error on U test" + path);
            }
            if kind == "e" || kind == "ue" {
                var [expectedFilename, expectedLineNo] = <FilenameLine> check expectedErrorLocation(err, path);
                d:Location loc = err.detail().location;
                string filename = loc.file.filename();
                test:assertEquals(file:getAbsolutePath(filename), expectedFilename, "invalid error filename" + filename);
                d:LineColumn? lc = d:locationLineColumn(loc);
                if lc is d:LineColumn {
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
    return ();
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

function listSourcesTVE() returns TestSuiteCases|error => listSources("t");

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

function testSubtypes(front:SourcePart[] sources, string[] expected, boolean semErr = false) returns error? {
    var [env, m] = check front:typesFromString(sources, semErr);
    var tc = t:typeContext(env);
    foreach var item in expected {
        s:TypeTest test = check s:parseTypeTest(item);
        t:SemType left = resolveTestSemtype(tc, m, test.left);
        t:SemType right = resolveTestSemtype(tc, m, test.right);
        
        boolean lsr = t:isSubtype(tc, left, right);
        boolean rsl = t:isSubtype(tc, right, left);
        boolean[2] testPair = [lsr, rsl]; 
        match test.op { 
            "<" => {
                test:assertEquals(testPair, [true, false], "LHS is not a proper subtype of RHS");
            }
            "<>" => {
                test:assertEquals(testPair, [false, false], "LHS and RHS are subtypes");
            }
            "=" => {
                test:assertEquals(testPair, [true, true], "LHS is not equivalent to RHS");
            }
        }
    }
}

function resolveTestSemtype(t:Context tc, map<t:SemType> m, s:Identifier|s:TypeProjection tn) returns t:SemType {
    if tn is s:Identifier {
        return lookupSemtype(m, tn);
    }
    else {
        t:SemType t = lookupSemtype(m, tn.identifier);
        int|s:Identifier index = tn.index;
        if t:isSubtypeSimple(t, t:LIST) {
            if index is int {
                return t:listMemberType(tc, t, index);
                //return t:listProj(tc, t, index);
            }
            else {
                t:SemType k = lookupSemtype(m, index);
                if k == t:INT {
                    return t:listMemberType(tc, t, ());
                }
                t:Value? val = t:singleShape(k);
                if val is t:Value && val.value is int {
                    return t:listMemberType(tc, t, <int> val.value);
                }
                test:assertFail("index for list projection must be an int");
            }
        }
        else if t:isSubtypeSimple(t, t:MAPPING) {
            if index is s:Identifier {
                t:SemType k = lookupSemtype(m, index);
                if k == t:STRING {
                    return t:mappingMemberType(tc, t, ());
                }
                t:Value? val = t:singleShape(k);
                if val is t:Value && val.value is string {
                    return t:mappingMemberType(tc, t, <string> val.value);
                }
            }
            test:assertFail("index for mapping projection must be a string");
        }
        else {
            test:assertFail(tn.identifier + " is not a list or a mapping type");
        } 
    }
    // JBUG: #31642 function must return a call
    panic error("unreachable");
}

function lookupSemtype(map<t:SemType> m, s:Identifier id) returns t:SemType {
    t:SemType? t = m[id];
    if t is () {
        test:assertFail(id + " is not declared");
    }
    else {
        return t;
    }
    // JBUG: #31642 function must return a call
    panic error("unreachable");
}
