import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.nback;
import wso2/nballerina.err;

import ballerina/io;

type CompileError  err:Any? | io:Error;

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
    check compileFile(filename, check chooseOutputFilename(filename));
}

//  outputFilename of () means don't output anything
function compileFile(string filename, string? outputFilename) returns CompileError {
    bir:ModuleId id = {
       names: [filename],
       organization: "dummy"
    };
    bir:Module module = check front:loadModule(filename, id);
    check nback:compileModule(module, outputFilename);
}

function chooseOutputFilename(string sourceFilename) returns string|error? {
    var [base, extension] = basenameExtension(sourceFilename);
    if extension != SOURCE_EXTENSION {
        return error("filename must end with " + SOURCE_EXTENSION);
    }
    return base + nback:OUTPUT_EXTENSION;
}

// Note that this converts extension to lower case
function basenameExtension(string filename) returns [string, string?] {
    int? extIndex = filename.lastIndexOf(".");
    if extIndex is int {
        return [filename.substring(0, extIndex), filename.substring(extIndex).toLowerAscii()];
    }
    return [filename, ()];
}
