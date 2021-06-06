import ballerina/io;

import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.err;

type ModuleTable table<ModuleLevelDef> key(name);

class Module {
    *bir:Module;
    final bir:ModuleId id;
    final ModuleTable defs;
    final t:TypeCheckContext tc;
    final FunctionDef[] functionDefSource = [];
    final readonly & bir:FunctionDefn[] functionDefns;

    function init(bir:ModuleId id, ModuleTable defs, t:TypeCheckContext tc) {
        self.id = id;
        self.defs = defs;
        self.tc = tc;
        final bir:FunctionDefn[] functionDefns = [];
        foreach var def in defs {
            if def is FunctionDef {
                self.functionDefSource.push(def);
                functionDefns.push({
                    name: def.name,
                    // casting away nil here, because it was filled in by `convertTypes`
                    signature: <bir:FunctionSignature>def.signature 
                });
            }
        }
        self.functionDefns = functionDefns.cloneReadOnly();
    }

    public function getId() returns bir:ModuleId => self.id;

    public function getTypeCheckContext() returns t:TypeCheckContext => self.tc;

    public function generateFunctionCode(int i) returns bir:FunctionCode|err:Semantic|err:Unimplemented {
        FunctionDef ast = self.functionDefSource[i];
        return codeGenFunction(self, self.functionDefns[i].signature, ast.paramNames, ast.body);
    }
   
    public function getFunctionDefns() returns readonly & bir:FunctionDefn[] {
        return self.functionDefns;
    }

}

public function loadModule(string filename, bir:ModuleId id) returns bir:Module|err:Any|io:Error {
    string contents = check io:fileReadString(filename);
    ModuleLevelDef[] defs = check parseSourcePart(contents);
    ModuleTable mod = table [];
    check addSourcePart(mod, defs);
    t:Env env = new;
    check convertTypes(env, mod);
    return new Module(id, mod, t:typeCheckContext(env));
}

function addSourcePart(ModuleTable mod, ModuleLevelDef[] defs) returns err:Semantic? {
    foreach ModuleLevelDef def in defs {
        if mod.hasKey(def.name) {
            return err:semantic(`duplicate definition if ${def.name}`);
        }
        mod.add(def); 
    }
}

// This is old interface for showTypes
public function typesFromString(string contents) returns [t:Env, map<t:SemType>]|err:Syntax {
    ModuleLevelDef[] defs = check parseSourcePart(contents);
    ModuleTable mod = table [];
    check addSourcePart(mod, defs);
    t:Env env = new;
    check convertTypes(env, mod);
    return [env, createTypeMap(mod)];
}

