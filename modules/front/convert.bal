import wso2/nballerina.bir;
import wso2/nballerina.types as t;

// TODOs (before this will work)
// add onPanic links to a Catch followed by AbnormalReturn

type ConvertError error;

type Scope record {|
    string name;
    bir:Register reg;
    Scope? prev;
|};

class FunctionConvertContext  {
    final Module mod;
    final t:TypeCheckContext tc;
    final bir:FunctionDefn defn;

    function init(Module mod, t:TypeCheckContext tc, bir:FunctionDefn defn) {
        self.mod = mod;
        self.tc = tc;
        self.defn = defn;
    }

    function createRegister(bir:SemType t) returns bir:Register {
        return bir:createRegister(self.defn, t);
    }
    
    function createBasicBlock() returns bir:BasicBlock {
        return bir:createBasicBlock(self.defn);
    }
    
}

function convertModule(Module srcMod, bir:Module birMod) returns ConvertError? {
    foreach var def in srcMod {
        if def is FunctionDef {
            var birFunc = check convertFunctionDef(srcMod, birMod.tc, def);
            birMod.defns.add(birFunc);
        }
    }
}

function convertFunctionDef(Module mod, t:TypeCheckContext tc, FunctionDef funcDef) returns ConvertError|bir:FunctionDefn {
    bir:FunctionSignature sig = <bir:FunctionSignature>funcDef.signature;
    bir:FunctionDefn bfd = {
        blocks: [],
        registers: [],
        name: funcDef.name,
        functionSignature: sig
    };
    FunctionConvertContext cx = new(mod, tc, bfd);
    bir:BasicBlock startBlock = cx.createBasicBlock();
    Scope? scope = ();
    string[] paramNames = funcDef.paramNames;
    foreach int i in 0 ..< paramNames.length() {
        bir:Register reg = cx.createRegister(sig.paramTypes[i]);
        scope = { name: paramNames[i], reg, prev: scope };
    }
    bir:BasicBlock? endBlock = check convertStmts(cx, startBlock, scope, funcDef.body);
    if !(endBlock is ()) {
        bir:RetInsn ret = { operand: () };
        endBlock.insns.push(ret);
    }
    // XXX fixup the onPanic links
    return bfd;
}


function convertStmts(FunctionConvertContext cx, bir:BasicBlock bb, Scope? scope, Stmt[] stmts) returns ConvertError|bir:BasicBlock? {
    bir:BasicBlock? curBlock = bb;
    Scope? curScope = scope;
    foreach var stmt in stmts {
        if curBlock is () {
            return error("unreachable code");
        }
        else if stmt is IfElseStmt {
            curBlock = check convertIfElseStmt(cx, curBlock, scope, stmt);
        }
        else if stmt is WhileStmt {
            // JBUG cast
            curBlock = check convertWhileStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is ReturnStmt {
            // JBUG cast
            curBlock = check convertReturnStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is VarDeclStmt {
            [curBlock, curScope] = check convertVarDeclStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is AssignStmt {
            curBlock = check convertAssignStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else {
            return unreached();
        }
    }
    return curBlock;
}

function convertWhileStmt(FunctionConvertContext cx, bir:BasicBlock startBlock, Scope? scope, WhileStmt stmt) returns ConvertError|bir:BasicBlock? {
    bir:BasicBlock loopHead = cx.createBasicBlock();
    bir:BasicBlock exit = cx.createBasicBlock();
    bir:JumpInsn jumpToLoopHead = { dest: loopHead.label };
    startBlock.insns.push(jumpToLoopHead);
    var [condition, nextBlock] = check convertExprForBoolean(cx, loopHead, scope, stmt.condition);
    if condition is bir:Register {
        bir:BasicBlock afterCondition = cx.createBasicBlock();
        bir:BranchInsn branch = { operand: condition, ifFalse: exit.label, ifTrue: afterCondition.label };
        nextBlock.insns.push(branch);
        bir:BasicBlock? loopEnd = check convertStmts(cx, afterCondition, scope, stmt.body);
        if !(loopEnd is ()) {
            loopEnd.insns.push(jumpToLoopHead);
        }
        return exit;
    }
    else if condition == false {
        return startBlock;
    }
    else {
        // not much point without break
        return error("'while true' not implemented yet");
    }
}

function convertIfElseStmt(FunctionConvertContext cx, bir:BasicBlock startBlock, Scope? scope, IfElseStmt stmt) returns ConvertError|bir:BasicBlock? {
    var { condition, ifTrue, ifFalse } = stmt;
    var [operand, branchBlock] = check convertExprForBoolean(cx, startBlock, scope, condition);
    if operand is boolean {
        if operand {
            return convertStmts(cx, branchBlock, scope, ifTrue);
        }
        else if ifFalse.length() == 0 {
            return branchBlock;
        }
        else {
            return convertStmts(cx, branchBlock, scope, ifFalse);
        }
    }
    else {
        bir:BasicBlock ifBlock = cx.createBasicBlock();
        var ifContBlock = check convertStmts(cx, ifBlock, scope, ifTrue);
        bir:BasicBlock contBlock;
        if ifFalse.length() == 0 {
            // just an if branch
            contBlock = cx.createBasicBlock();
            bir:BranchInsn branch = { operand, ifTrue: ifBlock.label, ifFalse: contBlock.label };
            branchBlock.insns.push(branch);
            if !(ifContBlock is ()) {
                bir:JumpInsn jump = { dest: contBlock.label };
                ifContBlock.insns.push(jump);
            }
            return contBlock;    
        }
        else {
            // an if and an else
            bir:BasicBlock elseBlock = cx.createBasicBlock();
            var elseContBlock = check convertStmts(cx, elseBlock, scope, ifFalse);
            bir:BranchInsn branch = { operand, ifTrue: ifBlock.label, ifFalse: elseBlock.label };
            branchBlock.insns.push(branch);
            if ifContBlock is () && elseContBlock is () {
                // e.g. both arms have a return
                return ();
            }
            contBlock = cx.createBasicBlock();
            bir:JumpInsn jump = { dest: contBlock.label };
            if !(ifContBlock is ()) {
                ifContBlock.insns.push(jump);
            }
            if !(elseContBlock is ()) {
                elseContBlock.insns.push(jump);
            }
            return contBlock;
        }
    }
}

function convertReturnStmt(FunctionConvertContext cx, bir:BasicBlock startBlock, Scope? scope, ReturnStmt stmt) returns ConvertError? {
    var { returnExpr } = stmt;
    var [operand, nextBlock] = check convertExpr(cx, startBlock, scope, returnExpr);
    bir:RetInsn insn = { operand };
    nextBlock.insns.push(insn);
    return ();
}

function convertVarDeclStmt(FunctionConvertContext cx, bir:BasicBlock startBlock, Scope? scope, VarDeclStmt stmt) returns ConvertError|[bir:BasicBlock?, Scope?] {
    var { varName, initExpr, semType } = stmt;
    if semType is () {
        panic error("type was not normalized");
    }
    else {
        var [operand, nextBlock] = check convertExpr(cx, startBlock, scope, initExpr);
        bir:Register result = cx.createRegister(semType);
        bir:LoadInsn insn = { result, operand };
        nextBlock.insns.push(insn);
        return [nextBlock, { name: varName, reg: result, prev: scope }];
    }   
}

function convertAssignStmt(FunctionConvertContext cx, bir:BasicBlock startBlock, Scope? scope, AssignStmt stmt) returns ConvertError|bir:BasicBlock? {
    var { varName, expr } = stmt;
    bir:Register reg = check mustLookup(varName, scope);
    var [operand, nextBlock] = check convertExpr(cx, startBlock, scope, expr);
    bir:LoadInsn load = { result: reg, operand };
    nextBlock.insns.push(load);
    return nextBlock;
}

function convertExprForInt(FunctionConvertContext cx, bir:BasicBlock bb, Scope? scope, Expr expr) returns ConvertError|[bir:IntOperand, bir:BasicBlock] {
    var [op, nextBlock] = check convertExpr(cx, bb, scope, expr);
    // XXX return an error if it's not an int
    return [<bir:IntOperand>op, nextBlock];
}

function convertExprForBoolean(FunctionConvertContext cx, bir:BasicBlock bb, Scope? scope, Expr expr) returns ConvertError|[bir:BooleanOperand, bir:BasicBlock] {
    var [op, nextBlock] = check convertExpr(cx, bb, scope, expr);
    // XXX return an error if it's not a boolean
    return [<bir:BooleanOperand>op, nextBlock];
}

function convertExpr(FunctionConvertContext cx, bir:BasicBlock bb, Scope? scope, Expr expr) returns ConvertError|[bir:Operand, bir:BasicBlock] {
    match expr {
        // Binary arithmetic operations
        var { op, left, right } => {
            var [l, block1] = check convertExprForInt(cx, bb, scope, left);
            var [r, nextBlock] = check convertExprForInt(cx, block1, scope, right);
            bir:Register reg = cx.createRegister(t:INT);
            bir:IntArithmeticBinaryInsn insn = {
                op,
                operands: [l, r],
                result: reg
            };
            bb.insns.push(insn);
            return [reg, nextBlock];
        }
        // Negation
        { op: "-",  operand: var o } => {
            var [operand, nextBlock] = check convertExprForInt(cx, bb, scope, o);
            bir:Register reg = cx.createRegister(t:INT);
            if operand is int {
                // XXX catch overflow
                return [-operand, nextBlock];
            }
            else {
                bir:IntNegateInsn insn = { operand, result: reg };
                bb.insns.push(insn);
                return [reg, nextBlock];
            }

        }
        // Variable reference
        var { varName } => {
            return [check mustLookup(varName, scope), bb];
        }
        // Constant
        var { value } => {
            return [value, bb];
        }
        // Function call
        var callExpr if callExpr is FunctionCallExpr => {
            return convertFunctionCall(cx, bb, scope, callExpr);
        }
    }
    return unreached();
}

function convertFunctionCall(FunctionConvertContext cx, bir:BasicBlock bb, Scope? scope, FunctionCallExpr expr) returns ConvertError|[bir:Operand, bir:BasicBlock] {
    string name = expr.funcName;
    if !(lookup(name, scope) is ()) {
        return error("local variables cannot yet have function type");
    }
    bir:FunctionSignature signature;
    ModuleLevelDef? def = cx.mod[name];
    if def is FunctionDef {
        // Gets normalized earlier on
        signature = <bir:FunctionSignature>def.signature;
    }
    else {
        // JBUG err variable and return is workaround for #30872
        error err;
        if def is () {
            err = error("'" + name + "' is not defined");
        }
        else {
            err = error("'" + name + "' is not a function");
        }
        return err;
    }
    bir:BasicBlock curBlock = bb;
    bir:Operand[] args = [];
    foreach var argExpr in expr.args {
        var [arg, nextBlock] = check convertExpr(cx, curBlock, scope, argExpr);
        curBlock = nextBlock;
        args.push(arg);
    }
    bir:Register result = cx.createRegister(signature.returnType);
    bir:FunctionRef func = {
        functionIdentifier: expr.funcName,
        functionSignature: signature
    };
    bir:BasicBlock onReturnBlock = cx.createBasicBlock();
    bir:CallInsn call = {
        func,
        result,
        args: args.cloneReadOnly(),
        onReturn: onReturnBlock.label
    };
    curBlock.insns.push(call);
    return [result, onReturnBlock];
}

function mustLookup(string name, Scope? scope) returns bir:Register|ConvertError {
    return lookup(name, scope) ?: error("variable '" + "' not found");
}

function lookup(string name, Scope? scope) returns bir:Register? {
    Scope? tem = scope;
    while true {
        if tem is () {
            break;
        }
        else if tem.name == name {
            return tem.reg;
        }
        else {
            tem = tem.prev;
        }
    }
    return ();
}

// This should be a utility somewhere.
function unreached() returns never {
    panic error("Reached something that was supposed to be unreachable");
}