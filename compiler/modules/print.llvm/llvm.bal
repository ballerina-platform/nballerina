// The concept here is to have an API that can both
// be implemented simply on top of the LLVM C API
// and can be used to generate .ll format directly.
// In the C API version, distinct classes would have
// private members that are handles referring to the
// C void* values.

import wso2/nballerina.comm.err;
import ballerina/io;

// Operand of an unnamed variable/basic block
type Unnamed int;

# Corresponds to LLVMValueRef
public type Value DataValue|Function;

public readonly distinct class DataValue {
    string|Unnamed operand;
    Type ty;
    function init(Type ty, string|Unnamed operand) {
        self.ty = ty;
        self.operand = operand;
    }
}

# Subtype of Value that refers to a pointer
# Ensures compile-time checking that stores and loads use the right kinds of Value
public readonly class PointerValue {
    *DataValue;
    string|Unnamed operand;
    PointerType ty;
    function init(PointerType ty, string|Unnamed operand) {
        self.ty = ty;
        self.operand = operand;
    }
}

# Subtype of Value that refers to a constant
public readonly class ConstValue {
    *DataValue;
    string operand;
    Type ty;
    function init(Type ty, string operand) {
        self.ty = ty;
        self.operand = operand;
    }
}

public readonly class ConstPointerValue {
    *PointerValue;
    *ConstValue;
    string operand;
    PointerType ty;
    function init(PointerType ty, string operand) {
        self.ty = ty;
        self.operand = operand;
    }
}

function constValueWithBody(PointerType ty, string[] body) returns ConstPointerValue {
    string[] words = [];
    foreach var word in body {
        words.push(word);
    }
    string operand = concat(...words);
    return new (ty, operand);
}

final string POS_INF = floatBitsToHexString(1.0/0.0);
final string NEG_INF = floatBitsToHexString(-1.0/0.0);
final string NAN = floatBitsToHexString(0.0/0.0);

// Corresponds to LLVMContextRef
public class Context {
    private final map<[StructType,boolean]> namedStructTypes = {};
    private final map<Type[]> namedStructTypeBody = {};
    // Corresponds to LLVMContextCreate
    public function init() {
    }

    public function createModule() returns Module {
        return new(self);
    }

    public function createBuilder() returns Builder {
        return new(self);
    }

    public function constStruct(Value[] elements) returns ConstValue {
        string[] structBody = [];
        Type[] elemTypes = [];
        structBody.push("{");
        foreach int i in 0 ..< elements.length() {
            final Value element = elements[i];
            if i > 0 {
                structBody.push(",");
            }
            structBody.push(typeToString(element.ty, self));
            if element.operand is Unnamed {
                panic err:illegalArgument("All elements must be constants");
            } else {
                structBody.push(<string>element.operand);
            }
            elemTypes.push(element.ty);
        }
        structBody.push("}");
        Type structTy = structType(elemTypes);
        return new(structTy, concat(...structBody));
    }

    // Corresponds to LLVMConstArray
    public function constArray(Type elementType, ConstValue[] values) returns ConstValue {
        ArrayType ty = arrayType(elementType, values.length());
        string[] body = ["["];
        foreach int i in 0 ..< values.length() {
            final ConstValue element = values[i];
            if i > 0 {
                body.push(",");
            }
            body.push(typeToString(element.ty, self), element.operand);
        }
        body.push("]");
        return new(ty, concat(...body));
    }

    // Corresponds to LLVMConstStringInContext
    public function constString(byte[] bytes) returns ConstValue {
        ArrayType ty = arrayType("i8", bytes.length());
        ConstValue val = new(ty, charArray(bytes));
        return val;
    }

    // Corresponds to LLVMConstGEP
    public function constGetElementPtr(ConstPointerValue ptr, ConstValue[] indices, "inbounds"? inbounds=()) returns ConstPointerValue {
        string[] words = [];
        words.push("getelementptr");
        if inbounds != () {
            words.push(inbounds);
        }
        words.push("(");
        PointerType destTy = gepArgs(words, ptr, indices, inbounds, self);
        words.push(")");
        return constValueWithBody(destTy, words);
    }

    // Corresponds to LLVMConstBitCast
    public function constBitCast(ConstPointerValue ptr, PointerType destTy) returns ConstPointerValue {
        string[] words = [];
        words.push("bitcast", "(");
        bitCastArgs(words, ptr, destTy, self);
        words.push(")");
        return constValueWithBody(destTy, words);
    }

    // Corresponds to LLVMConstAddrSpaceCast
    public function constAddrSpaceCast(ConstPointerValue ptr, PointerType destTy) returns ConstPointerValue {
        string[] words = [];
        words.push("addrspacecast", "(");
        addrSpaceCastArgs(words, ptr, destTy, self);
        words.push(")");
        return constValueWithBody(destTy, words);
    }

    // Corresponds to LLVMStructCreateNamed
    public function structCreateNamed(string name) returns StructType {
        string structName = "%" + escapeIdent(name);
        if self.namedStructTypes.hasKey(structName) {
            panic err:illegalArgument("this context already has a struct type by that name");
        }
        StructType ty = { elementTypes: [], name: structName };
        self.namedStructTypes[structName] = [ty, false];
        self.namedStructTypeBody[structName] = [];
        return ty;
    }

    // Corresponds to LLVMStructSetBody
    public function structSetBody(StructType namedStructTy, Type[] elementTypes) {
        string? tyName = namedStructTy.name;
        if tyName is string && self.namedStructTypes.hasKey(tyName) {
            self.namedStructTypeBody[tyName] = elementTypes;
        }
        else {
            panic err:illegalArgument("no such named struct type");
        }
    }

    // Corresponds to LLVMConstPtrToInt
    public function constPtrToInt(ConstPointerValue constantValue, IntType toType) returns ConstValue {
        return new ConstValue(toType, concat("ptrtoint", "(", typeToString(constantValue.ty, self), constantValue.operand, "to", typeToString(toType, self), ")"));
    }

    // Corresponds to LLVMConstInt
    // XXX Need to think about SignExtend argument
    public function constInt(IntType ty, int val) returns ConstValue {
        return new ConstValue(ty, val.toString());
    }

    // Corresponds to LLVMConstReal
    public function constFloat(FloatType ty, float val) returns ConstValue {
        string valRep;
        // Special cases
        if val.isInfinite() {
            if val > 0.0 {
                valRep = POS_INF;
            }
            else {
                valRep = NEG_INF;
            }
        }
        else if val.isNaN() {
            valRep = NAN;
        }
        else {
            // General case
            if float:abs(val).toString().length() > 7 {
                // Resulting number has more than 7 digits so convert to hex format
                valRep = floatBitsToHexString(val);
            }
            else {
                // Set number in decimal format
                // Change to E notation once balspec:#770 is done
                valRep = val.toString();
            }
        }
        return new ConstValue(ty, valRep);
    }

    // Corresponds to LLVMConstNull
    public function constNull(PointerType ty) returns ConstPointerValue {
        return new ConstPointerValue(ty, "null");
    }

    function output(Output out){
        foreach var entry in self.namedStructTypes.entries() {
            var data = entry[1];
            if data[1] {
                string[] words = [entry[0], "=", "type", typeToString(data[0], self, true)];
                out.push(concat(...words));
            }
        }
    }

    function getNamedStructBody(StructType ty) returns Type[] {
        string? tyName = ty.name;
        if tyName is string {
            var data = self.namedStructTypes[tyName];
            if data != () {
                data[1] = true;
            }
            else {
                panic err:illegalArgument("no such named struct type");
            }
            return self.namedStructTypeBody.get(tyName);
        }
        panic err:illegalArgument("not a named struct type");
    }
}

# Corresponds to llvm::Module class
public class Module {
    private final map<FunctionDefn|FunctionDecl|PointerValue> globals = {};
    // We have these because we don't rely on order of iteration over map.
    private [PointerValue, GlobalProperties][] globalVariables = [];
    private FunctionDecl[] functionDecls = [];
    private FunctionDefn[] functionDefns = [];
    private [ConstPointerValue, ConstValue, GlobalSymbolProperties][] aliases = [];
    Metadata[] metadata = [];
    Metadata[] moduleFlags = [];

    private final Context context;
    private TargetTriple? target = ();

    function init(Context context) {
        self.context = context;
    }

    // Corresponds to LLVMCreateDIBuilder
    public function createDIBuilder() returns DIBuilder {
        DIBuilder dIBuilder = new(self, self.context);
        return dIBuilder;
    }

    // Corresponds to LLVMAddModuleFlag
    public function addModuleFlag(ModuleFlagBehavior behavior, ModuleFlag flag) {
        Metadata metadata = self.addMetadata();
        metadata.addLine(metadata.ref(), "=", "!", "{", "i32", moduleFlagBehaviorToString.get(behavior),",",
                         "!", "\"", flag[0], "\"", ",", "i32", flag[1].toString() ,"}");
        string[] preambleWords  = [];
        preambleWords.push("!", "llvm", ".", "module", ".", "flags", "=", "!", "{");
        foreach var flagMetadata in self.moduleFlags {
            preambleWords.push(flagMetadata.ref(), ",");
            flagMetadata.resetPreamble();
        }
        preambleWords.push(metadata.ref(), "}");
        metadata.addPreamble(...preambleWords);
        self.moduleFlags.push(metadata);
    }

    // Corresponds to LLVMAddFunction
    public function addFunctionDefn(string name, FunctionType fnType) returns FunctionDefn {
        string fnName = self.escapeGlobalIdent(name);
        FunctionDefn fn = new (self.context, fnName, fnType);
        self.globals[fnName] = fn;
        self.functionDefns.push(fn);
        return fn;
    }

    public function addFunctionDecl(string name, FunctionType fnType) returns FunctionDecl {
        string fnName = self.escapeGlobalIdent(name);
        FunctionDecl fn = new(self.context, fnName, fnType);
        self.globals[fnName] = fn;
        self.functionDecls.push(fn);
        return fn;
    }

    // Corresponds to LLVMSetTarget
    public function setTarget(TargetTriple targetTriple){
        self.target = targetTriple;
    }

    // Corresponds to LLVMGetIntrinsicDeclaration
    public function getIntrinsicDeclaration(IntrinsicFunctionName name) returns FunctionDecl {
        FunctionDecl? fnExisting = <FunctionDecl?>self.globals[name];
        if fnExisting != () {
            return fnExisting;
        }
        if name is IntegerArithmeticIntrinsicName {
            return self.addIntrinsic(name,
                                     { returnType: structType(["i64", "i1"]), paramTypes: ["i64", "i64"] },
                                     ["nofree", "nosync", "nounwind", "readnone", "speculatable", "willreturn"]);

        }
        else {
            GeneralIntrinsicName _ = name;
            return self.addIntrinsic(name,
                                     { returnType: pointerType("i8", 1), paramTypes: [pointerType("i8", 1), "i64"] },
                                     ["nofree", "nosync", "nounwind", "readnone", "speculatable", "willreturn"]);
        }
    }

    function addDebugIntrinsic(DebugIntrinsicName name) {
        boolean fnExisting = self.globals[name] != ();
        if !fnExisting {
            _ = self.addIntrinsic(name, { returnType: "void", paramTypes: ["metadata", "metadata", "metadata"]},
                                  ["nofree", "nosync", "nounwind", "readnone", "speculatable", "willreturn"]);
        }
    }

    private function addIntrinsic(IntrinsicFunctionName|DebugIntrinsicName name, FunctionType fnType, EnumAttribute[] attrs) returns FunctionDecl {
        FunctionDecl fn = new(self.context, "llvm." + name, fnType);
        foreach var attr in attrs {
            fn.addEnumAttribute(attr);
        }
        self.globals[name] = fn;
        self.functionDecls.push(fn);
        return fn;
    }

    // Corresponds to LLVMAddGlobal
    public function addGlobal(Type ty, string name, *GlobalProperties props) returns ConstPointerValue {
        string varName = self.escapeGlobalIdent(name);
        PointerType ptrType = pointerType(ty, props.addressSpace);
        ConstPointerValue val = new ConstPointerValue(ptrType, "@" + varName); 
        self.globals[varName] = val;
        self.globalVariables.push([val, props]);
        return val;
    }

    // Corresponds to LLVMSetInitializer
    public function setInitializer(ConstPointerValue global, ConstValue|Function initializer) {
        foreach var [globalVar, props] in self.globalVariables {
            if globalVar === global {
                props.initializer = initializer;
                return;
            }
        }
        panic err:illegalArgument("no such global variable in this module");
    }

    // Corresponds to LLVMAddAlias
    public function addAlias(Type aliasTy, ConstValue aliasee, string name, *GlobalSymbolProperties props) returns ConstPointerValue {
        string aliasName = self.escapeGlobalIdent(name);
        ConstPointerValue alias = new (pointerType(aliasTy, props.addressSpace), "@" + aliasName);
        self.globals[aliasName] = alias;
        self.aliases.push([alias, aliasee, props]);
        return alias;
    }


    private function escapeGlobalIdent(string name) returns string {
        string varName = escapeIdent(name);
        if varName is IntrinsicFunctionName {
            panic err:illegalArgument("reserved intrinsic function name : " + varName);
        }
        if self.globals.hasKey(varName) {
            panic err:illegalArgument("this module already has a declaration by that name :" + varName);
        }
        return varName;
    }

    // Corresponds to LLVMPrintModuleToFile
    public function printModuleToFile(string path) returns io:Error? {
        Output out = new;
        self.output(out);
        return out.writeFile(path);
    }

    // Corresponds to LLVMPrintModuleToString
    public function printModuleToString() returns string {
        Output out = new;
        self.output(out);
        return out.toString();
    }

    function output(Output out) {
        if self.target is TargetTriple {
            string[] words = ["target", "triple", "=", "\"", <TargetTriple>self.target, "\""];
            out.push(createLine(words));
        }
        self.context.output(out);
        foreach var val in self.globalVariables {
            self.outputGlobalVar(val[0], val[1], out);
        }
        foreach var val in self.aliases {
            self.outputAlias(val[0], val[1], val[2], out);
        }
        foreach var fn in self.functionDecls {
            fn.output(out);
        }
        foreach var fn in self.functionDefns {
            fn.output(out);
        }
        foreach var data in self.metadata {
            if data.hasPreamble() {
                data.outputPreamble(out);
            }
        }
        foreach var data in self.metadata {
            data.output(out);
        }
    }

    private function outputAlias(ConstPointerValue alias, ConstValue aliasee, GlobalSymbolProperties props, Output out) {
        string[] line = [alias.operand, "="];
        if props.linkage == "internal" {
            line.push("internal");
        }
        if props.unnamedAddr {
            line.push("unnamed_addr");
        }
        line.push("alias", typeToString(alias.ty.pointsTo, self.context), ",", typeToString(aliasee.ty, self.context), aliasee.operand);
        out.push(concat(...line));
    }

    function outputGlobalVar(PointerValue val, GlobalProperties prop, Output out){
        string[] words = [];
        words.push(<string> val.operand, "=");
        if !(prop.initializer == ()) {
            if prop.linkage == "internal"{
                words.push(prop.linkage);
            }
        } else {
            words.push(prop.linkage);
        }
        if prop.unnamedAddr {
            words.push("unnamed_addr");
        }
        if val.ty.addressSpace != 0 {
            words.push("addrspace", "(", val.ty.addressSpace.toString(), ")");
        }
        if prop.isConstant {
            words.push("constant");
        } else {
            words.push("global");
        }
        words.push(typeToString(val.ty.pointsTo, self.context));
        var initializer = prop.initializer;
        if initializer is ConstValue {
            words.push(<string>initializer.operand);
        }
        else if initializer is Function {
            words.push("@" + initializer.functionName);
        }
        if prop.align is int {
            words.push(",", "align", prop.align.toString());
        }
        out.push(createLine(words));
    }

    function genMetadataLabel() returns string {
        return string `!${self.metadata.length()}`;
    }

    function addMetadata() returns Metadata {
        Metadata metadata = new(self.genMetadataLabel());
        self.metadata.push(metadata);
        return metadata;
    }
}

# Corresponds to an LLVMValueRef that corresponds to an llvm::Function
public type Function FunctionDecl|FunctionDefn;

public class FunctionDecl {
    final false isDefn = false;
    final FunctionType functionType;
    final string functionName;
    final Context context;
    string? gcName = ();
    final FunctionEnumAttribute[] functionAttributes = [];
    final ReturnEnumAttribute[] returnAttributes = [];
    final ParamEnumAttribute[][] paramAttributes = [];
    Metadata? metadata = ();

    final string operand;
    final PointerType ty;

    function init(Context context, string functionName, FunctionType functionType) {
        self.functionName = functionName;
        self.functionType = functionType;
        self.paramAttributes.setLength(functionType.paramTypes.length());
        self.context = context;
        // We will be using operand and ty only when function is used as value (ie. function pointer)
        self.operand = "@" + self.functionName;
        self.ty = pointerType(self.functionType);
    }

    function output(Output out) {
        out.push(functionHeader(self));
    }

    public function addEnumAttribute(EnumAttribute attribute) {
        if attribute is FunctionEnumAttribute {
            self.addAttributeToSet(self.functionAttributes, attribute);
        }
        else {
            if attribute is (readonly & ["return", ReturnEnumAttribute]) {
                ReturnEnumAttribute attrib = attribute[1];
                self.addAttributeToSet(self.returnAttributes, attrib);
            } else {
                ParamEnumAttribute attrib = attribute[1];
                int paramIndex = attribute[0];
                if paramIndex >= self.paramAttributes.length() {
                    panic err:illegalArgument("Invalid index for parameter attribute");
                } else {
                    self.addAttributeToSet(self.paramAttributes[paramIndex], attrib);
                }
            }
        }
    }

    private function addAttributeToSet(string[] container, string attribute) {
        if container.indexOf(attribute) == () {
            container.push(attribute);
        }
    }

    // Corresponds to LLVMSetSubprogram
    public function setSubprogram(Metadata metadata) {
        self.metadata = metadata;
    }

    // Corresponds to LLVMSetGC
    public function setGC(string? name) {
        self.gcName = name;
    }
}

public class FunctionDefn {
    final true isDefn = true;
    final FunctionType functionType;
    final string functionName;
    final FunctionEnumAttribute[] functionAttributes = [];
    final ReturnEnumAttribute[] returnAttributes = [];
    final ParamEnumAttribute[][] paramAttributes = [];
    final Context context;
    string? gcName = ();
    Metadata? metadata = ();

    final string operand;
    final PointerType ty;

    private BasicBlock[] basicBlocks = [];
    private map<int> variableNames = {};
    private int unnamedLabelCount = 0;
    private Value[] paramValues;
    private Linkage linkage = "external";
    private string[] nameTranslation = [];
    private int nameCounter;
    private final boolean[] isBasicBlock = [];

    function init(Context context, string functionName, FunctionType functionType) {
        self.context = context;
        self.functionName = functionName;
        self.functionType = functionType;
        self.paramValues = [];
        self.nameCounter = functionType.paramTypes.length() + 1;
        foreach int i in 0 ..< functionType.paramTypes.length() {
            final Type paramType = functionType.paramTypes[i];
            string register = "%" + i.toString();
            Value arg = new (paramType, register);
            self.paramValues.push(arg);
        }
        self.paramAttributes.setLength(functionType.paramTypes.length());
        // We will be using operand and ty only when function is used as value (ie. function pointer)
        self.operand = "@" + self.functionName;
        self.ty = pointerType(self.functionType);
    }

    // Correspond to LLVMGetParam
    public function getParam(int index) returns Value {
        return self.paramValues[index];
    }

    // Corresponds to LLVMSetLinkage
    // XXX Maybe better done with included record parameter
    public function setLinkage(Linkage linkage) {
        self.linkage = linkage;
    }

    public function getLinkage() returns Linkage {
        return self.linkage;
    }

    function output(Output out) {
        out.push(functionHeader(self));
        self.outputBody(out);
        out.push("}");
    }

    function outputBody(Output out) {
        // This pass will update the unnamed variables and basic block declarations
        foreach var b in self.basicBlocks {
            b.updateUnnamed();
        }
        // This pass will fix the basic block references
        boolean isFirst = true;
        foreach var b in self.basicBlocks {
            b.output(out, isFirst);
            isFirst = false;
        }
    }

    // Corresponds to LLVMAppendBasicBlock
    public function appendBasicBlock(string? name=()) returns BasicBlock {
        string|Unnamed bbName = self.genName(name);
        BasicBlock bb = new (self.context, bbName, self);
        if bbName is Unnamed {
            self.isBasicBlock[bbName] = true;
        }
        self.basicBlocks.push(bb);
        return bb;
    }


    function genName(string? name = ()) returns string|Unnamed {
        if name is string {
            string varName = name;
            if self.variableNames.hasKey(varName) {
                int count = self.variableNames.get(varName);
                self.variableNames[varName] = count + 1; // increment the count of the base name
                string newName = varName + "." + count.toString();
                while self.variableNames.hasKey(newName) {
                    count += 1;
                    newName = varName + "." + count.toString();
                }
                varName = newName;
                self.variableNames[varName] = 1; // save the augmented name in case user use the same  
            }
            else {
                self.variableNames[varName] = 1;
            }
            varName = escapeIdent(varName);
            return varName;
        } else {
            int varName = self.unnamedLabelCount;
            self.unnamedLabelCount += 1;
            return varName;
        }
    }

    function genReg(string? name = ()) returns string|Unnamed {
        string|Unnamed reg = self.genName(name);
        if reg is string {
            return "%" + reg;
        }
        else {
            self.isBasicBlock[reg] = false;
            return reg;
        }
    }

    public function addEnumAttribute(EnumAttribute attribute) {
        if attribute is FunctionEnumAttribute {
            self.addAttributeToSet(self.functionAttributes, attribute);
        }
        else {
            if attribute is (readonly & ["return", ReturnEnumAttribute]) {
                ReturnEnumAttribute attrib = attribute[1];
                self.addAttributeToSet(self.returnAttributes, attrib);
            } else {
                ParamEnumAttribute attrib = attribute[1];
                int paramIndex = attribute[0];
                if paramIndex >= self.paramAttributes.length() {
                    panic err:illegalArgument("Invalid index for parameter attribute");
                } else {
                    self.addAttributeToSet(self.paramAttributes[paramIndex], attrib);
                }
            }
        }
    }

    private function addAttributeToSet(string[] container, string attribute) {
        if container.indexOf(attribute) == () {
            container.push(attribute);
        }
    }

    // Corresponds to LLVMSetGC
    public function setGC(string? name) {
        self.gcName = name;
    }

    function updateBasicBlockLabel(Unnamed label) returns string {
        string newLabel = self.nameCounter.toString();
        self.nameCounter += 1;
        self.nameTranslation[label] = "%" + newLabel;
        return newLabel;
    }

    function updateUnnamed(string|Unnamed name) returns string|Unnamed {
        if name is Unnamed {
            if self.isBasicBlock[name] {
                // unnamed basic block
                return name;
            }
            if self.nameTranslation.length() > name && self.nameTranslation[name] != "" {
                return self.nameTranslation[name];
            }
            string newName = "%" + self.nameCounter.toString();
            self.nameCounter += 1;
            self.nameTranslation[name] = newName;
            return newName;
        } else {
            return name;
        }
    }

    function updateBasicBlockRef(string|Unnamed name) returns string {
        if name is Unnamed {
            if !self.isBasicBlock[name] {
                panic error("Variable names must be updated before updating basic block names");
            }
            string newName =  self.nameTranslation[name];
            return newName;
        } else {
            return name;
        }
    }

    // Corresponds to LLVMSetSubprogram
    public function setSubprogram(Metadata metadata) {
        self.metadata = metadata;
    }
}

# Corresponds to LLVMMetadataRef
public distinct class Metadata {
    string label;
    string[] lines = [];
    string[] preamble = [];
    function init(string ref) {
        self.label = ref;
    }

    function addLine(string ...words) {
        self.lines.push(concat(...words));
    }

    function addPreamble(string ...words) {
        self.preamble.push(concat(...words));
    }

    function resetPreamble() {
        self.preamble = [];
    }

    function hasPreamble() returns boolean {
        return self.preamble.length() != 0;
    }

    function output(Output out) {
        if self.lines.length() == 0 {
            out.push(string `${self.ref()} = !{}`);
        }
        foreach var line in self.lines {
           out.push(line);
        }
    }

    function outputPreamble(Output out) {
        foreach var line in self.preamble {
           out.push(line);
        }
    }

    function ref() returns string {
        return self.label;
    }
}

final readonly & map<string> sourceLangToString = {
    "C99": "DW_LANG_C99"
};

final readonly & map<string> emissionKindToString = {
    "none": "NoDebug",
    "full": "FullDebug",
    "lineTablesOnly": "LineTablesOnly"
};

final readonly & map<string> moduleFlagBehaviorToString = {
    "error": "1",
    "warning": "2",
    "require": "3",
    "override": "4",
    "append": "5",
    "appendUnique": "6",
    "max": "7"
};

# Corresponds to LLVMDIBuilderRef
public class DIBuilder {
    Module m;
    Context context;
    Metadata? compileUnit = ();
    function init(Module m, Context context) {
        self.m = m;
        self.context = context;
    }

    // Corresponds to LLVMDIBuilderCreateCompileUnit
    public function createCompileUnit(*CompileUnitProperties props) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        string[] words = [];
        words.push(metadata.ref(), "=", "distinct", "!", "DICompileUnit", "(", "language",
                   ":", sourceLangToString.get(props.language));
        self.addMetadataToWords(words, props.file, "file");
        self.addStringToWords(words, props.producer, "producer");
        words.push(",", "isOptimized", ":", props.isOptimized.toString());
        self.addStringToWords(words, props.flags, "flags");
        words.push(",", "runtimeVersion", ":", props.runtimeVersion.toString());
        self.addStringToWords(words, props.splitName, "splitDebugFilename");
        words.push(",", "emissionKind", ":", emissionKindToString.get(props.kind));
        self.addBooleanToWords(words, props.splitDebugInlining, "splitDebugInlining");
        words.push(")");
        metadata.addLine(...words);

        metadata.addPreamble("!", "llvm", ".", "dbg", ".", "cu", "=", "!", "{", metadata.ref(), "}");
        self.compileUnit = metadata;
        return metadata;
    }

    // Corresponds to LLVMDIBuilderCreateFile
    public function createFile(string filename, string directory) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        metadata.addLine(metadata.ref(), "=", "!", "DIFile", "(", "filename", ":", "\"", filename,
                         "\"", ",", "directory", ":", "\"", directory, "\"", ")");
        return metadata;
    }

    // Corresponds to LLVMDIBuilderCreatePointerType
    public function createPointerType(*PointerTypeMetdataProperties props) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        string[] body = [metadata.ref(), "=", "!", "DIDerivedType", "(", "tag", ":", "DW_TAG_pointer_type"];
        string? name = props.name;
        if name is string {
            body.push(",", "name", ":", "\"", name, "\"");
        }
        body.push(",", "baseType", ":", props.pointeeTy.ref(), ",", "size", ":", props.sizeInBits.toString());
        Alignment? alignInBits = props.alignInBits;
        if alignInBits is Alignment {
            body.push(",", "align", ":", alignInBits.toString());
        }
        if props.addressSpace != 0 {
            body.push(",", "dwarfAddressSpace", ":", props.addressSpace.toString());
        }
        body.push(")");
        metadata.addLine(...body);
        return metadata;
    }

    // Corresponds to LLVMDIBuilderCreateTypedef
    public function createTypedef(Metadata ty, string name, Metadata file, int lineNo, Metadata scope, Alignment? alignInBits = ()) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        string[] body = [metadata.ref(), "=", "!", "DIDerivedType", "(", "tag", ":", "DW_TAG_typedef", ",", "name", ":", "\"", name, "\"",
                         ",", "scope", ":", scope.ref(), ",", "file", ":", file.ref()];
        if lineNo != 0 {
            body.push(",", "line", ":", lineNo.toString());
        }
        body.push(",", "baseType", ":", ty.ref());
        if alignInBits is Alignment {
            body.push(",", "align", ":", alignInBits.toString());
        }
        body.push(")");
        metadata.addLine(...body);
        return metadata;
    }

    // Corresponds to LLVMDIBuilderCreateBasicType
    public function createBasicType(*BasicTypeMetadataProperties props) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        string encodingToString = "DW_ATE_" + props.encoding;
        metadata.addLine(metadata.ref(), "=", "!", "DIBasicType", "(", "name", ":", "\"", props.name, "\"",
                         ",", "size", ":", props.sizeInBits.toString(), ",", "encoding", ":", encodingToString, ")");
        return metadata;
    }

    // Corresponds to LLVMDIBuilderCreateAutoVariable
    public function createAutoVariable(*VariableMetadataProperties props) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        string[] words = [];
        words.push(metadata.ref(), "=", "!", "DILocalVariable", "(", "name", ":", "\"", props.name, "\"", ",",
                   "scope", ":", props.scope.ref(), ",", "file", ":", props.file.ref(), ",", "line", ":", props.lineNo.toString(), ",",
                   "type", ":", props.ty.ref());
        int? align = props.alignInBits;
        if align != () {
            words.push(",", "align", ":", align.toString());
        }
        words.push(")");
        metadata.addLine(...words);
        return metadata;
    }

    // Corresponds to LLVMDIBuilderInsertDbgValueAtEnd
    public function insertDbgValueAtEnd(*ValueMetadataProperties props) {
        self.m.addDebugIntrinsic("dbg.value");
        (string|Unnamed)[] words = ["call", "void", "@llvm.dbg.value", "(", "metadata", typeToString(props.value.ty, self.context),
                                    props.value.operand, ",", "metadata", props.varInfo.ref(), ",", "metadata", props.expr.ref(), ")"];
        addInsnWithDbLocation(props.block, words, props.debugLoc);
    }

    // Corresponds to LLVMDIBuilderInsertDeclareAtEnd
    public function insertDeclareAtEnd(*ValueMetadataProperties props) {
        self.m.addDebugIntrinsic("dbg.declare");
        (string|Unnamed)[] words = ["call", "void", "@llvm.dbg.declare", "(", "metadata", typeToString(props.value.ty, self.context),
                                    props.value.operand, ",", "metadata", props.varInfo.ref(), ",", "metadata", props.expr.ref(), ")"];
        addInsnWithDbLocation(props.block, words, props.debugLoc);
    }


    // Corresponds to LLVMDIBuilderCreateFunction
    public function createFunction(*FunctionMetadataProperties props) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        string[] words = [];
        words.push(metadata.ref(), "=");
        if props.isDefinition {
            words.push("distinct");
        }
        words.push("!", "DISubprogram", "(");
        self.addStringToWords(words, props.name, "name", ());
        self.addStringToWords(words, props.linkageName, "linkageName");
        Metadata? scope = props.scope;
        Metadata? file = props.file;
        self.addMetadataToWords(words, scope, "scope");
        self.addMetadataToWords(words, file, "file");
        if props.lineNo != 0 {
            words.push(",", "line", ":", props.lineNo.toString());
        }
        Metadata? ty = props.ty;
        self.addMetadataToWords(words, ty, "type");
        string[] flags = [];
        if props.isLocalToUnit {
            flags.push("DISPFlagLocalToUnit");
        }
        if props.isDefinition {
            flags.push("DISPFlagDefinition");
        }
        if props.isOptimized {
            flags.push("DISPFlagOptimized");
        }
        words.push(",", "spFlags", ":");
        if flags.length() > 0 {
            foreach int i in 0 ..< flags.length() {
                if i > 0 {
                    words.push("|");
                }
                words.push(flags[i]);
            }
        }
        else {
            words.push("0");
        }
        if props.isDefinition {
            self.addMetadataToWords(words, self.compileUnit, "unit");
            if self.compileUnit == () {
                panic error("No compile unit is defined");
            }
        }
        Metadata retainedNodes = self.m.addMetadata();
        words.push(",", "retainedNodes", ":", retainedNodes.ref(), ")");
        metadata.addLine(...words);
        return metadata;
    }

    // Corresponds to LLVMDIBuilderCreateExpression
    public function createExpression(int[] addr) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        if addr.length() != 0 {
            panic error("Addr not implemented");
        }
        metadata.addLine(metadata.ref(), "=", "!", "DIExpression", "(", ")");
        return metadata;
    }

    // Corresponds to LLVMDIBuilderCreateLexicalBlock
    public function createLexicalBlock(Metadata scope, Metadata file, int line, int column) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        string[] words = [metadata.ref(), "=", "distinct", "!", "DILexicalBlock", "(", "scope", ":", scope.ref(), ",", "file", ":", file.ref()];
        if line != 0 {
            words.push(",", "line", ":", line.toString());
        }
        if column != 0 {
            words.push(",", "column", ":", column.toString());
        }
        words.push(")");
        metadata.addLine(...words);
        return metadata;
    }

    public function createSubroutineType(Metadata? file, Metadata[] parameterTypes=[], DIFlag flag="zero") returns Metadata {
        Metadata metadata = self.m.addMetadata();
        if parameterTypes.length() != 0 {
            panic error("Parameter types not implemented");
        }
        Metadata typeNode = self.m.addMetadata();
        metadata.addLine(metadata.ref(), "=", "!DISubroutineType", "(", "types", ":", typeNode.ref(), ")");
        return metadata;
    }

    public function createDebugLocation(int line, int column, Metadata? scope, Metadata? inlinedAt=()) returns Metadata {
        Metadata metadata = self.m.addMetadata();
        string[] words = [metadata.ref(), "=", "!", "DILocation", "("];
        words.push("line", ":", line.toString());
        words.push(",", "column", ":", column.toString());
        self.addMetadataToWords(words, scope, "scope");
        words.push(")");
        metadata.addLine(...words);
        return metadata;
    }

    function addMetadataToWords(string[] words, Metadata? metadata, string label, string? prefix=",") {
        if prefix is string {
            words.push(prefix);
        }
        words.push(label, ":");
        if metadata is Metadata {
            words.push(metadata.ref());
        }
        else {
            words.push("null");
        }
    }

    function addStringToWords(string[] words, string? data, string label, string? prefix=",") {
        if data is string {
            if prefix is string {
                words.push(prefix);
            }
            words.push(label, ":", "\"", data, "\"");
        }
    }

    function addBooleanToWords(string[] words, boolean? data, string label, string? prefix=","){
        if prefix is string {
            words.push(prefix);
        }
        words.push(label, ":");
        if data is boolean {
            if data {
                words.push("true");
            }
            else {
                words.push("false");
            }
        }
        else {
            words.push("false");
        }
    }
}

# Corresponds to LLVMBuilderRef  
public class Builder {
    private BasicBlock? currentBlock = ();
    private Metadata? dbLocation = ();
    private final Context context;

    // Corresponds to LLVMCreateBuilder
    public function init(Context context) {
        self.context = context;
    }

    // Corresponds to LLVMPositionBuilderAtEnd
    public function positionAtEnd(BasicBlock block) {
        self.currentBlock = block;
    }

    // Corresponds to LLVMBuildAlloca
    public function alloca(SingleValueType ty, Alignment? align=(), string? name=()) returns PointerValue {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        PointerType ptrTy = pointerType(ty);
        addInsnWithAlign(bb, [reg, "=", "alloca", typeToString(ty, self.context)], align, self.dbLocation);
        return new PointerValue(ptrTy, reg);
    }

    // Corresponds to LLVMBuildLoad
    public function load(PointerValue ptr, Alignment? align=(), string? name=()) returns Value {
        BasicBlock bb = self.bb();
        Type ty = ptr.ty.pointsTo;
        string|Unnamed reg = bb.func.genReg(name);
        addInsnWithAlign(bb, [reg, "=", "load", typeToString(ty, self.context), ",", typeToString(ptr.ty, self.context), ptr.operand], align, self.dbLocation);
        return new Value(ty, reg);
    }

    // Corresponds to LLVMBuildStore
    public function store(Value val, PointerValue ptr, Alignment? align=()) {
        Type ty = ptr.ty.pointsTo;
        if ty != val.ty {
            panic err:illegalArgument("store type mismatch: " + typeToString(val.ty, self.context) + ", " + typeToString(ptr.ty, self.context));
        }
        addInsnWithAlign(self.bb(), ["store", typeToString(ty, self.context), val.operand, ",",
                         typeToString(ptr.ty, self.context), ptr.operand], align, self.dbLocation);
    }

    // Corresponds to LLVMBuild{FAdd,FSub,FMul,FDiv,FRem}
    public function fArithmetic(FloatArithmeticOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryOpWrap(op, lhs, rhs, name);
    }

    // Corresponds to LLVMBuildNSW{Add,Mul,Sub}
    public function iArithmeticNoWrap(IntArithmeticOp op, Value lhs, Value rhs, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        IntType|FloatType ty = sameNumberType(lhs, rhs);
        addInsnWithDbLocation(bb, [reg, "=", op, "nsw", ty, lhs.operand, ",", rhs.operand], self.dbLocation);
        return new Value(ty, reg);
    }
    // Corresponds to LLVMBuild{Add,Mul,Sub}
    public function iArithmeticWrap(IntArithmeticOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryOpWrap(op, lhs, rhs, name);
    }

    // Corresponds to LLVMBuild{SDiv,SRem}
    public function iArithmeticSigned(IntArithmeticSignedOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryOpWrap(op, lhs, rhs, name);
    }

    // Corresponds to LLVMBuild{And, Or, Xor}
    public function iBitwise(IntBitwiseOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryOpWrap(op, lhs, rhs, name);
    }

    // Internally handle binary int operations without wrapping
    function binaryOpWrap(BinaryOp op, Value lhs, Value rhs, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        IntType|FloatType ty = sameNumberType(lhs, rhs);
        addInsnWithDbLocation(bb, [reg, "=", op, ty, lhs.operand, ",", rhs.operand], self.dbLocation);
        return new Value(ty, reg);
    }

    // Corresponds to LLVMBuildICmp
    public function iCmp(IntPredicate op, Value lhs, Value rhs, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        IntegralType ty = sameIntegralType(lhs, rhs);
        addInsnWithDbLocation(bb, [reg, "=", "icmp", op, typeToString(ty, self.context), lhs.operand, ",", rhs.operand], self.dbLocation);
        return new DataValue("i1", reg);
    }

    // Corresponds to LLVMBuildFCmp
    public function fCmp(FloatPredicate op, Value lhs, Value rhs, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        IntType|FloatType ty = sameNumberType(lhs, rhs);
        if ty is FloatType {
            addInsnWithDbLocation(bb, [reg, "=", "fcmp", op, typeToString(ty, self.context), lhs.operand, ",", rhs.operand], self.dbLocation);
            return new DataValue("i1", reg);
        }
        else {
            panic err:illegalArgument("values must be a real type");
        }
    }

    // Corresponds to LLVMBuildBitCast
    public function bitCast(PointerValue val, PointerType destTy, string? name=()) returns PointerValue {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        (string|Unnamed)[] words = [reg, "="];
        words.push("bitcast");
        bitCastArgs(words, val, destTy, self.context);
        addInsnWithDbLocation(bb, words, self.dbLocation);
        return new (destTy, reg);
    }

    // Corresponds to LLVMBuildRet/LLVMBuildRetVoid
    // value of () represents void return value
    public function ret(Value? value=()) {
        BasicBlock bb = self.bb();
        if value == () {
            addInsnWithDbLocation(bb, ["ret", "void"], self.dbLocation);
        }
        else {
            addInsnWithDbLocation(bb, ["ret", typeToString(value.ty, self.context), value.operand], self.dbLocation);
        }
    }

    // Corresponds to LLVMBuildPtrToInt
    public function ptrToInt(PointerValue ptr, IntType destTy, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        addInsnWithDbLocation(bb, [reg, "=", "ptrtoint", typeToString(ptr.ty, self.context), ptr.operand, "to",
                                   typeToString(destTy, self.context)], self.dbLocation);
        return new Value(destTy, reg);
    }

    // Corresponds to LLVMBuildZExt
    public function zExt(Value val, IntType destTy, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        addInsnWithDbLocation(bb, [reg, "=", "zext", typeToString(val.ty, self.context), val.operand, "to",
                              typeToString(destTy, self.context)], self.dbLocation);
        return new Value(destTy, reg);
    }

    // Corresponds to LLVMBuildSExt
    public function sExt(Value val, IntType destTy, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        addInsnWithDbLocation(bb, [reg, "=", "sext", typeToString(val.ty, self.context), val.operand, "to",
                                   typeToString(destTy, self.context)], self.dbLocation);
        return new Value(destTy, reg);
    }

    // Corresponds to LLVMBuildTrunc
    public function trunc(Value val, IntType destinationType, string? name=()) returns Value {
        Type valueType = val.ty;
        if valueType is IntType {
            if valueType == destinationType {
                panic err:illegalArgument("equal sized types are not allowed");
            }
            BasicBlock bb = self.bb();
            string|Unnamed reg = bb.func.genReg(name);
            addInsnWithDbLocation(bb, [reg, "=", "trunc", typeToString(val.ty, self.context), val.operand, "to",
                                       typeToString(destinationType, self.context)], self.dbLocation);
            return new Value(destinationType, reg);
        }
        else {
            panic err:illegalArgument("value must be an integer type");
        }
    }

    // Corresponds to LLVMBuildFNeg
    public function fNeg(Value val, string? name=()) returns Value {
        Type valTy = val.ty;
        if valTy is FloatType {
            BasicBlock bb = self.bb();
            string|Unnamed reg = bb.func.genReg(name);
            addInsnWithDbLocation(bb, [reg, "=", "fneg", typeToString(val.ty, self.context), val.operand], self.dbLocation);
            return new Value(val.ty, reg);
        }
        else {
            panic err:illegalArgument("value must be an real type");
        }
    }

    // Corresponds to LLVMBuildSIToFP
    public function sIToFP(Value val, FloatType destTy, string? name=()) returns Value {
        Type valTy = val.ty;
        if valTy is IntType {
            BasicBlock bb = self.bb();
            string|Unnamed reg = bb.func.genReg(name);
            addInsnWithDbLocation(bb, [reg, "=", "sitofp", typeToString(val.ty, self.context), val.operand,
                                       "to", typeToString(destTy, self.context)], self.dbLocation);
            return new Value(destTy, reg);
        }
        else {
            panic err:illegalArgument("value must be int type");
        }
    }

    public function unreachable() {
        BasicBlock bb = self.bb();
        addInsnWithDbLocation(bb, ["unreachable"], self.dbLocation);
    }

    // Corresponds to LLVMBuildCall
    // Returns () if there is no result i.e. function return type is void
    public function call(Function|PointerValue fn, Value[] args, string? name=()) returns Value? {
        (string|Unnamed)[] insnWords;
        RetType retType;
        BasicBlock bb = self.bb();
        if fn is PointerValue {
            Type fnTy = fn.ty.pointsTo;
            if fnTy is FunctionType {
                retType = fnTy.returnType;
                var fnName = fn.operand;
                insnWords = self.buildFunctionCallBody(retType, fnName, args);
            }
            else {
                panic err:illegalArgument("not a function pointer");
            }
        }
        else {
            if fn.functionType.paramTypes.length() != args.length() {
                panic err:illegalArgument(`number of arguments is invalid for function ${fn.functionName}`);
            }
            retType = fn.functionType.returnType;
            string functionName = "@" + fn.functionName;
            insnWords = self.buildFunctionCallBody(retType, functionName, args );
        }
        if retType != "void" {
            string|Unnamed reg = bb.func.genReg(name);
            (string|Unnamed)[] words = [reg];
            words.push(...insnWords);
            addInsnWithDbLocation(bb, words, self.dbLocation);
            return new Value(retType, reg);
        } else {
            addInsnWithDbLocation(bb, insnWords, self.dbLocation);
            return ();
        }
    }

    function buildFunctionCallBody(RetType retType, string|Unnamed functionName, Value[] args) returns (string|Unnamed)[] {
        (string|Unnamed)[] insnWords = [];
        if retType != "void" {
            insnWords.push("=");
        }
        insnWords.push("call");
        insnWords.push(typeToString(retType, self.context));
        insnWords.push(functionName);
        insnWords.push("(");
        foreach int i in 0 ..< args.length() {
            final Value arg = args[i];
            if i > 0 {
                insnWords.push(",");
            }
            insnWords.push(typeToString(arg.ty, self.context));
            insnWords.push(arg.operand);
        }
        insnWords.push(")");
        return insnWords;
    }

    // Corresponds to LLVMBuildExtractValue
    public function extractValue(Value value, int index, string? name=()) returns Value {
        if value.ty is StructType {
            BasicBlock bb = self.bb();
            string|Unnamed reg = bb.func.genReg(name);
            addInsnWithDbLocation(bb, [reg, "=", "extractvalue", typeToString(value.ty, self.context),
                                       value.operand, ",", index.toString()], self.dbLocation);
            Type elementType = getTypeAtIndex(<StructType>value.ty, index, self.context);
            return new Value(elementType, reg);
        }
        else {
            panic err:illegalArgument("extract value from non aggregate data type");
        }
    }

    // Corresponds to LLVMBuildBr
    public function br(BasicBlock destination) {
        BasicBlock bb = self.bb();
        addInsnWithDbLocation(bb, ["br", "label", destination.ref()], self.dbLocation);
    }

    // Corresponds to LLVMBuildCondBr
    public function condBr(Value condition, BasicBlock ifTrue, BasicBlock ifFalse) {
        Type condTy = condition.ty;
        if condTy is "i1" {
            BasicBlock bb = self.bb();
            addInsnWithDbLocation(bb, ["br", "i1", condition.operand, ",", "label", ifTrue.ref(), ",", "label", ifFalse.ref()], self.dbLocation);
        }
        else {
            panic err:illegalArgument("Condition must be a u1");
        }
    }

    // Corresponds to LLVMBuildGEP
    public function getElementPtr(PointerValue ptr, Value[] indices, "inbounds"? inbounds=(), string? name=()) returns PointerValue {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        (string|Unnamed)[] words = [];
        words.push(reg, "=");
        words.push("getelementptr");
        if inbounds != () {
            words.push(inbounds);
        }
        PointerType destTy = gepArgs(words, ptr, indices, inbounds, self.context);
        addInsnWithDbLocation(bb, words, self.dbLocation);
        return new PointerValue(destTy, reg);
    }

    // Corresponds to LLVMBuildAddrSpaceCast
    public function addrSpaceCast(PointerValue val, PointerType destTy, string? name=()) returns PointerValue {
        BasicBlock bb = self.bb();
        string|Unnamed reg = bb.func.genReg(name);
        (string|Unnamed)[] words = [];
        words.push(reg, "=", "addrspacecast");
        addrSpaceCastArgs(words, val, destTy, self.context);
        addInsnWithDbLocation(bb, words, self.dbLocation);
        return new PointerValue(destTy, reg);
    }

    private function bb() returns BasicBlock {
        BasicBlock? tem = self.currentBlock;
        if tem == () {
            panic err:impossible("no current basic block");
        }
        else {
            return tem;
        }
    }

    // Corresponds to LLVMSetCurrentDebugLocation2
    public function setCurrentDebugLocation(Metadata? dbLocation) {
        self.dbLocation = dbLocation;
    }
}

function addInsnWithAlign(BasicBlock bb, (string|Unnamed)[] words, Alignment? align, Metadata? dbLocation) {
    if align != () {
        words.push(",", "align", align.toString());
    }
    addInsnWithDbLocation(bb, words, dbLocation);
}

function addInsnWithDbLocation(BasicBlock bb, (string|Unnamed)[] words, Metadata? dbLocation) {
    if dbLocation is Metadata {
        words.push(",", "!dbg", dbLocation.ref());
    }
    bb.addInsn(...words);
}

const INDENT = "  ";

# Corresponds to LLVMBasicBlockRef
public distinct class BasicBlock {
    final FunctionDefn func;
    private string|Unnamed label;
    private (string|Unnamed)[][] lines = [];
    private boolean isReferenced = false;

    function init(Context context, string|Unnamed label, FunctionDefn func) {
        self.label = label;
        self.func = func;
    }

    function ref() returns string|Unnamed {
        self.isReferenced = true;
        if self.label is Unnamed {
            return self.label;
        } else {
            return "%" + <string>self.label;
        }
    }

    function addInsn((string|Unnamed)... words) {
        (string|Unnamed)[] chunks = [];
        string[] currentChunk = [];
        foreach var word in words{
            if word is string{
                currentChunk.push(word);
            } else {
                chunks.push(concat(...currentChunk));
                currentChunk = [];
                chunks.push(word);
            }
        }
        if currentChunk.length() > 0 {
            chunks.push(concat(...currentChunk));
        }
        self.lines.push(chunks);
    }

    // Used to to update the unnamed variables and basic block labels
    function updateUnnamed() {
        (string|Unnamed)[][] newLines = [];
        if self.isReferenced && self.label is Unnamed {
            // unnamed basic block
            self.label = self.func.updateBasicBlockLabel(<Unnamed>self.label);
        }
        foreach var line in self.lines {
            (string|Unnamed)[] newLine = [];
            foreach var name in line {
                newLine.push(self.func.updateUnnamed(name));
            }
            newLines.push(newLine);
        }
        self.lines = newLines;
    }

    function output(Output out, boolean isFirst) {
        // This ensures we leave out the label in two cases
        // 1. the first block (provided it is not referenced)
        // 2. basic blocks that were in BIR but are unreferenced (and empty) in LL
        //    (happens at the moment for blocks starting with `catch`)
        if self.isReferenced {
            out.push(<string>self.label + ":");
        }
        else if !isFirst {
            panic err:impossible("unreferenced basic block");
        }
        foreach var line in self.lines {
            string[] newLine = [];
            foreach var name in line {
                newLine.push(self.func.updateBasicBlockRef(name));
            }
            string outputLine = createLine([concat(...newLine)], INDENT);
            out.push(outputLine);
        }
    }
}

function sameIntegralType(Value v1, Value v2) returns IntegralType {
    Type ty1 = v1.ty;
    Type ty2 = v2.ty;
    if ty1 != ty2 {
        panic err:illegalArgument("expected same types");
    }
    else if ty1 is IntegralType {
        return ty1;
    }
    panic err:illegalArgument("expected an integral type");
}

function sameNumberType(Value v1, Value v2) returns IntType|FloatType {
    Type ty1 = v1.ty;
    Type ty2 = v2.ty;
    if ty1 != ty2 {
        panic err:illegalArgument("expected same types");
    }
    else if ty1 is IntType || ty1 is FloatType {
        return ty1;
    }
    panic err:illegalArgument("expected a number type");
}

function typeToString(RetType ty, Context context, boolean forceInline=false) returns string {
    if ty is PointerType {
        if ty.addressSpace == 0 {
            return typeToString(ty.pointsTo, context) + "*";
        } else {
            return createLine([typeToString(ty.pointsTo, context), "addrspace", "(", ty.addressSpace.toString(), ")", "*"]);
        }
    }
    else if ty is StructType {
        string? tyName = ty.name;
        Type[] elementTypes = ty.elementTypes;
        if tyName != () {
            elementTypes = context.getNamedStructBody(ty);
        }
        if !forceInline {
            if tyName != () {
                return tyName;
            }
        }
        string[] typeStringBody = [];
        if elementTypes.length() == 0 {
            typeStringBody.push("opaque");
        }
        else {
            typeStringBody.push("{");
            foreach int i in 0 ..< elementTypes.length() {
                final Type elementType = elementTypes[i];
                if i > 0 {
                    typeStringBody.push(",");
                }
                typeStringBody.push(typeToString(elementType, context));
            }
            typeStringBody.push("}");
        }
        return createLine(typeStringBody, "");
    }
    else if ty is ArrayType {
        string[] typeStringBody = [];
        typeStringBody.push("[");
        typeStringBody.push(ty.elementCount.toString());
        typeStringBody.push("x");
        typeStringBody.push(typeToString(ty.elementType, context));
        typeStringBody.push("]");
        return createLine(typeStringBody, "");
    }
    else if ty is FunctionType {
        string[] typeStringBody = [];
        typeStringBody.push(typeToString(ty.returnType, context), "(");
        foreach int i in 0 ..< ty.paramTypes.length() {
            final Type paramType = ty.paramTypes[i];
            if i > 0 {
                typeStringBody.push(",");
            }
            typeStringBody.push(typeToString(paramType, context));
        }
        typeStringBody.push(")");
        return createLine(typeStringBody, "");
    }
    else {
        return ty;
    }
}

class Output {
    final string[] lines = [];

    function push(string line) {
        self.lines.push(line);
    }

    function writeFile(string path) returns io:Error? {
        return io:fileWriteLines(path, self.lines);
    }

    function toString() returns string {
        return "\n".'join(...self.lines);
    }
}

function functionHeader(Function fn) returns string {
    string[] words = [];
    Metadata? metadata = fn.metadata;
    if fn is FunctionDefn {
        words.push("define");
        if fn.getLinkage() != "external" {
            words.push(fn.getLinkage());
        }
    }
    else {
        words.push("declare");
        if metadata is Metadata {
            words.push("!dbg", metadata.ref());
        }
    }
    foreach int i in 0 ..< fn.returnAttributes.length() {
        words.push(fn.returnAttributes[i]);
    }
    words.push(typeToString(fn.functionType.returnType, fn.context));
    words.push("@" + fn.functionName);
    words.push("(");
    foreach int i in 0 ..< fn.functionType.paramTypes.length() {
        final Type ty = fn.functionType.paramTypes[i];
        if i > 0 {
            words.push(",");
        }
        words.push(typeToString(ty, fn.context));
        foreach int j in 0 ..< fn.paramAttributes[i].length() {
            words.push(fn.paramAttributes[i][j]);
        }
        if fn is FunctionDefn {
            words.push(<string>fn.getParam(i).operand);
        }
    }
    words.push(")");
    foreach int i in 0 ..< fn.functionAttributes.length() {
        words.push(fn.functionAttributes[i]);
    }
    if fn.gcName is string {
        words.push("gc", string `"${<string>fn.gcName}"`);
    }
    if fn is FunctionDefn {
        if metadata is Metadata {
            words.push("!dbg", metadata.ref());
        }
        words.push("{");
    }
    return concat(...words);
}

function createLine(string[] words, string indent = "") returns string {
    return string:concat(indent, concat(...words));
}

function concat(string... words) returns string {
    string[] parts = [];
    foreach string word in words {
        string lastTail = parts.length() > 0 ? parts[parts.length() - 1] : "";
        if lastTail.length() > 0 {
            lastTail = lastTail.substring(lastTail.length() - 1);
        }
        string head = word.length() > 0 ? word.substring(0, 1) : "";
        if !(omitSpaceBefore(word) || (head != "\"" && omitSpaceBefore(head))) 
                && parts.length() > 0 
                && !(omitSpaceAfter(parts[parts.length() - 1]) || (lastTail != "\"" && omitSpaceAfter(lastTail))) {
            parts.push(" ");
        }
        parts.push(word);
    }
    return string:concat(...parts).trim();
}

 // Identifier must be of the form [-a-zA-Z$._][-a-zA-Z$._0-9]* 
function escapeIdent(string name) returns string {
    if isIdent(name) {
        return name;
    }
    string escaped = "\"";
    foreach var ch in name {
        escaped += escapeIdentChar(ch);
    }
    escaped += "\"";
    return escaped;
}

function escapeIdentChar(string:Char ch) returns string {
    int cp = ch.toCodePointInt();
    if cp >= 0x20 && cp < 0x7F && ch != "\"" && ch != "\\" {
        return ch;
    }
    if cp > 0x7F {
        byte[] bytes = ch.toBytes();
        string result = "";
        foreach byte b in bytes {
            // UTF-8 representation of a code point >= 0x80 consists of bytes >= 0x80
            // so toHexString here will always produce two bytes
            result += "\\" + b.toHexString().toUpperAscii();
        } 
        return result;
    }
    string hex = cp.toHexString().toUpperAscii();
    if hex.length() == 1 {
        return "\\0" + hex;
    }
    else {
        return "\\" + hex;
    }
}

function gepArgs((string|Unnamed)[] words, Value ptr, Value[] indices, "inbounds"? inbounds, Context context) returns PointerType {
    Type ptrTy = ptr.ty;
    if ptrTy is PointerType {
        words.push(typeToString(ptrTy.pointsTo, context));
    } else {
        panic err:illegalArgument("GEP on non-pointer type value"); 
    }
    words.push(",", typeToString(ptr.ty, context), ptr.operand);
    Type resultType = ptr.ty;
    int resultAddressSpace = 0;
    foreach var index in indices {
        words.push(",");
        words.push(typeToString(index.ty, context));
        words.push(index.operand);
        if resultType is PointerType {
            resultAddressSpace = resultType.addressSpace;
            resultType = resultType.pointsTo;
        }
        else {
            if resultType is ArrayType {
                resultType = resultType.elementType;
            }
            else if resultType is StructType {
                int i;
                if index.operand is Unnamed {
                    i = <Unnamed>index.operand;
                } else {
                    i = checkpanic int:fromString(<string>index.operand);
                }
                Type indexTy = index.ty;
                if indexTy !is "i32" {
                    panic err:illegalArgument("structures can be index only using i32 constants"); 
                }
                else {
                    resultType = getTypeAtIndex(resultType, i, context);
                }
            }
            else {
                panic err:illegalArgument(string `type  ${typeToString(resultType, context)} can't be indexed`);
            }
        }
    }
    return pointerType(resultType, resultAddressSpace);
}

function getTypeAtIndex(StructType ty, int index, Context context) returns Type {
    boolean isNamed = ty.name != ();
    Type[] elementTypes = ty.elementTypes;
    if isNamed {
        elementTypes = context.getNamedStructBody(ty);
    }
    return elementTypes[index];
}

function bitCastArgs((string|Unnamed)[] words, Value val, PointerType destTy, Context context) {
    words.push(typeToString(val.ty, context), val.operand, "to", typeToString(destTy, context));
}

function addrSpaceCastArgs((string|Unnamed)[] words, Value val, PointerType destTy, Context context) {
    words.push(typeToString(val.ty, context), val.operand, "to", typeToString(destTy, context));
}

final int CP_DOUBLE_QUOTE = "\"".toCodePointInt();
final int CP_BACKSLASH = "\\".toCodePointInt();

function charArray(byte[] bytes) returns string {
    string result = "c\"";
    foreach var b in bytes {
        if b >= 0x20 && b < 0x7F && b != CP_DOUBLE_QUOTE && b != CP_BACKSLASH {
            result += checkpanic string:fromBytes([b]);
        }
        else {
            result += "\\";
            string hex = b.toHexString().toUpperAscii();
            if hex.length() == 1 {
                result += "0" + hex;
            }
            else {
                result += hex;
            }
        }
    }
    result += "\"";
    return result;
}

function isIdent(string name) returns boolean {
    if name.length() == 0 {
        return false;
    }
    if isDigit(name[0]) {
        return false;
    }

    foreach var ch in name {
        if !isIdentFollow(ch) {
            return false;
        }
    }
    return true;
}

function isIdentFollow(string:Char ch) returns boolean {
    return isAlnum(ch) || isIdentOther(ch);
}

function isIdentOther(string:Char ch) returns boolean {
     return ch == "$" || ch == "." || ch == "_" || ch == "-";
}

function isAlnum(string:Char ch) returns boolean {
    return isAlpha(ch) || isDigit(ch);
}

function isDigit(string:Char ch) returns boolean {
    return "0" <= ch && ch <= "9";
}

function isAlpha(string:Char ch) returns boolean {
    return ("a" <= ch && ch <= "z") || ("A" <= ch && ch <= "Z");
}

function omitSpaceBefore(string word) returns boolean {
    return word == "," || word == "(" || word == ")" || word == "}" || word == "\"" || word == "]" || word == "*" || word == ":" || word == ".";
}

function omitSpaceAfter(string word) returns boolean {
    return word == "(" || word == "{" || word == "\"" || word == "[" || word == "." || word == "!";
}

function floatBitsToHexString(float f) returns string {
    return "0x" + toUnsignedHexString(f.toBitsInt()).toUpperAscii();
}

function toUnsignedHexString(int i) returns string {
    if i >= 0 {
        return i.toHexString();
    }
    else {
        // high 15 digits + low digit, this split is desirable
        // since no need to pad when low is zero.
        return (i >>> 4).toHexString() + (i & 0xF).toHexString();
    }
}
