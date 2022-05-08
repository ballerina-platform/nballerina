import ballerina/io;
import ballerina/file;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
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
    map<StringRecord> segments =  {};
    int offset = 0;
    RuntimeModule[] runtimeModules = [taggingMod, listMod, numberMod];
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
        Scaffold scaffold = new(module, code, functionDefns[i], context);
        wasm:Expression body = buildFunctionBody(scaffold, module);
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
        if funcName == "main" {
            mainBody = body;
            mainLocals = locals;
        }
        else {
            module.addFunction(funcName, params, retType is TaggedRepr && retType.subtype == t:NIL ? "None": retType.wasm, locals, body);
        }
        if functionDefns[i].symbol.isPublic {
            module.addFunctionExport(funcName, funcName);
        }
    }
    if mainBody != () {
        wasm:Expression extendedBody = module.block([addStringInit(module, context.segments), mainBody]);
        module.addFunction("main", [], "None", mainLocals, extendedBody);
    }
    wasm:Expression[] offsetExpr = [];
    string[] strings = [];
    foreach string key in context.segments.keys() {
        StringRecord rec = <StringRecord>context.segments[key];
        byte[] bytes = key.toBytes();
        string[] strBytes = [];
        foreach byte item in bytes {
            string hex = item.toHexString();
            strBytes.push(hex.length() == 2 ? hex: "0" + hex);
        }
        string byteArr = "\\".'join(...strBytes);
        byteArr = byteArr.length() > 0 ? "\\" + byteArr : byteArr;
        strings.push(byteArr);
        offsetExpr.push(module.addConst({ i32: rec.offset }));
        module.addGlobal(rec.global, "eqref", module.refNull());
    }
    int pages = (context.offset/65536) + 1;
    module.setMemory(pages, "memory", strings, offsetExpr, false);
    module.addFunctionImport("println", "console", "log", ["eqref"], "None");
    _ = check addRttFunctions(module, context.runtimeModules);
    return module.finish();
}

function addStringInit(wasm:Module module, map<StringRecord> strings) returns wasm:Expression {
    wasm:Expression[] body = [];
    foreach StringRecord rec in strings {
        body.push(module.globalSet(rec.global, module.structNew(STRING_TYPE, [module.addConst({ i32: TYPE_STRING }), module.call("str_create", [module.addConst({ i32: rec.offset }), module.addConst({ i32: rec.length })], "eqref"), module.arrayNewDef("Surrogate", module.addConst({ i32: rec.surrogate.length() })), module.addConst({ i32: -1 })], ANY_TYPE)));
        wasm:Expression asData = module.refAs("ref.as_data", module.globalGet(rec.global));
        wasm:Expression castToStr = module.refCast(asData, module.rtt(STRING_TYPE, ANY_TYPE));
        foreach int i in 0..<rec.surrogate.length() {
            body.push(module.arraySet("Surrogate", module.structGet(STRING_TYPE, "surrogate", castToStr), module.addConst({ i32: i }), module.addConst({ i32: rec.surrogate[i] })));            
        }        
    }
    return module.block(body);
} 

function addRttFunctions(wasm:Module module, RuntimeModule[] rtModules) returns error? {
    map<wasm:Wat[]> sectionData = {};
    map<wasm:Wat[]> sectionIdentifiers = {};
    map<wasm:Wat[]> functions = {};
    foreach RuntimeModule mod in rtModules.reverse() {
        string absPath = check file:getAbsolutePath("../wrun/" + mod + ".wat");
        wasm:Wat[] wat = check io:fileReadLines(absPath);
        string? identifier = ();
        string[] content = [];
        foreach wasm:Wat line in wat {
            wasm:Wat trimmed = line.trim();
            int len = trimmed.length();
            if len > 2 && trimmed.substring(0, 2) == ";;" {
                if identifier is wasm:Section {
                    wasm:Wat[]? data = sectionData[identifier];
                    if  data != () {
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
