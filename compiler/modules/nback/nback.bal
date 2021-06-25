import ballerina/io;

import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.nback.llvm;

# The preferred output extension for the output filename.
public const OUTPUT_EXTENSION = ".ll";
configurable string target = "x86_64-pc-linux-gnu";

// If outputFilename is non-nil write the output to this file.
public function compileModule(bir:Module mod, string? outputFilename) returns err:Any|io:Error? {
    llvm:Context context = new;
    llvm:Module llMod = check buildModule(mod, context);
    llMod.setTarget(<llvm:TargetTriple>target);
    if outputFilename != () {
        return llMod.writeFile(outputFilename);
    }
}
