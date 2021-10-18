
import ballerina/test;
import ballerina/file;
import ballerina/io;

import wso2/nballerina.err;

@test:Config{}
function testParserOnTestSuite() returns err:Syntax|io:Error|file:Error? {
    foreach var dir in check file:readDir("./testSuite") {
        if !check file:test(dir.absPath, file:IS_DIR) {
            continue;
        }
        foreach var test in check file:readDir(dir.absPath) {
            if test.dir {
                continue;
            }
            string filename = test.absPath;
            // XXX remove after fixing #555
            if filename.endsWith("-t.bal") {
                continue;
            }
            string[] lines = check io:fileReadLines(filename);
            ModulePart|err:Syntax part = scanAndParseModulePart(lines, { filename }, 0);
            if part is error {
                continue;
            }
            else {
                SourceFile file = part.file;
                Tokenizer tok = new(file);
                [err:Position, err:Position][] topLevelDefnPos = [];
                foreach ImportDecl decl in part.importDecls {
                    topLevelDefnPos.push([decl.startPos, decl.endPos]);
                    check tok.moveToPos(decl.startPos, MODE_NORMAL);
                    test:assertEquals(tok.currentStartPos(), decl.startPos, "moved to wrong position");
                    ImportDecl newDecl = check parseImportDecl(tok, decl.partIndex);
                    test:assertEquals(decl.endPos, tok.previousEndPos()); // parser advances to next token after parsing the import
                    test:assertEquals(decl, newDecl);
                }
                foreach ModuleLevelDefn defn in part.defns {
                    topLevelDefnPos.push([defn.startPos, defn.endPos]);
                    check validateModuleLevelDefnPos(defn, tok);
                    if defn is FunctionDefn {
                        foreach Stmt stmt in defn.body {
                            check validateStatementPos(stmt, tok, defn.startPos, defn.endPos);
                        }
                    }
                    if defn is ConstDefn {
                        check validateExpressionPos(defn.expr, tok, defn.startPos, defn.endPos);
                    }
                }
                topLevelDefnPos = topLevelDefnPos.sort();
                err:Position lastEnd = 1<<32;
                foreach var [startPos, endPos] in topLevelDefnPos {
                    test:assertTrue((startPos == (1<<32)) || (startPos > lastEnd), "overlapping top level definitions");
                    test:assertTrue(startPos < endPos, "invalid start and end positions");
                    var [stLine, stCol] = file.lineColumn(startPos);
                    var [endLine, endCol] = file.lineColumn(lastEnd);
                    string errorBody = string ` filename: ${file.filename()} between (${endLine}, ${endCol})  and (${stLine}, ${stCol})`;
                    test:assertTrue(testIsWhitespace(part.file, lastEnd, startPos), "none white space tokens between top level definition" + errorBody);
                    test:assertFalse(testPositionIsWhiteSpace(part.file, startPos), "start position is a white space");
                    test:assertFalse(testPositionIsWhiteSpace(part.file, endPos), "end position is a white space");
                    lastEnd = endPos;
                }
                string[] canonSrc = partToLines(part);
                part = scanAndParseModulePart(canonSrc, { filename }, 0);
                if part is error {
                    test:assertEquals(lines, canonSrc, "serialized ast can't be re-parsed");
                    panic err:impossible("if src is equal to canonSrc second parse can't fail");
                }
                string[] roundTripSrc = partToLines(check part);
                test:assertEquals(canonSrc, roundTripSrc);
            }
        }
    }
}

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
    if stmt is MethodCallExpr|FunctionCallExpr {
        return check validateExpressionPos(stmt, tok, parentStartPos, parentEndPos);
    }
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
}

type RecursiveBinaryExpr BinaryBitwiseExpr|BinaryEqualityExpr|BinaryArithmeticExpr;

function findMatchingChildExpr(RecursiveBinaryExpr expected, RecursiveBinaryExpr actual) returns Expr {
    if (expected is BinaryBitwiseExpr && actual is BinaryBitwiseExpr)
    || (expected is BinaryEqualityExpr && actual is BinaryEqualityExpr)
    || (expected is BinaryArithmeticExpr && actual is BinaryArithmeticExpr) {
        Expr matchingChild = actual.left;
        while matchingChild.endPos != expected.endPos && matchingChild is RecursiveBinaryExpr {
            matchingChild = matchingChild.left;
        }
        return matchingChild;
    }
    panic error("expected and actual expression are not same type");
}

type PrimaryExpr ConstValueExpr|VarRefExpr|FunctionCallExpr|MethodCallExpr|NumericLiteralExpr|ErrorConstructorExpr|FieldAccessExpr;

function validateExpressionPos(Expr expr, Tokenizer tok, Position parentStartPos, Position parentEndPos) returns err:Syntax? {
    check tok.moveToPos(expr.startPos, MODE_NORMAL);
    test:assertEquals(tok.currentStartPos(), expr.startPos, "moved to wrong position");
    Expr newExpr;
    boolean usedSimpleConstExprParser = true;
    if expr is SimpleConstExpr {
        if expr is ConstValueExpr && expr.value == () {
            newExpr = check parseExpr(tok);
        }
        else {
            newExpr = check parseSimpleConstExpr(tok);
        }
        if tok.currentEndPos() != expr.endPos && expr is PrimaryExpr {
            // these expressions can be parsed by both parseSimpleConstExpr and parsePrimaryExpr
            // parseSimpleConstExpr don't advance to the next token
            usedSimpleConstExprParser = false;
            check tok.moveToPos(expr.startPos, MODE_NORMAL);
            newExpr = check parsePrimaryExpr(tok);
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
        newExpr = check parseTypeCastExpr(tok, expr.startPos);
    }
    else {
        newExpr = check parseExpr(tok);
    }

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
    if newExpr is MethodCallExpr|FunctionCallExpr {
        // pos depends on whether original was parsed as a stmt or expr but for testing we always treat it as expr
        newExpr.pos = (<MethodCallExpr|FunctionCallExpr>expr).pos;
    }
    test:assertEquals(expr.toString(), newExpr.toString());
    test:assertTrue(expr.startPos >= parentStartPos && expr.endPos <= parentEndPos, "child node outside of parent");
    test:assertFalse(testPositionIsWhiteSpace(tok.file, expr.startPos), "start position is a white space");
    test:assertTrue(testValidExprEnd(tok.file, expr.endPos, expr), "end position is invalid");
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
}

function partToLines(ModulePart part) returns string[] {
    Word[] w = [];
    modulePartToWords(w, part);
    return wordsToLines(w);
}

function scanAndParseModulePart(string[] lines, FilePath path, int partIndex) returns ModulePart|err:Syntax {
    return parseModulePart(check scanModulePart(createSourceFile(lines, path), partIndex));
}

function testPositionIsWhiteSpace(SourceFile file, Position pos) returns boolean {
    return checkPosFragCode(file, pos, FRAG_WHITESPACE, FRAG_COMMENT);
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

function checkPosFragCode(SourceFile file, Position pos, FragCode... invalidCodes) returns boolean {
    var [lineIndex, fragIndex] = sourceFileFragIndex(file, pos);
    ScannedLine line = file.scannedLine(lineIndex);
    FragCode frag = line.fragCodes[fragIndex];
    return invalidCodes.indexOf(frag) != ();
}

final readonly & FragCode[] interExpressionCodes = [
    FRAG_WHITESPACE,
    FRAG_COMMENT,
    CP_PLUS,
    CP_MINUS,
    CP_LEFT_PAREN
];

function testValidInterExpressionRange(SourceFile file, Position startPos, Position endPos) returns boolean {
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
            if interExpressionCodes.indexOf(frag) == (){
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

function testIsWhitespace(SourceFile file, Position startPos, Position endPos) returns boolean {
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
            if frag != FRAG_WHITESPACE && frag != FRAG_COMMENT {
                return false;
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
