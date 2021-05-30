import ballerina/io;

import wso2/nballerina.bir;
import wso2/nballerina.types as t;

public function compileModule(string filename, bir:ModuleId id) returns bir:Module|error {
    string contents = check io:fileReadString(filename);
    Module mod = check parseModule(contents);
    t:Env env = new;
    check analyzeModule(env, mod);
    t:TypeCheckContext tc = t:typeCheckContext(env);
    return generateCode(tc, mod, id);
}

function analyzeModule(t:Env env, Module mod) returns error? {
    // XXX also need to convert all the types in local variable declarations
    check convertTypeDefs(env, mod);
}

function generateCode(t:TypeCheckContext tc, Module mod, bir:ModuleId id) returns bir:Module|error {
    bir:Module bir = { id, tc };
    // XXX
    return bir;
}

// This is old interface for showTypes
public function typesFromString(string contents) returns [t:Env, map<t:SemType>]|ParseError {
    Module mod = check parseModule(contents);
    t:Env env = new;
    check convertTypeDefs(env, mod);
    return [env, createTypeMap(mod)];
}

