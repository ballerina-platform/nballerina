import ballerina/io;
import ballerina/file;
import ballerina/regex;

public function main() {
    string[] logPaths = checkpanic getLogPaths();
    ErrorLog[] logs = [];
    foreach string path in logPaths {
        if checkpanic filterLogs(path) {
            logs.push(checkpanic  parseLog(path));
        }
    }
    checkpanic io:fileWriteLines("output.html", checkpanic generateOutput(logs));
}

function getLogPaths() returns string[]|io:Error|file:Error {
    string[] paths = [];
    foreach var dir in check file:readDir("./logs") {
        if !check file:test(dir.absPath, file:IS_DIR) {
            continue;
        }
        foreach var log in check file:readDir(dir.absPath) {
            paths.push(log.absPath);
        }
    }
    return paths;
}

final string[] IGNORED_LOGS = [
  "error: unsupported extension '.modules' {}",
  "error: java.lang.StackOverflowError",
  "error: no such file or directory:"
];

function filterLogs(string filePath) returns boolean|io:Error {
    string log = check io:fileReadString(filePath);
    foreach var each in IGNORED_LOGS {
       if log.startsWith(each) {
            return false;
       }
    }
    return true;
}

type ErrorLog record {|
    string filePath;
    string[] lines;
    string errorMessage;
|};

function parseLog(string logPath) returns ErrorLog|io:Error|file:Error {
    string[] lines = check io:fileReadLines(logPath);
    string[] data = regex:split(lines[0], ":");
    string errorMessage = "".'join(...data.slice(4, data.length()));
    string filePath = regex:replaceAll(check file:normalizePath(logPath, file:CLEAN), "/tools/err_logs/logs", "/compiler/testSuite");
    filePath = filePath.substring(0, filePath.length()-4);
    return { filePath, lines, errorMessage };
}

isolated function errMessage(ErrorLog log) returns string {
    return log.errorMessage;
}

function generateOutput(ErrorLog[] logs) returns string[]|error {
    ErrorLog[] sortedLogs = logs.sort("ascending", errMessage);
    string[] body = [];
    addPrefix(body);
    foreach var log in sortedLogs {
       check addLog(body, log);
    }
    addSuffix(body);
    return body;
}

function addLog(string[] body, ErrorLog log) returns error? {
    body.push("<tr>");
    body.push(string `<td>${log.errorMessage}</td>`);
    string fileName = check file:basename(log.filePath);
    body.push(string `<td><a href="file:///${log.filePath}">${fileName}</a></td>`);
    body.push(string `<td><pre>${"<br>".'join(...log.lines)}</pre></td>`);
    body.push("</tr>");
}

function addPrefix(string[] body) {
    body.push("<html>");
    body.push("<head>");
    addStyles(body);
    body.push("<title> Error logs </title>");
    body.push("</head>");
    body.push("<body>");
    body.push("<table>");

    body.push("<tr>");
    body.push("<th>ErrorMessage</th>");
    body.push("<th>File</th>");
    body.push("<th>Log</th>");
    body.push("</tr>");
}

function addStyles(string[] body) {
    body.push("<style>");
    body.push("td,th { border: 1px solid #969393; padding: 4px; }");
    body.push("tr:nth-child(even){background-color: #f2f2f2;}");
    body.push("th { padding-top: 12px; padding-bottom: 12px; text-align: left; background-color: #874c4c; color: white;}");
    body.push("</style>");
}

function addSuffix(string[] body) {
    body.push("</html>");
    body.push("</body>");
    body.push("</table>");
}
