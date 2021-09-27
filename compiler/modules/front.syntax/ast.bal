import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.err;

public type Position err:Position;

public type ModulePart record {|
    ImportDecl[] importDecls;
    SourceFile file;
    int partIndex;
    ModuleLevelDefn[] defns;
|};

public type ModuleLevelDefn FunctionDefn|ConstDefn|TypeDefn;

public type Visibility "public"?;

public type ImportDecl record {|
    string? org;
    [string, string...] names;
    string? prefix;
    Position pos;
    int partIndex;
|};

public type FunctionDefn record {|
    readonly string name;
    ModulePart part;
    Visibility vis;
    FunctionTypeDesc typeDesc;
    string[] paramNames;
    Stmt[] body;
    Position pos;
    // This is filled in during analysis
    bir:FunctionSignature? signature = ();
|};

public type ResolvedConst readonly & [t:SemType, t:Value];
public type ConstDefn record {|
    readonly string name;
    ModulePart part;
    InlineBuiltinTypeDesc? td;
    Visibility vis;
    Expr expr;
    Position pos;
    ResolvedConst|false? resolved = ();    
|};

public type Stmt VarDeclStmt|AssignStmt|CallStmt|ReturnStmt|IfElseStmt|MatchStmt|WhileStmt|ForeachStmt|BreakStmt|ContinueStmt|CompoundAssignStmt|PanicStmt;
public type CallStmt FunctionCallExpr|MethodCallExpr|CheckingStmt;
public type Expr NumericLiteralExpr|ConstValueExpr|FloatZeroExpr|BinaryExpr|UnaryExpr|CheckingExpr|FunctionCallExpr|MethodCallExpr|VarRefExpr|TypeCastExpr|TypeTestExpr|ConstructorExpr|MemberAccessExpr;
public type ConstructorExpr ListConstructorExpr|MappingConstructorExpr|ErrorConstructorExpr;
public type SimpleConstExpr ConstValueExpr|VarRefExpr|IntLiteralExpr|SimpleConstNegateExpr;

public type AssignStmt record {|
    LExpr lValue;
    Expr expr;
|};

public type CompoundAssignStmt record {|
    LExpr lValue;
    Expr expr;
    BinaryArithmeticOp|BinaryBitwiseOp op; 
    Position pos;
|};

// L-value expression
public type LExpr VarRefExpr|MemberAccessLExpr;

public type ReturnStmt record {|
    Expr returnExpr;
|};

public type PanicStmt record {|
    Expr panicExpr;
|};

public type IfElseStmt record {|
    Expr condition;
    Stmt[] ifTrue;
    Stmt[] ifFalse;
|};

public type MatchStmt record {|
    Expr expr;
    MatchClause[] clauses;
|};

public type MatchClause record {|
    MatchPattern[] patterns;
    Stmt[] block;
|};

public type MatchPattern ConstPattern|WildcardMatchPattern;

const WildcardMatchPattern = "_";

public type ConstPattern record {|
    SimpleConstExpr expr;
    Position pos;
|};

public type WhileStmt record {|
    Expr condition;
    Stmt[] body;
|};

public type ForeachStmt record {|
    string varName;
    RangeExpr range;
    Stmt[] body;
|};

public type BreakStmt "break";

public type ContinueStmt "continue";

public type VarDeclStmt record {|
    TypeDesc td;
    string varName;
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

public type UnaryExprOp "-" | "!" | "~";

public type BinaryExpr BinaryRelationalExpr|BinaryEqualityExpr|BinaryArithmeticExpr|BinaryBitwiseExpr;

// We use different operator names so things work better with match statements
public type BinaryExprBase record {|
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
    Position pos;
|};

public type BinaryBitwiseExpr record {|
    *BinaryExprBase;
    BinaryBitwiseOp bitwiseOp; 
|};

public type UnaryExpr record {|
    UnaryExprOp op;
    Expr operand;
    Position pos;
|};

public type SimpleConstNegateExpr record {|
    *UnaryExpr;
    // JBUG #32099 should be "-" 
    UnaryExprOp op = "-";
    IntLiteralExpr|ConstValueExpr operand;
|};

public type ErrorConstructorExpr record {|
    Expr message;
    Position pos;
|};

public type FunctionCallExpr record {|
    string? prefix = ();
    string funcName;
    Expr[] args;
    // We can get public type/defn mismatch errors here
    Position pos;
|};

public type MethodCallExpr record {|
    string methodName;
    Expr target;
    Expr[] args;
    Position pos;
|};

public type CheckingKeyword "check"|"checkpanic";

public type CheckingExpr record {|
    CheckingKeyword checkingKeyword;
    Expr operand;
|};

public type CheckingStmt record {|
    // JBUG can't include CheckingExpr
    // *CheckingExpr;
    CheckingKeyword checkingKeyword;
    CallStmt operand;
|};

public type ListConstructorExpr record {|
    Expr[] members;
    // JBUG adding this field makes match statement in codeGenExpr fail 
    t:SemType? expectedType = ();
|};

public type MappingConstructorExpr record {|
    Field[] fields;
    t:SemType? expectedType = ();
|};

public type Field record {|
    Position pos; // position of name for now
    string name;
    Expr value;
|};

public type MemberAccessExpr record {|
    Expr container;
    Expr index;
    Position pos;
|};

// JBUG gets a bad, sad if this uses *MemberAccessExpr and overrides container
public type MemberAccessLExpr record {|
    VarRefExpr container;
    Expr index;
    Position pos;
|};

public type RangeExpr record {|
    Expr lower;
    Expr upper;
|};

public type VarRefExpr record {|
    string? prefix = ();
    string varName;
|};

public type TypeCastExpr record {|
    TypeDesc td;
    Expr operand;
    Position pos;
|};

public type TypeTestExpr record {|
    TypeDesc td;
    // Use `left` here so this is distinguishable from TypeCastExpr and ConstValueExpr
    Expr left;
    boolean negated; 
|};

public type ConstShapeExpr ConstValueExpr|FloatZeroExpr;

public type ConstValueExpr record {|
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
    IntLiteralBase base;
    string digits;
    Position pos;
|};

public const FLOAT_TYPE_SUFFIX = "f";
public const DECIMAL_TYPE_SUFFIX = "d";

public type FpTypeSuffix FLOAT_TYPE_SUFFIX|DECIMAL_TYPE_SUFFIX;

public type FpLiteralExpr record {|
    // This is the literal without the public type suffix
    string untypedLiteral;
    FpTypeSuffix? typeSuffix;
    Position pos;
|};


// Types

public type TypeDefn record {|
    readonly string name;
    ModulePart part;
    Visibility vis;
    TypeDesc td;
    Position pos;
    t:SemType? semType = ();
    int cycleDepth = -1;
|};

public type TypeDesc LeafTypeDesc|BinaryTypeDesc|ConstructorTypeDesc|TypeDescRef|SingletonTypeDesc;

public type ConstructorTypeDesc ListTypeDesc|MappingTypeDesc|FunctionTypeDesc|ErrorTypeDesc;

public type ListTypeDesc record {|
    TypeDesc[] members;
    TypeDesc rest;
    t:ListDefinition? defn = ();
|};

public type FieldDesc record {|
    string name;
    TypeDesc typeDesc;
|};

public type MappingTypeDesc record {|
    FieldDesc[] fields;
    TypeDesc rest;
    t:MappingDefinition? defn = ();
|};

public type FunctionTypeDesc record {|
    // XXX need to handle rest public type
    TypeDesc[] args;
    TypeDesc ret;
    t:FunctionDefinition? defn = ();
|};

public type ErrorTypeDesc record {|
    TypeDesc detail;
|};

public type BinaryTypeOp "|" | "&";

public type BinaryTypeDesc record {|
    BinaryTypeOp op;
    TypeDesc left;
    TypeDesc right;
|};

public type TypeDescRef record {|
    string? prefix = ();
    string typeName;
    Position pos;
|};

public type SingletonTypeDesc record {|
    (string|float|int|boolean|decimal) value;
|};

public type BuiltinIntSubtypeDesc "sint8"|"uint8"|"sint16"|"uint16"|"sint32"|"uint32";

public type BuiltinStringSubtypeDesc "char";

// This is the subtype of BuiltinTypeDesc that we currently allow inline.
public type InlineBuiltinTypeDesc "boolean"|"int"|"float"|"string"|"error"|"any";
public type BuiltinTypeDesc InlineBuiltinTypeDesc|"decimal"|"handle"|"json"|"never"|"readonly"|"typedesc"|"xml"|"()";

public type LeafTypeDesc BuiltinTypeDesc|BuiltinIntSubtypeDesc|BuiltinStringSubtypeDesc;
