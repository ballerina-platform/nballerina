import ballerina/test;

import wso2/nballerina.err;

function validateModuleLevelDefnPos(ModuleLevelDefn defn, Tokenizer tok) returns err:Syntax? {
    check tok.moveToPos(defn.startPos, MODE_NORMAL);
    test:assertEquals(tok.currentStartPos(), defn.startPos, "moved to wrong position");
    if defn.vis == "public" {
        check tok.advance();
    }
    if defn is FunctionDefn {
        _ = check parseFunctionDefinition(tok, defn.part, defn.vis, defn.startPos);
    }
    else if defn is ConstDefn {
        _ = check parseConstDefinition(tok, defn.part, defn.vis, defn.startPos);
    }
    else {
        _ = check parseTypeDefinition(tok, defn.part, defn.vis, defn.startPos);
    }
    test:assertEquals(defn.endPos, tok.previousEndPos()); // parser advances to next token after parsing the import
}

function validateStatementPos(Stmt stmt, Tokenizer tok, Position parentStartPos, Position parentEndPos) returns err:Syntax? {
    check tok.moveToPos(stmt.startPos, MODE_NORMAL);
    test:assertEquals(tok.currentStartPos(), stmt.startPos, "moved to wrong position");
    Stmt newStmt = check parseStmt(tok);
    test:assertEquals(stmt.endPos, tok.previousEndPos()); // parser advances to next token after parsing the import
    test:assertEquals(stmt.toString(), newStmt.toString());
    test:assertTrue(stmt.startPos >= parentStartPos && stmt.endPos <= parentEndPos, "child node outside of parent");
    [err:Position, err:Position][] childNodePos = [];
    if stmt is IfElseStmt {
        foreach Stmt trueStmt in stmt.ifTrue {
            check validateStatementPos(trueStmt, tok, stmt.startPos, stmt.endPos);
            childNodePos.push([trueStmt.startPos, trueStmt.endPos]);
        }
        foreach Stmt falseStmt in stmt.ifFalse {
            check validateStatementPos(falseStmt, tok, stmt.startPos, stmt.endPos);
            childNodePos.push([falseStmt.startPos, falseStmt.endPos]);
        }
    }
    else if stmt is MatchStmt {
        foreach var clause in stmt.clauses {
            foreach var matchStmt in clause.block {
                check validateStatementPos(matchStmt, tok, stmt.startPos, stmt.endPos);
                childNodePos.push([matchStmt.startPos, matchStmt.endPos]);
            }
        }
    }
    else if stmt is (WhileStmt|ForeachStmt) {
        foreach var bodyStmt in <Stmt[]>stmt.body {
            check validateStatementPos(bodyStmt, tok, stmt.startPos, stmt.endPos);
            childNodePos.push([bodyStmt.startPos, bodyStmt.endPos]);
        }
    }
    childNodePos = childNodePos.sort();
    err:Position lastEnd = stmt.startPos;
    foreach var [startPos, endPos] in childNodePos {
        test:assertTrue(startPos < endPos, "invalid start and end positions");
        test:assertTrue((startPos == stmt.startPos) || (startPos > lastEnd), "overlapping statements");
        test:assertFalse(testPositionIsWhiteSpace(tok.file, startPos), "start position is a white space");
        test:assertFalse(testPositionIsWhiteSpace(tok.file, endPos), "end position is a white space");
        lastEnd = endPos;
    }
    check validateChildExpressions(stmt, tok);
    check validateChildTypeDesc(stmt, tok);
    check validateStmtOpPos(stmt, tok);
}

function validateStmtOpPos(Stmt stmt, Tokenizer tok) returns err:Syntax? {
    if stmt is MatchStmt {
        foreach var clause in stmt.clauses {
            check tok.moveToPos(clause.opPos, MODE_NORMAL);
            Token? opToken = tok.curTok;
            test:assertEquals(opToken, "=>");
        }
    }
    else if stmt is ForeachStmt {
        RangeExpr rangeExpr = stmt.range;
        check tok.moveToPos(rangeExpr.opPos, MODE_NORMAL);
        Token? opToken = tok.curTok;
        test:assertTrue(opToken == "..<");
    }
    else if stmt is CheckingStmt {
        check tok.moveToPos(stmt.opPos, MODE_NORMAL);
        Token? opToken = tok.curTok;
        test:assertTrue(opToken is CheckingKeyword);
    }
    else if stmt is VarDeclStmt|AssignStmt {
        check tok.moveToPos(stmt.opPos, MODE_NORMAL);
        Token? opToken = tok.curTok;
        test:assertEquals(opToken, "=");
    }
    else if stmt is CompoundAssignStmt {
        check tok.moveToPos(stmt.opPos, MODE_NORMAL);
        Token? opToken = tok.curTok;
        test:assertTrue(opToken is CompoundAssignOp);
    }
}

function validateChildExpressions(Stmt stmt, Tokenizer tok) returns err:Syntax? {
    if stmt is AssignStmt|CompoundAssignStmt|MatchStmt {
        check validateExpressionPos(stmt.expr, tok, stmt.startPos, stmt.endPos);
        if stmt is MatchStmt {
            foreach var clause in stmt.clauses {
                foreach var matchPattern in clause.patterns {
                    if matchPattern is ConstPattern {
                        check validateExpressionPos(matchPattern.expr, tok, stmt.startPos, stmt.endPos);
                    }
                }
                check validateMatchClausePos(clause, tok, stmt.startPos, stmt.endPos);
            }
        }
    }
    else if stmt is ReturnStmt {
        Expr? returnExpr = stmt.returnExpr;
        if returnExpr != () {
            // If above is true it is an empty expression that can't be parsed (ex return;)
            check validateExpressionPos(returnExpr, tok, stmt.startPos, stmt.endPos);
        }
    }
    else if stmt is PanicStmt {
        check validateExpressionPos(stmt.panicExpr, tok, stmt.startPos, stmt.endPos);
    }
    else if stmt is IfElseStmt|WhileStmt {
        check validateExpressionPos(stmt.condition, tok, stmt.startPos, stmt.endPos);
    }
    else if stmt is VarDeclStmt {
        check validateExpressionPos(stmt.initExpr, tok, stmt.startPos, stmt.endPos);
    }
    else if stmt is CallStmt {
        check validateExpressionPos(stmt.expr, tok, stmt.startPos, stmt.endPos);
    }
}

function validateMatchClausePos(MatchClause clause, Tokenizer tok, Position parentStartPos, Position parentEndPos) returns err:Syntax? {
    check tok.moveToPos(clause.startPos, MODE_NORMAL);
    test:assertEquals(tok.currentStartPos(), clause.startPos, "moved to wrong position");
    MatchClause newClause = check parseMatchClause(tok);
    test:assertEquals(tok.previousEndPos(), clause.endPos);
    test:assertEquals(newClause.toString(), clause.toString());
    test:assertTrue(clause.startPos > parentStartPos && clause.endPos < parentEndPos, "match caluse outside of match stmt");
    check tok.moveToPos(clause.endPos, MODE_NORMAL);
    Token? endTok = tok.curTok;
    test:assertEquals(endTok, "}", "invalid end pos");
}

type RecursiveBinaryExpr BinaryBitwiseExpr|BinaryEqualityExpr|BinaryArithmeticExpr;

function findMatchingChildExpr(RecursiveBinaryExpr expected, RecursiveBinaryExpr actual) returns Expr {
    Expr matchingChild = actual.left;
    while matchingChild.endPos != expected.endPos && matchingChild is RecursiveBinaryExpr {
        matchingChild = matchingChild.left;
    }
    return matchingChild;
}

type PrimaryExpr ConstValueExpr|VarRefExpr|FunctionCallExpr|MethodCallExpr|NumericLiteralExpr|ErrorConstructorExpr|FieldAccessExpr;

function validateExpressionPos(Expr expr, Tokenizer tok, Position parentStartPos, Position parentEndPos) returns err:Syntax? {
    check tok.moveToPos(expr.startPos, MODE_NORMAL);
    test:assertEquals(tok.currentStartPos(), expr.startPos, "moved to wrong position");
    Expr? newExpr = ();
    boolean usedSimpleConstExprParser = false;
    if expr is SimpleConstExpr {
        if expr is PrimaryExpr {
            // these expressions can be parsed by both parseSimpleConstExpr and parsePrimaryExpr
            // we first try to parse as primaryExpr (this is to deal with "("expr")" cases)
            usedSimpleConstExprParser = false;
            newExpr = check parsePrimaryExpr(tok);
        }
        if newExpr == () || newExpr.endPos != expr.endPos {
            usedSimpleConstExprParser = true;
            check tok.moveToPos(expr.startPos, MODE_NORMAL);
            if expr is ConstValueExpr && expr.value == () {
                newExpr = check parseExpr(tok);
            }
            else {
                newExpr = check parseSimpleConstExpr(tok);
            }
        }
    }
    else if expr is BinaryBitwiseExpr {
        BinaryBitwiseOp op = expr.bitwiseOp;
        match op {
            "<<"|">>>"|">>" => {
                newExpr = check parseShiftExpr(tok);
            }
            "|" => {
                newExpr = check parseBitwiseOrExpr(tok);
            }
            "^" => {
                newExpr = check parseBitwiseXorExpr(tok);
            }
            _ => {
                newExpr = check parseBitwiseAndExpr(tok);
            }
        }
    }
    else if expr is BinaryArithmeticExpr {
        if expr.arithmeticOp is "+"|"-" {
            newExpr = check parseAdditiveExpr(tok);
        }
        else {
            newExpr = check parseMultiplicativeExpr(tok);
        }
    }
    else if expr is BinaryEqualityExpr {
        newExpr = check parseEqualityExpr(tok);
    }
    else if expr is BinaryRelationalExpr {
        newExpr = check parseRelationalExpr(tok);
    }
    else if expr is UnaryExpr {
        newExpr = check parseUnaryExpr(tok);
    }
    else if expr is PrimaryExpr|MemberAccessExpr {
        newExpr = check parsePrimaryExpr(tok);
    }
    else if expr is TypeCastExpr {
        if tok.current() == "(" && tok.peek() != ")" {
            newExpr = check parsePrimaryExpr(tok);
        }
        else {
            newExpr = check parseTypeCastExpr(tok, expr.startPos);
        }
    }
    else {
        newExpr = check parseExpr(tok);
    }
    if newExpr is Expr {
        Position actualEnd;
        if expr is ListConstructorExpr
                |MemberAccessExpr
                |PrimaryExpr
                |TypeTestExpr
                |MappingConstructorExpr
                |SimpleConstExpr
                |BinaryExpr
                |UnaryExpr
                |CheckingExpr
                |TypeCastExpr {
            if expr is SimpleConstExpr && usedSimpleConstExprParser {
                if expr is SimpleConstNegateExpr {
                    actualEnd = tok.previousEndPos();
                }
                else {
                    actualEnd = tok.currentEndPos();
                }
            }
            else {
                actualEnd = tok.previousEndPos();
            }
        }
        else {
            actualEnd = tok.currentEndPos();
        }

        if (expr.endPos != newExpr.endPos) && (expr is RecursiveBinaryExpr && newExpr is RecursiveBinaryExpr) {
            // These are left recursive expression that can't be separately parsed
            Expr matchingChild = findMatchingChildExpr(expr, newExpr);
            // We are validating tokenizer ends in the correct position only for the parent node
            actualEnd = matchingChild.endPos;
            newExpr = matchingChild;
        }
        test:assertEquals(expr.endPos, actualEnd);
        test:assertEquals(expr.toString(), newExpr.toString());
        test:assertTrue(expr.startPos >= parentStartPos && expr.endPos <= parentEndPos, "child node outside of parent");
        test:assertFalse(testPositionIsWhiteSpace(tok.file, expr.startPos), "start position is a white space");
        test:assertTrue(testValidExprEnd(tok.file, expr.endPos, expr), endPosErrorMessage(tok, expr.endPos));
        [err:Position, err:Position][] childNodePos = [];
        if expr is BinaryExpr {
            check validateExpressionPos(expr.left, tok, expr.startPos, expr.endPos);
            childNodePos.push([expr.left.startPos, expr.left.endPos]);
            check validateExpressionPos(expr.right, tok, expr.startPos, expr.endPos);
            childNodePos.push([expr.right.startPos, expr.right.endPos]);
        }
        else if expr is UnaryExpr|SimpleConstNegateExpr {
            check validateExpressionPos(expr.operand, tok, expr.startPos, expr.endPos);
            childNodePos.push([expr.operand.startPos, expr.operand.endPos]);
        }
        else if expr is ErrorConstructorExpr {
            check validateExpressionPos(expr.message, tok, expr.startPos, expr.endPos);
            childNodePos.push([expr.message.startPos, expr.message.endPos]);
        }
        else if expr is FunctionCallExpr {
            foreach var arg in expr.args {
                check validateExpressionPos(arg, tok, expr.startPos, expr.endPos);
                childNodePos.push([arg.startPos, arg.endPos]);
            }
        }

        err:Position lastEnd = expr.startPos;
        foreach var [startPos, endPos] in childNodePos {
            test:assertTrue(startPos <= endPos, "invalid start and end positions"); // single character expressions get same start and end pos
            test:assertTrue((startPos == expr.startPos) || (startPos > lastEnd), "overlapping statements");
            if lastEnd != expr.startPos {
                test:assertTrue(testValidInterExpressionRange(tok.file, lastEnd, startPos), "invalid token between expressions");
            }
            lastEnd = endPos;
        }
        check validateChildTypeDesc(expr, tok);
        if expr is MappingConstructorExpr {
            foreach Field f in expr.fields {
                check validateFieldPos(f, tok, expr.startPos, expr.endPos);
            }
        }
    }
    else {
        panic err:impossible("failed to find a parser for expression");
    }
    check validateChildTypeDesc(expr, tok);
    check validateExprOpPos(expr, tok);
}

type ExprOpPos BinaryExpr|UnaryExpr|ErrorConstructorExpr|ListConstructorExpr|MappingConstructorExpr|MemberAccessExpr|FieldAccessExpr|FunctionCallExpr|MethodCallExpr|CheckingExpr;

function validateExprOpPos(Expr expr, Tokenizer tok) returns err:Syntax? {
    if expr is ExprOpPos {
        check tok.moveToPos(expr.opPos, MODE_NORMAL);
        Token? opToken = tok.curTok;
        if expr is BinaryRelationalExpr {
            test:assertTrue(opToken is BinaryRelationalOp);
        }
        else if expr is BinaryEqualityExpr {
            test:assertTrue(opToken is BinaryEqualityOp);
        }
        else if expr is BinaryArithmeticExpr {
            test:assertTrue(opToken is BinaryArithmeticOp);
        }
        else if expr is BinaryBitwiseExpr {
            test:assertTrue(opToken is BinaryBitwiseOp);
        }
        else if expr is UnaryExpr {
            test:assertTrue(opToken is UnaryExprOp);
        }
        else if expr is ErrorConstructorExpr {
            test:assertEquals(opToken, "error");
        }
        else if expr is ListConstructorExpr|MemberAccessExpr|MemberAccessLExpr {
            test:assertEquals(opToken, "[");
        }
        else if expr is MappingConstructorExpr {
            test:assertEquals(opToken, "{");
        }
        else if expr is FunctionCallExpr|MethodCallExpr {
            test:assertTrue(opToken == "(");
        }
        else if expr is CheckingExpr {
            test:assertTrue(opToken is CheckingKeyword);
        }
        else {
            test:assertEquals(opToken, ".");
        }
    }
}

function validateFieldPos(Field f, Tokenizer tok, Position parentStartPos, Position parentEndPos) returns err:Syntax? {
    check tok.moveToPos(f.startPos, MODE_NORMAL);
    test:assertEquals(tok.currentStartPos(), f.startPos, "moved to wrong position");
    Field newField = check parseField(tok);
    test:assertEquals(tok.previousEndPos(), f.endPos);
    test:assertFalse(checkPosFragCode(tok.file, f.endPos, FRAG_WHITESPACE, FRAG_COMMENT, CP_SEMICOLON), endPosErrorMessage(tok, f.endPos));
    test:assertTrue(f.startPos > parentStartPos && f.endPos < parentEndPos, "field outside of MappingConstructorExpr");
}

function validateChildTypeDesc(Stmt|Expr parent, Tokenizer tok) returns err:Syntax? {
    if parent is VarDeclStmt|TypeCastExpr|TypeTestExpr {
        check validateTypeDescPos(parent.td, tok, parent.startPos, parent.endPos);
    }
}

function testValidExprEnd(SourceFile file, Position pos, Expr expr) returns boolean {
    FragCode[] base = [FRAG_WHITESPACE, FRAG_COMMENT, CP_SEMICOLON];
    if expr is FunctionCallExpr {
        return !checkPosFragCode(file, pos, CP_RIGHT_CURLY, CP_RIGHT_SQUARE, ...base);
    }
    else if expr is PrimaryExpr|TypeCastExpr {
        return !checkPosFragCode(file, pos, CP_RIGHT_CURLY, ...base);
    }
    else if expr is MemberAccessExpr|ListConstructorExpr {
        return !checkPosFragCode(file, pos, CP_RIGHT_CURLY, CP_RIGHT_PAREN, ...base);
    }
    else if expr is MappingConstructorExpr {
        return !checkPosFragCode(file, pos, CP_RIGHT_SQUARE, CP_RIGHT_PAREN, ...base);
    }
    else if expr is TypeTestExpr {
        return !checkPosFragCode(file, pos, CP_RIGHT_CURLY, ...base);
    }
    else if expr is BinaryExpr|UnaryExpr {
        return !checkPosFragCode(file, pos, CP_RIGHT_CURLY, ...base);
    }
    return !checkPosFragCode(file, pos, CP_RIGHT_CURLY, CP_RIGHT_SQUARE, ...base);
}

function validateTypeDescPos(TypeDesc td, Tokenizer tok, Position parentStartPos, Position parentEndPos) returns err:Syntax? {
    check tok.moveToPos(td.startPos, MODE_NORMAL);
    test:assertEquals(tok.currentStartPos(), td.startPos, "moved to wrong position");
    TypeDesc newTd;
    if td is FunctionTypeDesc {
        newTd = check parseFunctionTypeDesc(tok);
    }
    else {
        newTd = check parseTypeDesc(tok);
    }
    Position actualEnd = tok.previousEndPos();
    if td.toString() != newTd.toString() && newTd is ListTypeDesc|MappingTypeDesc {
        // These are left recursions which we can't separately parse
        TypeDesc rest = <TypeDesc> newTd.rest;
        actualEnd = rest.endPos;
        newTd = rest;
    }
    test:assertEquals(td.endPos, actualEnd);
    test:assertEquals(td.toString(), newTd.toString());
    test:assertTrue(td.startPos >= parentStartPos && td.endPos <= parentEndPos, "child node outside of parent");
    test:assertFalse(testPositionIsWhiteSpace(tok.file, td.startPos), "start position is a white space");
    test:assertTrue(testValidTypeDescEnd(tok.file, td.endPos, td), endPosErrorMessage(tok, td.endPos));
    [err:Position, err:Position][] childNodePos = [];
    if td is ListTypeDesc {
        foreach var member in td.members {
            check validateTypeDescPos(member, tok, td.startPos, td.endPos);
            childNodePos.push([member.startPos, member.endPos]);
        }
        check validateTypeDescPos(td.rest, tok, td.startPos, td.endPos);
        childNodePos.push([td.rest.startPos, td.rest.endPos]);
    }
    else if td is MappingTypeDesc {
        foreach var f in td.fields {
            check validateTypeDescPos(f.typeDesc, tok, td.startPos, td.endPos);
            childNodePos.push([f.typeDesc.startPos, f.typeDesc.endPos]);
        }
        TypeDesc? rest = td.rest;
        if rest is TypeDesc {
            childNodePos.push([rest.startPos, rest.endPos]);
            check validateTypeDescPos(rest, tok, td.startPos, td.endPos);
        }
    }
    else if td is FunctionTypeDesc {
        foreach var arg in td.args {
            check validateTypeDescPos(arg, tok, td.startPos, td.endPos);
            childNodePos.push([arg.startPos, arg.endPos]);
        }
        TypeDesc ret = td.ret;
        if !(ret is BuiltinTypeDesc && ret.builtinTypeName is "null") {
            // above is true when there is no actual return type and value is hardcoded not parsed
            check validateTypeDescPos(td.ret, tok, td.startPos, td.endPos);
            childNodePos.push([td.ret.startPos, td.ret.endPos]);
        }
    }
    childNodePos = childNodePos.sort();
    err:Position lastEnd = td.startPos;
    foreach var [startPos, endPos] in childNodePos {
        test:assertTrue(startPos <= endPos, "invalid start and end positions"); // single character td get same start and end pos
        test:assertTrue((startPos == td.startPos) || (startPos > lastEnd), "overlapping type descriptions");
        lastEnd = endPos;
    }
    check validateTypeDescOpPos(td, tok);
    if td is MappingTypeDesc {
        foreach FieldDesc fd in td.fields {
            check validateFieldDescPos(fd, tok, td.startPos, td.endPos);
        }
    }
}

function validateFieldDescPos(FieldDesc fd, Tokenizer tok, Position parentStartPos, Position parentEndPos) returns err:Syntax? {
    check tok.moveToPos(fd.startPos, MODE_NORMAL);
    test:assertTrue(tok.current() is [IDENTIFIER, string], "invalid startPos");
    check tok.moveToPos(fd.endPos, MODE_NORMAL);
    test:assertTrue(tok.current() == ";", endPosErrorMessage(tok, fd.endPos));
}

function validateTypeDescOpPos(TypeDesc td, Tokenizer tok) returns err:Syntax? {
    if td is BinaryTypeDesc {
        check tok.moveToPos(td.opPos, MODE_NORMAL);
        Token? curTok = tok.curTok;
        if td.op == "&" {
            test:assertEquals(curTok, "&");
        }
        else {
            TypeDesc right = td.right;
            if right is BuiltinTypeDesc && right.builtinTypeName is "null" {
                test:assertEquals(curTok, "?");
            }
            else {
                test:assertEquals(curTok, "|");
            }
        }
    }
}

function testValidTypeDescEnd(SourceFile file, Position endPos, TypeDesc td) returns boolean {
    FragCode[] base = [FRAG_WHITESPACE, FRAG_COMMENT, CP_SEMICOLON];
    if td is ListTypeDesc || (td is FunctionTypeDesc && td.ret is ListTypeDesc) {
        return !checkPosFragCode(file, endPos, CP_RIGHT_CURLY, ...base);
    }
    else if td is BinaryTypeDesc {
        // check if any type in the union can be a list-type-desc
        TypeDesc left = td.left;
        while left is BinaryTypeDesc {
            left = left.left;
            if left is ListTypeDesc || (left is FunctionTypeDesc && left.ret is ListTypeDesc) {
                return !checkPosFragCode(file, endPos, CP_RIGHT_CURLY, ...base);
            }
        }
        if left is ListTypeDesc || (left is FunctionTypeDesc && left.ret is ListTypeDesc) {
            return !checkPosFragCode(file, endPos, CP_RIGHT_CURLY, ...base);
        }
        return !checkPosFragCode(file, endPos, CP_RIGHT_CURLY, CP_RIGHT_SQUARE, ...base);
    }
    return !checkPosFragCode(file, endPos, CP_RIGHT_CURLY, CP_RIGHT_SQUARE, ...base);
}


function checkPosFragCode(SourceFile file, Position pos, FragCode... invalidCodes) returns boolean {
    var [lineIndex, fragIndex] = sourceFileFragIndex(file, pos);
    ScannedLine line = file.scannedLine(lineIndex);
    FragCode frag = line.fragCodes[fragIndex];
    return invalidCodes.indexOf(frag) != ();
}

final readonly & FragCode[] whitespaceCodes = [
    FRAG_WHITESPACE,
    FRAG_COMMENT
];

final readonly & FragCode[] interExpressionCodes = [
    FRAG_WHITESPACE,
    FRAG_COMMENT,
    CP_PLUS,
    CP_MINUS,
    CP_ASTERISK,
    CP_BACKSLASH
];

function testValidInterExpressionRange(SourceFile file, Position startPos, Position endPos) returns boolean {
    return testValidRange(file, startPos, endPos, interExpressionCodes);
}

function testIsWhitespace(SourceFile file, Position startPos, Position endPos) returns boolean {
    return testValidRange(file, startPos, endPos, whitespaceCodes);
}

function testValidRange(SourceFile file, Position startPos, Position endPos, FragCode[] allowedCodes) returns boolean {
    var [startLineIndex, startFragIndex] = sourceFileFragIndex(file, startPos);
    var [endLineIndex, endFragIndex] = sourceFileFragIndex(file, endPos);
    int lineIndex = startLineIndex;
    int i = unpackPosition(startPos)[1];
    while lineIndex <= endLineIndex {
        ScannedLine line = file.scannedLine(lineIndex);
        while i < line.fragments.length() {
            if lineIndex >= endLineIndex && i >= endFragIndex {
                return true;
            }
            FragCode frag = line.fragCodes[i];
            if allowedCodes.indexOf(frag) == (){
                if !(lineIndex == startLineIndex && i == unpackPosition(startPos)[1]) {
                    return false;
                }
            }
            i += 1;
        }
        i = 0;
        lineIndex += 1;
    }
    return true; // start == end
}

function sourceFileFragIndex(SourceFile file, Position pos) returns [int, int] {
    var [lineNumber, codePointIndex] = unpackPosition(pos);
    ScannedLine line = file.scannedLine(lineNumber);
    return [lineNumber, scanLineFragIndex(line, codePointIndex)[0]];
}

function endPosErrorMessage(Tokenizer tok, Position endPos) returns string {
    string[] body = [string `invalid end token in file ${tok.file.filename()} at ${unpackPosition(endPos).toString()}`];
    checkpanic tok.moveToPos(endPos, MODE_NORMAL);
    Token? endTok = tok.current();
    body.push(string `End token: ${endTok.toString()}`);
    return "\n".'join(...body);
}

