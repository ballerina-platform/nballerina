// Constant folding is used for several purposes
// 1. for evaluating the RHS of a const definition at compile time
// 2. for determining whether the type of a conditional expression is singleton true/false (which affects reachability)
// 3. for improving generated code quality, particularly for cases where LLVM cannot do folding (e.g. strings)
// Complications arise when purpose 1 and 2 need things done differently. Specifically:
// - when the type of variable has been narrowed to singleton float zero, we do not know whether its value is +0f or -0f
// (i.e. must be folded for purpose 2 but does not allow folding for purpose 1)
// (this applies even more in case of decimal precision)
// - the type of an === expression is boolean, even if the operands have singleton type (i.e. foldable for purpose 
// does not imply foldable for purpose 2)
// These lead to cascading effects in expressions that contain them.
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.types as t;

type SimpleConst t:SingleValue;

type FoldError ResolveTypeError;

type FoldContext object {
    *err:SemanticContext;
    public function semanticErr(d:Message msg, d:Position|d:Range pos, error? cause = ()) returns err:Semantic;
    function lookupConst(string? prefix, string varName, d:Position pos) returns t:WrappedSingleValue|FoldError|();
    function typeContext() returns t:Context;
    function resolveTypeDesc(s:TypeDesc td) returns FoldError|t:SemType;
    function isConstDefn() returns boolean;
};

class ConstFoldContext {
    *FoldContext;
    final ModuleSymbols mod;
    final s:ModuleLevelDefn defn;

    function init(s:ModuleLevelDefn defn, ModuleSymbols mod) {
        self.defn = defn;
        self.mod = mod;
    }

    public function semanticErr(d:Message msg, d:Position|d:Range pos, error? cause = ()) returns err:Semantic {
        return err:semantic(msg, loc=d:location(self.defn.part.file, pos), cause=cause, defnName=self.defn.name);
    }

    function lookupConst(string? prefix, string varName, d:Position pos) returns t:WrappedSingleValue|FoldError|() {
        if prefix != () {
            return { value: check lookupImportedConst(self.mod, self.defn, prefix, varName) };
        }
        s:ModuleLevelDefn? defn = self.mod.defns[varName];
        if defn is s:ConstDefn {
            var resolved = check resolveConstDefn(self.mod, defn);
            return { value: resolved[1] };
        }
        else if defn == () {
            return self.semanticErr(`${varName} is not defined`, self.qNameRange(pos));
        }
        else {
            return self.semanticErr(`reference to ${varName} not defined with const`, self.qNameRange(pos));
        }
    }

    function qNameRange(d:Position startPos) returns d:Range {
        return self.defn.part.file.qNameRange(startPos);
    }

    function typeContext() returns t:Context {
        return self.mod.tc;
    }

    function resolveTypeDesc(s:TypeDesc td) returns FoldError|t:SemType {
        return resolveSubsetTypeDesc(self.mod, self.defn, td);
    }

    function isConstDefn() returns boolean => true;
}

function resolveConstDefn(ModuleSymbols mod, s:ConstDefn defn) returns s:ResolvedConst|FoldError {
    var resolved = defn.resolved;
    if resolved is false {
        return err:semantic(`cycle in evaluating ${defn.name}`, s:defnLocation(defn));
    }
    else if resolved != () {
        return resolved;
    }
    else {
        defn.resolved = false;
        s:SubsetBuiltinTypeDesc? td = defn.td;
        t:SemType? expectedType = td == () ? () : resolveBuiltinTypeDesc(mod.tc, td);
        s:ResolvedConst resolvedConst = check resolveConstExpr(mod, defn, defn.expr, expectedType);
        defn.resolved = resolvedConst;
        return resolvedConst;
    }
}

function resolveConstExpr(ModuleSymbols mod, s:ModuleLevelDefn defn, s:Expr expr, t:SemType? expectedType) returns s:ResolvedConst|FoldError {
    ConstFoldContext cx = new ConstFoldContext(defn, mod);
    s:Expr foldedExpr = check foldExpr(cx, expectedType, expr);
    if foldedExpr is s:ConstValueExpr {
        if expectedType == () || t:containsConst(expectedType, foldedExpr.value) {
            return [t:singleton(cx.typeContext(), foldedExpr.value), foldedExpr.value];
        }
        else {
            return err:semantic(`initializer of ${defn.name} is not a subtype of the declared type`, s:defnLocation(defn));
        }
    }
    else {
        return err:semantic(`initializer of ${defn.name} is not constant`, s:defnLocation(defn));
    }
}

function resolveConstIntExpr(ModuleSymbols mod, s:ModuleLevelDefn defn, s:Expr expr) returns int|FoldError {
    [t:SemType, t:SingleValue] [_, resolved] = check resolveConstExpr(mod, defn, expr, t:INT);
    return <int>resolved;
}

function foldExpr(FoldContext cx, t:SemType? expectedType, s:Expr expr) returns s:Expr|FoldError {
    if expr is s:BinaryArithmeticExpr {
        return foldBinaryArithmeticExpr(cx, expectedType, expr);
    } 
    else if expr is s:BinaryBitwiseExpr {
        return foldBinaryBitwiseExpr(cx, expectedType, expr);
    }
    else if expr is s:BinaryRelationalExpr {
        return foldBinaryRelationalExpr(cx, expectedType, expr);
    }
    else if expr is s:BinaryEqualityExpr {
        return foldBinaryEqualityExpr(cx, expectedType, expr);
    }
    else if expr is s:UnaryExpr {
        return foldUnaryExpr(cx, expectedType, expr);
    }
    else if expr is s:TypeCastExpr {
        return foldTypeCastExpr(cx, expectedType, expr);
    }
    else if expr is s:TypeTestExpr {
        return foldTypeTestExpr(cx, expectedType, expr);
    }
    else if expr is s:CheckingExpr {
        return foldCheckingExpr(cx, expectedType, expr);
    }
    else if expr is s:ListConstructorExpr {
        return foldListConstructorExpr(cx, expectedType, expr);
    }
    else if expr is s:MappingConstructorExpr {
        return foldMappingConstructorExpr(cx, expectedType, expr);
    }
    else if expr is s:VarRefExpr {
        return foldVarRefExpr(cx, expectedType, expr);
    }
    else if expr is s:IntLiteralExpr {
        return foldIntLiteralExpr(cx, expectedType, expr);
    }
    else if expr is s:FpLiteralExpr {
        return foldFpLiteralExpr(cx, expectedType, expr);
    }
    else {
        return expr;
    } 
}

function foldListConstructorExpr(FoldContext cx, t:SemType? expectedType, s:ListConstructorExpr expr) returns s:Expr|FoldError {
    // SUBSET always have contextually expected type for list constructor
    t:SemType expectedListType = t:intersect(<t:SemType>expectedType, t:LIST_RW);
    t:SemType? memberType = t:arrayMemberType(cx.typeContext(), expectedListType);
    s:Expr[] members = expr.members;
    foreach int i in 0 ..< members.length() {
        members[i] = check foldExpr(cx, memberType, members[i]);
    }
    expr.expectedType = expectedListType;
    return expr;
}

function foldMappingConstructorExpr(FoldContext cx, t:SemType? expectedType, s:MappingConstructorExpr expr) returns s:Expr|FoldError {
    // SUBSET always have contextually expected type for mapping constructor
    t:SemType inherentType = check selectMappingInherentType(cx, <t:SemType>expectedType, expr); 
    expr.expectedType = inherentType;
    foreach s:Field f in expr.fields {
        t:SemType memberType = t:mappingMemberType(cx.typeContext(), inherentType, f.name);
        f.value = check foldExpr(cx, memberType, f.value);
    }
    return expr;
}

function selectMappingInherentType(FoldContext cx, t:SemType expectedType, s:MappingConstructorExpr expr) returns t:SemType|FoldError {
    t:SemType expectedMappingType = t:intersect(expectedType, t:MAPPING_RW);
    t:Context tc = cx.typeContext();
    if t:mappingAtomicTypeRw(tc, expectedMappingType) != () {
        return expectedMappingType; // easy case
    }
    string[] fieldNames = from var f in expr.fields order by f.name select f.name;
    t:MappingAlternative[] alts =
        from var alt in t:mappingAlternativesRw(tc, expectedMappingType)
        where mappingAlternativeAllowsFields(alt, fieldNames)
        select alt;
    if alts.length() == 0 {
        return cx.semanticErr("no applicable inherent type for mapping constructor", pos=expr.startPos);
    }
    else if alts.length() > 1 {
        return cx.semanticErr("ambiguous inherent type for mapping constructor", pos=expr.startPos);
    }
    t:SemType semType = alts[0].semType;
    if t:mappingAtomicTypeRw(tc, semType) == () {
        return cx.semanticErr("appplicable type for mapping constructor is not atomic", pos=expr.startPos);
    }
    return semType;
}

function mappingAlternativeAllowsFields(t:MappingAlternative alt, string[] fieldNames) returns boolean {
    foreach t:MappingAtomicType a in alt.pos {
        // SUBSET won't be right with record defaults
        if a.rest == t:NEVER {
            if a.names != fieldNames {
                return false;
            }
        }
        // Check that all members of a.names are included in fieldNames
        // Both a.names and fieldNames are ordered
        int i = 0;
        int len = fieldNames.length();
        foreach string name in a.names {
            while true {
                if i >= len {
                    return false;
                }
                if fieldNames[i] == name {
                    i += 1;
                    break;
                }
                if fieldNames[i] > name {
                    return false;
                }
                i += 1;
            }
        }
    }
    return true;
}

function foldBinaryArithmeticExpr(FoldContext cx, t:SemType? expectedType, s:BinaryArithmeticExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, expectedType, expr.left);
    s:Expr rightExpr = check foldExpr(cx, expectedType, expr.right);
    if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
        if left is int && right is int {
            return foldedBinaryConstExpr(check intArithmeticEval(cx, expr.opPos, expr.arithmeticOp, left, right), t:INT, leftExpr, rightExpr);
        }
        else if left is string && right is string && expr.arithmeticOp == "+" {
            return foldedBinaryConstExpr(left + right, t:STRING, leftExpr, rightExpr);
        }
        else if left is float && right is float {
            if expr.arithmeticOp == "/" && right == 0.0f {
                // type is float in this case
                return <s:ConstValueExpr> { startPos: expr.startPos, endPos: expr.endPos, value: left/right, multiSemType: t:FLOAT };
            }
            return foldedBinaryConstExpr(floatArithmeticEval(expr.arithmeticOp, left, right), t:FLOAT, leftExpr, rightExpr);
        }
        else if left is decimal && right is decimal {
            return foldedBinaryConstExpr(check decimalArithmeticEval(cx, expr.opPos, expr.arithmeticOp, left, right), t:DECIMAL, leftExpr, rightExpr);       
        }
        else {
            return cx.semanticErr(`invalid operand types for ${expr.arithmeticOp}`, expr.opPos);
        }
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

function foldBinaryBitwiseExpr(FoldContext cx, t:SemType? expectedType, s:BinaryBitwiseExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, t:INT, expr.left);
    s:Expr rightExpr = check foldExpr(cx, t:INT, expr.right);
    if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
        if left is int && right is int {
            return <s:ConstValueExpr> {
                startPos: expr.startPos,
                endPos: expr.endPos,
                value: bitwiseEval(expr.bitwiseOp, left, right),
                multiSemType: foldedBinaryBitwiseType(expr.bitwiseOp, left, leftExpr.multiSemType, right, rightExpr.multiSemType)
            };
        }
        return cx.semanticErr(`invalid operand types for ${expr.bitwiseOp}`, expr.opPos);
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

function foldedBinaryBitwiseType(s:BinaryBitwiseOp op, int left, t:SemType? lt, int right, t:SemType? rt) returns t:SemType? {
    if lt === () && rt === () {
        return ();
    }
    t:SemType leftType = t:widenUnsigned(lt ?: t:intConst(left));
    t:SemType rightType = t:widenUnsigned(rt ?: t:intConst(right));
    return op == "&" ? t:intersect(leftType, rightType) : t:union(leftType, rightType);    
}

function foldBinaryEqualityExpr(FoldContext cx, t:SemType? expectedType, s:BinaryEqualityExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, (), expr.left);
    s:Expr rightExpr = check foldExpr(cx, (), expr.right);
    boolean exact = (<string>expr.equalityOp).length() == 3; // either "===" or "!=="
    boolean positive = expr.equalityOp[0] == "=";
    if exact {
        if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
            boolean equal = isExactEqual(leftExpr.value, rightExpr.value);
            boolean value = positive == equal;
            if !equal && !isEqual(leftExpr.value, rightExpr.value) && simpleConstExprIntersectIsEmpty(leftExpr, rightExpr) {
                return cx.semanticErr(`intersection of types of operands of ${expr.equalityOp} is empty`, expr.opPos);
            }
            return <s:ConstValueExpr> { startPos: expr.startPos, endPos: expr.endPos, value, multiSemType: t:BOOLEAN };
        }
    }
    else {
        if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
            boolean equal = isEqual(leftExpr.value, rightExpr.value);
            boolean value = positive == equal;
            if !equal && simpleConstExprIntersectIsEmpty(leftExpr, rightExpr) {
                return cx.semanticErr(`intersection of types of operands of ${expr.equalityOp} is empty`, expr.opPos);
            }
            return foldedBinaryConstExpr(value, t:BOOLEAN, leftExpr, rightExpr);
        }
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

// Remove after JBUG #17977, #32245 is fixed
function isEqual(SimpleConst c1, SimpleConst c2) returns boolean {
    return c1 is float && c2 is float ? (c1 == c2 || (float:isNaN(c1) && float:isNaN(c2))) : c1 == c2;
}

// Remove after JBUG #17977, #32247 is fixed
function isExactEqual(SimpleConst c1, SimpleConst c2) returns boolean {
    return c1 === c2 || (c1 is float && c2 is float && float:isNaN(c1) && float:isNaN(c2));
}

// Precondition is that the values are !=
function simpleConstExprIntersectIsEmpty(s:ConstValueExpr leftExpr, s:ConstValueExpr rightExpr) returns boolean {
    t:SemType? lt = leftExpr.multiSemType;
    t:SemType? rt = rightExpr.multiSemType;
    if lt == () {
        if rt == () {
            // precondition of this function is that the values are != 
            // so if the types are both singletons, the intersection must be empty
            return true;
        }
        else {
            return !t:containsConst(rt, leftExpr.value);
        }
    }
    else if rt == () {
        return !t:containsConst(lt, rightExpr.value);
    }
    else {
        return t:isNever(t:intersect(lt, rt));
    }
}

function foldBinaryRelationalExpr(FoldContext cx, t:SemType? expectedType, s:BinaryRelationalExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, (), expr.left);
    s:Expr rightExpr = check foldExpr(cx, (), expr.right);
    if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
        return foldedBinaryConstExpr(check relationalEval(cx, expr.opPos, expr.relationalOp, leftExpr.value, rightExpr.value),
                                     t:BOOLEAN, leftExpr, rightExpr);
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

function foldedBinaryConstExpr(SimpleConst value, t:UniformTypeBitSet basicType, s:ConstValueExpr left, s:ConstValueExpr right) returns s:ConstValueExpr {
    return { startPos: left.startPos, endPos: right.endPos, value, multiSemType: left.multiSemType === () && right.multiSemType === () ? () : basicType };
}

function foldUnaryExpr(FoldContext cx, t:SemType? expectedType, s:UnaryExpr expr) returns s:Expr|FoldError {
    s:Expr subExpr = expr.operand;
    match expr.op {
        "!" => {
            subExpr = check foldExpr(cx, t:BOOLEAN, expr.operand);
            if subExpr is s:ConstValueExpr {
                SimpleConst operand = subExpr.value;
                if operand is boolean {
                    return foldedUnaryConstExpr(!operand, t:BOOLEAN, subExpr);
                }
            }
        }
        "~" => {
            subExpr = check foldExpr(cx, t:INT, expr.operand);
            if subExpr is s:ConstValueExpr {
                SimpleConst operand = subExpr.value;
                if operand is int {
                    return foldedUnaryConstExpr(~operand, t:INT, subExpr);
                }
            }
        }
        "-" => {
            subExpr = check foldExpr(cx, expectedType, expr.operand);
            if subExpr is s:ConstValueExpr {
                SimpleConst operand = subExpr.value;
                if operand is int {
                    return foldedUnaryConstExpr(check intNegateEval(cx, expr.opPos, operand), t:INT, subExpr);
                }
                else if operand is float {
                    return foldedUnaryConstExpr(-operand, t:FLOAT, subExpr);
                }
                else if operand is decimal {
                    return foldedUnaryConstExpr(-operand, t:DECIMAL, subExpr);
                }
            }
        }
        _ => {
            panic err:impossible();
        }
    }
    if subExpr is s:ConstValueExpr {
        return cx.semanticErr(`invalid operand type for ${expr.op}`, expr.opPos);
    }
    expr.operand = subExpr;
    return expr;
}

function foldTypeCastExpr(FoldContext cx, t:SemType? expectedType, s:TypeCastExpr expr) returns s:Expr|FoldError {
    t:SemType semType = check cx.resolveTypeDesc(expr.td);
    t:SemType targetType = semType;
    if expectedType != () {
        targetType = t:intersect(targetType, expectedType);
    }
    s:Expr subExpr = check foldExpr(cx, targetType, expr.operand);
    if subExpr is s:ConstValueExpr {
        // Handle numeric conversions
        t:UniformTypeBitSet? toNumType = t:singleNumericType(semType);
        var value = subExpr.value;
        if toNumType == t:INT {
            if value is float || value is decimal {
                value = check convertToIntEval(cx, expr.opPos, value);
            }
        }
        else if toNumType == t:FLOAT {
            if value is int || value is decimal {
                value = <float>value;
            }
        }
        else if toNumType == t:DECIMAL {
            if value is int {
                value = <decimal>value;
            }
            else if value is float {
                value = check convertFloatToDecimalEval(cx, expr.opPos, value);
            }
        }
        if !t:containsConst(semType, value) {
            return cx.semanticErr(`type cast will always fail`, pos=expr.opPos);
        }
        if toNumType != () && value != subExpr.value {
            return foldedUnaryConstExpr(value, toNumType, subExpr);
        }
        // SUBSET when we have unions of singletons, will need to adjust the type here
        return subExpr;
    }
    expr.operand = subExpr;
    return expr;
}

function foldTypeTestExpr(FoldContext cx, t:SemType? expectedType, s:TypeTestExpr expr) returns s:Expr|FoldError {
    s:Expr subExpr = check foldExpr(cx, (), expr.left);
    if subExpr is s:ConstValueExpr {
        t:SemType semType = check cx.resolveTypeDesc(expr.td);
        return foldedUnaryConstExpr(t:containsConst(semType, subExpr.value) == !expr.negated, t:BOOLEAN, subExpr);
    }
    expr.left = subExpr;
    return expr;
}

function foldCheckingExpr(FoldContext cx, t:SemType? expectedType, s:CheckingExpr expr) returns s:Expr|FoldError {
    t:SemType? ty = expectedType == () ? () : t:diff(expectedType, t:ERROR);
    s:Expr subExpr = check foldExpr(cx, ty, expr.operand);
    if subExpr is s:ConstValueExpr && !cx.isConstDefn() {
        return subExpr;
    }
    expr.operand = subExpr;
    return expr;
}

function foldedUnaryConstExpr(SimpleConst value, t:UniformTypeBitSet basicType, s:ConstValueExpr subExpr) returns s:ConstValueExpr {
    return { startPos: subExpr.startPos, endPos: subExpr.endPos, value, multiSemType: subExpr.multiSemType === () ? () : basicType };
}

function foldVarRefExpr(FoldContext cx, t:SemType? expectedType, s:VarRefExpr expr) returns s:Expr|FoldError {
    t:WrappedSingleValue? constValue = check cx.lookupConst(expr.prefix, expr.name, expr.qNamePos);
    if constValue == () {
        return expr;
    }
    else {
        s:ConstValueExpr constExpr = { startPos: expr.startPos, endPos: expr.endPos, value: constValue.value };
        return constExpr;
    }
}

function foldFpLiteralExpr(FoldContext cx, t:SemType? expectedType, s:FpLiteralExpr expr) returns s:ConstValueExpr|FoldError { 
    var { typeSuffix, untypedLiteral, startPos } = expr;
    float|decimal result;
    if typeSuffix != () {
        result = typeSuffix is s:FLOAT_TYPE_SUFFIX ? floatFromFpLiteral(untypedLiteral) : check decimalFromFpLiteral(cx, untypedLiteral, startPos);
    }
    else if expectedType == () || t:includesSome(expectedType, t:FLOAT) || !t:includesSome(expectedType, t:DECIMAL) {
        result = floatFromFpLiteral(untypedLiteral);
    }
    else {
        result = check decimalFromFpLiteral(cx, untypedLiteral, startPos);
    }
    return { startPos: startPos, endPos: expr.endPos, value: result };
}

function foldIntLiteralExpr(FoldContext cx, t:SemType? expectedType, s:IntLiteralExpr expr) returns s:ConstValueExpr|FoldError {
    Position startPos = expr.startPos;
    int|float|decimal result;
    if expectedType == () || t:includesSome(expectedType, t:INT) {
        result = check intFromLiteral(cx, expr);
    }  
    else if t:includesSome(expectedType, t:FLOAT) {
        result = floatFromFpLiteral(expr.digits);
    }
    else if t:includesSome(expectedType, t:DECIMAL) {
        result = check decimalFromFpLiteral(cx, expr.digits, startPos);
    }
    else {
        result = check intFromLiteral(cx, expr);
    }
    return { startPos: startPos, endPos: expr.endPos, value: result };
}

// Since the binary floating point literal is parsed correctly,
// it is impossible to return an error.
function floatFromFpLiteral(string digits) returns float {
    return checkpanic float:fromString(digits);
}

// Even if the decimal floating point literal is parsed correctly,
// overflows should return an error.
function decimalFromFpLiteral(FoldContext cx, string decimalStr, Position pos) returns decimal|FoldError {
    decimal|error d = decimal:fromString(decimalStr);
    if d is error {
        return cx.semanticErr("invalid decimal floating point number", cause=d, pos=pos);
    }
    return d;
}

// Even if the integer literal is parsed correctly,
// overflows should return an error.
function intFromLiteral(FoldContext cx, s:IntLiteralExpr expr) returns int|FoldError {
    int|error i = s:intFromIntLiteral(expr.base, expr.digits);
    if i is error {
        return cx.semanticErr("invalid int literal", cause=i, pos=expr.startPos);
    }
    return i;
}
