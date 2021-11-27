import wso2/nballerina.bir;
import wso2/nballerina.nback;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

import ballerina/io;
import ballerina/file;

type CompileError err:Diagnostic|io:Error|file:Error;

public type Options record {
    boolean testJsonTypes = false;
    boolean showTypes = false;
    boolean errorReport = false;
    int? debugLevel;
    // outDir also implies treating each file as a separate module
    string? outDir = ();
    string? expectOutDir = ();
    string? gc = ();
    *OutputOptions;
};

const DEFAULT_ROOT_MODULE_NAME = "root";
final bir:ModuleId DEFAULT_ROOT_MODULE_ID = { org: "", names: [DEFAULT_ROOT_MODULE_NAME] };

const SOURCE_EXTENSION = ".bal";
const TEST_EXTENSION = ".balt";
public function main(string[] filenames, *Options opts) returns error? {
    if filenames.length() == 0 {
        return error("no input files");
    }
    if opts.testJsonTypes {
        if filenames.length() > 1 {
            return error("multiple input files not supported with --testJsonTypes");
        }
        check testJsonTypes(filenames[0]);
        return;
    }
    if opts.showTypes {
        if filenames.length() > 1 {
            return error("multiple input files not supported with --showTypes");
        }
        check printDiagnostic(showTypes([{ filename: filenames[0] }]));
        return;
    }
    nback:Options nbackOptions = {
        gcName: check nback:validGcName(opts.gc),
        debugLevel: check nback:validDebugLevel(opts.debugLevel)
    };
    err:Diagnostic[] diagnosticErr = [];
    foreach string filename in filenames {
        var [basename, ext] = basenameExtension(filename);
        if ext == SOURCE_EXTENSION {
            CompileError? err;
            if opts.errorReport {
                err = compileBalFile(filename, basename, check chooseOutputBasename(basename, opts.outDir), nbackOptions, opts);
            }
            else {
                err = printDiagnostic(compileBalFile(filename, basename, check chooseOutputBasename(basename, opts.outDir), nbackOptions, opts));
            }
            if err is err:Diagnostic {
                diagnosticErr.push(err);
            }
            // JBUG: #34014
            // can't use else { check err; }
            else if err != () {
                return err;
            }
        }
        else if ext == TEST_EXTENSION {
            check compileBaltFile(filename, opts.outDir ?: check file:parentPath(filename), nbackOptions, opts);
        }
        else if ext == () {
            return error("input filename must have a .bal or .balt extension");
        }
        else {
            return error(d:messageFormat(`unsupported extension ${ext}`));
        }
    }
    if opts.errorReport {
        check outputErrorReport(diagnosticErr, "errorReport.html");
    }
    int errorFileCount = diagnosticErr.length();
    if errorFileCount != 0 {
        string files = errorFileCount == 1 ? "file" : "files";
        return error(string `compilation of ${errorFileCount} ${files} failed`);
    }
}

function printDiagnostic(CompileError? err) returns CompileError? {
    if err is err:Diagnostic {
        foreach string line in d:format(err.detail()) {
            io:fprintln(io:stderr, line);
        }
    }
    return err;
}

// Basename here means filename without extension
function chooseOutputBasename(string sourceBasename, string? outDir = ()) returns string|error {
    if outDir == () {
        return sourceBasename;
    }
    else {
        return check file:joinPath(outDir, check file:basename(sourceBasename));
    }
}

// Note that this converts extension to lower case
function basenameExtension(string filename) returns [string, string?] {
    int? extIndex = filename.lastIndexOf(".");
    if extIndex is int {
        return [filename.substring(0, extIndex), filename.substring(extIndex).toLowerAscii()];
    }
    return [filename, ()];
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

// Helper functions releated to error report generation
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
