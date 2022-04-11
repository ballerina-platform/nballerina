import ballerina/file;
import ballerina/io;

public type Options record {|
    string baseDir;
    string transformedDir;
|};

type TestCase record {|
    string description; // we can use the description to check if the test cases are the same since we don't change it
    string[] content;
    string path;
|};

enum State {
    CONTENT,
    DESCRIPTION
}

enum TestDiffState {
    UNCHANGED,
    CHANGED,
    SKIPPED
}

type TestDiffResult record {|
    TestDiffState state;
    TestCase base;
    // this is nill if test is skipped or unchanged
    TestCase? transformed;
|};

type TestComparisionResult [TestDiffResult[], TestDiffResult[], TestDiffResult[]];

public function main(*Options opts) returns error? {
    TestDiffResult[] skipped = [];
    TestDiffResult[] unchanged = [];
    TestDiffResult[] changed = [];
    foreach var testDir in check file:readDir(opts.transformedDir) {
        if testDir.dir {
            var [newSkipped, newUnchanged, newChanged] = check compareDir(opts.baseDir, opts.transformedDir, check pathEnd(testDir.absPath));
            skipped.push(...newSkipped);
            changed.push(...newChanged);
            unchanged.push(...newUnchanged);
        }
    }
    check generateReport(skipped, unchanged, changed);
}

function compareDir(string baseDir, string transformedDir, string testDir) returns TestComparisionResult|file:Error|io:Error {
    string baseTestDir = check file:joinPath(baseDir, testDir);
    string transformedTestDir = check file:joinPath(transformedDir, testDir);
    TestDiffResult[] skipped = [];
    TestDiffResult[] changed = [];
    TestDiffResult[] unchanged = [];
    foreach var test in check file:readDir(transformedTestDir) {
        if !test.dir {
            var [newSkipped, newUnchanged, newChanged] = check compareTest(baseTestDir, transformedTestDir, check pathEnd(test.absPath));
            skipped.push(...newSkipped);
            changed.push(...newChanged);
            unchanged.push(...newUnchanged);
        }
    }
    return [skipped, unchanged, changed];
}

function compareTest(string baseTestDir, string transformedTestDir, string test) returns TestComparisionResult|file:Error|io:Error {
    string baseTestFile = check file:joinPath(baseTestDir, test);
    string transformedTestFile = check file:joinPath(transformedTestDir, test);
    TestCase[] baseTests = check parseTests(baseTestFile);
    TestCase[] transformedTests = check parseTests(transformedTestFile);
    return diffTest(baseTests, transformedTests);
}

function parseTests(string path) returns TestCase[]|io:Error|file:Error {
    string[] lines = check io:fileReadLines(path);
    string[] content = [];
    string description = "";
    TestCase[] tests = [];
    State s = CONTENT;
    foreach string line in lines {
        if line.startsWith("Test-Case:") {
            if content.length() != 0 {
                tests.push({ description, content, path });
            }
            content = [];
            description = "";
            s = CONTENT;
        }
        else if line.startsWith("Description:") {
            description = line;
            s = DESCRIPTION;
        }
        else if s is DESCRIPTION {
            if line.startsWith("Labels:") {
                s = CONTENT;
            }
            else {
                description += "\n" + line;
            }
        }
        content.push(line);
    }
    if content.length() != 0 {
        tests.push({ description, content, path });
    }
    return tests;
}

function diffTest(TestCase[] baseTests, TestCase[] transformedTests) returns TestComparisionResult {
    int baseIndex = 0;
    int transformedIndex = 0;
    TestDiffResult[] skipped = [];
    TestDiffResult[] unchanged = [];
    TestDiffResult[] changed = [];
    while baseIndex < baseTests.length() && transformedIndex < transformedTests.length() {
        var { description: baseDescription, content: baseContent } = baseTests[baseIndex];
        var { description: transformedDescription, content: transformedContent } = transformedTests[transformedIndex];
        if baseDescription != transformedDescription {
            skipped.push({ state: SKIPPED, base: baseTests[baseIndex], transformed: () });
        }
        else {
            if baseContent != transformedContent {
                changed.push({ state: CHANGED, base: baseTests[baseIndex], transformed: transformedTests[transformedIndex] });
            }
            else {
                unchanged.push({ state: UNCHANGED, base: baseTests[baseIndex], transformed: () });
            }
            transformedIndex = transformedIndex + 1;
        }
        baseIndex += 1;
    }
    while baseIndex < baseTests.length() {
        skipped.push({ state: SKIPPED, base: baseTests[baseIndex], transformed: () });
        baseIndex += 1;
    }
    if transformedIndex < transformedTests.length() {
        panic error("extra transformed tests");
    }
    return [skipped, unchanged, changed];
}

function generateReport(TestDiffResult[] skipped, TestDiffResult[] unchanged, TestDiffResult[] changed) returns error? {
    string[] body = [];
    body.push("<!DOCTYPE html>","<html>",
                "<head>",
                    "<link rel=\"stylesheet\" href=\"report.css\">",
                    "<script src=\"report.js\"> </script>",
                    string `<title> Report </title>`,
                "</head>",
                "<body>",
                    "<div class=\"tab\">",
                         "<button id=\"changedBtn\" class=\"tabBtn\" onclick=\"openTab(event, 'Changed')\">Changed</button>",
                         "<button id=\"skippedBtn\" class=\"tabBtn\" onclick=\"openTab(event, 'Skipped')\">Skipped</button>",
                         "<button id=\"unchangedBtn\" class=\"tabBtn\" onclick=\"openTab(event, 'Unchanged')\">Unchanged</button>",
                    "</div>");
    check generateNonDiffReport(skipped, "Skipped", body);
    check generateNonDiffReport(unchanged, "Unchanged", body);
    check generateDiffReport(changed, "Changed", body);
    body.push("</body>", "</html>");
    check io:fileWriteLines("./report/report.html", body);
}

function generateNonDiffReport(TestDiffResult[] diffs, string title, string[] body) returns error? {
    string currentPath = "";
    body.push(string `<div id="${title}" class="tabcontent">`);
    foreach TestDiffResult diff in diffs {
        string path = diff.base.path;
        if path != currentPath {
            if currentPath != "" {
                body.push("<hr>");
            }
            body.push(string `<h3>${check file:basename(path)}</h3>`);
            currentPath = path;
        }
        body.push(string `<pre>${"<br>".'join(...diff.base.content)}</pre>`);
        body.push("<hr>");
    }
    body.push("</div>");
}

function generateDiffReport(TestDiffResult[] diffs, string title, string[] body) returns error? {
    string currentPath = "";
    body.push(string `<div id="${title}" class="tabcontent">`);
    foreach TestDiffResult diff in diffs {
        string path = diff.base.path;
        if path != currentPath {
            currentPath = path;
            body.push("</table>");
            body.push(string `<h3>${check file:basename(path)}</h3>`);
            body.push(
                "<table>",
                "<tr>",
                "<th>Base</th>",
                "<th>Transformed</th>",
                "</tr>"
            );
        }
        body.push("<tr>");
        body.push(string `<td><pre>${"<br>".'join(...diff.base.content)}</pre></td>`);
        body.push(string `<td><pre>${"<br>".'join(...(<TestCase>diff.transformed).content)}</pre></td>`);
        body.push("</tr>");
    }
    body.push("</table>", "</div>");
}

function pathEnd(string absPath) returns string|file:Error {
    string[] parts = check file:splitPath(absPath);
    return parts[parts.length() - 1];
}
