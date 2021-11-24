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


function parseLog(string filePath) returns ErrorLog|io:Error {
    string[] lines = check io:fileReadLines(filePath);
    string[] data = regex:split(lines[0], ":");
    string errorMessage = "".'join(...data.slice(4, data.length()));
    return { filePath, lines, errorMessage };
}
