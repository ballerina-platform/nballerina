import wso2/nballerina.jni.llvm;
import ballerina/io;

type LlvmContext llvm:Context;
type LlvmModule llvm:Module;

# The preferred output extension for the output filename.
const OUTPUT_EXTENSION = ".o";
const WAT_OUTPUT_EXTENSION = ".wat";


type OutputOptions record {
    string? target = ();
    string? optLevel = ();
    string? relocMode = ();
    string? codeModel = ();
};

function outputModule(LlvmModule llMod, string outFilename, OutputOptions options) returns io:Error? {
    string? target = options.target;
    if target != () {
        llMod.setTarget(target);
    }
    return llMod.printModuleToObjectFile(outFilename, {
            optLevel: options.optLevel, relocMode: options.relocMode, codeModel: options.codeModel
    });
}
