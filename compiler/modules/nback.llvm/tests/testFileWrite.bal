import ballerina/test;
import ballerina/file;

@test:Config {}
function testFileWriting()returns error? {
    Module m = basicMain();
    Output output = new ();
    m.output(output);
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp.ll");
    check m.writeFile(outputPath);
    check file:remove(outputPath);
}
