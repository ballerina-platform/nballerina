import ballerina/io;

import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.nback.llvm;

# The preferred output extension for the output filename.
const OUTPUT_EXTENSION = ".ll";

public function compileModule(bir:Module mod, string basename) returns err:Any|io:Error? {
    llvm:Module llMod = new;
  
    foreach bir:ModuleDefn def in mod.defns {
        if def is bir:FunctionDefn {
            check buildFunction(mod, def, llMod);          
        }
    }
    string path = basename + OUTPUT_EXTENSION;
    llvm:Output out = check new(path);
    llMod.output(out);
    check out.finish();
}

