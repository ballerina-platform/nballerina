import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.nback;

public type Options record {|
    boolean testJsonTypes = false;
    boolean showTypes = false;
|};

const SOURCE_EXTENSION = ".bal";
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
    bir:Module module = check front:loadModule(filename, id);
    check nback:compileModule(module, check stripExtension(filename, SOURCE_EXTENSION));
}

function stripExtension(string filename, string extension) returns string|error {
    int? extIndex = filename.lastIndexOf(".");
    if extIndex is int {
        string ext = filename.substring(extIndex).toLowerAscii();
        if ext == extension {
            return filename.substring(0, extIndex);
        }
    }
    return error("filename must end with " + extension);
}
