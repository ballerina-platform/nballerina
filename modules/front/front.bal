import ballerina/io;

import wso2/nballerina.bir;
import wso2/nballerina.types as t;

public function compileModule(string filename, bir:ModuleId id) returns bir:Module|error {
    string contents = check io:fileReadString(filename);
    Module mod = check parseModule(contents);
    t:Env env = new;
    check analyzeModule(env, mod);
    return generateCode(env, mod, id);
}

function analyzeModule(t:Env env, Module mod) returns error? {
    check normalizeTypeDefs(env, mod);
}

function generateCode(t:Env env, Module mod, bir:ModuleId id) returns bir:Module|error {
    bir:Module bir = { id };
    // XXX
    return bir;
}

// This is old interface for showTypes
public function loadTypes(string filename) returns [t:Env, map<t:SemType>]|ParseError|io:Error {
    string contents = check io:fileReadString(filename);
    Module mod = check parseModule(contents);
    t:Env env = new;
    check normalizeTypeDefs(env, mod);
    return [env, createTypeMap(mod)];
}

