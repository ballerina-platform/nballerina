import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.nback;
import wso2/nballerina.err;
import wso2/nballerina.jni.llvm;

import ballerina/io;
import ballerina/file;

type CompileError err:Any|io:Error;

public type Options record {|
    boolean testJsonTypes = false;
    boolean showTypes = false;
    // outDir also implies treating each file as a separate module
    string? outDir = ();
    string? expectOutDir = ();
    string? gc = ();
    string? target = ();
    boolean o = false;
    string? optLevel = ();
    string? relocMode = ();
    string? codeModel = ();
|};

const LOWER = "abcdefghijklmnopqrstuvwxyz";
const UPPER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const string VALID_GC_NAME_CHARS = LOWER + UPPER + "-_";
# The preferred output extension for the output filename.
const OUTPUT_EXTENSION = ".ll";
const SOURCE_EXTENSION = ".bal";
const TEST_EXTENSION = ".balt";
const OBJECT_FILE_EXTENSION = ".o";
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
                if ext == TEST_EXTENSION {
                    return error("balt compilation requires `outDir` to be passed");
                }
                return error(unknownExtensionMessage(ext));
            }
            sources.push({filename});
        }
        if opts.showTypes {
            check showTypes(sources);
        }
        else {
            ObjectFileOptions? objOpts = ();
            if opts.o {
                objOpts = {
                    fileName: check chooseOutputFilename(filenames[0]) + OBJECT_FILE_EXTENSION,
                    target: opts.target,
                    optLevel:opts.optLevel,
                    relocMode: opts.relocMode,
                    codeModel: opts.codeModel
                };
            }
            OutputOptions outOptions = {
                filename: check chooseOutputFilename(filenames[0]) + OUTPUT_EXTENSION,
                target: opts.target
            };
            check compileModule(dummyModuleId(filenames[0]), sources, nbackOptions, outOptions, objOpts);
        }
    }
    else {
        foreach string filename in filenames {
            var [_, ext] = basenameExtension(filename);
            if ext == SOURCE_EXTENSION {
                OutputOptions outOptions = {
                    filename: check chooseOutputFilename(filename, outDir) + OUTPUT_EXTENSION,
                    target: opts.target
                };
                ObjectFileOptions? objOpts = ();
                if opts.o {
                    objOpts = {
                        fileName: check chooseOutputFilename(filename, outDir) + OBJECT_FILE_EXTENSION,
                        target: opts.target,
                        optLevel:opts.optLevel,
                        relocMode: opts.relocMode,
                        codeModel: opts.codeModel
                    };
                }
                check compileModule(dummyModuleId(filename), [{ filename }], nbackOptions, outOptions, objOpts);
            }
            else if ext == TEST_EXTENSION {
                check compileBalt(filename, opts.expectOutDir, outDir, opts.target, nbackOptions);
            }
            else {
                return error(unknownExtensionMessage(ext));
            }
        }
    }
}

function unknownExtensionMessage(string? ext) returns string {
    if ext == () {
        return "input filename must have a .bal or .balt extension";
    }
    else {
        return err:format(`unsupported extension ${ext}`);
    }
}

function compileBalt(string filename, string? expectOutDir, string outDir, string? target, nback:Options nbackOptions) returns error? {
    BaltTestCase[] tests = check parseBalt(filename);
    foreach var [i, t] in tests.enumerate() {
        if t.header.Test\-Case == "error" || t.header["Fail-Issue"] != () {
            continue;
        }
        string outBasename = chooseBaltCaseOutputFilename(t, i);
        OutputOptions outOptions = {
            filename: check file:joinPath(outDir, outBasename) + OUTPUT_EXTENSION,
            target: target
        };
        string[] lines = t.content;
        check compileModule(dummyModuleId(filename), [{ lines }], nbackOptions, outOptions);
        string expectFilename = check file:joinPath(expectOutDir ?: outDir, outBasename) + ".txt";
        check io:fileWriteLines(expectFilename, expect(t.content));
    }
}

function dummyModuleId(string filename) returns bir:ModuleId {
    return { names: [filename], organization: "dummy" };
}

type OutputOptions record {|
    string? filename = ();
    string? target = ();
|};

type ObjectFileOptions record {|
    string fileName;
    string? target = ();
    string? optLevel = ();
    string? relocMode = ();
    string? codeModel = ();
|};

function compileModule(bir:ModuleId modId, front:SourcePart[] sources, nback:Options nbackOptions, OutputOptions outOptions, ObjectFileOptions? objOptions =()) returns CompileError? {
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
    if objOptions is ObjectFileOptions {
        string? target = objOptions.target;
        if target != () {
            llMod.setTarget(target);
        }
        check llMod.printModuleToObjectFile(objOptions.fileName, {
            optLevel: objOptions.optLevel, relocMode: objOptions.relocMode, codeModel: objOptions.codeModel
        });
    }
}

function chooseOutputFilename(string sourceFilename, string? outDir = ()) returns string|error {
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
    return base;
}

// Note that this converts extension to lower case
function basenameExtension(string filename) returns [string, string?] {
    int? extIndex = filename.lastIndexOf(".");
    if extIndex is int {
        return [filename.substring(0, extIndex), filename.substring(extIndex).toLowerAscii()];
    }
    return [filename, ()];
}
