import wso2/nballerina.bir;

public function compileModule(string filename, bir:ModuleId id) returns bir:Module|error {
    bir:Module module = { id };
    return module;
}
