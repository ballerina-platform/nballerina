import ballerina/io;

function buildOutput(Module module, string outputPath) returns error? {
    Output out = check new (outputPath);
    module.output(out);
    check out.finish();
}

function compareFiles(string expectedFilePath, string resultFilePath) returns boolean|error {
    string[] expectedLines = check io:fileReadLines(expectedFilePath);
    string[] resultLines = check io:fileReadLines(resultFilePath);
    return expectedLines == resultLines;
}
