import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.err;

public type Position err:Position;

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
    string[] paramNames;
    Stmt[] body;
    Position namePos;
    // This is filled in during analysis
    bir:FunctionSignature? signature = ();
|};

public type ResolvedConst readonly & [t:SemType, t:Value];
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
public type Expr NumericLiteralExpr|ConstValueExpr|FloatZeroExpr|VarRefExpr|CompoundExpr|FunctionCallExpr|MethodCallExpr;
public type CompoundExpr BinaryExpr|UnaryExpr|CheckingExpr|FunctionCallExpr|MethodCallExpr|TypeCastExpr|TypeTestExpr|ConstructorExpr|MemberAccessExpr|FieldAccessExpr;
public type ConstructorExpr ListConstructorExpr|MappingConstructorExpr|ErrorConstructorExpr;
public type SimpleConstExpr ConstValueExpr|VarRefExpr|IntLiteralExpr|SimpleConstNegateExpr;

public const WILDCARD = ();

public type CallStmt record {|
    *PositionFields;
    CallExpr expr;
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

// L-value expression
public type LExpr VarRefExpr|MemberAccessLExpr|FieldAccessLExpr;

public type ReturnStmt record {|
    *PositionFields;
    Expr? returnExpr;
|};

public type PanicStmt record {|
    *PositionFields;
    Expr panicExpr;
|};

public type IfElseStmt record {|
    *PositionFields;
    Expr condition;
    Stmt[] ifTrue;
    Stmt[] ifFalse;
|};

public type MatchStmt record {|
    *PositionFields;
    Expr expr;
    MatchClause[] clauses;
|};

public type MatchClause record {|
    *PositionFields;
    MatchPattern[] patterns;
    Stmt[] block;
    Position opPos;
|};

public type MatchPattern ConstPattern|WildcardMatchPattern;

const WildcardMatchPattern = "_";

public type ConstPattern record {|
    SimpleConstExpr expr;
    Position pos;
|};

public type WhileStmt record {|
    *PositionFields;
    Expr condition;
    Stmt[] body;
|};

public type ForeachStmt record {|
    *PositionFields;
    string varName;
    RangeExpr range;
    Stmt[] body;
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
    string|WILDCARD varName;
    Expr initExpr;
    boolean isFinal;
|};

public type BinaryArithmeticOp "+" | "-" | "*" | "/" | "%";
public type BinaryBitwiseOp "|" | "^" | "&" | "<<" | ">>" | ">>>";
public type BinaryRelationalOp "<" | ">" | "<=" | ">=";
public type BinaryEqualityOp  "==" | "!=" | "===" | "!==";
public type RangeOp  "..." | "..<";

type CompoundAssignOp  "+=" | "-=" | "/=" | "*=" | "&=" | "|=" | "^=" | "<<=" | ">>=" | ">>>=";

public type BinaryExprOp BinaryArithmeticOp|BinaryRelationalOp|BinaryEqualityOp;

const NegateOp = "-";

public type UnaryExprOp NegateOp | "!" | "~";

public type BinaryExpr BinaryRelationalExpr|BinaryEqualityExpr|BinaryArithmeticExpr|BinaryBitwiseExpr;

// We use different operator names so things work better with match statements
public type BinaryExprBase record {|
    // JBUG #32617 can't include PositionFields
    Position startPos;
    Position endPos;
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

public type UnaryExpr record {|
    // JBUG #32617 can't include PositionFields
    Position startPos;
    Position endPos;
    Position opPos;
    UnaryExprOp op;
    Expr operand;
|};

public type SimpleConstNegateExpr record {|
    *UnaryExpr;
    // JBUG #33369 should be able to do `"-" op = "-";`
    NegateOp op = "-";
    IntLiteralExpr|ConstValueExpr operand;
|};

public type ErrorConstructorExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    Expr message;
    Position pos;
|};

public type FunctionCallExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    string? prefix = ();
    string funcName;
    Expr[] args;
    // We can get public type/defn mismatch errors here
    Position pos;
|};

public type MethodCallExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    string methodName;
    Expr target;
    Expr[] args;
    Position pos;
|};

public type CheckingKeyword "check"|"checkpanic";

public type CheckingExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    CheckingKeyword checkingKeyword;
    Expr operand;
|};

public type CheckingCallExpr record {|
    // JBUG #32617 can't include CheckingExpr
    // *CheckingExpr;
    // *PositionFields
    Position startPos;
    Position endPos;
    CheckingKeyword checkingKeyword;
    CallExpr operand;
|};

public type ListConstructorExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    Expr[] members;
    // JBUG #33309 adding this field makes match statement in codeGenExpr fail
    t:SemType? expectedType = ();
|};

public type MappingConstructorExpr record {|
    *PositionFields;
    Field[] fields;
    t:SemType? expectedType = ();
|};

public type Field record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    string name;
    Expr value;
|};

public type MemberAccessExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    Expr container;
    Expr index;
    Position pos;
|};

// JBUG #32617 gets a bad, sad if this uses *MemberAccessExpr and overrides container
public type MemberAccessLExpr record {|
    *PositionFields;
    VarRefExpr container;
    Expr index;
    Position pos;
|};

public type FieldAccessExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    Expr container;
    string fieldName;
    Position pos;
|};

public type FieldAccessLExpr record {|
    *PositionFields;
    VarRefExpr container;
    string fieldName;
    Position pos;
|};

public type RangeExpr record {|
    *PositionFields;
    Position opPos;
    Expr lower;
    Expr upper;
|};

public type VarRefExpr record {|
    *PositionFields;
    string? prefix = ();
    string varName;
|};

public type TypeCastExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    TypeDesc td;
    Expr operand;
    Position pos;
|};

public type TypeTestExpr record {|
    // JBUG #32617 can't include PositionFields
    // *PositionFields
    Position startPos;
    Position endPos;
    TypeDesc td;
    // Use `left` here so this is distinguishable from TypeCastExpr and ConstValueExpr
    Expr left;
    boolean negated;
|};

public type ConstShapeExpr ConstValueExpr|FloatZeroExpr;

public type ConstValueExpr record {|
    *PositionFields;
    ()|boolean|int|float|string value;
    // This is non-nil when the static public type of the expression
    // contains more than one shape.
    // When it contains exactly one shape, then the shape is
    // the shape of the value.
    t:SemType? multiSemType = ();
|};

public const float FLOAT_ZERO = 0f;

// This is an expression where we know that the value is == 0f
// but do not know whether it is +0f or -0f.
public type FloatZeroExpr record {|
    *PositionFields;
    FLOAT_ZERO value = FLOAT_ZERO;
    () multiSemType = ();
    Expr expr;
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

public type ConstructorTypeDesc ListTypeDesc|MappingTypeDesc|FunctionTypeDesc|ErrorTypeDesc;

public type ListTypeDesc record {|
    // JBUG #32617 can't include PositionFields
    Position startPos;
    Position endPos;
    TypeDesc[] members;
    TypeDesc rest;
    t:ListDefinition? defn = ();
|};

public type FieldDesc record {|
    *PositionFields;
    string name;
    TypeDesc typeDesc;
|};

public type MappingTypeDesc record {|
    // JBUG #32617 can't include PositionFields
    Position startPos;
    Position endPos;
    FieldDesc[] fields;
    TypeDesc? rest;
    t:MappingDefinition? defn = ();
|};

public type FunctionTypeDesc record {|
    // XXX need to handle rest public type
    // JBUG #32617 can't include PositionFields
    Position startPos;
    Position endPos;
    TypeDesc[] args;
    TypeDesc ret;
    t:FunctionDefinition? defn = ();
|};

public type ErrorTypeDesc record {|
    // JBUG #32617 can't include PositionFields
    Position startPos;
    Position endPos;
    TypeDesc detail;
|};

public type BinaryTypeOp "|" | "&";
public const UnaryTypeOp = "!";

public type BinaryTypeDesc record {|
    *PositionFields;
    BinaryTypeOp op;
    Position opPos;
    TypeDesc left;
    TypeDesc right;
|};

public type UnaryTypeDesc record {|
    *PositionFields;
    UnaryTypeOp op;
    TypeDesc td;
|};

public type TypeDescRef record {|
    *PositionFields;
    string? prefix = ();
    string typeName;
    Position pos;
|};

public type SingletonTypeDesc record {|
    *PositionFields;
    (string|float|int|boolean|decimal) value;
|};

public type SubsetBuiltinTypeName "any"|"boolean"|"int"|"float"|"string"|"error";

public type BuiltinTypeName SubsetBuiltinTypeName|"byte"|"decimal"|"handle"|"json"|"never"|"readonly"|"typedesc"|"xml"|"null";

public type BuiltinTypeDesc readonly & record {|
    *PositionFields;
    BuiltinTypeName builtinTypeName;
|};

// This is used for ConstDefinitions
public type SubsetBuiltinTypeDesc readonly & record {|
    *PositionFields;
    SubsetBuiltinTypeName builtinTypeName;
|};
