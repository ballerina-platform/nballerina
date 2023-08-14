import wso2/nballerina.bir;

function mangleRuntimeSymbol(string name) returns string {
    return "_bal_" + name;
}

// This is just enough to get us started.
// C++ starts mangled names with `_Z` (why `Z`?),
// Rust starts with `_R`
// so I'm starting Ballerina names with `_B`.
function mangleExternalSymbol(bir:ExternalSymbol symbol) returns string {
    return manglePublicSymbol(symbol.module, symbol.identifier);
    //string[] names = symbol.module.names;
    // use the last segment of the module name to distinguish between lang.* modules
    //return "_B" + names[names.length() - 1] + "__" + symbol.identifier;
}

function manglePublicSymbol(bir:ModuleId modId, string identifier) returns string {
    string result = "_B";
    result += mangleOrg(modId.org);
    result += mangleModuleNames(modId.names);
    result += identifier;
    return result;
}

function mangleOrg(string org) returns string {
    if org.startsWith("ballerina") {
        string rest = org.substring("ballerina".length());
        return "b" + delimitName(rest);
    }
    return delimitName(org);
}

function mangleModuleNames(string[] names, int i = 0) returns string {
    if i < names.length() - 1 {
        return "m" + delimitName(names[i]) + mangleModuleNames(names, i + 1);
    }
    return delimitName(names[i]);
}

function delimitName(string name) returns string {
    int len = name.length();
    string delimited = len.toString();
    if len > 0 {
        string firstChar = name[0];
        if isDigit(firstChar) {
            delimited += "_";
        }
    }
    return delimited + name;
}

function isDigit(string ch) returns boolean {
    return "0" <= ch && ch <= "9";
}

function mangleInternalSymbol(bir:ModuleId modId, bir:InternalSymbol symbol) returns string {
    if symbol.isPublic {
        return manglePublicSymbol(modId, symbol.identifier);
    }
    return "_B_" + symbol.identifier;
}

function anonFunctionSymbol(int n) returns string {
    return ".anonFunction" + n.toString();
}

function stringDefnSymbol(int n) returns string {
    return ".str" + n.toString();
}

function decimalDefnSymbol(int n) returns string {
    return ".dec" + n.toString();
}

function subtypeDefnSymbol(int n) returns string {
    return ".subtype" + n.toString();
}

function memberTypeSymbol(int n) returns string {
    return ".member" + n.toString();
}

function memberListDescSymbol(int n) returns string {
    return ".list" + n.toString();
}

function memberMappingDescSymbol(int n) returns string {
    return ".mapping" + n.toString();
}

function uniformFunctionSymbol(int n) returns string {
    return ".uniformFunction" + n.toString();
}

function subtypeTypeDefnSymbol(int n) returns string {
    return "Type" + n.toString();
}

function fillerDescSymbol(int n) returns string {
    return ".fillerDesc" + n.toString();
}

function functionDefnSymbol(int n) returns string {
    return ".func" + n.toString();
}
