import ballerina/io;

import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.nback.llvm;

# The preferred output extension for the output filename.
const OUTPUT_EXTENSION = ".ll";

public function compileModule(bir:Module mod, string basename) returns err:Any|io:Error? {
    llvm:Module llMod = check buildModule(mod);
    return llMod.writeFile(basename + OUTPUT_EXTENSION);
}
