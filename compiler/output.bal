import wso2/nballerina.print.llvm;
import ballerina/io;

type LlvmContext llvm:Context;
type LlvmModule llvm:Module;

# The preferred output extension for the output filename.
const OUTPUT_EXTENSION = ".ll";

type OutputOptions record {
    string? target = ();
};

function outputModule(LlvmModule llMod, string outFilename, OutputOptions options) returns io:Error? {
    string? target = options.target;
    if target != () {
        llMod.setTarget(target);
    }
    return llMod.printModuleToFile(outFilename);
}
