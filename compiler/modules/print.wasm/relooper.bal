type Block record {
    Expression code;
    int id;
    BlockBranchMap[] branchesOut = [];
    Block[] branchesIn =[];
};

type Branch record {
    Expression? condition =();
};

type BlockBranchMap record {
    Branch branch;
    Block block;
};

type SimpleShape record {
    string ty = "Simple";
    Block inner;
    Shape? next = ();
};

type MultipleShape record {
    string ty = "Multiple";
    Shape? next = ();
    map<Shape?> handledBlocks = {};
}; 

type LoopShape record {
    string ty = "Loop";
    Shape? inner;
    Shape? next;
};

type Shape SimpleShape|MultipleShape|LoopShape;

class Relooper {
    private Module module;
    private Branch[] branches =[];
    private Block[] blocks = [];
    private int blockId = 1;
    private Block[] entries =[];
    private Block root = ();

    function init(Module module) {
        self.module = module;
    }

    function addBranch(Block fromB, Block to, Expression? condition = ()) {
        Branch branch = {
            condition: condition
        };
        BlockBranchMap blockBranch = {
            block: to,
            branch: branch
        };
        fromB.branchesOut.push(blockBranch);
        to.branchesIn.push(fromB);
    }

    function addBlock(Expression code) returns Block {
        Block block = {
            code: code,
            id: self.blockId
        };
        self.blockId = self.blockId + 1;
        self.blocks.push(block);
        return block;
    }

    function calculate(Block entry) {
        panic error("unimplemented");        
    }

    function render(Block body, int labelHelper) returns Expression {
        panic error("unimplemented");    
    }

}
