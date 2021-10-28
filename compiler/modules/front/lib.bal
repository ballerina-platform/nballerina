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
    // JBUG #33314 temp variable
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

type ModuleExportSemtypes readonly & map<t:SemType>;

final readonly & map<Import> autoImportPrefixes = {
    "int": {
        moduleId: {org: "ballerina", names: ["lang", "int"]},
        defns: {
            Signed8: t:intWidthSigned(8),
            Signed16: t:intWidthSigned(16),
            Signed32: t:intWidthSigned(32),
            Unsigned8: t:BYTE,
            Unsigned16: t:intWidthUnsigned(16),
            Unsigned32: t:intWidthUnsigned(32)
        },
        partial: true
    },
    "string": {
        moduleId: {org: "ballerina", names: ["lang", "string"]},
        defns: {
            Char: t:STRING_CHAR
        },
        partial: true
    }
};
