import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

function buildModule(bir:Module mod) returns string[]|BuildError {
    bir:FunctionDefn[] functionDefns = mod.getFunctionDefns();
    wasm:Module module = new;
    boolean tagAdded = false;
    boolean globalSet = false;
    string[] taggedFuncs = [];
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        check bir:verifyFunctionCode(mod, functionDefns[i], code);
        bir:Region[] sorted = from var e in code.regions
                        order by e.entry descending select e;
        code.regions = sorted;
        Scaffold scaffold = new(code, functionDefns[i]);
        scaffold.setMemory = globalSet;
        scaffold.taggedFuncs = taggedFuncs;
        wasm:Expression body = buildFunctionBody(scaffold, module);
        if scaffold.getOverflowOps() {
            wasm:Expression tryBody = module.try((), body, [], 0, [], 0);
            body = tryBody;
            if !tagAdded {
                module.addTag("overflow", "None", "None");
                tagAdded = true;
            }
        }
        string funcName = functionDefns[i].symbol.identifier;
        wasm:Type[] params = [];
        wasm:Type[] locals = [];
        foreach bir:SemType ty in functionDefns[i].signature.paramTypes {
            Repr repr = semTypeRepr(ty);
            params.push(repr.wasm);
        }
        foreach int j in params.length()..<code.registers.length() {
            Repr repr = semTypeRepr(code.registers[j].semType);
            locals.push(repr.wasm);
        }
        Repr retType = semTypeRepr(scaffold.returnType);
        if retType is TaggedRepr && retType.subtype == t:NIL {
            module.addFunction(funcName, params, "None", locals, locals.length(), body);
        }
        else {
            module.addFunction(funcName, params, retType.wasm, locals, locals.length(), body);
        }
        module.addFunctionExport(funcName, funcName);
        globalSet = scaffold.setMemory;
        taggedFuncs = scaffold.taggedFuncs;
    }
    module.addFunctionImport("println", "console", "log", ["i64"], "None");
    module.addFunctionImport("tagged_to_int", "bal", "taggedToInt", ["i64"], "i64");
    taggedInt(module);
    module.setMemory(1, 256, "memory");
    return module.finish();
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
                if index != () && regions[index].kind != "LOOP" {
                    index = ();
                }
            }
        }
    }
    return index;
}

function checkForBreak(bir:BasicBlock[] blocks, bir:Label entry, bir:Label exit) returns boolean {
    bir:Label[] queue = [entry + 1];
    while queue.length() > 0 {
        bir:BasicBlock curr = blocks[queue.remove(0)];
        bir:Insn lastInsn = curr.insns[curr.insns.length() - 1];
        if lastInsn is bir:CondBranchInsn {
            if lastInsn.ifTrue == exit || lastInsn.ifFalse == exit {
                return true;
            }
            queue.push(lastInsn.ifTrue, lastInsn.ifFalse);
        }
        else if lastInsn is bir:BranchInsn {
            bir:Label dest = lastInsn.dest;
            if dest == exit {
                return true;
            }
        }
    }
    return false;
}

function renderBlock(Scaffold scaffold, wasm:Module module, bir:Region curr, bir:Label label, bir:Label? exit = ()) returns wasm:Expression[] {
    wasm:Expression[] children = [];
    int? index = checkForEntry(scaffold.regions, label, scaffold.blocks, exit);
    if scaffold.processedBlocks.indexOf(label) == () {
        scaffold.processedBlocks.push(label);
        children.push(...buildBasicBlock(scaffold, module, scaffold.blocks[label]));
    }
    if index != () {
        if (curr.parent == () && scaffold.regions[index].parent == 0) || (curr.parent + 1 == scaffold.regions[index].parent) {
            wasm:Expression[]? rendered = scaffold.renderedRegion[index.toString()];
            if rendered != () {
                children.push(...rendered);
            }
        }
    }
    return children;
}

function buildFunctionBody(Scaffold scaffold, wasm:Module module) returns wasm:Expression {
    foreach int index in 0..<scaffold.regions.length() {
        bir:Region region = scaffold.regions[index];
        wasm:Expression[] curr = [];
        bir:BasicBlock entry = scaffold.blocks[region.entry];
        bir:Label? exit = region.exit;
        if region.kind == "MULTIPLE" {
            bir:Insn lastInsn = entry.insns[entry.insns.length() - 1];
            if lastInsn is bir:CondBranchInsn {
                wasm:Expression[] header =  buildBasicBlock(scaffold, module, entry);
                wasm:Expression condition = header.remove(header.length() - 1);
                wasm:Expression ifBody = module.block((), renderBlock(scaffold, module, region, lastInsn.ifTrue, exit), 2);
                wasm:Expression elseBody = module.block((), renderBlock(scaffold, module, region, lastInsn.ifFalse, exit), 2);
                curr.push(...header);
                if lastInsn.ifFalse == region.exit {
                    curr.push(module.addIf(condition, ifBody), elseBody);
                }
                else {
                    curr.push(module.addIf(condition, ifBody, elseBody));
                    if exit != () {
                        curr.push(...renderBlock(scaffold, module, region, exit));
                    }
                }
                scaffold.processedBlocks.push(entry.label, lastInsn.ifFalse, lastInsn.ifTrue);
            }
            else {
                panic error("impossible");
            }
        }
        else if region.kind == "LOOP" && exit != () {
            wasm:Expression? loopExit = ();
            string loopLabel = "$block$" + region.entry.toString() + "$break";
            wasm:Expression[] loopHeader = buildBasicBlock(scaffold, module, entry);
            scaffold.processedBlocks.push(entry.label);
            wasm:Expression[] exitCode = renderBlock(scaffold, module, region, exit);
            if exitCode.length() > 0 {
                loopExit = module.block((), exitCode, 2);
            }
            wasm:Expression loopBody = module.block((), renderBlock(scaffold, module, region, entry.label + 1, exit), 2);
            wasm:Expression loop;
            if loopHeader.length() > 0 {
                wasm:Expression condition = loopHeader.remove(loopHeader.length() - 1);
                loopHeader.push(module.addIf(condition, loopBody));
                loop = module.loop(loopLabel, module.block((), loopHeader, 2));
            }
            else {
                loop = module.loop(loopLabel, loopBody);
            }
            if checkForBreak(scaffold.blocks, region.entry, exit) {
                loop = module.block("$block$" + exit.toString() + "$break", [loop], 1);
            }
            curr.push(loop);
            if loopExit != () {
                curr.push(loopExit);
            }
        }
        else if region.kind == "SIMPLE" {
            int last = exit != () ? exit: scaffold.regions.length();
            if last == region.entry {
                curr.push(...renderBlock(scaffold, module, region, last));
            }
            else {
                foreach int j in region.entry..<last {
                    curr.push(...renderBlock(scaffold, module, region, j));
                }
            }
        }
        scaffold.renderedRegion[index.toString()] = curr;
    }
    wasm:Expression[]? parent = scaffold.renderedRegion[(scaffold.regions.length() - 1).toString()];
    if parent != () {
        return module.block((), parent, parent.length());
    }
    return module.nop();
}

