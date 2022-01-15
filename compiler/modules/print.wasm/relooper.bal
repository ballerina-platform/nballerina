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

    function createSimpleBlock(Block[] blocks, Block entry) returns Shape {
        Block[] nextEntries = [];
        foreach BlockBranchMap next in entry.branchesOut {
            if blocks.indexOf(next.block) != () {
                nextEntries.push(next.block);
                next.block.branchesIn = next.block.branchesIn.filter(b => b.id != entry.id);
            }
        }
        Block[] validBlocks = blocks.filter(b => b.id != entry.id);
        SimpleShape simple = {
            inner: entry,
            next: self.calculate(validBlocks,nextEntries)
        };
        return simple;
    }

    function createLoopBlock(Block[] blocks, Block[] entries) returns Shape {
        panic error("unimplemented");    
    }

    function createMultipleShape(Block[] blocks, Block[] entries, map<Block[]> independentGroups) returns Shape {
        panic error("unimplemented");    
    }

    function findIndependentBlocks(Block[] entries) returns map<Block[]> {
        panic error("unimplemented");    
    }

    function calculate(Block[] validBlocks, Block[] entries) returns Shape? {
        if entries.length() == 1 {
            Block entry = entries[0];
            if entry.branchesIn.length() == 0 {
                return self.createSimpleBlock(validBlocks,entry);
            }
            else {
                return self.createLoopBlock(validBlocks, entries);
            }
        }
        else if entries.length() > 0 {
            map<Block[]> independentGroups = self.findIndependentBlocks(entries);
            if independentGroups.keys().length() > 0 {
                return self.createMultipleShape(validBlocks, entries, independentGroups);
            }
            return self.createLoopBlock(validBlocks, entries);
        }
        else {
            return ();
        }
    }

    function render(Block body, int labelHelper) returns Expression {
        panic error("unimplemented");    
    }

}
