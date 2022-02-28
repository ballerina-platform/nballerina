import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

public type Branch record {
    bir:BranchInsn insn;
    int fromIndex;
};

public type CondBranch record {
    bir:CondBranchInsn insn;
    int fromIndex;
};

class Scaffold {
    private boolean overflowOps = false;
    map<wasm:Expression[]> renderedRegion = {};
    int[] processedBlocks = [];
    final bir:BasicBlock[] blocks;
    final bir:Region[] regions;


    function init(bir:FunctionCode code) {
        self.blocks = code.blocks;
        self.regions = code.regions;
    }

    public function setOverflowOps() {
        self.overflowOps = true;
    }

    public function getOverflowOps() returns boolean {
        return self.overflowOps;
    }

    public function reset() {
        self.overflowOps = false;
        self.processedBlocks = [];
        self.renderedRegion = {};
    }

}