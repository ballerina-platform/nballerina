import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.comm.diagnostic as d;

public type Position d:Position;

type PositionFields record {|
   Position startPos;
   Position endPos;
|};

public type ModulePart record {|
    ImportDecl[] importDecls;
    SourceFile file;
    int partIndex;
    ModuleLevelDefn[] defns;
|};

public type ModuleLevelDefn FunctionDefn|ConstDefn|TypeDefn;

public type Visibility "public"?;

public type ImportDecl record {|
    *PositionFields;
    string? org;
    [string, string...] names;
    string? prefix;
    Position namePos;
    int partIndex;
|};

public type FunctionDefn record {|
    *PositionFields;
    readonly string name;
    ModulePart part;
    Visibility vis;
    FunctionTypeDesc typeDesc;
    FunctionParam[] params;
    StmtBlock body;
    Position namePos;
    // This is filled in during analysis
    bir:FunctionSignature? signature = ();
|};

public type FunctionParam record {|
    *PositionFields;
    string name;
    Position namePos;
    TypeDesc td;
    boolean isRest = false;
|};

public type ResolvedConst readonly & [t:SemType, t:SingleValue];
public type ConstDefn record {|
    *PositionFields;
    readonly string name;
    ModulePart part;
    SubsetBuiltinTypeDesc? td;
    Visibility vis;
    Expr expr;
    Position namePos;
    ResolvedConst|false? resolved = ();    
|};

public type Stmt VarDeclStmt|AssignStmt|CallStmt|ReturnStmt|IfElseStmt|MatchStmt|WhileStmt|ForeachStmt|BreakContinueStmt|CompoundAssignStmt|PanicStmt;
public type CallExpr FunctionCallExpr|MethodCallExpr|CheckingCallExpr;
public type Expr GroupingExpr|NumericLiteralExpr|LiteralExpr|VarRefExpr|CompoundExpr|FunctionCallExpr|MethodCallExpr;
public type CompoundExpr BinaryExpr|UnaryExpr|CheckingExpr|FunctionCallExpr|MethodCallExpr|TypeCastExpr|TypeTestExpr|ConstructorExpr|MemberAccessExpr|FieldAccessExpr;
public type ConstructorExpr ListConstructorExpr|MappingConstructorExpr|ErrorConstructorExpr;
public type ExtendedLiteralExpr LiteralExpr|NumericLiteralExpr|SimpleConstNegateExpr;
public type SimpleConstExpr ExtendedLiteralExpr|VarRefExpr;

// L-value expression
public type LExpr VarRefExpr|MemberAccessLExpr|FieldAccessLExpr;

public const WILDCARD = ();

public type StmtBlock record {|
    *PositionFields;
    Stmt[] stmts;
    Position closeBracePos;
|};

public type CallStmt record {|
    *PositionFields;
    CallExpr callExpr;
|};

public type AssignStmt record {|
    *PositionFields;
    Position opPos;
    LExpr|WILDCARD lValue;
    Expr expr;
|};

public type CompoundAssignStmt record {|
    *PositionFields;
    LExpr lValue;
    Expr expr;
    BinaryArithmeticOp|BinaryBitwiseOp op;
    Position opPos;
|};

public type ReturnStmt record {|
    *PositionFields;
    Position kwPos;
    Expr? returnExpr;
|};

public type PanicStmt record {|
    *PositionFields;
    Position kwPos;
    Expr panicExpr;
|};

public type IfElseStmt record {|
    *PositionFields;
    Expr condition;
    StmtBlock ifTrue;
    StmtBlock|IfElseStmt? ifFalse;
|};

public type MatchStmt record {|
    *PositionFields;
    Expr expr;
    MatchClause[] clauses;
|};

public type MatchClause record {|
    *PositionFields;
    MatchPattern[] patterns;
    StmtBlock block;
    Position opPos;
|};

public type MatchPattern SimpleConstExpr|WildcardMatchPattern;

const WILDCARD_MATCH_PATTERN = "_";
public type WildcardMatchPattern record {|
    *PositionFields;
    WILDCARD_MATCH_PATTERN pattern = WILDCARD_MATCH_PATTERN;
|};

public type WhileStmt record {|
    *PositionFields;
    Expr condition;
    StmtBlock body;
|};

public type ForeachStmt record {|
    *PositionFields;
    Position kwPos;
    // name and position of the variable
    Position namePos;
    string name;
    RangeExpr range;
    StmtBlock body;
|};

public type BreakContinue "break"|"continue";

public type BreakContinueStmt record {|
   *PositionFields;
   BreakContinue breakContinue;
|};

public type VarDeclStmt record {|
    *PositionFields;
    Position opPos;
    TypeDesc td;
    string|WILDCARD name;
    Position namePos;
    Expr initExpr;
    boolean isFinal;
|};

public type GroupingExpr record {|
    *PositionFields;
    Expr expr;
|};

public type BinaryArithmeticOp "+" | "-" | "*" | "/" | "%";
public type BitwiseShiftOp "<<" | ">>" | ">>>";
public type BinaryBitwiseOp "|" | "^" | "&" | BitwiseShiftOp;
public type BinaryLogicalOp "&&" | "||";
public type BinaryRelationalOp "<" | ">" | "<=" | ">=";
public type BinaryEqualityOp  "==" | "!=" | "===" | "!==";
public type RangeOp  "..." | "..<";

type CompoundAssignOp  "+=" | "-=" | "/=" | "*=" | "&=" | "|=" | "^=" | "<<=" | ">>=" | ">>>=";

public type BinaryExprOp BinaryArithmeticOp|BinaryRelationalOp|BinaryEqualityOp;

const NegateOp = "-";

public type UnaryExprOp NegateOp | "!" | "~";

public type BinaryExpr BinaryRelationalExpr|BinaryEqualityExpr|BinaryArithmeticExpr|BinaryBitwiseExpr|BinaryLogicalExpr;

// We use different operator names so things work better with match statements
public type BinaryExprBase record {|
    *PositionFields;
    Position opPos;
    Expr left;
    Expr right;
|};

public type BinaryEqualityExpr record {|
    *BinaryExprBase;
    BinaryEqualityOp equalityOp;
|};

public type BinaryRelationalExpr record {|
    *BinaryExprBase;    
    BinaryRelationalOp relationalOp;
|};

public type BinaryArithmeticExpr record {|
    *BinaryExprBase;
    BinaryArithmeticOp arithmeticOp;
|};

public type BinaryBitwiseExpr record {|
    *BinaryExprBase;
    BinaryBitwiseOp bitwiseOp;
|};

public type BinaryLogicalExpr record {|
    *BinaryExprBase;
    BinaryLogicalOp logicalOp;
|};

public type UnaryExpr record {|
    *PositionFields;
    Position opPos;
    UnaryExprOp op;
    Expr operand;
|};

public type SimpleConstNegateExpr record {|
    *UnaryExpr;
    // JBUG #33369 should be able to do `"-" op = "-";`
    NegateOp op = "-";
    NumericLiteralExpr|LiteralExpr operand;
|};

public type ErrorConstructorExpr record {|
    *PositionFields;
    Position kwPos;
    Expr message;
|};

public type FunctionCallExpr record {|
    *PositionFields;
    Position openParenPos;
    Position closeParenPos;
    Position qNamePos;
    string? prefix = ();
    string funcName;
    Expr[] args;
|};

public type MethodCallExpr record {|
    *PositionFields;
    Position opPos; // position of .
    Position openParenPos;
    Position closeParenPos;
    Position namePos;
    string methodName;
    Expr target;
    Expr[] args;
|};

public type CheckingKeyword "check"|"checkpanic";

public type CheckingExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    Position kwPos;
    CheckingKeyword checkingKeyword;
    Expr operand;
|};

public type CheckingCallExpr record {|
    // JBUG #32617 can't include CheckingExpr
    // *CheckingExpr;
    // *PositionFields
    Position startPos;
    Position endPos;
    Position kwPos;
    CheckingKeyword checkingKeyword;
    CallExpr operand;
|};

public type ListConstructorExpr record {|
    *PositionFields;
    Position opPos;
    Expr[] members;
|};

public type MappingConstructorExpr record {|
    *PositionFields;
    Position opPos;
    Field[] fields;
|};

public type Field record {|
    *PositionFields;
    Position colonPos;
    boolean isIdentifier;
    string name;
    Expr value;
|};

public type MemberAccessExpr record {|
    *PositionFields;
    Position opPos;
    Expr container;
    Expr index;
|};

// JBUG #32617 gets a bad, sad if this uses *MemberAccessExpr and overrides container
public type MemberAccessLExpr record {|
    *PositionFields;
    Position opPos;
    LExpr container;
    Expr index;
|};

public type FieldAccessExpr record {|
    *PositionFields;
    Position opPos;
    Expr container;
    string fieldName;
|};

public type FieldAccessLExpr record {|
    *PositionFields;
    Position opPos;
    LExpr container;
    string fieldName;
|};

public type RangeExpr record {|
    *PositionFields;
    Position opPos;
    Expr lower;
    Expr upper;
|};

public type VarRefExpr record {|
    *PositionFields;
    string? prefix;
    string name;
    Position qNamePos;
|};

public type TypeCastExpr record {|
    *PositionFields;
    TypeDesc td;
    Expr operand;
    Position opPos;
|};

public type TypeTestExpr record {|
    *PositionFields;
    TypeDesc td;
    // Use `left` here so this is distinguishable from TypeCastExpr and LiteralExpr
    Expr left;
    boolean negated;
    Position kwPos;
|};

// Non-numeric literals
public type LiteralExpr record {|
    *PositionFields;
    string|boolean|() value;
|};

public type NumericLiteralExpr IntLiteralExpr|FpLiteralExpr;

public type IntLiteralBase 10|16;

// The public type of value represented by an int-literal
// depends on the contextually expected public type, which
// we do not know at parse time.
public type IntLiteralExpr record {|
    *PositionFields;
    IntLiteralBase base;
    string digits;
|};

public const FLOAT_TYPE_SUFFIX = "f";
public const DECIMAL_TYPE_SUFFIX = "d";

public type FpTypeSuffix FLOAT_TYPE_SUFFIX|DECIMAL_TYPE_SUFFIX;

public type FpLiteralExpr record {|
    // This is the literal without the public type suffix
    *PositionFields;
    string untypedLiteral;
    FpTypeSuffix? typeSuffix;
|};

// Types

public type TypeDefn record {|
    *PositionFields;
    readonly string name;
    ModulePart part;
    Visibility vis;
    TypeDesc td;
    Position namePos;
    t:SemType? semType = ();
    int cycleDepth = -1;
|};

public type TypeDesc BuiltinTypeDesc|BinaryTypeDesc|ConstructorTypeDesc|TypeDescRef|SingletonTypeDesc|UnaryTypeDesc;

public type ConstructorTypeDesc TupleTypeDesc|ArrayTypeDesc|MappingTypeDesc|FunctionTypeDesc|ErrorTypeDesc|XmlSequenceTypeDesc|TableTypeDesc;

public type TupleTypeDesc record {|
    *PositionFields;
    TypeDesc[] members;
    TypeDesc? rest;
    t:ListDefinition? defn = ();
|};

public type ArrayTypeDesc record {|
    *PositionFields;
    TypeDesc member;
    SimpleConstExpr?[] dimensions = [];
    t:ListDefinition? defn = ();
|};

public type FieldDesc record {|
    *PositionFields;
    string name;
    TypeDesc typeDesc;
    boolean ro = false;
    boolean opt = false;
|};

public const INCLUSIVE_RECORD_TYPE_DESC = true;
public type MappingTypeDesc record {|
    *PositionFields;
    FieldDesc[] fields;
    TypeDesc|INCLUSIVE_RECORD_TYPE_DESC? rest;
    t:MappingDefinition? defn = ();
|};

public type FunctionTypeDesc record {|
    // XXX need to handle rest public type
    *PositionFields;
    FunctionTypeParam[] params;
    TypeDesc? ret;
    t:FunctionDefinition? defn = ();
|};

public type FunctionTypeParam record {|
    *PositionFields;
    string? name;
    Position? namePos;
    TypeDesc td;
    boolean isRest = false;
|};

public type ErrorTypeDesc record {|
    *PositionFields;
    TypeDesc detail;
|};

public type BinaryTypeOp "|" | "&";

public type BinaryTypeDesc record {|
    *PositionFields;
    BinaryTypeOp op;
    Position[] opPos;
    TypeDesc[] tds;
|};

public type UnaryTypeOp "!"|"("|"?";

public type UnaryTypeDesc record {|
    *PositionFields;
    UnaryTypeOp op;
    Position opPos;
    TypeDesc td;
|};

public type XmlSequenceTypeDesc record {|
    *PositionFields;
    Position pos;
    TypeDesc constituent;
|};

public type TableTypeDesc record {|
    *PositionFields;
    TypeDesc row;
|};

public type TypeDescRef record {|
    *PositionFields;
    string? prefix = ();
    string typeName;
    Position qNamePos;
|};

public type SingletonTypeDesc record {|
    *PositionFields;
    ExtendedLiteralExpr valueExpr;
|};

public type SubsetBuiltinTypeName "any"|"anydata"|"boolean"|"byte"|"int"|"decimal"|"float"|"string"|"error";

public type BuiltinTypeName SubsetBuiltinTypeName|"handle"|"json"|"never"|"readonly"|"typedesc"|"xml"|"null";

public type BuiltinTypeDesc readonly & record {|
    *PositionFields;
    BuiltinTypeName builtinTypeName;
|};

// This is used for ConstDefinitions
public type SubsetBuiltinTypeDesc readonly & record {|
    *PositionFields;
    SubsetBuiltinTypeName builtinTypeName;
|};
