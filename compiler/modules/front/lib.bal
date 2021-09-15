import wso2/nballerina.bir;
import wso2/nballerina.types as t;

type LangLibFunction [string, string, readonly & t:SemType[], t:SemType];
final readonly & LangLibFunction[] langLibFunctions = [
    ["string", "length", [t:STRING], t:INT],
    ["array", "length", [t:LIST], t:INT],
    ["array", "push", [t:LIST, t:TOP], t:NIL],
    ["map", "length", [t:MAPPING], t:INT],
    ["int", "toHexString", [t:INT], t:STRING],
    ["error", "message", [t:ERROR], t:STRING]
];

function getLangLibFunction(string mod, string func) returns bir:FunctionSignature? {
    // JBUG temp variable
    LangLibFunction[] functions = langLibFunctions;
    foreach var [moduleName, functionName, paramTypes, returnType] in functions {
        if moduleName == mod && functionName == func {
            return { returnType, paramTypes };
        }   
    }
    return ();
}

final readonly & map<bir:FunctionSignature> ioLibFunctions = {
    println: { paramTypes: [t:TOP], returnType: t:NIL }
};
