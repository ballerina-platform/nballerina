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
        Block[] nextEntries = [];
        Block[] innerBlocks = [];
        Block[] validBlocks = blocks.clone();
        foreach Block entry in entries {
            foreach Block prev in entry.branchesIn {
                if innerBlocks.indexOf(prev) == () {
                    innerBlocks.push(prev);
                    validBlocks = blocks.filter(b => b.id != prev.id);
                }
            }    
        }
        foreach Block inner in innerBlocks {
            foreach BlockBranchMap block in inner.branchesOut {
                if innerBlocks.indexOf(block.block) == () {
                    nextEntries.push(block.block);
                }
            }
        }
        LoopShape loop = {
            inner: self.calculate(innerBlocks, entries),
            next : self.calculate(validBlocks, nextEntries)
        };
        return loop;
    }

    function invalidateChildren(Block block, map<Block?> ownership, map<Block[]?> independentGroups) {
        Block[] queue = [block];
        while queue.length() > 0 {
            Block curr = queue.remove(0);
            int? index = ownership.keys().indexOf(curr.id.toString());
            if index == () {
                continue;
            }
            else {
                Block? owner = ownership[curr.id.toString()];
                if owner == () {
                    continue;
                }
                else {
                    Block[] ownerGroup = <Block[]>independentGroups[owner.id.toString()];
                    ownerGroup = ownerGroup.filter(b => b.id != curr.id);
                    independentGroups[owner.id.toString()] = ownerGroup;
                    ownership[curr.id.toString()] = ();
                    foreach BlockBranchMap child in curr.branchesOut {
                        queue.push(child.block);
                    }
                }
            }
        }
    }

    function findIndependentBlocks(Block[] entries) returns map<Block[]> {
        map<Block[]> independentGroups = {};
        map<Block?> ownership = {};
        foreach Block entry in entries {
            ownership[entry.id.toString()] = entry;
            independentGroups[entry.id.toString()] = [entry];
        }
        Block[] queue = entries.clone();

        while queue.length() > 0 {
            Block curr = queue.remove(0);
            int? index = ownership.keys().indexOf(curr.id.toString());
            if index != () {
                Block? owner = ownership[curr.id.toString()];
                if owner == () {
                    continue;
                }
                else {
                    foreach BlockBranchMap child in curr.branchesOut {
                        index = ownership.keys().indexOf(child.block.id.toString());
                        if index == () {
                            queue.push(child.block);
                            ownership[child.block.id.toString()] = owner;
                            Block[] group = <Block[]>independentGroups[owner.id.toString()];
                            group.push(child.block);            
                            independentGroups[owner.id.toString()] = group;
                        }
                        else {
                            Block? existingOwner = ownership[index.toString()];
                            if existingOwner == () {
                                continue;
                            }
                            else if existingOwner.id != owner.id {
                                self.invalidateChildren(child.block, ownership, independentGroups);
                            } 
                        }
                    }
                }
            }
            else {
                continue;
            }
        }
        foreach Block entry in entries {
            Block[] group = <Block[]>independentGroups[entry.id.toString()];
            Block[] toInvalidate =[];
            foreach Block child in group {
                foreach Block parent in child.branchesIn {
                    if ownership[parent.id.toString()] != ownership[child.id.toString()] {
                        self.invalidateChildren(child,ownership,independentGroups);
                        break;
                    }
                }
            }
        }
        foreach Block entry in entries {
            Block[] group = <Block[]>independentGroups[entry.id.toString()];
            if group.length() == 0 {
                Block[] removed = independentGroups.remove(entry.id.toString());
            }
        }
        return independentGroups;
    }

    function createMultipleShape(Block[] blocks, Block[] entries, map<Block[]> independentGroups) returns Shape {
        Block[] nextEntries = [];
        Block[] validBlocks = blocks.clone();
        MultipleShape multiple = {};
        Block[] currEntries = [];
        foreach Block entry in entries {
            int? index = independentGroups.keys().indexOf(entry.id.toString());
            if index == () {
                nextEntries.push(entry);
            }
            else {
                currEntries = [];
                currEntries.push(entry);
                validBlocks = validBlocks.filter(b => b.id != entry.id);
                Block[] group = <Block[]>independentGroups[entry.id.toString()];
                foreach Block currInner in group {
                    validBlocks = validBlocks.filter(b => b.id != currInner.id);
                    foreach BlockBranchMap item in currInner.branchesOut {
                        if group.indexOf(item.block) == () && nextEntries.indexOf(item.block) == () {
                            nextEntries.push(item.block);
                            foreach Block prev in item.block.branchesIn {
                                index = entries.indexOf(prev);
                                if index != () {
                                    item.block.branchesIn = item.block.branchesIn.filter(b => b.id != prev.id);
                                }
                            }
                        }
                    }
                }
                multiple.handledBlocks[entry.id.toString()] = self.calculate(group, currEntries);
            }
        }
        multiple.next = self.calculate(validBlocks,nextEntries);
        return multiple;
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
