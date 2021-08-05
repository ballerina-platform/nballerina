import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.nback;
import wso2/nballerina.err;
import wso2/nballerina.jni.llvm;

import ballerina/io;
import ballerina/file;

type CompileError err:Any?|io:Error;

public type Options record {|
    boolean testJsonTypes = false;
    boolean showTypes = false;
    string? outDir = ();
    string? gc = ();
    boolean outputObjectFile = false;
    string? optLevel = ();
    string? relocMode = ();
    string? codeModel = ();
|};

const LOWER = "abcdefghijklmnopqrstuvwxyz";
const UPPER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const string VALID_GC_NAME_CHARS = LOWER + UPPER + "-_";
# The preferred output extension for the output filename.
const OUTPUT_EXTENSION = ".ll";
const OBJECT_FILE_EXTENSION = ".o";

const SOURCE_EXTENSION = ".bal";
public function main(string[] filenames, *Options opts) returns error? {
    string? gc = check validGcName(opts.gc);
    foreach string filename in filenames {
        if opts.testJsonTypes {
            check testJsonTypes(filename);
            continue;
        }
        if opts.showTypes {
            check showTypes(filename);
            continue;
        }
        check compileFile(filename, gc, opts);
    }  
}

function validGcName(string? gcName) returns string|error? {
    if gcName is () {
        return ();
    } 
    else {
        foreach var c in gcName {
            if !VALID_GC_NAME_CHARS.includes(c) { 
                return error("invalid gc name " + gcName); 
            }
        }
        return gcName;
    }
}

//  outputFilename of () means don't output anything
function compileFile(string filename, string? gcName, *Options opts) returns CompileError {
    string? outputFileName = checkpanic chooseOutputFilename(filename, OUTPUT_EXTENSION, opts.outDir);
    string? objectFileName = ();
    if opts.outputObjectFile {
        objectFileName = checkpanic chooseOutputFilename(filename, OBJECT_FILE_EXTENSION, opts.outDir);
    }
    bir:ModuleId id = {
       names: [filename],
       organization: "dummy"
    };
    bir:Module birMod = check front:loadModule(filename, id);
    llvm:Context context = new;
    llvm:Module llMod = check nback:buildModule(birMod, context, {gcName: gcName});

    if nback:target != "" {
        llMod.setTarget(nback:target);
    }
    if outputFileName != () {
        check llMod.printModuleToFile(outputFileName);
    }
    if objectFileName != () {
        check llMod.printModuleToObjectFile(objectFileName, {
            optLevel: opts.optLevel, relocMode: opts.relocMode, codeModel: opts.codeModel
        });
    }
}

function chooseOutputFilename(string sourceFilename, string outputExtension, string? outDir) returns string|error? {
    string filename;
    if outDir == () {
        filename = sourceFilename;
    }
    else {
        filename = check file:joinPath(outDir, check file:basename(sourceFilename));
    }
    var [base, extension] = basenameExtension(filename);
    if extension != SOURCE_EXTENSION {
        return error("filename must end with " + SOURCE_EXTENSION);
    }
    return base + outputExtension;
}

// Note that this converts extension to lower case
function basenameExtension(string filename) returns [string, string?] {
    int? extIndex = filename.lastIndexOf(".");
    if extIndex is int {
        return [filename.substring(0, extIndex), filename.substring(extIndex).toLowerAscii()];
    }
    return [filename, ()];
}
