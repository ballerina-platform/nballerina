import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.err;

final string SOURCE_DIR = check file:joinPath("..", "tests");

@test:Config {
    dataProvider: listValid
}
function testCompileValid(string path) returns error? {
    error? err = compileFile(path);
    // JBUG #31146 let's assert instead check to see the file name
    test:assertEquals(err, (), "compilation error " + path);
}

@test:Config {
    dataProvider: listPanic
}
function testCompilePanic(string path) returns error? {
    error? err = compileFile(path);
    test:assertEquals(err, (), "compilation error " + path);
}

@test:Config {
    dataProvider: listError
}
function testCompileError(string path) returns error? {
    error? err = compileFile(path);
    test:assertTrue(err is err:Semantic, "expected a semantic error " + path);
    var l = (<err:Semantic> err).detail().position?.lineNumber;
    test:assertEquals(l, check errorLine(path), "wrong error position " + path);
}

function listValid() returns string[][]|error => listSources("V");

function listPanic() returns string[][]|error => listSources("P");

function listError() returns string[][]|error => listSources("E");

function listSources(string prefix) returns string[][]|error {
    return from var entry in check file:readDir(SOURCE_DIR)
           let string path = entry.absPath
           let string base = check file:basename(path)
           where base.startsWith(prefix) && base.endsWith(SOURCE_EXTENSION)
           select [path];
}

function errorLine(string path) returns int|error {
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
