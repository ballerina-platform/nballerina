import ballerina/io;
import ballerina/file;
import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.comm.err;

type BuildError err:Semantic|err:Unimplemented|err:Internal|io:Error|file:Error;

type StringRecord record {
    string global;
    wasm:Expression[] body;
    wasm:Expression offsetExpr;
    string byteStr;
};

public function buildModule(bir:Module birMod, Component? wComp, boolean isDefault) returns Component|BuildError {
    bir:FunctionDefn[] functionDefns = birMod.getFunctionDefns();
    bir:ModuleId modId = birMod.getId();
    Component component = wComp != () ? wComp : new;
    wasm:Module module = component.module;
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionCode code = check birMod.generateFunctionCode(i);
        check bir:verifyFunctionCode(birMod, functionDefns[i], code);
        Scaffold scaffold = new (module, code, functionDefns[i], component, birMod);
        wasm:Expression body = buildFunctionBody(scaffold, module);
        bir:InternalSymbol symbol = functionDefns[i].symbol;
        string mangledName = mangleInternalSymbol(modId, symbol);
        string funcName = functionDefns[i].symbol.identifier;
        wasm:Type[] params = [];
        wasm:Type[] locals = [];
        foreach bir:SemType ty in functionDefns[i].signature.paramTypes {
            params.push(semTypeReprWasm(ty));
        }
        foreach int j in params.length() ..< code.registers.length() {
            locals.push(semTypeReprWasm(code.registers[j].semType));
        }
        RetRepr retRepr = scaffold.getRetRepr();
        if scaffold.getHasPanic() {
            wasm:Expression[] normalBody = [body];
            if retRepr is VoidRepr {
                normalBody.push(module.br("outer-block"));
            }
            wasm:Expression normalBlock = module.block(normalBody, "$normal-block");
            wasm:Expression errWStr = module.structGet(ERROR_TYPE, "val", module.globalGet("bal$err"));
            wasm:Expression message = module.structGet(STRING_TYPE, "val", errWStr);
            wasm:Expression panicBlock = module.block([module.throw(CUSTOM_EXCEPTION_TAG, message)]);
            body = module.block([normalBlock, panicBlock], "$outer-block");
            scaffold.addExceptionTag(CUSTOM_EXCEPTION_TAG, "anyref");
        }
        if funcName == "main" && isDefault {
            component.setMainFunction(mangledName, body, locals);
        }
        else {
            module.addFunction(mangledName, params, retRepr is Repr ? retRepr.wasm : "None", locals, body);
        }
        if functionDefns[i].symbol.isPublic && isDefault {
            module.addFunctionExport(mangledName, funcName);
        }
    }
    return component;
}

function buildFunctionBody(Scaffold scaffold, wasm:Module module) returns wasm:Expression {
    wasm:Expression[] body = [];
    bir:Region[] regions = scaffold.regions;
    preProcessRegions(scaffold);
    int numRegions = regions.length();
    foreach int i in 0 ..< numRegions {
        int index = flipIndex(i, numRegions);
        bir:Region region = regions[index];
        wasm:Expression[] cur = [];
        var { entry, exit, kind } = region;
        bir:BasicBlock entryBb = scaffold.blocks[entry];
        if kind == bir:REGION_COND {
            bir:Insn lastInsn = getLastInsn(entryBb);
            if lastInsn is bir:CondBranchInsn|bir:TypeBranchInsn {
                wasm:Expression[] header = buildBasicBlock(scaffold, module, entryBb);
                wasm:Expression condition = getCondition(header);
                wasm:Expression[] ifTrueExprs = [];
                wasm:Expression[] ifFalseExprs = [];
                if lastInsn is bir:TypeBranchInsn {
                    ifTrueExprs = [buildNarrowReg(module, scaffold, lastInsn.ifTrueRegister)];
                    ifFalseExprs = [buildNarrowReg(module, scaffold, lastInsn.ifFalseRegister, true)];
                }
                ifTrueExprs.push(...buildBlocksInRegion(scaffold, module, lastInsn.ifTrue, region, index, exit));
                ifFalseExprs.push(...buildBlocksInRegion(scaffold, module, lastInsn.ifFalse, region, index, exit));
                wasm:Expression ifBody = module.block(ifTrueExprs);
                wasm:Expression elseBody = module.block(ifFalseExprs);
                cur.push(...header);
                if lastInsn.ifFalse == exit {
                    cur.push(module.addIf(condition, ifBody), elseBody);
                }
                else {
                    cur.push(module.addIf(condition, ifBody, elseBody));
                    if exit != () {
                        cur.push(...buildBlocksInRegion(scaffold, module, exit, region, index));
                    }
                }
            }
        }
        else if kind == bir:REGION_LOOP {
            wasm:Expression loop;
            string loopLabel = "$block$" + entry.toString() + "$break";
            wasm:Expression[] loopHeader = buildBasicBlock(scaffold, module, entryBb);
            bir:Label? loopBodyStartBb = getLoopBodyBlockLabel(entryBb);
            if loopBodyStartBb != () {
                wasm:Expression[] loopBodyChildren = buildBlocksInRegion(scaffold, module, loopBodyStartBb, region, index, exit);
                wasm:Expression loopBody = module.block(loopBodyChildren);
                if isForLoop(entry, loopBodyStartBb) {
                    bir:Label? stepBlock = scaffold.getStepBlock(index);
                    if stepBlock != () {
                        loopBody = module.blockSetName(loopBody, "$block$" + stepBlock.toString() + "$break");
                        wasm:Expression[] stepBody = [loopBody];
                        stepBody.push(...buildBasicBlock(scaffold, module, scaffold.blocks[stepBlock]));
                        loopBody = module.block(stepBody);
                    }
                }
                if loopHeader.length() > 0 {
                    wasm:Expression condition = getCondition(loopHeader);
                    loopHeader.push(module.addIf(condition, loopBody));
                    loopBody = module.block(loopHeader);
                }
                bir:Insn lastInsn = getLastInsn(scaffold.blocks[entry]);
                if lastInsn is bir:CondBranchInsn {
                    if exit != lastInsn.ifFalse {
                        wasm:Expression[] children = [loopBody];
                        children.push(...buildBasicBlock(scaffold, module, scaffold.blocks[lastInsn.ifFalse]));
                        loopBody = module.block(children);
                    }
                }
                loop = module.loop(loopLabel, loopBody);
            }
            else {
                loop = module.loop(loopLabel, module.block(loopHeader)); 
            }
            if scaffold.regionHasBreak(index) {
                loop = module.block([loop], "$block$" + exit.toString() + "$break");
            }
            cur.push(loop);
            if exit != () {
                wasm:Expression[] exitCode = buildBlocksInRegion(scaffold, module, exit, region, index);
                cur.push(module.block(exitCode));
            }
        }
        scaffold.setRenderedRegion(index, cur);
    }
    foreach int j in 0 ..< scaffold.blocks.length() {
        body.push(...buildBlocksInRegion(scaffold, module, j));
    }
    return module.block(body);
}

function preProcessRegions(Scaffold scaffold) {
    bir:Region[] regions = scaffold.regions;
    bir:BasicBlock[] blocks = scaffold.blocks;
    foreach bir:RegionIndex index in 0..<regions.length() {
        bir:Region region = regions[index];
        var { entry, exit, parent, kind } = region;
        scaffold.setRegionEntry(index, entry);
        bir:Label[] valid = parent != () ? scaffold.getRegionBlocks(parent).slice(1) : [];
        bir:Label[] labels = [];
        bir:Label[] queue = [entry];
        bir:Label[] processedQ = [];
        while queue.length() > 0 {
            bir:Label cur = queue.remove(0);
            processedQ.push(cur);
            if parent != () && valid.indexOf(cur) == () {
                continue;
            }
            bir:Insn lastInsn = getLastInsn(blocks[cur]);
            if lastInsn is bir:CondBranchInsn|bir:TypeBranchInsn {
                maybePush([lastInsn.ifTrue, lastInsn.ifFalse], queue, processedQ, exit);
            }
            else if lastInsn is bir:BranchInsn {
                bir:Label dest = lastInsn.dest;
                maybePush([dest], queue, processedQ, exit);
                if kind == bir:REGION_LOOP {
                    if dest == entry {
                        bir:Label? loopBody = getLoopBodyBlockLabel(blocks[entry]);
                        if isForLoop(entry, loopBody) {
                            scaffold.setStepBlock(index, cur);
                            continue;
                        }
                    }
                    else if dest == exit {
                        scaffold.setBreakBlock(index, cur);
                    }
                }
            }
            labels.push(cur);
        }
        scaffold.setRegionBlocks({ index, labels });
    }
}

function getLastInsn(bir:BasicBlock bb) returns bir:Insn {
    return bb.insns[bb.insns.length() - 1];
}

function getLoopBodyBlockLabel(bir:BasicBlock bb) returns bir:Label? {
    bir:Insn lastInsn = getLastInsn(bb);
    bir:Label? dest = ();
    if lastInsn is bir:CondBranchInsn|bir:TypeBranchInsn {
        dest = lastInsn.ifTrue;
    }
    else if lastInsn is bir:BranchInsn {
        dest = lastInsn.dest;
    }
    return dest == bb.label ? () : dest;
}

function isForLoop(bir:Label entry, bir:Label? firstBodyLabel) returns boolean {
    return firstBodyLabel != entry + 1;
}

function maybePush(bir:Label[] labels, bir:Label[] queue, bir:Label[] processedQ, bir:Label? exit) {
    foreach bir:Label label in labels {
        if processedQ.indexOf(label) == () && queue.indexOf(label) == () && label != exit {
            queue.push(label);
        }
    }
}

function buildBlocksInRegion(Scaffold scaffold, wasm:Module module, bir:Label label, bir:Region? cur = () , bir:RegionIndex? rIndex = (), bir:Label? exit = ()) returns wasm:Expression[] {
    wasm:Expression[] children = [];
    bir:RegionIndex? index = scaffold.entryOfRegion(label);
    if scaffold.isBlockNotProcessed(label) {
        children.push(...buildBasicBlock(scaffold, module, scaffold.blocks[label]));
    }
    if index != () {
        if (cur == () && scaffold.regions[index].parent == ()) || cur != () {
            wasm:Expression[]? rendered = scaffold.getRenderedRegion(index);
            if rendered != () {
                children.push(...rendered);
            }
        }
    }
    else if rIndex != () {
        bir:Insn lastInsn = getLastInsn(scaffold.blocks[label]);
        bir:Label[] valid = scaffold.getRegionBlocks(rIndex);
        if lastInsn is bir:BranchInsn {
            bir:Label dest = lastInsn.dest;
            if valid.indexOf(dest) != () && (scaffold.isBlockNotProcessed(dest) || scaffold.isRegionEntry(dest)) {
                children.push(...buildBlocksInRegion(scaffold, module, lastInsn.dest, cur, rIndex, exit));
            }
        }
    }
    return children;
}

function flipIndex(int i, int length) returns int {
    return length - i - 1;
}

function getCondition(wasm:Expression[] body) returns wasm:Expression {
    return body.remove(body.length() - 1);
}
