import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.nback;

import ballerina/file;
import ballerina/io;

// the string is an error message that should be associated with the import declaration
type ProcessedImport front:ModuleExports|string;
type ResolvedImport ProcessedImport|();

const JOB_IN_PROGRESS = true;
const IMPORT_CYCLE_ERROR = "import cycle";

type Job record {|
    readonly bir:ModuleId id;
    ProcessedImport|JOB_IN_PROGRESS? result;
|};

type Emitter object {
   // Build and write the output to a file.
   function emitModule(bir:Module birMod) returns CompileError?;
   // Called after all calls to emitModule.
   function finalize(t:Env env, map<bir:FunctionSignature> potentialEntryFuncs) returns CompileError?;
};

class LlvmEmitter {
    *Emitter;
    private final nback:Options nbackOptions;
    private final string? outputBasename;
    final OutputOptions outputOptions;

    private final nback:ProgramModule[] programModules = [];

    function init(string? outputBasename = (), nback:Options nbackOptions = {}, OutputOptions outOptions = {}) {
        self.outputBasename = outputBasename;
        self.outputOptions = outOptions;
        self.nbackOptions = nbackOptions;
    }

    function emitModule(bir:Module birMod) returns CompileError? {
        var [llMod, typeUsage] = check nback:buildModule(birMod, self.nbackOptions);
        bir:ModuleId id = birMod.getId();
        string? outFilename = self.outputFilename(id.names.slice(1));
        if outFilename != () {
            check outputModule(llMod, outFilename, self.outputOptions);
        }
        self.programModules.push({ id, typeUsage });
    }

    function finalize(t:Env env, map<bir:FunctionSignature> potentialEntryFuncs) returns CompileError? {
        LlvmModule initMod = check nback:buildInitModule(env, self.programModules.reverse(), potentialEntryFuncs);
        string? initOutFilename = self.outputFilename(["_init"]);
        if initOutFilename != () {
            check outputModule(initMod, initOutFilename, self.outputOptions);
        }
    }

    private function outputFilename(string[] names) returns string? => outputFilename(self.outputBasename, names, ".ll");
}

class CompileContext {
    final t:Env env = new;
    final string basename;

    final table<Job> key(id) jobs = table [];

    function init(string basename) {
        self.basename = basename;
    }

    function job(bir:ModuleId id) returns Job {
        Job? j = self.jobs[id];
        if j is () {
            Job nj = { id, result: () };
            self.jobs.add(nj);
            return nj;
        }
        else {
            return j;
        }
    }
}

function outputFilename(string? outputBasename, string[] names, string ext) returns string? {
    if outputBasename == () {
        return ();
    }
    return ".".join(outputBasename, ...names) + ext;
}

// basename is filename without extension
function compileBalFile(front:SourcePart entrySrc, string basename, Emitter emitter) returns CompileError? {
    CompileContext cx = new(basename);
    front:ResolvedModule entryMod = check processModule(cx, DEFAULT_ROOT_MODULE_ID, [entrySrc], emitter);
    check entryMod.validMain();
    check emitter.finalize(cx.env, filterFuncs(entryMod.getExports()));
}

function processModule(CompileContext cx, bir:ModuleId id, front:SourcePart[] sourceParts, Emitter emitter) returns front:ResolvedModule|CompileError {
    front:ScannedModule scanned = check front:scanModule(sourceParts, id);
    // Fallowing doesn't properly pass the error back to the calling function if we get an error the import
    // ResolvedImport[] resolvedImports = from var mod in scanned.getImports() select check resolveImport(cx, mod);
    ResolvedImport[] resolvedImports = [];
    foreach var mod in scanned.getImports() {
        ResolvedImport ri = check resolveImport(cx, mod, emitter);
        resolvedImports.push(ri);
    }
    front:ResolvedModule mod = check front:resolveModule(scanned, cx.env, resolvedImports);
    check emitter.emitModule(mod);
    return mod;
}

function resolveImport(CompileContext cx, bir:ModuleId id, Emitter emitter) returns CompileError|ResolvedImport {
    if id == DEFAULT_ROOT_MODULE_ID {
        // SUBSET fixed root module name
        return IMPORT_CYCLE_ERROR;
    }
    if !isSubModule(id) {
        return ();
    }
    Job job = cx.job(id);
    var result = job.result;
    if result != () {
        if result == JOB_IN_PROGRESS {
            job.result = IMPORT_CYCLE_ERROR;
            return IMPORT_CYCLE_ERROR;
        }
        else {
            return result;
        }
    }
    job.result = JOB_IN_PROGRESS;
    var processed = check processImport(cx, id, emitter);
    job.result = processed;
    return processed;
}

function processImport(CompileContext cx, bir:ModuleId id, Emitter emitter) returns CompileError|ProcessedImport {
    var parts = check subModuleSourceParts(cx.basename, id);
    if parts.length() == 0 {
        return "no module parts found";
    }
    front:ResolvedModule mod = check processModule(cx, id, parts, emitter);
    return mod.getExports();
}

function isSubModule(bir:ModuleId id) returns boolean {
    return id.org == DEFAULT_ROOT_MODULE_ID.org && id.names[0] == DEFAULT_ROOT_MODULE_NAME && id.names.length() > 1;
}

function subModuleSourceParts(string basename, bir:ModuleId id) returns front:SourcePart[]|file:Error|io:Error {
    string directory = check file:joinPath(basename + ".modules", subModuleSuffix(id));
    return
        from var md in check file:readDir(directory)
        where !md.dir
        let var [_, ext] = basenameExtension(md.absPath)
        where ext == SOURCE_EXTENSION
        select {
            lines: check io:fileReadLines(md.absPath),
            filename: check file:normalizePath(check file:joinPath(directory, check file:basename(md.absPath)), file:CLEAN),
            directory
        };
}

function subModuleSuffix(bir:ModuleId id) returns string {
    return ".".'join(...id.names.slice(1));
}

function filterFuncs(front:ModuleExports defns) returns map<bir:FunctionSignature> {
    map<bir:FunctionSignature> result = {};
    foreach var [name, defn] in defns.entries() {
        if defn is bir:FunctionSignature {
            result[name] = defn;
        }
    }
    return result;
}
