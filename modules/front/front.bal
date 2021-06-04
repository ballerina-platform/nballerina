import ballerina/io;

import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.err;

public function loadModule(string filename, bir:ModuleId id) returns bir:Module|err:Any|io:Error {
    string contents = check io:fileReadString(filename);
    Module mod = check parseModule(contents);
    t:Env env = new;
    check convertTypes(env, mod);
    return wrapFunctions(env, id, mod);
}

function wrapFunctions(t:Env env, bir:ModuleId id, Module mod) returns bir:Module|err:Any {
    t:TypeCheckContext tc = t:typeCheckContext(env);
    bir:Module bir = { id, tc };
    foreach var def in mod {
        if def is FunctionDef {
            bir:FunctionSignature? sig = def.signature;
            bir.defns[def.name] = new WrappedFunctionDefn(def, <bir:FunctionSignature>sig);
        }
    }
    return bir;
}

class WrappedFunctionDefn {
    *bir:FunctionDefn;
    public final string name;
    public final bir:FunctionSignature signature;
    private final FunctionDef ast;
   
    function init(FunctionDef def, bir:FunctionSignature signature) {
        self.name = def.name;
        self.ast = def;
        self.signature = signature;
    }

    public function generateCode(bir:Module mod) returns bir:FunctionCode|err:Semantic|err:Unimplemented {
        return codeGenFunction(mod, self.signature, self.ast.paramNames, self.ast.body);
    }
}

// This is old interface for showTypes
public function typesFromString(string contents) returns [t:Env, map<t:SemType>]|err:Syntax {
    Module mod = check parseModule(contents);
    t:Env env = new;
    check convertTypes(env, mod);
    return [env, createTypeMap(mod)];
}

