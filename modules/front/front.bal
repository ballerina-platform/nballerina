import ballerina/io;

import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.err;

public function compileModule(string filename, bir:ModuleId id) returns bir:Module|error {
    string contents = check io:fileReadString(filename);
    Module mod = check parseModule(contents);
    t:Env env = new;
    check convertTypes(env, mod);
    t:TypeCheckContext tc = t:typeCheckContext(env);
    bir:Module bir = { id, tc };
    check convertModule(mod, bir);
    return bir;
}

// This is old interface for showTypes
public function typesFromString(string contents) returns [t:Env, map<t:SemType>]|err:Syntax {
    Module mod = check parseModule(contents);
    t:Env env = new;
    check convertTypes(env, mod);
    return [env, createTypeMap(mod)];
}

