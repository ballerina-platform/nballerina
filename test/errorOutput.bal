import ballerina/io;
import ballerina/file;

public function main() {
    ErrorLog[] logs = checkpanic parseLogs("error_log.log");
    checkpanic io:fileWriteLines("./out/errorOutput.html", checkpanic generateOutput(logs));
}

type ErrorLog record {|
    string filePath;
    string[] lines;
    string errorMessage;
    string[] errorLines;
|};

function parseLogs(string logPath) returns ErrorLog[]|error {
    string[] lines = check io:fileReadLines(logPath);
    ErrorLog[] logs = [];
    int i = 0;
    while i < lines.length()-1 {
        string dataLine = lines[i];
        i+=2; // skip the next line
        ErrorMessage m = check parseErrorMessage(dataLine);
        logs.push({ filePath: m.filePath, lines: lines.slice(i, i+1), errorMessage: m.body, errorLines: check getErrorLines(m.filePath, m.startLoc) });
    }
    return logs;
}

type ErrorMessage record {|
    string filePath;
    string body;
    Location startLoc;
|};

function parseErrorMessage(string errMessage) returns ErrorMessage|error {
    int filePathEnd = <int> errMessage.indexOf(":");
    string filePath = check parseFilePath(errMessage.substring(0, filePathEnd));
    int lineEnd = <int> errMessage.indexOf(":", filePathEnd+1);
    int line = check int:fromString(errMessage.substring(filePathEnd+1, lineEnd));
    int ColumnEnd = <int> errMessage.indexOf(":", lineEnd+1);
    int column = check int:fromString(errMessage.substring(lineEnd+1, ColumnEnd));
    Location startLoc = [line, column];
    string body = errMessage.substring(ColumnEnd+1);
    return { filePath, body, startLoc };
}

function parseFilePath(string relativePath) returns string|file:Error {
    string filePath = check file:normalizePath((check file:joinPath(file:getCurrentDir(), relativePath)), file:CLEAN);
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
