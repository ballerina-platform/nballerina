import wso2/nballerina.bir;

function mangleRuntimeSymbol(string name) returns string {
    return "_bal_" + name;
}

// This is just enough to get us started.
// C++ starts mangled names with `_Z` (why `Z`?),
// Rust starts with `_R`
// so I'm starting Ballerina names with `_B`.
function mangleExternalSymbol(bir:ExternalSymbol symbol) returns string {
    string[] names = symbol.module.names;
    // use the last segment of the module name to distinguish between lang.* modules
    return "_B" + names[names.length() - 1] + "__" + symbol.identifier;
}

function mangleInternalSymbol(bir:ModuleId modId, bir:InternalSymbol symbol) returns string {
    return "_B_" + symbol.identifier;
}

function stringDefnSymbol(int n) returns string {
    return ".str" + n.toString();
}
