import ballerina/test;
import ballerina/file;

final string SOURCE_DIR = check file:joinPath("..", "tests");

@test:Config {
    dataProvider: listPositive
}
function testPositive(string path) returns error? {
    // JBUG due to #31146 let's assert so we see the file name
    error? err = main(path);
    test:assertEquals(err, (), "compilation error " + path);
}

function listPositive() returns string[][]|error {
    return from var entry in check file:readDir(SOURCE_DIR)
           let string path = entry.absPath
           let string base = check file:basename(path)
           where base.startsWith("V") && base.endsWith(SOURCE_EXTENSION)
           select [path];
}
