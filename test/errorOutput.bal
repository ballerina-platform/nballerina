import ballerina/io;
import ballerina/file;
import ballerina/regex;

public function main() {
    string[] logPaths = checkpanic getLogPaths();
    ErrorLog[] logs = [];
    foreach string path in logPaths {
        logs.push(checkpanic  parseLog(path));
    }
    checkpanic io:fileWriteLines("errorOutput.html", checkpanic generateOutput(logs));
}

function getLogPaths() returns string[]|io:Error|file:Error {
    string[] paths = [];
    foreach var collection in check file:readDir("./out") {
        if !check file:test(collection.absPath, file:IS_DIR) {
            continue;
        }
        string errLogPath = check file:joinPath(collection.absPath, "err_logs");
        if check file:test(errLogPath, file:IS_DIR) {
            foreach var log in check file:readDir(errLogPath) {
                paths.push(log.absPath);
            }
        }
    }
    return paths;
}

type ErrorLog record {|
    string filePath;
    string[] lines;
    string errorMessage;
    string[] errorLines;
|};

function parseLog(string logPath) returns ErrorLog|error {
    string[] lines = check io:fileReadLines(logPath);
    string[] data = regex:split(lines[0], ":");
    string errorMessage = "".'join(...data.slice(4, data.length()));
    string filePath = check parseFilePath(data[0]);
    Location startLoc = [check int:fromString(data[1]), check int:fromString(data[2])];
    string[] errorLines = check getErrorLines(filePath, startLoc);
    return { filePath, lines, errorMessage, errorLines };
}

function parseFilePath(string relativePath) returns string|file:Error {
    string filePath = check file:normalizePath((check file:joinPath(file:getCurrentDir(), relativePath.substring(5))), file:CLEAN);
    return filePath;
}

type Location [int, int];

function getErrorLines(string filePath, Location startLoc) returns [string]|io:Error {
    string[] lines = check io:fileReadLines(filePath);
    return [lines[startLoc[0]-1].trim()];
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
    body.push(string `<td><pre>${"<br>".'join(...log.errorLines)}</pre></td>`);
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
    body.push("<th>Error source</th>");
    body.push("<th>File</th>");
    body.push("<th>Log</th>");
    body.push("</tr>");
}

function addStyles(string[] body) {
    body.push("<style>");
    body.push("table { width: 100%; padding: 10px }");
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
