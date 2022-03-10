import ballerina/io;
import wso2/nballerina.comm.err;
import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

type BuildError err:Semantic|err:Unimplemented|err:Internal;

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

function taggedInt(wasm:Module module) {
    module.addGlobal("offset", "i32", true, module.addConst({ i32: 0 }));
    wasm:Expression MAX_INT = module.addConst({ i64: 36028797018963967 });
    wasm:Expression MIN_INT = module.addConst({ i64: -36028797018963968 });
    wasm:Expression TAG_SHIFT = module.addConst({ i64: 56 });
    wasm:Expression TAG_INT = module.addConst({ i64: 7 });
    wasm:Expression value = module.localGet(0, "i64");
    wasm:Expression offset = module.globalGet("offset", "i32");
    wasm:Expression valLMax = module.binary("i64.lt_s", value, MAX_INT);
    wasm:Expression valGMin = module.binary("i64.gt_s", value, MIN_INT);
    wasm:Expression condition = module.binary("i32.and", valGMin, valLMax);
    wasm:Expression shift = module.binary("i64.shl", module.addConst({ i64: 1 }), TAG_SHIFT);
    wasm:Expression IMMEDIATE_FLAG = module.binary("i64.shl", module.addConst({ i64: 32 }), TAG_SHIFT);
    wasm:Expression andTrue = module.binary("i64.and", value, module.binary("i64.sub", shift, module.addConst({ i64: 1 })));
    wasm:Expression ifCond1 = module.binary("i64.or", andTrue, IMMEDIATE_FLAG);
    wasm:Expression trueBody = module.addReturn(module.binary("i64.or", ifCond1, module.binary("i64.shl", TAG_INT, TAG_SHIFT)));
    wasm:Expression store = module.store(8, 0, 0, offset, value, "i64");
    wasm:Expression sh2 = module.binary("i64.shl", TAG_INT, TAG_SHIFT);
    wasm:Expression loc = module.localSet(1, offset);
    wasm:Expression incrementOffset = module.globalSet("offset", module.binary("i32.add", offset, module.addConst({ i32: 8 })));
    wasm:Expression sh2_2 = module.addReturn(module.binary("i64.or", sh2, module.unary("i64.extend_i32_u", module.localGet(1, "i32"))));
    wasm:Expression elseBody = module.block((), [store, loc, incrementOffset, sh2_2], 3);
    wasm:Expression ifExpr = module.addIf(condition, trueBody, elseBody);
    module.addFunction("int_to_tagged", ["i64"], "i64", ["i32"], 1, ifExpr);
}

final readonly & map<wasm:Op> signedInt64ArithmeticOps = {
    "+": "i64.add",
    "-": "i64.sub",
    "*": "i64.mul",
    "/": "i64.div_s",
    "%": "i64.rem_s"
};

final readonly & map<wasm:Op> signedInt32CompareOps = {
    "<": "i32.lt_s",
    "<=": "i32.le_s",
    ">": "i32.gt_s",
    ">=": "i32.ge_s"
};

final readonly & map<bir:OrderOp> flipped32OrderOps = {
    ">=": "<=",
    ">" : "<",
    "<=": ">=",
    "<" : ">"
};

final readonly & map<wasm:Op> signedInt64CompareOps = {
    "<": "i64.lt_s",
    "<=": "i64.le_s",
    ">": "i64.gt_s",
    ">=": "i64.ge_s",
    "==": "i64.eq",
    "!=": "i64.ne"
};

final readonly & map<wasm:Op> signedInt64BitwiseOps = {
    "|": "i64.or",
    "^": "i64.xor",
    "&": "i64.and"
};

