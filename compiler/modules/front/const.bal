import wso2/nballerina.comm.err;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.types as t;
import wso2/nballerina.bir;

// JBUG runtime InherentTypeViolation if initializer used without cloneReadOnly
final readonly & Environment constEnvironment = (<Environment>{ bindings: () }).cloneReadOnly();
final readonly & bir:BasicBlock constBasicBlock = (<bir:BasicBlock>{ label: 0 }).cloneReadOnly();
final readonly & bir:FunctionCode constCode = (<bir:FunctionCode>{}).cloneReadOnly();

function resolveConstDefn(ModuleSymbols mod, s:ConstDefn defn) returns s:ResolvedConst|ResolveTypeError {
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

function resolveConstExpr(ModuleSymbols mod, s:ModuleLevelDefn defn, s:Expr expr, t:SemType? expectedType, string? errMsg = ()) returns s:ResolvedConst|ResolveTypeError {
    ExprContext cx = new ExprContext(mod, defn, constCode, constEnvironment, ());
    var { result } = check codeGenExpr(cx, constBasicBlock, expectedType, expr);
    bir:ConstOperand operand = <bir:ConstOperand>result;
    if expectedType != () && !t:isSubtype(mod.tc, operand.semType, expectedType) {
        if defn !is s:ConstDefn {
            string msg = errMsg == () ? "expression is not of expected type" : errMsg;
            return err:semantic(msg, s:locationInDefn(defn, s:range(expr)));
        }
        return err:semantic(`initializer of ${defn.name} is not a subtype of the declared type`, s:defnLocation(defn));
    }
    t:SemType semType = operand.semType;
    if t:singleShape(semType) == () {
        semType = t:singleton(mod.tc, operand.value);
    }
    return [semType, operand.value];
}

function resolveConstIntExpr(ModuleSymbols mod, s:ModuleLevelDefn defn, s:Expr expr, string? errMsg) returns int|ResolveTypeError {
    [t:SemType, t:SingleValue] [_, resolved] = check resolveConstExpr(mod, defn, expr, t:INT, errMsg);
    return <int>resolved;
}
