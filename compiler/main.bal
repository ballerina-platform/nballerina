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
        CompileError? err = showTypes([{ filename: filenames[0] }]);
        if err is err:Diagnostic {
            printDiagnostic(err);
            return error(""); // we don't need to show any thing for this error because printDiagnostic already does it;
        }
        return err;
    }
    nback:Options nbackOptions = {
        gcName: check nback:validGcName(opts.gc),
        debugLevel: check nback:validDebugLevel(opts.debugLevel)
    };
    int errorFileCount = 0;
    foreach string filename in filenames {
        var [basename, ext] = basenameExtension(filename);
        if ext == SOURCE_EXTENSION {
            CompileError? err = compileBalFile(filename, basename, check chooseOutputBasename(basename, opts.outDir), nbackOptions, opts);
            if err is err:Diagnostic {
                printDiagnostic(err);
                errorFileCount += 1;
            }
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
    if errorFileCount != 0 {
        return error(string `compilation failed due to errors in ${errorFileCount} file(s)`);
    }
}

function printDiagnostic(err:Diagnostic err) {
    foreach string line in d:format(err.detail()) {
        io:fprintln(io:stderr, line);
    }
    // Don't want details to be displayed twice
    io:fprintln(io:stderr, err.message());
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
