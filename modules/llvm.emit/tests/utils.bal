import ballerina/io;

function buildOutput(Module module, string outputPath) returns error? {
    Output out = check new (outputPath);
    module.output(out);
    check out.finish();
}

function compareFiles(string expectedFilePath, string resultFilePath) returns boolean|error {
    io:ReadableByteChannel expectedByteChannel = 
                                check io:openReadableFile(expectedFilePath);
    io:ReadableCharacterChannel expectedChannel = 
                                new (expectedByteChannel, "UTF-8");
    string[] expectedLines = check expectedChannel.readAllLines();
    io:ReadableByteChannel resultByteChannel = 
                                check io:openReadableFile(resultFilePath);
    io:ReadableCharacterChannel resultChannel = 
                                new (resultByteChannel, "UTF-8");
    string[] resultLines = check resultChannel.readAllLines();
    return expectedLines == resultLines;
}
