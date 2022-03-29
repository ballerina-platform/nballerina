import ballerina/io;
import ballerina/file;

type BaltTestCase record {|
    string[] header;
    string[] labels;
    string[] content;
|};

enum State {
    BOF,
    HEADER,
    LABEL,
    CONTENT
}

public function main(string[] paths) {
    foreach string path in paths {
        BaltTestCase[] tests = checkpanic parseTest(path);
        if tests.length() == 0 {
            continue;
        }
        string filename = checkpanic file:basename(path);
        checkpanic outputTest(tests, filename);
    }
}

function parseTest(string path) returns BaltTestCase[]|io:Error {
    BaltTestCase[] testCases = [];
    string[] lines = check io:fileReadLines(path);
    string[] header = [];
    string[] labels = [];
    string[] content = [];
    State s = BOF;
    foreach string line in lines {
        if line.startsWith("Test-Case:") {
            if s != BOF {
                testCases.push({ header, labels, content });
                header = [];
                labels = [];
                content = [];
            }
            s = HEADER;
            header.push(line);
            // todo: keep adding the rest of header
        }
        else if line.startsWith("Labels:") {
            var [_, fBody] = parseField(line);
            labels = parseLabels(fBody);
            s = LABEL;
        }
        else {
            if s is HEADER|LABEL && line.trim() == "" {
                s = CONTENT;
                continue;
            }
            match s {
                HEADER => {
                    header.push(line);
                }
                LABEL => {
                    labels.push(...parseLabels(line));
                }
                CONTENT => {
                    var [contentLine, newLabels] = transformContent(line);
                    content.push(contentLine);
                    labels.push(...newLabels);
                }
            }
        }
    }
    if s != BOF {
        testCases.push({ header, labels, content });
    }
    return testCases;
}

function transformContent(string line) returns [string, string[]] {
    string[] newLabels = [];
    string initFunc = "function init()";
    string newLine;
    if line.startsWith(initFunc) {
        newLine = "public function main()" + line.substring(initFunc.length());
        if line.indexOf("returns") != () {
            newLabels.push("main-return");
        }
    }
    else {
        newLine = line;
    }
    if line.startsWith("int") {
        newLabels.push("mod-var-decl");
    }
    return [newLine, newLabels];
}

function parseField(string s) returns [string, string] {
    int? i = s.indexOf(":");
    if i == () {
        panic error("Missing `:` in field : " + s);
    } else {
        string fieldName = s.substring(0, i);
        string fieldValue = s.substring(i + 1);
        return [fieldName, fieldValue.trim()];
    }
}

function parseLabels(string s) returns string[] {
    string[] labels = [];
    string[] content = [];
    foreach string:Char c in s {
        if c == "," {
            labels.push("".'join(...content));
            content = [];
        }
        else if c == " " {
            continue;
        }
        else {
            content.push(c);
        }
    }
    if content.length() != 0 {
        labels.push("".'join(...content));
    }
    return labels;
}

function outputTest(BaltTestCase[] tests, string filename) returns io:Error? {
    string[] body = [];
    foreach BaltTestCase test in tests {
        body.push(...test.header);
        body.push("Labels: " + ", ".'join(...test.labels));
        body.push("");
        body.push(...test.content);
    }
    // change root dir
    string outputFileName = "./tests/" + filename;

    check io:fileWriteLines(outputFileName, body);
}
