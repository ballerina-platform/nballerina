import wso2/nballerina.bir;
import wso2/nballerina.types as t;

final [string, string[], string, readonly & t:SemType[], t:SemType][] libFunctions = [
    ["ballerina", ["io"], "println", [t:TOP], t:NIL]
];

function getLibFunction(bir:ModuleId id, string name) returns bir:FunctionSignature? {
    foreach var [org, moduleNameParts, functionName, paramTypes, returnType] in libFunctions {
        if id.organization == org && id.names == moduleNameParts && name == functionName {
            return { returnType, paramTypes };
        }   
    }
    return ();
}

