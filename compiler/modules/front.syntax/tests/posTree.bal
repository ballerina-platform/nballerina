import wso2/nballerina.comm.diagnostic as d;

type OverlappingChildNodes error<OverlappingChildNodesDiagnostic>;
type ChildNodeOutOfRange error<ChildNodeOutOfRangeDiagnostic>;
type UnexpectToken error<UnexpectTokenDiagnostic>;
type InvalidStartPos error<InvalidStartPosDiagnostic>;
type InvalidAstNodeRange error<InvalidAstNodeRangeDiagnostic>;

type PositionValidationError OverlappingChildNodes|ChildNodeOutOfRange|UnexpectToken|InvalidStartPos|InvalidAstNodeRange;

function validateModulePartPositions(ModulePart part) returns PositionValidationError? {
    RootSyntaxNode root = rootSyntaxNode(part);
    check validateSyntaxNode(root, new(part.file));
}

function validateTerminalSyntaxNode(TerminalSyntaxNode node, Tokenizer tok) returns PositionValidationError? {
    string expected = node is IdentifierSyntaxNode ? node.name : node is StringLiteralSyntaxNode ? node.literal : node.token;
    Position? expectedPos = node is IdentifierSyntaxNode|FixedSyntaxNode|StringLiteralSyntaxNode ? node.pos : ();
    if expectedPos != () && tok.currentStartPos() != expectedPos {
        return invalidStartPos(currentLocation(tok), expectedPos, node is IdentifierSyntaxNode ? node.name : node is StringLiteralSyntaxNode? node.literal : node.token);
    }
    Token? token = tok.current();
    string actual;
    if token is VariableLengthToken {
        if token[0] is HEX_INT_LITERAL {
            // tokenizer ignore 0x part
            actual = "0x" + token[1];
        }
        else if token[0] is DECIMAL_FP_NUMBER {
            actual = token[1] + token[2].toString();
        }
        else {
            actual = token[1];
        }
    }
    else {
        actual = token == "null" ? "()" : <string>token;
    }
    if expected == "()" && actual == "(" && tok.peek() == ")" {
        checkpanic tok.advance();
        actual = "()";
    }
    checkpanic tok.advance();
    if actual != expected && token is VariableLengthToken && token[0] is DECIMAL_FP_NUMBER {
        // 0f vs 0.0
        return;
    }
    else if actual != expected {
        return unexpectedToken(currentLocation(tok), expected, actual);
    }
}

function validateSyntaxNode(SyntaxNode|RootSyntaxNode node, Tokenizer tok) returns PositionValidationError? {
    if node is AstSyntaxNode {
        check validateAstNodeRange(node, tok);
    }
    if node is TerminalSyntaxNode {
        check validateTerminalSyntaxNode(node, tok);
    }
    else if node is RootSyntaxNode {
        checkpanic tok.advance();
        foreach SyntaxNode child in node.childNodes {
            check validateSyntaxNode(child, tok);
        }
    }
    else {
        Position parentStart = node.astNode.startPos;
        Position parentEnd = node.astNode.endPos;
        Range parentRange = { startPos: parentStart, endPos: parentEnd };
        boolean isTypeDesc = node.astNode is TypeDesc;
        d:Range|d:Position lastRange = parentStart;
        foreach SyntaxNode child in node.childNodes {
            Position lastEnd = lastRange is Position ? lastRange : lastRange.endPos;
            if child !is AstSyntaxNode {
                Position? pos = child.pos;
                if pos != () {
                    if pos < lastEnd {
                        check overlappingChildNodes(currentLocation(tok), [lastRange, pos]);
                    }
                    if pos < parentStart {
                        check childNodeOutOfRange(currentLocation(tok), parentRange, pos);
                    }
                    lastRange = pos;
                }
            }
            else {
                Position childStartPos = child.astNode.startPos;
                Position childEndPos = child.astNode.endPos;
                Range childRange = { startPos: childStartPos, endPos: childEndPos };
                if childStartPos < parentStart || childEndPos > parentEnd {
                    check childNodeOutOfRange(currentLocation(tok), parentRange, childRange);
                }
                if childStartPos < lastEnd {
                    check overlappingChildNodes(currentLocation(tok), [lastRange, childRange]);
                }
                lastRange = childRange;
            }
            if isTypeDesc {
                tok.setMode(MODE_TYPE_DESC);
            }
            check validateSyntaxNode(child, tok);
            if isTypeDesc {
                tok.setMode(MODE_NORMAL);
            }
        }
    }
}

function validateAstNodeRange(AstSyntaxNode syntaxNode, Tokenizer tok) returns InvalidAstNodeRange? {
    SourceFile file = tok.file;
    AstNode node = syntaxNode.astNode;
    if node.startPos >= node.endPos {
        return invalidAstNodeRange({ file, range: { startPos: node.startPos, endPos: node.endPos }}, "invalid ast node range", unpackPosition(node.startPos));
    }
    check validateAstNodePosition(node.startPos, file, false);
    return validateAstNodePosition(node.endPos, file, true);
}

function validateAstNodePosition(Position pos, SourceFile file, boolean isEndPos) returns InvalidAstNodeRange? {
    var [lineIndex, columnIndex] = file.lineColumn(pos);
    ScannedLine line = file.scannedLine(lineIndex);
    string lineContent = "".'join(...scanLineFragments(line));
    if !isEndPos && columnIndex >= lineContent.length() {
        return invalidAstNodeRange({ file, range: pos }, "position at the end of line", [lineIndex, columnIndex]);
    }
    string rest = lineContent.substring(isEndPos ? columnIndex - 1 : columnIndex);
    if rest.startsWith(" ") || rest.startsWith("\t") || rest.startsWith("//") {
        return invalidAstNodeRange({ file, range: pos }, "position is white space or comment", [lineIndex, columnIndex]);
    }
}

enum PositionValidationErrorType {
    OVERLAPPING_CHILD_NODES = "overlapping child nodes",
    CHILD_NODE_OUT_OF_RANGE = "childnode out of range",
    UNEXPECTED_TOKEN = "unexpected token",
    INVALID_START_POS = "invalid start position",
    INVALID_AST_NODE_RANGE = "invalid node range"
}

type PositionValidationDiagnostic record {|
    PositionValidationErrorType message;
    d:Location loc;
|};

type InvalidStartPosDiagnostic record {|
    *PositionValidationDiagnostic;
    INVALID_START_POS message = INVALID_START_POS;
    Position expected;
    string nodeContent;
|};

type OverlappingChildNodesDiagnostic record {|
    *PositionValidationDiagnostic;
    OVERLAPPING_CHILD_NODES message = OVERLAPPING_CHILD_NODES;
    [Range|Position, Range|Position] childNodeRanges;
|};

type ChildNodeOutOfRangeDiagnostic record {|
    *PositionValidationDiagnostic;
    CHILD_NODE_OUT_OF_RANGE message = CHILD_NODE_OUT_OF_RANGE;
    Range parentRange;
    Range|Position childRange;
|};

type UnexpectTokenDiagnostic record {|
    *PositionValidationDiagnostic;
    UNEXPECTED_TOKEN message = UNEXPECTED_TOKEN;
    string expected;
    string actual;
|};

type InvalidAstNodeRangeDiagnostic record {|
    *PositionValidationDiagnostic;
    INVALID_AST_NODE_RANGE message = INVALID_AST_NODE_RANGE;
    string details;
    d:LineColumn lineColumn;
|};

function overlappingChildNodes(d:Location currentLocation, [Range|Position, Range|Position] childNodeRanges) returns OverlappingChildNodes {
    return error OverlappingChildNodes("position validation error", message=OVERLAPPING_CHILD_NODES, loc=currentLocation, childNodeRanges=childNodeRanges);
}

function childNodeOutOfRange(d:Location currentLocation, Range parentRange, Range|Position childRange) returns ChildNodeOutOfRange {
    return error ChildNodeOutOfRange("position validation error", message=CHILD_NODE_OUT_OF_RANGE, loc=currentLocation, parentRange=parentRange, childRange=childRange);
}

function unexpectedToken(d:Location currentLocation, string expected, string actual) returns UnexpectToken {
    return error UnexpectToken("position validation error", message=UNEXPECTED_TOKEN, loc=currentLocation, expected=expected, actual=actual);
}

function invalidStartPos(d:Location currentLocation, Position expected, string nodeContent) returns InvalidStartPos {
    return error InvalidStartPos("position validation error", message=INVALID_START_POS, loc=currentLocation, expected=expected, nodeContent=nodeContent);
}

function invalidAstNodeRange(d:Location errorLocation, string details, d:LineColumn lineColumn) returns InvalidAstNodeRange {
    return error InvalidAstNodeRange("position validation error", message=INVALID_AST_NODE_RANGE, loc=errorLocation, details=details, lineColumn=lineColumn);
}

function currentLocation(Tokenizer tok) returns d:Location {
    return { file: tok.file, range: tok.currentStartPos()};
}
