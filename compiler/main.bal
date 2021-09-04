import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.nback;
import wso2/nballerina.err;
import wso2/nballerina.print.llvm;

import ballerina/io;
import ballerina/file;

type CompileError err:Any|io:Error;

public type Options record {|
    boolean testJsonTypes = false;
    boolean showTypes = false;
    // outDir also implies treating each file as a separate module
    string? outDir = ();
    string? gc = ();
    string? target = ();
|};


# The preferred output extension for the output filename.
const OUTPUT_EXTENSION = ".ll";
const SOURCE_EXTENSION = ".bal";
public function main(string[] filenames, *Options opts) returns error? {
    if filenames.length() == 0 {
        return error("no input files");
    }
    if opts.testJsonTypes {
        if filenames.length() > 1 {
            return error("multiple input files not supported with --testJsonTypes");
        }
        check testJsonTypes(filenames[0]);
    }
    nback:Options nbackOptions = { gcName: check nback:validGcName(opts.gc) };
    string? outDir = opts.outDir;
    if outDir == () {
        front:SourcePart[] sources = [];
        foreach string filename in filenames {
            var [_, ext] = basenameExtension(filename);
            if ext != SOURCE_EXTENSION {
                return error("don't know what to do with: " + filename);
            }
            sources.push({filename});
        }
        if opts.showTypes {
            check showTypes(sources);
        }
        else {
            OutputOptions outOptions = {
                filename: check chooseOutputFilename(filenames[0]),
                target: opts.target
            };
            check compileModule(dummyModuleId(filenames[0]), sources, nbackOptions, outOptions);
        }
    }
    else {
        foreach string filename in filenames {
            OutputOptions outOptions = {
                filename: check chooseOutputFilename(filename, outDir),
                target: opts.target
            };
            check compileModule(dummyModuleId(filename), [{ filename }], nbackOptions, outOptions);
        }
    }       
}

function dummyModuleId(string filename) returns bir:ModuleId {
    return { names: [filename], organization: "dummy" };
}

type OutputOptions record {|
    string? filename = ();
    string? target = ();
|};

function compileModule(bir:ModuleId modId, front:SourcePart[] sources, nback:Options nbackOptions, OutputOptions outOptions) returns CompileError? {
    t:Env env = new;
    bir:Module birMod = check front:loadModule(env, sources, modId);
    llvm:Context context = new;
    llvm:Module llMod = check nback:buildModule(birMod, context, nbackOptions);
    string? outFilename = outOptions.filename;
    if outFilename != () {
        string? target = outOptions.target;
        if target != () {
            llMod.setTarget(target);
        }
        check llMod.printModuleToFile(outFilename);
    }
}

function chooseOutputFilename(string sourceFilename, string? outDir = ()) returns string|error? {
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
    return base + OUTPUT_EXTENSION;
}

// Note that this converts extension to lower case
function basenameExtension(string filename) returns [string, string?] {
    int? extIndex = filename.lastIndexOf(".");
    if extIndex is int {
        return [filename.substring(0, extIndex), filename.substring(extIndex).toLowerAscii()];
    }
    return [filename, ()];
}
