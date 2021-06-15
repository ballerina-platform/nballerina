import ballerina/io;

import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.nback.llvm;

# The preferred output extension for the output filename.
public const OUTPUT_EXTENSION = ".ll";

// If outputFilename is non-nil write the output to this file.
public function compileModule(bir:Module mod, string? outputFilename) returns err:Any|io:Error? {
    llvm:Module llMod = check buildModule(mod);
    if outputFilename != () {
        return llMod.writeFile(outputFilename);
    }
}
