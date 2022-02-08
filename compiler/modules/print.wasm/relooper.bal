public type Block record {
    Expression code;
    readonly int id;
    Shape? parent = ();
    table<Branch> key(toId) branchesOut = table [];
    int[] branchesIn = [];
};

public enum FlowType {
    Br,
    Direct,
    Continue
}

public type Branch record {
    Expression? condition =();
    FlowType ty = Direct;
    int ancestorId = 0;
    readonly int toId;
};

public type BlockBranchMap record {
    Branch branch;
    int blockId;
};

type SimpleShape record {
    Block inner;
    Shape? next = ();
    int shapeId;
};

type MultipleShape record {
    Shape? next = ();
    map<Shape> handledBlocks = {};
    int shapeId;
};

type LoopShape record {
    Shape? inner;
    Shape? next;
    int[] entries = [];
    int shapeId;
};

type Shape SimpleShape|MultipleShape|LoopShape;

public class Relooper {
    private Module module;
    table<Block> key(id) blocks = table [];
    private int blockId = 1;
    private Shape? root = ();
    private int shapeId = 1;

    public function init(Module module) {
        self.module = module;
    }

    public function addBranch(Block fromB, Block to, Expression? condition = ()) {
        Branch branch = {
            condition: condition,
            toId: to.id
        };
        fromB.branchesOut.add(branch);
        to.branchesIn.push(fromB.id);
    }

    public function addBlock(Expression code) returns Block {
        Block block = {
            code: code,
            id: self.blockId
        };
        self.blockId = self.blockId + 1;
        self.blocks.add(block);
        return block;
    }

    function createSimpleShape(int[] blocks, int entryId) returns Shape {
        int[] nextEntries = [];
        self.shapeId =  self.shapeId + 1;
        Block? entry = self.blocks[entryId];
        if entry != () {
            foreach int nextId in entry.branchesOut.keys() {
                int? index = blocks.indexOf(nextId);
                Block? next = self.blocks[nextId];
                if next != () {
                    if index != () {
                        nextEntries.push(nextId);
                        Branch? branch = entry.branchesOut[nextId];
                        if branch is Branch {
                            branch.ty = Br;
                            branch.ancestorId = self.shapeId;
                            entry.branchesOut.put(branch);
                        }
                    }
                    next.branchesIn = next.branchesIn.filter(b => b != entryId);
                    self.blocks.put(next);
                }
            }
            self.blocks.put(entry);
            int[] validBlocks = blocks.filter(b => b != entryId);
            SimpleShape simple = {
                inner: entry,
                next: self.calculate(validBlocks, nextEntries),
                shapeId: self.shapeId
            };
            entry.parent = simple;
            return simple;
        }
        panic error("impossible");
    }

    function createLoopShape(int[] blocks, int[] entries) returns Shape {
        int[] nextEntries = [];
        int[] innerBlocks = entries.clone();
        int[] validBlocks = blocks.clone();
        self.shapeId = self.shapeId + 1;
        int loopShapeId = self.shapeId;
        int[] queue = entries.clone();
        while queue.length() > 0 {
            int currId = queue.remove(0);
            Block? curr = self.blocks[currId];
            if curr != () {
                foreach int prev in curr.branchesIn {
                    if innerBlocks.indexOf(prev) == () {
                        queue.push(prev);
                        innerBlocks.push(prev);
                        validBlocks = validBlocks.filter(b => b != prev);
                    }
                }
                validBlocks = validBlocks.filter(b => b != currId);
            }
        }
        foreach int entryId in entries {
            Block? entry = self.blocks[entryId];
            if entry != () {
                entry.branchesIn = entry.branchesIn.filter(b => innerBlocks.indexOf(b) == ());
                self.blocks.put(entry);
            }
        }
        foreach int innerId in innerBlocks {
            Block? inner = self.blocks[innerId];
            if inner != () {
                foreach int nextId in inner.branchesOut.keys() {
                    Block? next = self.blocks[nextId];
                    if next != () {
                        if validBlocks.indexOf(nextId) != () {
                            next.branchesIn = next.branchesIn.filter(b => innerBlocks.indexOf(b) == ());
                            Branch? branch = inner.branchesOut[nextId];
                            if branch != () {
                                branch.ty = Br;
                                branch.ancestorId = loopShapeId;
                                inner.branchesOut.put(branch);
                            }
                            self.blocks.put(next);
                            nextEntries.push(nextId);
                        }
                        if entries.indexOf(nextId) != () {
                            Branch? branch = inner.branchesOut[nextId];
                            if branch != () {
                                branch.ty = Continue;
                                branch.ancestorId = loopShapeId;
                                inner.branchesOut.put(branch);
                            }
                        }
                    }
                }
                self.blocks.put(inner);
            }
        }
        LoopShape loop = {
            inner: self.calculate(innerBlocks, entries),
            next : self.calculate(validBlocks, nextEntries),
            shapeId: loopShapeId
        };
        loop.entries = entries;
        return loop;
    }

    function invalidateChildren(int block, map<int?> ownership, map<int[]?> independentGroups) {
        int[] queue = [block];
        while queue.length() > 0 {
            int currId = queue.remove(0);
            Block? curr = self.blocks[currId];
            if curr != () {
                int? owner = ownership[currId.toString()];
                if owner == () {
                    continue;
                }
                else {
                    int[]? ownerGroup = independentGroups[owner.toString()];
                    if ownerGroup != () {
                        ownerGroup = ownerGroup.filter(b => b != currId);
                        independentGroups[owner.toString()] = ownerGroup;
                        ownership[currId.toString()] = ();
                        foreach int childId in curr.branchesOut.keys() {
                            queue.push(childId);
                        }
                    }
                }
            }
        }
    }

    function findIndependentBlocks(int[] entries) returns map<int[]> {
        map<int[]> independentGroups = {};
        map<int?> ownership = {};
        foreach int entry in entries {
            ownership[entry.toString()] = entry;
            independentGroups[entry.toString()] = [entry];
        }
        int[] queue = entries.clone();
        while queue.length() > 0 {
            int currId = queue.remove(0);
            Block? curr = self.blocks[currId];
            if curr != () {
                int? owner = ownership[currId.toString()];
                if owner == () {
                    continue;
                }
                else {
                    foreach int childId in curr.branchesOut.keys() {
                        int? index = ownership.keys().indexOf(childId.toString());
                        if index == () {
                            queue.push(childId);
                            ownership[childId.toString()] = owner;
                            int[]? group = independentGroups[owner.toString()];
                            if group != () {
                                group.push(childId);
                                independentGroups[owner.toString()] = group;
                            }
                        }
                        else {
                            int? existingOwner = ownership[childId.toString()];
                            if existingOwner == () {
                                continue;
                            }
                            else if existingOwner != owner {
                                self.invalidateChildren(childId, ownership, independentGroups);
                            }
                        }
                    }
                }
            }
        }
        foreach int entry in entries {
            int[]? group = independentGroups[entry.toString()];
            if group != () {
                foreach int childId in group {
                    Block? child = self.blocks[childId];
                    if child != () {
                        foreach int parent in child.branchesIn {
                            if ownership[parent.toString()] != ownership[childId.toString()] {
                                self.invalidateChildren(childId, ownership, independentGroups);
                                break;
                            }
                        }
                    }
                }
            }
        }
        foreach int entryId in entries {
            int[]? group = independentGroups[entryId.toString()];
            if group != () {
                if group.length() == 0 {
                    _ = independentGroups.remove(entryId.toString());
                }
            }
            else {
                _ = independentGroups.remove(entryId.toString());
            }
        }
        return independentGroups;
    }

    function createMultipleShape(int[] blocks, int[] entries, map<int[]> independentGroups) returns Shape {
        int[] nextEntries = [];
        int[] validBlocks = blocks.clone();
        self.shapeId = self.shapeId + 1;
        MultipleShape multiple = {
            shapeId: self.shapeId
        };
        foreach int entryId in entries {
            int[]? group  = independentGroups[entryId.toString()];
            Block? entry = self.blocks[entryId];
            if entry != () {
                if group == () {
                    if nextEntries.indexOf(entryId) == () {
                        entry.branchesIn = entry.branchesIn.filter(b => entries.indexOf(b) == ());
                        nextEntries.push(entryId);
                    }
                }
                else {
                    validBlocks = validBlocks.filter(b => b != entryId);
                    foreach int currInnerId in group {
                        Block? currInner = self.blocks[currInnerId];
                        if currInner != () {
                            validBlocks = validBlocks.filter(b => b != currInnerId);
                            foreach int childId in currInner.branchesOut.keys() {
                                if group.indexOf(childId) == () {
                                    Block? curr = self.blocks[childId];
                                    if curr != () {
                                        curr.branchesIn = curr.branchesIn.filter(b => (<int[]>group).indexOf(b) == ());
                                        if nextEntries.indexOf(childId) == () {
                                            nextEntries.push(childId);
                                        }
                                        Branch? branch = currInner.branchesOut[childId];
                                        if branch != () {
                                            branch.ty = Br;
                                            branch.ancestorId = self.shapeId;
                                            currInner.branchesOut.put(branch);
                                        }
                                        self.blocks.put(curr);
                                    }
                                }
                            }
                            self.blocks.put(currInner);
                        }
                    }
                    Shape? handledBlock = self.calculate(group, [entryId]);
                    if handledBlock != () {
                        multiple.handledBlocks[entry.id.toString()] = handledBlock;
                    }
                }
                self.blocks.put(entry);
            }
        }
        multiple.next = self.calculate(validBlocks, nextEntries);
        return multiple;
    }

    function getLabel(int|string targetId, string ty) returns string {
        if ty == "break" {
            return  "$block$" + targetId.toString() + "$break";
        }
        else {
            return  "$loop$" + targetId.toString() + "$continue";
        }
    }

    function renderBranch(Branch branch, Block target, boolean setLabel) returns Expression {
        WasmBlock block = {};
        // if setLabel {
        //     block.name = self.getLabel(target.id, "break");
        // }
        if branch.ty == Br {
            block.body.push(<Break>{ label: self.getLabel(target.id, "break") });
        }
        else if branch.ty == Continue {
            block.body.push(<Break>{ label: self.getLabel(branch.ancestorId, "continue") });
        }
        return block;
    }

    function renderBlock(Block block) returns Expression {
        WasmBlock ret = {};
        ret.body.push(block.code);
        if block.branchesOut.length() == 0 {
            return ret;
        }
        boolean setLabel = true;
        boolean fused = false;
        MultipleShape? fusedShape = ();
        Shape? parent = block.parent;
        if parent != () {
            Shape? next = parent.next;
            if next != () && next is MultipleShape {
                fused = true;
                parent.next = next.next;
                fusedShape = next;
                if fusedShape != () && fusedShape.handledBlocks.length() == block.branchesOut.length() {
                    setLabel = false;
                }
            }
        }
        Expression? condition = ();
        WasmBlock ifBody = {};
        WasmBlock elseBody = {};
        Expression[] root = [];
        foreach int outId in block.branchesOut.keys() {
            boolean isDefault = false;
            Block? target = self.blocks[outId];
            Branch? details = block.branchesOut[outId];
            if target != () && details != () {
                if details.condition == () {
                    isDefault = true;
                }
                boolean hasFusedContent = false;
                if fusedShape != () {
                    hasFusedContent = fused && fusedShape.handledBlocks.hasKey(target.id.toString());
                }
                Expression[] currContent = [];
                if hasFusedContent {
                    details.ty = Direct;
                }
                if setLabel || details.ty != Direct || hasFusedContent {
                    if details.ty != Direct {
                        currContent.push(self.renderBranch(details, target, setLabel));
                    }
                    if hasFusedContent && fusedShape != () {
                        Shape? sh = fusedShape.handledBlocks[target.id.toString()];
                        if sh != () {
                            Expression[] body = self.renderShape(sh);
                            foreach Expression expr in body {
                                currContent.push(expr);
                            }
                        }
                    }
                }
                if currContent.length() > 0 {
                    if isDefault {
                        if ifBody.body.length() == 0 {
                            root = currContent;
                        }
                        else {
                            if currContent.length() == 1 {
                                Expression body = currContent[0];
                                if body is WasmBlock {
                                    elseBody = body;
                                }
                                else {
                                    elseBody.body = currContent;
                                }
                            }
                            else {
                                elseBody.body = currContent;
                            }
                        }
                    }
                    else {
                        if currContent.length() == 1 {
                            Expression body = currContent[0];
                            if body is WasmBlock {
                                ifBody = body;
                            }
                            else {
                                ifBody.body = currContent;
                            }
                        }
                        else {
                            ifBody.body = currContent;
                        }
                        condition = details.condition;
                    }
                }
            }
        }
        if condition != () {
            If ifExpr = {
                ifBody: ifBody,
                elseBody: elseBody,
                condition: condition
            };
            ret.body.push(ifExpr);
        }
        else {
            foreach Expression expr in root {
                ret.body.push(expr);
            }
        }
        return ret;
    }

    function calculate(int[] validBlocks, int[] entries) returns Shape? {
        if entries.length() == 1 {
            Block? entry = self.blocks[entries[0]];
            if entry != () {
                if entry.branchesIn.length() == 0 {
                    return self.createSimpleShape(validBlocks, entries[0]);
                }
                else {
                    return self.createLoopShape(validBlocks, entries);
                }
            }
            panic error("impossible");
        }
        else if entries.length() > 0 {
            map<int[]> independentGroups = self.findIndependentBlocks(entries);
            if independentGroups.keys().length() > 0 {
                return self.createMultipleShape(validBlocks, entries, independentGroups);
            }
            return self.createLoopShape(validBlocks, entries);
        }
        else {
            return ();
        }
    }

    function renderShape(Shape sh, string? label = ()) returns Expression[] {
        if sh is SimpleShape {
            return self.renderSimpleShape(sh, label);
        }
        else if sh is LoopShape {
            return self.renderLoopShape(sh);
        }
        panic error("impossible");
    }

    function handleFollowupMultiples(Expression ret, Shape parent) returns Expression {
        Shape? next = parent.next;
        if next == () {
            return ret;
        }
        WasmBlock curr = {};
        if ret is WasmBlock {
            curr = ret;
        }
        else {
            curr.body.push(ret);
        }

        while next != () {
            if next is MultipleShape {
                foreach string key in next.handledBlocks.keys() {
                    curr.name = self.getLabel(key, "break");
                    WasmBlock outerBlock = {
                        body: [curr]
                    };
                    Shape? handledShape = next.handledBlocks[key];
                    if handledShape != () {
                        Expression[] handledExpr = self.renderShape(handledShape);
                        foreach Expression expr in handledExpr {
                            outerBlock.body.push(expr);
                        }
                    }
                    curr = outerBlock;
                }
                parent.next = next.next;
                next = next.next;
            }
            else {
                break;
            }
        }
        if next != () {
            if next is SimpleShape {
                curr.name = self.getLabel(next.inner.id, "break");
            }
            else if next is LoopShape {
                if next.entries.length() == 1 {
                    curr.name = self.getLabel(next.entries[0], "break");
                }
                else {
                    foreach int entryId in next.entries {
                        curr.name = self.getLabel(entryId, "break");
                        WasmBlock outerBlock = {
                            body: [curr]
                        };
                        curr = outerBlock;
                    }
                }
            }
        }
        return curr;
    }

    function renderSimpleShape(SimpleShape simple, string? label = ()) returns Expression[] {
        Expression[] children = [];
        Expression ret = self.renderBlock(simple.inner);
        ret = self.handleFollowupMultiples(ret, simple);
        children.push(ret);
        Shape? next = simple.next;
        if next != () {
            Expression[] nextExpr = self.renderShape(next);
            foreach Expression expr in nextExpr {
                children.push(expr);
            }
        }
        return children;
    }

    function renderLoopShape(LoopShape loop) returns Expression[] {
        Expression[] children = [];
        WasmLoop loopBlock = {
            name: self.getLabel(loop.shapeId, "continue")
        };
        Shape? inner = loop.inner;
        if inner != () {
            Expression[] innerExpr = self.renderShape(inner);
            loopBlock.loopBody = innerExpr;
        }
        Expression ret = self.handleFollowupMultiples(loopBlock, loop);
        children.push(ret);
        Shape? next = loop.next;
        if next != () {
            Expression[] nextExpr = self.renderShape(next);
            foreach Expression expr in nextExpr {
                children.push(expr);
            }
        }
        return children;
    }

    function makeBlockText(Expression[] result, int spacesCount) returns string {
        Expression curr;
        string[] currStr = [];
        while result.length() > 0 {
            curr = result.remove(0);
            if curr is WasmBlock {
                string? name = curr.name;
                if name != () {
                    currStr.push("(block ");
                    currStr.push(name);
                }
                else {
                    currStr.push("(block ");
                }
                foreach Expression expr in curr.body {
                    currStr.push(self.makeBlockText([expr], spacesCount + 1));
                }
                currStr.push(")");
            }
            else if curr is WasmLoop {
                string? name = curr.name;
                if name != () {
                    currStr.push("(loop ");
                    currStr.push(name);
                }
                else {
                    currStr.push("(loop ");
                }
                foreach Expression expr in curr.loopBody {
                    currStr.push(self.makeBlockText([expr], spacesCount + 1));
                }
                currStr.push(")");
            }
            else if curr is If {
                If ifExpr = curr;
                WasmBlock? elseBody = ifExpr.elseBody;
                currStr.push("(if ");
                string? conditionCode = ifExpr.condition.code;
                if conditionCode != () {
                    currStr.push(conditionCode);
                }
                currStr.push(self.makeBlockText([ifExpr.ifBody], spacesCount + 1));
                if elseBody != () {
                    currStr.push(self.makeBlockText([elseBody], spacesCount + 1));
                }
                currStr.push(")");
            }
            else if curr is Break {
                currStr.push("(br ");
                currStr.push(curr.label);
                currStr.push(")");
            }
            else {
                string? code = curr.code;
                if code != () {
                    currStr.push(code);
                }
            }
        }
        return "".'join(...currStr);
    }

    public function render(Block body, int labelHelper) returns Expression {
        self.root = self.calculate(self.blocks.keys(), [body.id]);
        Expression[] result = [];
        Shape? parent = self.root;
        if parent != () {
            result = self.renderShape(parent);
        }
        return {code: self.makeBlockText(result, 1)};
    }

    public function reset(){
        self.blocks = table[];
        self.blockId = 1;
        self.root = ();
        self.shapeId = 1;
    }

}