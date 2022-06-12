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

type MetaData record {
    string[] exceptionTags = [];
    string[] globals = [];
    map<StringRecord> segments = {};
    int offset = 0;
    RuntimeModule?[] rtModules = [commonMod];
    string[] rtFunctions = [];
};

function buildModule(bir:Module mod) returns string[]|BuildError {
    bir:FunctionDefn[] functionDefns = mod.getFunctionDefns();
    wasm:Module module = new;
    MetaData metaData = {};
    wasm:Expression? mainBody = ();
    wasm:Type[] mainLocals = [];
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        check bir:verifyFunctionCode(mod, functionDefns[i], code);
        Scaffold scaffold = new (module, code, functionDefns[i], metaData, mod.getTypeContext());
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
        wasm:Expression extendedBody = module.block([initStrings(module, metaData), mainBody]);
        module.addFunction("main", [], "None", mainLocals, extendedBody);
    }
    module.addGlobal("bal$err", { base: ERROR_TYPE, initial: "null" }, module.refNull(ERROR_TYPE));
    _ = check addRttFunctions(module, metaData);
    return module.finish();
}


function initStrings(wasm:Module module, MetaData metaData) returns wasm:Expression {
    var { segments: records, offset: finalOffset } = metaData;
    wasm:Expression[] body = [];
    wasm:Expression[] offsetExpr = [];
    string[] byteStrs = [];
    foreach string key in records.keys() {
        var { offset, global, surrogate, length }  = records.get(key);
        buildStringData(module, key, global, offset, offsetExpr, byteStrs);
        wasm:Expression jsString = buildRuntimeFunctionCall(module, metaData, createStringFunction, [
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
    module.setMemory(pages, "memory", byteStrs, offsetExpr);
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

function addRttFunctions(wasm:Module module, MetaData metaData) returns error? {
    var { rtModules, rtFunctions } = metaData;
    map<wasm:Wat[]> sectionData = {};
    map<wasm:Wat[]> sectionIdentifiers = {};
    map<wasm:Wat[]> functions = {};
    string absPath = check file:getAbsolutePath("");
    string[] dirs = check file:splitPath(absPath);
    RuntimeModule[] filtered = [];
    foreach RuntimeModule? mod in rtModules {
        if mod != () {
            filtered.push(mod);
        }
    }
    string? baseDir = ();
    foreach int i in 0..<dirs.length() {
        int cur = flipIndex(i, dirs.length());
        if dirs[cur].includes("nballerina") {
            baseDir = dirs[cur];
            break;
        }
    }
    if baseDir != () {
        int index = <int>absPath.lastIndexOf(baseDir);
        string basePath = absPath.substring(0, index + baseDir.length() + 1);
    foreach RuntimeModule mod in filtered {
        string path = check file:joinPath(basePath, "wrun", "wat", mod.file);
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
                    if identifier is "export" {
                        foreach wasm:Wat item in content {
                            string iden = getIdentifier(item);
                            if rtFunctions.indexOf(iden) == () {
                                rtFunctions.push(iden);    
                            }
                        }
                    }
                }
                else if identifier != () && (rtFunctions.indexOf(identifier) != ()) {
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
                string iden = getIdentifier(line);
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
                if rtFunctions.indexOf(identifier) != () {
                    mayBeAddFunction(line, rtFunctions);
                }
                content.push(line);
            }
        }
    }
    foreach string key in sectionData.keys() {
            module.addSection(<wasm:Section>key, sectionData.get(key));
    }
    foreach string key in functions.keys() {
            module.setRttFuncs(functions.get(key));
    }
    }
    else {
        panic error("invoke inside nballerina directory");
    }
    
}

function mayBeAddFunction(wasm:Wat line, string[] rtFunctions) {
    if line.includes("(call ") || line.includes("(ref.func ") {
        string identifier = getIdentifier(line);
        if rtFunctions.indexOf(identifier) == () {
            rtFunctions.push(identifier);
        }
    }
}

function getIdentifier(wasm:Wat line) returns string {
    int index = <int>line.indexOf("$");
    string sub = line.substring(index);
    int? nextCloseParenthesis = sub.indexOf(")");
    int? nextSpace = sub.indexOf(" ");
    int end; 
    if nextSpace != () && nextCloseParenthesis != () {
        end = nextSpace > nextCloseParenthesis ? nextCloseParenthesis : nextSpace;
    }
    else if nextSpace != () {
        end = nextSpace;
    }
    else if nextCloseParenthesis != () {
        end = nextCloseParenthesis;
    }
    else {
        end = sub.length();
    }
    return sub.substring(0, end);
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
                    ifFalseExprs = [buildNarrowReg(module, scaffold, lastInsn.ifFalseRegister)];
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
                mayBePush([lastInsn.ifTrue, lastInsn.ifFalse], queue, processedQ, exit);
            }
            else if lastInsn is bir:BranchInsn {
                bir:Label dest = lastInsn.dest;
                mayBePush([dest], queue, processedQ, exit);
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

function mayBePush(bir:Label[] labels, bir:Label[] queue, bir:Label[] processedQ, bir:Label? exit) {
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
