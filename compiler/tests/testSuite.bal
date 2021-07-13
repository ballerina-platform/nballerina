import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.err;

const SOURCE_DIR = "testSuite";

@test:Config {
    dataProvider: listSourcesVPO
}
function testCompileVPO(string path) returns io:Error? {
    CompileError? err = compileFile(path, ());
    if err is io:Error {
        return err;
    }
    else {
        // JBUG #31146 let's assert instead check to see the file name
        string msg = "compilation error: ";
        if err is err:Any {
            // JBUG #31334 cast
            string? functionName = (<err:Detail>err.detail()).functionName;
            if functionName is string {
                msg += "function " + functionName + ": ";
            }
        }
        test:assertEquals(err, (), msg + path);
    }
}

@test:Config {
    dataProvider: listSourcesEU
}
function testCompileEU(string path) returns file:Error|io:Error? {
    CompileError? err = compileFile(path, ());
    if err is err:Any? {
        if err is () {
            test:assertNotExactEquals(err, (), "expected an error " + path);
        }
        else {
            string base = check file:basename(path);
            boolean isE = base[0].toUpperAscii() == "E";
            if isE {
                test:assertFalse(err is err:Unimplemented, "unimplemented error on E test" + path);
            }
            // io:println U errors are reported as semantic errors
            else if !err.message().includes("'io:println'") {
                test:assertFalse(err is err:Semantic, "semantic error on U test" + path);
            }
            // JBUG #31334 cast needed
            err:Position? pos = (<err:Detail>err.detail())?.position;
            if (isE || base[1].toUpperAscii() == "E") && pos != () {
                test:assertEquals(pos.lineNumber, check errorLine(path), "wrong line number in error " + path);
            }
        }
    }
    else {
        return err;
    }
}

function listSourcesVPO() returns map<[string]>|error => listSources("VPO");

function listSourcesEU() returns map<[string]>|error => listSources("EU");

function listSources(string initialChars) returns map<[string]>|io:Error|file:Error {
    map<[string]> cases = {};
    // JBUG #31681 `check from ...` doesn't work
    var e = from var entry in check file:readDir(SOURCE_DIR)
            let string path = entry.absPath
            let string base = check file:basename(path)
            // JBUG #31360 gets a bad, sad if includePath is inlined in the obvious way
            where check includePath(path, initialChars)
            do {
              cases[base] = [path];
            };
    test:assertEquals(e, ());
    return cases;
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
