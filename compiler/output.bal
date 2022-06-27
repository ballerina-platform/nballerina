import wso2/nballerina.print.llvm;
import wso2/nballerina.print.wasm;
import wso2/nballerina.wback;
import ballerina/io;
import ballerina/file;


type LlvmModule llvm:Module;

# The preferred output extension for the output filename.
const LLVM_OUTPUT_EXTENSION = ".ll";
const WAT_OUTPUT_EXTENSION = ".wat";

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

function outputWatModule(wback:Component component, string outFilename) returns io:Error?|file:Error? {
    wasm:Wat[]|io:Error?|file:Error? wat = check component.finish();
    if wat is wasm:Wat[] {
        check io:fileWriteLines(outFilename, wat);
    }
}
