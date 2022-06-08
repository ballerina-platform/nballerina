import ballerina/io;
import ballerina/file;
import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.comm.err;

type BuildError err:Semantic|err:Unimplemented|err:Internal|io:Error|error;

type StringRecord record {
    int offset;
    string global;
    int length;
    int[] surrogate;
};

type Context record {
    string[] exceptionTags = [];
    string[] globals = [];
    map<StringRecord> segments = {};
    int offset = 0;
    RuntimeModule[] runtimeModules = [taggingMod, listMod, numberMod, stringMod, mapMod];
};

function buildModule(bir:Module mod) returns string[]|BuildError {
    bir:FunctionDefn[] functionDefns = mod.getFunctionDefns();
    wasm:Module module = new;
    Context context = {};
    wasm:Expression? mainBody = ();
    wasm:Type[] mainLocals = [];
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        check bir:verifyFunctionCode(mod, functionDefns[i], code);
        Scaffold scaffold = new (module, code, functionDefns[i], context, mod.getTypeContext());
        wasm:Expression body = buildFunctionBody(scaffold, module);
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
        if scaffold.hasPanic {
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
        if funcName == "main" {
            mainBody = body;
            mainLocals = locals;
        }
        else {
            module.addFunction(funcName, params, retRepr is Repr ? retRepr.wasm : "None", locals, body);
        }
        if functionDefns[i].symbol.isPublic {
            module.addFunctionExport(funcName, funcName);
        }
    }
    if mainBody != () {
        wasm:Expression extendedBody = module.block([initStrings(module, context.segments, context.offset), mainBody]);
        module.addFunction("main", [], "None", mainLocals, extendedBody);
    }
    module.addFunctionImport("println", "console", "log", ["eqref"], "None");
    module.addGlobal("bal$err", { base: ERROR_TYPE, initial: "null" }, module.refNull(ERROR_TYPE));
    _ = check addRttFunctions(module, context.runtimeModules);
    return module.finish();
}


function initStrings(wasm:Module module, map<StringRecord> records, int finalOffset) returns wasm:Expression {
    wasm:Expression[] body = [];
    wasm:Expression[] offsetExpr = [];
    string[] byteStrs = [];
    foreach string key in records.keys() {
        var { offset, global, surrogate, length }  = records.get(key);
        buildStringData(module, key, global, offset, offsetExpr, byteStrs);
        wasm:Expression jsString = buildRuntimeFunctionCall(module, createStringFunction, [
                                                                                            module.addConst({ i32: offset }), 
                                                                                            module.addConst({i32: length })
                                                                                          ]);
        wasm:Expression defaultSurrogate = module.arrayNewDef("Surrogate", module.addConst({ i32: surrogate.length() }));
        wasm:Expression defaultHash = module.addConst({ i32: -1 });
        wasm:Expression struct = module.structNew(STRING_TYPE, [
                                                                module.addConst({ i32: TYPE_STRING }), 
                                                                jsString, 
                                                                defaultSurrogate, 
                                                                defaultHash
                                                                ]);
        body.push(module.globalSet(global, struct));
        wasm:Expression surrogateArr = module.structGet(STRING_TYPE, "surrogate", module.globalGet(global));
        foreach int i in 0 ..< surrogate.length() {
            body.push(module.arraySet("Surrogate", 
                                      surrogateArr,      
                                      module.addConst({ i32: i }), 
                                      module.addConst({ i32: surrogate[i] })));
        }
    }
    int pages = (finalOffset / 65536) + 1;
    module.setMemory(pages, "memory", byteStrs, offsetExpr, false);
    return module.block(body);
}

function buildStringData(wasm:Module module, string key, string global, int offset, wasm:Expression[] offsetExpr, string[] byteStrs) {
    byte[] bytes = key.toBytes();
    string[] hexes = [];
    foreach byte item in bytes {
        string hex = item.toHexString();
        hexes.push(hex.length() == 2 ? hex : "0" + hex);
    }
    string byteStr = "\\".'join(...hexes);
    byteStr = byteStr.length() > 0 ? "\\" + byteStr : byteStr;
    byteStrs.push(byteStr);
    offsetExpr.push(module.addConst({ i32: offset }));
    module.addGlobal(global, { base: STRING_TYPE, initial: "null" }, module.refNull(STRING_TYPE));
}

function addRttFunctions(wasm:Module module, RuntimeModule[] rtModules) returns error? {
    map<wasm:Wat[]> sectionData = {};
    map<wasm:Wat[]> sectionIdentifiers = {};
    map<wasm:Wat[]> functions = {};
    foreach RuntimeModule mod in rtModules.reverse() {
        string absPath = check file:getAbsolutePath("");
        string mainDir = "nballerina";
        int index = <int>absPath.lastIndexOf(mainDir);
        string path = absPath.substring(0, index + mainDir.length()) + "/wrun/wat/" + mod;
        wasm:Wat[] wat = check io:fileReadLines(path);
        string? identifier = ();
        string[] content = [];
        foreach wasm:Wat line in wat {
            wasm:Wat trimmed = line.trim();
            int len = trimmed.length();
            if len > 2 && trimmed.substring(0, 2) == ";;" {
                if identifier is wasm:Section {
                    wasm:Wat[]? data = sectionData[identifier];
                    if data != () {
                        data.push(...content);
                    }
                    else {
                        sectionData[identifier] = content;
                    }
                }
                else if identifier != () {
                    functions[identifier] = content;
                }
                identifier = trimmed.substring(3);
                if identifier == "end" {
                    break;
                }
                content = [];
            }
            else if identifier is wasm:Section {
                wasm:Wat[]? identifiers = sectionIdentifiers[identifier];
                string iden = getSectionIdentifier(line);
                if identifiers != () {
                    if identifiers.indexOf(iden) == () {
                        identifiers.push(iden);
                        content.push(line);
                    }
                }
                else {
                    sectionIdentifiers[identifier] = [iden];
                    content.push(line);
                }
            }
            else if identifier != () {
                if content.length() == 0 && functions.hasKey(identifier) {
                    identifier = ();
                    continue;
                }
                content.push(line);
            }
        }
    }
    foreach string key in sectionData.keys() {
        module.addSection(<wasm:Section>key, <wasm:Wat[]>sectionData[key]);
    }
    foreach string key in functions.keys() {
        module.setRttFuncs(<wasm:Wat[]>functions[key]);
    }
}

function getSectionIdentifier(wasm:Wat line) returns string {
    int? index = line.indexOf("$");
    if index != () {
        string sub = line.substring(index);
        int nextCloseParenthesis = <int>sub.indexOf(")");
        int? nextSpace = sub.indexOf(" ");
        int end = nextCloseParenthesis;
        if nextSpace != () {
            end = nextCloseParenthesis > nextSpace ? nextSpace : nextCloseParenthesis;
        }
        return sub.substring(0, end);
    }
    panic error("impossible");
}

function checkForEntry(bir:Region[] regions, bir:Label label, bir:BasicBlock[] blocks, bir:Label? exit = ()) returns int? {
    int? index = ();
    foreach int i in 0 ..< regions.length() {
        bir:Region region = regions[i];
        if region.entry == label {
            index = i;
            break;
        }
    }
    if exit != () && index == () {
        bir:Insn lastInsn = getLastInsn(blocks[label]);
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
    bir:Label[] queue = [];
    bir:Label? firstLabel = getLoopBodyBlockLabel(scaffold.blocks[entry]);
    if firstLabel != () {
        queue.push(firstLabel);
    }
    bir:Label[] processedQ = [entry];
    while queue.length() > 0 {
        bir:BasicBlock cur = scaffold.blocks[queue.remove(0)];
        processedQ.push(cur.label);
        bir:Insn lastInsn = getLastInsn(cur);
        if lastInsn is bir:CondBranchInsn|bir:TypeBranchInsn {
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

function checkAndPush(bir:Label[] labels, bir:Label[] queue, bir:Label[] processedQ, bir:Label? exit = ()) {
    foreach bir:Label label in labels {
        if processedQ.indexOf(label) == () && queue.indexOf(label) == () {
            if exit == () || label != exit {
                queue.push(label);
            }    
        }
    }
}

function getLastInsn(bir:BasicBlock bb) returns bir:Insn {
    return bb.insns[bb.insns.length() - 1];
}

function getRegionBlocks(Scaffold scaffold) {
    foreach int i in 0..<scaffold.regions.length() {
        int index = scaffold.regions.length() - i - 1;
        bir:Region region = scaffold.regions[index];
        bir:RegionIndex? parent = region.parent;
        bir:Label[]? parentBbs = parent != () ? scaffold.regionBlocks[parent.toString()] : [];
        bir:Label[] blocks = [];
        bir:Label[] queue = [region.entry];
        bir:Label[] processedQ = [];
        while queue.length() > 0 {
            bir:BasicBlock cur = scaffold.blocks[queue.remove(0)];
            processedQ.push(cur.label);
            if parent != () && parentBbs != () && parentBbs.indexOf(cur.label) == () {
                continue;
            }
            blocks.push(cur.label);
            bir:Insn lastInsn = getLastInsn(cur);
            if lastInsn is bir:CondBranchInsn|bir:TypeBranchInsn {
                checkAndPush([lastInsn.ifTrue, lastInsn.ifFalse], queue, processedQ, region.exit);
            }
            else if lastInsn is bir:BranchInsn {
                bir:Label dest = lastInsn.dest;
                checkAndPush([dest], queue, processedQ, region.exit);
            }
        }
        scaffold.regionBlocks[i.toString()] = blocks;
    }
}

function buildBlockInRegion(Scaffold scaffold, wasm:Module module, bir:Region? cur, bir:RegionIndex? rIndex, bir:Label label, bir:Label? exit = ()) returns wasm:Expression[] {
    wasm:Expression[] children = [];
    int? index = checkForEntry(scaffold.regions, label, scaffold.blocks, exit);
    if scaffold.processedBlocks.indexOf(label) == () {
        children.push(...buildBasicBlock(scaffold, module, scaffold.blocks[label]));
    }
    if index != () {
        if (cur == () && scaffold.regions[index].parent == ()) || cur != () {
            wasm:Expression[]? rendered = scaffold.renderedRegion[index.toString()];
            if rendered != () {
                children.push(...rendered);
            }
        }
    }
    else if rIndex != () {
        bir:Insn lastInsn = getLastInsn(scaffold.blocks[label]);
        bir:Label[] valid = scaffold.regionBlocks.get((scaffold.regions.length() - rIndex - 1).toString());
        if lastInsn is bir:BranchInsn && lastInsn.dest != exit && valid.indexOf(lastInsn.dest) != () && scaffold.processedBlocks.indexOf(lastInsn.dest) == () {
            children.push(...buildBlockInRegion(scaffold, module, cur, rIndex, lastInsn.dest, exit));
        }
    }
    return children;
}

function preProcessRegions(Scaffold scaffold) {
    getRegionBlocks(scaffold);
    foreach int i in 0 ..< scaffold.regions.length() {
        bir:Region region = scaffold.regions[i];
        if region.kind == bir:REGION_LOOP {
            bir:Label? loopBodyLabel = getLoopBodyBlockLabel(scaffold.blocks[region.entry]);
            if loopBodyLabel != region.entry + 1 {
                bir:Label? cur = checkForBreakOrCont(scaffold, region.entry, region.entry);
                if cur != () {
                    scaffold.contBlockLabels.push(cur);
                }
            }
            bir:Label? cur = checkForBreakOrCont(scaffold, region.entry, region.exit);
            if cur != () {
                scaffold.brBlockLabels.push(cur);
                scaffold.regionsWithBr.push(i);
            }
        }
    }
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

function buildFunctionBody(Scaffold scaffold, wasm:Module module) returns wasm:Expression {
    wasm:Expression[] body = [];
    preProcessRegions(scaffold);
    foreach int index in 0 ..< scaffold.regions.length() {
        bir:Region region = scaffold.regions[index];
        wasm:Expression[] cur = [];
        var { entry, exit, kind } = region;
        bir:BasicBlock entryBb = scaffold.blocks[entry];
        if kind == bir:REGION_COND {
            bir:Insn lastInsn = getLastInsn(entryBb);
            if lastInsn is bir:CondBranchInsn|bir:TypeBranchInsn {
                wasm:Expression[] header = buildBasicBlock(scaffold, module, entryBb);
                wasm:Expression condition = header.remove(header.length() - 1);
                wasm:Expression[] ifTrueExprs = [];
                wasm:Expression[] ifFalseExprs = [];
                if lastInsn is bir:TypeBranchInsn {
                    ifTrueExprs = [buildNarrowReg(module, scaffold, lastInsn.ifTrueRegister)];
                    ifFalseExprs = [buildNarrowReg(module, scaffold, lastInsn.ifFalseRegister)];
                }
                ifTrueExprs.push(...buildBlockInRegion(scaffold, module, region, index, lastInsn.ifTrue, exit));
                ifFalseExprs.push(...buildBlockInRegion(scaffold, module, region, index, lastInsn.ifFalse, exit));
                wasm:Expression ifBody = module.block(ifTrueExprs);
                wasm:Expression elseBody = module.block(ifFalseExprs);
                cur.push(...header);
                if lastInsn.ifFalse == region.exit {
                    cur.push(module.addIf(condition, ifBody), elseBody);
                }
                else {
                    cur.push(module.addIf(condition, ifBody, elseBody));
                    if exit != () {
                        cur.push(...buildBlockInRegion(scaffold, module, region, index, exit));
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
                wasm:Expression[] loopBodyChildren = buildBlockInRegion(scaffold, module, region, index, loopBodyStartBb, exit);
                wasm:Expression loopBody = module.block(loopBodyChildren);
                if loopBodyStartBb != entry + 1 {
                    wasm:Expression[] stepBody = [];
                    bir:Label? stepBlLabel = checkForBreakOrCont(scaffold, entry, entry);
                    if stepBlLabel != () {
                        loopBody = module.blockSetName(loopBody, "$block$" + stepBlLabel.toString() + "$break");
                        stepBody = [loopBody];
                        stepBody.push(...buildBlockInRegion(scaffold, module, region, index, stepBlLabel, exit));
                        loopBody = module.block(stepBody);
                    }
                }
                if loopHeader.length() > 0 {
                    wasm:Expression condition = loopHeader.remove(loopHeader.length() - 1);
                    loopHeader.push(module.addIf(condition, loopBody));
                    loopBody = module.block(loopHeader);
                }
                bir:Insn lastInsn = getLastInsn(scaffold.blocks[entry]);
                if lastInsn is bir:CondBranchInsn {
                    if exit != lastInsn.ifFalse {
                        wasm:Expression[] children = [loopBody];
                        children.push(...buildBasicBlock(scaffold, module, scaffold.blocks[lastInsn.ifFalse]));
                        loopBody = module.block(children);
                        scaffold.processedBlocks.push(lastInsn.ifFalse);
                    }
                }
                loop = module.loop(loopLabel, loopBody);
            }
            else {
                loop = module.loop(loopLabel, module.block(loopHeader)); 
            }
            if scaffold.regionsWithBr.indexOf(index) != () {
                loop = module.block([loop], "$block$" + exit.toString() + "$break");
            }
            cur.push(loop);
            if exit != () {
                wasm:Expression[] exitCode = buildBlockInRegion(scaffold, module, region, index, exit);
                if exitCode.length() > 0 {
                    cur.push(module.block(exitCode));
                }
            }
        }
        scaffold.renderedRegion[index.toString()] = cur;
    }
    foreach int j in 0 ..< scaffold.blocks.length() {
        body.push(...buildBlockInRegion(scaffold, module, (), (), j));
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
