import wso2/nballerina.print.llvm;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

import ballerina/io;
import ballerina/file;

type LlvmModule llvm:Module;

# The preferred output extension for the output filename.
const OUTPUT_EXTENSION = ".ll";

type OutputOptions record {
    string? target = ();
};

function outputModule(LlvmModule llMod, string outFilename, OutputOptions options) returns io:Error? {
    string? target = options.target;
    if target != () {
        llMod.setTarget(target);
    }
    return llMod.printModuleToFile(outFilename);
}

function outputErrorReport(err:Diagnostic[] errors, string outputFilename) returns (file:Error|io:Error)? {
    string[] body = [];
    addErrorReportPrefix(body);
    foreach err:Diagnostic err in errors {
        check addErrorToReport(body, err);
    }
    addErrorReportSuffix(body);
    check io:fileWriteLines(outputFilename, body);
}

function addErrorToReport(string[] body, err:Diagnostic err) returns file:Error? {
    string[] errorLog = d:format(err.detail());
    string dataLine = errorLog[0];
    int fileEnd = <int>dataLine.indexOf(":");
    string filePath = check file:getAbsolutePath(dataLine.substring(0, fileEnd));
    string fileName = check file:basename(filePath);
    body.push("<tr>");
    body.push(string `<td><a href="file:///${filePath}">${fileName}</a></td>`);
    body.push(string `<td><pre>${"<br>".'join(...errorLog)}</pre></td>`);
    body.push("</tr>");
}

function addErrorReportPrefix(string[] body) {
    body.push("<html>");
    body.push("<head>");
    addErrorReportStyles(body);
    body.push("<title> Error logs </title>");
    body.push("</head>");
    body.push("<body>");

    body.push("<table>");
    body.push("<tr>");
    body.push("<th>File</th>");
    body.push("<th>Log</th>");
    body.push("</tr>");
}

function addErrorReportStyles(string[] body) {
    body.push("<style>");
    body.push("table { width: 100%; padding: 10px }");
    body.push("td,th { border: 1px solid #969393; padding: 4px; }");
    body.push("tr:nth-child(even){background-color: #f2f2f2;}");
    body.push("th { padding-top: 12px; padding-bottom: 12px; text-align: left; background-color: #874c4c; color: white;}");
    body.push("</style>");
}

function addErrorReportSuffix(string[] body) {
    body.push("</table>");
    body.push("</body>");
    body.push("</html>");
}
