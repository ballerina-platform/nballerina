import ballerina/io;
import ballerina/file;
import ballerina/test;

type TestFunction function() returns Module;

function runTest(TestFunction func, string expectedFilename) returns io:Error|file:Error? {
    string expectedPath = check file:joinPath(file:getCurrentDir(), "modules", "print.llvm", "tests", "testOutputs", expectedFilename);
    string[] expectedLines = check io:fileReadLines(expectedPath);
    string expectedOutput = "\n".'join(...expectedLines);
    Module mod = func();
    string actualOutput = mod.printModuleToString();
    test:assertEquals(actualOutput, expectedOutput);
}
