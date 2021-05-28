import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.llvm;

public type Options record {|
    boolean testJsonTypes = false;
    boolean showTypes = false;
|};

public function main(string filename, *Options opts) returns error? {
    if opts.testJsonTypes {
        return testJsonTypes(filename);
    }
    if opts.showTypes {
        return showTypes(filename);
    }
    bir:ModuleId id = {
       versionString: "0.1.0",
       names: [filename],
       organization: "dummy"
    };
    bir:Module module = check front:compileModule(filename, id);
    check llvm:compileModule(module, filename + llvm:OUTPUT_EXTENSION);
}
