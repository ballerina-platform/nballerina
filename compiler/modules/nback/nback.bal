import ballerina/io;

import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.nback.llvm;

# The preferred output extension for the output filename.
public const OUTPUT_EXTENSION = ".ll";
configurable string target = "x86_64-pc-linux-gnu";
public type ConfigError distinct error;

// If outputFilename is non-nil write the output to this file.
public function compileModule(bir:Module mod, string? outputFilename) returns err:Any|io:Error|ConfigError? {
    llvm:Context context = new;
    llvm:Module llMod = check buildModule(mod, context);
    llvm:TargetTriple targetTriple = check stringToTargetTriple(target);
    llMod.setTarget(targetTriple);
    if outputFilename != () {
        return llMod.writeFile(outputFilename);
    }
}

function stringToTargetTriple(string target) returns llvm:TargetTriple|ConfigError {
    if target is llvm:TargetTriple {
        return target;
    } else {
        return error(string `${target} is an unknown target`);
    }
}
