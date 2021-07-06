import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.err;


type ModulePart record {|
    ImportDecl? importDecl;
    ModuleLevelDef[] defs;
|};

type ModuleLevelDef TypeDef|FunctionDef;

type Visibility "public"?;

type ImportDecl record {|
    string org;
    string module;
|};

type FunctionDef record {|
    readonly string name;
    Visibility vis;
    FunctionTypeDesc typeDesc;
    string[] paramNames;
    Stmt[] body;
    err:Position pos;
    // This is filled in during analysis
    bir:FunctionSignature? signature = ();
|};

type Stmt VarDeclStmt|AssignStmt|CallStmt|ReturnStmt|IfElseStmt|WhileStmt|ForeachStmt|BreakStmt|ContinueStmt;
type CallStmt FunctionCallExpr|MethodCallExpr;
type Expr SimpleConstExpr|BinaryExpr|UnaryExpr|FunctionCallExpr|MethodCallExpr|VarRefExpr|TypeCastExpr|ConstructorExpr|MemberAccessExpr;

type ConstructorExpr ListConstructorExpr;

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
|};

type BinaryArithmeticOp "+" | "-" | "*" | "/" | "%";
type BinaryBitwiseOp "|" | "^" | "&";
type BinaryRelationalOp "<" | ">" | "<=" | ">=";
type BinaryEqualityOp  "==" | "!=" | "===" | "!==";
type RangeOp  "..." | "..<";

type BinaryExprOp BinaryArithmeticOp|BinaryRelationalOp|BinaryEqualityOp;

type UnaryExprOp "-" | "!";

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

type FunctionCallExpr record {|
    string? prefix = ();
    string funcName;
    Expr[] args;
    // We can get type/def mismatch errors here
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

type SimpleConstExpr record {|
    ()|boolean|int value;
|};

// Types

// This is the subtype of TypeDesc that we currently allow
// within expressions and statements.
type InlineTypeDesc InlineLeafTypeDesc|InlineArrayTypeDesc;

type InlineLeafTypeDesc "boolean"|"any"|"int";

type InlineArrayTypeDesc record {|
    *ListTypeDesc;
    TypeDesc[0] members = [];
    "any" rest = "any";
|};

type TypeDef record {|
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
    t:ListDefinition? def = ();
|};

type FieldDesc record {|
    string name;
    TypeDesc typeDesc;
|};

type MappingTypeDesc record {|
    FieldDesc[] fields;
    TypeDesc rest;
    t:MappingDefinition? def = ();
|};

type FunctionTypeDesc record {|
    // XXX need to handle rest type
    TypeDesc[] args;
    TypeDesc ret;
    t:FunctionDefinition? def = ();
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
    (string|int|boolean) value;
|};

type BuiltinIntSubtypeDesc "sint8"|"uint8"|"sint16"|"uint16"|"sint32"|"uint32";
type BuiltInTypeDesc "any"|"boolean"|"decimal"|"error"|"float"|"handle"|"int"|"json"
                  |"never"|"readonly"|"string"|"typedesc"|"xml"|"()";
type LeafTypeDesc BuiltInTypeDesc|BuiltinIntSubtypeDesc;
