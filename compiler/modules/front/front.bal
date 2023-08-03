import ballerina/io;

import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

public type ResolvedModule object {
    *bir:Module;
    public function getExports() returns ModuleExports;
    public function validMain() returns err:Diagnostic?;
};

type LambdaData record {|
    s:Lambda lambda;
    bir:AnonFunction birFunc;
    BindingChain? bindings;
|};

class Module {
    *ResolvedModule;
    final bir:ModuleId id;
    final s:SourceFile[] files;
    final ModuleSymbols syms;
    final s:FunctionDefn[] functionDefnSource = [];
    final LambdaData[] lambdaBuffer = [];
    final bir:Function[] functions;
    final bir:Function[] parentStack = [];

    function init(bir:ModuleId id, s:SourceFile[] files, ModuleSymbols syms) {
        self.id = id;
        self.files = files;
        self.syms = syms;
        final bir:Function[] functionDefns = [];
        foreach var defn in syms.defns {
            if defn is s:FunctionDefn {
                self.functionDefnSource.push(defn);
                functionDefns.push({
                    symbol: <bir:InternalSymbol>{ identifier: defn.name, isPublic: defn.vis == "public" },
                    // casting away nil here, because it was filled in by `resolveTypes`
                    decl: <t:FunctionSignature>defn.signature,
                    position: defn.namePos,
                    partIndex: defn.part.partIndex
                });
            }
        }
        self.functions = functionDefns;
    }

    public function getId() returns bir:ModuleId => self.id;

    public function getTypeContext() returns t:Context => self.syms.tc;

    public function generateFunctionCode(int i) returns bir:FunctionCode|err:Semantic|err:Unimplemented {
        self.parentStack.push(self.functions[i]);
        s:FunctionDefn defn = self.functionDefnSource[i];
        bir:FunctionCode functionCode = check codeGenFunction(self, self.functionDefnSource[i], defn, self.functions[i].decl);
        while self.lambdaBuffer.length() > 0 {
            LambdaData data = self.lambdaBuffer.pop();
            var { lambda, bindings, birFunc } = data;
            self.parentStack.push(birFunc);
            bir:FunctionCode code = check codeGenFunction(self, lambda, defn, <t:FunctionSignature>lambda.signature, bindings);
            _ = self.parentStack.pop();
            self.addFunctionCodeToParent(functionCode, code, birFunc);
        }
        _ = self.parentStack.pop();
        return functionCode;
    }

    private function addFunctionCodeToParent(bir:FunctionCode root, bir:FunctionCode code, bir:AnonFunction func) {
        if func.parent is bir:FunctionDefn {
            root.childAnnonFunctions.push([func.index, code]);
        }
        int[] ancestores = [];
        bir:Function parent = func.parent;
        while parent !is bir:FunctionDefn {
            ancestores.push(parent.index);
            parent = parent.parent;
        }
        int[] ancestorIndices = ancestores.reverse();
        bir:FunctionCode parentCode = root;
        foreach int i in 0 ..< ancestorIndices.length() {
            int index = ancestorIndices[i];
            foreach var [ancestorIndex, ancestorCode] in parentCode.childAnnonFunctions {
                if ancestorIndex == index {
                    parentCode = ancestorCode;
                    break;
                }
            }
        }
        parentCode.childAnnonFunctions.push([func.index, code]);
    }

    private function topLevelParent(bir:Function func) returns bir:FunctionDefn {
        if func is bir:FunctionDefn {
            return func;
        }
        return self.topLevelParent(func.parent);
    }

    public function addLambda(s:Lambda lambda, BindingChain? bindings) returns [bir:FunctionRef, int] {
        // NOTE: we need to do caching in order to make bir roundtrip work
        // TODO: better to keep a table and do a lookup?
        foreach var { lambda: l, birFunc } in self.lambdaBuffer {
            if l === lambda {
                var { decl: signature, index } = birFunc;
                return [{ index, signature, erasedSignature: signature }, birFunc.index];
            }
        }
        bir:Function parent = self.parentStack[self.parentStack.length() - 1];
        t:FunctionSignature signature = <t:FunctionSignature>lambda.signature;
        int index = self.functions.length();
        bir:AnonFunctionRef ref = { index, signature, erasedSignature: signature };
        bir:FunctionDefn topLevelParent = self.topLevelParent(parent);
        bir:AnonFunction birFunc =  {
            index,
            decl: signature,
            position: lambda.startPos,
            partIndex: topLevelParent.partIndex,
            parent
        };
        self.functions.push(birFunc);
        self.lambdaBuffer.push({ lambda, birFunc, bindings });
        return [ref, index];
    }
   
    public function finish() returns err:Semantic? {
        map<Import>[] partPrefixes = self.syms.partPrefixes;
        foreach int i in 0 ..< partPrefixes.length() {
            foreach var [prefix, { decl, used }] in partPrefixes[i].entries() {
                if !used && decl != () {
                    return err:semantic(`import ${prefix} unused`, loc=d:location(self.files[i], decl.namePos));
                }
            }
        }
    }

    public function getFunctions() returns bir:Function[] {
        return self.functions;
    }

    public function getPartFile(int partIndex) returns bir:File {
        return self.files[partIndex];
    }

    public function getPartFiles() returns bir:File[] {
        return from var f in self.files select f;
    }

    public function symbolToString(int partIndex, bir:Symbol sym) returns string {
        return symbolToString(self.syms, partIndex, sym);
    }

    public function getExports() returns ModuleExports {
        return createExports(self.syms);
    }

    public function validMain() returns err:Diagnostic? {
        return validEntryPoint(self.syms.defns);
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

public function resolveModule(ScannedModule scanned, t:Env env, (ModuleExports|string?)[] resolvedImports) returns ResolvedModule|err:Diagnostic|io:Error {
    ModuleSymbols syms = { tc: t:typeContext(env) };
    s:SourceFile[] files = from var p in scanned.parts select p.sourceFile();
    syms.partPrefixes.setLength(scanned.parts.length());
    check importPartPrefixes(scanned, resolvedImports, files, syms.partPrefixes);    
    foreach var scannedPart in scanned.parts {
        s:ModulePart part = check s:parseModulePart(scannedPart);
        check addModulePart(syms.defns, part);
    }
    check resolveTypes(syms);
    check validInit(syms.defns);
    return new Module(scanned.id, files, syms);
}

public function resolveModuleDefFromPart(t:Context tc, s:ModulePart part, string name) returns error? {
    ModuleSymbols syms = { tc, allowAllTypes: true };
    check addModulePart(syms.defns, part);
    check resolveDefn(syms, <s:ModuleLevelDefn>syms.defns[name]);
}

public function scanModule(SourcePart[] sourceParts, bir:ModuleId id) returns ScannedModule|err:Diagnostic|io:Error {
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

function importPartPrefixes(ScannedModule scanned, (ModuleExports|string?)[] resolvedImports, s:SourceFile[] files, map<Import>[] partPrefixes) returns err:Diagnostic? {
    ModuleIdImports[] importsById = scanned.importsById;
    foreach int i in 0 ..< importsById.length() {
        var moduleId = importsById[i].id;
        ModuleExports|string? resolved;
        boolean partial;
        if moduleId == BALLERINA_IO {
            resolved = ioLibFunctions;
            partial = true;
        }
        else {
            resolved = i < resolvedImports.length() ? resolvedImports[i] : ();
            partial = false;
        }
        foreach var decl in importsById[i].imports {
            if resolved == () {
                d:Message msg = `unsupported module ${moduleIdToString(moduleId)}`;
                return err:unimplemented(msg, loc=d:location(files[decl.partIndex], decl.namePos));
            }
            else if resolved is string {
                return err:semantic(resolved, loc=d:location(files[decl.partIndex], decl.namePos));
            }
            else {
                string? declPrefix = decl.prefix;
                string prefix = declPrefix == () ? moduleIdDefaultPrefix(moduleId) : declPrefix;
                partPrefixes[decl.partIndex][prefix] = { decl, moduleId, defns: resolved, partial };
            }
        }
    }
}

function validEntryPoint(ModuleDefns mod) returns err:Diagnostic? {
    s:ModuleLevelDefn? defn = mod["main"];
    if defn is s:FunctionDefn {
        if defn.vis != "public" {
            return err:semantic(`${"main"} is not public`, s:defnLocation(defn));
        }
        check validInitReturnType(defn);
        if defn.params.length() > 0 {
            return err:unimplemented(`parameters for ${"main"} not yet implemented`, s:defnLocation(defn));
        }
        if t:intersect((<t:FunctionSignature>defn.signature).returnType, t:ERROR) != t:NEVER {
            return err:unimplemented(`returning an error from ${"main"} function is not implemented`, s:defnLocation(defn));
        }
    }
}

function validInit(ModuleDefns defns) returns err:Diagnostic? {
    s:ModuleLevelDefn? defn = defns["init"];
    if defn is s:FunctionDefn {
        if defn.vis == "public" {
            return err:semantic(`${"init"} function must not be public`, s:defnLocation(defn));
        }
        if defn.params.length() > 0 {
            return err:semantic(`${"init"} function must not have parameters`, s:defnLocation(defn));
        }
        check validInitReturnType(defn);
        return err:unimplemented(`${"init"} function is not implemented`, s:defnLocation(defn));
    }
}

function validInitReturnType(s:FunctionDefn defn) returns err:Semantic? {
    t:SemType returnType = (<t:FunctionSignature>defn.signature).returnType;
    if t:intersect(returnType, t:NIL) != t:NIL {
        return err:semantic(`return type of ${defn.name} function must allow nil`, s:defnLocation(defn));
    }
    if !t:isSubtypeSimple(returnType, t:basicTypeUnion((1 << t:BT_NIL) | (1 << t:BT_ERROR))) {
        return err:semantic(`return type of ${defn.name} function must be a subtype of ${"error?"}`, s:defnLocation(defn));
    }
}

function addModulePart(ModuleDefns mod, s:ModulePart part) returns err:Semantic? {
    foreach s:ModuleLevelDefn defn in part.defns {
        if mod.hasKey(defn.name) {
            return err:semantic(`duplicate definition in ${defn.name}`, s:defnLocation(defn));
        }
        mod.add(defn);
    }
}

// This is old interface for showTypes
public function typesFromString(SourcePart[] sourceParts) returns [t:Env, map<t:SemType>]|err:Diagnostic|io:Error {
    t:Env env = new;
    ModuleSymbols syms = { tc: t:typeContext(env), allowAllTypes: true };
    foreach int i in 0 ..< sourceParts.length() {
        var loaded = check loadSourcePart(sourceParts[i], 0);
        s:ScannedModulePart part = check s:scanModulePart(loaded, i);
        check addModulePart(syms.defns, check s:parseModulePart(part));
    }
    check resolveTypes(syms);
    return [env, createTypeMap(syms)];
}
