import ballerina/io;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;
import wso2/nballerina.comm.err;

type BuildError err:Semantic|err:Unimplemented|err:Internal;

function buildModule(bir:Module mod) returns string[]|BuildError {
    bir:FunctionDefn[] functionDefns = mod.getFunctionDefns();
    wasm:Module module = new;
    string[] tagsAdded = [];
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        check bir:verifyFunctionCode(mod, functionDefns[i], code);
        Scaffold scaffold = new(module, code, functionDefns[i], tagsAdded);
        wasm:Expression body = buildFunctionBody(scaffold, module);
        if scaffold.getExceptionTags().length() > 0 {
            body = module.try(body);
            tagsAdded.push(...scaffold.getExceptionTags());
        }
        string funcName = functionDefns[i].symbol.identifier;
        wasm:Type[] params = [];
        wasm:Type[] locals = [];
        foreach bir:SemType ty in functionDefns[i].signature.paramTypes {
            params.push(semTypeReprWasm(ty));
        }
        foreach int j in params.length()..<code.registers.length() {
            locals.push(semTypeReprWasm(code.registers[j].semType));
        }
        Repr retType = semTypeRepr(scaffold.returnType);
        module.addFunction(funcName, params, retType is TaggedRepr && retType.subtype == t:NIL ? "None": retType.wasm, locals, body);
        if functionDefns[i].symbol.isPublic {
            module.addFunctionExport(funcName, funcName);
        }
    }
    module.addFunctionImport("println", "console", "log", ["eqref"], "None");
    addRttFunctions(module);
    return module.finish();
}

function addRttFunctions(wasm:Module module) {
    addFuncIntToTagged(module);
    addFuncTaggedToInt(module);
    addFuncTaggedToBoolean(module);
    addFuncGetType(module);
    addFuncGetArrayLength(module);
    addFuncGetValueOfIndex(module);
    addFuncArrayPush(module);
    addFuncCreateArray(module);
    addFuncArraySet(module);
    addFuncArrayGrow(module);
    addFuncGetTypeChildren(module);
    module.addType("List", module.struct(["arr", "len"], [{ base: "AnyList" }, "i64"], [true, true]));
    module.addType("AnyList", module.array("eqref"));
    module.addType(BOXED_INT_TYPE, module.struct(["val"], ["i64"], [true]));
    module.addTag(INDEX_OUT_0F_BOUND_TAG);
    module.addTagExport(INDEX_OUT_0F_BOUND_TAG,INDEX_OUT_0F_BOUND_TAG);
    module.addTag(INDEX_TOO_LARGE_TAG);
    module.addTagExport(INDEX_TOO_LARGE_TAG,INDEX_TOO_LARGE_TAG);
}

function checkForEntry(bir:Region[] regions, bir:Label label, bir:BasicBlock[] blocks, bir:Label? exit = ()) returns int? {
    int? index = ();
    foreach int i in 0..<regions.length() {
        bir:Region region = regions[i];
        if region.entry == label {
            index = i;
            break;
        }
    }
    if exit != () && index == () {
        bir:Insn lastInsn = blocks[label].insns[blocks[label].insns.length() - 1];
        if lastInsn is bir:BranchInsn {
            if lastInsn.dest != exit {
                index = checkForEntry(regions, lastInsn.dest, blocks, exit);
                if index != () && regions[index].kind != bir:REGION_LOOP {
                    index = ();
                }
            }
        }
    }
    return index;
}

function checkForBreakOrCont(Scaffold scaffold, bir:Label entry, bir:Label? exit) returns bir:Label? {
    bir:Label[] queue = [getLoopBodyBlockLabel(scaffold.blocks[entry])];
    bir:Label[] processedQ = [entry];
    while queue.length() > 0 {
        bir:BasicBlock cur = scaffold.blocks[queue.remove(0)];
        processedQ.push(cur.label);
        bir:Insn lastInsn = cur.insns[cur.insns.length() - 1];
        if lastInsn is bir:CondBranchInsn {
            checkAndPush([lastInsn.ifTrue, lastInsn.ifFalse], queue, processedQ);
        }
        else if lastInsn is bir:BranchInsn {
            bir:Label dest = lastInsn.dest;
            if dest == exit {
                return cur.label;
            }
            checkAndPush([dest], queue, processedQ);
        }
    }
    return ();
}

function checkAndPush(bir:Label[] labels, bir:Label[] queue, bir:Label[] processedQ) {
    foreach bir:Label label in labels {
        if processedQ.indexOf(label) == () && queue.indexOf(label) == () {
            queue.push(label);
        }
    }
}

function buildBlockInRegion(Scaffold scaffold, wasm:Module module, bir:Region? cur, bir:Label label, bir:Label? exit = ()) returns wasm:Expression[] {
    wasm:Expression[] children = [];
    int? index = checkForEntry(scaffold.regions, label, scaffold.blocks, exit);
    if scaffold.processedBlocks.indexOf(label) == () {
        children.push(...buildBasicBlock(scaffold, module, scaffold.blocks[label]));
    }
    if index != () {
        if (cur == () && scaffold.regions[index].parent == ()) || cur != ()  {
            wasm:Expression[]? rendered = scaffold.renderedRegion[index.toString()];
            if rendered != () {
                children.push(...rendered);
            }
        }
    }
    return children;
}

function preProcessRegions(Scaffold scaffold) {
    foreach int i in 0..<scaffold.regions.length() {
        bir:Region region = scaffold.regions[i];
        if region.kind == bir:REGION_LOOP {
            bir:Label? cur = checkForBreakOrCont(scaffold, region.entry, region.exit);
            if cur != () {
                scaffold.brBlockLabels.push(cur);
                scaffold.regionsWithBr.push(i);
            }
        }
    }
}

function getLoopBodyBlockLabel(bir:BasicBlock bb) returns bir:Label {
    bir:Insn lastInsn = bb.insns[bb.insns.length() - 1];
    if lastInsn is bir:CondBranchInsn {
        return lastInsn.ifTrue;
    }
    else if lastInsn is bir:BranchInsn {
        return lastInsn.dest;
    }
    panic error("impossible");
}

function buildFunctionBody(Scaffold scaffold, wasm:Module module) returns wasm:Expression {
    wasm:Expression[] body = [];
    preProcessRegions(scaffold);
    foreach int index in 0..<scaffold.regions.length() {
        bir:Region region = scaffold.regions[index];
        wasm:Expression[] cur = [];
        bir:BasicBlock entry = scaffold.blocks[region.entry];
        bir:Label? exit = region.exit;
        if region.kind == bir:REGION_COND {
            bir:Insn lastInsn = entry.insns[entry.insns.length() - 1];
            if lastInsn is bir:CondBranchInsn {
                wasm:Expression[] header =  buildBasicBlock(scaffold, module, entry);
                wasm:Expression condition = header.remove(header.length() - 1);
                wasm:Expression ifBody = module.block(buildBlockInRegion(scaffold, module, region, lastInsn.ifTrue, exit));
                wasm:Expression elseBody = module.block(buildBlockInRegion(scaffold, module, region, lastInsn.ifFalse, exit));
                cur.push(...header);
                if lastInsn.ifFalse == region.exit {
                    cur.push(module.addIf(condition, ifBody), elseBody);
                }
                else {
                    cur.push(module.addIf(condition, ifBody, elseBody));
                     if exit != () {
                        cur.push(...buildBlockInRegion(scaffold, module, region, exit));
                    }
                }
            }
        }
        else if region.kind == bir:REGION_LOOP && exit != () {
            string loopLabel = "$block$" + region.entry.toString() + "$break";
            wasm:Expression[] loopHeader = buildBasicBlock(scaffold, module, entry);
            bir:Label loopBodyLabel = getLoopBodyBlockLabel(entry);
            wasm:Expression loopBody = module.block(buildBlockInRegion(scaffold, module, region, loopBodyLabel, exit));
            wasm:Expression[] stepBody = [];
            wasm:Expression loop;
            if loopBodyLabel != entry.label + 1 {
                bir:Label? stepBlLabel = checkForBreakOrCont(scaffold, entry.label, entry.label);
                if stepBlLabel != () {
                    loopBody = module.blockSetName(loopBody, "$block$" + stepBlLabel.toString() + "$break");
                    stepBody = [loopBody];
                    stepBody.push(...buildBlockInRegion(scaffold, module, region, stepBlLabel, exit));
                    loopBody = module.block(stepBody);
                }
            }
            if loopHeader.length() > 0 {
                wasm:Expression condition = loopHeader.remove(loopHeader.length() - 1);
                loopHeader.push(module.addIf(condition, loopBody));
                loop = module.loop(loopLabel, module.block(loopHeader));
            }
            else {
                loop = module.loop(loopLabel, loopBody);
            }
            if scaffold.regionsWithBr.indexOf(index) != () {
                loop = module.block([loop], "$block$" + exit.toString() + "$break");
            }
            cur.push(loop);
            wasm:Expression[] exitCode = buildBlockInRegion(scaffold, module, region, exit);
            if exitCode.length() > 0 {
                cur.push(module.block(exitCode));
            }
        }
        scaffold.renderedRegion[index.toString()] = cur;
    }
    foreach int j in 0..<scaffold.blocks.length() {
        body.push(...buildBlockInRegion(scaffold, module, (), j));
    }
    return module.block(body);
}

public function compileModule(bir:Module mod, string? outputFilename) returns io:Error? {
    do {
	    string[] module = check buildModule(mod);
        if outputFilename != () {
            return io:fileWriteLines(outputFilename, module);
        }
    }
    on fail var e {
        io:println(e);
    }
}
