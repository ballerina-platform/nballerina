import ballerina/test;
import ballerina/file;

@test:Config {}
function testFileWriting()returns error? {
    Module m = basicMain();
    Output output = new ();
    m.output(output);
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "print.llvm", "tests", "testOutputs", "tmp.ll");
    check m.printModuleToFile(outputPath);
    check file:remove(outputPath);
}
