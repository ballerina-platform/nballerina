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
        string[] parts = check file:splitPath(path);
        string filename = parts[parts.length() - 1];
        string dir = parts[parts.length() - 2];
        skipped += check outputTest(tests, dir, filename, skipLables);
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
                content = addImports(content, useIoLib);
                testCases.push({ header, labels, content });
                header = [];
                labels = [];
                content = [];
                useIoLib = false;
            }
            s = HEADER;
            header.push(line);
        }
        else if line.startsWith("Labels:") {
            var [_, fBody] = parseField(line);
            labels = parseCharSeperatedList(fBody, ",");
            s = LABEL;
        }
        else if s is HEADER|LABEL && line.trim() == "" {
            s = CONTENT;
        }
        else {
            match s {
                HEADER => {
                    header.push(line);
                }
                LABEL => {
                    labels.push(...parseCharSeperatedList(line, ","));
                }
                CONTENT => {
                    var [contentLine, newLabels] = transformContent(line);
                    useIoLib = useIoLib ? useIoLib : contentLine.indexOf("io:") != ();
                    content.push(contentLine);
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
        content = addImports(content, useIoLib);
        testCases.push({ header, labels, content });
    }
    return testCases;
}

function addImports(string[] content, boolean useIoLib) returns string [] {
    if useIoLib {
        string[] newContent = ["import ballerina/io;"];
        newContent.push(...content);
        return newContent;
    }
    return content;
}

function parseSkipList(string skipListPath) returns string[][]|io:Error {
    return from string line in check io:fileReadLines(skipListPath) select parseCharSeperatedList(line, " ");
}

function transformContent(string line) returns [string, string[]] {
    string[] newLabels = [];
    string initFunc = "function init()";
    string negMax = "-9223372036854775808";
    string newLine;
    if line.startsWith(initFunc) {
        newLine = "public function main()" + line.substring(initFunc.length());
        if line.indexOf("returns error") != () {
            newLabels.push("main-error");
        }
    }
    else {
        newLine = line;
        int? negMaxIndex = newLine.indexOf(negMax);
        int? outputIndex = newLine.indexOf("@output");
        while negMaxIndex is int {
            if outputIndex is int && negMaxIndex > outputIndex {
                break;
            }
            newLine = newLine.substring(0, negMaxIndex) + "(-9223372036854775807 - 1)" + newLine.substring(negMaxIndex + negMax.length());
            negMaxIndex = newLine.indexOf(negMax);
        }
    }
    if line.startsWith("int") {
        // this is sufficient to catch current cases but not all possible cases
        newLabels.push("mod-var-decl");
    }
    if line.indexOf("toBalString()") is int {
        newLabels.push("value:toBalString");
    }
    if line.indexOf("= +") is int {
        // this is sufficient to catch current cases but not all possible cases
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

function parseCharSeperatedList(string s, string:Char sep) returns string[] {
    string[] labels = [];
    string[] content = [];
    foreach string:Char c in s {
        if c == sep {
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

// these are the test ids for tests we currently can't automatically fix by this script, tests are numbered starting with 1
map<int[]> skipTest = {
    "boolean_literal.balt" : [8, 10], // equality
    "int_literal.balt": [14, 17, 18], // decimal upper bound, equality, output
    "division.balt": [11], // panic to error
    "multiplication.balt": [6, 7], // panic to error
    "remainder.balt": [11], // panic to error
    "greater_than_expression.balt": [78], // unused variable
    "greater_than_or_equal_expression.balt": [78], // unused variable
    "less_than_expression.balt": [78], // unused variable
    "less_than_or_equal_expression.balt": [77], // unused variable
    "string_addition.balt": [21], // unused variable
    "unary_minus_expression.balt": [34, 35] // output
};

function outputTest(BaltTestCase[] tests, string dir, string filename, string[][] skipLables) returns int|io:Error {
    string[] body = [];
    int skipped = 0;
    int index = 0;
    int[] skipIndices = skipTest.hasKey(filename) ? skipTest.get(filename) : [];
    foreach BaltTestCase test in tests {
        index += 1;
        boolean skipTest = false;
        foreach int skipIndex in skipIndices {
            if skipIndex == index {
                skipTest = true;
                break;
            }
        }
        if skipTest || !testValid(test, skipLables) {
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
    string outputFileName = string `./tests/${dir}/${filename}`;
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