import ballerina/io;

import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.err;

type ModuleTable table<s:ModuleLevelDefn> key(name);

type Import record {|
    s:ImportDecl decl;
    bir:ModuleId moduleId;
    ModuleExports defns;
    boolean used = false;
|};

type ModulePart record {|
    bir:File file;
    map<Import> imports;
|};

public type ExportedDefn bir:FunctionSignature|t:SemType|s:ResolvedConst;

public type ModuleExports readonly & map<ExportedDefn>;

public type ResolvedModule object {
    *bir:Module;
    public function getExports() returns ModuleExports;
};

class Module {
    *ResolvedModule;
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
   
    public function finish() returns err:Semantic? {
        foreach var part in self.parts {
            foreach var [prefix, { decl, used }] in part.imports.entries() {
                if !used {
                    return err:semantic(`import ${prefix} unused`, loc=err:location(part.file, decl.pos));
                }
            }
        }
    }

    public function getFunctionDefns() returns readonly & bir:FunctionDefn[] {
        return self.functionDefns;
    }

    public function getPrefixForModuleId(bir:ModuleId id, int partIndex) returns string? {
        foreach var [prefix, { moduleId }] in self.parts[partIndex].imports.entries() {
            if moduleId == id {
                return prefix;
            }
        }
        return ();
    }

    public function getPartFile(int partIndex) returns bir:File {
        return self.parts[partIndex].file;
    }

    public function getPartFiles() returns bir:File[] {
        return from var part in self.parts select part.file;
    }

    public function getExports() returns ModuleExports {
        map<ExportedDefn> exports = {};
        foreach var defn in self.defns {
            ExportedDefn|false? export;
            if defn.vis != "public" {
                continue;
            }
            if defn is s:FunctionDefn {
                export = defn.signature;
            }
            else if defn is s:ConstDefn {
                export = defn.resolved;
            }
            else {
                export = defn.semType;
            }
            exports[defn.name] = <ExportedDefn>export;
        }
        return exports.cloneReadOnly();
    }
}

public type SourcePart record {|
    string directory?;
    string filename?;
    // XXX also allow the entire file as a string, not broken into lines
    string[] lines?;
|};

type ModuleIdImports record {|
    readonly bir:ModuleId id;
    s:ImportDecl[] imports;
|};

public readonly class ScannedModule {
    s:ScannedModulePart[] parts;
    bir:ModuleId id;
    ModuleIdImports[] importsById;

    function init(s:ScannedModulePart[] parts, bir:ModuleId id) {
        self.parts = parts.cloneReadOnly();
        self.id = id;
        self.importsById = groupImports(parts, id).cloneReadOnly();
    }

    public function getImports() returns bir:ModuleId[] {
        return from var mi in self.importsById select mi.id;
    }
}

function groupImports(s:ScannedModulePart[] parts, bir:ModuleId modId) returns ModuleIdImports[] {
    table<ModuleIdImports> key(id) miTable = table [];
    foreach var part in parts {
        foreach var decl in part.importDecls {
            bir:ModuleId id = { org: decl.org ?: modId.org, names: decl.names };
            if !miTable.hasKey(id) {
                miTable.add({ id, imports: [decl] });
            }
            else {
                miTable.get(id).imports.push(decl);
            }
        }
    }
    return from var mi in miTable select mi;
}

public function resolveModule(ScannedModule scanned, t:Env env, (ModuleExports|error?)[] resolvedImports) returns ResolvedModule|err:Any|io:Error {
    ModulePart[] parts = check importPartMaps(scanned, resolvedImports);

    ModuleTable mod = table [];
    foreach var scannedPart in scanned.parts {
        s:ModulePart part = check s:parseModulePart(scannedPart);
        check addModulePart(mod, part);
    }
    check resolveTypes(env, mod);
    // XXX Should have an option that controls whether we perform this check
    check validEntryPoint(mod);
    return new Module(scanned.id, parts, mod, env);
}

public function scanModule(SourcePart[] sourceParts, bir:ModuleId id) returns ScannedModule|err:Any|io:Error {
    s:ScannedModulePart[] parts = [];
    foreach int i in 0 ..< sourceParts.length() {
        s:SourceFile file = check loadSourcePart(sourceParts[i], i);
        parts.push(check s:scanModulePart(file, i));
    }
    return new(parts, id);
}

function loadSourcePart(SourcePart part, int i) returns s:SourceFile|io:Error {
    string? directory = part?.directory;
    string? filename = part?.filename;
    string[]? lines = part?.lines;
    if lines != () {
        return s:createSourceFile(lines, { filename: filename ?: "<part" + (i + 1).toString() + ">", directory });
    }
    else if filename != () {
        return s:createSourceFile(check io:fileReadLines(filename), { filename, directory });
    }
    panic err:illegalArgument("neither filename nor lines were specified");
}

final bir:ModuleId BALLERINA_IO = { org: "ballerina", names: ["io"] };

function importPartMaps(ScannedModule scanned, (ModuleExports|error?)[] resolvedImports) returns ModulePart[]|err:Any {
    ModulePart[] parts = from var part in scanned.parts select { file: part.sourceFile(), imports: {} };
    ModuleIdImports[] importsById = scanned.importsById;
    foreach int i in 0 ..< importsById.length() {
        var moduleId = importsById[i].id;
        ModuleExports|error? resolved;
        if moduleId == BALLERINA_IO {
            resolved = ioLibFunctions;
        }
        else {
            resolved = i < resolvedImports.length() ? resolvedImports[i] : ();
        }
        foreach var decl in importsById[i].imports {
            if resolved is error? {
                return err:unimplemented(`unsupported module ${moduleIdToString(moduleId)}`, loc=err:location(parts[decl.partIndex].file, decl.pos), cause=resolved);
            }
            else {
                string? declPrefix = decl.prefix;
                string prefix = declPrefix == () ? moduleIdDefaultPrefix(moduleId) : declPrefix;
                parts[decl.partIndex].imports[prefix] = { decl, moduleId, defns: resolved };
            }
        }
    }
    return parts;
}

function moduleIdDefaultPrefix(bir:ModuleId id) returns string {
    // JBUG Bad, sad without `names` variable
    string[] names = id.names;
    return names[names.length() - 1];
}

function moduleIdToString(bir:ModuleId id) returns string {
    string m = ".".'join(...id.names);
    if id.org != "" {
        return id.org + "/"  + m;
    }
    else {
        return m;
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
        err:Location loc = {filename: part.file.filename(), startPos:(), endPos:()};
        if mod.hasKey(defn.name) {
            return err:semantic(`duplicate definition if ${defn.name}`, loc);
        }
        mod.add(defn); 
    }
}

// This is old interface for showTypes
public function typesFromString(SourcePart[] sourceParts) returns [t:Env, map<t:SemType>]|err:Any|io:Error {
    ModuleTable mod = table [];
    foreach int i in 0 ..< sourceParts.length() {
        var loaded = check loadSourcePart(sourceParts[i], 0);
        s:ScannedModulePart part = check s:scanModulePart(loaded, i);
        check addModulePart(mod, check s:parseModulePart(part));
    }
    t:Env env = new;
    check resolveTypes(env, mod);
    return [env, createTypeMap(mod)];
}
