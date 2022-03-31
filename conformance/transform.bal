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

public type Options record {
    string? skipList = ();
};

public function main(string[] paths, *Options opts) returns error? {
    string? skipList = opts.skipList;
    string[][] skipLables = skipList != () ? check parseSkipList(skipList) : [];
    int skipped = 0;
    int total = 0;
    foreach string path in paths {
        BaltTestCase[] tests = check parseTest(path);
        total += tests.length();
        string filename = check file:basename(path);
        skipped += check outputTest(tests, filename, skipLables);
    }
    io:println("skipped: ", skipped);
    io:println("updated: ", total - skipped);
    io:println("total: ", total);
}

function parseTest(string path) returns BaltTestCase[]|io:Error {
    BaltTestCase[] testCases = [];
    string[] lines = check io:fileReadLines(path);
    string[] header = [];
    string[] labels = [];
    string[] content = [];
    boolean useIoLib = false;
    State s = BOF;
    foreach string line in lines {
        if line.startsWith("Test-Case:") {
            if s != BOF {
                if useIoLib {
                    string[] newContent = ["import ballerina/io;"];
                    newContent.push(...content);
                    content = newContent;
                }
                testCases.push({ header, labels, content });
                header = [];
                labels = [];
                content = [];
                useIoLib = false;
            }
            s = HEADER;
            header.push(line);
            // todo: keep adding the rest of header
        }
        else if line.startsWith("Labels:") {
            var [_, fBody] = parseField(line);
            labels = parseCommaSeperatedList(fBody);
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
                    labels.push(...parseCommaSeperatedList(line));
                }
                CONTENT => {
                    var [contentLine, newLabels] = transformContent(line);
                    useIoLib = useIoLib ? useIoLib : contentLine.indexOf("io:") != ();
                    content.push(contentLine);
                    // pr-todo: make this more efficient
                    foreach var label in newLabels {
                        if labels.indexOf(label) == () {
                            labels.push(label);
                        }
                    }
                }
            }
        }
    }
    if s != BOF {
        if useIoLib {
            string[] newContent = ["import ballerina/io;"];
            newContent.push(...content);
            content = newContent;
        }
        testCases.push({ header, labels, content });
    }
    return testCases;
}

function parseSkipList(string skipListPath) returns string[][]|io:Error {
    return from string line in check io:fileReadLines(skipListPath) select parseCommaSeperatedList(line);
}

function transformContent(string line) returns [string, string[]] {
    string[] newLabels = [];
    string initFunc = "function init()";
    string newLine;
    if line.startsWith(initFunc) {
        newLine = "public function main()" + line.substring(initFunc.length());
        if line.indexOf("returns error") != () {
            newLabels.push("main-error");
        }
    }
    else {
        newLine = line;
    }
    if line.startsWith("int") {
        newLabels.push("mod-var-decl");
    }
    // pr-todo: remove this since we can't calculate the output automatically
    string intMax = "9223372036854775808";
    int? intMaxIndex = line.indexOf(intMax);
    while intMaxIndex is int {
        int intMaxEnd = intMaxIndex + intMax.length();
        newLine = newLine.substring(0, intMaxIndex) + "9223372036854775807" + newLine.substring(intMaxEnd);
        intMaxIndex = line.indexOf(intMax, intMaxEnd);
    }
    if line.indexOf("toBalString()") is int {
        newLabels.push("value:toBalString");
    }
    // pr-todo: make this a regex to better match pattern
    if line.indexOf("= +") is int {
        newLabels.push("unary-plus");
    }
    
    if line.indexOf("?:") is int {
        newLabels.push("ternary-conditional-expr");
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

function parseCommaSeperatedList(string s) returns string[] {
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

function outputTest(BaltTestCase[] tests, string filename, string[][] skipLables) returns int|io:Error {
    string[] body = [];
    int skipped = 0;
    foreach BaltTestCase test in tests {
        if !testValid(test, skipLables) {
            skipped += 1;
            continue;
        }
        body.push(...test.header);
        body.push("Labels: " + ", ".'join(...test.labels));
        body.push("");
        body.push(...test.content);
    }
    if body.length() == 0 {
        return skipped;
    }
    string outputFileName = "./tests/" + filename;
    check io:fileWriteLines(outputFileName, body);
    return skipped;
}

function testValid(BaltTestCase test, string[][] skipLables) returns boolean {
    foreach string[] labelGroup in skipLables {
        boolean invalid = true;
        foreach string label in labelGroup {
            if test.labels.indexOf(label, 0) == () {
                invalid = false;
                break;
            }
        }
        if invalid {
            return false;
        }
    }
    return true;
}
