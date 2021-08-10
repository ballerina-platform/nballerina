import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.err;


type ModulePart record {|
    ImportDecl? importDecl;
    ModuleLevelDefn[] defns;
|};

type ModuleLevelDefn FunctionDefn|ConstDefn|TypeDefn;

type Visibility "public"?;

type ImportDecl record {|
    string org;
    string module;
|};

type FunctionDefn record {|
    readonly string name;
    Visibility vis;
    FunctionTypeDesc typeDesc;
    string[] paramNames;
    Stmt[] body;
    err:Position pos;
    // This is filled in during analysis
    bir:FunctionSignature? signature = ();
|};

type ResolvedConst readonly & [t:SemType, t:Value];
type ConstDefn record {|
    readonly string name;
    Visibility vis;
    Expr expr;
    err:Position pos;
    ResolvedConst|false? resolved = ();    
|};

type Stmt VarDeclStmt|AssignStmt|CallStmt|ReturnStmt|IfElseStmt|MatchStmt|WhileStmt|ForeachStmt|BreakStmt|ContinueStmt;
type CallStmt FunctionCallExpr|MethodCallExpr;
type Expr IntLiteralExpr|ConstValueExpr|BinaryExpr|UnaryExpr|FunctionCallExpr|MethodCallExpr|VarRefExpr|TypeCastExpr|TypeTestExpr|ConstructorExpr|MemberAccessExpr;
type ConstructorExpr ListConstructorExpr|MappingConstructorExpr;
type SimpleConstExpr ConstValueExpr|VarRefExpr|IntLiteralExpr|SimpleConstNegateExpr;

type AssignStmt record {|
    LExpr lValue;
    Expr expr;
|};

// L-value expression
type LExpr VarRefExpr|MemberAccessLExpr;

type ReturnStmt record {|
    Expr returnExpr;
|};

type IfElseStmt record {|
    Expr condition;
    Stmt[] ifTrue;
    Stmt[] ifFalse;
|};

type MatchStmt record {|
    Expr expr;
    MatchClause[] clauses;
|};

type MatchClause record {|
    MatchPattern[] patterns;
    Stmt[] block;
|};

type MatchPattern ConstPattern|WildcardMatchPattern;

const WildcardMatchPattern = "_";

type ConstPattern record {|
    SimpleConstExpr expr;
    err:Position pos;
|};

type WhileStmt record {|
    Expr condition;
    Stmt[] body;
|};

type ForeachStmt record {|
    string varName;
    RangeExpr range;
    Stmt[] body;
|};

type BreakStmt "break";

type ContinueStmt "continue";

type VarDeclStmt record {|
    InlineTypeDesc td;
    string varName;
    Expr initExpr;
    // For now this should be filled in during parse
    // using a prebuilt Semtype such as `t:INT`.
    // Later on will support references to type definitions,
    // and it will be filled in later.
    t:SemType? semType = ();
    boolean isFinal;
|};

type BinaryArithmeticOp "+" | "-" | "*" | "/" | "%";
type BinaryBitwiseOp "|" | "^" | "&" | "<<" | ">>" | ">>>";
type BinaryRelationalOp "<" | ">" | "<=" | ">=";
type BinaryEqualityOp  "==" | "!=" | "===" | "!==";
type RangeOp  "..." | "..<";

type CompAssnArithmeticOp "+=" | "-=" | "/=" | "*=";
type CompAssnBitwiseOp "&=" | "|=" | "^=" | "<<=" | ">>=" | ">>>=";
type CompAssnOp  CompAssnArithmeticOp|CompAssnBitwiseOp;

type BinaryExprOp BinaryArithmeticOp|BinaryRelationalOp|BinaryEqualityOp;

type UnaryExprOp "-" | "!" | "~";

type BinaryExpr BinaryRelationalExpr|BinaryEqualityExpr|BinaryArithmeticExpr|BinaryBitwiseExpr;

// We use different operator names so things work better with match statements
type BinaryExprBase record {|
    Expr left;
    Expr right;
|};

type BinaryEqualityExpr record {|
    *BinaryExprBase;
    BinaryEqualityOp equalityOp;
|};

type BinaryRelationalExpr record {|
    *BinaryExprBase;
    BinaryRelationalOp relationalOp;
|};

type BinaryArithmeticExpr record {|
    *BinaryExprBase;
    BinaryArithmeticOp arithmeticOp;
    err:Position pos;
|};

type BinaryBitwiseExpr record {|
    *BinaryExprBase;
    BinaryBitwiseOp bitwiseOp; 
|};

type UnaryExpr record {|
    UnaryExprOp op;
    Expr operand;
    err:Position pos;
|};

type SimpleConstNegateExpr record {|
    *UnaryExpr;
    "-" op = "-";
    IntLiteralExpr|ConstValueExpr operand;
|};

type FunctionCallExpr record {|
    string? prefix = ();
    string funcName;
    Expr[] args;
    // We can get type/defn mismatch errors here
    err:Position pos;
|};

type MethodCallExpr record {|
    string methodName;
    Expr target;
    Expr[] args;
    err:Position pos;
|};

type ListConstructorExpr record {|
    Expr[] members;
    // JBUG adding this field makes match statement in codeGenExpr fail 
    // t:SemType? expectedType = ();
|};

type MappingConstructorExpr record {|
    Field[] fields;
    // t:SemType? expectedType = ();
|};

type Field record {|
    err:Position pos; // position of name for now
    string name;
    Expr value;
|};

type MemberAccessExpr record {|
    Expr container;
    Expr index;
    err:Position pos;
|};

// JBUG gets a bad, sad if this uses *MemberAccessExpr and overrides container
type MemberAccessLExpr record {|
    VarRefExpr container;
    Expr index;
    err:Position pos;
|};

type RangeExpr record {|
    Expr lower;
    Expr upper;
|};

type VarRefExpr record {|
    string varName;
|};

type TypeCastExpr record {|
    InlineTypeDesc td;
    Expr operand;
    err:Position pos;
    t:SemType semType;
|};

type TypeTestExpr record {|
    InlineTypeDesc td;
    // Use `left` here so this is distinguishable from TypeCastExpr and ConstValueExpr
    Expr left;
    t:SemType semType;
|};

type ConstValueExpr record {|
    ()|boolean|int|string value;
    // This is non-nil when the static type of the expression
    // contains more than one shape.
    // When it contains exactly one shape, then the shape is
    // the shape of the value.
    t:SemType? multiSemType = ();
|};

type NumericLiteralExpr IntLiteralExpr|FpLiteralExpr;

type IntLiteralBase 10|16;

// The type of value represented by an int-literal
// depends on the contextually expected type, which
// we do not know at parse time.
type IntLiteralExpr record {|
    IntLiteralBase base;
    string digits;
    err:Position pos;
|};

const FLOAT_TYPE_SUFFIX = "f";

type FpLiteralExpr record {|
    // This is the literal without the type suffix
    string untypedLiteral;
    FLOAT_TYPE_SUFFIX? typeSuffix;
    err:Position pos;
|};

// Types

// This is the subtype of TypeDesc that we currently allow
// within expressions and statements.
type InlineTypeDesc InlineLeafTypeDesc|InlineArrayTypeDesc|InlineMapTypeDesc;

type InlineLeafTypeDesc "boolean"|"int"|"string"|"any";

type InlineArrayTypeDesc record {|
    *ListTypeDesc;
    TypeDesc[0] members = [];
    "any" rest = "any";
|};

type InlineMapTypeDesc record {|
    *MappingTypeDesc;
    FieldDesc[0] fields = [];
    "any" rest = "any";
|};

type TypeDefn record {|
    readonly string name;
    Visibility vis;
    TypeDesc td;
    err:Position pos;
    t:SemType? semType = ();
    int cycleDepth = -1;
|};

type TypeDesc LeafTypeDesc|BinaryTypeDesc|ConstructorTypeDesc|TypeDescRef|SingletonTypeDesc;

type ConstructorTypeDesc ListTypeDesc|MappingTypeDesc|FunctionTypeDesc|ErrorTypeDesc;

type ListTypeDesc record {|
    TypeDesc[] members;
    TypeDesc rest;
    t:ListDefinition? defn = ();
|};

type FieldDesc record {|
    string name;
    TypeDesc typeDesc;
|};

type MappingTypeDesc record {|
    FieldDesc[] fields;
    TypeDesc rest;
    t:MappingDefinition? defn = ();
|};

type FunctionTypeDesc record {|
    // XXX need to handle rest type
    TypeDesc[] args;
    TypeDesc ret;
    t:FunctionDefinition? defn = ();
|};

type ErrorTypeDesc record {|
    TypeDesc detail;
|};

type BinaryTypeOp "|" | "&";

type BinaryTypeDesc record {|
    BinaryTypeOp op;
    TypeDesc left;
    TypeDesc right;
|};

type TypeDescRef record {|
    string ref;
    err:Position pos;
|};

type SingletonTypeDesc record {|
    (string|float|int|boolean) value;
|};

type BuiltinIntSubtypeDesc "sint8"|"uint8"|"sint16"|"uint16"|"sint32"|"uint32";
type BuiltInTypeDesc "any"|"boolean"|"decimal"|"error"|"float"|"handle"|"int"|"json"
                  |"never"|"readonly"|"string"|"typedesc"|"xml"|"()";
type LeafTypeDesc BuiltInTypeDesc|BuiltinIntSubtypeDesc;
