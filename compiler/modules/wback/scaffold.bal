// import wso2/nballerina.comm.err;
// import wso2/nballerina.comm.diagnostic as d;
import wso2/nballerina.bir;
// import wso2/nballerina.types as t;

public type Branch record {
    bir:BranchInsn insn;
    int fromIndex;
};

public type CondBranch record {
    bir:CondBranchInsn insn;
    int fromIndex;
};

class Scaffold {
    private Branch[] branchInsns = [];
    private CondBranch[] condBranchInsns = [];
    private boolean overflowOps = false;

    public function addCondBranchInsn(bir:CondBranchInsn insn, int index) {
        self.condBranchInsns.push({ insn: insn, fromIndex: index });
    }

    public function addBranchInsn(bir:BranchInsn insn, int index) {
        self.branchInsns.push({ insn: insn, fromIndex: index });
    }

    public function getBranchInsns() returns Branch[] {
        return self.branchInsns;
    }

    public function getCondBranchInsns() returns CondBranch[] {
        return self.condBranchInsns;
    }

    public function setOverflowOps() {
        self.overflowOps = true;
    }

    public function getOverflowOps() returns boolean {
        return self.overflowOps;
    }

    public function reset() {
        self.condBranchInsns = [];
        self.branchInsns = [];
        self.overflowOps = false;
    }

}