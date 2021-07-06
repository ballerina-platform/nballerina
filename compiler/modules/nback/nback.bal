import ballerina/io;

import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;

# The preferred output extension for the output filename.
public const OUTPUT_EXTENSION = ".ll";

configurable string target = "";

public type Options record {|
    string? gcName = ();
|};

// If outputFilename is non-nil write the output to this file.
public function compileModule(bir:Module mod, string? outputFilename, string? gcName) returns err:Any|io:Error? {
    llvm:Context context = new;
    Options opt = {
        gcName: gcName
    };
    llvm:Module llMod = check buildModule(mod, context, opt);
           
    if target != "" {
        llMod.setTarget(target);
    }
    if outputFilename != () {
        return llMod.printModuleToFile(outputFilename);
    }
}

