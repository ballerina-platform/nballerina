import ballerina/io;

import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.err;

type ModuleTable table<s:ModuleLevelDefn> key(name);

type ModulePart record {|
    bir:File file;
    map<bir:ModuleId> imports;
|};

class Module {
    *bir:Module;
    final bir:ModuleId id;
    final ModulePart[] parts;
    final ModuleTable defns;
    final t:Env env;
    final t:TypeCheckContext tc;
    final s:FunctionDefn[] functionDefnSource = [];
    final readonly & bir:FunctionDefn[] functionDefns;

    function init(bir:ModuleId id, ModulePart[] parts, ModuleTable defns, t:Env env) {
        self.id = id;
        self.parts = parts;
        self.defns = defns;
        self.env = env;
        self.tc = t:typeCheckContext(env);
        final bir:FunctionDefn[] functionDefns = [];
        foreach var defn in defns {
            if defn is s:FunctionDefn {
                self.functionDefnSource.push(defn);
                functionDefns.push({
                    symbol: <bir:InternalSymbol>{ identifier: defn.name, isPublic: defn.vis == "public" },
                    // casting away nil here, because it was filled in by `resolveTypes`
                    signature: <bir:FunctionSignature>defn.signature,
                    position: defn.pos,
                    partIndex: defn.part.partIndex
                });
            }
        }
        self.functionDefns = functionDefns.cloneReadOnly();
    }

    public function getId() returns bir:ModuleId => self.id;

    public function getTypeCheckContext() returns t:TypeCheckContext => self.tc;

    public function generateFunctionCode(int i) returns bir:FunctionCode|err:Semantic|err:Unimplemented {
        return codeGenFunction(self, self.functionDefnSource[i], self.functionDefns[i].signature);
    }
   
    public function getFunctionDefns() returns readonly & bir:FunctionDefn[] {
        return self.functionDefns;
    }

    public function getPrefixForModuleId(bir:ModuleId id, int partIndex) returns string? {
        foreach var [prefix, moduleId] in self.parts[partIndex].imports.entries() {
            if moduleId == id {
                return  prefix;
            }
        }
        return ();
    }

    public function getPartFile(int partIndex) returns bir:File {
        return self.parts[partIndex].file;
    }
}

public type SourcePart record {|
    // XXX probably allow a directory here as well
    string filename?;
    // XXX also allow the entire file as a string, not broken into lines
    string[] lines?;
|};

type LoadedSourcePart record {|
    string filename;
    string[] lines;
|};

public function loadModule(t:Env env, SourcePart[] sourceParts, bir:ModuleId id) returns bir:Module|err:Any|io:Error {
    ModuleTable mod = table [];
    ModulePart[] parts = [];
    foreach int i in 0 ..< sourceParts.length() {
        var loaded = check loadSourcePart(sourceParts[i], i);
        s:ModulePart part = check s:parseModulePart(loaded.lines, loaded.filename, i);
        check addModulePart(mod, part);
        parts.push({ file: part.file, imports: imports(part) }); 
    }
    
    check resolveTypes(env, mod);
    // XXX Should have an option that controls whether we perform this check
    check validEntryPoint(mod);
    // XXX to support multiple source parts we need to deal with separate imports per part
    return new Module(id, parts, mod, env);
}

function loadSourcePart(SourcePart part, int i) returns LoadedSourcePart|io:Error {
    string? filename = part?.filename;
    string[]? lines = part?.lines;
    if lines != () {
        return { lines, filename: filename ?: "<part" + (i + 1).toString() + ">" };
    }
    else if filename != () {
        return { lines: check io:fileReadLines(filename), filename };
    }
    panic err:illegalArgument("neither filename nor lines were specified");
}

function imports(s:ModulePart part) returns map<bir:ModuleId> {
    s:ImportDecl? decl = part.importDecl;
    if decl == () {
        return {};
    }
    else {
        return { [decl.module]: { organization: decl.org, names: [decl.module]} };
    }
}

function validEntryPoint(ModuleTable mod) returns err:Any? {
    s:ModuleLevelDefn? defn = mod["main"];
    if defn is s:FunctionDefn {
        if defn.vis != "public" {
            return err:semantic(`${"main"} is not public`, s:defnLocation(defn));
        }
        if defn.paramNames.length() > 0 {
            return err:unimplemented(`parameters for ${"main"} not yet implemented`, s:defnLocation(defn));
        }
        if (<bir:FunctionSignature>defn.signature).returnType !== t:NIL {
            return err:semantic(`return type for ${"main"} must be subtype of ${"error?"}`, s:defnLocation(defn));
        }
    }
}

function addModulePart(ModuleTable mod, s:ModulePart part) returns err:Semantic? {
    foreach s:ModuleLevelDefn defn in part.defns {
        if mod.hasKey(defn.name) {
            return err:semantic(`duplicate definition if ${defn.name}`);
        }
        mod.add(defn); 
    }
}

// This is old interface for showTypes
public function typesFromString(SourcePart[] sourceParts) returns [t:Env, map<t:SemType>]|err:Any|io:Error {
    ModuleTable mod = table [];
    foreach int i in 0 ..< sourceParts.length() {
        var loaded = check loadSourcePart(sourceParts[i], 0);
        s:ModulePart part = check s:parseModulePart(loaded.lines, loaded.filename, i);
        check addModulePart(mod, part);
    }
    t:Env env = new;
    check resolveTypes(env, mod);
    return [env, createTypeMap(mod)];
}

