import ballerina/io;

function buildOutput(Module module, string outputPath) returns error? {
    return module.writeFile(outputPath);
}

function compareFiles(string expectedFilePath, string resultFilePath) returns boolean|error {
    string[] expectedLines = check io:fileReadLines(expectedFilePath);
    string[] resultLines = check io:fileReadLines(resultFilePath);
    return expectedLines == resultLines;
}
