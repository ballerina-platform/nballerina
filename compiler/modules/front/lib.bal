import wso2/nballerina.bir;
import wso2/nballerina.types as t;

type LangLibFunction [LangLibModuleName, string, readonly & t:SemType[], t:SemType];
type LangLibModuleName "boolean"|"int"|"float"|"decimal"|"string"|"error"|"array"|"map";

final readonly & LangLibFunction[] langLibFunctions = [
    ["string", "length", [t:STRING], t:INT],
    ["array", "length", [t:LIST], t:INT],
    ["array", "push", [t:LIST, t:VAL], t:NIL],
    ["map", "length", [t:MAPPING], t:INT],
    ["int", "toHexString", [t:INT], t:STRING],
    ["error", "message", [t:ERROR], t:STRING]
];

function getLangLibFunction(string mod, string func) returns bir:FunctionSignature? {
    foreach var [moduleName, functionName, paramTypes, returnType] in langLibFunctions {
        if moduleName == mod && functionName == func {
            return { returnType, paramTypes };
        }   
    }
    return ();
}

final readonly & map<bir:FunctionSignature> ioLibFunctions = {
    println: { paramTypes: [t:LIST], returnType: t:NIL, restParamType: t:VAL }
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
    },
    "xml": {
        moduleId: {org: "ballerina", names: ["lang", "xml"]},
        defns: {
            Element: t:XML_ELEMENT,
            Comment: t:XML_COMMENT,
            Text: t:XML_TEXT,
            ProcessingInstruction: t:XML_PI
        },
        partial: true
    }
};
