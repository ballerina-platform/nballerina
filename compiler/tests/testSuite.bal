import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.err;

const SOURCE_DIR = "testSuite";

@test:Config {
    dataProvider: listSourcesVP
}
function testCompileVP(string path) returns io:Error? {
    CompileError? err = compileFile(path, ());
    if err is io:Error {
        return err;
    }
    else {
        // JBUG #31146 let's assert instead check to see the file name
        string msg = "compilation error: ";
        if err is err:Any {
            // JBUG cast
            string? functionName = (<err:Detail>err.detail()).functionName;
            if functionName is string {
                msg += "function " + functionName + ": ";
            }
        }
        test:assertEquals(err, (), msg + path);
    }  
}

@test:Config {
    dataProvider: listSourcesE
}
function testCompileE(string path) returns io:Error? {
    CompileError? err = compileFile(path, ());
    // JBUG parentheses needed
    if (err is err:Any?) {
        if err is () {
            test:assertNotExactEquals(err, (), "expected an error " + path);
        }
        else {
            // XXX distinguish E and U tests
            // JBUG cast needed
            err:Position? pos = (<err:Detail>err.detail())?.position;
            if pos != () {
                test:assertEquals(pos.lineNumber, check errorLine(path), "wrong line number in error " + path);
            }
        }
    }
    else {
        return err;
    }
}

function listSourcesVP() returns string[][]|error => listSources("VP");

function listSourcesE() returns string[][]|error => listSources("E");

function listSources(string initialChars) returns string[][]|io:Error|file:Error {
    return from var entry in check file:readDir(SOURCE_DIR)
           let string path = entry.absPath
           // JBUG gets a bad, sad if includePath is inlined in the obvious way
           where check includePath(path, initialChars)
           select [path];
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
    // JBUG panic here cases a bytecode error
    // panic err:unreached();
    return 0;
}
