import wso2/nballerina.bir;

// This is just enough to get us started.
// C++ starts mangled names with `_Z` (why `Z`?),
// Rust starts with `_R`
// so I'm starting Ballerina names with `_B`.
function mangleExternalSymbol(bir:ExternalSymbol symbol) returns string {
    if symbol.module.org == "ballerina" {
        return symbol.identifier;
    }
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

function mangleTypeSymbol(int index) returns string {
    string result = "_Bt";
    result += index.toString();
    return result;    
}

function memberTypeSymbol(int n) returns string {
    return ".member" + n.toString();
}

function subtypeDefnSymbol(int n) returns string {
    return ".subtype" + n.toString();
}
