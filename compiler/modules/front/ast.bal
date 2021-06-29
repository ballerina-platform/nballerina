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

type Stmt VarDeclStmt|AssignStmt|FunctionCallExpr|ReturnStmt|IfElseStmt|
            WhileStmt|BreakStmt|ContinueStmt;
type Expr SimpleConstExpr|BinaryExpr|UnaryExpr|FunctionCallExpr|VarRefExpr|TypeCastExpr;

type AssignStmt record {|
    string varName;
    Expr expr;
|};

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
type BinaryShiftOp  "<<" | ">>" | ">>>";


type BinaryExprOp BinaryArithmeticOp|BinaryRelationalOp|BinaryEqualityOp;

type UnaryExprOp "-" | "!";

type BinaryExpr BinaryRelationalExpr|BinaryEqualityExpr|BinaryArithmeticExpr|BinaryBitwiseExpr|BinaryShiftExpr;

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

type BinaryShiftExpr record {|
    *BinaryExprBase;
    BinaryShiftOp shiftOp;
|};

type BinaryBitwiseExpr record {|
    *BinaryExprBase;
    BinaryBitwiseOp bitwiseOp; 
|};

type UnaryExpr record {|
    UnaryExprOp op;
    Expr operand;
|};

type FunctionCallExpr record {|
    string? prefix = ();
    string funcName;
    Expr[] args;
    // We can get type/def mismatch errors here
    err:Position pos;
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

// This is the subtype of TypeDesc that we currently allow
// within expressions and statements.
type InlineTypeDesc "boolean"|"any"|"int";

// Types

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
